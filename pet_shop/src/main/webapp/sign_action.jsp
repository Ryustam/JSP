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
				System.out.println("ȸ������ ����!");
				System.out.println("�̹� �����ϴ� ���̵� �Դϴ�.");
	%>
				
	<%
				response.sendRedirect("./index.jsp");
		}else {	
				System.out.println("ȸ������ ����!");
	%>
				out.println("ȸ������ ����!");
	<% 
				response.sendRedirect("./index.jsp");	
		}
	%>
</body>
</html>