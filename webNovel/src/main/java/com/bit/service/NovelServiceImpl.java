package com.bit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.commons.paging.N_SearchCriteria;
import com.bit.domain.Novel_allVO;
import com.bit.persistence.NovelDAO;

@Service
public class NovelServiceImpl implements NovelService {

	
	@Inject
	private NovelDAO dao;
	
	@Override
	public void creat(Novel_allVO author) throws Exception {
		dao.create(author);
	}

	@Override
	public Novel_allVO read(Integer a_id) throws Exception {
		return dao.read(a_id);
	}

	@Override
	public void update(Novel_allVO author) throws Exception {
		dao.update(author);
	}

	@Override
	public void delete(Integer a_id) throws Exception {
		dao.delete(a_id);
	}

	@Override
	public List<Novel_allVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<Novel_allVO> listCriteria(N_SearchCriteria searchCriteria) throws Exception {
		return dao.listCriteria(searchCriteria);
	}

	@Override
	public int countNovels(N_SearchCriteria searchCriteria) throws Exception {
		return dao.countNovels(searchCriteria);
	}



}
