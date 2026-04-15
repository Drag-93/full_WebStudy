<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk.jsp</title>
</head>
<body>
	<%
	String id = request.getParameter("id");//jsp0828
	String pw = request.getParameter("pw");//1111
	if (id.equals("jsp0414") && pw.equals("1111")) {
		//name value
		session.setAttribute("id", id); // 접속 id가 session 설정
		session.setMaxInactiveInterval(60*1);// 세션시간 1분		
		response.sendRedirect("welcome.jsp");
	} else {
		response.sendRedirect("login.jsp");
	}
	%>




</body>
</html>