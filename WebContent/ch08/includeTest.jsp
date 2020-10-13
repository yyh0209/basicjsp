<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%
	String pageName=request.getParameter("pageName");
	pageName+=".jsp";
	//페이지 이름에다 jsp를 더한다.
%>
포함하는 페이지는 includeTest.jsp입니다.

<hr>
<jsp:include page="<%=pageName%>" flush="false"/>