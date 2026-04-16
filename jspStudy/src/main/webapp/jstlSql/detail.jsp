<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
</head>
<body>
	
	
	<!-- 아이디 체크1(O),0(X) -->
	<sql:query var="idCheck" dataSource="jdbc/mysqlDB">
		select count (*) as count from member_tb2 where member_id = ${param.memberId}
	</sql:query>
	
	<!-- 아이디가 존재하지 않을 때 처리 -->
	<c:if test="${idCheck.rows[0].count==0 }">
	<p style="color:red;">아이디가 존재하지 않습니다</p>
	</c:if>
	
	
	
	



	<sql:query dataSource="jdbc/mysqlDB" var="result">
		select * from member_tb2 where member_id=${param.memberId};
	</sql:query>

	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이메일</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>나이</th>	
			<th>권한</th>
		</tr>

		<c:forEach var="result" items="${result.rows }" varStatus="status">
			<tr>
				<td>${result.member_id}</td>
				<td>${result.user_email}</td>
				<td>${result.user_pw}</td>
				<td>${result.user_name}</td>
				<td>${result.age}</td>
				<td>${result.role}</td>
			</tr>
		</c:forEach>
	</table>








</body>
</html>