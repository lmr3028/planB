package com.pioneer.developer.member.login.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.member.login.model.MemberLoginDto;
import com.pioneer.developer.member.login.service.impl.MemberLogingServiceImpl;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/member/login", method = RequestMethod.POST)
public class MemberLoginRestController {

	private final MemberLogingServiceImpl memberLoginService;

	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public void login(MemberLoginDto memberLoginDto, Model model) {
//		log.info(" ######## login : " + memberLoginDto.toString());
//		MemberLoginDto  dto = memberLoginService.login(memberLoginDto);
		memberLoginService.loadUserByUsername(memberLoginDto.getId());

	}

	@RequestMapping(value = "time", method = RequestMethod.POST)
	public String time(@RequestParam(name = "extendLogin", required = false) String extendLogin, HttpServletRequest request) {

		if("true".equals(extendLogin)) {
			request.getSession().setMaxInactiveInterval(60 * 10); // 10qns
		}
		return "/web/lib/dist/assets/plugins/bootstrap-session-timeout/examples/keep-alive";
	}

}
