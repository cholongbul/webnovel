package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.Web;



public interface WebDAO {
	// ���
	public void create(Web web) throws Exception;
	

	// ����
	public Web read(Integer w_id) throws Exception;

	// ����
	public void update(Web web) throws Exception;

	// ����
	public void delete(Integer w_id) throws Exception;

	// ���
	public List<Web> listAll() throws Exception;
	
	// ����¡
	public List<Web> listCriteria(SearchCriteria searchCriteria) throws Exception;
	
	//��ü ������ ����
	int countWebs(SearchCriteria searchcriteria) throws Exception; 
}