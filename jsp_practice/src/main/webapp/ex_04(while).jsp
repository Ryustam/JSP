<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>while Example</h1>
<p>1에서 10까지의 합?</p>
<%
	int i=1, sum=0;
	while(i<=10)
	{
		sum +=i;
		i++;
	}
%>
<%= sum %>
</body>
</html>