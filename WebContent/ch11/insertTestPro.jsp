<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("UTF-8");%>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	Timestamp register = new Timestamp(System.currentTimeMillis());

Connection conn = null;
PreparedStatement ps = null;
String str = "";
try {
	String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
	String dbId = "jspid";
	String dbPass = "jsppass";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

	String sql = "INSERT INTO member "
	+"VALUES"
	+"(?,?,?,?)";
	ps=conn.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, passwd);
	ps.setString(3, name);
	ps.setTimestamp(4, register);
	ps.executeUpdate();
	
} catch (Exception e) {
	e.printStackTrace();
	str="member 테이블에 새로운 레코드를 추가했습니다";
}finally{
	if(ps != null){
		try{ps.close();}catch(SQLException e){}
	}
	if(conn != null){
		try{conn.close();}catch(SQLException e){}
	}		
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 추가</title>
</head>
<body>
<%=str %>
</body>
</html>