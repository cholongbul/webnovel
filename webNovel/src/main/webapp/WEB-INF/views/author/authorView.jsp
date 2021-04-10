<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>

<main>

	<div class="container p-3 border border-info mb-2">
		<h4>${author.a_name}</h4>
		<div class="col-lg-6">
			<table class="table table-striped table-sm">
				<tbody>
					<tr>
						<td colspan="2">${author.a_name}</td>

					</tr>
					<tr>
						<td>성별</td>
						<td>${author.gender}</td>


					</tr>
					<tr>
						<td>작가 이력</td>
						<td>${author.a_history}</td>


					</tr>


				</tbody>
			</table>
		</div>
	</div>


	<div class="container p-3 border border-info mb-2">
		<h4>작품</h4>
		<table class="table table-striped table-sm">
			<thead>
				<tr>
					<th>제목</th>
					<th>연재시작일</th>
					<th>상태</th>
					<th>인기</th>
					<th>평점</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="novelview">전지적 독자 시점</a></td>
					<td>2016/01/05</td>
					<td>완결</td>
					<td>100.0</td>
					<td>8.25</td>
				</tr>
			
			</tbody>
		</table>
	</div>
	<div class="container p-3 border border-info mb-2 text-center">
	<a class="btn btn-outline-info center" href="authorBoard">목록으로</a>
	<form role="form" action="modifyAuthor">
	<input type="hidden" name="a_id" value="${author.a_id}">
		<button type="submit" class="btn btn-outline-info center">수정하기</button>
		</form>
		<a class="btn btn-outline-info center" href="authorRemove">삭제하기</a>
	</div>
</main>

<%@include file="../include/footer.jsp"%>