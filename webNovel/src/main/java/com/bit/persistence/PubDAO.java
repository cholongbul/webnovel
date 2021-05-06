package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.PublisherVO;



public interface PubDAO {
	// ���
	public void create(PublisherVO pub) throws Exception;
	

	// ����
	public PublisherVO read(Integer p_id) throws Exception;

	// ����
	public void update(PublisherVO pub) throws Exception;

	// ����
	public void delete(Integer p_id) throws Exception;

	// ���
	public List<PublisherVO> listAll() throws Exception;
	
	// ����¡
	public List<PublisherVO> listCriteria(SearchCriteria searchCriteria) throws Exception;
	
	//��ü ������ ����
	int countPubs(SearchCriteria searchcriteria) throws Exception; 
}