package com.bit.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bit.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;
	private static final String namespace = "com.bit.domain.user";

	// 회원가입 처리
	@Override
	public void register(UserVO user) throws Exception {
		session.insert(namespace + ".register", user);

	}

	// 로그인 처리
	@Override
	public UserVO login(UserVO user) throws Exception {
		return session.selectOne(namespace + ".login", user);
	}

	// 로그인 유지 처리
	@Override
	public void keepLogin(String userId, String sessionId, Date sessionLimit) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userId", userId);
		paramMap.put("sessionId", sessionId);
		paramMap.put("sessionLimit", sessionLimit);

		session.update(namespace + ".keepLogin", paramMap);
	}

	// 세션키 검증
	@Override
	public UserVO checkUserWithSessionKey(String value) throws Exception {
		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}

}
