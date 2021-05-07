<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>

		<%@include file="../include/searchBoard.jsp"%>
	<div class="container p-3 border border-info mb-2">
		<ul class="ul-viewlist">
			<c:forEach items="${authors}" var="author">
				<li><a href="authorView${a_pageCounter.makeQuery(a_pageCounter.criteria.page)}&a_id=${author.a_id}">${author.a_name}</a></li>
			</c:forEach>

		</ul>
	</div>
	<div class="container">
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<c:if test="${a_pageCounter.prev}">
					<li class="page-item"><a class="page-link"
						href="authorBoard${a_pageCounter.makeQuery(a_pageCounter.startPage-1)}">Previous</a></li>
				</c:if>
				<c:forEach begin="${a_pageCounter.startPage}"
					end="${a_pageCounter.endPage}" var="idx">
					<li
						class="page-item <c:if test="${a_pageCounter.criteria.page == idx}">
					 active </c:if>"><a
						class="page-link" href="authorBoard${a_pageCounter.makeQuery(idx)}">${idx}</a></li>

				</c:forEach>
				<c:if test="${a_pageCounter.next && a_pageCounter.endPage > 0}">

					<li class="page-item"><a class="page-link"
						href="authorBoard${a_pageCounter.makeQuery(a_pageCounter.endPage + 1)}">Next</a></li>
				</c:if>
			</ul>
		</nav>
	</div>

</main>
<%@include file="../include/footer.jsp"%>