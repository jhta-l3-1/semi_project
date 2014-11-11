<%@page import="map.MapDto"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<jsp:useBean id="dao" class="map.MapDao" />
<jsp:useBean id="dto" class="map.MapDto" />
<%
	Vector v = dao.getMapList();
%>
<script>
function fnRead(param) {
    read.num.value = param;
    read.submit();
 }
 </script>
<script type='text/javascript' src="/Se2/js/jquery.min.js"></script>
<script type='text/javascript' src="/Se2/js/bootstrap.min.js"></script>
<link href="/Se2/css/bootstrap.min.css" rel="stylesheet">
<link href="/Se2/css/style.css" rel="stylesheet">

</head>
<body>

	<div class="wrapper">
		<div class="box">
			<div class="row row-offcanvas row-offcanvas-left">

				<!-- sidebar -->
				<div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">

					<ul class="nav">
						<li><a href="#" data-toggle="offcanvas"
							class="visible-xs text-center"><i
								class="glyphicon glyphicon-chevron-right"></i></a></li>
					</ul>

					<ul class="nav hidden-xs" id="lg-menu">
						<li><a href="#"><i class="glyphicon "></i>사진첩</a></li>
						<li><a href="#"><i class="glyphicon "></i>투표</a></li>
						<li><a href="#"><i class="glyphicon "></i>일정</a></li>
						<li><a href="#"><i class="glyphicon "></i>맵</a></li>
					</ul>

				</div>
				<!-- /sidebar -->

				<!-- main right col -->
				<div class="column col-sm-10 col-xs-11" id="main">
					<input type="hidden" name="neighbor" value="mainmap">
					<!-- top nav -->
					<div class="navbar navbar-blue navbar-static-top">
						<nav class="collapse navbar-collapse" role="navigation">
						<form class="navbar-form navbar-left">
							<div class="input-group input-group-sm" style="max-width: 360px;">
								<input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit"> <i class="glyphicon glyphicon-search"></i> </button>
								</div>
							</div>
						</form>
						<ul class="nav navbar-nav">
							<li><a href="index.html"><i class="glyphicon"></i>Home</a></li>
							<li><a href="#"><i class="glyphicon"></i>MyPage</a></li>
						</ul>
						</nav>
					</div>

					<div class="padding">
						<div class="full col-sm-9">

							<!-- content -->
							<div class="row">

								<!-- main col left -->
								<div class="col-sm-3">
									
										<a href="neighbor?neighbor=mapadd">지도 등록</a>
								</div>
								<!-- main col right -->
								<div class="col-sm-8">
								
									<table border=0 width=100% cellpadding=2 cellspacing=0>
										<tr bgcolor=#D0D0D0 height=120%>
											<td width="10%">번호</td>
											<td width="70%">제목</td>
											<td width="20%">날짜</td>
										</tr>
										<%
											if (v.isEmpty()) {
										%>
										<div align="center">
											<b>등록된 목록이 없습니다.</b>
										</div>
										<%
											} else {
												for (int i = 0; i < v.size(); i++) {
													if (i == v.size())
														break;
													dto = (MapDto) v.get(i);
										%>
										<tr>
											<td><%=dto.getNo()%></td>
											<td><a href="javascript:fnRead('<%=dto.getNo()%>')"><%=dto.getTitle()%></a></td>
											<td><%=dto.getMapdate()%></td>
										</tr>
										<%
											}
											}
										%>
										<a href="neighbor?neighbor=mapsearch" style="padding-bottom: ">등록 목록</a> 
									</table>
								</div>

							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
<form name="read" method="post" action="/Se2/map/mapSearch.jsp">
      <input type="hidden" name="num" /> 
</form>
</body>
</html>