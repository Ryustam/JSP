<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dao.MemberDAO" %>
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

		MemberDAO dao=new MemberDAO();
		boolean result=dao.memberSelect(userId,password);
		
		if(result==true){
			System.out.println("�α��� ����!:���ǿ� �� ����!");
			session.setAttribute("userId", userId);
			response.sendRedirect("./index.jsp");
		} else {
			System.out.println("�α��� ����!");
			response.sendRedirect("./index.jsp");
		}
%>

</body>
</html>