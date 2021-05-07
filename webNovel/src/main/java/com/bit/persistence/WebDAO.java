package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.A_SearchCriteria;
import com.bit.commons.paging.W_SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.WebVO;



public interface WebDAO {
	// 등록
	public void create(WebVO web) throws Exception;
	

	// 열람
	public WebVO read(Integer w_id) throws Exception;

	// 수정
	public void update(WebVO web) throws Exception;

	// 삭제
	public void delete(Integer w_id) throws Exception;

	// 목록
	public List<WebVO> listAll() throws Exception;
	
	// 페이징
	public List<WebVO> listCriteria(W_SearchCriteria searchCriteria) throws Exception;
	
	//전체 데이터 갯수
	int countWebs(W_SearchCriteria searchcriteria) throws Exception; 
}