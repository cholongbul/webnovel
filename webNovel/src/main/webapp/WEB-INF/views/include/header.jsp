<%@page import="javax.inject.Inject"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.80.0">
<title>Navbar Template · Bootstrap v5.0</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/navbars/">



<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="resources/css/style.css" rel="stylesheet">
</head>

<body>

	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
			aria-label="Eighth navbar example">
			<div class="container">
				<a class="navbar-brand" href="index">WebNovelDB</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarsExample07"
					aria-controls="navbarsExample07" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarsExample07">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="dropdown07"
							data-bs-toggle="dropdown" aria-expanded="false">작품</a>
							<ul class="dropdown-menu" aria-labelledby="dropdown07">
								<li><a class="dropdown-item" href="novelBoard">작품 검색</a></li>
								<li><a class="dropdown-item" href="noveltagBoard">작품 태그
										검색</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link" href="writerBoard"
							aria-disabled="true">작가</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="dropdown07"
							data-bs-toggle="dropdown" aria-expanded="false">등장인물</a>
							<ul class="dropdown-menu" aria-labelledby="dropdown07">
								<li><a class="dropdown-item" href="charBoard">등장인물 검색</a></li>
								<li><a class="dropdown-item" href="chartagBoard">등장인물
										태그 검색</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="dropdown07"
							data-bs-toggle="dropdown" aria-expanded="false">등록</a>
							<ul class="dropdown-menu" aria-labelledby="dropdown07">
								<li><a class="dropdown-item" href="#">작품 등록</a></li>
								<li><a class="dropdown-item" href="#">작가 등록</a></li>
								<li><a class="dropdown-item" href="#">등장인물 등록</a></li>
								<li><a class="dropdown-item" href="#">작품 태그 등록</a></li>
								<li><a class="dropdown-item" href="#">등장인물 태그 등록</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link" href="#"
							aria-disabled="true">최근 변경</a></li>
					</ul>
					<form>
						<div class="input-group row">
							<input class="form-control col-sm-8" type="text"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-secondary col-sm-4">검색</button>
						</div>
					</form>
					<div class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown07"
							data-bs-toggle="dropdown" aria-expanded="false">유저정보</a>
						<ul class="dropdown-menu" aria-labelledby="dropdown07">
							<li><a class="dropdown-item" href="login">로그인</a></li>
							<li><a class="dropdown-item" href="register">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</header>