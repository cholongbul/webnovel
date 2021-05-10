package com.bit.persistence;

import java.util.List;

import com.bit.commons.paging.N_SearchCriteria;
import com.bit.domain.Novel_allVO;


public interface NovelDAO {
	// ���
	public void create(Novel_allVO novel) throws Exception;
	

	// ��ǰ ����
	public Novel_allVO read(Integer n_id) throws Exception;

	// ��ǰ ����
	public void update(Novel_allVO novel) throws Exception;

	// ��ǰ ����
	public void delete(Integer n_id) throws Exception;

	public List<Novel_allVO> listAll() throws Exception;

	
	// ����¡
	public List<Novel_allVO> listCriteria(N_SearchCriteria searchCriteria) throws Exception;
	
	//��ü ������ ����
	int countNovels(N_SearchCriteria searchcriteria) throws Exception; 

}