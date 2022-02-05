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
	String id = request.getParameter("ID");
	String pass = request.getParameter("PASS");
	
	out.print("아이디:"+id);
	out.print("비밀번호:"+pass);

%>

</body>
</html>