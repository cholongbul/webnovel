package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.Web;



public interface WebDAO {
	// 등록
	public void create(Web web) throws Exception;
	

	// 열람
	public Web read(Integer w_id) throws Exception;

	// 수정
	public void update(Web web) throws Exception;

	// 삭제
	public void delete(Integer w_id) throws Exception;

	// 목록
	public List<Web> listAll() throws Exception;
	
	// 페이징
	public List<Web> listCriteria(SearchCriteria searchCriteria) throws Exception;
	
	//전체 데이터 갯수
	int countWebs(SearchCriteria searchcriteria) throws Exception; 
}