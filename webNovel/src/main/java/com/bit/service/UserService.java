package com.bit.service;

import com.bit.domain.UserVO;

public interface UserService {
	
	//ȸ������ ó��
	public void register(UserVO user) throws Exception;
	
	//�α��� ó��
	public UserVO login(UserVO user) throws Exception;


//	public UserVO select(String u_id) throws Exception;
}
