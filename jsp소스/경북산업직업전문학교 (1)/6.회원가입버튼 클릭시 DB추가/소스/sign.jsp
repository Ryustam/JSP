<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="./css/sign.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form>
		<label for="userId">아이디:</label>
		<input type="text" name="userId" placeholder="아이디를 입력하세요"> <br>
		<label for="password">비밀번호:</label>
		<input type="password" name="password" placeholder="비밀번호를 입력하세요"> <br>
		<label for="password_confirm">비밀번호:</label>
		<input type="password" name="password_confirm" placeholder="비밀번호확인"> <br>
		
		<input type="submit" value="회원가입" id="signBtn">
	</form>
</body>
</html>