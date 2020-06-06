package com.pioneer.developer.home.notice.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.pioneer.developer.home.notice.model.NoticeMainEventDto;
import com.pioneer.developer.home.notice.model.NoticeMainWriteDto;

@Mapper
public interface NoticeMainMapper {

	List<NoticeMainWriteDto> noticeSlider();

	List<NoticeMainWriteDto> homeNoticeList();

	List<NoticeMainWriteDto> homeNoticeListMain();

	List<Map<?, ?>> noticeCategory();

	List<NoticeMainWriteDto> latestPost();

	// 이벤트 응모
	void eventInsert(NoticeMainEventDto noticeEventDto);

	// 공지사항 상세 조회
	NoticeMainWriteDto noticeView(int noticeno);


}
