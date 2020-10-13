<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  page errorPage="error.jsp" %>
    <!-- 에러가 발생하면 날아감. -->
<%
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd"); //현재시간
	String strdate=simpleDate.format(date);//현재시간
%>
보통의 jsp페이지형태
오늘의 날짜는 <%=strdate%>