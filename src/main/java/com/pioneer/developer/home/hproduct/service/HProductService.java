package com.pioneer.developer.home.hproduct.service;

import java.util.List;

import com.pioneer.developer.home.hproduct.model.HProductDto;
import com.pioneer.developer.home.review.model.ReviewWriteDto;
import com.pioneer.developer.seller.product.model.ProductDto;

public interface HProductService {

	List<HProductDto> productList();

	HProductDto productDetail(Integer productno);

	List<HProductDto> productListMain();

	List<HProductDto> productListHit();

	List<ReviewWriteDto> reviewList(Integer productno);

}
