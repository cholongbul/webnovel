package com.bit.persistence;

import java.util.List;

import com.bit.domain.NovelVO;


public interface NovelDAO {
	// ���
	public void create(NovelVO novel) throws Exception;
	

	// ��ǰ ����
	public NovelVO read(Integer n_id) throws Exception;

	// ��ǰ ����
	public void update(NovelVO novel) throws Exception;

	// ��ǰ ����
	public void delete(Integer n_id) throws Exception;

	public List<NovelVO> listAll() throws Exception;
}