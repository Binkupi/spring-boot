package com.malefashion.admin.entity;

import java.util.BitSet;
import java.util.jar.Attributes.Name;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class WatchModel {
	private int id;
	public WatchModel() {
		super();
	}
	private int gender ;
	private String name ;
	private int price ;
	private int sale ;
	private int checked; 
	private int soluong;
	private int maloai;
	private int size;
	private String color;
	private String chain;
	private String img;
	private String description;
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	// Upload files.\
	private MultipartFile[] fileData2;
    public WatchModel(int id, int gender, String name, int price, int sale, int checked, int soluong, int maloai,
			int size, String color, String chain, String img, String description, MultipartFile[] fileData2,
			CommonsMultipartFile fileData) {
		super();
		this.id = id;
		this.gender = gender;
		this.name = name;
		this.price = price;
		this.sale = sale;
		this.checked = checked;
		this.soluong = soluong;
		this.maloai = maloai;
		this.size = size;
		this.color = color;
		this.chain = chain;
		this.img = img;
		this.description = description;
		this.fileData2 = fileData2;
		this.fileData = fileData;
	}
	public MultipartFile[] getFileData2() {
		return fileData2;
	}
	public void setFileData2(MultipartFile[] fileData2) {
		this.fileData2 = fileData2;
	}
	private CommonsMultipartFile fileData;
	public CommonsMultipartFile getFileData() {
		return fileData;
	}
	public void setFileData(CommonsMultipartFile  fileData) {
		this.fileData = fileData;
	}
	public WatchModel(int id, String gender, String name, int price,int sale, String size, String color, String chain, String img,
			int checked,int soluong,String maloai,String description,CommonsMultipartFile fileData) {
		super();
		this.id = id;
		this.gender = Integer.valueOf(gender);
		this.name = name;
		this.price = price;
		this.size = Integer.valueOf(size);
		this.color = color;
		this.chain = chain;
		this.img = img;
		this.checked = checked;
		this.sale=sale;
		this.fileData = fileData;
		this.maloai = Integer.valueOf(maloai);
		this.soluong = soluong;
		this.description = description;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setGender(int gender) {
		this.gender=gender;
	}
	public int getGender() {
		return gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getChain() {
		return chain;
	}
	public void setChain(String chain) {
		this.chain = chain;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	} 
	public int getChecked() {
		return checked;
	}
	public void setChecked(int checked) {
		this.checked = checked;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getMaloai() {
		return maloai;
	}
	public void setMaloai(int maloai) {
		this.maloai = maloai;
	}

	
	
	
}
