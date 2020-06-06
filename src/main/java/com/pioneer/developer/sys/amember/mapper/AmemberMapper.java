package com.pioneer.developer.sys.amember.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pioneer.developer.member.login.model.MemberLoginDto;
import com.pioneer.developer.sys.amember.model.AmemberDto;


@Mapper
public interface AmemberMapper {

	// 회원 리스트
	List<AmemberDto> memberList();

	// 회원정보 상세 조회
	MemberLoginDto memberView(String id);

	// 블랙리스트 변경
	int divisionBlack(@Param("id") String id, @Param("division") String division);

	// 일반 회원 변경
	int divisionGeneral(@Param("id") String id, @Param("division") String division);

	// 회원구분 변경
	int updateMember(MemberLoginDto memberLoginDto);

	// 판매 권한 요청 목록
	List<AmemberDto> memberConfirmList();

	// 판매 권한 승인OK
	int confirmOK(@Param("id") String id, @Param("confirm") String confirm);

	// 판매 권한 승인X
	int confirmX(@Param("id") String id, @Param("confirm") String confirm);


}
