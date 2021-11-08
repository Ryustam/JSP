<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전공선택</title>
</head>
<body>
당신의 전공을 선택하십시오! <br>
<form method="get" action="ex_29(get).jsp">

<input type="radio" name="major" value="웹서비스" checked>웹서비스<br> 
<input type="radio" name="major" value="임베디드" checked>임베디드<br> 
<input type="radio" name="major" value="보안" checked>보안<br> 
<input type="submit" value="전송"> 
<input type="reset" value="취소">

</form>

</body>
</html>