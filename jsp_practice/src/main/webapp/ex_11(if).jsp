<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>if Example</h1>

<%!
	int sum=0;
	int last_num=0;
%>

<%
	for(int i=0; i<=200; i++){
		if(sum>=5000){
			last_num=i-1;
			break;
		}else{
			sum+=i;
		}
	}
%>
<%="마지막에 더한 숫자:"+last_num%>

</body>
</html>