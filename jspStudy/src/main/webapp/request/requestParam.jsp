<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request</title>
</head>
<body>
	<%
	//내장객체 request
	//한글처리
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String major = request.getParameter("major");
	String protocol = request.getParameter("protocol");
	String[] hobbys = request.getParameterValues("hobby");
	%>
	<div>
	?name=11&id=11&pw=11&major=web&protocol=http&hobby=등산
	</div>
<%//http://localhost:8085/jspStudy/request/requestParam.jsp?name=11&id=11&pw=11&major=web&protocol=http&hobby=%EB%93%B1%EC%82%B0
%>
	이름 : 
	<%=name %><br /> 
	아이디 :
	<%=id %><br />
	비밀번호 : 
	<%=pw %><br />
	취미 :
	<%=Arrays.toString(hobbys) %><br />
	전공 :
	<%=major %><br />
	프로토콜 :
	<%=protocol %><br />
	







</body>
</html>