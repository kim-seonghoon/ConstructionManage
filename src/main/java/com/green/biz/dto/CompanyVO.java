package com.green.biz.dto;

public class CompanyVO {
	private String cp_id;
	private String pwd;
	private String name;
	private String cp_name;
	private int cp_phone;
	
	public String getCp_id() {
		return cp_id;
	}
	public void setCp_id(String cp_id) {
		this.cp_id = cp_id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCp_name() {
		return cp_name;
	}
	public void setCp_name(String cp_name) {
		this.cp_name = cp_name;
	}
	public int getCp_phone() {
		return cp_phone;
	}
	public void setCp_phone(int cp_phone) {
		this.cp_phone = cp_phone;
	}
	@Override
	public String toString() {
		return "CompanyVO [cp_id=" + cp_id + ", pwd=" + pwd + ", name=" + name + ", cp_name=" + cp_name + ", cp_phone="
				+ cp_phone + "]";
	}
}
