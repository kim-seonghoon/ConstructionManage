package com.green.biz.dto;

public class ManagerVO {
	private String manager_id;
	private String pwd;
	private String sido;
	private String gugun;
	private String adress;
	private String name;
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
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
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
				+ ", adress=" + adress + ", name=" + name + ", position=" + position + "]";
	}
}
