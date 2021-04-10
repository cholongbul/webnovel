package com.bit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bit.domain.WebplatformVO;

@Repository
public class WebDAOImpl implements WebDAO {

	@Inject
	private SqlSession session;
	private static final String namespace = "com.bit.domain.web";

	@Override
	public void create(WebplatformVO web) throws Exception {
		session.insert(namespace + ".create", web);

	}

	@Override
	public WebplatformVO read(Integer w_id) throws Exception {
		return session.selectOne(namespace + ".read", w_id);

	}

	@Override
	public void update(WebplatformVO web) throws Exception {
		session.update(namespace + ".update", web);

	}

	@Override
	public void delete(Integer w_id) throws Exception {
		session.delete(namespace + ".delete", w_id);

	}

	@Override
	public List<WebplatformVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");

	}

}
