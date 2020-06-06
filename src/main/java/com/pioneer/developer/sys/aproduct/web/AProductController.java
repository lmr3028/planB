package com.pioneer.developer.sys.aproduct.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pioneer.developer.sys.aproduct.service.AProductService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;


/**
 * *********************************************************************************
 * @PROJECT      : PlanB 쇼핑몰 구축
 * @PROGRAMID    : AProductController.java
 * @DESCRIPTION  :
 * @AUTHOR       : 임현우
 * @CREATEDDATE  : 2020. 05. 20
 * HISTORY
 * =================================================================================
 * DATE                NAME                  DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 20      임현우                   First Generated
 * *********************************************************************************
 */


@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/sys/product/")
public class AProductController {

	// (RestController에서 처리)
	@RequestMapping("SysProductListView")
	public String SysProductListView() {
		return "/product/sysProductListView.sys";
	}

	// (RestController에서 처리)
	@RequestMapping("sysOrdersListView")
	public String sysOrdersListView() {
		return "/product/sysOrdersListView.sys";
	}


}
