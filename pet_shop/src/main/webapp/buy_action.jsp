<%@page import="dao.goodsDAO"%>
<%@page import="dto.goodsDTO"%>
<%@page import="dao.userDAO"%>
<%@page import="dto.userDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
private userDTO user_dto;
%>
<%


Object userID = session.getAttribute("userId");
userDAO buy = new userDAO();
String ID = String.valueOf(userID);


String[] num = request.getParameterValues("low");

String temp = request.getParameter("buy");
if(temp.equals("구매")){
	for(int i=0;i<num.length;i++){
		user_dto=buy.getBuy(Integer.parseInt(num[i]),ID);
		buy.Buy(Integer.parseInt(num[i]), ID);
		buy.buyList(user_dto);
	}
}else{
	for(int i=0;i<num.length;i++){
		buy.BuyDelete(Integer.parseInt(num[i]), ID);
	}
}

response.sendRedirect("./buy.jsp");
%>
</body>
</html>