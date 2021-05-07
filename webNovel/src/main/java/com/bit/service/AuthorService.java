package com.bit.service;

import java.util.List;

import com.bit.commons.paging.Criteria;
import com.bit.commons.paging.A_SearchCriteria;
import com.bit.domain.AuthorVO;

public interface AuthorService {
	
	//등록
	public void creat(AuthorVO author) throws Exception;
	
	//열람
	public AuthorVO read(Integer a_id) throws Exception;
	
	//수정
	public void update(AuthorVO author) throws Exception;

	//삭제
	public void delete(Integer a_id) throws Exception;
	
	//목록 열람
	public List<AuthorVO> listAll() throws Exception;
	
	//페이징
	public List<AuthorVO> listCriteria(A_SearchCriteria searchCriteria) throws Exception;
	
	//전체 작가 갯수
	int countAuthors(A_SearchCriteria searchCriteria) throws Exception;

}
