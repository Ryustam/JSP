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
				System.out.println("�α��� ����!");
	%>
				out.println("���� ���̵� �Դϴ�.");
	<%
				response.sendRedirect("./index.jsp");
				break;
			case 1:
				System.out.println("�α��� ����!:���ǿ� �� ����!");
				session.setAttribute("userId", userId);
				response.sendRedirect("./index.jsp");
				break;
			case 2:
				System.out.println("�α��� ����!");
	%>
				out.println("��й�ȣ�� �ٸ��ϴ�");
	<%
				response.sendRedirect("./index.jsp");
				break;
		}	
	%>
</body>
</html>