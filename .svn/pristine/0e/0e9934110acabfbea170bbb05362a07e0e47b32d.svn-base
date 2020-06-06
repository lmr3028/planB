package com.pioneer.developer.seller.product.service;
import java.util.List;
import java.util.Map;

import com.pioneer.developer.seller.product.model.ProductDto;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: ProductService.java
 * @DESCRIPTION 	: 상품 관리 서비스
 * @AUTHOR			: 김성우
 * @CREATEDDATE	: 2020. 05. 09
 * HISTORY
 * =================================================================================
 * DATE                      NAME                  DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 09             김성우               First Generated
 * *********************************************************************************
 */

public interface ProductService {

	// 상품 등록
	void addProduct(ProductDto productDto) throws Exception;

	// 상품 목록 조회
	List<ProductDto> myProductList(String id);

	// 상품 상태 변경
	int productUpdateStatus(Integer[] productno, String useYn);

	// 상품 상세 조회
	ProductDto productView(int productno);

	// 상품 수정
	int productUpdate(ProductDto productDto);

	// 나의 상품 최근리뷰 목록
	List<Map<?, ?>> myProductReviewList(String id);

}
