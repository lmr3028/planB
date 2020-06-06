package com.pioneer.developer.sys.amember.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pioneer.developer.member.login.model.MemberLoginDto;
import com.pioneer.developer.sys.amember.mapper.AmemberMapper;
import com.pioneer.developer.sys.amember.model.AmemberDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: AmemberServiceImpl.java
 * @DESCRIPTION 	: 회원 관리 서비스
 * @AUTHOR			: 임현우
 * @CREATEDDATE	: 2020. 05. 24
 * HISTORY
 * =================================================================================
 * DATE                      NAME                  DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 24            임현우                 First Generated
 * *********************************************************************************
 */

@Slf4j
@RequiredArgsConstructor
@Service
public class AmemberServiceImpl implements AmemberService {

	private final AmemberMapper amemberMapper;

	@Override
	public List<AmemberDto> memberList() {
		return amemberMapper.memberList();
	}

	@Override
	public MemberLoginDto memberView(String id) {
		return amemberMapper.memberView(id);
	}

	@Override
	public int divisionBlack(String id, String division) {
		return amemberMapper.divisionBlack(id, division);
	}

	@Override
	public int divisionGeneral(String id, String division) {
		return amemberMapper.divisionGeneral(id, division);
	}

	@Override
	public int updateMember(MemberLoginDto memberLoginDto) {
		return amemberMapper.updateMember(memberLoginDto);
	}

	@Override
	public List<AmemberDto> memberConfirmList() {
		return amemberMapper.memberConfirmList();
	}

	@Override
	public int confirmOK(String id, String confirm) {
		return amemberMapper.confirmOK(id, confirm);
	}

	@Override
	public int confirmX(String id, String confirm) {
		return amemberMapper.confirmX(id, confirm);
	}


}
