<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그</title>
</head>
<body>
<h2>include 액션태그</h2>
<!-- submit이 form태그의 액션에 적힌 경로로 전달함. -->
<form action="includeTest.jsp" method="post"><br>
이름:<input type="text" name="name"><br>
페이지명:<input type="text" name="pageName"value="includedTest"><br>
<input type="submit"value="입력완료">
</form>
</body>
</html>