<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome.jsp</title>
</head>
<body>
	<%
	Enumeration sessionNames= session.getAttributeNames();
	while (sessionNames.hasMoreElements()) {
		String sName = sessionNames.nextElement().toString();//session 이름
		String sValue = (String) session.getAttribute(sName);//session 값
		if (sValue.equals("jsp0414"))
			out.println(sValue + "님 안녕하세요." + "<br>");
	}
	%>
	<a href="logout.jsp">로그아웃</a>

</body>
</html>