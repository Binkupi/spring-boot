package com.malefashion.admin.entity;

public class products {
	private String query;
	private int id;
	private int sl;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSl() {
		return sl;
	}

	public void setSl(int sl) {
		this.sl = sl;
	}

	

	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}

	public products(String query) {
		super();
		this.query = query;
	}

	public products() {
		super();
	}
	
}
