//连接数据库
package com.util;

import java.sql.*;

public class DBconn {
	/*
	static String url = "jdbc:mysql://localhost:3306/test"; 
	static String username = "root"; 
	static String password = ""; 
	*/
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String url = "jdbc:mysql://localhost:3306/test";
    static final String username = "root";
    static final String password = "root";
	static Connection  conn = null;
	static ResultSet rs = null;
	static PreparedStatement ps =null;
	public static void init(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			System.out.println("init [SQL驱动程序初始化失败！]");
			e.printStackTrace();
		}
	}
	public static int addUpdDel(String sql){
		int i = 0;
		try {
			PreparedStatement ps =  conn.prepareStatement(sql);
			i =  ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("sql数据库增删改异常");
			e.printStackTrace();
		}
		
		return i;
	}
	public static ResultSet selectSql(String sql){
		try {
			ps =  conn.prepareStatement(sql);
			rs =  ps.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("sql数据库查询异常");
			e.printStackTrace();
		}
		return rs;
	}
	public static void closeConn(){
		try {
			conn.close();
		} catch (SQLException e) {
			System.out.println("sql数据库关闭异常");
			e.printStackTrace();
		}
	}
}
