<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장객체</title>
</head>
<body>
<h2>application 내장객체</h2>
<%
	String info = application.getServerInfo(); //서버이름이 아파치 톰캣이다.
	String path = application.getRealPath("/");
	application.log("로그기록");
	
%>

웹 컨테이너 이름,버전:<%=info%><!--톰캣이 저장된다.-->
경로는:
<!-- E:\yoo\workspace_jsp\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\StudyBasicJSP\  -->

웹 에플리케이션 폴더의 로컬 시스템 경로:<%=path%>

</body>
</html>