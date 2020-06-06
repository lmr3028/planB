package com.pioneer.developer.home.orders.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.home.cart.model.CartDto;
import com.pioneer.developer.home.mmember.model.MmemberDto;
import com.pioneer.developer.home.orders.mapper.OrdersMapper;
import com.pioneer.developer.home.orders.model.OrdersDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("ordersService")
public class OrdersServiceImpl implements OrdersService{

	private final OrdersMapper ordersMapper;
	private final HttpSession session;

	@Override
	public void ordersAdd(OrdersDto ordersDto) {
//		String id = (String) session.getAttribute("id");
		ordersMapper.ordersAdd(ordersDto);
	}

	@Override
	public MmemberDto memberInfo(String id) {
		MmemberDto dto = ordersMapper.memberInfo(id);
		String[] address = dto.getAddress().split("/");
		log.info(" >>>>>>>> MEMBER VIEW " + JsonUtils.toJson(address));
		dto.setAddress1(address[0]);
		dto.setAddress2(address[1]);
		dto.setAddress3(address[2]);
		dto.setAddress4(address[3]);

		return dto;
	}



}
