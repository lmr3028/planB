package com.pioneer.developer.home.hproduct.web;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pioneer.developer.home.hproduct.service.HProductService;
import com.pioneer.developer.seller.product.model.ProductDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/home/product")
public class HProductController {

	@RequestMapping("/list")
	public String productList() {
		return "/product/productList.home";
	}

	@RequestMapping("/productDetail")
	public String productDetail() {
		return "/product/productDetail.home";
	}

}
