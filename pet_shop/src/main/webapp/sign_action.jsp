<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dao.memberDAO"%>
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

		memberDAO dao= new memberDAO();
		boolean result=dao.memberInsert(userId,password);
		
		if(result==false){
				System.out.println("회원가입 실패!");
				System.out.println("이미 존재하는 아이디 입니다.");
	%>
				
	<%
				response.sendRedirect("./index.jsp");
		}else {	
				System.out.println("회원가입 성공!");
	%>
				out.println("회원가입 성공!");
	<% 
				response.sendRedirect("./index.jsp");	
		}
	%>
</body>
</html>