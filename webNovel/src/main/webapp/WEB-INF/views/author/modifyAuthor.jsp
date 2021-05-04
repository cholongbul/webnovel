<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>

<main>
	<form role="form" method="post" action="modifyAuthorPOST">
		<div class="container p-3 border border-info mb-2">
			<h4>작가 수정</h4>
			<p class="text-danger">
				작가을 수정하기 전에 <a>가이드 라인</a>을 읽어주세요.
			</p>
		</div>
		<div class="container p-3 border border-info mb-2">
			<h4 class="mb-4">기본 정보</h4>
			<div class="mb-3  col-12 row">
				<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">작가이름</label>
				<div class="col-5">
					<input type="text" class="form-control" id="inputTitle"
						placeholder="이름을 입력해주세요" readonly="" name="a_name"
						value="${author.a_name}">
				</div>
			</div>
			<div class="mb-3 col-12 row">
				<label for="inputAlias" class="col-1 col-form-label pt-0 pl-0">작가이력</label>
				<div class="col-5">
					<textarea class="form-control" name="a_history" id="inputAlias"
						rows="2">${author.a_history}</textarea>
					<small id="aliashelp" class="form-text text-muted">간단한 작가
						이력을 입력해주세요 </small>
				</div>
			</div>
			<div class="mb-3  col-12 row">
				<label for="selectContinue" class="col-1 col-form-label pt-0 pl-0">성별</label>
				<div class="col-5">
					<select class="custom-select" name="gender" id="selectContinue">
						<option value="불명"
							<c:if test="${author.gender=='불명'}"> selected </c:if>>불명</option>
						<option value="남"
							<c:if test="${author.gender=='남'}"> selected </c:if>>남</option>
						<option value="여"
							<c:if test="${author.gender=='여'}"> selected </c:if>>여</option>
					</select>
				</div>
			</div>

		</div>
		<div class="container p-3 border border-info mb-2 text-center">
			<button type="submit" class="btn btn-outline-info center">
				수정하기</button>
			<button type="button" class="btn btn-outline-info center cancelBtn">취소하기</button>
		</div>
		<input type="hidden" name="a_id" value="${author.a_id}"> <input
			type="hidden" name="page" value="${searchCriteria.page}"> <input
			type="hidden" name="perPageNum" value="${searchCriteria.perPageNum}"><input
				type="hidden" name="keyword" value="${searchCriteria.keyword}"><input
				type="hidden" name="gender" value="${searchCriteria.gender}">
	</form>
</main>

<%@include file="../include/footer.jsp"%>