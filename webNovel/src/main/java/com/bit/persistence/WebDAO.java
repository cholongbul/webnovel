package com.bit.persistence;

import java.util.List;

import com.bit.domain.WebplatformVO;



public interface WebDAO {
	// ���
	public void create(WebplatformVO web) throws Exception;
	

	// ����
	public WebplatformVO read(Integer w_id) throws Exception;

	// ����
	public void update(WebplatformVO web) throws Exception;

	// ����
	public void delete(Integer w_id) throws Exception;

	// ���
	public List<WebplatformVO> listAll() throws Exception;
}