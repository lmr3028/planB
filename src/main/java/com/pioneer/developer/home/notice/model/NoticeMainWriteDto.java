package com.pioneer.developer.home.notice.model;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
@Alias("noticeMainWriteDto")
public class NoticeMainWriteDto {

	private Integer noticeno;
	private String id;
	private String title;
	private String content;
	private String sys_date;
	private String notice_filename;
	private String noticeFilename;
	private String use_yn;

	private MultipartFile notice_file;

	private int categoryno;
	private String category_name;

}
