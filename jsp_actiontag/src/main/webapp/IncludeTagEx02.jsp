<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h1>ActionTag Ex02</h1>
<%
String siteName=request.getParameter("siteName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="IncludeTagTop2.jsp">
<jsp:param name="siteName" value="http://www.naver.com"/>
</jsp:include>
include ActionTag의 몸체입니다. <p>
<b><%=siteName %></b>
</body>
</html>