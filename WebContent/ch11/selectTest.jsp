<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>레코드 표시</h2>
	<table border="1">
	<tr>
		<td width="100">아이디</td>
		<br>
		<td width="100">패스워드</td>
		<br>
		<td width="100">이름</td>
		<br>
		<td width="250">가입일자</td>
		<br>
	</tr>
	<%
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs=null;
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
			String dbId = "jspid";
			String dbPass = "jsppass";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

			String sql = "select * from member ";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery(); //select문은 query
			
			//여러줄은 while
			while(rs.next()){
				String id = rs.getString("id");
				String passwd=rs.getString("passwd");
				String name =rs.getString("name");
				Timestamp register = rs.getTimestamp("reg_date");
		%>
		<tr>
		<td width="100"><%=id %></td>
		<br>
		<td width="100"><%=passwd %></td>
		<br>
		<td width="100"><%=name %></td>
		<br>
		<td width="250"><%=register.toString()%></td>
		<br>
		</tr>
			<% }
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)
			try{rs.close();}catch(SQLException e){}
			
		}if(ps!=null)try{ps.close();}catch(SQLException e){}
		if(conn!=null){try{conn.close();}catch(SQLException e){}
		}
			%>
	</table>
</body>
</html>