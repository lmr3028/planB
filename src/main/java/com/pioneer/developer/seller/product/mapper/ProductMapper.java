package com.pioneer.developer.seller.product.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pioneer.developer.seller.product.model.ProductDto;

@Mapper
public interface ProductMapper {

	// 상품 등록
	int addProduct(ProductDto productDto);

	// 상품 목록 조회
	List<ProductDto> myProductList(String id);

	// 상품 상태 변경
	int productUpdateStatus(@Param("productno") Integer productno, @Param("useYn") String useYn);

	// 상품 상세 조회
	ProductDto productView(int productno);

	// 상품 수정
	int productUpdate(ProductDto productDto);

	// 나의 상품 최근리뷰 목록
	List<Map<?, ?>> myProductReviewList(String id);


}
