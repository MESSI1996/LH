package com.yougou.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yougou.bean.Type;
import com.yougou.service.SouService;
import com.yougou.service.UserService;


@WebServlet("/sou")
public class SouServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String key = request.getParameter("keyWord");
		
		List li = null;
		try {
			li = new SouService().sou(key);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		Gson gs = new Gson();
		String lili = gs.toJson(li);
//		System.out.println(lili);
		response.getWriter().write(lili);
	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
