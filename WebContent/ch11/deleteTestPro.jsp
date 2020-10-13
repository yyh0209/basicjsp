<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");

Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;

try {
	String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
	String dbId = "jspid";
	String dbPass = "jsppass";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

	String sql = "select id,passwd from member where id=?";
	ps = conn.prepareStatement(sql);
	ps.setString(1,id);
	rs = ps.executeQuery(); //select문은 query

	if (rs.next()) {
		String rId = rs.getString("id");
		String rPasswd = rs.getString("passwd");
		if(id.equals(rId)&&passwd.equals(rPasswd)){
			sql = "delete from member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
%>
<html>
	<head>
		<title>레코드 삭제</title>
	</head>
	<body>
		member 테이블의 레코드를 삭제했습니다.
	</body>
</html>
<%
}else
	out.println("패스워드가 틀렸습니다");
	}else
	out.println("아이디가 틀렸습니다");
} catch (Exception e) {
e.printStackTrace();
} finally {
if (rs != null)try {rs.close();} catch (SQLException e) {}
if (ps != null)try {ps.close();} catch (SQLException e) {}
if (conn != null)try {conn.close();} catch (SQLException e) {}
}
%>