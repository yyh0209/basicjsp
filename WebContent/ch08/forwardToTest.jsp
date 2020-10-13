<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String hobby = request.getParameter("hobby");
%>
<b>
<%=id %>님의 취미는<%=hobby %>입니다.
</b>