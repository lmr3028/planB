package com.pioneer.developer.home.main.web;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@Controller
public class HomeMainController {

	private final HttpSession session;

	@RequestMapping("/")
	public String main() {
		log.info("MAIN :: SESSION >>>>> : " + session.getAttribute("id"));

		// 마지막 요청 시간
		log.info("MAIN :: SESSION LAST ACCESS >>>> : " + new Date(session.getLastAccessedTime()).toLocaleString());
		// 최대허용시간 설정 (초)
		log.info("MAIN :: SESSION TL >>>> : " + session.getMaxInactiveInterval());
		// 세션 만료 시간
		log.info("MAIN :: SESSION TIME OUT>>>> : " + new Date(session.getLastAccessedTime() + (session.getMaxInactiveInterval()*1000)).toLocaleString());

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		log.info("MAIN :: AUTH >>>>> : " + authentication.getName());

		return "main/main.home";
	}
}
