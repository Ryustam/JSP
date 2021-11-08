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
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("ID");
	String pass = request.getParameter("PASS");
	
	out.print("아이디:"+id);
	out.print("비밀번호:"+pass);

%>

</body>
</html>