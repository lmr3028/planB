package com.pioneer.developer.member.join.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pioneer.developer.member.join.model.MemberJoinDto;
import com.pioneer.developer.member.join.service.MemberJoinService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/member/join/")
public class MemberJoinController {

	private final MemberJoinService memberJoinService;

	@RequestMapping("loginSignUp")
	public String loginSingUp() {
		return "member/join/loginSignUp.single";
	}

	@RequestMapping("complete")
	public String complete(String completeLoginId, Model model) {
		try {
			if (completeLoginId == null || completeLoginId == "") {
				return "redirect:member/join/joinForm.admin";
			}

			MemberJoinDto memberData = memberJoinService.getMember(completeLoginId);
			model.addAttribute("memberData", memberData);

			// 이메일(id, 템플릿 타입(회원가입 / 비밀번호 찾기))

		} catch (Exception e) {
			log.error("IGNORE : ", e);
		}
		return "member/join/memberJoinComplete.admin";
	}

	@RequestMapping("signup")
	public String signup(MemberJoinDto memberJoinDto, Model model) {
		log.info(" ######## signup : " + memberJoinDto.toString());
		log.info(" ######## signup : " + memberJoinDto.getId());
		memberJoinService.signup(memberJoinDto);
		return "member/join/loginSignUp.single";
	}

}
