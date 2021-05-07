package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.A_SearchCriteria;
import com.bit.commons.paging.P_SearchCriteria;
import com.bit.domain.PublisherVO;



public interface PubDAO {
	// 등록
	public void create(PublisherVO pub) throws Exception;
	

	// 열람
	public PublisherVO read(Integer p_id) throws Exception;

	// 수정
	public void update(PublisherVO pub) throws Exception;

	// 삭제
	public void delete(Integer p_id) throws Exception;

	// 목록
	public List<PublisherVO> listAll() throws Exception;
	
	// 페이징
	public List<PublisherVO> listCriteria(P_SearchCriteria searchCriteria) throws Exception;
	
	//전체 데이터 갯수
	int countPubs(P_SearchCriteria searchcriteria) throws Exception; 
}