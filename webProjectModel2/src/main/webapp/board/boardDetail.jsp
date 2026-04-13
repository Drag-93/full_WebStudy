<%@page import="org.web.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    BoardDto boardDto= (BoardDto)request.getAttribute("boardDto");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
</head>
<body>
<%@include file="/common/header.jsp" %>
	<div class="board-detail">
		<div class="board-detail-con">
			<div class="board-detail-form">
			<h1>제목 : <%=boardDto.getTitle() %></h1>
			<ul>
				<form action="boardUpdate.board"method ="POST">
				<ul>
					<li>
						<label for="boardId">boardId</label>
						<input type="text" name="boardId" id="boardId"
						value = "<%=boardDto.getboardId() %>" readOnly/>
					</li>
					<li>
						<label for="title">title</label>
						<input type="text" name="title" id="title" 
						value = "<%=boardDto.getTitle() %>"/>
					</li>
					<li>
						<label for="content">content</label>
						<input type="text" name="content" id="content" 
						value = "<%=boardDto.getContent()%>"/>
					</li>
					<li>
						<label for="memberId">memberId</label>
						<input type="text" name="memberId" id="memberId" 
						value = "<%=boardDto.getMemberId() %>"readOnly/>
					</li>
					<li>
						<label for="createTime">createTime</label>
						<input type="text" name="createTime" id="createTime" 
						value = "<%=boardDto.getCreateTime() %>"readOnly/>
					</li>
					<li>
						<label for="updateTime">updateTime</label>
						<input type="text" name="updateTime" id="updateTime" 
						value = "<%=boardDto.getUpdateTime() %>"readOnly/>
					</li>
					<li><input type="submit" value="게시글 수정" /></li>
					<a href="<%=request.getContextPath()%>/boardDelete.board?boardId=<%=boardDto.getboardId()%>">게시글 삭제</a>
					<li><a href="<%=request.getContextPath()%>/">HOME</a></li>
					<a href="<%=request.getContextPath()%>/boardList.board">게시글목록</a>
				</ul>
				</form>
			</ul>
			</div>
		</div>
	</div>
</body>
</html>