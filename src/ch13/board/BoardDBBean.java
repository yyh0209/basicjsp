package ch13.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBBean {
	private static BoardDBBean instance = new BoardDBBean();

	public static BoardDBBean getinstance() {
		return instance;
	}

	private BoardDBBean() {
	}

	// 커넥션 풀
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:/comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/basicjsp");
		return ds.getConnection();

	}

	// 글을 추가
	public void insertArticle(BoardDataBean article) throws Exception {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int num=article.getNum();
		int ref=article.getRef();
		int re_step = article.getRe_step();
		int re_level=article.getRe_level();
		int number=0;
		String sql="";
		try {
			conn=getConnection();
			ps=conn.prepareStatement("select max(num)from board");
			rs=ps.executeQuery();
			if(rs.next()) {
				number=rs.getInt(1)+1;
			}
			else {
				number=1;
			}
			if(num!=0) {
				sql="update board set re_step=re_step+1";
				sql+="where ref=? and re+step> ?"; //
				ps=conn.prepareStatement(sql);
				ps.setInt(1, ref);
				ps.setInt(2, re_step);
				ps.executeUpdate();
				re_step=re_step+1;
				re_level=re_level+1;
			}else {
				ref=number;
				re_step=0;
				re_level=0;
			}
			sql = "insert into board(writer,email,subject,passwd,reg_date,";
			sql+="ref,re_step,re_level,content,ip) values(?,?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, article.getWriter());
			ps.setString(2, article.getEmail());
			ps.setString(3, article.getSubject());
			ps.setString(4, article.getPasswd());
			ps.setTimestamp(5, article.getReg_date());
			ps.setInt(6, ref);
			ps.setInt(7, re_step);
			ps.setInt(8, re_level);
			ps.setString(9, article.getContent());
			ps.setString(10, article.getIp());
			
			ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)try {rs.close();}catch(SQLException e){}
			if(ps!=null)try {ps.close();}catch(SQLException e){}
			if(conn!=null)try {conn.close();}catch(SQLException e){}
		}
	}
	public int getArticleCount() {
		
	}
	
}
