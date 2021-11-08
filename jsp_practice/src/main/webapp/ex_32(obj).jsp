<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체 예제</title>
</head>
<body>
<form method="get" action="ex_32(get).jsp">

이름을 입력하세요 <input type="text" name="userName"> <br>
나이를 입력하세요 <input type="text" name="age"> <br>

아래에서 좋아하는 동물을 선택하세요! <br>
<input type="checkbox" name="animals" value="tiger">호랑이 <br>
<input type="checkbox" name="animals" value="eagle">독수리 <br>
<input type="checkbox" name="animals" value="pigeon">비둘기 <br>
<input type="checkbox" name="animals" value="lion">사자 <br>
<input type="submit" value="전송"> 
<input type="reset" value="취소">
</form>
</body>
</html>