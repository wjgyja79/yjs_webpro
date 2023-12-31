<%@page import="com.lec.customer.CustomerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String conPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="<%=conPath %>/css/header.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<div id="gnb">
		<% CustomerDto cutomer = (CustomerDto)session.getAttribute("customer"); %>
		<%if(cutomer==null){  // 로그인 전 해더화면 %>
				<ul>
					<li><a href="<%=conPath %>/customer/joinForm.jsp">회원가입</a></li>
					<li><a href="<%=conPath%>/customer/loginForm.jsp">로그인</a></li>
					<li><a href="<%=conPath%>/customer/main.jsp">홈</a></li>
				</ul>
		<%}else{ // 로그인 후 해더화면%>
				<ul>
					<li><a href="<%=conPath%>/customer/logout.jsp">로그아웃</a></li>
					<li><a href="<%=conPath %>/customer/modifyForm.jsp">정보수정</a></li>
					<li><a href="<%=conPath%>/customer/main.jsp"><%=cutomer.getCname() %>님</a></li>
				</ul>
		<%}%>		
		</div>
	</header>
</body>
</html>