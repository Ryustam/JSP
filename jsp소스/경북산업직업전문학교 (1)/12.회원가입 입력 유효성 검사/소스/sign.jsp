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
		alert("���̵� �Է����ּ���");
		form.userId.focus();
		return false;
	} else if (form.password.value == "") {
		alert("��й�ȣ�� �Է����ּ���");
		form.password.focus();
		return false;
	}
	form.submit();
}
</script>
</head>
<body>
	<form name="regForm">
		<label for="userId">���̵�:</label>
		<input type="text" name="userId" id="userId" placeholder="���̵� �Է��ϼ���"> <br>
		<input type="button" onclick="IdCheck()" value="���̵� �ߺ�üũ"> <br>
		<label for="password">��й�ȣ:</label>
		<input type="password" name="password" placeholder="��й�ȣ�� �Է��ϼ���"> <br>
		<label for="password_confirm">��й�ȣ:</label>
		<input type="password" name="password_confirm" placeholder="��й�ȣȮ��"> <br>
		
		<input type="submit" value="ȸ������" id="signBtn" onclick="checkform()">
	</form>
</body>
</html>