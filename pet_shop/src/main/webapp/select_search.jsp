<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dao.userDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
userDAO user = new userDAO();
Object userID = session.getAttribute("userId");

String search = request.getParameter("search");


String ID = String.valueOf(userID);
String good = request.getParameter("goodName");
String price_ =request.getParameter("goodPrice");
int price = Integer.parseInt(price_);

user.goodInsert(ID,good,price);

/*response.sendRedirect("./search.jsp");*/
%>

<form action="./search.jsp" method="post" id="frm">
	<input type="hidden" name="search" value="<%=search%>">
</form>
<script type="text/javascript">
this.document.getElementById("frm").submit();
</script>

</body>
</html>