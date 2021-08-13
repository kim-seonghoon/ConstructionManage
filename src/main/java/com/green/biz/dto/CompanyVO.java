package com.green.biz.dto;

public class CompanyVO {
	private String cp_id;
	private String pwd;
	private String admin_name;
	private String admin_phone;
	private String cp_name;
	private String cp_num;
	private int cp_phone;
	private int fax_num;
	private String cp_address;
	private String cp_email;
	
	public String getCp_email() {
		return cp_email;
	}
	public void setCp_email(String cp_email) {
		this.cp_email = cp_email;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_phone() {
		return admin_phone;
	}
	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}
	public String getCp_num() {
		return cp_num;
	}
	public void setCp_num(String cp_num) {
		this.cp_num = cp_num;
	}
	public int getFax_num() {
		return fax_num;
	}
	public void setFax_num(int fax_num) {
		this.fax_num = fax_num;
	}
	public String getCp_address() {
		return cp_address;
	}
	public void setCp_address(String cp_address) {
		this.cp_address = cp_address;
	}
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
		return "CompanyVO [cp_id=" + cp_id + ", pwd=" + pwd + ", admin_name=" + admin_name + ", admin_phone="
				+ admin_phone + ", cp_name=" + cp_name + ", cp_num=" + cp_num + ", cp_phone=" + cp_phone + ", fax_num="
				+ fax_num + ", cp_address=" + cp_address + "]";
	}
}
