package com.bit.persistence;

import java.util.List;

import com.bit.domain.AuthorVO;


public interface AuthorDAO {
	// ���
	public void create(AuthorVO author) throws Exception;
	

	// ����
	public AuthorVO read(Integer a_id) throws Exception;

	// ����
	public void update(AuthorVO author) throws Exception;

	// ����
	public void delete(Integer a_id) throws Exception;

	// ���
	public List<AuthorVO> listAll() throws Exception;
}