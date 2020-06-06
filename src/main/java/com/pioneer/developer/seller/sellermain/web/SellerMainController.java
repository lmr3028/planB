package com.pioneer.developer.seller.sellermain.web;

import java.math.BigDecimal;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pioneer.developer.seller.sellermain.service.SellerMainService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: SellerMainController.java
 * @DESCRIPTION 	: 판매자 상품 메인 컨트롤러
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
@Controller
@RequestMapping("/seller/main/")
public class SellerMainController {

	private final SellerMainService sellerMainService;
	private final HttpSession session;

	//등록 화면 이동
	@RequestMapping("view")
	public String mainView(Model model) {

		String id = (String) session.getAttribute("id");

		// 나의 상품 구매내역 수
		model.addAttribute("productCount", sellerMainService.myProductCount(id));
		int s = sellerMainService.myProductCount(id);
		log.info(" >>>>>>>>>>>>>>>> s " + s);

		// 나의 매출액
		model.addAttribute("sumPrice", sellerMainService.myProductPrice(id));

		// 나의 상품 평점 합계
		model.addAttribute("sumRating", sellerMainService.myProductRating(id));

		String a = sellerMainService.myProductRating(id);
		log.info(">>>>>>>>>>>>>> a : " + a);
		log.info(id);

		// 내가 올린 상품
		model.addAttribute("sumList", sellerMainService.myProductListCount(id));
		return "/main/sellerMain.slr";
	}


}
