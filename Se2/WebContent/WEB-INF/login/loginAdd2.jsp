<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%response.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<title>ȸ������ â</title>
<script type="text/javascript">
var right = 0;
	function regChk(){
		var id = document.f.id.value;
		var regx = /^[a-zA-Z0-9]*$/;
		var chk1 = /\d/;
		var chk2 = /[a-z]/i;
	//�̸���
		var email1 = document.f.email1.value;
		var email2 = document.f.email2.value;
			if(email1.length==0 || email1 == null){
				alert("�̸����� �Է��ϼ���");
				return false;
			}
			if(!regx.test(email1)){
				alert("�̸����� ����, ���ڸ� �Է°����մϴ�.");
				document.f.email1.focus();
				return false;
			}
			if(email2.length==0 || email2 == null){
				alert("�̸����� �Է��ϼ���");
				return false;
			}
			/* if(!regx.test(email2)){
				alert("�̸����� ����, ���ڸ� �Է°����մϴ�.");
				document.f.email2.focus();
				return false;
			} */
			
	/* // ���̵�
		if(id.length==0 || id==null){
			alert("���̵� �Է��Ͻʽÿ�");
		  	return false;
		}
		if (!regx.test(id)){
		  	alert("���̵�� ����, ���ڸ� �Է°����մϴ�.");
		  	document.f.id.focus();
			return false;
		} */
		
	// ��й�ȣ
		var pass = document.f.pass.value;
		if(pass.length<6 || pass==null){
			alert("��й�ȣ�� �Է��Ͻʽÿ�(6�����̻�)");
			return false;
		}
		if (chk1.test(pass) && chk2.test(pass)){
		}
		else{
			alert("��й�ȣ�� ����, ���� �����Դϴ�.");
		  	return false;
		}
		if(right == 0){
			alert("��й�ȣ�� �������� Ȯ���ϼ���!");
			return false;
		}
		
	//�̸�
		var name = document.f.name.value;
			if(name.length==0 || name == null){
				alert("�̸��� �Է����ּ���");
				return false;
			}
			
	//�ڵ��� ��ȣ
		var num_regx = /^[0-9]*$/;
		var ph2 = document.f.ph2.value;
			if(ph2.length==0 || ph2 == null){
				alert("�ڵ��� ��ȣ�� �Է��ϼ���");
				return false;
			}
		var ph3 = document.f.ph3.value;
			if(ph3.length==0 || ph3 == null){
				alert("�ڵ��� ��ȣ�� �Է��ϼ���");
				return false;
			}
			if(!num_regx.test(ph2) || !num_regx.test(ph3)){
				alert("�ڵ��� ��ȣ�� ���ڸ� �Է� �����մϴ�.");
				return false;
			}
			
	//�ּ�
		var address = document.f.address.value;
			if(address.length==0 || address == null){
				alert("�ּҸ� �Է��Ͻʽÿ�");
				return false;
			}
		document.f.submit();

	}
	
	// �ٽ��Է�
	function regCancel(){
		 location.href="../index.jsp"; 
	}
	
	//��й�ȣ �ؽ�Ʈ
	function passchk(){
		var pass = document.f.pass.value;
		var pass2 = document.f.pass2.value;
		if (pass2.length == 0 || pass2 == null) {
			document.f.chk.value = "��й�ȣ�� �Է��ϼ���";
			right = 0;
		} 
		else if (pass != pass2) {
			document.f.chk.value = "��й�ȣ�� �ٸ��ϴ�.";
			right = 0;
		}
		else {   
			document.f.chk.value = "��й�ȣ�� �����մϴ�.";
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
				</span>&nbsp;ȸ������</td>
			</tr>
			<tr>
				<td height="15%"><span style="padding-left: 160px"> <!--  �̹��� �־����-->
						<img>
				</span></td>
			</tr>
			<tr>
				<td height="60%" align="center" valign="top"><hr>
					<br>
					<p align="left" style="padding-left: 160px">

						<b>����Ʈ ���������Է�</b><br>
						<!-- <br> ID : <input type="text" size="10" maxlength="15"
							name="id"><br> -->
						<br> �̸��� : <input type="text" size="15" name="email1">@<input
						type="text" size="15" name="email2"><br>
						<br> ��й�ȣ : <input type="password" size="15" maxlength="20"
							name="pass"><br>
						<br> ��й�ȣ Ȯ�� : <input type="password" size="15"
							maxlength="20" name="pass2" onblur="passchk()">&nbsp; <input
							type="text" style="border-width: 0px" size="20" name="chk"
							value="��й�ȣ�� �Է��ϼ���" readonly="readonly" class="danger1"><br>
						<br> �̸� : <input type="text" size="13" maxlength="12"
							name="name"><br>
						
						<!-- <br> �̸��� ���ſ��� : <input type="radio" name="sent" value="ok"
							checked="checked"> ������ &nbsp;&nbsp; <input type="radio"
							name="sent" value="no"> ���� ���� <br> -->
						<br> �޴��� : <select name="ph1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="019">019</option>
						</select> - <input type="text" name="ph2" size="5" maxlength="4"> -
						<input type="text" name="ph3" size="5" maxlength="4"><br>
						<!-- <br> ���� : <input type="radio" name="gender" value="����"
							checked="checked"> ����&nbsp;&nbsp; <input type="radio"
							name="gender" value="����"> ����<br> -->
						<%-- <br> ������� : <select name="birth1">
							<%for(int i=2015; i>=1900; i--){ %>
							<option value="<%=i %>"><%=i %></option>
							<%} %>
						</select>��&nbsp; <select name="birth2">
							<%for(int i=1; i<=12; i++){ %>
							<option value="<%=i %>"><%=i %></option>
							<%} %>
						</select> <select name="birth3">
							<%for(int i=1; i<=31; i++){ %>
							<option value="<%=i %>"><%=i %></option>
							<%} %>
						</select>��<br> --%>
						<br> �ּ� : <input type="text" name="address" size="15"
							maxlength="15"><br> <span class="danger2"> *
							�ּҴ� (��/��)�� �Է����ּ���(��: ��⵵, ����Ư����, ��󳲵� ��) </span>
					</p></td>
			</tr>
			<tr>
				<td align="center">
					<hr>
					<br /> <input type="button" value="���Խ�û" onclick="regChk()">&nbsp;
					<input type="reset" value="�ٽ��Է�">&nbsp; <input
					type="button" value="���" onclick="regCancel()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>