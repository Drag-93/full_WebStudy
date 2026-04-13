<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isErrorPage="true" %>
    
    <%
    //정상
    response.setStatus(404);
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 에러</title>
</head>
<body>
	요청한 페이지는 존재하지 않습니다.
	<br />주소를 올바르게 입력했는지 확인하시길 바랍니다.
	<script>
		alert("찾는 페이지(파일)가 존재하지 않습니다.")
		location.href="/webProjectModel2/index";
	</script>
</body>
</html>