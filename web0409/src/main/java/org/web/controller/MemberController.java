package org.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.web.dto.MemberDto;
import org.web.service.MemberService;
import org.web.service.impl.MemberServiceImpl;

//@WebServlet("/member")
@WebServlet("*.member") // insert.member, update.member, ->컨트롤러 역할
public class MemberController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("GET");
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		System.out.println("POST");
		String path = request.getContextPath();
		String uri = request.getRequestURI();
		System.out.println(path);
		System.out.println(uri);

		String basicURL = uri.substring(path.length()); // -> /insert.member
		System.out.println(basicURL+" <<<basicURL");

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String url = "";

//		PrintWriter out = response.getWriter();
		
		MemberService service = new MemberServiceImpl();
		  
		if (basicURL.equals("/insert.member")) {
			System.out.println("회원가입");
			
          String userEmail = request.getParameter("userEmail");
          String userName = request.getParameter("userName");
          int age = Integer.parseInt(request.getParameter("age"));

          int rs = service.memberInsert(new MemberDto(null, userEmail, userName, age, null, null, null));

          // 메시지 전달
          request.setAttribute("msg", "회원가입 성공!");

          //회원 가입 성공하면 -> 결과 페이지 이동
          request.getRequestDispatcher("/result.jsp")
          		  .forward(request, response);

			
		} else if (basicURL.equals("/joinView.member")) {
			System.out.println("회원가입페이지");			
			
			// JSP -> View
			request.getRequestDispatcher("/join.jsp").forward(request, response);
//
//			out.println("<!DOCTYPE html>");
//			out.println("<html>");
//			out.println("<head>");
//			out.println("<meta charset='UTF-8'>");
//			out.println("<title>join</title>");
//			out.println("</head>");
//			out.println("<body>");
//			out.println("<body>");
//			out.println("<form action='insert.member' method='POST'>");
//
//			out.println("</form>");
//
//			out.println("</html>");

		} else if (basicURL.equals("/update.member")) {
			System.out.println("회원수정");
		} else if (basicURL.equals("/delete.member")) {
			System.out.println("회원탈퇴");
		} else if (basicURL.equals("/select.member")) {
			System.out.println("회원조회(목록)");
			
			List<MemberDto> memberDtos= service.memberList();
			
			request.setAttribute("memberList", memberDtos);
			
			request.getRequestDispatcher("/memberList.jsp")
			       .forward(request, response);
			
		} else if (basicURL.equals("/detail.member")) {
			System.out.println("회원조회(상셰)");
		} else {
			System.out.println("Fail!");
		}
	}
}
