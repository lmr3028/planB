package com.pioneer.developer.seller.sreview.service;

import java.util.List;

import com.pioneer.developer.seller.sreview.model.SreviewDto;

public interface SreviewService {

	// 내 상품 리뷰목록
	List<SreviewDto> sreviewList(SreviewDto sreviewDto, String id);

}
