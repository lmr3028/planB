package com.pioneer.developer.seller.sellermain.mapper;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: SellerMainMapper.java
 * @DESCRIPTION 	: 판매자 상품 메인 Mapper
 * @AUTHOR			: 김성우
 * @CREATEDDATE 	: 2020. 05. 27
 * HISTORY
 * =================================================================================
 * DATE                     NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 27             김성우                                     First Generated
 * *********************************************************************************
 */

@Mapper
public interface SellerMainMapper {

	List<Map<?, ?>> getGraph4Data(String id);

	List<Map<?, ?>> getGraph3Data(String sales_id);

	List<Map<?, ?>> myProductList(String sales_id);

	List<Map<?, ?>> myProductReview(String id);

	int myProductCount(String sales_id);

	String myProductPrice(String sales_id);

	String myProductRating(String id);

	int myProductListCount(String id);

}
