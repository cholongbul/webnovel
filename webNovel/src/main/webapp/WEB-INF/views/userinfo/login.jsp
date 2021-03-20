<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<div class="container contents-wrap text-center h-80">
<main class="form-regiter">
  <form>
    <h1 class="h3 mb-3 fw-normal">로그인 해주세요</h1>
    <label for="inputEmail" class="visually-hidden">ID</label>
    <input type="email" id="inputEmail" class="form-control" placeholder="ID" required autofocus>
    <label for="inputPassword" class="visually-hidden">Password</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
    <div class="checkbox mb-3">
      <br>
    </div>
    <button class="w-100 btn btn-lg btn-secondary" type="submit">로그인</button>
  </form>
  <br>
  <a class="login-link" href="#">비밀번호를 잊으셨나요?</a><p>
   <a class="login-link" href="register">회원가입을 하지 않으셨나요?</a>
</main>
</div>

<%@include file="../include/footer.jsp"%>



</body>
</html>