<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>정보를 입력하시오</h2>
<form action="ex7_03Pro.jsp" method="post">
학번:<input type="text" name="hak"> <br>
이름:<input type="text" name="name"> <br>
전공:
<select name="major">
<option value="컴퓨터공학">컴퓨터공학</option>
<option value="전자공학">전자공학</option>
<option value="기계공학">기계공학</option>
</select>
	<input type="submit" value="입력완료">
</form>
</body>
</html>