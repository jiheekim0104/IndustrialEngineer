<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.text.*" %>
<%@ page import ="DBPKG.*" %>
<%
	String sql = "select max(custno)+1 from member_tbl_02"; // DB에있는 번호중에 가장 큰번호 +1 처리
	Connection con = DBConnect.getConnection();
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	int maxCustno = rs.getInt(1); // SQL 실행결과의 1번째를 INT로 받아오라!
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리</title>
<link rel="stylesheet" href="./css/basic.css"/>
<style>
.itemArea{
	text-align: center;
}

.inputArea{
	width: 300px;
}

input{
	height: 20px;
	line-height: 20px;
}
</style> 
<script src="./js/basic.js"></script> <!-- js 길이가 길어지면 이렇게 빼서 써도됨! -->
<script>
	function search(){ /* 여기에 써도 됨 ㅇㅇ */
		window.loction.href="/HRD_t123/listSelectUpdate.jsp";
	}
</script>
</head>
<body>

<jsp:include page="./include/header.jsp"></jsp:include>

<section class="section">
	<h2>홈쇼핑 회원 등록</h2>
	<form action="/HRD_t123/dbInsert.jsp" method="post" name="mInform" onsubmit="return inCheck()">
		<table>
			<tr>
				<td class="itemArea">회원번호(자동완성)</td>
				<td class="inputArea"><input type="text" name="custno" readonly="readonly" value="<%=maxCustno%>"></td>
			</tr>
			<tr>
				<td class="itemArea">회원성명</td>
				<td><input type="text" name="custname"></td>
			</tr>	
			<tr>
				<td class="itemArea">회원전화</td>
				<td><input type="text" name="phone"></td>
			</tr>	
			<tr>
				<td class="itemArea">회원주소</td>
				<td><input type="text" name="address"></td>
			</tr>	
			<tr>
				<td class="itemArea">가입일자</td>
				<td><input type="text" name="joindate"></td>
			</tr>	
			<tr>
				<td class="itemArea">고객등급(A:VIP,B:일반,C:직원)</td>
				<td><input type="text" name="grade"></td>
			</tr>	
			<tr>
				<td class="itemArea">도시코드</td>
				<td><input type="text" name="city"></td>
			</tr>	
			<tr>
				<td colspan ="2" class="itemArea">
					<!-- <input type="submit" value="등록" onclick="return inCheck()"> 위에 써주는 방식으로 수정함-->
					<input type="submit" value="등록">
					<!-- <input type="button" value="조회" onclick="location.fref='/HRD_t123/listSelectUpdate.jsp'"> 보안상의 이유로 권하지는 않아-->
					<input type="button" value="조회" onclick="return search()">
				</td>
			</tr>	
		</table>
	</form>
</section>

<jsp:include page="./include/footer.jsp"></jsp:include>

</body>
<%
DBConnect.getClose(con, pstmt, rs);
%>
</html>