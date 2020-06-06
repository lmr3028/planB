package com.pioneer.developer.home.notice.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pioneer.developer.home.notice.service.NoticeService;
import com.pioneer.developer.home.notice.model.NoticeMainEventDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@Controller
@RequestMapping("/home/notice/")
public class NoticeMainController {
	private final NoticeService noticeService;
	private final HttpSession session;

	// 홈페이지 공지사항 리스트 페이지
		@RequestMapping("noticeListViewPage")
		public String noticeListViewPage() {
			return "/notice/noticeList.home";
		}

		// 홈페이지 공지사항 상세 페이지
		@RequestMapping("noticeViewPage")
		public String noticeViewPage() {
			return "/notice/noticeDetail.home";
		}

		// 이벤트 응모
		@RequestMapping("eventInsert")
		public void eventInsert(NoticeMainEventDto noticeEventDto) throws Exception {
			String id = (String) session.getAttribute("id");
			String name = (String) session.getAttribute("name");
			noticeEventDto.setId(id);
			noticeEventDto.setName(name);
			log.info(" ######## notice : " + noticeEventDto.toString());

			noticeService.eventInsert(noticeEventDto);
		}

}
