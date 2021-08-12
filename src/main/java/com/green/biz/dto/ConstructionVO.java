package com.green.biz.dto;

import java.sql.Timestamp;

public class ConstructionVO {
	private int con_seq;
	private String con_name;
	private String sido;
	private String gugun;
	private String dong;
	private String address;
	private String cp_name;
	private Timestamp start_date;
	private Timestamp end_date;
	private char con_num;
	private String content;
	
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
				+ ", dong=" + dong + ", address=" + address + ", cp_name=" + cp_name + ", start_date=" + start_date
				+ ", end_date=" + end_date + ", con_num=" + con_num + ", content=" + content + "]";
	}
}
