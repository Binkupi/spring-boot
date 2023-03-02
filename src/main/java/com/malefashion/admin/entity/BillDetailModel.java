package com.malefashion.admin.entity;

public class BillDetailModel {
	private int id_bill;
	private int id_watch;
	private int amount;
	private int total_price;
	private String pttt;
	
	public String getPttt() {
		return pttt;
	}

	public void setPttt(String pttt) {
		this.pttt = pttt;
	}

	public BillDetailModel() {
		super();
	}
	
	public BillDetailModel(int id_bill,int id_watch,int amount,int total_price,String pttt) {
		super();
		this.id_bill=id_bill;
		this.id_watch=id_watch;
		this.amount=amount;
		this.total_price=total_price;
		this.pttt=pttt;
	}
	
	public int getId_bill() {
		return id_bill;
	}
	public void setId_bill(int id_bill) {
		this.id_bill = id_bill;
	}
	public int getId_watch() {
		return id_watch;
	}
	public void setId_watch(int id_watch) {
		this.id_watch = id_watch;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
}
