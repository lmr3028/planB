package com.pioneer.developer.member.report.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pioneer.developer.member.report.mapper.MemberReportMapper;
import com.pioneer.developer.member.report.model.MemberReportDto;
import com.pioneer.developer.member.report.service.MemberReportService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("memberReportService")
public class MemberReportServiceImpl implements MemberReportService{

	private final MemberReportMapper memberReportMapper;

	// 신고 목록
	@Override
	public List<MemberReportDto> reportList() {
		return memberReportMapper.reportList();
	}

}
