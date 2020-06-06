package com.pioneer.developer.member.join.web;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pioneer.developer.member.join.service.MemberJoinService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/rest/member/join", method = RequestMethod.POST)
public class MemberJoinRestController {

	private final MemberJoinService memberJoinService;

	@RequestMapping("/confirmJoinId")
	public ResponseEntity<Object> confirmJoinId(String id) {
		System.out.println(id);
		Boolean result = false;
		try {
			result = memberJoinService.confirmJoinId(id);
		} catch (Exception e) {
			log.error("IGNORE : {}", e);
			return new ResponseEntity<>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
}
