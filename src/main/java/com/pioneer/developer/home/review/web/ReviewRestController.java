package com.pioneer.developer.home.review.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.home.review.model.ReviewWriteDto;
import com.pioneer.developer.home.review.service.ReviewService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/home/review")
public class ReviewRestController {

	private final ReviewService reviewService;
	private final HttpSession session;

	@RequestMapping(value = "reviewWrite", method = RequestMethod.POST )
	public void reviewWrite(ReviewWriteDto reviewWriteDto) {
		String id = (String) session.getAttribute("id");
		log.info(" >>>>>> reviewWrite param : " + id);
		reviewWriteDto.setId(id);

		log.info(" >>>>>> reviewWrite param : " + JsonUtils.toJson(reviewWriteDto));
		reviewService.reviewWrite(reviewWriteDto);
	}

	// 댓글 리스트
	@RequestMapping(value = "reviewList", method = RequestMethod.POST )
	public List<ReviewWriteDto> reviewList() {
		List<ReviewWriteDto> reviewList =  reviewService.reviewList();
		return reviewList;
	}
}
