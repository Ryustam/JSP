<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>for and if~else</h1>

<%
	for(int i=0;i<=30;i++){
		if(i%2==0){
			out.print(i+" ");
		}
	}
%>
</body>
</html>