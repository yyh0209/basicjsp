<%@page import="ch12.member.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<%
	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd"); //html에서 name이 passwd를 찾는다.

	LogonDBBean logon = LogonDBBean.getInstance();
	int check=logon.userCheck(id, passwd);
	
	if(check==1){
		session.setAttribute("id", id);
		response.sendRedirect("sessionMain.jsp");
	}else if(check==0){%>
		<script>
		alert("비밀번호가 맞지 않습니다.");
		history.go(-1);
		</script>
		<%
		}else{
		%>
		<script>
		alert("아이디가 맞지 않습니다.");
		history.go(-1);
		</script>
<%}%>