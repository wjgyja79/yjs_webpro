<%@page import="com.lec.ex.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<% // 자바에서 구현될 소스
		Member member = new Member("aaa", "111","홍길동");
		request.setAttribute("member", member);
	%>
	<h1>회원정보 (el표기법)</h1>
	<h3>member : ${member }</h3>
	<h3>ID : ${member.id }</h3> <!-- getId() -->
	<h3>PW : ${member.pw }</h3>
	<h3>name : ${member.name }</h3>
</body>
</html>















