package com.pioneer.developer.member.mail;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
public class CustomMailSender {

	private final JavaMailSender javaMailSender;

	public void sendMail() throws MessagingException, IOException {

        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        //메일 제목 설정
        helper.setSubject("스프링 부트 메일 전송");
        //수신자 설정
        helper.setTo("mompommm@gmail.com");

        //메일 내용 설정 : 템플릿 프로세스
        String html = "<html><body><h1>회원가입 축하드립니다.</h1>PlanB</body></html>";
        helper.setText(html, true);

        //메일 보내기
        javaMailSender.send(message);
	}

}
