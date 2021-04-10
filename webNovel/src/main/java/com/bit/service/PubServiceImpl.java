package com.bit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.domain.PublisherVO;
import com.bit.persistence.PubDAO;

@Service
public class PubServiceImpl implements PubService {

	
	@Inject
	private PubDAO dao;
	
	@Override
	public void creat(PublisherVO pub) throws Exception {
		dao.create(pub);
	}

	@Override
	public PublisherVO read(Integer p_id) throws Exception {
		return dao.read(p_id);
	}

	@Override
	public void update(PublisherVO pub) throws Exception {
		dao.update(pub);
	}

	@Override
	public void delete(Integer p_id) throws Exception {
		dao.delete(p_id);
	}

	@Override
	public List<PublisherVO> listAll() throws Exception {
		return dao.listAll();
	}



}
