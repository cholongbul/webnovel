package com.bit.service;

import java.util.List;

import com.bit.commons.paging.A_SearchCriteria;
import com.bit.commons.paging.W_SearchCriteria;
import com.bit.domain.WebVO;

public interface WebService {

	// 등록
	public void creat(WebVO web) throws Exception;

	// 열람
	public WebVO read(Integer w_id) throws Exception;

	// 수정
	public void update(WebVO web) throws Exception;

	// 삭제
	public void delete(Integer w_id) throws Exception;

	// 목록 열람
	public List<WebVO> listAll() throws Exception;

	// 페이징
	public List<WebVO> listCriteria(W_SearchCriteria searchCriteria) throws Exception;

	// 전체 작가 갯수
	int countWebs(W_SearchCriteria searchCriteria) throws Exception;

}
