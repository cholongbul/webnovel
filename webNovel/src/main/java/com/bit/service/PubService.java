package com.bit.service;

import java.util.List;

import com.bit.commons.paging.SearchCriteria;
import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.PublisherVO;

public interface PubService {

	// ���
	public void creat(PublisherVO pub) throws Exception;

	// ����
	public PublisherVO read(Integer p_id) throws Exception;

	// ����
	public void update(PublisherVO pub) throws Exception;

	// ����
	public void delete(Integer p_id) throws Exception;

	// ��� ����
	public List<PublisherVO> listAll() throws Exception;

	// ����¡
	public List<PublisherVO> listCriteria(SearchCriteria searchCriteria) throws Exception;

	// ��ü �۰� ����
	int countPubs(SearchCriteria searchCriteria) throws Exception;
}
