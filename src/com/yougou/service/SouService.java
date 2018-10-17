package com.yougou.service;

import java.sql.SQLException;
import java.util.List;

import com.yougou.dao.SouDao;

public class SouService {
	public List sou(String key) throws SQLException {
		List li = new SouDao().sou(key);
		return li;
	}


}
