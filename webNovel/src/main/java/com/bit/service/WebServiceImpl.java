package com.bit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.Web;
import com.bit.persistence.WebDAO;

@Service
public class WebServiceImpl implements WebService {

	
	@Inject
	private WebDAO dao;
	
	@Override
	public void creat(Web web) throws Exception {
		dao.create(web);
	}

	@Override
	public Web read(Integer w_id) throws Exception {
		return dao.read(w_id);
	}

	@Override
	public void update(Web web) throws Exception {
		dao.update(web);
	}

	@Override
	public void delete(Integer w_id) throws Exception {
		dao.delete(w_id);
	}

	@Override
	public List<Web> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<Web> listCriteria(SearchCriteria searchCriteria) throws Exception {
		return dao.listCriteria(searchCriteria);
	}

	@Override
	public int countWebs(SearchCriteria searchCriteria) throws Exception {
		return dao.countWebs(searchCriteria);
	}


}
