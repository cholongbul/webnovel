package com.bit.persistence;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.bit.domain.Novel_webVO;


public class Novel_webDAOImpl implements Novel_webDAO {
	
	@Inject
	private SqlSession session;
	private static final String namespace = "com.bit.domain.novel_web";


	@Override
	public void create(Novel_webVO nwVO) throws Exception {
		session.insert(namespace + ".create", nwVO);
		
	}

	@Override
	public Novel_webVO wread(Integer w_id) throws Exception {
		return session.selectOne(namespace + ".read", w_id);
	}

	@Override
	public Novel_webVO nread(Integer n_id) throws Exception {
		return session.selectOne(namespace + ".read", n_id);
	}

}
