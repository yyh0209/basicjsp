<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	
	session.setAttribute("id", id);
	session.setAttribute("passwd",passwd);
%>
id와 passwd 세션을 설정하였습니다.
아이디 속성의 값은
<%=(String)session.getAttribute("id")%>이고
패스워드 속성의 값은
<%=(String)session.getAttribute("passwd")%>입니다

</body>
</html>