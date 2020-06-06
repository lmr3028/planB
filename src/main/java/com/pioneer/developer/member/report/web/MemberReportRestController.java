package com.pioneer.developer.member.report.web;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.member.report.model.MemberReportDto;
import com.pioneer.developer.member.report.service.MemberReportService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/sys/report/", method = RequestMethod.POST)
public class MemberReportRestController {

	private final MemberReportService memberReportService;

	// 신고 리스트 화면
	@RequestMapping("reportList")
	public List<MemberReportDto> reportList() {
		List<MemberReportDto> reportList = memberReportService.reportList();

		log.info("########### REPORT JSON : " + JsonUtils.toJson(reportList));

		return reportList;
	}

}
