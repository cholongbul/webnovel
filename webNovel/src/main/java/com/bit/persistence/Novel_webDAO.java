package com.bit.persistence;


import com.bit.domain.Novel_webVO;


public interface Novel_webDAO {
	// 작품 연재처 연결
	public void create(Novel_webVO nwVO) throws Exception;
	

	// 웹 연결 열람
	public Novel_webVO wread(Integer w_id) throws Exception;
	
	// 작품 연결 열람
	public Novel_webVO nread(Integer n_id) throws Exception;
}