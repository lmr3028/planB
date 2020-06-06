package com.pioneer.developer.seller.sreview.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.seller.sreview.model.SreviewDto;
import com.pioneer.developer.seller.sreview.service.SreviewService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/seller/sreview/" )
public class SreviewRestController {

	private final SreviewService sreviewService;
	private final HttpSession session;

	// 내 상품 리뷰목록
	@RequestMapping("sreviewList")
	public List<SreviewDto> sreviewList(SreviewDto sreviewDto) {
		String id = (String) session.getAttribute("id");


		return sreviewService.sreviewList(sreviewDto, id);
	}

}
