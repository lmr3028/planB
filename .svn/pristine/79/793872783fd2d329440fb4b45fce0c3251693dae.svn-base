package com.pioneer.developer.sys.amember.web;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.member.login.model.MemberLoginDto;
import com.pioneer.developer.sys.amember.model.AmemberDto;
import com.pioneer.developer.sys.amember.service.AmemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/sys/member/", method = RequestMethod.POST)
public class AmemberRestController {

	private final AmemberService amemberService;

	// 관리자용 회원 리스트 화면
	@RequestMapping("memberList")
	public List<AmemberDto> memberList() {
		List<AmemberDto> memberList = amemberService.memberList();

		log.info("########### MEMBERLIST JSON : " + JsonUtils.toJson(memberList));

		return memberList;
	}

	// 회원 상세조회
	@RequestMapping("memberView")
	public MemberLoginDto memberView(String id) {
		log.debug(" >>>> 회원 상세 조회 ID : " + id);
		return amemberService.memberView(id);
	}

	// 블랙리스트로 변경
	@RequestMapping("divisionBlack")
	public int divisionBlack(String id, String division) {
		log.info(" >>>> 아이디 : " + JsonUtils.toJson(id));
		return amemberService.divisionBlack(id, division);
	}

	// 일반 회원으로 변경
	@RequestMapping("divisionGeneral")
	public int divisionGeneral(String id, String division) {
		log.info(" >>>> 아이디 : " + JsonUtils.toJson(id));
		return amemberService.divisionGeneral(id, division);
	}

	// 회원구분 수정
	@RequestMapping("updateMember")
	private int updateMember(MemberLoginDto memberLoginDto) {
		return amemberService.updateMember(memberLoginDto);
	}

	// 관리자용 판매 권한 요청 리스트 화면
	@RequestMapping("memberConfirmList")
	public List<AmemberDto> memberConfirmList() {
		List<AmemberDto> memberConfirmList = amemberService.memberConfirmList();

		log.info("########### MEMBERCONFIRMLIST JSON : " + JsonUtils.toJson(memberConfirmList));

		return memberConfirmList;
	}

	// 회원 판매자 승인
	@RequestMapping("confirmOK")
	public int confirmOK(String id, String confirm) {
		log.info(" >>>> 아이디 : " + JsonUtils.toJson(id));
		return amemberService.confirmOK(id, confirm);
	}

	// 회원 판매자 거절
	@RequestMapping("confirmX")
	public int confirmX(String id, String confirm) {
		log.info(" >>>> 아이디 : " + JsonUtils.toJson(id));
		return amemberService.confirmX(id, confirm);
	}

}
