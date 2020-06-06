package com.pioneer.developer.member.login.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/member/login")
public class MemberLoginController {

	private final HttpSession session;

	@RequestMapping(value = "/memberlogout", method = RequestMethod.GET)
	public String memberlogout() {
		log.info("아이디값 BEFORE : " + session.getAttribute("id"));

		session.invalidate();

		log.info("아이디값 AFTER : " + session.getAttribute("id"));

		return "/main/main.home";
	}

}
