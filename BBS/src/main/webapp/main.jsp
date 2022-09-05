<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 뷰포트 (디스플레이 화면 맞추기)-->
<meta name="viewport" content="width=device-width">
<!-- css 폴더 내부 부트스트랩  -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판</title>
</head>
<body>

	<%
	//로그인한사람이라면 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<!-- 네비게이션 상단 바 -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="bs-example-navbar-collapse-1"
				aria-expaned="false">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">My JSP</a>
		</div>
		<!--  네비게이션 상단 바 내 이동 포탈 -->
		<div class="collapse navbar-collapse"
			id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li class="active"><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
			//로그인이 안된경우
			if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
			
				<li class="dropdown"><a href="login.jsp"
				class="dropdown-toggle" data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="false">로그인
				<span class="caret"></span></a>
				</li>			
			</ul>
			<%} else {%>
			<ul class="nav navbar-nav navbar-right">		
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>				
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>			
				</li>		
			</ul>
			<%
			}
			%>
		</div>		
	</nav>
	<!-- 메인 페이지 중앙 소개 구간 -->
	<div class="container">
		<div class="jumbotron">	
			<div class="container">
				<h1>게시판</h1>
				<p>JSP 게시판입니다</p>
				<p><a class="btn btn-primary btn-pull" href="join.jsp" role="button">회원가입</a></p>
			</div>		
		</div>	
	</div>	
	<!-- div 내부 / images 폴더 내부의 '1.jpg'의 위치 정렬 / 하단 테스트 사진 -->	
	<div class="item active" style="margin: auto; text-align: center;">
	<img src="images/1.jpg">			
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<!-- 부트스트랩 JS  -->
	<script src="js/bootstrap.js"></script>
</body>
</html>