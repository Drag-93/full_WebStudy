<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include01</title>
</head>
<body>

	<h1>include01.jsp 페이지</h1>
	<%--<%@ include file="include02.jsp" %> --%>
	<%--각각의 jsp페이지가 따로 컴파일 --%>

	<jsp:include page="include02.jsp" flush="true"/>
	<h1>다시 01페이지</h1>
</body>
</html>