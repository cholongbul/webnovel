package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.A_SearchCriteria;
import com.bit.commons.paging.W_SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.WebVO;



public interface WebDAO {
	// ���
	public void create(WebVO web) throws Exception;
	

	// ����
	public WebVO read(Integer w_id) throws Exception;

	// ����
	public void update(WebVO web) throws Exception;

	// ����
	public void delete(Integer w_id) throws Exception;

	// ���
	public List<WebVO> listAll() throws Exception;
	
	// ����¡
	public List<WebVO> listCriteria(W_SearchCriteria searchCriteria) throws Exception;
	
	//��ü ������ ����
	int countWebs(W_SearchCriteria searchcriteria) throws Exception; 
}