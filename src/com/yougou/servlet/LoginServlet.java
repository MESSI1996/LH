package com.yougou.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

import com.yougou.bean.User;
import com.yougou.service.UserService;
import com.yougou.stringutil.Stringutil;

public class LoginServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		String password=req.getParameter("password");
		PrintWriter out=resp.getWriter();
		if (Stringutil.isnotnull(id)&&Stringutil.isnotnull(password)) {
			if (UserService.login(id, password)) {
				HttpSession session=req.getSession();
				session.setAttribute("id",id );
				session.setAttribute("password", password);
				session.setMaxInactiveInterval(1*3000);
				out.print("success");
			}else {
				out.print("error");
			}
		}else {
			
			out.print("error");
		}
		req.getSession().setAttribute("id", id);
		out.flush();
		out.close();
		}
		
//		if (Stringutil.isnotnull(id)&&Stringutil.isnotnull(password)) {
//			if (UserService.login(id, password)) {
//				HttpSession session=req.getSession();
//				session.setAttribute("id",id );
//				session.setAttribute("password", password);
//				session.setMaxInactiveInterval(3000);
//				req.getRequestDispatcher("pages/first.jsp").forward(req, resp);
//			}else {
//				resp.sendRedirect("login.jsp");
//			}
//		}else {
//			resp.sendRedirect("login.jsp");
//			
//		}
//		
//		
//		req.getSession().setAttribute("id", id);
//	}


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	
	public void destroy() {
		
	}

	
	public void init() throws ServletException {
		
	}
	
}
