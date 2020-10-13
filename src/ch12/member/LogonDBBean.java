package ch12.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LogonDBBean {
	private static LogonDBBean instance = new LogonDBBean();
	
	public static LogonDBBean getInstance() {
		return instance;
	}
	//기본생성자
	private LogonDBBean() {
		
	}
	private Connection getConnection()throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
		return ds.getConnection();
	}
	public void insertMember(LogonDataBean member) {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=getConnection();
			
			ps=conn.prepareStatement("insert into member values(?,?,?,?)");
			ps.setString(1, member.getId());
			ps.setString(2, member.getPasswd());
			ps.setString(3, member.getName());
			ps.setTimestamp(4, member.getReg_date());
			ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(ps!=null)try {ps.close();}catch(SQLException ex) {}
			if(conn!=null)try {conn.close();}catch(SQLException ex) {}
		}
	}
	
	public int userCheck(String id,String passwd)throws Exception{
		Connection conn =null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		int x=1;
		try {
			conn=getConnection();
			
			ps=conn.prepareStatement("select passwd from member where id=?");
			ps.setString(1, id);
			rs=ps.executeQuery();
			ps.executeUpdate();
			if(rs.next()) {
				dbpasswd = rs.getString("passwd");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(ps!=null)try {ps.close();}catch(SQLException ex) {}
			if(conn!=null)try {conn.close();}catch(SQLException ex) {}
		}
		
		return x;
		
		}
	}

