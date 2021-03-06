package com.green.biz.dto;
 
public class UserVO {
	private String user_id;
	private String pwd;
	private String name;
	private String sido;
	private String gugun;
	private String dong;
	private String zip_num;
	private String address;
	private String email;
	private String birth_date;
	private String phone;
	private String dropyn;

	public String getDropyn() {
		return dropyn;
	}
	public void setDropyn(String dropyn) {
		this.dropyn = dropyn;
	}
	public String getZip_num() {
		return zip_num;
	}
	public void setZip_num(String zip_num) {
		this.zip_num = zip_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth_date() {
		return birth_date;
	}
	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", pwd=" + pwd + ", name=" + name + ", sido=" + sido + ", gugun=" + gugun
				+ ", dong=" + dong + ", zip_num=" + zip_num + ", address=" + address + ", email=" + email
				+ ", birth_date=" + birth_date + ", phone=" + phone + ", dropyn=" + dropyn + "]";
	}
}
