  package com.hy.it.shopping.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

//数据库连接池??
public class ConnectionPool {

	//以后使用该容器承装连接对??池子)
	private static ArrayList<Connection> pool = new ArrayList<Connection>();

	//设置连接池的????/小连接数
	private static int max = 20;
	private static int min = 5;
	
	//(1):????有连接池初始化的方法(把链接对象充满的方法
	public static void init(){
		try {
			//注册驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//创建max个连接，放入到pool??
			for (int i = 0; i < max; i++) {
				//创建max个连接，并放入pool
				Connection conn = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/shopping_db", "root", "root");
				pool.add(conn);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//(2):使用完毕连接池，则需要对其中的资源销??????常见于关闭了Tomcat
	public static void destroy () {
		try {
			for (Connection conn : pool) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// (3):如果java环境要使用连接对象，则对外提供链??
	public static Connection getConnection(){
		
		try {
			//保障措施:如果用户来取得连接的时??，发现连接数低于????值，则应该让其处于盈满状??
			if (pool.size() <= min) {
				//把链接创建满为止
				while (pool.size() < max) {
					Connection conn = DriverManager.getConnection(
							"jdbc:mysql://localhost:3306/shopping_db", "root", "root");
					pool.add(conn);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		//对外提供链接
		Connection conn = pool.get(pool.size() - 1);
		//把该对象从pool中删除，保证不会出现共享冲突
		pool.remove(pool.size() - 1);
		return conn;
	}
	
	//(4):如果java环境使用完毕连接对象，则????返还给dbcp
	public static void returnConnection(Connection conn){
		try {
			//判断pool中状??
			if (pool.size() == max) {
				conn.close();
			} else {
				pool.add(conn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public ArrayList select(String sql)throws Exception{
		Connection conn=null;
	   	 Statement stmt=null;
	   	 ResultSet rs=null;
	   	 ArrayList result=new ArrayList();
	   	 try{
	   		 conn=getConnection();
	   		 stmt=conn.createStatement();
	   		 rs=stmt.executeQuery(sql);
	   		 ResultSetMetaData rsmd=(ResultSetMetaData) rs.getMetaData();
	   		 int cols=rsmd.getColumnCount();
	   		 int i=0;
	   		 while(rs.next()){
	   			ArrayList row=new ArrayList();
	   			for(int ii=1;ii<=cols;ii++){
	   				String temp=rs.getString(ii);
	   				if(temp==null)
	   					row.add("");
	   				else
	   					row.add(temp);
	   				
	   			}
	   			 result.add(row);
	   		 }
	   		 
	   	 }catch(SQLException e){
	   		 throw new SQLException("select data exception :"+e.getMessage());
	   	 }finally{
	   		 try{
	   			 if(rs!=null)
	   				 rs.close();
	   		 }catch(Exception e){
	   			 throw new SQLException("rs  close  exception :"+e.getMessage());
	   		 }
	   		 try{
	   			 if(stmt!=null)
	   				 stmt.close();
	   		 }catch(Exception e){
	   			 throw new SQLException("rs  close  exception :"+e.getMessage());
	   		 }
	   		 
	   	 }
	   	 return result;
	    }
	public int update(String sql)throws Exception{
    	
   	 PreparedStatement ps=null;
   	 int rs=0;
   	Connection conn=null;
   	 try{
   		 conn=getConnection();
   		 ps=conn.prepareStatement(sql);
   		 rs=ps.executeUpdate();
   	 }catch(SQLException e){
   		 throw new SQLException("update data exception :"+e.getMessage());
   	 }finally{
   		 try{
   			 if(ps!=null)
   				 ps.close();
   		 }catch(Exception e){
   			 throw new SQLException("ps  close  exception :"+e.getMessage());
   		 }
   		
   		 
   		 return rs;
   	 }
    }
	
		public Connection getConn() throws SQLException{
			String driver = "com.mysql.jdbc.Driver";

			String url = "jdbc:mysql://localhost:3306/shopping_db";
			 String user = "root";
			 String password = "root";
			Connection conn = null;
			try {
				Class.forName(driver).newInstance();
				conn = DriverManager.getConnection(url,user,password);
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return conn;
		}

	}
