package org.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.web.dto.MemberDto;
import org.web.service.MemberService;
import org.web.service.impl.MemberServiceImpl;

//@WebServlet("/member")
@WebServlet("*.member")
public class MemberController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get");
		doPost(request,response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post");
		
		String path=request.getContextPath();
		String uri=request.getRequestURI();
		System.out.println(path);
		System.out.println(uri);
		
		String basicURL = uri.substring(path.length());// -> /insert.member
		System.out.println(basicURL);
		
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		MemberService service = new MemberServiceImpl();
		
		String url= "";
		if(basicURL.equals("/insert.member")) {
			System.out.println("회원가입");
			
			String userEmail = request.getParameter("userEmail");
			String userName = request.getParameter("userName");
			int age=Integer.parseInt(request.getParameter("age"));
			
			int rs=service.memberInsert(new MemberDto(null, userEmail, userName, age, null, null, null));
			
			//메시지 전달
			request.setAttribute("msg", "회원가입 성공");
			
			//회원가입 성공하면 -> 결과 페이지로 이동
			request.getRequestDispatcher("/result.jsp").forward(request, response);
			
		}  else if(basicURL.equals("/joinView.member")) {
			System.out.println("회원가입 페이지");
			
			//JSP -> View로 이동
//			request.getRequestDispatcher("/join.jsp").forward(request, response);
			
		}  else if(basicURL.equals("/update.member")) {
			System.out.println("회원수정");
		}  else if(basicURL.equals("/delete.member")) {
			System.out.println("회원탈퇴");
		}  else if(basicURL.equals("/select.member")) {
			System.out.println("회원 목록 조회");
		}  else if(basicURL.equals("/edtail.member")) {
			System.out.println("회원 상세조회");
		}  else {
			System.out.println("Fail");
		};
	}
}
