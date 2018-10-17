package com.yougou.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.yougou.bean.Goods;
import com.yougou.dbutil.JDBCUtil02;
/**
 * 本dao层主要用于搜索框的预测功能使用
 * 
 * 
 * */
public class SouDao {
public List<?> sou(String key) throws SQLException {
		System.out.println("进入dao");
		QueryRunner qr = new QueryRunner(JDBCUtil02.dataSource); 
		String str = "%"+key+"%";
		String sql="select name from goods where name like ?";
		List li = qr.query(sql, new BeanListHandler<Goods>(Goods.class) ,str);
		return li;
	}

}
