<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2>jdbc드라이버 테스트</h2>
<%
	Connection conn = null;
	try{
		String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
		String dbId="jspid";
		String dbPass="jsppass";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		out.println("연결되었습니다");
	}catch(Exception e){
		e.printStackTrace();
	}
%>