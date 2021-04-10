package com.bit.service;

import java.util.List;

import com.bit.domain.WebplatformVO;

public interface WebService {
	
	//등록
	public void creat(WebplatformVO web) throws Exception;
	
	//열람
	public WebplatformVO read(Integer w_id) throws Exception;
	
	//수정
	public void update(WebplatformVO web) throws Exception;

	//삭제
	public void delete(Integer w_id) throws Exception;
	
	//목록 열람
	public List<WebplatformVO> listAll() throws Exception;

}
