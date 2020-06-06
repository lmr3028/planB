package com.pioneer.developer.seller.sreview.model;

import org.apache.ibatis.type.Alias;

import com.pioneer.developer.seller.product.model.ProductDto;

import lombok.Data;

@Data
@Alias("sreviewDto")
public class SreviewDto extends ProductDto{
	private int reviewno;
	private int productno;
	private String id;
	private String contents;
	private String sys_date;
	private String rating;
}
