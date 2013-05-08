package com.hy.it.shopping.entity;

import java.util.Date;

public class Order {
	
	String name;
	String ProvinceID;
	String CityID;
	String AreaID;
	String Address;
	String Zip;
	String Tel;
	String Mobile;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProvinceID() {
		return ProvinceID;
	}
	public void setProvinceID(String provinceID) {
		ProvinceID = provinceID;
	}
	public String getCityID() {
		return CityID;
	}
	public void setCityID(String cityID) {
		CityID = cityID;
	}
	public String getAreaID() {
		return AreaID;
	}
	public void setAreaID(String areaID) {
		AreaID = areaID;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getZip() {
		return Zip;
	}
	public void setZip(String zip) {
		Zip = zip;
	}
	public String getTel() {
		return Tel;
	}
	public void setTel(String tel) {
		Tel = tel;
	}
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	
	
}
