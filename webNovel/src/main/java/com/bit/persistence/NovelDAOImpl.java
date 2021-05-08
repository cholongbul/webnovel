package com.bit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.bit.commons.paging.N_SearchCriteria;
import com.bit.domain.NovelVO;


public class NovelDAOImpl implements NovelDAO {
	
	@Inject
	private SqlSession session;
	private static final String namespace = "com.bit.domain.novel";

	@Override
	public void create(NovelVO novel) throws Exception {
		session.insert(namespace + ".create", novel);
		
	}
	
	@Override
	public NovelVO read(Integer n_id) throws Exception {
		return session.selectOne(namespace + ".read", n_id);
	}

	@Override
	public void update(NovelVO novel) throws Exception {
		session.update(namespace + ".update", novel);

	}

	@Override
	public void delete(Integer n_id) throws Exception {
		session.delete(namespace + ".delete", n_id);
	}

	@Override
	public List<NovelVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<NovelVO> listCriteria(N_SearchCriteria searchCriteria) throws Exception {
		return session.selectList(namespace + ".listCriteria", searchCriteria);

	}

	@Override
	public int countNovels(N_SearchCriteria searchcriteria) throws Exception {
		return session.selectOne(namespace + ".countNovels");

	}



}
