package com.pioneer.developer.seller.product.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import io.swagger.annotations.ApiOperation;
import springfox.documentation.annotations.ApiIgnore;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: ProductCommonController.java
 * @DESCRIPTION	: 상품 관리 컨트롤러
 * @AUTHOR			: 김성우
 * @CREATEDDATE	: 2020. 05. 09
 * HISTORY
 * =================================================================================
 * DATE                  NAME                  DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 09        김성우                                           First Generated
 * *********************************************************************************
 */

@Controller
@RequestMapping("/seller/product/")
@ApiIgnore
public class ProductController {

	// 상품 리스트 페이지 호출
	@RequestMapping("myProductListView")
	public String myProductListView() {
		return "product/myProductListView.slr";
	}

	//상품 미리보기 페이지 호출
	@RequestMapping("productPreview")
	public String productPreview() throws Exception {
		return "seller/product/productPreview";
	}


}
