package com.pioneer.developer.home.hproduct.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pioneer.developer.home.hproduct.model.HProductDto;
import com.pioneer.developer.home.review.model.ReviewWriteDto;
import com.pioneer.developer.seller.product.model.ProductDto;

@Mapper
public interface HProductMapper {

	List<HProductDto> productList();

	HProductDto productDetail(Integer productno);

	List<HProductDto> productListMain();

	List<HProductDto> productListHit();

	HProductDto productHit(Integer productno);

	List<ReviewWriteDto> reviewList(Integer productno);

}
