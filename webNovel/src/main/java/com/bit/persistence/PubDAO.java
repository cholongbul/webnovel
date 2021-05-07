package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.A_SearchCriteria;
import com.bit.commons.paging.P_SearchCriteria;
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
	public List<PublisherVO> listCriteria(P_SearchCriteria searchCriteria) throws Exception;
	
	//��ü ������ ����
	int countPubs(P_SearchCriteria searchcriteria) throws Exception; 
}