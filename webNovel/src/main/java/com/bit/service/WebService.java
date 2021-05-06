package com.bit.service;

import java.util.List;

import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.Web;

public interface WebService {

	// ���
	public void creat(Web web) throws Exception;

	// ����
	public Web read(Integer w_id) throws Exception;

	// ����
	public void update(Web web) throws Exception;

	// ����
	public void delete(Integer w_id) throws Exception;

	// ��� ����
	public List<Web> listAll() throws Exception;

	// ����¡
	public List<Web> listCriteria(SearchCriteria searchCriteria) throws Exception;

	// ��ü �۰� ����
	int countWebs(SearchCriteria searchCriteria) throws Exception;

}
