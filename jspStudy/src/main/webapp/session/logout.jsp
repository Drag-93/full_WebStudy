<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
	<%
	//모든세션 -> 보통 로그아웃
	if (session != null)
		session.invalidate();
	%>
	<a href="login.jsp">login</a>

</body>
</html>