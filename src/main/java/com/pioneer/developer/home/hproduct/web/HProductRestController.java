package com.pioneer.developer.home.hproduct.web;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.home.hproduct.model.HProductDto;
import com.pioneer.developer.home.hproduct.service.HProductService;
import com.pioneer.developer.home.review.model.ReviewWriteDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: HProductRestController.java
 * @DESCRIPTION 	: Home 상품 REST 컨트롤러
 * @AUTHOR			: 임현우
 * @CREATEDDATE 	: 2020. 05. 27
 * HISTORY
 * =================================================================================
 * DATE                       NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 27             임현우               First Generated
 * *********************************************************************************
 */

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/home/product", method = RequestMethod.POST)
public class HProductRestController {

	private final HProductService hProductService;

	// 상품 전체 리스트
	@RequestMapping("productList")
	public List<HProductDto> productList() {

		List<HProductDto> productList = hProductService.productList();
		return productList;
	}


	// 상품 상세 조회
	@RequestMapping(value = "productDetail", method = RequestMethod.GET)
	public HProductDto productDetail(Integer productno) {
		log.info(" >>>>>> productDetail param : " + productno);
		return hProductService.productDetail(productno);
	}

	// 상품 전체 리스트(메인)
	@RequestMapping("productListMain")
	public List<HProductDto> productListMain() {

		List<HProductDto> productListMain = hProductService.productListMain();
		return productListMain;
	}

	// 상품 전체 리스트(메인 - 조회수)
	@RequestMapping("productListHit")
	public List<HProductDto> productListHit() {

		List<HProductDto> productListHit = hProductService.productListHit();
		return productListHit;
	}

	// 상품 리뷰 리스트
	@RequestMapping(value = "reviewList")
	public List<ReviewWriteDto> reviewList(Integer productno) {
		List<ReviewWriteDto> reviewList =  hProductService.reviewList(productno);
		return reviewList;
	}


}
