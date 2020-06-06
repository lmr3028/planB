package com.pioneer.developer.sys.sysmain.service;

import java.util.List;
import java.util.Map;

public interface SysMainService {

	List<Map<?, ?>> getGraph1Data();

	List<Map<?, ?>> getGraph4Data();

	List<Map<?, ?>> getGraph3Data();

	List<Map<?, ?>> getGraph2Data();

	int getTodayMemberCount();

	int getTodayOrderCount();

	int getTodayReportCount();

	String getTodaySalesPrice();




}
