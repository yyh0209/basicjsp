<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name=request.getParameter("name");
%>
포함하는 페이지는 includedTest.jsp입니다. <br>

<%=name %>님 환영합니다.

<hr>