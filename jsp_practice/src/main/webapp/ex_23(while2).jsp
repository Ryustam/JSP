<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	int h = Integer.parseInt(request.getParameter("height"));
%>
<% 
	int i=1;
	int j=1;
	while(i<=h){
		j=1;
		while(j<=i){
			out.print("*");
			j++;
		}
		out.print("<br>");
		i++;
	}
%>

</body>
</html>