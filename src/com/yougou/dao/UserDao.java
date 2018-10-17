package com.yougou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.yougou.bean.Image;
import com.yougou.bean.Type;
import com.yougou.bean.User;
import com.yougou.dbutil.DButil;


/**
 * 本dao层主要用于登陆注册的方法书写，还有first.jsp页面的文字读取和图片读取
 * 
 * 
 * */
public class UserDao {
	//登陆验证
	public static boolean login(String id,String password) {
		boolean flag=false;
		Connection con=DButil.getConnection();
		PreparedStatement pre=null;
		ResultSet rs=null;
		String sql="select * from user where id='"+id+"' AND password='"+password+"'";
		List<User>userlist=new ArrayList<>();
		User user=new User();
		try {
			pre=con.prepareStatement(sql);
			rs=pre.executeQuery();
			while (rs.next()) {
				
				
				user.setPassword(rs.getString("password"));
			
				user.setId(user.getId());
				
				userlist.add(user);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		if (userlist!=null&&userlist.size()!=0) {
			flag=true;
		}else {
			flag=false;
		}
		System.out.println(flag);
		return flag;
		
	}
	//登陆验证
	public static boolean Query (String id){
		boolean flag=false;
		Connection con;
		Statement st;
		ResultSet rs;
		String sql="select id from user where id='"+id+"'";
		User user=new User();
		List<User> userlist=new ArrayList<>();
		con=DButil.getConnection();
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while (rs.next()) {
				user.setId(rs.getString("id"));
				userlist.add(user);
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		if (userlist!=null&&userlist.size()!=0) {
			flag=true;
		}else {
			flag=false;
		}
		return flag;
	}
	
	
	
	
	//注册用
	public static void Add(User user) {
		Connection con;
		Statement st;
		ResultSet rs;
		String sql="insert into user(id,password,registertime)values('"+user.getId()+"','"+user.getPassword()+"','"+user.getRegistertime()+"')";
		con=DButil.getConnection();
		try {
			st=con.createStatement();
			st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//导航栏查询
	public static List<Type> querytype (){
		
		Connection con;
		PreparedStatement st;
		
		String sql="select name from type";
		List<Type> typelist=new ArrayList<>();
		con=DButil.getConnection();
		try {
			st=con.prepareStatement(sql);
			ResultSet rs1=st.executeQuery();
			while(rs1.next()) {
				Type type=new Type();
				type.setName(rs1.getString("name"));
				System.out.println(type.getName());
				typelist.add(type);
				System.out.println(typelist.size());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}             
		return  typelist;
	}
		
		
		
		//图片查询
		public static List<Image> queryimage (){
			
			Connection con;
			PreparedStatement st;
			
			String sql="select url from image";
			List<Image> imagelist=new ArrayList<>();
			con=DButil.getConnection();
			try {
				st=con.prepareStatement(sql);
				ResultSet rs1=st.executeQuery();
				while(rs1.next()) {
					Image image=new Image();
					image.setUrl(rs1.getString("url"));
					System.out.println(image.getUrl());
					imagelist.add(image);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}             
			return imagelist;
		}
			
	public static void main(String[] args) {
		queryimage();
		querytype();
	}		
}
