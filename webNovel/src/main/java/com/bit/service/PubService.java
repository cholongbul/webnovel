package com.bit.service;

import java.util.List;

import com.bit.commons.paging.SearchCriteria;
import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.PublisherVO;

public interface PubService {

	// 등록
	public void creat(PublisherVO pub) throws Exception;

	// 열람
	public PublisherVO read(Integer p_id) throws Exception;

	// 수정
	public void update(PublisherVO pub) throws Exception;

	// 삭제
	public void delete(Integer p_id) throws Exception;

	// 목록 열람
	public List<PublisherVO> listAll() throws Exception;

	// 페이징
	public List<PublisherVO> listCriteria(SearchCriteria searchCriteria) throws Exception;

	// 전체 작가 갯수
	int countPubs(SearchCriteria searchCriteria) throws Exception;
}
