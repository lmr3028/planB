package com.pioneer.developer.home.hproduct.model;

import org.apache.ibatis.type.Alias;


import lombok.Data;

@Data
@Alias("hProductBookMarkDto")
public class HproductBookMarkDto {
	private int productno;
	private String id;
}
