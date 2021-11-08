<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	String Name[] = new String[3];
	Name[0]="송중기";
	Name[1]="안은진";
	Name[2]="안철수";
	
	String Sub[] = new String[3];
	Sub[0] ="자바 프로그래밍";
	Sub[1] ="JSP 프로그래밍";
	Sub[2] ="운영체제";
	
	String grade[][] = new String[3][3];
	grade[0][0]="A+";
	grade[0][1]="A0";
	grade[0][2]="A-";
	
	grade[1][0]="B+";
	grade[1][1]="B0";
	grade[1][2]="B-";
	
	grade[2][0]="C+";
	grade[2][1]="C0";
	grade[2][2]="C-";
%>

</head>
<body>

	<table border='1'>
	<tr>
		<th><%=" "%>></th>
		<% for(int i=0;i<3;i++) {%>
		<th><%=Sub[0]%></th>
		<%}%>
	</tr>
	<% for(int i=0;i<3;i++) {%>
	<tr>
		<td><%=Name[i]%></td>
		<% for(int j=0;j<3;j++) {%>
		<td><%=grade[i][j]%></td>
		<%} %>
	</tr>
	<%} %>
	</table>
</body>
</html>