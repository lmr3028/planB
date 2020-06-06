package com.pioneer.developer.home.mmember.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pioneer.developer.home.mmember.model.MmemberDto;
import com.pioneer.developer.home.mmember.service.MmemberService;
import com.pioneer.developer.member.join.model.MemberJoinDto;
import com.pioneer.developer.member.login.web.MemberLoginController;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: MmemberController.java
 * @DESCRIPTION 	: 회원 마이페이지 컨트롤러
 * @AUTHOR			: 김성우
 * @CREATEDDATE 	: 2020. 05. 27
 * HISTORY
 * =================================================================================
 * DATE                     NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 27             김성우                                     First Generated
 * *********************************************************************************
 */

@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/home/mmember")
public class MmemberController {

	private final MmemberService mmemberService;
	private final HttpSession session;

	// 마이페이지 화면 이동
	@RequestMapping("/myPage")
	public String myPage(Model model) {

		String id = (String) session.getAttribute("id");

		// 마이페이지 회원 구분
		model.addAttribute("myDivision", mmemberService.myPageDivision(id));
		String s = mmemberService.myPageDivision(id);
		log.info(" >>>>>>>>>>>>>>>> s " + s);

		// 마이페이지 내 이름
		model.addAttribute("myname", mmemberService.myPageName(id));
		String a = mmemberService.myPageName(id);
		log.info(" >>>>>>>>>>>>>>>> a " + a);
		return "/mypage/myPage.home";
	}

	// 탈퇴 페이지 이동
	@RequestMapping("/memberWithdrawal")
	public String memberWithdrawal() {
		return "/withdrawal/memberWithdrawal.home";
	}

	// 내 구매내역 화면 이동
	@RequestMapping("/purchaseHistory")
	public String purchaseHistory() {
		return "mypage/purchaseHistory.home";
	}

	// 내 리뷰목록 화면 이동
	@RequestMapping("/reviewHistory")
	public String reviewHistory() {
		return "mypage/reviewHistory.home";
	}

	// 내 정보수정 화면 이동
	@RequestMapping("/informationModify")
	public String informationModify(Model model) {

		String id = (String) session.getAttribute("id");
		model.addAttribute("myname", mmemberService.myPageName(id));
		String q = mmemberService.myPageName(id);
		log.info(" >>>>>>>>>>>>>>>> q " + q);
		return "mypage/informationModify.home";
	}

	// 판매자 권한 신청
	@RequestMapping("salesUpdate")
	private String salesUpdate(Model model) {
		String id = (String) session.getAttribute("id");
		model.addAttribute("salesUpdate", mmemberService.salesUpdate(id));
		session.invalidate();
		return "/main/main.home";
	}

	// 내 정보수정 업데이트
//	@RequestMapping("updateMember")
//	public String updateMember(MmemberDto mmemberDto, Model model) {
//		log.info(" ######## updateMember : " + mmemberDto.toString());
//		log.info(" ######## updateMember : " + mmemberDto.getId());
//		mmemberService.updateMember(mmemberDto);
//		return "/main/main.home";
//	}


}
