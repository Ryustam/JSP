<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="./resources/css/sign.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form action="./sign_action.jsp" method="post">
		<label for="userId">���̵�:</label>
		<input type="text" name="userId" placeholder="���̵� �Է��ϼ���"> <br>
		<label for="password">��й�ȣ:</label>
		<input type="password" name="password" placeholder="��й�ȣ�� �Է��ϼ���"> <br>
		<label for="password_confirm">��й�ȣ:</label>
		<input type="password" name="password_confirm" placeholder="��й�ȣȮ��"> <br>
		
		<input type="submit" value="ȸ������" id="signBtn">
	</form>
</body>
</html>