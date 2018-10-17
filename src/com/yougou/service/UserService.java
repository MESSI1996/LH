package com.yougou.service;
import java.util.List;

import com.yougou.bean.Image;
import com.yougou.bean.Type;
import com.yougou.bean.User;
import com.yougou.dao.UserDao;

public class UserService {
	public static boolean login(String id,String password) {
		return  UserDao.login(id, password);
	}
	
	public static boolean Query(String id){
		return UserDao.Query(id);
	}

	public static void addUser(User user) {
		UserDao.Add(user);
	}
	
	public static List<Type> querytype() {
	   return UserDao.querytype();
	}
	  
	public static List<Image> queryimage(){
		return UserDao.queryimage();
	}
 }
