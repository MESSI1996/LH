package com.yougou.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yougou.bean.User;
import com.yougou.service.UserService;


public class AddServlet extends HttpServlet{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String password=req.getParameter("password");
		String id=req.getParameter("id");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date=new Date();
		String registertime=sdf.format(date);
		User user=new User();
		user.setPassword(password);
		user.setRegistertime(registertime);
		user.setId(id);
		PrintWriter out=resp.getWriter();
		if (UserService.Query(id)) {
			out.print("cunzai");
		}
		else {
			UserService.addUser(user);
			out.print("success");
		}
		out.flush();
		out.close();
	}
	
	
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		
//		String password=req.getParameter("password");
//		String id=req.getParameter("id");
//		if (Stringutil.isnotnull(id)&&Stringutil.isnotnull(password)) {
//			User user=new User();
//			user.setPassword(password);
//			
//			user.setId(id);
//			UserService.addUser(user);
//			req.getRequestDispatcher("login.jsp").forward(req, resp);
//		}else {
//			resp.sendRedirect("zhuce.jsp");
//		}
//	}

	
	public void destroy() {
		
	}

	
	public void init() throws ServletException {
		
	}
	
}
