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
<%! int sum=0; %>
<%
	for(int i=1; i<=10; i++){
		if(i<10){
			sum+=i;
			out.print(i+"+");
		}else{
			sum+=i;
			out.print(i+"=");
		}
	}
	out.print(sum);
%>

</body>
</html>