package com.pioneer.developer.sys.notice.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.sys.notice.model.NoticeEventDto;
import com.pioneer.developer.sys.notice.model.NoticeWriteDto;
import com.pioneer.developer.sys.notice.service.NoticeService;
import com.pioneer.developer.core.utils.JsonUtils;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/sys/notice/", method = RequestMethod.POST)
public class NoticeRestController {

	private final NoticeService noticeService;
	private final HttpSession session;

	@Value("${file.path.notice}")
	private String savePath;

	// 공지사항 등록
	@RequestMapping("addNotice")
	public void addNotice(NoticeWriteDto noticeWriteDto) throws Exception {
		log.info(" ######## notice : " + noticeWriteDto.toString());

		noticeService.addNotice(noticeWriteDto);
	}

	// 공지사항 리스트 화면
	@RequestMapping("noticetList")
	public List<NoticeWriteDto> noticetList() {
		return noticeService.noticeList();
	}

	// 공지사항 상세 조회
	@RequestMapping("noticeView")
	public NoticeWriteDto noticeView(Integer noticeno) {
		return noticeService.noticeView(noticeno);
	}

	// 공지사항 상태 변경
	@RequestMapping("noticeUpdateStatus")
	public int noticeUpdateStatus(Integer[] noticeno, String use_yn) {
		return noticeService.noticeUpdateStatus(noticeno, use_yn);
	}

	// 공지사항 수정
	@RequestMapping("updateNotice")
	private int updateNotice(NoticeWriteDto noticeWriteDto) {
		return noticeService.updateNotice(noticeWriteDto);
	}

	// 공지사항 리스트 화면
	@RequestMapping("noticeEventList")
	public List<NoticeEventDto> noticeEventList() {
		return noticeService.noticeEventList();
	}

	// 추첨 리스트 화면
	@RequestMapping("eventSelect")
	public List<NoticeEventDto> eventSelect() {
		return noticeService.eventSelect();
	}

}
