<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD LIST</title>
</head>
<body>
<h1>글 목록 출력</h1>
<%
int currentPage = 1;
if(request.getParameter("currentPage") != null) {
    currentPage = Integer.parseInt(request.getParameter("currentPage"));
}
 
int totalRowCount = 0;
 
String dbUrl = "jdbc:mysql://127.0.0.1:3306/jsp_board?serverTimezone=UTC&useSSL=false";
String dbUser = "root";
String dbPw = "1234";
Connection connection = null;
PreparedStatement totalStatement = null;
PreparedStatement listStatement = null;
ResultSet totalResultSet = null;
ResultSet listResultSet = null;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
    
    String totalSql = "SELECT COUNT(*) FROM jsp_board_table";
    totalStatement = connection.prepareStatement(totalSql);
    totalResultSet = totalStatement.executeQuery();
    if(totalResultSet.next()) {
        totalRowCount = totalResultSet.getInt(1);
    }
%>
    <div>전체행의 수 : <%=totalRowCount%></div>
    
<%    
    int pagePerRow = 10;
String listSql 
= "SELECT board_no, board_title, board_user, board_date FROM jsp_board_table ORDER BY board_date DESC LIMIT ?, ?";

    listStatement = connection.prepareStatement(listSql);
    listStatement.setInt(1, (currentPage-1)*pagePerRow); 
    listStatement.setInt(2, pagePerRow); 
    listResultSet = listStatement.executeQuery();
%>	
	<div>현재 페이지 : <%=currentPage%></div>
    <div>행당 페이지 : <%=pagePerRow%></div>

    <table border="1">
        <thead>
            <tr>
                <th>boardTitle</th>
                <th>boardUser</th>
                <th>boardDate</th>
            </tr>
        </thead>
        <tbody>
<%
            while(listResultSet.next()) {
%>
	<tr>
    <td>
        <a href="<%=request.getContextPath()%>/board/4.Board_View.jsp?boardNo=<%=listResultSet.getInt("board_no")%>">
            <%=listResultSet.getString("board_title")%>
        </a>
    </td>
    <td><%=listResultSet.getString("board_user")%></td>
    <td><%=listResultSet.getString("board_date")%></td>
	</tr>
<%        
  }
%>
        </tbody>
    </table>
    <div>
        <a href="<%=request.getContextPath()%>/board/1.Board_Input.jsp">게시글 입력</a>
    </div>
<%
    int lastPage = totalRowCount/pagePerRow;
    if(totalRowCount%pagePerRow != 0) {
        lastPage++;
    }
%>
    <div>
<%
        if(currentPage>1) {
%>
            <a href="<%=request.getContextPath()%>/board/3.Board_List.jsp?currentPage=<%=currentPage-1%>">이전</a>
<%
        }
        if(currentPage < lastPage) {
%>

            <a href="<%=request.getContextPath()%>/board/3.Board_List.jsp?currentPage=<%=currentPage+1%>">다음</a>
<%
        }
%>
    </div>
<%
} catch(Exception e) {
    e.printStackTrace();
    out.print("데이터 가져오기 에러!");
} finally {
    try {totalResultSet.close();} catch(Exception e){}
    try {listResultSet.close();} catch(Exception e){}
    try {totalStatement.close();} catch(Exception e){}
    try {listStatement.close();} catch(Exception e){}
    try {connection.close();} catch(Exception e){}
}
%>
</body>
<input type="button" name="back_page" value="이전"onclick="location.href='0.Select.html'">

</html>

