<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlSql 3</title>
</head>
<body>

	<sql:setDataSource 
	var="conName" 
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/mysql04?serverTimezone=UTC"
	user="root" 
	password="1234" />


	<!--  임시테스트용-->
	<!--  수정 -->
	<sql:update var="result" dataSource="${conName}">
		 update member_tb2 set user_email=?,user_pw=?,user_name=? where member_id=? ;
		<sql:param value="444"/>
		<sql:param value="55" />
		<sql:param value="111" />
		<sql:param value="1" />
	</sql:update>
	<sql:update var="result" dataSource="${conName}">
		 update member_tb2 set user_email="test@for",user_pw="11",user_name="hey" where member_id="2" ;
		
	</sql:update>

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

</body>
</html>