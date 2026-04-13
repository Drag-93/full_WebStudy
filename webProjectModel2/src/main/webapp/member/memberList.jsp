<%@page import="org.web.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
List<MemberDto> memberList = (List<MemberDto>) request.getAttribute("memberList");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원조회(목록)</title>
<link rel="stylesheet" href="css/memberList.css" />
</head>
<body>
<%@include file="/common/header.jsp" %>
<div class="memberList">
	<div class="memberList-con">
		<h1>
			회원목록(<%=memberList.size()%>)
		</h1>
		<table>
			<tr>
				<th>아이디</th>
				<th>userEmail</th>
				<th>userPw</th>
				<th>userName</th>
				<th>age</th>
				<th>role</th>
				<th>createTime</th>
				<th>updateTime</th>
				<th>보기</th>
			</tr>
			<%
			for(MemberDto memberDto: memberList){			
			%>
			<tr>
				<td><%=memberDto.getMemberId() %></td>
				<td><%=memberDto.getUserEmail() %></td>
				<td><%=memberDto.getUserPw()%></td>
				<td><%=memberDto.getUserName()%></td>
				<td><%=memberDto.getAge() %></td>
				<td><%=memberDto.getRole() %></td>
				<td><%=memberDto.getCreateTime() %></td>
				<td><%=memberDto.getUpdateTime() %></td>
				<td>
				<a href="<%=request.getContextPath()%>/detail.member?memberId=<%=memberDto.getMemberId()%>">보기</a>
				</td>	
			</tr>
			<%} %>
			
			
		</table>
	</div>
</div>


</body>
</html>