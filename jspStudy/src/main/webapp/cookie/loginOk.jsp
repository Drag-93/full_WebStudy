<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id"); //jsp0414 입력
	String pw = request.getParameter("pw"); //1111 입력
		//예시 -> 입력된 id pw 쿠키값으로 설정
		if(id.equals("jsp0414")&&pw.equals("1111")){
			//로그인 성공 시 쿠키 설정
		                           //쿠키name,쿠키value
			Cookie cookie = new Cookie("loginCookie",id);
			cookie.setMaxAge(60);    //1시간 = 60초*60
			response.addCookie(cookie);  //공유
			
			response.sendRedirect("welcome.jsp");
		}else{
			response.sendRedirect("login.jsp");
		}

%>
</body>
</html>