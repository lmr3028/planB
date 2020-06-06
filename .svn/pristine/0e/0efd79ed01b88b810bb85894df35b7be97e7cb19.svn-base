package com.pioneer.developer.home.hproduct.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pioneer.developer.home.hproduct.mapper.HProductMapper;
import com.pioneer.developer.home.hproduct.model.HProductDto;
import com.pioneer.developer.home.review.model.ReviewWriteDto;
import com.pioneer.developer.seller.product.model.ProductDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("hProductService")
public class HProductServiceImpl implements HProductService{

	private final HProductMapper hProductMapper;

	@Override
	public List<HProductDto> productList() {
		return hProductMapper.productList();
	}

	@Override
	public HProductDto productDetail(Integer productno) {
//		hProductMapper.productHit(productno);

		return hProductMapper.productDetail(productno);
	}

	@Override
	public List<HProductDto> productListMain() {
		return hProductMapper.productListMain();
	}

	@Override
	public List<HProductDto> productListHit() {
		return hProductMapper.productListHit();
	}

	@Override
	public List<ReviewWriteDto> reviewList(Integer productno) {
		return hProductMapper.reviewList(productno);
	}

}
