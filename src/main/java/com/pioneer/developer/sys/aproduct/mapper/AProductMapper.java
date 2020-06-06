package com.pioneer.developer.sys.aproduct.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pioneer.developer.sys.aproduct.model.AProductDto;

@Mapper
public interface AProductMapper {

	List<AProductDto> sysProductList();

	List<AProductDto> sysOrdersList();


}
