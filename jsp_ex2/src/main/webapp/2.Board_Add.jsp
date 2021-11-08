<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String boardPw = request.getParameter("boardPw");
System.out.println("param boardPw:"+boardPw);
String boardTitle = request.getParameter("boardTitle");
System.out.println("param boardTitle:"+boardTitle);
String boardContent = request.getParameter("boardContent");
System.out.println("param boardContent:"+boardContent);
String boardUser = request.getParameter("boardUser");
System.out.println("param boardUser:"+boardUser);

String dbUrl = "jdbc:mysql://127.0.0.1:3306/jsp_board?serverTimezone=UTC&useSSL=false";
String dbUser = "root";
String dbPw = "1234";
Connection connection = null;
PreparedStatement statement = null;
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
    
String sql 
= "INSERT INTO jsp_board_table(board_pw, board_title, board_content, board_user, board_date) values(?,?,?,?,now())";

    statement = connection.prepareStatement(sql);
    statement.setString(1,boardPw);
    statement.setString(2,boardTitle);
    statement.setString(3,boardContent);
    statement.setString(4,boardUser);
    statement.executeUpdate();

} catch(Exception e) {
    e.printStackTrace();
    out.print("입력 예외 발생");
} finally {
    try {statement.close();} catch(Exception e){}
    try {connection.close();} catch(Exception e){}
}



%>
<input type="button" name="back_page" value="이전"onclick="location.href='0.Select.html'">

</body>
</html>

