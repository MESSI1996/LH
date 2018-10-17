package com.yougou.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yougou.bean.Image;
import com.yougou.service.UserService;
@WebServlet("/Image")
public class QueryImage extends HttpServlet{

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=(String)getServletContext().getAttribute("goodsname");	
		req.setAttribute("name", name);
		System.out.println(name+"+++++++++++++");
		//用于搜索first.jsp中的图片信息
		List<Image> imagelist=UserService.queryimage();
		req.setAttribute("imagelist",imagelist);
		req.getRequestDispatcher("pages/shop-details.jsp").forward(req, resp);
		
		
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}

	
	public void destroy() {
		
	}

	
	public void init() throws ServletException {
		
	}
	
}
