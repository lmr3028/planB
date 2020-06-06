package com.pioneer.developer.member.join.service;

import com.pioneer.developer.member.join.model.MemberJoinDto;

public interface MemberJoinService {

	MemberJoinDto getMember(String completeLoginId);

	Boolean confirmJoinId(String id);

	void signup(MemberJoinDto memberJoinDto);

}
