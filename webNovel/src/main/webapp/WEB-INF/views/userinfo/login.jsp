<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>
<div class="container p-3 col-3 border text-center border-info mb-2">
  <form method="post" action="userinfo/userLogin">
    <h1 class="h3 mb-3 fw-normal">로그인 해주세요</h1>
    <label for="inputID" class="visually-hidden">ID</label>
    <input type="text" id="inputID" name="u_id" class="form-control" placeholder="ID" required autofocus>
    <label for="inputPassword" class="visually-hidden">Password</label>
    <input type="password" id="inputPassword" class="form-control" name="pwd" placeholder="Password" required>
    <div class="checkbox mb-3">
      <br>
    </div>
    <button class="w-100 btn btn-lg btn-secondary" type="submit">로그인</button>
  </form>
  <br>
  <a class="login-link" href="#">비밀번호를 잊으셨나요?</a><p>
   <a class="login-link" href="register">회원가입을 하지 않으셨나요?</a>
</div>
</main>

<%@include file="../include/footer.jsp"%>

<script type="text/javascript">
	var msg = "${msg}";
	if (msg === "REGISTERED") {
		alert("회원가입이 완료되었습니다. 로그인해주세요.");
	} else if (msg == "FAILURE") {
		alert("아이디와 비밀번호를 확인해주세요.");
	}

</script>



</body>
</html>