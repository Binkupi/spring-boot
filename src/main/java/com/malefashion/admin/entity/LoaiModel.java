package com.malefashion.admin.entity;

public class LoaiModel {
	public int getMaloai() {
		return maloai;
	}
	public void setMaloai(int maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	private int maloai ;
	private String  tenloai ;
	private int soluong;
	public LoaiModel(int maloai, String tenloai, int soluong) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
		this.soluong = soluong;
	}
	public LoaiModel(int maloai, String tenloai) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
		
	}
	public LoaiModel() {
	}
}