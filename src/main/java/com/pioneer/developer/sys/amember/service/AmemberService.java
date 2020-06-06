package com.pioneer.developer.sys.amember.service;

import java.util.List;

import com.pioneer.developer.member.login.model.MemberLoginDto;
import com.pioneer.developer.sys.amember.model.AmemberDto;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: AmemberService.java
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

public interface AmemberService {

	// 회원 목록
	List<AmemberDto> memberList();

	// 회원 상제 조회
	MemberLoginDto memberView(String id);

	// 블랙리스트 변경
	int divisionBlack(String id, String division);

	// 일반 회원 변경
	int divisionGeneral(String id, String division);

	// 회원구분 수정
	int updateMember(MemberLoginDto memberLoginDto);

	// 판매 권한 요청 목록
	List<AmemberDto> memberConfirmList();

	// 판매 권한 승인OK
	int confirmOK(String id, String confirm);

	// 판매 권한 승인X
	int confirmX(String id, String confirm);


}
