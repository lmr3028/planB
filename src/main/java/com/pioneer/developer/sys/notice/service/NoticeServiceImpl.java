package com.pioneer.developer.sys.notice.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.pioneer.developer.core.utils.EncryptionUtils;
import com.pioneer.developer.core.utils.ImageUtils;
import com.pioneer.developer.sys.notice.mapper.NoticeMapper;
import com.pioneer.developer.sys.notice.model.NoticeEventDto;
import com.pioneer.developer.sys.notice.model.NoticeWriteDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class NoticeServiceImpl implements NoticeService {

   @Value("${file.path.user}")
   private String savePath;

   private final ServletContext context;
   private final HttpSession session;
   private final NoticeMapper noticeMapper;

   // 공지사항 등록
   @Override
   public void addNotice(NoticeWriteDto noticeWriteDto) throws Exception{

      String id = (String) session.getAttribute("id");
      noticeWriteDto.setId(id);
      String imageFolder = context.getRealPath(savePath);
      MultipartFile noticeImg = noticeWriteDto.getNotice_file();

      if (!noticeImg.isEmpty()) {
         String mainImgName = EncryptionUtils.toSha256Hex(noticeImg.getOriginalFilename());
         File mainImgFile = ImageUtils.multipartFileToFile(noticeImg);

         String extension = "";
         int i = noticeImg.getOriginalFilename().lastIndexOf('.');
         if (i > 0) {
            extension = noticeImg.getOriginalFilename().substring(i);
         }

         noticeWriteDto.setNotice_filename(mainImgName + extension);

         // 공지사항 리스트 - 370x347
         ImageUtils.resizeImg(mainImgFile, imageFolder + "/notice/list/", extension, mainImgName, 370, 347);
         // 공지사항 상세 - 1170x555
         ImageUtils.resizeImg(mainImgFile, imageFolder + "/notice/detail/", extension, mainImgName, 1170, 555);
      }

      noticeMapper.addNotice(noticeWriteDto);

   }

   // 공지사항 목록
   @Override
   public List<NoticeWriteDto> noticeList() {
      return noticeMapper.noticeList();
   }

   // 공지사항 상세 조회
   @Override
   public NoticeWriteDto noticeView(Integer noticeno) {
      return noticeMapper.noticeView(noticeno);
   }

   // 공지사항 상태 변경
   @Override
   public int noticeUpdateStatus(Integer[] noticeno, String use_yn) {
      int count = 0;
      for (int i = 0; i < noticeno.length; i++) {
         count += noticeMapper.noticeUpdateStatus(noticeno[i], use_yn);
      }
      return count;
   }

   @Override
   public int updateNotice(NoticeWriteDto noticeWriteDto) {
      return noticeMapper.updateNotice(noticeWriteDto);
   }

   @Override
	public List<NoticeEventDto> noticeEventList() {
	   	return noticeMapper.noticeEventList();
	}

@Override
public List<NoticeEventDto> eventSelect() {
	return noticeMapper.eventSelect();
}

}