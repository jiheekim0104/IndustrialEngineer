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

</style> 
</head>
<body>

<header class="header">
	<h1> 쇼핑몰 회원관리 ver 1.0</h1>
</header>

<nav class="nav">
	<ul>
		<li><a href="/HRD_t123/memInsert.jsp">회원등록</a></li>
		<li><a href="/HRD_t123/listSelectUpdate.jsp">회원목록조회/수정</a></li>
		<li><a href="/HRD_t123/saleSelect.jsp">회원매출조회</a></li>
		<li><a href="/HRD_t123/index.jsp">홈으로</a></li>
	</ul>
</nav>

</body>
</html>