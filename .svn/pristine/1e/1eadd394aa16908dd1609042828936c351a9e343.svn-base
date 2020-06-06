package com.pioneer.developer.seller.sellermain.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.home.orders.service.OrdersService;
import com.pioneer.developer.member.login.mapper.MemberLoginMapper;
import com.pioneer.developer.member.login.model.MemberLoginDto;
import com.pioneer.developer.seller.product.service.ProductService;
import com.pioneer.developer.seller.sellermain.service.SellerMainService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: SellerMainRestController.java
 * @DESCRIPTION 	: 판매자 상품 메인 REST 컨트롤러
 * @AUTHOR			: 김성우
 * @CREATEDDATE 	: 2020. 05. 27
 * HISTORY
 * =================================================================================
 * DATE                     NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 27             김성우                                     First Generated
 * *********************************************************************************
 */

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping("/rest/seller/main/")
public class SellerMainRestController {

//	private final ProductService productService;
//	private final OrdersService ordersService;
	private final SellerMainService sellerMainService;
	private final HttpSession session;

	@RequestMapping("graph4")
	public List<Map<?, ?>> graph4Data() {

        String id = (String) session.getAttribute("id");
		List<Map<?, ?>> grpah4Data = sellerMainService.getGraph4Data(id);

		log.info(grpah4Data.toString());
		System.out.println("아이디값 : " + session.getAttribute(id));

		log.debug(grpah4Data);

		return grpah4Data;
	}

	@RequestMapping("graph3")
	public List<Map<?, ?>> graph3Data() {

		String id = (String) session.getAttribute("id");
		List<Map<?, ?>> grpah3Data = sellerMainService.getGraph3Data(id);

		return grpah3Data;
	}

	// 자신이 가장 많이 판매한 상품 목록
	@RequestMapping("myProductList")
	public List<Map<?, ?>> myProductList() {

		String id = (String) session.getAttribute("id");
		List<Map<?, ?>> myProductList = sellerMainService.myProductList(id);

		return myProductList;
	}

	// 나의 상품 최근리뷰 목록
	@RequestMapping("myProductReview")
	public List<Map<?,?>> myProductReview() {

		String id = (String)session.getAttribute("id");
		List<Map<?,?>> myProductReview = sellerMainService.myProductReview(id);

		return myProductReview;
	}

}
