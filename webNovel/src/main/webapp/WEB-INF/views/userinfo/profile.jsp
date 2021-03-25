<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>

	<div class="container p-3 border border-info mb-2">
		<h4 class="mb-4">프로필</h4>
		<div class="mb-3  col-12 row">
			<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">아이디</label>
			<div class="col-5">
				<p>${login.u_id}</p>
			</div>
		</div>
		<div class="mb-3 col-12 row">
			<label for="inputAlias" class="col-1 col-form-label pt-0 pl-0">이메일</label>
			<div class="col-3">
				<p>${login.email}</p>
			</div>
		</div>

	</div>

</main>

<%@include file="../include/footer.jsp"%>