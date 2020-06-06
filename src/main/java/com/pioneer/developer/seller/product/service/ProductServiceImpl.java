package com.pioneer.developer.seller.product.service;

import java.io.File;
import java.net.URL;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.pioneer.developer.core.utils.EncryptionUtils;
import com.pioneer.developer.core.utils.ImageUtils;
import com.pioneer.developer.seller.product.mapper.ProductMapper;
import com.pioneer.developer.seller.product.model.ProductDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * *********************************************************************************
 *
 * @PROJECT : PlanB 쇼핑몰 구축
 * @PROGRAMID : ProductServiceImpl.java
 * @DESCRIPTION : 상품 관리 서비스
 * @AUTHOR : 김성우
 * @CREATEDDATE : 2020. 05. 09 HISTORY
 * =================================================================================
 * DATE NAME DESCRIPTION
 * ---------------------------------------------------------------------------------
 * 2020. 05. 09 김성우 First Generated
 * *********************************************************************************
 */

@Slf4j
@RequiredArgsConstructor
@Service
public class ProductServiceImpl implements ProductService {

	private final ServletContext context;
	private final ProductMapper productMapper;

	@Value("${file.path.user}")
	private String savePath;

	@Override
	public void addProduct(ProductDto productDto) throws Exception {
		log.info(" >>>>>> SAVE PATH : " + savePath);
		log.info(" >>>> REAL PATH : " + context.getRealPath(savePath));

		String imageFolder = context.getRealPath(savePath);

		MultipartFile mainImg = productDto.getMainImg();

		if (!mainImg.isEmpty()) {
			String mainImgName = EncryptionUtils.toSha256Hex(mainImg.getOriginalFilename());
			File mainImgFile = ImageUtils.multipartFileToFile(mainImg);

			String extension = "";
			int i = mainImg.getOriginalFilename().lastIndexOf('.');
			if (i > 0) {
				extension = mainImg.getOriginalFilename().substring(i);
			}

			productDto.setPhoto1name(mainImgName + extension);

			// 상품 썸네일 - 270x270
			ImageUtils.resizeImg(mainImgFile, imageFolder + "/thumbnail/", extension, mainImgName, 270, 270);
			// 상품 상세 - 440x590
			ImageUtils.resizeImg(mainImgFile, imageFolder + "/big/", extension, mainImgName, 440, 590);
			// 상품 상세 - 120x140
			ImageUtils.resizeImg(mainImgFile, imageFolder + "/small/", extension, mainImgName, 120, 140);
		}

		MultipartFile[] subImg = productDto.getSubImg();

		int cnt = 0;
		for (MultipartFile multipartFile : subImg) {

			String subImgName = EncryptionUtils.toSha256Hex(multipartFile.getOriginalFilename());
			File subImgFile = ImageUtils.multipartFileToFile(multipartFile);
			String extension = "";
			int i = multipartFile.getOriginalFilename().lastIndexOf('.');
			if (i > 0) {
				extension = multipartFile.getOriginalFilename().substring(i);
			}

			// 상품 상세 - 440x590
			ImageUtils.resizeImg(subImgFile, imageFolder + "/big/", extension, subImgName, 440, 590);
			// 상품 상세 - 120x140
			ImageUtils.resizeImg(subImgFile, imageFolder + "/small/", extension, subImgName, 120, 140);

			if (cnt == 0) {
				productDto.setPhoto2name(subImgName + extension);
			} else if (cnt == 1) {
				productDto.setPhoto3name(subImgName + extension);
			} else if (cnt == 2) {
				productDto.setPhoto4name(subImgName + extension);
			}
			cnt++;
		}

		productMapper.addProduct(productDto);
	}

	@Override
	public List<ProductDto> myProductList(String id) {
		return productMapper.myProductList(id);
	}

	@Override
	public int productUpdateStatus(Integer[] productno, String useYn) {
		int count = 0;
		for (int i = 0; i < productno.length; i++) {
			count += productMapper.productUpdateStatus(productno[i], useYn);
		}
		return count;
	}

	@Override
	public ProductDto productView(int productno) {
		return productMapper.productView(productno);
	}

	@Override
	public int productUpdate(ProductDto productDto) {
		return productMapper.productUpdate(productDto);
	}

	@Override
	public List<Map<?, ?>> myProductReviewList(String id) {
		return productMapper.myProductReviewList(id);
	}

}
