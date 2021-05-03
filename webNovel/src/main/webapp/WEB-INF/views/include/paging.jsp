<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<c:if test="${pageCounter.prev}">
				<li class="page-item"><a class="page-link"
					href="<c:if test="${authors ne null}">
		authorBoard
	</c:if><c:if test="${pubs ne null}">
		pubBoard
	</c:if><c:if test="${webs ne null}">
		webBoard
	</c:if>${pageCounter.makeSearch(pageCounter.startpage-1)}">Previous</a></li>
			</c:if>
			<c:forEach begin="${pageCounter.startPage}"
				end="${pageCounter.endPage}" var="idx">
				<li
					class="page-item <c:if test="${pageCounter.criteria.page == idx}">
					 active </c:if>"><a
					class="page-link" href="<c:if test="${authors ne null}">
		authorBoard
	</c:if><c:if test="${pubs ne null}">
		pubBoard
	</c:if><c:if test="${webs ne null}">
		webBoard
	</c:if>${pageCounter.makeSearch(idx)}">${idx}</a></li>

			</c:forEach>
			<c:if test="${pageCounter.next && pageCounter.endPage > 0}">

				<li class="page-item"><a class="page-link"
					href="<c:if test="${authors ne null}">
		authorBoard
	</c:if><c:if test="${pubs ne null}">
		pubBoard
	</c:if><c:if test="${webs ne null}">
		webBoard
	</c:if>${pageCounter.makeSearch(pageCounter.endPage + 1)}">Next</a></li>
			</c:if>
		</ul>
	</nav>
</div>