<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.text.*" %>
<%@ page import ="DBPKG.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리</title>
<link rel="stylesheet" href="./css/basic.css"/>
<style>
td{
	text-align: center;
}
.section > div{
	margin-left: 20px;
}
th{
	width: 100px;
}
</style> 
</head>
<body>

<jsp:include page="./include/header.jsp"></jsp:include>

<section class="section">
<%
	/* String sql = "SELECT A.CUSTNO,A.CUSTNAME,A.GRADE,SUM(B.PRICE) FROM MEMBER_TBL_02 A INNER JOIN MONEY_TBL_02 B ON A.CUSTNO=B.CUSTNO"; */
	String sql = "SELECT MB.CUSTNO,MB.CUSTNAME,DECODE(MB.GRADE,'A','VIP','B','일반','C','직원') GRADE,"
		+"SUM(MO.PRICE) PRICE FROM MEMBER_TBL_02 MB , MONEY_TBL_02 MO "
		+ "WHERE MB.CUSTNO= MO.CUSTNO "
		+ "GROUP BY MB.CUSTNO, MB.CUSTNAME, GRADE "
		+ "ORDER BY SUM(MO.PRICE) DESC"; 
		//String sql = "SELECT MB.CUSTNO,MB.CUSTNAME,DECODE(MB.GRADE,'A','VIP','B','일반','C','직원')GRADE,SUM(MO.PRICE)PRICE FROM MEMBER_TBL_02 MB , MONEY_TBL_02 MO WHERE MB.CUSTNO= MO.CUSTNO GROUP BY MB.CUSTNO,MB.CUSTNAME,MB.GRADE ORDER BY SUM(MO.PRICE) DESC";
	Connection con = DBConnect.getConnection();
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
%>
	<h2>회원매출조회</h2>
	<table>
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>
		<%
		while(rs.next()){
		%>
		<tr>
			<td><%=rs.getString("CUSTNO") %></td>
			<td><%=rs.getString("CUSTNAME") %></td>
			<td><%=rs.getString("GRADE") %></td>
			<td><%=rs.getString("PRICE") %></td>
		</tr>	
		<%
		}
		%>
	</table>
</section>

<jsp:include page="./include/footer.jsp"></jsp:include>

</body>
</html>