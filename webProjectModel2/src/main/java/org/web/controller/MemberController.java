package org.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.web.constraint.Role;
import org.web.dto.MemberDto;
import org.web.service.MemberService;
import org.web.service.impl.MemberServiceImpl;

@WebServlet ("*.member")
public class MemberController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get");
		doPost(request, response);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post");
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String path=request.getContextPath();
		String uri=request.getRequestURI();
		
		String basicURL=uri.substring(path.length()); // ->/insert.member
		System.out.println(basicURL);
		
		MemberService service=new MemberServiceImpl();
		
		//이동할 URL
		String url="";
		if(basicURL.equals("/joinView.member")) {
			url="/member/join.jsp";
		}else if(basicURL.equals("/loginView.member")) {
			//페이지만 이동
			url="/member/login.jsp";
		} else if (basicURL.equals("/loginView.member")) {
			// 페이지만 이동
			url = "/member/login.jsp";

		} else if (basicURL.equals("/login.member")) {

			String userEmail = request.getParameter("userEmail");
			String userPw = request.getParameter("userPw");

			MemberDto memberDto = service.loginFn(userEmail, userPw);
			HttpSession session = request.getSession();
			if (memberDto != null) {
				session.setAttribute("sessionId", memberDto.getMemberId());
				session.setAttribute("role", memberDto.getRole().toString());
			}
			// 로그인 성공
			// 페이지만 이동
			url = "/";
		} else if (basicURL.equals("/logout.member")) {

			HttpSession session = request.getSession();
			
			PrintWriter out=response.getWriter();

			if (session != null) {
				session.invalidate();				
		/*		
		¿		out.println("<html>");
				out.println("<<meta charset='UTF-8'>");
				out.println("<script>");
				out.println("alert('로그아웃성공!');  ");
				out.println("</script>");
				out.println("</html>");
				*/
				
			}
			// 페이지만 이동
			//return;
			
			url = "/";	
		}else if(basicURL.equals("/select.member")) {
			System.out.println("회원조회(목록)");
			List<MemberDto> memberList=service.memberList();
			
			url="/member/memberList.jsp";
			request.setAttribute("memberList", memberList);

		}else if(basicURL.equals("/insert.member")) {
			System.out.println("회원가입");
			String userEmail = request.getParameter("userEmail");
			String userPw = request.getParameter("userPw");
			String userName = request.getParameter("userName");

			int age=Integer.parseInt(request.getParameter("age"));
			
			int rs=service.memberInsert(new MemberDto(null, userEmail,userPw, userName, age, null, null, null));
			
			if(rs==1) {
				System.out.println("로그인 페이지로 이동");
				url="/member/login.jsp";
			}
			
		}else if(basicURL.equals("/update.member")) {
			System.out.println("회원수정");
			
			Long memberId=Long.parseLong(request.getParameter("memberId"));
			String userEmail=request.getParameter("userEmail");
			String userPw=request.getParameter("userPw");
			String userName=request.getParameter("userName");
			int age=Integer.parseInt(request.getParameter("age"));
			String role=request.getParameter("role").toUpperCase();
			int rs=service.memberUpdate(new MemberDto(memberId, userEmail, userPw, userName,age, Role.valueOf(role) , null, null));
			if(rs==1) {
				System.out.println("회원목록페이지로 이동");
				url="/select.member";
			}
			
		}else if(basicURL.equals("/delete.member")) {
			System.out.println("회원탈퇴");
			
			Long memberId=Long.parseLong(request.getParameter("memberId"));
			
			int rs=service.memberDelete(memberId);
			
			if(rs==1) {
				System.out.println("회원목록페이지로 이동");
				url="/select.member";
			}

			
		}else if(basicURL.equals("/detail.member")) {
			System.out.println("회원조회(상세)");
			
			Long memberId = Long.parseLong(request.getParameter("memberId"));
			
			MemberDto memberDto=service.memberDetail(memberId);
			System.out.println(memberId);
			System.out.println(memberDto);
			url="/member/memberDetail.jsp";
			request.setAttribute("memberDto", memberDto);
			
			
		}
		else {
			System.out.println("Fail");
		}
		
		//View -> JSP,Thymeleaf -> 템플릿엔진 HTML+Data -> 컴파일 -> HTML
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
		
		
		
		
		
	}
}
