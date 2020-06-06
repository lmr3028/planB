package com.pioneer.developer.home.cart.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.home.cart.model.CartDto;
import com.pioneer.developer.home.cart.service.CartService;
import com.pioneer.developer.seller.product.model.ProductDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;



/**
 * *********************************************************************************
 * @PROJECT      : PlanB 쇼핑몰 구축
 * @PROGRAMID    : CartRestController.java
 * @DESCRIPTION  : 회원 장바구니 REST 컨트롤러
 * @AUTHOR       : 김성우
 * @CREATEDDATE  : 2020. 05. 29
 * HISTORY
 * =================================================================================
 * DATE                NAME                  DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 29        김성우                                           First Generated
 * *********************************************************************************
 */

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping("/rest/home/cart")
public class CartRestController {

	private final CartService cartService;
	private final HttpSession session;

	// 장바구니 목록
	@RequestMapping("myCartList")
	public List<CartDto> myCartList() {
		String id = (String) session.getAttribute("id");
		List<CartDto> myCartList = cartService.myCartList(id);
		return myCartList;
	}

	// 장바구니 목록 삭제
//	@RequestMapping("mycartDelete")
//	public int mycartDelete(Integer cartno) {
//		int mycartDelete = cartService.mycartDelete(cartno);
//		return mycartDelete;
//	}

	// 장바구니 등록
	@RequestMapping("cartAdd")
	public void cartAdd(CartDto cartDto) throws Exception {
		log.info(" >>>>>> cartAdd param : " + JsonUtils.toJson(cartDto));
		String id = (String) session.getAttribute("id");
		cartDto.setId(id);

		cartService.cartAdd(cartDto);
	}

	// 내 장바구니 목록 삭제
	@RequestMapping("myCartDelete")
	public int myCartDelete(int productno) {
		int myCartDelete = cartService.myCartDelete(productno);
		log.info(">>>>>> productno : " + productno);

		return myCartDelete;

//		return "redirect://localhost:8080/home/product/productDetail" + productno;
	}

}
