<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>

<main>

	<div class="container p-3 border border-info mb-2">
		<h4>출판사 등록</h4>
		<p class="text-danger">
			출판사를 등록하기 전에 <a>가이드 라인</a>을 읽어주세요.
		</p>
		<p class="text-danger">등록하려는 출판사가 존재하는지 먼저 확인해주세요!</p>
	</div>
	<form method="post" action="addPubPOST">

		<div class="container p-3 border border-info mb-2">
			<h4 class="mb-4">기본 정보</h4>

			<div class="mb-3  col-12 row">
				<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">출판사명</label>
				<div class="col-5">
					<input type="text" name="p_name" class="form-control"
						id="inputTitle" placeholder="이름을 입력해주세요">
				</div>
			</div>
			<div class="mb-3  col-12 row">
				<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">출판사
					웹주소</label>
				<div class="col-5">
					<input type="text" name="url" class="form-control" id="inputTitle"
						placeholder="웹주소를 입력해주세요">
				</div>
			</div>

		</div>

		<div class="container p-3 border border-info mb-2 text-center">
			<button class="btn btn-outline-info center" type="submit">등록하기</button>
		</div>
	</form>
</main>

<%@include file="../include/footer.jsp"%>