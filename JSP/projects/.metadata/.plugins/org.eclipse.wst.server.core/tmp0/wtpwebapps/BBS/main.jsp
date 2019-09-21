<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>IT 컨퍼런스</title>
<style>
	a, a:hover {
	color : #000000;
	text-decoration : none;}
</style>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>

	<!-- <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark"> -->
	<nav class="navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded=:false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">IT 컨퍼런스</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">

			<!-- 리스트를 보여주는 ul -->
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a>
				<li><a href="#">컨퍼런스 정보</a>
				<li><a href="bbs.jsp">커뮤니티</a>
				<li><a href="#">개발자 정보</a>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">게임<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="game.html">강현석의 F피하기 게임</a></li>
						<li><a href="#">두산아 아직도 안만들었냐 시발</a></li>
					</ul></li>
			</ul>

			<%
				if (userID == null) {
			%>

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>

			<%
				} else {
			%>

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>



			<%
				}
			%>
		</div>
	</nav>

	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>G-STAR 컨퍼런스 11/16(목) - 17(금)</h1>
				<p>16일 부터 부산 벡스코 컨벤션 홀에서 G-STAR 컨퍼런스가 개최됩니다.</p>
				<p>
					<a class="btn btn-primary btn-pull"
						href="http://www.ygfamily.com/artist/Concert_BIGBANG.asp?LANGDIV=K&ATYPE=2&ARTIDX=3"
						target="_blank" role="button">자세히 알아보기</a>
				</p>
			</div>
		</div>
	</div>


	<!-- ID값이 모두 동일해야 한다 (  id = "myCarousel:"  ) -->
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner">
				<div class="item active">
					<img src="images/1.jpeg">
				</div>
				<div class="item">
					<img src="images/2.jpeg">
				</div>
				<div class="item">
					<img src="images/3.jpeg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>

	<div class="empty"></div>
	<footer class="container-fluid text-center" style="clear: both;">Copyright (c) 2017 </footer>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

	<script>
		
	</script>
</body>
</html>