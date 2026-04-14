<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%
	//내장객체 request
	//한글처리
	request.setCharacterEncoding("utf-8");
    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request_JoinOk.jsp</title>
</head>
<body>
	이름: <%=request.getParameter("name") %>
	<br />
	나이: <%=request.getParameter("age") %>
	<br />
	성별: <%=request.getParameter("gender") %>
	<br />
	취미: <%=request.getParameter("hobby") %>
	<br />
	<hr />
	<%
	String[] hobbyArr = request.getParameterValues("hobby");
	for(String str : hobbyArr){
		out.println(str+", ");
	}
	%>
	<hr />
	<%
	// name값들을 조회
	Enumeration en = request.getParameterNames();
	while(en.hasMoreElements()){
		String str = en.nextElement().toString();
				
		out.println(str+", ");
	}
	%>




</body>
</html>