package com.hy.it.shopping.entity;

import java.util.ArrayList;

public class Visitior {
	/**
	 * 游客类
	 * 有浏览商品的方法
	 * 购物车方法
	 */
   ShopCart cart;//购物车接口
	private ArrayList<Goods> cartList;//购物篮

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

	public void regist(String name,String password){
		/**
		 * 游客独有的注册功能
		 * 若是注册，则实例化出一个Member对象，将数据转移
		 * 到Member对象中
		 */
	}
	
	
}
