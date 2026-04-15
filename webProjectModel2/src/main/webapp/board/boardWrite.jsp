<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link rel="stylesheet" href="css/boardWrite.css" />
</head>
<body>

<%@include file="/common/header.jsp" %>
<div class="boardWrite">
	<div class="boardWrite-con">
	<div class="boardWrite-form">
		<h1>게시글 작성</h1>
					<form action="boardWrite.board" method="POST">
				<ul>
					<li>
						<label for="title">제목</label>
						<input type="text" name="title" id="title" />
					</li>
					<li>
						<label for="content">내용</label>
						<input type="text" name="content" id="content" />
					</li>
					<li>
						<label for="memberId">memberId</label>
						<input name="memberId" id="memberId" 
						value="${sessionScope.sessionId}" readOnly/>
					</li>

					<li><input type="submit" value="게시글 작성" /></li>
					<li><a href="${pageContext.request.contextPath}/">HOME</a></li>
					<a href="${pageContext.request.contextPath}/boardList.board">게시글목록</a>
				</ul>
			</form>
	</div>
	</div>
</div>
<div class="footer">footer</div>
</body>
</html>