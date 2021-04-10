package com.bit.persistence;

import java.util.List;

import com.bit.domain.WebplatformVO;



public interface WebDAO {
	// 등록
	public void create(WebplatformVO web) throws Exception;
	

	// 열람
	public WebplatformVO read(Integer w_id) throws Exception;

	// 수정
	public void update(WebplatformVO web) throws Exception;

	// 삭제
	public void delete(Integer w_id) throws Exception;

	// 목록
	public List<WebplatformVO> listAll() throws Exception;
}