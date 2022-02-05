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
	var httpRequest = new XMLHttpRequest();
	var id=document.getElementById("userId").value;
	alert(id);
	/* POST 방식 */
	httpRequest.open("POST", "IdCheckAction.jsp", true);
	//encoding은 암호화
	httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	//send메소드에 인수 전달
	httpRequest.send("id="+id);
	
	httpRequest.onreadystatechange = function(){
		// 요청과 응답에 성공했을 때
		if(httpRequest.readyState == XMLHttpRequest.DONE && httpRequest.status == 200){
			// 응답 값을 받아온다.
			alert( "result"+httpRequest.responseText);
		}
	}
}
</script>
</head>
<body>
	<form>
		<label for="userId">아이디:</label>
		<input type="text" name="userId" id="userId" placeholder="아이디를 입력하세요"> <br>
		<input type="button" onclick="IdCheck()" value="아이디 중복체크"> <br>
		<label for="password">비밀번호:</label>
		<input type="password" name="password" placeholder="비밀번호를 입력하세요"> <br>
		<label for="password_confirm">비밀번호:</label>
		<input type="password" name="password_confirm" placeholder="비밀번호확인"> <br>
		
		<input type="submit" value="회원가입" id="signBtn">
	</form>
</body>
</html>