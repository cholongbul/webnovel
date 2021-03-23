package com.bit.persistence;

import java.util.Date;

import com.bit.domain.UserVO;

public interface UserDAO {
	//회원가입처리
	public void register(UserVO user) throws Exception;
	//로그인 처리
	public UserVO login(UserVO user) throws Exception;
	
	// 로그인 유지 처리
	void keepLogin(String userId, String sessionId, Date sessionLimit) throws Exception;

	// 세션키 검증
	UserVO checkUserWithSessionKey(String value) throws Exception;
}