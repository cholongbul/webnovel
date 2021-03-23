package com.bit.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.domain.UserVO;
import com.bit.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	
	@Inject
	private UserDAO dao;
	
	@Override
	public void register(UserVO user) throws Exception {
		dao.register(user);
	}
	
	@Override
	public UserVO login(UserVO user) throws Exception {
		return dao.login(user);
	}

//	@Override 
//	public UserVO select(String u_id) throws Exception {
//		return dao.select(u_id);
//	}
//

//	

}
