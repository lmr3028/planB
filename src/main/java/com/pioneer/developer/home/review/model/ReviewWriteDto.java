package com.pioneer.developer.home.review.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("reviewWriteDto")
public class ReviewWriteDto {
	private int reviewno;
	private int productno;
	private String id;
	private String contents;
	private String sys_date;
	private String rating;

}
