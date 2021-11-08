<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="mypackage.warrior" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	warrior obj = new warrior(100,3.5,"검");
	out.print(obj.Show_Info());
%>

</body>
</html>