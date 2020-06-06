package com.pioneer.developer.sys.notice.service;

import java.util.List;
import java.util.Map;

import com.pioneer.developer.sys.notice.model.NoticeEventDto;
import com.pioneer.developer.sys.notice.model.NoticeWriteDto;

public interface NoticeService {

	// 공지사항 등록
	void addNotice(NoticeWriteDto noticeWriteDto) throws Exception;

	// 공지사항 리스트
	List<NoticeWriteDto> noticeList();

	// 공지사항 상세조회
	NoticeWriteDto noticeView(Integer noticeno);

	// 공지사항 상태 변경
	int noticeUpdateStatus(Integer[] noticeno, String use_yn);

	// 공지사항 수정
	int updateNotice(NoticeWriteDto noticeWriteDto);

	// 추첨 목록
	List<NoticeEventDto> noticeEventList();

	List<NoticeEventDto> eventSelect();


}
