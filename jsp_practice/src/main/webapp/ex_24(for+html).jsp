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
	int num = Integer.parseInt(request.getParameter("num"));
%>

<%
	for(int i=1; i<=100;i++){
		if(i%num==0){
			out.print(i);
			out.print("<br>");
		}
	}
%>

</body>
</html>