<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="MyPackage.Person" %>
<%@ page import="MyPackage.Student" %>
<jsp:useBean id="MyPerson" class="MyPackage.Person" scope="page"/>
<jsp:setProperty name="MyPerson" property="name" value="???߱?"/>
<jsp:setProperty name="MyPerson" property="age" value="30"/>
<jsp:setProperty name="MyPerson" property="height" value="176.5"/>

<jsp:useBean id="MyStudent" class="MyPackage.Student" scope="page"/>
<%
MyStudent.setPerson(MyPerson);
%>
<jsp:setProperty name="MyStudent" property="GPA" value="3.7"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	MyStudent.Intoduce_Student();
%>
</body>
</html>