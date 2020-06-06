package com.pioneer.developer.home.mmember.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.home.hproduct.model.HProductDto;
import com.pioneer.developer.home.hproduct.model.HproductBookMarkDto;
import com.pioneer.developer.home.mmember.model.MmemberDto;
import com.pioneer.developer.home.mmember.service.MmemberService;
import com.pioneer.developer.seller.product.model.ProductDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

/**
 * *********************************************************************************
 * @PROJECT			: PlanB 쇼핑몰 구축
 * @PROGRAMID		: MmemberRestController.java
 * @DESCRIPTION 	: 회원 마이페이지 REST 컨트롤러
 * @AUTHOR			: 김성우
 * @CREATEDDATE 	: 2020. 05. 27
 * HISTORY
 * =================================================================================
 * DATE                     NAME                DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 27             김성우                                     First Generated
 * *********************************************************************************
 */

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping("/rest/home/mmember")
public class MmemberRestController {

	private final MmemberService mmemberService;
	private final HttpSession session;

	// 구매내역 목록
	@RequestMapping("purchaseHistory")
	public List<MmemberDto> purchaseHistory() {
		String id = (String) session.getAttribute("id");
		log.info(">>>>>>>>>>>>>> " + id);
		List<MmemberDto> purchaseHistory = mmemberService.purchaseHistory(id);
		return purchaseHistory;
	}

	// 내 리뷰 목록
		@RequestMapping("reviewHistory")
		public List<MmemberDto> reviewHistory() {
			String id = (String) session.getAttribute("id");
			log.info(">>>>>>>>>>>>>> " + id);
			List<MmemberDto> reviewHistory = mmemberService.reviewHistory(id);
			return reviewHistory;
		}

	// 내 정보 갖고오기
		@RequestMapping("memberView")
		public MmemberDto memberView() {
		String id = (String) session.getAttribute("id");
		log.info(" >>>>>> memberId param : " + id);
		return mmemberService.memberView(id);
		}

	// 내 정보 수정
		@RequestMapping("updateMember")
		private int updateMember(MmemberDto mmemberDto) {
			return mmemberService.updateMember(mmemberDto);
		}

	// 수령완료(Delivery) 업데이트
	@RequestMapping("deliveryUpdate")
	public int deliveryUpdate(Integer ordersno) {
		log.info(">>>>>>>> 상품 주문번호 : " + ordersno);
		return mmemberService.deliveryUpdate(ordersno);
	}

	// 회원 탈퇴
	@RequestMapping("/myDelete")
	public int memberDelete() {
		String id = (String) session.getAttribute("id");
		int result = mmemberService.memberDelete(id);
		log.info(" RESULT >>> " + result);
		if (result == 1) {
			session.invalidate();
		}
		return result;
	}

	// 즐겨찾기
	@RequestMapping("myBookMark")
	public HproductBookMarkDto myBookMark() {
	String id = (String) session.getAttribute("id");
	log.info(" >>>>>> memberId param : " + id);
	return mmemberService.myBookMark(id);
	}

}
