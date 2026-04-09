<%@page import="org.web.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
	<h1>회원목록조회</h1>

	<table border="1">
		<tr>
			<th>아이디</th>
			<th>Email</th>
			<th>Name</th>
			<th>Age</th>
			<th>가입시간</th>
			<th>보기</th>
		</tr>

		<%
		List<MemberDto> memberList = (List<MemberDto>) request.getAttribute("memberList");

		if (memberList != null) {
			for (MemberDto memberDto : memberList) {
			%>
			<tr>
				<td><%=memberDto.getMemberId()%></td>
				<td><%=memberDto.getUserEmail()%></td>
				<td><%=memberDto.getUserName()%></td>
				<td><%=memberDto.getAge()%></td>
				<td><%=memberDto.getCreateTime()%></td>
				<td>
					<a href="detail.member?memberId=<%=memberDto.getMemberId()%>">보기</a>
				</td>
			</tr>
			<%
			}
		}
		%>

	</table>

	<a href="<%=request.getContextPath()%>/">HOME</a>

</body>
</html>