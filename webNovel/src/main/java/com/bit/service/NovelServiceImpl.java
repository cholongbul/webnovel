package com.bit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.Novel_allVO;
import com.bit.persistence.NovelDAO;

@Service
public class NovelServiceImpl implements NovelService {

	
	@Inject
	private NovelDAO dao;
	
	@Override
	public void creat(Novel_allVO novel) throws Exception {
		dao.create(novel);
	}

	@Override
	public Novel_allVO read(Integer n_id) throws Exception {
		return dao.read(n_id);
	}

	@Override
	public void update(Novel_allVO novel) throws Exception {
		dao.update(novel);
	}

	@Override
	public void delete(Integer n_id) throws Exception {
		dao.delete(n_id);
	}

	@Override
	public List<Novel_allVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<Novel_allVO> listCriteria(SearchCriteria searchCriteria) throws Exception {
		return dao.listCriteria(searchCriteria);
	}

	@Override
	public int countNovels(SearchCriteria searchCriteria) throws Exception {
		return dao.countNovels(searchCriteria);
	}



}
