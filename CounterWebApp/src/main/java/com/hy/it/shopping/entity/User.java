package com.hy.it.shopping.entity;


import java.util.ArrayList;


public class User {

	/**
	 * 管理员类
	 */
	ConnectionPool connpoll=new ConnectionPool();
	private String name; //用户名
	private String password; //密码

	/**
	 * 添加set/get方法
	 */
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
	

	public boolean checkUser(String name,String pass){
		String sql="select * from t_member  where member_username='"+name+"' and member_password='"+pass+"'";		
        ArrayList list2;
		try {
			connpoll.init();
			list2 = connpoll.select(sql);
			if(list2!=null&&list2.size()>=1)
				return true;
		       
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
						
		    return false;
		/**
		 * 以用户名和密码为参数，
		 * 实现登录功能，成功为true，失败false
		 * 引用表为管理员表
		 */
	}

	public void addUser(String name,String Email,String RexPassWord){	
		String sql="insert into t_member (member_username,member_email,member_password) values ('"+name+"','"+Email+"','"+RexPassWord+"')";
		try {
			connpoll.update(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void addGoods(String goodsInfo){
		/**
		 * 向商品表中添加商品信息
		 * 参数为商品信息，有关商品信息具体内容
		 * 需做相关模块的同学给出具体参数
		 */
	}
	
	public void removeGoods(String goodsInfo){
		/**
		 * 把商品信息从商品表中移除
		 * 参数为商品信息，有关商品信息具体内容
		 * 需做相关模块的同学给出具体参数
		 */
	}
	
	public void setState(String stateChange){
		/**
		 * 对会员表中的会员状态进行设置
		 * 参数描述为状态改变
		 */
	}
	
	public void addAdv(String advInfo){
		/**
		 * 对广告表进行添加处理
		 * 参数描述有模块相关同学给出
		 */
	}
	public void removeAdv(String advInfo){
		/**
		 * 对广告表进行信息移除处理
		 * 参数描述由模块相关同学给出
		 */
	}
	public void doDelete(String orderInfo){
		/**
		 * 对过时的订单信息进行删除
		 * 参数由模块相关同学给出
		 */
	}
	
	public void doLastChange(String changeInfo){
		/**
		 * 最新动态管理
		 * 参数由相关模块同学给出
		 */
	}

}
