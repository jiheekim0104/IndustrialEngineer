<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.text.*" %>
<%@ page import ="DBPKG.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String sql = "insert into member_tbl_02 values (?,?,?,?,?,?,?)";
	Connection con = DBConnect.getConnection();
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setInt(1, Integer.parseInt(request.getParameter("custno")));
	pstmt.setString(2, request.getParameter("CUSTNAME"));
	pstmt.setString(3, request.getParameter("PHONE"));
	pstmt.setString(4, request.getParameter("ADDRESS"));
	pstmt.setString(5, request.getParameter("JOINDATE"));
	pstmt.setString(6, request.getParameter("GRADE"));
	pstmt.setString(7, request.getParameter("CITY"));
	
	pstmt.executeUpdate();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>