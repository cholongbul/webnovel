<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>
	<div class="container contents-wrap text-center h-80">
	<form method="post" action="userRegister">
			<label class="label-regiter">
				<p class="label-txt">아이디를 입력해주세요</p> <input type="text" name="u_id"
				class="input">
				<div class="line-box">
					<div class="line"></div>
				</div>
			</label> <label class="label-regiter">
				<p class="label-txt">비밀번호를 입력해주세요</p> <input type="password"
				name="pwd" class="input">
				<div class="line-box">
					<div class="line"></div>
				</div>
			</label> <label class="label-regiter">
				<p class="label-txt">이메일을 입력해주세요</p> <input type="text" name="email"
				class="input">
				<div class="line-box">
					<div class="line"></div>
				</div>
			</label> <label class="label-regiter">
				<p class="label-txt">비밀번호를 확인해주세요</p> <input type="password"
				class="input">
				<div class="line-box">
					<div class="line"></div>
				</div>
			</label>
			<button class="btn-regiter" type="submit">회원가입</button>
		</form>
	</div>
</main>


<%@include file="../include/footer.jsp"%>