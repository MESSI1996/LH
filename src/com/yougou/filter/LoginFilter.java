package com.yougou.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yougou.stringutil.Stringutil;
/**
 * 通过设置LoginFilter，并给filter的路径写为想要隔离的页面（不能隔离登陆页面本身），达到
 * 只能通过登陆页面进入主页的效果
 * 
 * */

public class LoginFilter implements Filter{
	private FilterConfig config;
	
	public void destroy() {
		
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("进入登陆filter验证");
		HttpServletRequest httpServletRequest=(HttpServletRequest) request;
		HttpServletResponse httpServletResponse=(HttpServletResponse) response;
		String id=(String) httpServletRequest.getSession().getAttribute("id");
		String password=(String) httpServletRequest.getSession().getAttribute("password");
		if (Stringutil.isnotnull(id)&&Stringutil.isnotnull(password)) {
			chain.doFilter(httpServletRequest, httpServletResponse);
			System.out.println("session通过");
		}else {
			System.out.println("session没通过");
			httpServletResponse.sendRedirect("YouGou/pages/login.jsp");
		}
	}


	public void init(FilterConfig config) throws ServletException {
		this.config=config;
	}
	
}
