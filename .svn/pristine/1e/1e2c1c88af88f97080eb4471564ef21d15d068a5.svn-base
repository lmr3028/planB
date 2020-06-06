package com.pioneer.developer.sys.aproduct.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pioneer.developer.sys.aproduct.mapper.AProductMapper;
import com.pioneer.developer.sys.aproduct.model.AProductDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class AProductServiceImpl implements AProductService{

	private final AProductMapper aProductMapper;

	@Override
	public List<AProductDto> sysProductList() {
		return aProductMapper.sysProductList();
	}

	@Override
	public List<AProductDto> sysOrdersList() {
		return aProductMapper.sysOrdersList();
	}



}
