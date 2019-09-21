<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>게시판 웹 사이트</title>
</head>
<style>
	a, a:hover {
	color : #000000;
	text-decoration : none;}
</style>
<body>
	 <%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%> 

	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
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
				if(userID == null){
				%>
				
				
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a>
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
		<div class="row">
			<form method="post" action="writeAction.jsp">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판
								글쓰기 양식</th>

						</tr>
					</thead>

					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
						</tr>

						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="bbsContent" maxlength="20000" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>

				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>


		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

	<script>
		
	</script>
</body>
</html>