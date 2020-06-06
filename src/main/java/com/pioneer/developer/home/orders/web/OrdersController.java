package com.pioneer.developer.home.orders.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/home/orders/")
public class OrdersController {

	// 내 구매내역 화면 이동
//		@RequestMapping("/purchaseHistory")
//		public String purchaseHistory() {
//			return "mypage/purchaseHistory.home";
//		}

	@RequestMapping("checkOut")
	public String checkOut() {
		return "/product/checkOut.home";
	}


}
