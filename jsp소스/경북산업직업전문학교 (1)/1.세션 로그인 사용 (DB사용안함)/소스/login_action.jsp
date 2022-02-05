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
String userId=request.getParameter("userId");
String password=request.getParameter("password");

if(userId.equals("manager")){
	if(password.equals("1234")){
		out.print("세션에 값 저장!");
		session.setAttribute("userId", userId);
		response.sendRedirect("./index.jsp");
	}
}

%>

</body>
</html>