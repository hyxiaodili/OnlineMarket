package com.hy.it.shopping.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Cart implements ShopCart {

	//增加商品
	public void addGoods(int goodsID, ArrayList<Goods> cartList) {
		Goods gs=new Goods();
		gs.setGoodsID(goodsID);
		cartList.add(gs);
		
	}

	//展示商品
	public ArrayList<Goods> displayGoods(ArrayList<Goods> cartList) {
		ArrayList list = new ArrayList();
		try {
			//1. 注册驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2. 取得连接
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_db", "root", "root");
			
			//3. 创建Statement
			Statement stmt = conn.createStatement();
			
			//4. 执行SQL
			ResultSet rs = stmt.executeQuery("select cart_id, good_num, good_price from table_dept order by cart_id");
			
			//循环取值， 携带数据
			while (rs.next()) {
				int cart_id = rs.getInt(1);
				int good_num = rs.getInt(2);
				float good_price = rs.getFloat(3);
				
				Goods go = new Goods();
				list.add(go);
				
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	//删除商品
	public void dropGoods(int goodsID, ArrayList<Goods> cartList) {
		for(Goods goods:cartList){
			if(goods.getGoodsID()==goodsID){
				cartList.remove(goods);
				break;
			}
			
		}
		
	}
	public static void main(String[] args){

	}
}
