<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 이 페이지는 ex2.jsp에서 예외가 발생하면 오는 페이지 --%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!-- 
	200 : 정상상태
	404 : 해당 문서를 찾을 수 없을 때
	500 : 문법오류나 예외가 발생했을 때
	400, 407 : 인증을 받지 못한 경우
 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script>
		console.log('예외 메세지 : <%=exception.getMessage()%>');		
		console.log('예외 타입 : <%=exception.getClass().getName()%>');
	</script>
</head>
<body>
	<h1>공사중입니다. 조속한 시일내에 복구하겠습니다</h1>
	<%
		System.out.println("예외 메세지 : " + exception.getMessage());
		System.out.println("예외 타입 : " + exception.getClass().getName());
	%>
</body>
</html>




