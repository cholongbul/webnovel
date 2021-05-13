package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.Novel_allVO;


public interface NovelDAO {
	// 등록
	public void create(Novel_allVO novel) throws Exception;
	

	// 작품 열람
	public Novel_allVO read(Integer n_id) throws Exception;

	// 작품 수정
	public void update(Novel_allVO novel) throws Exception;

	// 작품 삭제
	public void delete(Integer n_id) throws Exception;

	public List<Novel_allVO> listAll() throws Exception;

	
	// 페이징
	public List<Novel_allVO> listCriteria(SearchCriteria searchCriteria) throws Exception;
	
	//전체 데이터 갯수
	int countNovels(SearchCriteria searchcriteria) throws Exception; 

}