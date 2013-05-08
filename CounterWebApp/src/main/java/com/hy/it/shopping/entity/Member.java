package com.hy.it.shopping.entity;

import java.util.ArrayList;



public class Member  {
	/**
	 * 会员类
	 * 新方法：结算
	 * 登录
	 */
  ShopCart cart;//购物车接口
	private ArrayList<Goods> cartList;//购物篮
	private String name; //用户名
	private String password; //密码

  /**
	 * 通过get/set方法来设定接口，取出接口中的方法
	 */
	public ShopCart getCart() {
		return cart;
	}

	public void setCart(ShopCart cart) {
		this.cart = cart;
	}

	public ArrayList<Goods> getCartList() {
		return cartList;
	}

	public void setCartList(ArrayList<Goods> cartList) {
		this.cartList = cartList;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
  
	public boolean login(String name,String password){
		/**
		 * 登录功能，若成功，
		 * 则将name,password赋予本类属性
		 * 不成功，则不赋予属性数据
		 */
		
		return false;
		
	}
	public float account(){
		/**
		 * 将cartList中的商品计价，返回结果
		 */
		return 0;
		
	}
}
