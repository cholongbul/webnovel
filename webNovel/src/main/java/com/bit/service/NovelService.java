package com.bit.service;

import java.util.List;

import com.bit.commons.paging.Criteria;
import com.bit.commons.paging.N_SearchCriteria;
import com.bit.commons.paging.A_SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.NovelVO;

public interface NovelService {
	
	//���
	public void creat(NovelVO novel) throws Exception;
	
	//����
	public NovelVO read(Integer n_id) throws Exception;
	
	//����
	public void update(NovelVO novel) throws Exception;

	//����
	public void delete(Integer n_id) throws Exception;
	
	//��� ����
	public List<NovelVO> listAll() throws Exception;
	
	//����¡
	public List<NovelVO> listCriteria(N_SearchCriteria searchCriteria) throws Exception;
	
	//��ü �۰� ����
	int countNovels(N_SearchCriteria searchCriteria) throws Exception;

}
