package com.green.biz.dto;

import java.sql.Timestamp;

public class ConstructionVO {
	private int con_seq;
	private String con_name;
	private String sido;
	private String gugun;
	private String dong;
	private String zip_num;
	private String address;
	private String cp_name;
	private String cp_num;
	private String dept;
	private String dept_tel;
	private Timestamp start_date;
	private Timestamp end_date;
	private String con_size;
	private String con_state;
	private char con_num;
	private String content;
	
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getDept_tel() {
		return dept_tel;
	}
	public void setDept_tel(String dept_tel) {
		this.dept_tel = dept_tel;
	}
	public String getCp_num() {
		return cp_num;
	}
	public void setCp_num(String cp_num) {
		this.cp_num = cp_num;
	}
	public String getCon_size() {
		return con_size;
	}
	public void setCon_size(String con_size) {
		this.con_size = con_size;
	}
	public String getCon_state() {
		return con_state;
	}
	public void setCon_state(String con_state) {
		this.con_state = con_state;
	}	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCon_seq() {
		return con_seq;
	}
	public void setCon_seq(int con_seq) {
		this.con_seq = con_seq;
	}
	public String getCon_name() {
		return con_name;
	}
	public void setCon_name(String con_name) {
		this.con_name = con_name;
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
	public String getZip_num() {
		return zip_num;
	}
	public void setZip_num(String zip_num) {
		this.zip_num = zip_num;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCp_name() {
		return cp_name;
	}
	public void setCp_name(String cp_name) {
		this.cp_name = cp_name;
	}
	public Timestamp getStart_date() {
		return start_date;
	}
	public void setStart_date(Timestamp start_date) {
		this.start_date = start_date;
	}
	public Timestamp getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Timestamp end_date) {
		this.end_date = end_date;
	}
	public char getCon_num() {
		return con_num;
	}
	public void setCon_num(char con_num) {
		this.con_num = con_num;
	}
	@Override
	public String toString() {
		return "ConstructionVO [con_seq=" + con_seq + ", con_name=" + con_name + ", sido=" + sido + ", gugun=" + gugun
				+ ", dong=" + dong + ", zip_num=" + zip_num + ", address=" + address + ", cp_name=" + cp_name
				+ ", cp_num=" + cp_num + ", dept=" + dept + ", dept_tel=" + dept_tel + ", start_date=" + start_date
				+ ", end_date=" + end_date + ", con_size=" + con_size + ", con_state=" + con_state + ", con_num="
				+ con_num + ", content=" + content + "]";
	}
}
