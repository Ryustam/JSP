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
	int num=Integer.parseInt(request.getParameter("num"));
	
	int arr[] =new int[9];
	
	for(int i=0; i<=8;i++){
		arr[i]=num*(i+1);
	}
%>

<form method="post" action="ex_27(get).jsp">
<%
	for(int i=0;i<=8;i++) {
%>
<input type="hidden" name="arr" value=<%=arr[i]%>>
<%} %>
<input type="submit" value="보내기">
</form>



</body>
</html>