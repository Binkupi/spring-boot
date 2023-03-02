package com.malefashion.admin.entity;
public class ClientModel {
	private int id;
	public ClientModel(int id, String name, String address, String phone, String email, String description,
			String giohang) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.description = description;
		this.email = email;
		this.giohang = giohang;
	}

	private String name;
	private String address;
	private String phone;
	private String description;
	private String email;
	private String giohang;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	
	

	public ClientModel(int id, String name, String address, String phone,String description,String giohang) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.giohang = giohang;
		this.description = description;
	}
	public ClientModel() {
		super();
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGiohang() {
		return giohang;
	}

	public void setGiohang(String giohang) {
		this.giohang = giohang;
	}
	
	
	
}
