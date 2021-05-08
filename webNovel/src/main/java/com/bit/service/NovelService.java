package com.bit.service;

import java.util.List;

import com.bit.commons.paging.Criteria;
import com.bit.commons.paging.N_SearchCriteria;
import com.bit.commons.paging.A_SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.NovelVO;

public interface NovelService {
	
	//등록
	public void creat(NovelVO novel) throws Exception;
	
	//열람
	public NovelVO read(Integer n_id) throws Exception;
	
	//수정
	public void update(NovelVO novel) throws Exception;

	//삭제
	public void delete(Integer n_id) throws Exception;
	
	//목록 열람
	public List<NovelVO> listAll() throws Exception;
	
	//페이징
	public List<NovelVO> listCriteria(N_SearchCriteria searchCriteria) throws Exception;
	
	//전체 작가 갯수
	int countNovels(N_SearchCriteria searchCriteria) throws Exception;

}
