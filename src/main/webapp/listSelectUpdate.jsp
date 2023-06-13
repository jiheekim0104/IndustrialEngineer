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
<%
	String sql = "select custno,custname,phone,address,to_char(joindate,'yyyy-MM-dd')joindate,decode(grade,'A','VIP','B','일반','C','직원')grade,city from member_tbl_02"; // DB에있는 번호중에 가장 큰번호 +1 처리
	Connection con = DBConnect.getConnection();
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	// decode 다르게 처리하는 방법
	/* String grade1 = rs.getString("grade");
	switch(grade1){
	case "A" : grade1 = "VIP";
		break;
	} */
	
%>
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
			<th>기타</th>
		</tr>
 	<%
		while(rs.next()){
	%> 
		<tr>
			<td><a href="/HRD_t123/update.jsp?custno=<%=rs.getString("custno")%>"><%=rs.getString("custno")%></a></td>
			<td><%=rs.getString("custname")%></td>
			<td><%=rs.getString("phone")%></td>
			<td><%=rs.getString("address")%></td>
			<td><%=rs.getString("joindate")%></td>
			<td><%=rs.getString("grade")%></td>
			<td><%=rs.getString("city")%></td>
			<td><a href="/HRD_t123/delete.jsp?custno=<%=rs.getString("custno")%>">삭제</a></td>
		</tr>
	<%
		}
	%>
	</table>
</section>

<jsp:include page="./include/footer.jsp"></jsp:include>

</body>
</html>