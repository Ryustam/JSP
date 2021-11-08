<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="mypackage.test1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	test1 t1 = new test1();
	out.print("1부터 100까지의 합:");
	out.print(t1.print_sum(100));
%>

</body>
</html>