<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
    //선언부
    int num1=10;
    int num2=20;
    
    public int power(int m1, int m2){
    	return m1+m2;
    }
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptlet</title>
</head>
<body>
num1: <%=num1 %> <br />
num2: <%=num2 %> <br />
power(): <%=power(100,200) %><br />
<hr />
<hr />

<%
//scriptlet -> 자바코드
int i=0;
while(true){
	i++;
	//out.println("2 * "+ i + " = "+(2*i)+"<<br />"):
%>
<%="2 * "+ i + " = "+(2*i) %>
<br />
<%
	if(i>=9) break;
}
	%>
		

</body>
</html>