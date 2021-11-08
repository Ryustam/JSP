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
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

request.setAttribute("id", id);
request.setAttribute("pwd", pwd);

pageContext.forward("3.Forward_Result.jsp");

%>

</body>
</html>