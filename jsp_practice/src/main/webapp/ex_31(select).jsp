<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미선택</title>
</head>
<body>
당신의 취미를 선택하세요. <br>

<form method="get" action="ex_31(get).jsp">

<select name="hobby">
<option value="등산" selected>등산 </option>
<option value="낚시" selected>낚시 </option>
<option value="여행" selected>여행 </option>
<option value="독서" selected>독서 </option>
<option value="운동" selected>운동 </option>
<option value="기타" selected>기타 </option>

</select> <br>
<input type="submit" value="전송"> 
<input type="reset" value="취소">

</form>

</body>
</html>