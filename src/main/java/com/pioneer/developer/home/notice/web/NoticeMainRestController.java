package com.pioneer.developer.home.notice.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.home.notice.model.NoticeMainEventDto;
import com.pioneer.developer.home.notice.model.NoticeMainWriteDto;
import com.pioneer.developer.home.notice.service.NoticeService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/home/notice/", method = RequestMethod.POST)
public class NoticeMainRestController {

	private final NoticeService noticeService;
	private final HttpSession session;

	// 메인 :: 공지사항 슬라이더
	@RequestMapping("noticeSlider")
	private List<NoticeMainWriteDto> noticeSlider() {
		return noticeService.noticeSlider();
	}

	// 홈페이지 :: 공지사항 리스트 화면
	@RequestMapping("homeNoticeList")
	public List<NoticeMainWriteDto> homeNoticeList() {
		return noticeService.homeNoticeList();
	}

	// 홈페이지 :: 공지사항 리스트 화면
	@RequestMapping("homeNoticeListMain")
	public List<NoticeMainWriteDto> homeNoticeListMain() {
		return noticeService.homeNoticeLisMaint();
	}

	// 홈페이지 :: 공지사항 상세 화면
	@RequestMapping("homeNoticeDetail")
	public Map<String, Object> homeNoticeDetail(Integer noticeno) {
		Map<String, Object> noticeDetail = new HashMap<>();
		// 공지사항 상세 정보
		noticeDetail.put("notice", noticeService.noticeView(noticeno));
		// 우측 공지사항 카테고리 리스트
		noticeDetail.put("category", noticeService.noticeCategory());
		// 우측 하단 최근 공지사항 (최근3개)
		noticeDetail.put("latestPost", noticeService.latestPost());

		return noticeDetail;
	}


}
