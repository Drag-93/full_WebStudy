<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<h1><%=request.getAttribute("msg") %></h1>
<h1>${msg}</h1>

<a href="<%=request.getContextPath() %>/">HOME</a>
<a href="<%=request.getContextPath() %>/select.member">회원목록 페이지</a>

</body>
</html>