<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<%
	String id = "kung";
	String hobby = "만화그리기";
%>
포워딩 하는 페이지
<jsp:forward page="forwardToTest.jsp">
	<jsp:param value="<%=id %>" name="id"/>
	<jsp:param value="<%=hobby%>" name="hobby"/>
</jsp:forward>