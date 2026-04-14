<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookiedel.jsp</title>
</head>
<body>

<%
	Cookie[] cookies =request.getCookies();
for (int i=0; i<cookies.length; i++){
	String str = cookies[i].getName();
	if(str.equals("jsp0414")){
		out.println("name : "+cookies[i].getName()+"<br/>");
		cookies[i].setMaxAge(0);  //쿠키 시간 0 -> 쿠키 삭제
		response.addCookie(cookies[i]);
	}
}
%>

<a href="cookietest.jsp">쿠키확인</a>




</body>
</html>