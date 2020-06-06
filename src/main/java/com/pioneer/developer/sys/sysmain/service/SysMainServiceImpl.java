package com.pioneer.developer.sys.sysmain.service;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.pioneer.developer.sys.sysmain.mapper.SysMainMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class SysMainServiceImpl implements SysMainService {

	private final SysMainMapper sysMainMapper;

	@Override
	public List<Map<?, ?>> getGraph1Data() {
		return sysMainMapper.getGraph1Data();
	}

	@Override
	public List<Map<?, ?>> getGraph4Data() {
		return sysMainMapper.getGraph4Data();
	}

	@Override
	public List<Map<?, ?>> getGraph3Data() {
		return sysMainMapper.getGraph3Data();
	}

	@Override
	public List<Map<?, ?>> getGraph2Data() {
		return sysMainMapper.getGraph2Data();
	}

	@Override
	public int getTodayMemberCount() {
		return sysMainMapper.getTodayMemberCount();
	}

	@Override
	public int getTodayOrderCount() {
		return sysMainMapper.getTodayOrderCount();
	}

	@Override
	public int getTodayReportCount() {
		return sysMainMapper.getTodayReportCount();
	}

	@Override
	public String getTodaySalesPrice() {
		return sysMainMapper.getTodaySalesPrice();
	}


}
