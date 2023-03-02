package com.malefashion.admin.entity;

public class SearchModel{
	private String keyword;
	
	public SearchModel() {
		 
	}

	public SearchModel(String keyword) {
		super();
		this.keyword = keyword;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
}