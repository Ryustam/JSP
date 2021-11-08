<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<hr>
include 지시자의 아랫 부분 <br>
<%
Date date = new Date();	
%>
현재 날짜와 시간
<%=date.toLocaleString() %>
<hr>
</body>
</html>