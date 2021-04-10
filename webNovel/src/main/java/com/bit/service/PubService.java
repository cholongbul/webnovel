package com.bit.service;

import java.util.List;

import com.bit.domain.PublisherVO;

public interface PubService {
	
	//등록
	public void creat(PublisherVO pub) throws Exception;
	
	//열람
	public PublisherVO read(Integer p_id) throws Exception;
	
	//수정
	public void update(PublisherVO pub) throws Exception;

	//삭제
	public void delete(Integer p_id) throws Exception;
	
	//목록 열람
	public List<PublisherVO> listAll() throws Exception;

}
