<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<header id="header">
		<ul>
		<li><a href="/">Ȩ</a></li>
		<%
		Object userId = session.getAttribute("userId");
		%>
		<%
		if(userId==null){
		%>
		<li><a href="./login.jsp">�α���</a></li>
		<li><a href="./form.jsp">ȸ������</a></li>
		<%
		} else {
		%>
		<li><a href="./logoutAction.jsp">�α׾ƿ�</a></li>
		<li><a href="">������������</a></li>
		<%
		}
		%>
		</ul>
		</header>
		<div id="contents">
		
		</div>
		<footer id="footer">
		
		</footer>
	</div>
</body>
</html>