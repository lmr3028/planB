package com.pioneer.developer.sys.sysmain.web;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.sys.sysmain.service.SysMainService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping("/rest/sys/main/")
public class SysMainRestController {

	private final SysMainService sysMainService;

	@RequestMapping("graph1")
	public List<Map<?, ?>> graph1Data() {
		List<Map<?, ?>> grpah1Data = sysMainService.getGraph1Data();

		return grpah1Data;
	}

	@RequestMapping("graph4")
	public List<Map<?, ?>> graph4Data() {
		List<Map<?, ?>> grpah4Data = sysMainService.getGraph4Data();

		return grpah4Data;
	}

	@RequestMapping("graph3")
	public List<Map<?, ?>> graph3Data() {
		List<Map<?, ?>> grpah3Data = sysMainService.getGraph3Data();

		return grpah3Data;
	}

	@RequestMapping("graph2")
	public List<Map<?, ?>> graph2Data() {
		List<Map<?, ?>> grpah2Data = sysMainService.getGraph2Data();

		return grpah2Data;
	}



}
