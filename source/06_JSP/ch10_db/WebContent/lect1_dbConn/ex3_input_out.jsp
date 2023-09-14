<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String conPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="<%=conPath%>/css/style.css" rel="stylesheet" type="text/css">
	<style>
		p {text-align: center;}
	</style>
</head>
<%!
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url    = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection        conn;
	PreparedStatement pstmt;
	ResultSet         rs;
%>
<body>
	<form action="">
		<p>
			부서번호
			<select name="deptno">
				<option value="0"></option>
				<%
					String deptnoStr = request.getParameter("deptno");
					if(deptnoStr==null) 
						deptnoStr = "0";
					int deptnoInput = Integer.parseInt(deptnoStr);
					String sql = "SELECT * FROM DEPT";
					try{
						Class.forName(driver); //(1)
						conn = DriverManager.getConnection(url, "scott", "tiger"); // (2)
						pstmt = conn.prepareStatement(sql); // (3)
						rs    = pstmt.executeQuery(); // (4) + (5)
						while(rs.next()){
							//<option value='20' selected='selected'>20-sales-boston</option>
							//<option value='20'>20-sales-boston</option>
							int deptno   = rs.getInt("deptno");
							String dname = rs.getString("dname");
							String loc   = rs.getString("loc");
							if(deptnoInput == deptno){
								out.print("<option value='" + deptno + "' selected='selected'>"
														+ deptno + "-" + dname + "-"+ loc + "</option>");
							}else{
								out.print("<option value='" + deptno + "' >"
										+ deptno + "-" + dname + "-"+ loc + "</option>");
							}
						}
					}catch(Exception e){
						System.out.println(e.getMessage());
					}finally{
						if(rs   !=null) rs.close();
						if(pstmt!=null) pstmt.close();
						if(conn !=null) conn.close();
					}
				%>
			</select>
			<input type="submit" value="검색">
		</p>
	</form>
	<table>
		<%
		
		%>
	</table>
</body>
</html>