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
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container">
				<a class="navbar-brand" href="index">WebNovel</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarColor02" aria-controls="navbarColor02"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarColor02">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">작품</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="novelBoard">작품 검색</a> <a
									class="dropdown-item" href="noveltagBoard">작품 태그 검색</a>
							</div></li>
						<li class="nav-item"><a class="nav-link" href="writerBoard">작가</a>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">등장인물</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="charBoard">등장인물 검색</a> <a
									class="dropdown-item" href="chartagBoard">등장인물 태그 검색</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">등록</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="addnovel">작품 등록</a> <a
									class="dropdown-item" href="addnoveltag">작품 태그 등록</a><a
									class="dropdown-item" href="addwriter">작가 등록</a> <a
									class="dropdown-item" href="addchar">등장인물 등록</a> <a
									class="dropdown-item" href="addchartag">등장인물 태그 등록</a>
							</div></li>

					</ul>
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="text"
							placeholder="Search">
						<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
					</form>
				</div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
						role="button" aria-haspopup="true" aria-expanded="false">유저정보</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="login">로그인</a> <a
								class="dropdown-item" href="register">회원가입</a>
						</div></li>
				</ul>
			</div>
		</nav>


	</header>