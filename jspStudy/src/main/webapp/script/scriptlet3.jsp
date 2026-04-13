<%@page import="dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   	List<MemberDto> memberDtos = new ArrayList<>();
    
    memberDtos.add(new MemberDto(1L,"m1@email.com","m1",11));
    memberDtos.add(new MemberDto(2L,"m2@email.com","m2",21));
    memberDtos.add(new MemberDto(3L,"m3@email.com","m3",31));
    memberDtos.add(new MemberDto(4L,"m4@email.com","m4",41));
    memberDtos.add(new MemberDto(5L,"m5@email.com","m5",51));
    //Constriller -> View
    request.setAttribute("memberList", memberDtos);
    
    //View -> JSP
    List<MemberDto> memberList = (List<MemberDto>)request.getAttribute("memberList");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptlet3</title>
</head>
<body>
<h3>회원목록: <%=memberDtos.size() %></h3>
<table>
	<tr>
	<th>memberId</th>
	<th>userEmail</th>
	<th>userName</th>
	<th>age</th>
	<th>보기</th>
	</tr>
	<%
	for(MemberDto member: memberList){
	%>
	<tr>
		<td><%=member.getMemberId() %></td>
		<td><%=member.getUserEmail() %></td>
		<td><%=member.getUserName() %></td>
		<td><%=member.getAge() %></td>
		<td>
		<a href="<%=request.getContextPath()%>/detail.member?memberId=<%=member.getMemberId() %>">보기</a>
		</td>
	</tr>
<%
	}
%>
</table>

</body>
</html>