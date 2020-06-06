package com.pioneer.developer.seller.product.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.seller.product.model.ProductDto;
import com.pioneer.developer.seller.product.service.ProductService;

import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: ProductRestController.java
 * @DESCRIPTION 	: 상품 관리 REST 컨트롤러
 * @AUTHOR			: 김성우
 * @CREATEDDATE 	: 2020. 05. 09
 * HISTORY
 * =================================================================================
 * DATE                       NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 09             김성우                                     First Generated
 * *********************************************************************************
 */

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/seller/product/", method = RequestMethod.POST)
@ApiOperation(value = "판매자 상품 관리 API")
public class ProductRestController {

	private final ProductService productService;
	private final HttpSession session;

	// 상품 등록
    @ApiOperation(value = "상품 등록", notes = "상품 등록 API")
	@RequestMapping("addProduct")
	public void addProduct(ProductDto productDto) throws Exception {
		log.info(" >>>>>> addProduct param : " + JsonUtils.toJson(productDto));
		String id = (String) session.getAttribute("id");
		productDto.setId(id);

		productService.addProduct(productDto);
	}

	// 나의 상품 리스트
    @ApiOperation(value = "상품 리스트", notes = "상품 리스트 API")
	@RequestMapping("myProductList")
	public List<ProductDto> myProductList() {
		String id = (String) session.getAttribute("id");
		return productService.myProductList(id);
	}

	// 상품 상태 변경
    @ApiOperation(value = "상품 상태 변경", notes = "상품 상태 변경 API")
	@RequestMapping("updateStatus")
	public int productUpdateStatus(Integer[] productno, String useYn) {
		log.info(" >>>>>> updateStatus param : " + JsonUtils.toJson(productno) + " " + useYn);
		return productService.productUpdateStatus(productno, useYn);
	}

	// 나의 상품 상세조회
    @ApiOperation(value = "상품 상세", notes = "상품 상세 API")
	@RequestMapping("productView")
	public ProductDto productView(Integer productno) {
		log.info(" >>>>>> productView param : " + productno);
		return productService.productView(productno);
	}

	// 나의 상품 수정
    @ApiOperation(value = "상품 수정", notes = "상품 수정 API")
	@RequestMapping("updateProduct")
	private int productUpdate(ProductDto productDto) {
		log.info(" >>>>>> updateProduct param : " + JsonUtils.toJson(productDto));
		String id = (String) session.getAttribute("id");
		productDto.setId(id);
		return productService.productUpdate(productDto);
	}

	// 나의 상품 최근리뷰 목록
    @ApiOperation(hidden = true, value = "")
	@RequestMapping("myProductReviewList")
	public List<Map<?,?>> myProductReviewList() {

		String id = (String)session.getAttribute("id");
		List<Map<?,?>> myProductReviewList = productService.myProductReviewList(id);

		return myProductReviewList;
	}

}
