<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String conPath = request.getContextPath(); 
	if(session.getAttribute("customer")==null){ // 로그인 전이면 로그인 후 책 등록
		response.sendRedirect(conPath + "/customer/loginForm.jsp?method=book/bookRegister");	
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../css/style.css" rel="stylesheet">
	<style>
		#content_form{
			width:1000px; margin: 0px auto; height: 570px; 
			text-align: center;
			color: #003300;
			padding-top:30px;
		}
		#content_form input {height: 20px; padding:3px; margin: 10px 0;}
		#content_form .btn {height: 50px; padding:3px; margin: 5px 0;}
	</style>
</head>
<body>
	<jsp:include page="../main/header.jsp"/>
	<div id="content_form">
		<form action="<%=conPath %>/book/bookRegisterPro.jsp" method="post" enctype="multipart/form-data">
			<table>
				<caption>책 등 록</caption>
				<tr><th>책제목</th>
						<td><input type="text" name="btitle"	maxlength="30" required="required"></td>
				</tr>
				<tr><th>책가격</th>
						<td><input type="number" name="bprice" min="0" required="required"></td>
				</tr>
				<tr><th>책이미지</th>
				    <td><input type="file" name="bimage1"></td>
				</tr>
				<tr><th>책이미지</th>
				    <td><input type="file" name="bimage2"></td>
				</tr>
				<tr><th>책소개</th>
					  <td><textarea rows="5" cols="20" name="bcontent"></textarea></td>
				</tr>
				<tr><th>할인율</th>
						<td><input type="number" name="bdiscount" min="0" max="100" value="0"
										required="required"></td>
				</tr>
				<tr><td colspan="2"><input type="submit" value="책등록" class="btn"></td></tr>
			</table>
		</form>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>