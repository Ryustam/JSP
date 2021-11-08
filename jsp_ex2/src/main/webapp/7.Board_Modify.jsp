<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD MODIFY FORM</title>
</head>
<body>
<h1>BOARD MODIFY</h1>
<%
request.setCharacterEncoding("UTF-8");
if(request.getParameter("boardNo") == null) {
    response.sendRedirect(request.getContextPath()+"/board/3.Board_List.jsp");
} else {
    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    System.out.println("boardModify param boardNo:"+boardNo);
    String boardTitle = "";
    String boardContent = "";
    
    String dbUrl = "jdbc:mysql://127.0.0.1:3306/jsp_board?serverTimezone=UTC&useSSL=false";
	String dbUser = "root";
    String dbPw = "1234";
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;
    try {
    	Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
String selectSql = "SELECT board_title, board_content FROM jsp_board_table WHERE board_no=?";
        statement = connection.prepareStatement(selectSql);
        statement.setInt(1, boardNo);
        resultSet = statement.executeQuery();
        if(resultSet.next()) {
            boardTitle = resultSet.getString("board_title");
            boardContent = resultSet.getString("board_content");
        } else {
            response.sendRedirect(request.getContextPath()+"/board/3.Board_List.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.print("BOARD MODIFY FROM ERROR!");
    } finally {
        try {resultSet.close();} catch(Exception e){}
        try {statement.close();} catch(Exception e){}
        try {connection.close();} catch(Exception e){}
    }
%>    
    <form action="<%=request.getContextPath()%>/board/8.Board_Modify_Action.jsp" method="post">
        <div>boardNo</div>
        <div><input name="boardNo" value="<%=boardNo%>" type="text" readonly="readonly"/></div>
        <div>비밀번호 확인</div>
        <div><input name="boardPw" id="boardPw" type="password"/></div>
        <div>boardTitle : </div>
        <div><input name="boardTitle" value="<%=boardTitle%>" id="boardTitle" type="text"/></div>
        <div>boardContent : </div>
        <div>
<textarea name="boardContent" id="boardContent" rows="5" cols="50"><%=boardContent%></textarea></div>
        <div>
            <input type="submit" value="글수정"/>
            <input type="reset" value="초기화"/>
        </div>
    </form>
<%
}    
%>
</body>
<input type="button" name="back_page" value="이전"onclick="location.href='0.Select.html'">

</html>


