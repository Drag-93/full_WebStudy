package org.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("*.do") //insert.do, join.jommm
//@WebServlet("/member") // /member/join, /member/login
@WebServlet("/") // 기본,index
public class HomeController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("GET");
		doPost(request,response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post");
		
		System.out.println("/->index페이지");
		
		request.setCharacterEncoding("UTF-8");
		
		String path = request.getContextPath(); //요청 기본경로
		String uri = request.getRequestURI();
		
		System.out.println(path);
		System.out.println(uri);

		//요청에 대한 서버의 응답
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out =response.getWriter(); //View(뷰리졸브), HTML+응답 Data -> 클라이언트 HTML
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>index</title>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<a href='"+ path +"/joinView.member'>회원가입페이지</a>");
		out.println("<a href='"+ path +"/select.member'>회원목록페이지</a>");
		
		out.println("</body>");
		out.println("</html>");
		
		
		
		
		
		
		
		
		
		
		
	}
}
