  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판에 글 추가(DB테이블에 추가)</title>
</head>
<body>
<h1>게시판에 글 추가</h1>
<form action="<%=request.getContextPath()%>/board/2.Board_Add.jsp" method="post">
    <div>글 비밀번호 : </div>
    <div><input name="boardPw" id="boardPw" type="password"/></div>
    <div>글 제목 : </div>
    <div><input name="boardTitle" id="boardTitle" type="text"/></div>
    <div>글 내용 : </div>
    <div><textarea name="boardContent" id="boardContent" rows="5" cols="50"></textarea></div>
    <div>작성자 : </div>
    <div><input name="boardUser" id="boardUser" type="text"/></div>
    <div>
        <input type="submit" value="글입력"/>
        <input type="reset" value="초기화"/>
    </div>
</form>
</body>

<input type="button" name="back_page" value="이전"onclick="location.href='0.Select.html'">


</html>


