package com.pioneer.developer.home.hproduct.model;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import com.pioneer.developer.home.review.model.ReviewWriteDto;

import lombok.Data;

@Data
@Alias("hProductDto")
public class HProductDto extends ReviewWriteDto{
	/** 상품번호 */
	private int productno;
	/** 사용자 ID */
	private String id;
	/** 상품 가격 */
	private String price;
	/** 상품 기본 정보*/
	private String simplecontent;
	/** 상품 정보 */
	private String content;
	/** 상품 조회수 */
	private Integer hit;
	/** 상품 메인 이미지 */
	private MultipartFile mainImg;
	private MultipartFile[] subImg;
	/** 상품명 */
	private String pname;
	private String useYn;

	private String photo1name;
	private String photo2name;
	private String photo3name;
	private String photo4name;

	private int categoryno;
	private String category_name;

}
