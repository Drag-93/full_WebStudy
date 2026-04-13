<%@page import="org.web.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
List<BoardDto> boardList = (List<BoardDto>)request.getAttribute("boardList");
%>
<html>
<head>
<meta charset="UTF-8">
<title>게시글조회(목록)</title>
</head>
<body>
<%@include file="/common/header.jsp" %>
<div class="boardList">
	<div class="boardList-con">
		<h1>
		게시글목록(<%=boardList.size() %>)
		</h1>
	<table>
		<tr>
		<th>boardId</th>
		<th>title</th>
		<th>content</th>
		<th>memberId</th>
		<th>crateTime</th>
		<th>updateTime</th>
		<th>보기</th>
		</tr>
		<%
		for(BoardDto boardDto:boardList){
		%>
		<tr>
		<td><%=boardDto.getboardId() %></td>
		<td><%=boardDto.getTitle() %></td>
		<td><%=boardDto.getContent() %></td>
		<td><%=boardDto.getMemberId() %></td>
		<td><%=boardDto.getCreateTime() %></td>
		<td><%=boardDto.getUpdateTime() %></td>
		<td>
		<a href="<%=request.getContextPath()%>/boardDetail.board?boardId=<%=boardDto.getMemberId()%>">보기</a>
		</td>		
		</tr>
	<%
		}
	%>
	<tr>
	<td>
	<a href="<%=request.getContextPath()%>/boardWriteView.board">글작성</a>
	</td>
	</tr>
	</table>
	</div>

</div>






</body>
</html>