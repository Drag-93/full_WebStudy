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
	Cookie[] cookies =request.getCookies();

if(cookies!=null){
for (int i=0; i<cookies.length; i++){
	if(cookies[i].getValue().equals("jsp0414")){
				cookies[i].setMaxAge(0);  //로그아웃
		response.addCookie(cookies[i]);
	}
}
}
response.sendRedirect("login.jsp");
%>
</body>
</html>