<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptlet2</title>
</head>
<body>
<%
int num1=10;
int num2=20;

List<String> list= new ArrayList<>();
list.add("m1");
list.add("m2");
list.add("m3");
list.add("m4");
list.add("m5");
%>
<%=num1+num2 %>
<h1>목록조회</h1>
<%=list %>
<hr />
<table>
	<tr>
	<th>제목</th>
	<th>제목</th>
	<th>제목</th>
	<th>제목</th>
	<th>제목</th>
	</tr>	

<%
	for(String str:list){					//jave
		out.println("<tr>");				//HTML + java= HTML
		out.println("<td>"+str+"</td>");	//HTML + java= HTML
		out.println("</tr>");				//HTML + java= HTML
	}
%>
<%
	for(String str:list){	//java
%>
	
	<tr>
	<td><%=str %></td>
	</tr> 
<%
	}
%>
</table>

</body>
</html>