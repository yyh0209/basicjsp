<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out 내장객체</title>
</head>
<body>
<h2>out 내장객체 =out.println 활용</h2>
<%
	String name="King";
out.println("출력내용은 <b>"+name+"</b>");
%>
<h2>표현식</h2>
출력내용은<b><%=name %></b>입니다.
</body>
</html>