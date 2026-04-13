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
<title>NULL 에러</title>
</head>
<body>
	서비스 처리 과정에서 NULL 에러가 발생
	<br />
	<script>
		alert("목록이 존재하지 않습니다.")
		location.href="/webProjectModel2/index";
	</script>
</body>
</html>