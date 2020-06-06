package com.pioneer.developer.seller.sorders.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pioneer.developer.seller.sorders.mapper.SordersMapper;
import com.pioneer.developer.seller.sorders.model.SordersDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("sordersService")
public class SordersServiceImpl implements SordersService{

	private final SordersMapper sordersMapper;

	// 내 상품 주문 현황
	@Override
	public List<SordersDto> sordersList(SordersDto sordersDto, String id) {
		return sordersMapper.sordersList(sordersDto, id);
	}

	// 구매요청 승인처리
	@Override
	public int deliveryEndorse(Integer ordersno) {
		return sordersMapper.deliveryEndorse(ordersno);
	}

	// 승인 취소처리
	@Override
	public int deliveryReturn(Integer ordersno) {
		return sordersMapper.deliveryReturn(ordersno);
	}

}
