package com.bit.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.bit.domain.Novel_authorVO;

public class Novel_authorDAOImpl implements Novel_authorDAO {

	@Inject
	private SqlSession session;
	private static final String namespace = "com.bit.domain.novel_author";

	@Override
	public void create(Novel_authorVO naVO) throws Exception {
		session.insert(namespace + ".create", naVO);

	}

	@Override
	public Novel_authorVO nread(Integer n_id) throws Exception {
		return session.selectOne(namespace + ".nread", n_id);

	}

	@Override
	public Novel_authorVO aread(Integer a_id) throws Exception {
		return session.selectOne(namespace + ".aread", a_id);

	}

}
