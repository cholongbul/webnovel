package com.bit.service;

import java.util.List;

import com.bit.commons.paging.A_SearchCriteria;
import com.bit.commons.paging.W_SearchCriteria;
import com.bit.domain.WebVO;

public interface WebService {

	// ���
	public void creat(WebVO web) throws Exception;

	// ����
	public WebVO read(Integer w_id) throws Exception;

	// ����
	public void update(WebVO web) throws Exception;

	// ����
	public void delete(Integer w_id) throws Exception;

	// ��� ����
	public List<WebVO> listAll() throws Exception;

	// ����¡
	public List<WebVO> listCriteria(W_SearchCriteria searchCriteria) throws Exception;

	// ��ü �۰� ����
	int countWebs(W_SearchCriteria searchCriteria) throws Exception;

}
