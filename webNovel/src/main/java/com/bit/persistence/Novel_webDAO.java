package com.bit.persistence;


import com.bit.domain.Novel_webVO;


public interface Novel_webDAO {
	// ��ǰ ����ó ����
	public void create(Novel_webVO nwVO) throws Exception;
	

	// �� ���� ����
	public Novel_webVO wread(Integer w_id) throws Exception;
	
	// ��ǰ ���� ����
	public Novel_webVO nread(Integer n_id) throws Exception;
}