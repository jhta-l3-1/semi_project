<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<link href="style/memberStyle.css" rel="stylesheet" type="text/css" />
<title>ȸ�� ����â</title>
<script type="text/javascript">
	function chk() {
		var req = f.req.checked;
		var num = 0;
		if (req == true) {
			num = 1;
		}
		if (num == 1) {
			f.submit();
		} else {
			alert("�������� ����� ���� �ϼž� �մϴ�.");
		}
	}
	function nochk() {
		alert("�������� ������ �����Ͻ� �� �����ϴ�.");
		location.href = "../index.jsp";
	}
</script>
</head>
<body>
	<form action="neighbor"name="f" method="post">
	<input type="hidden" value="loginadd2" name="neighbor"> 
		<table width="1400" height="650">
			<tr>
				<td width="100%" height="10%"><span style="padding-left: 160px">
				</span>&nbsp;
					<div style="text-align: center">
						<b>ȸ�� ����</b>
					</div>
					<br>
					<hr></td>
			</tr>
			<tr>
				<td width="100%" height="50%" align="center">
					<p align="left">
						<span style="padding-left: 160px"> <!-- ������� �̹���  -->
							<div align="center">
								<img src="../log/image/apart.jpg" width="290" height=100;
									border="0">
							</div>
							<br>
							<div style="text-align: center">
								<b>����Ʈ �������</b>
							</div>
						</span>
					</p>
					<br> <textarea rows="20" cols="150">
��. �����ϴ� ���������� �׸�ù°, ȸ��� ȸ���� ��, ��Ȱ�� �����, ���� ������ ������ ���� ���� ȸ������ ��� �Ʒ��� ���� �ּ����� ���������� �ʼ��׸����� �����ϰ� �ֽ��ϴ�.
ȸ������
- �̸�, �������, ����, ���̵�, ��й�ȣ, ����, ����ó(�����ּ�, �޴��� ��ȣ �� ����), ������������
��14�� �̸� �Ƶ� ȸ������ 
- �̸�, �������, ����, �����븮�� ����, ���̵�, ��й�ȣ, ����ó (�����ּ�, �޴��� ��ȣ �� ����), ������������
��ü���̵� ȸ������ 
- ��ü���̵�, ȸ���, ��ǥ�ڸ�, ��ǥ ��ȭ��ȣ, ��ǥ �̸��� �ּ�, ��ü�ּ�, ������ ���̵�, ������ ����ó, ������ �μ�/����
- �����׸� : ��ǥ Ȩ������, ��ǥ �ѽ���ȣ
��°, ���� �̿�����̳� ���ó�� �������� �Ʒ��� ���� �������� �ڵ����� �����Ǿ� ������ �� �ֽ��ϴ�.
- IP Address, ��Ű, �湮 �Ͻ�, ���� �̿� ���, �ҷ� �̿� ���
��°, ���̹� ���̵� �̿��� �ΰ� ���� �� ����� ���� �̿� �Ǵ� �̺�Ʈ ���� �������� �ش� ������ �̿��ڿ� ���ؼ��� �������� �߰� ������ �߻��� �� ������, �̷��� ��� ������ ���Ǹ� �޽��ϴ�. 
��°, ����������, ����/���� �� �Ϻ� ���� �̿�� ���� ���� �ؼ��� ���� ���������� �ʿ��� ���, �Ʒ��� ���� �������� ������ �� �ֽ��ϴ�. 
- �̸�, �������, ����, �ߺ�����Ȯ������(DI), ��ȣȭ�� ������ �ĺ�����(CI), �޴��� ��ȣ(����), ������ ��ȣ(������ �̿��), ��/�ܱ��� ����
�ټ�°, ���� ���� �̿� �������� �Ʒ��� ���� ���� �������� ������ �� �ֽ��ϴ�. 
- �ſ�ī�� ������ : ī����, ī���ȣ ��
- �޴���ȭ ������ : �̵���ȭ��ȣ, ��Ż�, �������ι�ȣ ��
- ������ü�� : �����, ���¹�ȣ ��
- ��ǰ�� �̿�� : ��ǰ�� ��ȣ
��. �������� �������ȸ��� ������ ���� ������� ���������� �����մϴ�. 
- Ȩ������, ������, �ѽ�, ��ȭ, ��� �Խ���, �̸���, �̺�Ʈ ����, ��ۿ�û
- ����ȸ��κ����� ���� 
- �������� ���� ���� ���� ����
			</textarea><br> <input type="checkbox" name="req"> �������� ���� �� �̿뿡
					�����մϴ�.
				</td>
			</tr>
			<tr>
				<td align="center" valign="top">
				<input type="button" value="����" onclick="chk()" /> &nbsp;&nbsp;&nbsp; 
				<input type="button" value="�������� �ʽ��ϴ�" onclick="nochk()" /></td>
			</tr>
		</table>
	</form>
</body>
</html>