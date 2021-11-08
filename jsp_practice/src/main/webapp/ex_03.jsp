<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%!
String str ="박보겸";
int age=25;
double height=175;
double weight=65;
%>
</head>
<body>
<p>내 이름은 <%= str %></p>
<p>나이는 <%= age %></p>
<p>키는 <%= height %></p>
<p>몸무게는 <%= weight %></p>
</body>
</html>