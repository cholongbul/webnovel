package com.bit.service;

import java.util.List;

import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.Novel_allVO;

public interface NovelService {

	// ���
	public void creat(Novel_allVO novel) throws Exception;

	// ����
	public Novel_allVO read(Integer n_id) throws Exception;

	// ����
	public void update(Novel_allVO novel) throws Exception;

	// ����
	public void delete(Integer n_id) throws Exception;

	// ��� ����
	public List<Novel_allVO> listAll() throws Exception;

	// ����¡
	public List<Novel_allVO> listCriteria(SearchCriteria searchCriteria) throws Exception;

	// ��ü �۰� ����
	int countNovels(SearchCriteria searchCriteria) throws Exception;

}
