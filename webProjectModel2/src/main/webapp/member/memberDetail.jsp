<%@page import="org.web.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    MemberDto memberDto = (MemberDto)request.getAttribute("memberDto");
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원상세보기</title>
<link rel="stylesheet" href="css/memberDetail.css" />
</head>
<body>
<%@include file="/common/header.jsp" %>
	<div class="member-detail">
		<div class="member-detail-con">
			<div class="member-detail-form">
			<h1><%=memberDto.getUserName() %>님 회원정보</h1>
			<ul>
				<form action="update.member"method ="POST">
				<ul>
					<li>
						<label for="memberId">아이디</label>
						<input type="text" name="memberId" id="memberId"
						value = "<%=memberDto.getMemberId() %>" readOnly/>
					</li>
					<li>
						<label for="userEmail">이메일</label>
						<input type="email" name="userEmail" id="userEmail" 
						value = "<%=memberDto.getUserEmail() %>"/>
					</li>
					<li>
						<label for="userPw">비밀번호</label>
						<input type="password" name="userPw" id="userPw" 
						value = "<%=memberDto.getUserPw()%>"/>
					</li>
					<li>
						<label for="userName">이름</label>
						<input type="text" name="userName" id="userName" 
						value = "<%=memberDto.getUserName() %>"/>
					</li>
					<li>
						<label for="age">나이</label>
						<input type="text" name="age" id="age" 
						value = "<%=memberDto.getAge() %>"/>
					</li>
					<li>
						<label for="role">권한</label>
						<input type="text" name="role" id="role" 
						value = "<%=memberDto.getRole() %>"/>
					</li>
					<li>
						<label for="createTime">createTime</label>
						<input type="text" name="createTime" id="createTime" 
						value = "<%=memberDto.getCreateTime() %>"/>
					</li>
					<li>
						<label for="updateTime">updateTime</label>
						<input type="text" name="updateTime" id="updateTime" 
						value = "<%=memberDto.getUpdateTime() %>"/>
					</li>
					<li><input type="submit" value="회원정보 수정" /></li>
					<a href="<%=request.getContextPath()%>/delete.member?memberId=<%=memberDto.getMemberId()%>">회원탈퇴</a>
					<li><a href="<%=request.getContextPath()%>/">HOME</a></li>
					<a href="<%=request.getContextPath()%>/select.member">회원목록</a>
				</ul>
				</form>
			</ul>
			</div>
		</div>
	</div>
</body>
</html>