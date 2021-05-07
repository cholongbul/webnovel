package com.bit.service;

import java.util.List;

import com.bit.commons.paging.Criteria;
import com.bit.commons.paging.A_SearchCriteria;
import com.bit.domain.AuthorVO;

public interface AuthorService {
	
	//���
	public void creat(AuthorVO author) throws Exception;
	
	//����
	public AuthorVO read(Integer a_id) throws Exception;
	
	//����
	public void update(AuthorVO author) throws Exception;

	//����
	public void delete(Integer a_id) throws Exception;
	
	//��� ����
	public List<AuthorVO> listAll() throws Exception;
	
	//����¡
	public List<AuthorVO> listCriteria(A_SearchCriteria searchCriteria) throws Exception;
	
	//��ü �۰� ����
	int countAuthors(A_SearchCriteria searchCriteria) throws Exception;

}
