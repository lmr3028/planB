package com.pioneer.developer.seller.sorders.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pioneer.developer.seller.sorders.model.SordersDto;

@Mapper
public interface SordersMapper {

	// 내 상품 주문 현황
	List<SordersDto> sordersList(SordersDto sordersDto, String id);

	// 구매요청 승인처리
	int deliveryEndorse(Integer ordersno);

	// 승인 취소처리
	int deliveryReturn(Integer ordersno);

}
