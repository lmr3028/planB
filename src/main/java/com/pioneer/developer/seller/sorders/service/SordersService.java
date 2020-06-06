package com.pioneer.developer.seller.sorders.service;

import java.util.List;

import com.pioneer.developer.seller.sorders.model.SordersDto;

public interface SordersService {

	// 내 상품 주문 현황

	List<SordersDto> sordersList(SordersDto sordersDto, String id) ;

	// 구매요청 승인처리
	int deliveryEndorse(Integer ordersno);

	// 승인 취소처리
	int deliveryReturn(Integer ordersno);

}
