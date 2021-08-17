package com.green.biz.dto;

import java.sql.Timestamp;

public class ComplaintsVO {
	private int com_seq; 
	private int con_seq;
	private String con_name;
	private String title; 
	private String name;
	private String content;
	private String answer;
	private Timestamp regdate;
	private Timestamp moddate;
	
	public int getCom_seq() {
		return com_seq;
	}
	public void setCom_seq(int com_seq) {
		this.com_seq = com_seq;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Timestamp getModdate() {
		return moddate;
	}
	public void setModdate(Timestamp moddate) {
		this.moddate = moddate;
	}
	@Override
	public String toString() {
		return "ComplaintsVO [com_seq=" + com_seq + ", con_seq=" + con_seq + ", con_name=" + con_name + ", title="
				+ title + ", name=" + name + ", content=" + content + ", answer=" + answer + ", regdate=" + regdate
				+ ", moddate=" + moddate + "]";
	}
}
