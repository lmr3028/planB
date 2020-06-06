package com.pioneer.developer.member.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.pioneer.developer.member.login.model.MemberLoginDto;

@Mapper
public interface MemberLoginMapper {

	MemberLoginDto login(MemberLoginDto memberLoginDto);

	MemberLoginDto loadUserByUsername(String id);

}
