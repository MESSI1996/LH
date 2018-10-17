package com.yougou.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

public class DButil {
	private static String url="jdbc:mysql://localhost:3306/yougou";
	private static String Driverclass="com.mysql.jdbc.Driver";
	private static String user="root";
	private static String password="root";
	private static Connection con;
	private static ResultSet rs;
	private static PreparedStatement st;
	
	
	public static Connection getConnection() {
		try {
			Class.forName(Driverclass);
			con=DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("数据库连接成功");
		return con;
	}
	
	public static void close(Connection con,PreparedStatement st,ResultSet rs) {
		try {
			if (rs!=null) {
				rs.close();
			}
			if (st!=null) {
				st.close();
			}
			if (con!=null) {
				con.close();
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static void main(String[] args) {
		getConnection();
	}
}
