package com.pioneer.developer.member.join.service.impl;

import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Service;

import com.pioneer.developer.core.security.SHAEncryptor;
import com.pioneer.developer.member.join.mapper.MemberJoinMapper;
import com.pioneer.developer.member.join.model.MemberJoinDto;
import com.pioneer.developer.member.join.service.MemberJoinService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("memberJoinService")
public class MemberJoinServiceImpl implements MemberJoinService {

	private final MemberJoinMapper memberJoinMapper;

	@Override
	public MemberJoinDto getMember(String completeLoginId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean confirmJoinId(String id) {
		return memberJoinMapper.confirmJoinId(id) == 0 ? true : false;
	}

	@Override
	public void signup(MemberJoinDto memberJoinDto) {
		memberJoinDto.setFulladdress(memberJoinDto.getAddress1() + " / " + memberJoinDto.getAddress2() + " / " + memberJoinDto.getAddress3()
				+ " / " + memberJoinDto.getAddress4());

		memberJoinDto.setPassword(SHAEncryptor.encrypt(memberJoinDto.getPassword()));

		memberJoinMapper.signup(memberJoinDto);
	}

}
