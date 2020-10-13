<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%
	String pageName="includedTest2.jsp";
	String name="김철수";
%>

포함하는 페이지는 includeTest2.jsp입니다.<br>
포함하는 페이지에 파라미터 값을 전달합니다..<br>
<hr>

<jsp:include page="<%=pageName%>" flush="false">
<jsp:param name="name" value="<%=name %>" />
<jsp:param name="pageName" value="<%=pageName %>" />
</jsp:include>
 includeTest2.jsp 의 나머지 내용