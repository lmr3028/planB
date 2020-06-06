package com.pioneer.developer.home.mmember.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pioneer.developer.home.hproduct.model.HproductBookMarkDto;
import com.pioneer.developer.home.mmember.model.MmemberDto;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: MmemberMapper.java
 * @DESCRIPTION 	: 회원 마이페이지 Mapper
 * @AUTHOR			: 김성우
 * @CREATEDDATE 	: 2020. 05. 27
 * HISTORY
 * =================================================================================
 * DATE                     NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 27             김성우                                     First Generated
 * *********************************************************************************
 */

@Mapper
public interface MmemberMapper {

	// 마이페이지 회원 구분
	String myPageDivision(String id);
	// 마이페이지 내 이름
	String myPageName(String id);
	// 회원 탈퇴
	int memberDelete(String id);
	// 구매내역 목록
	List<MmemberDto> purchaseHistory(String id);
	// 내 리뷰 목록
	List<MmemberDto> reviewHistory(String id);
	// 내 정보 불러오기
	MmemberDto memberView(String id);
	// 내 정보 수정
	int updateMember(MmemberDto mmemberDto);
	// 판매자 권한신청
	int salesUpdate(String id);
	// 수령 완료 업데이트
	int deliveryUpdate(Integer ordersno);
	// 즐겨찾기
	HproductBookMarkDto myBookMark(String id);




}
