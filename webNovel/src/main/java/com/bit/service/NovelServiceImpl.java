package com.bit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.commons.paging.Criteria;
import com.bit.commons.paging.N_SearchCriteria;
import com.bit.commons.paging.A_SearchCriteria;
import com.bit.domain.NovelVO;
import com.bit.persistence.NovelDAO;
import com.bit.persistence.NovelDAO;

@Service
public class NovelServiceImpl implements NovelService {

	
	@Inject
	private NovelDAO dao;
	
	@Override
	public void creat(NovelVO author) throws Exception {
		dao.create(author);
	}

	@Override
	public NovelVO read(Integer a_id) throws Exception {
		return dao.read(a_id);
	}

	@Override
	public void update(NovelVO author) throws Exception {
		dao.update(author);
	}

	@Override
	public void delete(Integer a_id) throws Exception {
		dao.delete(a_id);
	}

	@Override
	public List<NovelVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<NovelVO> listCriteria(N_SearchCriteria searchCriteria) throws Exception {
		return dao.listCriteria(searchCriteria);
	}

	@Override
	public int countNovels(N_SearchCriteria searchCriteria) throws Exception {
		return dao.countNovels(searchCriteria);
	}



}
