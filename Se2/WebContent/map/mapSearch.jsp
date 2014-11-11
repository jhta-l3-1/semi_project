<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<script type="text/javascript">
<script type='text/javascript' src="/Se2/js/jquery.min.js"></script>
<script type='text/javascript' src="/Se2/js/bootstrap.min.js"></script>
<link href="/Se2/css/bootstrap.min.css" rel="stylesheet">
<link href="/Se2/css/style.css" rel="stylesheet">
<link href="/Se2/css/map.css" rel="stylesheet">

</head>
<body>
<jsp:useBean id="dao" class="map.MapDao"/>
<jsp:useBean id="dto" class="map.MapDto"/>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	dto = dao.getMap(num);
%>
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
						<li><a href="#"><i class="glyphicon "></i>����ø</a></li>
						<li><a href="#"><i class="glyphicon "></i>��ǥ</a></li>
						<li><a href="#"><i class="glyphicon "></i>����</a></li>
					</ul>

				</div>
				<!-- /sidebar -->

				<!-- main right col -->
				<div class="column col-sm-10 col-xs-11" id="main">

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
								<div class="col-sm-12">
									<div id="staticMap" style="width:100%;height:350px;"></div>
									
									<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=5ba8db557d9eaf9e8eb99320f322c05aefe77c37&libraries=services"></script>
									<script>
									
									var markers = [
									               {
									                   position: new daum.maps.LatLng(<%=dto.getLatingx()%>, <%=dto.getLatingy()%>)
									               },
									               {
									                   position: new daum.maps.LatLng(<%=dto.getLatingx()%>, <%=dto.getLatingy()%>), 
									                   text:'<%=dto.getTitle()%>'
									               }
									           ];
									           var staticMapContainer  = document.getElementById('staticMap'), // �̹��� ������ ǥ���� div  
									               staticMapOption = {
									                   // ����, �浵 ������ ���� PC �� ���� ����(http://map.daum.net)���� ���콺 ������ Ŭ�� �޴��� "���� ���� ����"�� Ŭ���Ͻø� Ȯ���� �� �ֽ��ϴ�
									                   center: new daum.maps.LatLng(<%=dto.getLatingx()%>, <%=dto.getLatingy()%>), // �̹��� ������ �߽���ǥ
									                   level: 3, // �̹��� ������ Ȯ�� ����
									                   marker: markers // �̹��� ������ ǥ���� ��Ŀ 
									               };    

									           // �̹��� ������ �����մϴ�
									           var staticMap = new daum.maps.StaticMap(staticMapContainer, staticMapOption);
									</script>
									
								</div>
								<!-- main col right -->
								<div class="col-sm-0"></div>

							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
<form name="read" method="post" action="/Se2/map/map.jsp">
      <input type="hidden" name="num" /> 
</form>
</body>
</html>