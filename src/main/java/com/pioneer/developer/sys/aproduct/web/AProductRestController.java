package com.pioneer.developer.sys.aproduct.web;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.sys.aproduct.model.AProductDto;
import com.pioneer.developer.sys.aproduct.service.AProductService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/sys/product/", method = RequestMethod.POST)
public class AProductRestController {

	private final AProductService aproductservice;

	// 상품 전체 리스트 화면
	@RequestMapping("sysProductList")
	public List<AProductDto> sysProductList() {

		List<AProductDto> sysProductList = aproductservice.sysProductList();

		log.info("########### SYSPRODUCT JSON : " + JsonUtils.toJson(sysProductList));

		return sysProductList;
	}

	// 전체 주문 / 매출액 리스트 화면
	@RequestMapping("sysOrdersList")
	public List<AProductDto> sysOrdersList() {

		List<AProductDto> sysOrdersList = aproductservice.sysOrdersList();

		log.info("########### SYSORDERSLIST JSON : " + JsonUtils.toJson(sysOrdersList));

		return sysOrdersList;
	}

}
