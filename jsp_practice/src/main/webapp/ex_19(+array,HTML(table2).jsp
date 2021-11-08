<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%!
	String name[]={"JAVA","JSP","Android"};	
%>
</head>
<body>
<table border='1' width="200">
	<% for(int i=0; i<=2; i++) {%>
	<tr>
		<td><%=i %></td>
		<td><%=name[i] %></td>
	</tr>
	<%} %>	
</table>
	
</body>
</html>