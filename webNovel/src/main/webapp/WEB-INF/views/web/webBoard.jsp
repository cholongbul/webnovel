<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>
	<form action="/v" method="get" class="text-center">
		<%@include file="../include/searchBoard.jsp"%>


	</form>




	<div class="container p-3 border border-info mb-2">
		<ul class="ul-viewlist">
			<c:forEach items="${webs}" var="web">
				<li><a href="webView?w_id=${web.w_id}">${web.w_name}</a></li>
			</c:forEach>

		</ul>
	</div>
	<div class="container">
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>
		</nav>
	</div>

</main>

<%@include file="../include/footer.jsp"%>