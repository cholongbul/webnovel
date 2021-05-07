<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>

<main>

	<div class="container p-3 border border-info mb-2">
		<h4>${pub.p_name}</h4>
		<div class="col-lg-6">
			<table class="table table-striped table-sm">
				<tbody>
					<tr>
						<td colspan="2">${pub.p_name}</td>

					</tr>
					<tr>
						<td>주소</td>
						<td><a href="${pub.url}">${pub.url}</a></td>


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
		<form role="form" method="post">
			<input type="hidden" name="a_id" value="${pub.p_id}"> <input
				type="hidden" name="page" value="${searchCriteria.page}"> <input
				type="hidden" name="perPageNum" value="${searchCriteria.perPageNum}">
			<input type="hidden" name="keyword" value="${searchCriteria.keyword}">

		</form>
		<button type="submit" class="btn btn-outline-info center p_listBtn">목록으로</button>

	</div>
</main>

<%@include file="../include/footer.jsp"%>