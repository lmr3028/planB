package com.pioneer.developer.home.mmember.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;


import lombok.Data;



@Data
@Alias("mmemberDto")
public class MmemberDto {
	private String id;
	private String password;
	private String name;
	private String birth;
	private String address1;
	private String address2;
	private String address3;
	private String address4;
	private String fulladdress;
	private String address;
	private String gender;
	private String phone;
	private String division;
	private String divisionname;
	private String sys_date;
	private Date change_date;
	private int confirm;
}
