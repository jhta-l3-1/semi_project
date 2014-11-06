<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/Se2/css/bootstrap.min.css" rel="stylesheet">
<link href="/Se2/css/style.css" rel="stylesheet">
<script type='text/javascript'	src="/Se2/js/jquery.min.js"></script>
<script type='text/javascript'	src="/Se2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="wrapper">
		<div class="box">
			<div class="row row-offcanvas row-offcanvas-left">

				<!-- sidebar -->
				<div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">

					<ul class="nav">
						<li>
						<a href="#" data-toggle="offcanvas" class="visible-xs text-center">
						<i class="glyphicon glyphicon-chevron-right"></i></a>
						</li>
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

					<!-- top nav -->
					<div class="navbar navbar-blue navbar-static-top">
						<nav class="collapse navbar-collapse" role="navigation">
						<form class="navbar-form navbar-left">
							<div class="input-group input-group-sm" style="max-width: 360px;">
								<input type="text" class="form-control" placeholder="Search"
									name="srch-term" id="srch-term">
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
						</form>
						<ul class="nav navbar-nav">
							<li><a href="index.html"><i class="glyphicon"></i>Home</a></li>
							<li><a href="#"><i class="glyphicon"></i>MyPage</a></li>
						</ul>
						</nav>
					</div>
					<!-- /top nav -->
					<form action="" method="post">
						<div class="padding">
							<div class="full col-sm-9">

								<!-- content -->
								<div class="row">

									<!-- main col left -->
									<div class="col-sm-7">

											<div class="map_wrap">
									    <div id="map" style="width:800px;height:600px;position:relative;overflow:hidden;"></div>
									
									    <div id="menu_wrap" class="bg_white">
									        <div class="option">
									            <p>
									                <form onsubmit="searchPlaces(); return false;">
									                	키워드 : <input type="text" value="검색어를 입력하시오" id="keyword" size="15"> 
									                <button type="submit">검색하기</button> 
									            </p>
									        </div>
									        <hr>
									        <ul id="placesList"></ul>
									        <div id="pagination"></div>
									    </div>
									</div>

					<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=a46f8bbb39db1b910a8e85c872d6f8161fbb3557&libraries=services"></script>
					<script type="text/javascript" src="/Se2/js/map.js"></script>

									
					</div>

									<!-- main col right -->
									<div class="col-sm-5"></div>

								</div>
							</div>
						</div>
					</form>



				</div>
			</div>
		</div>
	</div>


</body>
</html>