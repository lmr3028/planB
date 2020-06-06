package com.pioneer.developer.member.join.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("memberJoinDto")
public class MemberJoinDto {
	private String id;
	private String password;
	private String name;
	private String birth;
	private String address1;
	private String address2;
	private String address3;
	private String address4;
	private String fulladdress;
	private String gender;
	private String phone;
	private String division;
	private String sys_date;
	private String change_date;
	private int confirm;
}
