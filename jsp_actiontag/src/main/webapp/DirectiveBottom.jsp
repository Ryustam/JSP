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
include �������� �Ʒ� �κ� <br>
<%
Date date = new Date();	
%>
���� ��¥�� �ð�
<%=date.toLocaleString() %>
<hr>
</body>
</html>