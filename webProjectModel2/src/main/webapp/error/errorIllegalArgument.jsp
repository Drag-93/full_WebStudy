<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isErrorPage="true" %>
    
    <%
    //정상
    response.setStatus(400);
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IllArgument</title>
</head>
<body>
	유효아지 않은 인수를 추가했습니다.
	<br />입력된 값을 확인 바랍니다
	<script>
		alert("입력값 오류")
		location.href="/webProjectModel2/index";
	</script>
</body>
</html>