package org.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet({"/","/index"})
@WebServlet("/index")
public class HomeController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get");
		doPost(request, response);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post");
		
		System.out.println("Index -> HOME");
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String url = "/index.jsp";
		
		//페이지만 이동
//		response.sendRedirect(url);
		
		//data가 있으면 설정 -? data+페이지 이동
		request.setAttribute("test", "test문자열");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);//View
		dispatcher.forward(request, response);
		
		//  =
		// request.getRequestDispatcher(url).forward(request, response);//View
		
		
		
		
		
		
	}
}
