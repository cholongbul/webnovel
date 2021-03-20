<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>

	<div class="container p-3 border border-info mb-2">
		<h4>작품 등록</h4>
		<p class="text-danger">
			작품을 등록하기 전에 <a>가이드 라인</a>을 읽어주세요.
		</p>
		<p class="text-danger">등록하려는 작품이 존재하는지 먼저 확인해주세요!</p>
	</div>
	<div class="container p-3 border border-info mb-2">
		<div class="mb-3 row">
			<label for="inputtitle" class="col-1 col-form-label">제목</label>
			<div class="col-7">
				<input type="text" readonly class="form-control-plaintext border"
					id="inputtitle">
			</div>
		</div>
		<div class="mb-3 row">
			<label for="inputalias" class="col-1 col-form-label">별칭</label>
			<div class="col-7">
				<textarea readonly class="form-control-plaintext border"
					id="inputalias" aria-describedby="aliashelp"></textarea>
				<small id="aliashelp" class="form-text text-muted">별칭란은 인터넷
					상에서 사용되는 줄임말, 별명 등을 기입하는 곳입니다. <br>구분자 없이 한 줄에 하나의 별칭을 입력해주세요.
				</small>
			</div>
		</div>
	</div>
	<div class="container p-3 border border-info mb-2 text-center">
		<a class="btn btn-outline-info center" href="addnovel_b">계속하기</a>
	</div>


</main>

<%@include file="../include/footer.jsp"%>