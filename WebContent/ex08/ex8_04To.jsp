<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String id=request.getParameter("id");
	String password=request.getParameter("password");
%>
<h2>수행결과</h2>
아이디:<%=id %><br>
비밀번호:<%=password %>