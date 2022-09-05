<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 뷰포트 (디스플레이 화면 맞추기)-->
<meta name ="viewport" content = "width = device-width">

<!-- css 폴더 내부 부트스트랩 -->

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>로그인 창</title>
</head>
<body>

	<!-- 네비게이션-->
	<nav class="navbar navbar-default">
		<div class="navbar-header">		
			<button type="button" class="navbar-toggle collapsed"	
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"	
			aria-expanded="false">	
			</button>			
		<a class="navbar-brand" href="main.jsp">My JSP</a>		
		</div>	
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">	
				<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
				</ul>				
					<ul class="nav navbar-nav navbar-right">			
					<li class="dropdown">			
						<a href="join.jsp" class="dropdown-toggle"			
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원가입<span class="caret"></span></a>
					</li>		
					</ul>						
			</div>	
	</nav>
	<!-- 로그인폼-->
	<div class="container">
	<div class="col-lg-4"></div>
	<div class="col-lg-4"></div>
		
	<!-- 점보트론 백그라운드 회색 배경(배경 안에 양식 들어있는 구조로 덮음)-->
	<div class="jumbotron" style="padding-top: 15px; margin-top:100px; margin-left:200px; margin-right:200px;" >
	
		<!-- 로그인 정보 숨기고 전송-->	
		<form method="post" action="loginAction.jsp">
			<h3 style="text-align: center; margin-bottom :25px;">로그인 화면</h3>			
			<div class="form-group">	
			<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">	
			</div>			
			<div class="form-group">
			<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
			</div>			
			<input type="submit" class="btn btn-primary form-control" value="로그인">			
		</form>		
	</div>		
	</div>	
			<div class="col-lg-4"></div>		
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>