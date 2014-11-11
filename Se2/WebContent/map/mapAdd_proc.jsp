<%@ page contentType="text/html; charset=EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="dao" class="map.MapDao"/>
<jsp:useBean id="dto" class="map.MapDto"/>
<jsp:setProperty property="*" name="dto"/>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%
	
	dao.insertMap(dto);
	response.sendRedirect("/Se2/map/map.jsp");
%>
</body>
</html>
