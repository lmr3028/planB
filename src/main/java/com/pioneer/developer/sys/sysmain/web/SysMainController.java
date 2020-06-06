package com.pioneer.developer.sys.sysmain.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pioneer.developer.sys.sysmain.service.SysMainService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/sys/main/")
public class SysMainController {

	private final SysMainService sysMainService;

	@RequestMapping("view")
	public String view(Model model) {
		model.addAttribute("todayMemberCount",sysMainService.getTodayMemberCount());
		model.addAttribute("todayOrderCount",sysMainService.getTodayOrderCount());
		model.addAttribute("todayReportCount",sysMainService.getTodayReportCount());
		model.addAttribute("todaySalesPrice",sysMainService.getTodaySalesPrice());

		return "/main/sysMain.sys";
	}


}
