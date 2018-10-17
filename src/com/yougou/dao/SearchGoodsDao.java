package com.yougou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yougou.bean.Goods;
import com.yougou.bean.Image;
import com.yougou.dbutil.DButil;

public class SearchGoodsDao {
	public static Goods querygoods(String goodsname) {
		Connection con;
		PreparedStatement pre;
		ResultSet rs;
		String sql="select name from goods where name='"+goodsname+"'";
		con=DButil.getConnection();
		Goods goods=new Goods();
		try {
			pre=con.prepareStatement(sql);
			rs=pre.executeQuery();
			while(rs.next()) {
				goods.setName(rs.getString("name"));
				System.out.println(goods.getName());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return goods;
	}
	
	
	
	public static List<Image> querypicture (){
		
		Connection con;
		PreparedStatement st;
		
		String sql="select url from image";
		List<Image> picturelist=new ArrayList<>();
		con=DButil.getConnection();
		try {
			st=con.prepareStatement(sql);
			ResultSet rs1=st.executeQuery();
			while(rs1.next()) {
				Image image=new Image();
				image.setUrl(rs1.getString("url"));
				System.out.println(image.getUrl());
				picturelist.add(image);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}             
		return picturelist;
	}
		public static void main(String[] args) {
			querypicture();
		}
	}
