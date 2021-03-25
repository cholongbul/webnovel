package com.bit.persistence;

import com.bit.domain.Novel_authorVO;


public interface Novel_authorDAO {
	// 작가 작품 연결 등록
	public void create(Novel_authorVO naVO) throws Exception;
	

	// 작품 연결 열람
	public Novel_authorVO nread(Integer n_id) throws Exception;
	
	// 작가 연결 열람
	public Novel_authorVO aread(Integer a_id) throws Exception;

}