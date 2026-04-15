<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<link rel="stylesheet" href="css/index.css" />
</head>
<body>
<%@include file="/common/header.jsp" %>
<div class="index">
<div class="index-con">
	<h1>index</h1>
	<p><%=request.getAttribute("test") %></p>
	
	
</div>
</div>







<div class="footer">footer</div>
</body>
</html>