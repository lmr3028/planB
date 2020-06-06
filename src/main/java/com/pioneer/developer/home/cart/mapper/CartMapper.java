package com.pioneer.developer.home.cart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pioneer.developer.home.cart.model.CartDto;



/**
 * *********************************************************************************
 * @PROJECT      : PlanB 쇼핑몰 구축
 * @PROGRAMID    : CartMapper.java
 * @DESCRIPTION  : 회원 장바구니 Mapper
 * @AUTHOR       : 김성우
 * @CREATEDDATE  : 2020. 05. 29
 * HISTORY
 * =================================================================================
 * DATE                NAME                  DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 29        김성우                                           First Generated
 * *********************************************************************************
 */
@Mapper
public interface CartMapper {

	// 장바구니 목록
	List<CartDto> myCartList(String id);

	// 장바구니 목록 삭제
//	int mycartDelete(Integer cartno);

	// 장바구니 등록
	void cartAdd(CartDto cartDto);

	// 내 장바구니 목록 삭제
	int myCartDelete(int productno);

}
