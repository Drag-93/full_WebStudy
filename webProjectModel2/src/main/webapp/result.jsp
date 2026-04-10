<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><%=request.getAttribute("msg") %></h1>
<h1>${msg}</h1>

<a href="<%=request.getContextPath() %>/">HOME</a>
<a href="<%=request.getContextPath() %>/login.member">로그인</a>

</body>
</html>