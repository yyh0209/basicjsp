<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String id="";
	String password="";
	id=request.getParameter("id");
	password=request.getParameter("password");
	
	if(id==null||id.equals(""))
		id="test";
	if(password==null||password.equals(""))
		password="testPass";
%>

ex8_04To.jsp페이지로 포워딩
<jsp:forward page="ex8_04To.jsp">
	<jsp:param value="<%=id %>" name="id"/>
	<jsp:param value="<%=password %>" name="password"/>
</jsp:forward>