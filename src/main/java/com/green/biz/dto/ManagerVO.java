package com.green.biz.dto;

public class ManagerVO {
	private String manager_id;
	private String pwd;
	private String sido;  
	private String gugun;
	private String address;
	private String name;
	private String dept;
	private String dept_tel;
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
	private String position;
	
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String adress) {
		this.address = adress;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	@Override
	public String toString() {
		return "ManagerVO [manager_id=" + manager_id + ", pwd=" + pwd + ", sido=" + sido + ", gugun=" + gugun
				+ ", address=" + address + ", name=" + name + ", dept=" + dept + ", dept_tel=" + dept_tel
				+ ", position=" + position + "]";
	}

}
