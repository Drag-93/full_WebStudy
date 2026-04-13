<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isErrorPage="true" %>
    
    <%
    //정상
    response.setStatus(500);
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IllegalState</title>
</head>
<body>
	서비스 처리 상태가 올바르지 않습니다
	<br />잠시 후 다시 시도해 주세요
	<script>
		alert("잘못된 상태 오류 발생.")
		location.href="/webProjectModel2/index";
	</script>
</body>
</html>