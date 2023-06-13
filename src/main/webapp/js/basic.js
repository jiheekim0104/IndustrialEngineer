function inCheck(){
		let h=document.mInform;
 		if(h.custno.value==""){
			alert("회원번호가 입력되지 않았습니다.");
			h.custno.focus();
			return false;
		} 
		
		if(h.custname.value==""){
			alert("회원성명이 입력되지 않았습니다.");
			h.custname.focus();
			return false;
		}
		
		if(h.phone.value==""){
			alert("회원전화가 입력되지 않았습니다.");
			h.phone.focus();
			return false;
		}
	
		if(h.address.value==""){
			alert("회원주소가 입력되지 않았습니다.");
			h.address.focus();
			return false;
		}
		
		if(h.joindate.value==""){
			alert("가입일자가 입력되지 않았습니다.");
			h.joindate.focus();
			return false;
		}
		
		if(h.grade.value==""){
			alert("고객등급이 입력되지 않았습니다.");
			h.grade.focus();
			return false;
		}
		
		if(h.city.value==""){
			alert("도시코드가 입력되지 않았습니다.");
			h.city.focus();
			return false;
		}
		
		alert("회원등록이 완료되었습니다.")
		return true;
	}