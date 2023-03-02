package com.malefashion.admin.entity;

public class AdminModel {
		private String name,address,phone,password,email,role,confirmPassword;
		private int active;
		private String confirmName;
		
		public String getConfirmName() {
			return confirmName;
		}

		public void setConfirmName(String confirmName) {
			this.confirmName = confirmName;
		}

		public String getConfirmPhone() {
			return confirmPhone;
		}

		public void setConfirmPhone(String confirmPhone) {
			this.confirmPhone = confirmPhone;
		}

		private String confirmPhone;
		
		public int getActive() {
			return active;
		}

		public void setActive(int active) {
			this.active = active;
		}

		public String getConfirmPassword() {
			return confirmPassword;
		}

		public void setConfirmPassword(String confirmPassword) {
			this.confirmPassword = confirmPassword;
		}

		public AdminModel(String name, String address, String phone, String password, String email, String role,
				String confirmPassword, String confirmName, String confirmPhone) {
			super();
			this.name = name;
			this.address = address;
			this.phone = phone;
			this.password = password;
			this.email = email;
			this.role = role;
			this.confirmPassword = confirmPassword;

			this.confirmName = confirmName;
			this.confirmPhone = confirmPhone;
		}

		public AdminModel() {
			super();
		}
		
		public AdminModel(String name,String address,String phone,String password,String email,String role,int active) {
			super();
			this.name=name;
			this.address=address;
			this.phone=phone;
			this.password=password;
			this.email=email;
			this.role=role;
			this.active=active;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}

		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}
	}
