package com.bit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bit.commons.paging.Criteria;
import com.bit.domain.AuthorVO;

@Repository

public class AuthorDAOImpl implements AuthorDAO {

	@Inject
	private SqlSession session;
	private static final String namespace = "com.bit.domain.author";

	@Override
	public void create(AuthorVO author) throws Exception {
		session.insert(namespace + ".create", author);

	}

	@Override
	public AuthorVO read(Integer a_id) throws Exception {
		return session.selectOne(namespace + ".read", a_id);

	}

	@Override
	public void update(AuthorVO author) throws Exception {
		session.update(namespace + ".update", author);

	}

	@Override
	public void delete(Integer a_id) throws Exception {
		session.delete(namespace + ".delete", a_id);

	}

	@Override
	public List<AuthorVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");

	}



	@Override
	public List<AuthorVO> listCriteria(Criteria criteria) throws Exception {
		return session.selectList(namespace + ".listCriteria", criteria);
	}

	@Override
	public int countAuthors(Criteria criteria) throws Exception {
		return session.selectOne(namespace + ".countAuthors");
	}

}
