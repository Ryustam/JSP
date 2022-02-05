<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.jsp.dao.MemberDAO" %>
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
String password_confirm=request.getParameter("password_confirm");

boolean id_check=false;
boolean password_check=false;
MemberDAO dao=new MemberDAO();
id_check=dao.IDCheck(userId);
if(id_check==true){
	System.out.println("중복 아이디가 존재합니다.");
} else {
	if(password.equals(password_confirm)==false){
		System.out.println("비밀번호가 일치하지 않습니다.");
	}
}

%>
</body>
</html>