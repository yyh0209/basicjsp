<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name=request.getParameter("name");
String pageName=request.getParameter("pageName");
%>

포함하는 페이지는 <%=pageName %>입니다.. <br>

<%=name %>님 환영합니다.

<hr>