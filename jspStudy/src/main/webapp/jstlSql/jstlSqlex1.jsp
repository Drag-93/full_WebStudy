<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlSql 1</title>
</head>
<body>

	<sql:setDataSource var="conName" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/mysql04?serverTimezone=UTC"
		user="root" password="1234" />


	<!-- SELECT * from 테이블; //쿼리문 -->
	<sql:query dataSource="${conName}" var="rs">
		select * from member_tb2;
	</sql:query>

	<table>
		<tr>
			<th>아이디</th>
			<th>이메일</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>나이</th>	
			<th>권한</th>
		</tr>

		<c:forEach var="result" items="${rs.rows }" varStatus="status">
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