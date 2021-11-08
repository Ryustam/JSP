<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>For Example</h1>
for문 감소연산자로 줄여가기 <p>
<%
	for(int i=10;i>=0;i=i-2){
		out.print(i+",");
	}
%>
</body>
</html>