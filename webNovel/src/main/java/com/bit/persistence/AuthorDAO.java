package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.Criteria;
import com.bit.commons.paging.SearchCriteria;
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
	
	// ����¡
	public List<AuthorVO> listCriteria(SearchCriteria searchCriteria) throws Exception;
	
	//��ü ������ ����
	int countAuthors(SearchCriteria searchcriteria) throws Exception; 

}