package com.yougou.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yougou.bean.Image;
import com.yougou.bean.Type;
import com.yougou.service.UserService;

public class QueryType extends HttpServlet{

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//用于搜索first.jsp中的文字信息
		List<Type> typelist=UserService.querytype();
		req.setAttribute("typelist",typelist);
		//用于搜索first.jsp中的图片信息
		List<Image> imagelist=UserService.queryimage();
		req.setAttribute("imagelist",imagelist);
		req.getRequestDispatcher("pages/first.jsp").forward(req, resp);
		
		
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}

	
	public void destroy() {
		
	}

	
	public void init() throws ServletException {
		
	}
	
}
