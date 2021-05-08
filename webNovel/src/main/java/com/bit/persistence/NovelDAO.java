package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.N_SearchCriteria;
import com.bit.domain.NovelVO;


public interface NovelDAO {
	// 등록
	public void create(NovelVO novel) throws Exception;
	

	// 작품 열람
	public NovelVO read(Integer n_id) throws Exception;

	// 작품 수정
	public void update(NovelVO novel) throws Exception;

	// 작품 삭제
	public void delete(Integer n_id) throws Exception;

	public List<NovelVO> listAll() throws Exception;

	
	// 페이징
	public List<NovelVO> listCriteria(N_SearchCriteria searchCriteria) throws Exception;
	
	//전체 데이터 갯수
	int countNovels(N_SearchCriteria searchcriteria) throws Exception; 

}