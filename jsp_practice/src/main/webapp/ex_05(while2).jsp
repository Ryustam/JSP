<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>while 중첩 Example</h1>
<%!
	int dan=2;
	int num=1;
%>

<%
	while(dan<=9){
		num=1;
		while(num<=9){
			out.print(dan+"*"+num+"="+(dan*num));
			num++;
			out.print("<br>");
		}
	out.print("<br>");
	dan++;
	}
%>

</body>
</html>