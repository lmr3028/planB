package com.pioneer.developer.seller.sellermain.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.pioneer.developer.seller.sellermain.mapper.SellerMainMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: SellerMainServiceImpl.java
 * @DESCRIPTION 	: 판매자 상품 메인 서비스 Impl
 * @AUTHOR			: 김성우
 * @CREATEDDATE 	: 2020. 05. 27
 * HISTORY
 * =================================================================================
 * DATE                     NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 27             김성우                                     First Generated
 * *********************************************************************************
 */

@Slf4j
@RequiredArgsConstructor
@Service
public class SellerMainServiceImpl implements SellerMainService {

	private final SellerMainMapper sellerMainMapper;



	@Override
	public List<Map<?, ?>> getGraph4Data(String id) {
		return sellerMainMapper.getGraph4Data(id);
	}

	@Override
	public List<Map<?, ?>> getGraph3Data(String id) {
		return sellerMainMapper.getGraph3Data(id);
	}

	@Override
	public List<Map<?, ?>> myProductList(String id) {
		return sellerMainMapper.myProductList(id);
	}

	@Override
	public List<Map<?, ?>> myProductReview(String id) {
		return sellerMainMapper.myProductReview(id);
	}

	@Override
	public int myProductCount(String id) {
		return sellerMainMapper.myProductCount(id);
	}

	@Override
	public String myProductPrice(String id) {
		return sellerMainMapper.myProductPrice(id);
	}

	@Override
	public String myProductRating(String id) {
		return sellerMainMapper.myProductRating(id);
	}

	@Override
	public int myProductListCount(String id) {
		return sellerMainMapper.myProductListCount(id);
	}

}
