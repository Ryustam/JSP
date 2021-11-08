<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD REMOVE ACTION</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
if(request.getParameter("boardNo") == null || request.getParameter("boardPw") == null) {
    response.sendRedirect(request.getContextPath()+"/board/3.Board_List.jsp");
} else {
    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    System.out.println("boardNo :"+boardNo);
    String boardPw = request.getParameter("boardPw");
    System.out.println("boardPw :"+boardPw);
    String dbUrl = "jdbc:mysql://127.0.0.1:3306/jsp_board?serverTimezone=UTC&useSSL=false";
	String dbUser = "root";
    String dbPw = "1234";
    Connection connection = null;
    PreparedStatement statement = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
        String sql = "DELETE FROM jsp_board_table WHERE board_no=? AND board_pw=?";
        statement = connection.prepareStatement(sql);
        statement.setInt(1, boardNo);
        statement.setString(2, boardPw);
        if(statement.executeUpdate()==1){
            response.sendRedirect(request.getContextPath()+"/board/3.Board_List.jsp");
        } else {
            response.sendRedirect
            (request.getContextPath()+"/board/5.Board_Remove.jsp?boardNo="+boardNo);
        }
    } catch(Exception e) {
        e.printStackTrace();
        out.print("BOARD REMOVE ERROR!");
    } finally {
        try {statement.close();} catch(Exception e){}
        try {connection.close();} catch(Exception e){}
    }
}
%>
<input type="button" name="back_page" value="이전"onclick="location.href='0.Select.html'">

</body>
</html>
