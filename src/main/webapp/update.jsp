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
<script>
	function inCheck(){
		let h=document.mInform;
 		if(!h.custno.value){
			alert("회원번호가 입력되지 않았습니다.");
			h.custno.focus();
			return false;
		} 
		
		if(!h.custname.value){
			alert("회원성명이 입력되지 않았습니다.");
			h.custname.focus();
			return false;
		}
		
		if(!h.phone.value){
			alert("회원전화가 입력되지 않았습니다.");
			h.phone.focus();
			return false;
		}
	
		if(!h.address.value){
			alert("회원주소가 입력되지 않았습니다.");
			h.address.focus();
			return false;
		}
		
		if(!h.joindate.value){
			alert("가입일자가 입력되지 않았습니다.");
			h.joindate.focus();
			return false;
		}
		
		if(!h.grade.value){
			alert("고객등급이 입력되지 않았습니다.");
			h.grade.focus();
			return false;
		}
		
		if(!h.city.value){
			alert("도시코드가 입력되지 않았습니다.");
			h.city.focus();
			return false;
		}
		
		alert("회원정보수정이 완료 되었습니다.")
		return true;
	}
	
	function search(){
		window.loction.href="/HRD_t123/listSelectUpdate.jsp";
	}
</script>
</head>
<body>

<jsp:include page="./include/header.jsp"></jsp:include>

<section class="section">
	<h2>홈쇼핑 회원 정보 수정</h2>
	<form action="/HRD_t123/dbUpdate.jsp" method="post" name="mInform" onsubmit="return inCheck()">
		<table>
			<tr>
				<td class="itemArea">회원번호(자동완성)</td>
				<td class="inputArea"><input type="text" name="custno"></td>
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
					<input type="submit" value="수정">
					<!-- <input type="button" value="조회" onclick="location.fref='/HRD_t123/listSelectUpdate.jsp'"> 보안상의 이유로 권하지는 않아-->
					<input type="button" value="조회" onclick="return search()">
				</td>
			</tr>	
		</table>
	</form>
</section>

<jsp:include page="./include/footer.jsp"></jsp:include>

</body>
</html>