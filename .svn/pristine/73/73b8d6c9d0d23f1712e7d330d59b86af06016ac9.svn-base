package com.pioneer.developer.sys.amember.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;


/**
 * *********************************************************************************
 * @PROJECT      : PlanB 쇼핑몰 구축
 * @PROGRAMID    : AmemberController.java
 * @DESCRIPTION  :
 * @AUTHOR       : 김성우
 * @CREATEDDATE  : 2020. 05. 12
 * HISTORY
 * =================================================================================
 * DATE                NAME                  DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 12        김성우                                        First Generated
 * *********************************************************************************
 */
@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/sys/member")
public class AmemberController {


	// (RestController에서 처리) - 회원 목록
	@RequestMapping("/memberList")
	public String memberList() {
		return "/member/memberList.sys";
	}

	// (RestController에서 처리) - 판매 요청 목록
	@RequestMapping("/memberConfirmList")
	public String memberConfirmList() {
		return "/member/memberConfirmList.sys";
	}



}
