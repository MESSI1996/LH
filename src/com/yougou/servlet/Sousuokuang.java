package com.yougou.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yougou.bean.Goods;
import com.yougou.bean.Image;
import com.yougou.service.GoodsService;


@WebServlet("/Sousuokuang")
public class Sousuokuang extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Sousuokuang() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodsname=request.getParameter("goodsname");
		request.setAttribute("goodsname", goodsname);
		
		ServletContext servletContext=getServletContext();
		servletContext.setAttribute("goodsname",goodsname );
		
		Goods goods=GoodsService.querygoods(goodsname);
		
		
		
		
		PrintWriter out=response.getWriter();
		if (goods.getName()!=null&&!goods.getName().equals("")) {
			out.write("success");
		}else {
			out.write("error");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
