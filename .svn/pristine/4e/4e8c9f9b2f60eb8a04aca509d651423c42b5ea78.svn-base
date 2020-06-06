package com.pioneer.developer.sys.notice.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pioneer.developer.sys.notice.model.NoticeEventDto;
import com.pioneer.developer.sys.notice.model.NoticeWriteDto;

@Mapper
public interface NoticeMapper {

	// 공지사항 등록
	void addNotice(NoticeWriteDto noticeWriteDto);

	// 공지사항 리스트
	List<NoticeWriteDto> noticeList();

	// 공지사항 상세 조회
	NoticeWriteDto noticeView(int noticeno);

	// 공지사항 상태 변경
	int noticeUpdateStatus(@Param("noticeno") Integer noticeno, @Param("use_yn") String use_yn);

	// 공지사항 수정
	int updateNotice(NoticeWriteDto noticeWriteDto);

	// 응모자 리스트
	List<NoticeEventDto> noticeEventList();

	// 당첨
	List<NoticeEventDto> eventSelect();

}
