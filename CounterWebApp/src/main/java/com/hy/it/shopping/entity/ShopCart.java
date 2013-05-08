package com.hy.it.shopping.entity;

import java.util.ArrayList;

public interface ShopCart {
	/**
	 * 购物车接口
	 * 声明购物车的所有方法
	 */
 public void addGoods(int goodsID, ArrayList<Goods> cartList);//往购物车中添加货物

	public ArrayList<Goods> displayGoods(ArrayList<Goods> cartList);//展示购物车中所有商品

	public void dropGoods(int goodsID, ArrayList<Goods> cartList);//清除购物车中不满意的商品
}
