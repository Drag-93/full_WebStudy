<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlSql 5</title>
</head>
<body>

<!-- 아이디가 3인 작성자의 글 3개 추가 -->
<%-- <sql:update var="result" dataSource="jdbc/mysqlDB">
insert into board_tb2(title,content,member_id,createTime) values(?,?,?,now())
	<sql:param value="제목6"/>
	<sql:param value="내용6"/>
	<sql:param value="3"/>
</sql:update>
<sql:update var="result" dataSource="jdbc/mysqlDB">
insert into board_tb2(title,content,member_id,createTime) values(?,?,?,now())
	<sql:param value="제목7"/>
	<sql:param value="내용7"/>
	<sql:param value="3"/>
</sql:update>
<sql:update var="result" dataSource="jdbc/mysqlDB">
insert into board_tb2(title,content,member_id,createTime) values(?,?,?,now())
	<sql:param value="제목8"/>
	<sql:param value="내용8"/>
	<sql:param value="3"/>
</sql:update> --%>





<!-- 전체조회 -->
<sql:query var="result" dataSource="jdbc/mysqlDB">
	select * from board_tb2;
</sql:query>

<table border="1">
<tr>
<th>아이디</th>
<th>제목</th>
<th>내용</th>
<th>작성자아이디</th>
<th>작성시간</th>
<th>수정시간</th>
</tr>

<c:forEach var="result" items="${result.rows }" varStatus="status">
<tr>
<td>${result.board_id }</td>
<td>${result.title }</td>
<td>${result.content }</td>
<td>${result.member_id }</td>
<td>${result.createTime }</td>
<td>${result.updateTime }</td>
</tr>
</c:forEach>
</table>

<hr />

<!-- 아이디가 3인 작성자의 글목록 조회(내림차순) -->
<sql:query var="result2" dataSource="jdbc/mysqlDB">
	select * from board_tb2 where member_id="3" order by board_id desc;
</sql:query>

<table border="1">
<tr>
<th>아이디</th>
<th>제목</th>
<th>내용</th>
<th>작성자아이디</th>
<th>작성시간</th>
<th>수정시간</th>
</tr>

<c:forEach var="result2" items="${result2.rows }" varStatus="status">
<tr>
<td>${result2.board_id }</td>
<td>${result2.title }</td>
<td>${result2.content }</td>
<td>${result2.member_id }</td>
<td>${result2.createTime }</td>
<td>${result2.updateTime }</td>
</tr>
</c:forEach>
</table>



</body>
</html>