<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%response.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 창</title>
<script type="text/javascript">
var right = 0;
	function regChk(){
		var id = document.f.id.value;
		var regx = /^[a-zA-Z0-9]*$/;
		var chk1 = /\d/;
		var chk2 = /[a-z]/i;
	//이메일
		var email1 = document.f.email1.value;
		var email2 = document.f.email2.value;
			if(email1.length==0 || email1 == null){
				alert("이메일을 입력하세요");
				return false;
			}
			if(!regx.test(email1)){
				alert("이메일은 영어, 숫자만 입력가능합니다.");
				document.f.email1.focus();
				return false;
			}
			if(email2.length==0 || email2 == null){
				alert("이메일을 입력하세요");
				return false;
			}
			/* if(!regx.test(email2)){
				alert("이메일은 영어, 숫자만 입력가능합니다.");
				document.f.email2.focus();
				return false;
			} */
			
	/* // 아이디
		if(id.length==0 || id==null){
			alert("아이디를 입력하십시오");
		  	return false;
		}
		if (!regx.test(id)){
		  	alert("아이디는 영어, 숫자만 입력가능합니다.");
		  	document.f.id.focus();
			return false;
		} */
		
	// 비밀번호
		var pass = document.f.pass.value;
		if(pass.length<6 || pass==null){
			alert("비밀번호를 입력하십시오(6글자이상)");
			return false;
		}
		if (chk1.test(pass) && chk2.test(pass)){
		}
		else{
			alert("비밀번호는 영어, 숫자 조합입니다.");
		  	return false;
		}
		if(right == 0){
			alert("비밀번호가 동일한지 확인하세요!");
			return false;
		}
		
	//이름
		var name = document.f.name.value;
			if(name.length==0 || name == null){
				alert("이름을 입력해주세요");
				return false;
			}
			
	//핸드폰 번호
		var num_regx = /^[0-9]*$/;
		var ph2 = document.f.ph2.value;
			if(ph2.length==0 || ph2 == null){
				alert("핸드폰 번호를 입력하세요");
				return false;
			}
		var ph3 = document.f.ph3.value;
			if(ph3.length==0 || ph3 == null){
				alert("핸드폰 번호를 입력하세요");
				return false;
			}
			if(!num_regx.test(ph2) || !num_regx.test(ph3)){
				alert("핸드폰 번호는 숫자만 입력 가능합니다.");
				return false;
			}
			
	//주소
		var address = document.f.address.value;
			if(address.length==0 || address == null){
				alert("주소를 입력하십시오");
				return false;
			}
		document.f.submit();

	}
	
	// 다시입력
	function regCancel(){
		 location.href="../index.jsp"; 
	}
	
	//비밀번호 텍스트
	function passchk(){
		var pass = document.f.pass.value;
		var pass2 = document.f.pass2.value;
		if (pass2.length == 0 || pass2 == null) {
			document.f.chk.value = "비밀번호를 입력하세요";
			right = 0;
		} 
		else if (pass != pass2) {
			document.f.chk.value = "비밀번호가 다릅니다.";
			right = 0;
		}
		else {   
			document.f.chk.value = "비밀번호가 동일합니다.";
			right = 1;
		}
		return;
	}



		

</script>
</head>
<body>
	<form action="neighbor" name="f" method="post">
		<input type="hidden" value="loginadd3" name="neighbor">
		<table style="width: 1400px; height: 650px;">
			<tr>
				<td width="100%" height="10%"><span style="padding-left: 160px">
						<img src="../log/image/apart.jpg" width="200" height="60"
						border="0" align="middle">
				</span>&nbsp;회원가입</td>
			</tr>
			<tr>
				<td height="15%"><span style="padding-left: 160px"> <!--  이미지 넣어야함-->
						<img>
				</span></td>
			</tr>
			<tr>
				<td height="60%" align="center" valign="top"><hr>
					<br>
					<p align="left" style="padding-left: 160px">

						<b>아파트 개인정보입력</b><br>
						<!-- <br> ID : <input type="text" size="10" maxlength="15"
							name="id"><br> -->
						<br> 이메일 : <input type="text" size="15" name="email1">@<input
						type="text" size="15" name="email2"><br>
						<br> 비밀번호 : <input type="password" size="15" maxlength="20"
							name="pass"><br>
						<br> 비밀번호 확인 : <input type="password" size="15"
							maxlength="20" name="pass2" onblur="passchk()">&nbsp; <input
							type="text" style="border-width: 0px" size="20" name="chk"
							value="비밀번호를 입력하세요" readonly="readonly" class="danger1"><br>
						<br> 이름 : <input type="text" size="13" maxlength="12"
							name="name"><br>
						
						<!-- <br> 이메일 수신여부 : <input type="radio" name="sent" value="ok"
							checked="checked"> 수신함 &nbsp;&nbsp; <input type="radio"
							name="sent" value="no"> 수신 거절 <br> -->
						<br> 휴대폰 : <select name="ph1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="019">019</option>
						</select> - <input type="text" name="ph2" size="5" maxlength="4"> -
						<input type="text" name="ph3" size="5" maxlength="4"><br>
						<!-- <br> 성별 : <input type="radio" name="gender" value="남자"
							checked="checked"> 남자&nbsp;&nbsp; <input type="radio"
							name="gender" value="여자"> 여자<br> -->
						<%-- <br> 생년월일 : <select name="birth1">
							<%for(int i=2015; i>=1900; i--){ %>
							<option value="<%=i %>"><%=i %></option>
							<%} %>
						</select>년&nbsp; <select name="birth2">
							<%for(int i=1; i<=12; i++){ %>
							<option value="<%=i %>"><%=i %></option>
							<%} %>
						</select> <select name="birth3">
							<%for(int i=1; i<=31; i++){ %>
							<option value="<%=i %>"><%=i %></option>
							<%} %>
						</select>일<br> --%>
						<br> 주소 : <input type="text" name="address" size="15"
							maxlength="15"><br> <span class="danger2"> *
							주소는 (시/도)만 입력해주세요(예: 경기도, 서울특별시, 경상남도 등) </span>
					</p></td>
			</tr>
			<tr>
				<td align="center">
					<hr>
					<br /> <input type="button" value="가입신청" onclick="regChk()">&nbsp;
					<input type="reset" value="다시입력">&nbsp; <input
					type="button" value="취소" onclick="regCancel()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>