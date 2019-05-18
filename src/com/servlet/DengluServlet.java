//登录
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.StringUtils;

import com.dao.UserDao;
import com.dao.UserDaoImpl;

public class DengluServlet extends HttpServlet { //需要继承HttpServlet
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);//将信息使用doPost方法执行
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		String name = request.getParameter("name");//得到jsp页面传过来的参数
		String pwd = request.getParameter("pwd");
		UserDao ud = new UserDaoImpl();
		if(name == null || name.length() <= 0 || pwd == null || pwd.length() <= 0 )
		{
			response.sendRedirect("blank.jsp");
		}
		else if(ud.login(name, pwd))
		{
			if(name.equals("admin") && pwd.equals("admin"))
			{
				request.getRequestDispatcher("/Searchall").forward(request, response);
				//response.sendRedirect("showall.jsp");
			}
			else {
			request.setAttribute("xiaoxi", name);//向request域中放置信息
			request.getRequestDispatcher("/success.jsp").forward(request, response);//转发至成功页
			}
		}
		else
		{
			response.sendRedirect("index.jsp");//重定向到首页
		}
	}
}


