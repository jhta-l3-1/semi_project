<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="login.LoginDao"/>
<jsp:useBean id="dto" class="login.LoginDto"/>
<jsp:setProperty property="*" name="dto"/>
<%request.setCharacterEncoding("euc-kr"); %>

<%
	int rst = 0;
	request.setCharacterEncoding("euc-kr");
	
	rst = dao.insertMember(dto);
	if(rst>0){
%>
	<script type="text/javascript">
	alert("ȸ������ ����");
	</script>
<%}else{ %>
	<script type="text/javascript">
	alert("ȸ������ ����");
	history.go(-1);
	</script>
<%} %>

