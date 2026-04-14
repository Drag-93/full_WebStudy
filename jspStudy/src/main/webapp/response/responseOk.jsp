<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseOk</title>
</head>
<h1>responseOk.jsp</h1>
<body>
	<%
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age>=20){
		response.sendRedirect("pass.jsp?age="+age);
	}else{
		response.sendRedirect("noPass.jsp?age="+age);
	}
	
	%>
</body>
</html>