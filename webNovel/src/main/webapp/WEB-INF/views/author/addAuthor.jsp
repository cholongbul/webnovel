<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>

<main>

	<div class="container p-3 border border-info mb-2">
		<h4>작가 등록</h4>
		<p class="text-danger">
			작가을 등록하기 전에 <a>가이드 라인</a>을 읽어주세요.
		</p>
		<p class="text-danger">등록하려는 작가가 존재하는지 먼저 확인해주세요!</p>
	</div>
	<form method="post" action="addauthorPOST">

		<div class="container p-3 border border-info mb-2">
			<h4 class="mb-4">기본 정보</h4>

			<div class="mb-3  col-12 row">
				<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">작가이름</label>
				<div class="col-5">
					<input type="text"  name="a_name" class="form-control" id="inputTitle"
						placeholder="이름을 입력해주세요">
				</div>
			</div>
			<div class="mb-3 col-12 row">
				<label for="inputAlias" class="col-1 col-form-label pt-0 pl-0">작가이력</label>
				<div class="col-5">
					<textarea class="form-control"  name="a_history" id="inputAlias" rows="2"></textarea>
					<small id="aliashelp" class="form-text text-muted">간단한 작가
						이력을 입력해주세요 </small>
				</div>
			</div>
			<div class="mb-3  col-12 row">
				<label for="selectContinue" class="col-1 col-form-label pt-0 pl-0">성별</label>
				<div class="col-2">
					<select class="custom-select"  name="gender" id="selectContinue">
						<option value="불명">불명</option>
						<option value="남">남</option>
						<option value="여">여</option>
					</select>
				</div>
			</div>
		</div>

		<div class="container p-3 border border-info mb-2 text-center">
			<button class="btn btn-outline-info center" type="submit">등록하기</button>
		</div>
	</form>
</main>

<%@include file="../include/footer.jsp"%>