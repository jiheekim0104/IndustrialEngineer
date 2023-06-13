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
th{
	width: 100px;
}
th:nth-child(3) {
	width: 120px;
}
th:nth-child(4) {
	width: 300px;
}

</style> 
</head>
<body>

<jsp:include page="./include/header.jsp"></jsp:include>

<section class="section">
	<h2>회원목록조회/수정</h2>
	<table>
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>가입일자</th>
			<th>고객등급</th>
			<th>거주지역</th>	
		</tr>
<%-- 		<% 
		while(rs.next()){
		%> --%>
		<tr>
			<td><a href="/HRD_t123/update.jsp"></a></td> <!-- rs.getString("custno") 이거써줄거임 -->
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
<%-- 		<%
		}
		%>	 --%>
	</table>
</section>

<jsp:include page="./include/footer.jsp"></jsp:include>

</body>
</html>