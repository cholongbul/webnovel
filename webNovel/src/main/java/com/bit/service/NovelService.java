package com.bit.service;

import java.util.List;

import com.bit.commons.paging.N_SearchCriteria;
import com.bit.domain.Novel_allVO;

public interface NovelService {

	// 등록
	public void creat(Novel_allVO novel) throws Exception;

	// 열람
	public Novel_allVO read(Integer n_id) throws Exception;

	// 수정
	public void update(Novel_allVO novel) throws Exception;

	// 삭제
	public void delete(Integer n_id) throws Exception;

	// 목록 열람
	public List<Novel_allVO> listAll() throws Exception;

	// 페이징
	public List<Novel_allVO> listCriteria(N_SearchCriteria searchCriteria) throws Exception;

	// 전체 작가 갯수
	int countNovels(N_SearchCriteria searchCriteria) throws Exception;

}
