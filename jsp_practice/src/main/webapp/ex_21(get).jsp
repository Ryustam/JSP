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
	
	out.print("���̵�:"+id);
	out.print("��й�ȣ:"+pass);

%>

</body>
</html>