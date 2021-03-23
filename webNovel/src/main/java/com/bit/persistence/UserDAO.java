package com.bit.persistence;

import java.util.Date;

import com.bit.domain.UserVO;

public interface UserDAO {
	//ȸ������ó��
	public void register(UserVO user) throws Exception;
	//�α��� ó��
	public UserVO login(UserVO user) throws Exception;
	
	// �α��� ���� ó��
	void keepLogin(String userId, String sessionId, Date sessionLimit) throws Exception;

	// ����Ű ����
	UserVO checkUserWithSessionKey(String value) throws Exception;
}