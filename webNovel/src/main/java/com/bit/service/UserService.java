package com.bit.service;

import com.bit.domain.UserVO;

public interface UserService {
	
	//회원가입 처리
	public void register(UserVO user) throws Exception;
	
	//로그인 처리
	public UserVO login(UserVO user) throws Exception;


//	public UserVO select(String u_id) throws Exception;
}
