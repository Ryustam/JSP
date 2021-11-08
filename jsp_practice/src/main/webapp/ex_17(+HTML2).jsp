<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%!
	String lang1 ="C";
	String lang2 ="Java";
	String lang3 ="Python";
	
	String System1 = "Operating System";
	String System2 = "Kali Linux";
	String System3 = "Reverse Enginerring";
%>
</head>
<body>
	<p>해킹을 잘하기 위해서 뭘 공부하면 좋을까요?</p>
	<ul>
		<li>언어
		<ol>
			<li><%=lang1%></li>
			<li><%=lang2%></li>
			<li><%=lang3%></li>
		</ol>
		<li>시스템
		<ol>
			<li><%=System1%></li>
			<li><%=System2%></li>
			<li><%=System3%></li>
		</ol>
		
	</ul>
</body>
</html>