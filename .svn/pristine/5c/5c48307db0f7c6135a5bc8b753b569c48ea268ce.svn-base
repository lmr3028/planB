package com.pioneer.developer.sys.notice.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pioneer.developer.sys.notice.model.NoticeEventDto;
import com.pioneer.developer.sys.notice.service.NoticeService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;


/**
 * *********************************************************************************
 * @PROJECT      : PlanB 공지사항 구축
 * @PROGRAMID    : NoticeController.java
 * @DESCRIPTION  :
 * @AUTHOR       : 임현우
 * @CREATEDDATE  : 2020. 05. 11
 * HISTORY
 * =================================================================================
 * DATE                NAME                  DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 11        임현우                              First Generated
 * *********************************************************************************
 */
@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/sys/notice/")
public class NoticeController {
	private final NoticeService noticeService;
	private final HttpSession session;

	//등록 화면 이동
	@RequestMapping("addNoticeView")
	public String addNoticeView() {
		return "/notice/addNotice.sys";
	}

	// (RestController에서 처리)
	@RequestMapping("NoticeListView")
	public String NoticeListView() {
		return "/notice/noticeListView.sys";
	}

	// (RestController에서 처리)
	@RequestMapping("noticeEventList")
	public String noticeEventList() {
		return "/notice/noticeEventList.sys";
	}






}
