package com.bit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.domain.WebplatformVO;
import com.bit.persistence.WebDAO;

@Service
public class WebServiceImpl implements WebService {

	
	@Inject
	private WebDAO dao;
	
	@Override
	public void creat(WebplatformVO web) throws Exception {
		dao.create(web);
	}

	@Override
	public WebplatformVO read(Integer w_id) throws Exception {
		return dao.read(w_id);
	}

	@Override
	public void update(WebplatformVO web) throws Exception {
		dao.update(web);
	}

	@Override
	public void delete(Integer w_id) throws Exception {
		dao.delete(w_id);
	}

	@Override
	public List<WebplatformVO> listAll() throws Exception {
		return dao.listAll();
	}



}
