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
		int result=dao.memberSelect(userId,password);
		
		switch(result){
			case 0:
				System.out.println("로그인 실패!");
	%>
				out.println("없는 아이디 입니다.");
	<%
				response.sendRedirect("./index.jsp");
				break;
			case 1:
				System.out.println("로그인 성공!:세션에 값 저장!");
				session.setAttribute("userId", userId);
				response.sendRedirect("./index.jsp");
				break;
			case 2:
				System.out.println("로그인 실패!");
	%>
				out.println("비밀번호가 다릅니다");
	<%
				response.sendRedirect("./index.jsp");
				break;
		}	
	%>
</body>
</html>