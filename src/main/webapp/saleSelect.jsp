<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리</title>
<link rel="stylesheet" href="./css/basic.css"/>
<style>

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
	<h2>회원매출조회</h2>
	<table>
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>	
	</table>
</section>

<jsp:include page="./include/footer.jsp"></jsp:include>

</body>
</html>