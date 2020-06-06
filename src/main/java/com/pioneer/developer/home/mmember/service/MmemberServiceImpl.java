package com.pioneer.developer.home.mmember.service;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.pioneer.developer.core.security.SHAEncryptor;
import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.home.hproduct.model.HproductBookMarkDto;
import com.pioneer.developer.home.mmember.mapper.MmemberMapper;
import com.pioneer.developer.home.mmember.model.MmemberDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: MmemberServiceImpl.java
 * @DESCRIPTION 	: 회원 마이페이지 서비스 Impl
 * @AUTHOR			: 김성우
 * @CREATEDDATE 	: 2020. 05. 27
 * HISTORY
 * =================================================================================
 * DATE                     NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 27             김성우                                     First Generated
 * *********************************************************************************
 */

@Slf4j
@RequiredArgsConstructor
@Service("mmemberService")
public class MmemberServiceImpl implements MmemberService{

	private final MmemberMapper mmemberMapper;
	private final HttpSession session;

	// 마이페이지 회원 구분
	@Override
	public String myPageDivision(String id) {
		return mmemberMapper.myPageDivision(id);
	}
	// 마이페이지 내 이름
	@Override
	public String myPageName(String id) {
		return mmemberMapper.myPageName(id);
	}
	// 회원 탈퇴
	@Override
	public int memberDelete(String id) {
		return mmemberMapper.memberDelete(id);
	}
	// 구매내역 목록
	@Override
	public List<MmemberDto> purchaseHistory(String id) {
		return mmemberMapper.purchaseHistory(id);
	}

	// 내 리뷰 목록
	@Override
	public List<MmemberDto> reviewHistory(String id) {
		return mmemberMapper.reviewHistory(id);
	}

	// 내 정보 불러오기
	@Override
	public MmemberDto memberView(String id) {
		MmemberDto dto = mmemberMapper.memberView(id);
		String[] address = dto.getAddress().split("/");
		log.info(" >>>>>>>> MEMBER VIEW " + JsonUtils.toJson(address));
		dto.setAddress1(address[0]);
		dto.setAddress2(address[1]);
		dto.setAddress3(address[2]);
		dto.setAddress4(address[3]);

		return dto;
	}

	// 내 정보 수정
	@Override
	public int updateMember(MmemberDto mmemberDto) {
		String id = (String) session.getAttribute("id");
		mmemberDto.setId(id);
		mmemberDto.setFulladdress(mmemberDto.getAddress1() + " / " + mmemberDto.getAddress2() + " / " + mmemberDto.getAddress3()
	     + " / " + mmemberDto.getAddress4());
	      //	         암호화
		  mmemberDto.setPassword(SHAEncryptor.encrypt(mmemberDto.getPassword()));

		return mmemberMapper.updateMember(mmemberDto);
	}

	// 판매자 권한 신청
	@Override
	public int salesUpdate(String id) {
		return mmemberMapper.salesUpdate(id);
	}

	@Override
	public int deliveryUpdate(Integer ordersno) {
		return mmemberMapper.deliveryUpdate(ordersno);
	}

	// 즐겨찾기
	@Override
	public HproductBookMarkDto myBookMark(String id) {
		return mmemberMapper.myBookMark(id);
	}


}
