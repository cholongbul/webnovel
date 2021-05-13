package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.Criteria;
import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.AuthorVO;


public interface AuthorDAO {
	
	// 등록
	public void create(AuthorVO author) throws Exception;
	

	// 열람
	public AuthorVO read(Integer a_id) throws Exception;

	// 수정
	public void update(AuthorVO author) throws Exception;

	// 삭제
	public void delete(Integer a_id) throws Exception;

	// 목록
	public List<AuthorVO> listAll() throws Exception;
	
	// 페이징
	public List<AuthorVO> listCriteria(SearchCriteria searchCriteria) throws Exception;
	
	//전체 데이터 갯수
	int countAuthors(SearchCriteria searchcriteria) throws Exception; 

}