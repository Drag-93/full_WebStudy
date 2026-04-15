<%@page import="org.web.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    BoardDto boardDto= (BoardDto)request.getAttribute("boardDto");
    %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<link rel="stylesheet" href="css/boardDetail.css" />
</head>
<body>
<%@include file="/common/header.jsp" %>
	<div class="board-detail">
		<div class="board-detail-con">
			<div class="board-detail-form">
			<c:set var="board" value="${boardDto}"></c:set>
			<h1><c:out value="제목 : ${board.title}"></c:out></h1>
			<ul>
				<form action="boardUpdate.board"method ="POST">
				<ul>
					<li>
						<label for="boardId">boardId</label>
						<input type="text" name="boardId" id="boardId"
						value = "${board.boardId }" readOnly/>
					</li>
					<li>
						<label for="title">title</label>
						<input type="text" name="title" id="title" 
						value = "${board.title }"/>
					</li>
					<li>
						<label for="content">content</label>
						<input type="text" name="content" id="content" 
						value = "${board.content }"/>
					</li>
					<li>
						<label for="memberId">memberId</label>
						<input type="text" name="memberId" id="memberId" 
						value = "${board.memberId }"readOnly/>
					</li>
					<li>
						<label for="createTime">createTime</label>
						<input type="text" name="createTime" id="createTime" 
						value = "${board.createTime}"readOnly/>
					</li>
					<li>
						<label for="updateTime">updateTime</label>
						<input type="text" name="updateTime" id="updateTime" 
						value = "${board.updateTime }"readOnly/>
					</li>
					<c:choose>
					<c:when test="${sessionScope.sessionId==board.memberId||sessionScope.role eq 'ADMIN'}">
					<li><input type="submit" value="게시글 수정" /></li>
					<a href="${pageContext.request.contextPath}/boardDelete.board?boardId=${board.boardId}">게시글 삭제</a>
					</c:when>
					</c:choose>
					<a href="${pageContext.request.contextPath}/">HOME</a></li>
					<a href="${pageContext.request.contextPath}/boardList.board">게시글목록</a>
				</ul>
				</form>
			</ul>
			</div>
		</div>
	</div>
</body>
</html>