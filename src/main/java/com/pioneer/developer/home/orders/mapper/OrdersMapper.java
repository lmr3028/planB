package com.pioneer.developer.home.orders.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pioneer.developer.home.mmember.model.MmemberDto;
import com.pioneer.developer.home.orders.model.OrdersDto;

@Mapper
public interface OrdersMapper {

	void ordersAdd(OrdersDto ordersDto);

	MmemberDto memberInfo(String id);

}
