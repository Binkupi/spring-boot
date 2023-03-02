package com.malefashion.admin.entity;

import java.sql.Date;

public class BillModel {
	private int id;
	private int id_customer;
	private Date date;
	private String description;
	
	public BillModel() {
		super();
	}
	
	public BillModel(int id, int id_customer,Date date, String description) {
		super();
		this.id=id;
		this.date=date;
		this.id_customer=id_customer;
		this.description=description;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_customer() {
		return id_customer;
	}
	public void setId_customer(int id_customer) {
		this.id_customer = id_customer;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
		
}
