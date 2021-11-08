<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미선택</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String hobby = request.getParameter("hobby");
	
	out.println("당신의 취미:"+hobby);
%>
</body>
</html>