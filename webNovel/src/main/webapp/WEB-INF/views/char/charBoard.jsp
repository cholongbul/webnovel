<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>
		<form action="/v" method="get" class="text-center">
<%@include file="../include/searchBoard.jsp"%>

	
		</form>

	<div class="container contents-wrap text-center h-80">
		<div class="table-responsive">
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>이름</th>
						<th>등장작품</th>
						<th>성별</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<td>전지적 독자 시점</td>
						<td>2016/01/05</td>
						<td>완결</td>

					</tr>
					<tr>
						<td>그린스킨</td>
						<td>2016/01/05</td>
						<td>연재중</td>

					</tr>
					<tr>
						<td>칼든 자들의 도시</td>
						<td>2016/01/05</td>
						<td>연재중</td>

					</tr>
					<tr>
						<td>나 혼자만 레벨업</td>
						<td>2016/01/05</td>
						<td>연재중</td>

					</tr>
					<tr>
						<td>던전 디펜스</td>
						<td>2016/01/05</td>
						<td>연재중</td>

					</tr>
					<tr>
						<td>나노 마신</td>
						<td>2016/01/05</td>
						<td>연재중</td>

					</tr>
					<tr>
						<td>픽미업</td>
						<td>2016/01/05</td>
						<td>연재중</td>

					</tr>
					<tr>
						<td>하얀 늑대들</td>
						<td>2016/01/05</td>
						<td>연재중</td>

					</tr>
					<tr>
						<td>머실리스: 무법지대</td>
						<td>2016/01/05</td>
						<td>연재중</td>

					</tr>
					<tr>
						<td>탐식의 재림</td>
						<td>2016/01/05</td>
						<td>연재중</td>

					</tr>
				</tbody>
			</table>
		</div>
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