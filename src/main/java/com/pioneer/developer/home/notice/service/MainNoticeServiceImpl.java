package com.pioneer.developer.home.notice.service;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.pioneer.developer.home.notice.mapper.NoticeMainMapper;
import com.pioneer.developer.home.notice.model.NoticeMainEventDto;
import com.pioneer.developer.home.notice.model.NoticeMainWriteDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class MainNoticeServiceImpl implements NoticeService{

	   @Value("${file.path.user}")
	   private String savePath;

	   private final ServletContext context;
	   private final HttpSession session;
	   private final NoticeMainMapper noticeMainMapper;

	   @Override
	   public List<NoticeMainWriteDto> noticeSlider() {
	      return noticeMainMapper.noticeSlider();
	   }

	   @Override
	   public List<NoticeMainWriteDto> homeNoticeList() {
	      return noticeMainMapper.homeNoticeList();
	   }

	   @Override
	   public List<NoticeMainWriteDto> homeNoticeLisMaint() {
	      return noticeMainMapper.homeNoticeListMain();
	   }

	   @Override
	   public List<Map<?, ?>> noticeCategory() {
	      return noticeMainMapper.noticeCategory();
	   }

	   @Override
	   public List<NoticeMainWriteDto> latestPost() {
	      return noticeMainMapper.latestPost();
	   }

	   @Override
		public void eventInsert(NoticeMainEventDto noticeEventDto) {
		   noticeMainMapper.eventInsert(noticeEventDto);

	}


	   // 공지사항 상세 조회
	   @Override
	   public NoticeMainWriteDto noticeView(Integer noticeno) {
	      return noticeMainMapper.noticeView(noticeno);
	   }

}
