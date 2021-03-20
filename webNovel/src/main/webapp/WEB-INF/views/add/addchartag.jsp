<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>


<main>

	<div class="container p-3 border border-info mb-2">
		<h4>등장인물 태그 등록 신청</h4>
		<p class="text-danger">태그 등록은 신청이후 관리자의 허가를 받아야만 등록이 완료됩니다.</p>
		<p class="text-danger">
			태그 등록을 신청하기 전에 <a>가이드 라인</a>을 읽어주세요.
		</p>
		<p class="text-danger">등록하려는 태그가 존재하는지 먼저 확인해주세요!</p>
	</div>
	<div class="container p-3 border border-info mb-2">
		<h4 class="mb-4">기본 정보</h4>
		<div class="mb-3  col-12 row">
			<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">태그
				이름</label>
			<div class="col-5">
				<input type="text" class="form-control" id="inputTitle"
					placeholder="태그의 이름을 입력해주세요">
			</div>
		</div>
		<div class="mb-3 col-12 row">
			<label for="inputAlias" class="col-1 col-form-label pt-0 pl-0">별칭</label>
			<div class="col-5">
				<textarea class="form-control" id="inputAlias" rows="2"></textarea>
				<small id="aliashelp" class="form-text text-muted">태그를 검색할 때
					활용될 수 있는 다른 별칭을 입력해주세요 <br>구분자 없이 한 줄에 하나의 별칭을 입력해주세요.<br>태그
					이름과 별칭은 다른 이름과 겹쳐서는 안 됩니다.
				</small>
			</div>
		</div>
		<div class="mb-3 col-12 row">
			<label for="inputAlias" class="col-1 col-form-label pt-0 pl-0">설명</label>
			<div class="col-5">
				<textarea class="form-control" id="inputAlias" rows="8"></textarea>
				<small id="aliashelp" class="form-text text-muted">태그가 어떻게
					사용될 수 있는지, 어떤 특징을 담고자 하는지 서술해주세요. </small>
			</div>
		</div>
		<div class="mb-3  col-12 row">
			<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">부모 태그</label>
			<div class="col-5">
				<input type="text" class="form-control" id="inputTitle"
					placeholder="부모 태그를 입력해주세요">
			</div>
		</div>



	</div>

	<div class="container p-3 border border-info mb-2 text-center">
		<a class="btn btn-outline-info center" href="#">등록하기</a>
	</div>
</main>


<%@include file="../include/footer.jsp"%>