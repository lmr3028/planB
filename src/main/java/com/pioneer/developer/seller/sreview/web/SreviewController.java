package com.pioneer.developer.seller.sreview.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/seller/sreview/")
public class SreviewController {

	// 내 상품 리뷰목록
	@RequestMapping("sreviewListView")
	public String sreviewListView() {
		return "/sreview/sreviewListView.slr";
	}
}
