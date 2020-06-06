package com.pioneer.developer.seller.sorders.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.home.orders.web.OrdersRestController;
import com.pioneer.developer.seller.sorders.model.SordersDto;
import com.pioneer.developer.seller.sorders.service.SordersService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/seller/sorders/" )
public class SordersRestController {

	private final SordersService sordersService;
	private final HttpSession session;

	// 내 상품 주문 현황
	@RequestMapping("sordersList")
	public List<SordersDto> sordersList(SordersDto sordersDto) {
		String id = (String) session.getAttribute("id");

		//log.info(" ######## sorders : " + SordersDto.toString());

		return sordersService.sordersList(sordersDto,id);
	}

	// 구매요청 승인처리
	@RequestMapping("deliveryEndorse")
	public int deliveryEndorse(Integer ordersno) {
		log.info(">>>>>>>> 상품 주문번호 : " + ordersno);
		return sordersService.deliveryEndorse(ordersno);
	}

	// 승인 취소처리
	@RequestMapping("deliveryReturn")
	public int deliveryReturn( Integer ordersno) {
		log.info(">>>>>>>> 상품 주문번호 : " + ordersno);
		return sordersService.deliveryReturn(ordersno);
	}

}
