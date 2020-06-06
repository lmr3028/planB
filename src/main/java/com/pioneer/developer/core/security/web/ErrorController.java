package com.pioneer.developer.core.security.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/error/")
public class ErrorController {

	@RequestMapping("403")
	public String error403() {
		return "/error/403";
	}
}
