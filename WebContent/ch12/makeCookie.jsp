<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cookieName = "id";
Cookie cookie =new Cookie(cookieName,"hongkd");
cookie.setMaxAge(60*2);
response.addCookie(cookie); //저장


%>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>
</head>
<body>
<h2>쿠키를 생성하는 페이지</h2>
<form action="userCookie.jsp" method="post">
	<input type="submit" value="생성된 쿠키를 확인">
</form>
</body>
</html>