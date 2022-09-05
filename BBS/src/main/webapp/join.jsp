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
	<title>회원가입</title>
</head>
<body>

	<!-- 네비게이션 상단 바-->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>			
				<span class="icon-bar"></span>		
			</button>		
				<a class="navbar-brand" href="main.jsp">My JSP</a>	
		</div>	
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">	
					<li><a href="main.jsp">메인 홈</a></li>
					<li><a href="bbs.jsp">게시판</a></li>		
				</ul>	
				<ul class="nav navbar-nav navbar-right">	
					<li class="dropdown">		
						<a href="login.jsp" class="dropdown-toggle"				
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">로그인<span class="caret"></span></a>					
						<ul class="dropdown-menu">				
							<li ><a href="login.jsp">로그인</a></li>
							<li class="active"><a href="join.jsp">회원가입</a></li>			
						</ul>			
					</li>			
				</ul>	
			</div>
	</nav>
	<!-- 로그인폼-->
	<div class="container">
		<div class="col-lg-4"></div>		
		<div class="col-lg-4"></div>
	
		<!-- 점보트론 백그라운드 회색 배경(배경 안에 양식 들어있는 구조로 덮음)-->
		<div class="jumbotron" style="padding-top: 15px; margin-top:80px; margin-left:80px; margin-right:80px;" >
				
		<!-- 로그인 정보 숨기고 전송-->	
			<form method="post" action="joinAction.jsp">	
				<h3 style="text-align: center; margin-bottom: 15px;">가입에 필요한 정보를 적어주세요! </h3><br>
						
			<!-- 정보 입력 바 생성란 -->
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
				</div>		
				<div class="form-group">
				<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
				</div>			
				<div class="form-group">
				<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
				</div>
				
			<!--  남/여 성별 구분 버튼형 체크란 -->
				<div class="form-group" style="text-align: center;">			
					<div class="btn-group" data-toggle="buttons">							
					<label class="btn btn-primary active"> 
					<input type="radio" name="userGender" autocomplete="on" value="남자" checked>남자
					</label> 								
					<label class="btn btn-primary"> 
					<input type="radio" name="userGender" autocomplete="off" value="여자" >여자
					</label>						
					</div>
				</div>
				<div class="form-group">
				<input type="text" class="form-control" placeholder="이메일" name="userEmail" maxlength="25">
				</div>
				<input type="submit" class="btn btn-primary form-control" value="회원가입">
			</form>		
		</div>		
	</div>		
		<div class="col-lg-4"></div>		
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
