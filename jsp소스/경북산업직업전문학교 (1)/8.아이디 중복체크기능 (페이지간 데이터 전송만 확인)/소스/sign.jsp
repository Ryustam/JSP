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
	/* POST ��� */
	httpRequest.open("POST", "IdCheckAction.jsp", true);
	//encoding�� ��ȣȭ
	httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	//send�޼ҵ忡 �μ� ����
	httpRequest.send("id="+id);
	
	httpRequest.onreadystatechange = function(){
		// ��û�� ���信 �������� ��
		if(httpRequest.readyState == XMLHttpRequest.DONE && httpRequest.status == 200){
			// ���� ���� �޾ƿ´�.
			alert( "result"+httpRequest.responseText);
		}
	}
}
</script>
</head>
<body>
	<form>
		<label for="userId">���̵�:</label>
		<input type="text" name="userId" id="userId" placeholder="���̵� �Է��ϼ���"> <br>
		<input type="button" onclick="IdCheck()" value="���̵� �ߺ�üũ"> <br>
		<label for="password">��й�ȣ:</label>
		<input type="password" name="password" placeholder="��й�ȣ�� �Է��ϼ���"> <br>
		<label for="password_confirm">��й�ȣ:</label>
		<input type="password" name="password_confirm" placeholder="��й�ȣȮ��"> <br>
		
		<input type="submit" value="ȸ������" id="signBtn">
	</form>
</body>
</html>