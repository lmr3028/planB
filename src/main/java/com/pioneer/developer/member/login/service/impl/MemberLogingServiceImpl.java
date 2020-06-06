package com.pioneer.developer.member.login.service.impl;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityMessageSource;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.pioneer.developer.core.security.SHAEncryptor;
import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.member.login.mapper.MemberLoginMapper;
import com.pioneer.developer.member.login.model.MemberLoginDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("memberLoginService")
public class MemberLogingServiceImpl implements UserDetailsService {

	private final MemberLoginMapper memberLoginMapper;
	private final HttpSession session;

	public MemberLoginDto login(MemberLoginDto memberLoginDto)  {

		memberLoginDto.setPassword(SHAEncryptor.encrypt(memberLoginDto.getPassword()));

		MemberLoginDto dto = memberLoginMapper.login(memberLoginDto);

		if(null == dto) {
			System.out.println("비밀번호 x");
		} else if(dto.getDivision().equals("3")) {
			System.out.println("블랙리스트");
		} else if (dto.getDivision().equals("0")||dto.getDivision().equals("1")||dto.getDivision().equals("2")) {
			session.setAttribute("id",dto.getId());
			session.setAttribute("name",dto.getName());
		}

		log.info("###### SESSION : " + session.getAttribute("id"));
		log.info("###### SESSION : " + session.getAttribute("name"));

		return dto;

	}

	 @Override
	    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
		 	MemberLoginDto dto = memberLoginMapper.loadUserByUsername(id);

		 	if(null == dto) {
				throw new RuntimeException("아이디를 확인해주세요.");
			} else if(dto.getDivision().equals("3")) {
				System.out.println("블랙리스트");
				throw new RuntimeException("정지된 계정입니다. 관리자 문의부탁드립니다.");
			} else if (dto.getDivision().equals("0")||dto.getDivision().equals("1")||dto.getDivision().equals("2")) {
				session.setAttribute("id",dto.getId());
				session.setAttribute("name",dto.getName());
			}

			log.info("###### SESSION ID : " + session.getAttribute("id"));
			log.info("###### SESSION NAME : " + session.getAttribute("name"));

	        List<GrantedAuthority> authorities = new ArrayList<>();

	        if (("0").equals(dto.getDivision())) {
	            authorities.add(new SimpleGrantedAuthority("ROLE_SYSTEM"));
	        } else if (("1").equals(dto.getDivision())) {
	            authorities.add(new SimpleGrantedAuthority("ROLE_MEMBER"));
	        } else if (("2").equals(dto.getDivision())) {
	            authorities.add(new SimpleGrantedAuthority("ROLE_SELLER"));
	        }

	        log.info(">>>>>>>>>>>>> dto :: " + JsonUtils.toJson(authorities));

	        return new User(dto.getId(), dto.getPassword(), authorities);
	    }

}
