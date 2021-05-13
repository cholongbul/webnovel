package com.bit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bit.commons.paging.SearchCriteria;
import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.domain.PublisherVO;


@Repository
public class PubDAOImpl implements PubDAO {

	@Inject
	private SqlSession session;
	private static final String namespace = "com.bit.domain.pub";

	@Override
	public void create(PublisherVO pub) throws Exception {
		session.insert(namespace + ".create", pub);

	}

	@Override
	public PublisherVO read(Integer p_id) throws Exception {
		return session.selectOne(namespace + ".read", p_id);

	}

	@Override
	public void update(PublisherVO pub) throws Exception {
		session.update(namespace + ".update", pub);

	}

	@Override
	public void delete(Integer p_id) throws Exception {
		session.delete(namespace + ".delete", p_id);

	}

	@Override
	public List<PublisherVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");

	}
	
	@Override
	public List<PublisherVO> listCriteria(SearchCriteria searchCriteria) throws Exception {
		return session.selectList(namespace + ".listCriteria", searchCriteria);
	}

	@Override
	public int countPubs(SearchCriteria searchCriteria) throws Exception {
		return session.selectOne(namespace + ".countPubs");
	}

}
