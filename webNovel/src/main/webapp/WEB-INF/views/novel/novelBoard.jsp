<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>
			<%@include file="../include/searchBoard.jsp"%>


	<div class="container p-3 border border-info mb-2">

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
							<c:forEach items="${novel_alls}" var="novel_all">
					<tr>
						<td><a href="novelView${n_pageCounter.makeQuery(n_pageCounter.criteria.page)}&n_id=${novel_all.novel.n_id}">${novel_all.novel.title}</a></td>
						<td>${novel_all.novel_web.started}</td>
						<td>${novel_all.novel.ending}</td>
						<td>100.0</td>
						<td>8.25</td>
					</tr>
								</c:forEach>
					
				</tbody>
			</table>
		</div>
	<div class="container">
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<c:if test="${n_pageCounter.prev}">
					<li class="page-item"><a class="page-link"
						href="novelBoard${n_pageCounter.makeQuery(n_pageCounter.startPage-1)}">Previous</a></li>
				</c:if>
				<c:forEach begin="${n_pageCounter.startPage}"
					end="${n_pageCounter.endPage}" var="idx">
					<li
						class="page-item <c:if test="${n_pageCounter.criteria.page == idx}">
					 active </c:if>"><a
						class="page-link" href="novelBoard${n_pageCounter.makeQuery(idx)}">${idx}</a></li>

				</c:forEach>
				<c:if test="${n_pageCounter.next && n_pageCounter.endPage > 0}">

					<li class="page-item"><a class="page-link"
						href="novelBoard${n_pageCounter.makeQuery(n_pageCounter.endPage + 1)}">Next</a></li>
				</c:if>
			</ul>
		</nav>
	</div>

</main>

<%@include file="../include/footer.jsp"%>