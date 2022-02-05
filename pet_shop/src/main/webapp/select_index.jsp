<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dao.userDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
userDAO user = new userDAO();

Object userID = session.getAttribute("userId");



String ID = String.valueOf(userID);
String good = request.getParameter("goodName");
String price_ =request.getParameter("goodPrice");
int price = Integer.parseInt(price_);

String pageNum_ = request.getParameter("pageNum");
int pageNum = Integer.parseInt(pageNum_);

user.goodInsert(ID,good,price);

response.sendRedirect("./index.jsp?pageNum="+pageNum);
%>
	
	
	
</body>
</html>