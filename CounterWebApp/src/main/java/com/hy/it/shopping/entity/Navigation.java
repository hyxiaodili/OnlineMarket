package com.hy.it.shopping.entity;

//  导航
public class Navigation {
	private String title; //总类型
	private String title1; //分类型
	private String title2; //搜索条件
    public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitle1() {
		return title1;
	}
	public void setTitle1(String title1) {
		this.title1 = title1;
	}
	public String getTitle2() {
		return title2;
	}
	public void setTitle2(String title2) {
		this.title2 = title2;
	}
	
	public Navigation(String title,String title1,String title2){
		
		
	}
}
