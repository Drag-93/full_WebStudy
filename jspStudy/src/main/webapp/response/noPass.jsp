<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noPass.jsp</title>
</head>
<body>
<%
	String str = request.getParameter("age");
int age=Integer.parseInt(str);
%>
미성년자입니다. 입장 불가
<a href="responseex.jsp">처음으로 이동</a>
</body>
</html>