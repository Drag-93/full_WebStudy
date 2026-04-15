<%@page import="org.web.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
List<BoardDto> boardList = (List<BoardDto>)request.getAttribute("boardList");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>게시글조회(목록)</title>
<link rel="stylesheet" href="css/boardList.css" />
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
		<!-- 
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
		<a href="<%=request.getContextPath()%>/boardDetail.board?boardId=<%=boardDto.getboardId()%>">보기</a>
		</td>		
		</tr>

	<%
		}
	%>
	 -->
			<%--JSTL forEach --%>
		<c:forEach var="board" items="${boardList}">
		<tr>
		<td><c:out value="${board.boardId }"></c:out></td>
		<td><c:out value="${board.title }"></c:out></td>
		<td><c:out value="${board.content }"></c:out></td>
		<td><c:out value="${board.memberId }"></c:out></td>
		<td><c:out value="${board.createTime }"></c:out></td>
		<td><c:out value="${board.updateTime }"></c:out></td>
		<td><a href="${pageContext.request.contextPath}/boardDetail.board?boardId=${board.boardId}">보기</a></td>
		</tr>
		</c:forEach>
	<tr>
	<td>
	<c:choose>
		<c:when test="${not empty sessionScope.sessionId }">
	<a href="<%=request.getContextPath()%>/boardWriteView.board">글작성</a>
	</c:when>
		<c:otherwise>
		<li><c:out value="로그인 후 글작성 해주세요"></c:out></li>
		<li><a href="loginView.member">로그인</a></li>
		</c:otherwise>	
		
	</c:choose>
	</td>
	</tr>
	</table>
	</div>

</div>






</body>
</html>