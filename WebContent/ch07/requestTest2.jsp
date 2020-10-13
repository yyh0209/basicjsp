<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String names[]={"프로토콜 이름","서버이름","Method방식","콘텍스트 경로","URI","접속한 클라이언트의 IP"};
	String values[] ={
			request.getProtocol(),
			request.getServerName(),
			request.getMethod(),
			request.getContextPath(),
			request.getRequestURI(),
			request.getRemoteAddr()
	};
	Enumeration <String> en=request.getHeaderNames();
	//제네릭타입 선언
	String headerName="";
	String headerValue="";
%>
<html>
<head>
<title></title>
</head>
<body>
	<h2>웹브라우저와 웹 서버 정보 표시</h2>
	<%
		for(int i=0;i<names.length;i++){
			out.println(names[i]+":"+values[i]+"<br>"); //한번돌때마다 개행 names의 길이만큼 나열
		}
	%>
	
	<h2>헤더 정보 표시</h2>
	<%
	//헤더네임을 담은 en은 Enumeration 타입의 인스턴스: 문자열만 담을수있다.
		while(en.hasMoreElements()){
			headerName=en.nextElement();
			headerValue=request.getHeader(headerName);
			out.println(headerName+":"+headerValue+"<br>"); 
			//:를 기준으로 이름:벨류를 나눈다.
		}
	%>
</body>
</html>