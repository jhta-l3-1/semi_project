<%@ page contentType="text/html; charset=EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/Se2/css/bootstrap.min.css" rel="stylesheet">
<link href="/Se2/css/style.css" rel="stylesheet">
<script type='text/javascript'	src="/Se2/js/jquery.min.js"></script>
<script type='text/javascript'	src="/Se2/js/bootstrap.min.js"></script>
<script>

	function popupIdpw() {

		var popUrl = "idpw.html";
		var popOption = "width=500, height=500, resizable=0, scrollbars=0, top=100 ,left=500, status=0";

		window.open(popUrl, "", popOption);

	}
	
	function popupIdadd() {

		var popUrl = "";
		var popOption = "width=500, height=500, resizable=0, scrollbars=0, top=100 ,left=500, status=0";

		window.open(popUrl, "", popOption);

	}
</script>

</head>

<body style="padding-top:90px;" >
	<div class="container">
		<form>
			<div>
				<h1>
					<a href="neighbor?neighbor=mainpage"><b>NEIGHBOR</b></a>
				</h1>
			</div>
			<div style="height: 300px; width: 1140px; border: 1px; background-image: url(/Se2/image/2.PNG)">
			
			</div>
			<div class="form-signin-image"></div><br> 
			<input type="text" class="form-control"placeholder="�̸��� �ּ�" autofocus>
			<input type="password"	class="form-control" placeholder="�н����� ">
			<a onclick="popupIdpw()">[ ���̵� / ���ã�� ]</a> 
			<a href="#">[ ȸ������ ] </a> 
			<label class="checkbox" style="float: right;"><input type="checkbox" value="remember-me" > ����ϱ� </label>
			<button class="btn btn-lg btn-primary btn-block btn-login"	type="submit">�α���</button>
		</form>
	</div>
	
</body>
</html>