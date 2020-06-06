package com.pioneer.developer.home.orders.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.home.cart.model.CartDto;
import com.pioneer.developer.home.mmember.model.MmemberDto;
import com.pioneer.developer.home.orders.model.OrdersDto;
import com.pioneer.developer.home.orders.service.OrdersService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/home/orders/")
public class OrdersRestController {

	private final OrdersService ordersService;
	private final HttpSession session;


	// 주문하기
	@RequestMapping("ordersAdd")
	public void ordersAdd(OrdersDto ordersDto) throws Exception {
		log.info(" >>>>>> ordersDto param : " + JsonUtils.toJson(ordersDto));
		String id = (String) session.getAttribute("id");
		ordersDto.setId(id);
		ordersService.ordersAdd(ordersDto);
	}

//	@RequestMapping("ordersApproved")
//	public List<OrdersDto> ordersApproved() {
//		List<OrdersDto> purchaseHistory = mmemberService.purchaseHistory();
//		return purchaseHistory;
//	}

	// 회원 정보 갖고 오기
	@RequestMapping("memberInfo")
	public MmemberDto memberInfo() {
	String id = (String) session.getAttribute("id");
	log.info(" >>>>>> memberId param : " + id);
	return ordersService.memberInfo(id);
	}
}
