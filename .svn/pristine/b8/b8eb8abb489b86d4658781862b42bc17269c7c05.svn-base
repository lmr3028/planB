package com.pioneer.developer.core.utils;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ImageUtils {

	/**
	 * * multipartFile을 File로 변환한다. * *
	 *
	 * @param MultipartFile file 멀티파트 파일
	 * @return File 변환된 파일을 반환한다.
	 * @throws IOException
	 */

	public static File multipartFileToFile(MultipartFile file) throws IOException {
		File convFile = new File(System.getProperty("java.io.tmpdir") + "\\" + file.getOriginalFilename());
		convFile.createNewFile();
		FileOutputStream fos = new FileOutputStream(convFile);
		fos.write(file.getBytes());
		fos.close();
		return convFile;
	}

	/**
	 * 이미지를 리사이즈 한다.
	 *
	 * @param File   srcFile 업로드된 원본 파일
	 * @param String destPath 새로 저장할 파일 경로
	 * @param String type 확장자 ( .jpg , .png 등 )
	 * @param String hashfileName 해쉬파일
	 * @param int widthdist 리사이즈할 가로사이즈
	 * @param int heightdist 리사이즈할 세로사이즈
	 * @throws IOException
	 */
	public static void resizeImg(File srcFile, String destPath, String type, String hashfileName, int widthdist,
			int heightdist) throws IOException {
		log.info(" >>>>>>>>FILE RESIZEIMG >>>>>  " + JsonUtils.toJson(srcFile));

		File destFolder = new File(destPath);

//		if (!destFolder.exists()) { // 폴더 없으면 생성
//			destFolder.mkdirs();
//		}

		Image src = ImageIO.read(srcFile);

		BufferedImage resizeImage = new BufferedImage((int) widthdist, (int) heightdist, BufferedImage.TYPE_INT_RGB);

		resizeImage.getGraphics().drawImage(src.getScaledInstance(widthdist, heightdist, Image.SCALE_SMOOTH), 0, 0,
				null);
		// resizeImage.getGraphics().drawImage(src.getScaledInstance(widthdist,
		// heightdist,
		// Image.SCALE_AREA_AVERAGING), 0, 0, null);

		FileOutputStream out = new FileOutputStream(destPath + hashfileName + type);
		ImageIO.write(resizeImage, type.substring(1), out);
		out.close();
	}

}
