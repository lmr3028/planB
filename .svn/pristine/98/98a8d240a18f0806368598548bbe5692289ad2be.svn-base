package com.pioneer.developer.home.review.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pioneer.developer.home.review.mapper.ReviewMapper;
import com.pioneer.developer.home.review.model.ReviewWriteDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class ReviewServiceImpl  implements ReviewService{

	private final ReviewMapper reviewMapper;

	@Override
	public void reviewWrite(ReviewWriteDto reviewWriteDto) {
		reviewMapper.reviewWrite(reviewWriteDto);

	}

	@Override
	public List<ReviewWriteDto> reviewList() {
		return reviewMapper.reviewList();
	}

}
