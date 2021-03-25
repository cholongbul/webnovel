package com.bit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.domain.AuthorVO;
import com.bit.persistence.AuthorDAO;

@Service
public class AuthorServiceImpl implements AuthorService {

	
	@Inject
	private AuthorDAO dao;
	
	@Override
	public void creat(AuthorVO author) throws Exception {
		dao.create(author);
	}

	@Override
	public AuthorVO read(Integer a_id) throws Exception {
		return dao.read(a_id);
	}

	@Override
	public void update(AuthorVO author) throws Exception {
		dao.update(author);
	}

	@Override
	public void delete(Integer a_id) throws Exception {
		dao.delete(a_id);
	}

	@Override
	public List<AuthorVO> listAll() throws Exception {
		return dao.listAll();
	}



}
