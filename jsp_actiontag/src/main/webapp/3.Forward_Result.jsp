<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String id = (String)request.getAttribute("id");
String pwd = (String)request.getAttribute("pwd");

id = request.getParameter("id");
%>

id:<%=id %> <br>
pw:<%=pwd %> <br>

</body>
</html>