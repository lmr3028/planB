package com.pioneer.developer.seller.sellermain.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: SellerMainService.java
 * @DESCRIPTION 	: 판매자 상품 메인 서비스
 * @AUTHOR			: 김성우
 * @CREATEDDATE 	: 2020. 05. 27
 * HISTORY
 * =================================================================================
 * DATE                     NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 27             김성우                                     First Generated
 * *********************************************************************************
 */

public interface SellerMainService {

	List<Map<?, ?>> getGraph4Data(String id);

	List<Map<?, ?>> getGraph3Data(String id);

	List<Map<?, ?>> myProductList(String id);

	List<Map<?, ?>> myProductReview(String id);

	int myProductCount(String id);

	String myProductPrice(String id);

	String myProductRating(String id);

	int myProductListCount(String id);
}
