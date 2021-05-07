package com.bit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bit.commons.paging.A_SearchCriteria;
import com.bit.commons.paging.W_SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.WebVO;

@Repository
public class WebDAOImpl implements WebDAO {

	@Inject
	private SqlSession session;
	private static final String namespace = "com.bit.domain.web";

	@Override
	public void create(WebVO web) throws Exception {
		session.insert(namespace + ".create", web);

	}

	@Override
	public WebVO read(Integer w_id) throws Exception {
		return session.selectOne(namespace + ".read", w_id);

	}

	@Override
	public void update(WebVO web) throws Exception {
		session.update(namespace + ".update", web);

	}

	@Override
	public void delete(Integer w_id) throws Exception {
		session.delete(namespace + ".delete", w_id);

	}

	@Override
	public List<WebVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");

	}
	
	@Override
	public List<WebVO> listCriteria(W_SearchCriteria searchCriteria) throws Exception {
		return session.selectList(namespace + ".listCriteria", searchCriteria);
	}

	@Override
	public int countWebs(W_SearchCriteria searchCriteria) throws Exception {
		return session.selectOne(namespace + ".countWebs");
	}


}
