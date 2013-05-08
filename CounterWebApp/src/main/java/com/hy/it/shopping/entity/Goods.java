package com.hy.it.shopping.entity;

import java.io.Serializable;

public class Goods implements Serializable {

	private static final long serialVersionUID = 1L;
	private int goodsID;
	private int goods_sum;
	private float goods_price;
	private String goods_name;
	private String goodsnl_price;
	private String goodsmr_price;
	private String smallAddr;
   
   
public int getGoodsID() {
	return goodsID;
}

public void setGoodsID(int goodsID) {
	this.goodsID = goodsID;
}

public int getGoods_sum() {
	return goods_sum;
}

public void setGoods_sum(int goodsSum) {
	goods_sum = goodsSum;
}

public float getGoods_price() {
	return goods_price;
}

public void setGoods_price(float goodsPrice) {
	goods_price = goodsPrice;
}


public String getGoods_name() {
	return goods_name;
}

public void setGoods_name(String goodsName) {
	goods_name = goodsName;
}

public String getGoodsnl_price() {
	return goodsnl_price;
}

public void setGoodsnl_price(String goodsnlPrice) {
	goodsnl_price = goodsnlPrice;
}

public String getGoodsmr_price() {
	return goodsmr_price;
}

public void setGoodsmr_price(String goodsmrPrice) {
	goodsmr_price = goodsmrPrice;
}

public String getSmallAddr() {
	return smallAddr;
}

public void setSmallAddr(String smallAddr) {
	this.smallAddr = smallAddr;
}


public Goods(int goodsID, int goodsSum, float goodsPrice, String goodsName,
		String goodsnlPrice, String goodsmrPrice, String smallAddr) {
	super();
	this.goodsID = goodsID;
	goods_sum = goodsSum;
	goods_price = goodsPrice;
	goods_name = goodsName;
	goodsnl_price = goodsnlPrice;
	goodsmr_price = goodsmrPrice;
	this.smallAddr = smallAddr;
}

public Goods() {
	super();
}
   
}
