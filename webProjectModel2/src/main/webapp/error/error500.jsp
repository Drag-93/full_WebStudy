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
<title>500 에러</title>
</head>
<body>
	요청한 페이지는 존재하지 않습니다.
	<br />입력값을 확인 바랍니다.
	<script>
		alert("요청(코드)에러 발생.")
		location.href="/webProjectModel2/index";
	</script>
</body>
</html>