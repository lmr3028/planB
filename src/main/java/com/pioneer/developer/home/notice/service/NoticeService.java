package com.pioneer.developer.home.notice.service;

import java.util.List;
import java.util.Map;

import com.pioneer.developer.home.notice.model.NoticeMainEventDto;
import com.pioneer.developer.home.notice.model.NoticeMainWriteDto;


public interface NoticeService {

	List<NoticeMainWriteDto> noticeSlider();

	List<NoticeMainWriteDto> homeNoticeList();

	List<NoticeMainWriteDto> homeNoticeLisMaint();

	List<Map<?, ?>> noticeCategory();

	List<NoticeMainWriteDto> latestPost();

	void eventInsert(NoticeMainEventDto noticeEventDto);

	// 공지사항 상세조회
	NoticeMainWriteDto noticeView(Integer noticeno);
}
