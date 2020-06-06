package com.pioneer.developer.seller.sreview.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pioneer.developer.seller.sorders.model.SordersDto;
import com.pioneer.developer.seller.sreview.mapper.SreviewMapper;
import com.pioneer.developer.seller.sreview.model.SreviewDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("sreviewService")
public class SreviewServiceImpl implements SreviewService{

	private final SreviewMapper sreviewMapper;

	// 내 상품 리뷰목록
	@Override
	public List<SreviewDto> sreviewList(SreviewDto sreviewDto, String id) {
		return sreviewMapper.sreviewList(sreviewDto, id);
	}

}
