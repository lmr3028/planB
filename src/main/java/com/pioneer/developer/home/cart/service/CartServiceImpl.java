package com.pioneer.developer.home.cart.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pioneer.developer.home.cart.mapper.CartMapper;
import com.pioneer.developer.home.cart.model.CartDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;



/**
 * *********************************************************************************
 * @PROJECT      : PlanB 쇼핑몰 구축
 * @PROGRAMID    : CartServiceImpl.java
 * @DESCRIPTION  : 회원 장바구니 서비스 Impl
 * @AUTHOR       : 김성우
 * @CREATEDDATE  : 2020. 05. 29
 * HISTORY
 * =================================================================================
 * DATE                NAME                  DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 29        김성우                                           First Generated
 * *********************************************************************************
 */

@Slf4j
@RequiredArgsConstructor
@Service("cartService")
public class CartServiceImpl implements CartService{

	private final CartMapper cartMapper;
	// 장바구니 목록
	@Override
	public List<CartDto> myCartList(String id) {
		return cartMapper.myCartList(id);
	}
	// 장바구니 목록 삭제
//	@Override
//	public int mycartDelete(Integer cartno) {
//		return cartMapper.mycartDelete(cartno);
//	}

	// 장바구니 등록
	@Override
	public void cartAdd(CartDto cartDto) {
		cartMapper.cartAdd(cartDto);
	}

	// 내 장바구니 목록 삭제
	@Override
	public int myCartDelete(int productno) {
		return cartMapper.myCartDelete(productno);
	}
}
