package com.bit.persistence;

import com.bit.domain.Novel_authorVO;


public interface Novel_authorDAO {
	// �۰� ��ǰ ���� ���
	public void create(Novel_authorVO naVO) throws Exception;
	

	// ��ǰ ���� ����
	public Novel_authorVO nread(Integer n_id) throws Exception;
	
	// �۰� ���� ����
	public Novel_authorVO aread(Integer a_id) throws Exception;

}