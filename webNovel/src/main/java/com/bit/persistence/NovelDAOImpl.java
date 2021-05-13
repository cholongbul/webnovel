package com.bit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.Novel_allVO;

@Repository
public class NovelDAOImpl implements NovelDAO {
	
	@Inject
	private SqlSession session;
	private static final String namespace = "com.bit.domain.novel";

	@Override
	public void create(Novel_allVO novel) throws Exception {
		session.insert(namespace + ".create", novel);
		
	}
	
	@Override
	public Novel_allVO read(Integer n_id) throws Exception {
		return session.selectOne(namespace + ".read", n_id);
	}

	@Override
	public void update(Novel_allVO novel) throws Exception {
		session.update(namespace + ".update", novel);

	}

	@Override
	public void delete(Integer n_id) throws Exception {
		session.delete(namespace + ".delete", n_id);
	}

	@Override
	public List<Novel_allVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<Novel_allVO> listCriteria(SearchCriteria searchCriteria) throws Exception {
		return session.selectList(namespace + ".listCriteria", searchCriteria);

	}

	@Override
	public int countNovels(SearchCriteria searchcriteria) throws Exception {
		return session.selectOne(namespace + ".countNovels");

	}



}
