<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="./css/sign.css" rel="stylesheet" type="text/css">
<script>
function IdCheck(){
	alert("IdCheck!");
	
	window.open("IdCheckForm.jsp", "idwin", "width=400, height=350");
}

function checkform() {
	alert("checkform!");
	var form = document.regForm;
	if(form.userId.value=="") {
		alert("아이디를 입력해주세요");
		form.userId.focus();
		return false;
	} else if (form.password.value == "") {
		alert("비밀번호를 입력해주세요");
		form.password.focus();
		return false;
	}
	form.submit();
}
</script>
</head>
<body>
	<form name="regForm">
		<label for="userId">아이디:</label>
		<input type="text" name="userId" id="userId" placeholder="아이디를 입력하세요"> <br>
		<input type="button" onclick="IdCheck()" value="아이디 중복체크"> <br>
		<label for="password">비밀번호:</label>
		<input type="password" name="password" placeholder="비밀번호를 입력하세요"> <br>
		<label for="password_confirm">비밀번호:</label>
		<input type="password" name="password_confirm" placeholder="비밀번호확인"> <br>
		
		<input type="submit" value="회원가입" id="signBtn" onclick="checkform()">
	</form>
</body>
</html>