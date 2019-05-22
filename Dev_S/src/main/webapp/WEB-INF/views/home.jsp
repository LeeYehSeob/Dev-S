<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="Name" value="${sessionScope.user_name}"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		<title>Dev-S</title>
		<link rel="stylesheet" type="text/css" href="${path}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${path}/resources/css/index.css">
	</head>
	<body>
		<!-- navigation -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="./">Dev-S</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">전체글보기<span class="sr-only"></span></a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">기초<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">C/C++</a></li>
								<li><a href="#">Java</a></li>
								<li><a href="#">C#</a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">웹 개발<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">HTML/CSS</a></li>
								<li><a href="#">JSP/Servlet</a></li>
								<li><a href="#">Javascript</a></li>
								<li><a href="#"></a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">게임 개발<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Unity</a></li>

							</ul>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:choose>
							<c:when test="${Name != null}">
								<li><a href="#">마이페이지<span class="sr-only"></span></a></li>
							</c:when>
							<c:otherwise>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
										aria-haspopup="true" aria-expanded="false">접속하기<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a data-target="#login-modal" data-toggle="modal">로그인</a></li>
										<li><a data-target="#signUp-modal" data-toggle="modal">회원가입</a></li>
									</ul>
								</li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</nav>

		<!-- jumbotron -->
		<div class="container">
			<div class="jumbotron">
				<h1 class="text-center">Dev-S에 오신걸 환영합니다!</h1>
				<br>
				<p class="text-left">
					
				</p>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<h1>Dev-S 소개</h1>
					<p>
						Dev-S는 제작자의 개인 공부용 웹 사이트로,<br>
						개발 환경 설정이나 프로그래밍 언어 기초부터 <br>
						Spring이나 React와 같은 프레임워크, 라이브러리에 대한 정보를 가지고 있습니다.
					</p>
				</div>
				<div class="col-sm-4">
					<h1>최신글보기</h1>
					<p><hr>
						<a href="#">${pageScope.contentTitle}</a><hr>
						<a href="#">${pageScope.contentTitle}</a><hr>
						<a href="#">${pageScope.contentTitle}</a><hr>
						<a href="#">${pageScope.contentTitle}</a><hr>
						<a href="#">${pageScope.contentTitle}</a><hr>
					</p>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="">
				
			</div>
		</div>

		<!-- footer -->
		<footer style="background-color: #000000; color: #ffffff ">
			<div class="container">
				<br>
				<div class="row">
					<div class="col-sm-4" style="text-align: center;">
						<h5>Copyright &copy; 2019-00-00</h5>
						<h5>Dev-S</h5>
					</div>
					<div class="col-sm-6">
						<h4>개발자 소개</h4>
						<p>
							본명 : 이예섭 (YehSeob Lee) <br>
							거주지 : 경기도 용인시 처인구 <br>
							근무지 : 자택
						</p>
					</div>

					<div class="col-sm-2"><h4 style="text-align: center;"><span class="glyphicon glyphicon-ok"> by Mne</span></h4>
					</div>
				</div>
			</div>
		</footer>
		<div class="row">
			<div class="modal" id="login-modal" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							로그인
							<button class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body" style="text-align: center;">
							<form action="${path}/#" method="post">
								<input type="text" name="user_id" placeholder="ID"><br>
								<input type="password" name="user_pw" placeholder="PW"><br>
								<button type="submit">로그인</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			
			<div class="modal" id="signUp-modal" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							회원가입
							<button class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<form action="${path}/#" method="post">
								<table style="margin-left: auto; margin-right: auto;">
									<tr>
										<td>
											ID : 
										</td>
										<td>
											<input type="text" name="user_id">
										</td>
									</tr>
									<tr>
										<td>
											Password : 
										</td>
										<td>
											<input type="password" name="user_password">
										</td>
									</tr>
									<tr>
										<td>
											Email : 
										</td>
										<td>
											<input type="text" name="user_email">
										</td>
									</tr>
								</table>
								
								
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="${path}/resources/js/bootstrap.js"></script>
	</body>
</html>