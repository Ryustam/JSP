<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	//String name = request.getParameter("name");
	String kname = request.getParameter("name");
	String password = request.getParameter("passwd");
	
	
	out.println("아이디:"+id+"<br>");
	out.println("이름:"+kname+"<br>");
	out.println("비밀번호:"+password+"<br>");
%>

</body>
</html>