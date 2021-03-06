package com.bit.commons.paging;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageCounter{
	
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private int displayPageNum = 10;
	private Criteria criteria;
	
	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
		
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	private void calcData() {
		
		endPage = (int) (Math.ceil(criteria.getPage() / (double) displayPageNum) * displayPageNum);
		
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int) (Math.ceil(totalCount / (double) criteria.getPerPageNum()));
		
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = (startPage == 1) ? false : true;
		
		next = (endPage * criteria.getPerPageNum() >= totalCount) ? false : true;
		
	}

	public int getStartPage() {
		return startPage;
	}



	public int getEndPage() {
		return endPage;
	}


	public boolean isPrev() {
		return prev;
	}


	public boolean isNext() {
		return next;
	}



	public int getDisplayPageNum() {
		return displayPageNum;
	}


	public int getTotalCount() {
		return totalCount;
	}

	public Criteria getCriteria() {
		return criteria;
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", criteria.getPerPageNum())
				.queryParam("gender", ((SearchCriteria) criteria).getGender())
				.queryParam("keyword", encoding(((SearchCriteria) criteria).getKeyword()))
				.build();
					
		
		return uriComponents.toUriString();
	}
	
	private String encoding(String keyword) {
		if(keyword == null || keyword.trim().length() == 0) {
			return "";
		}
		try {
			return URLEncoder.encode(keyword, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			return "";
		}
	}



}
