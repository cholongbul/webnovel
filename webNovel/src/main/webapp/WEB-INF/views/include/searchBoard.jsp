<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container p-3 border  border-info mb-2">
	<c:if test="${authors ne null}">
		<h4>작가 검색</h4>
	</c:if>
	<c:if test="${novel_alls ne null}">
		<h4>작품 검색</h4>
	</c:if>
	<c:if test="${webs ne null}">
		<h4>연재처 검색</h4>
	</c:if>
	<c:if test="${pubs ne null}">
		<h4>출판사 검색</h4>
	</c:if>
		<c:if test="${chars ne null}">
		<h4>등장인물 검색</h4>
	</c:if>
		<c:if test="${noveltags ne null}">
		<h4>작품 태그 검색</h4>
	</c:if>
		<c:if test="${chartags ne null}">
		<h4>등장인물 태그 검색</h4>
	</c:if>
	<div class="text-center">
		<fieldset class="search">
			<div
				style="width: 520px; text-align: center; margin-left: auto; margin-right: auto; text-align: center;">
				<a
					class="btn btn-outline-info btn-sm center <c:if test="${novel_alls ne null}">
					 active </c:if>"
					href="novelBoard">작품 검색</a> <a
					class="btn btn-outline-info btn-sm center 	<c:if test="${authors ne null}">
					 active </c:if>"
					href="authorBoard">작가</a> <a
					class="btn btn-outline-info btn-sm center <c:if test="${chars ne null}">
					 active </c:if>"
					href="charBoard">등장인물</a> <a
					class="btn btn-outline-info btn-sm center <c:if test="${noveltags ne null}">
					 active </c:if>"
					href="novelTagBoard">작품 태그</a> <a
					class="btn btn-outline-info btn-sm center <c:if test="${chartags ne null}">
					 active </c:if>"
					href="charTagBoard">등장인물 태그</a> <a
					class="btn btn-outline-info btn-sm center <c:if test="${webs ne null}">
					 active </c:if>"
					href="webBoard">연재처</a> <a
					class="btn btn-outline-info btn-sm center <c:if test="${pubs ne null}">
					 active </c:if>"
					href="pubBoard">출판사</a>

			</div>
			<input style="width: 510px;" type="text" name="keyword"
				id="keywordInput" class="text" value="${searchCriteria.keyword }" />
			<c:if test="${authors ne null}">
				<button type="button" class="a_searchBtn" id="a_searchBtn">
			</c:if>
			<c:if test="${pubs ne null}">
				<button type="button" class="p_searchBtn" id="p_searchBtn">
			</c:if>
			<c:if test="${novel_alls ne null}">
				<button type="button" class="n_searchBtn" id="n_searchBtn">
			</c:if>
			<c:if test="${chars ne null}">
				<button type="button" class="c_searchBtn" id="c_searchBtn">
			</c:if>
			<c:if test="${noveltags ne null}">
				<button type="button" class="nt_searchBtn" id="nt_searchBtn">
			</c:if>
			<c:if test="${chartags ne null}">
				<button type="button" class="ct_searchBtn" id="ct_searchBtn">
			</c:if>
			<c:if test="${webs ne null}">
				<button type="button" class="w_searchBtn" id="w_searchBtn">
			</c:if>
			search!
			</button>
		</fieldset>
		<br>
		<c:if test="${authors ne null}">
			<div class="container text-center ">
				<input type="hidden">
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td class="row">조건:
							<div class="col-auto px-1">
								<div class="form-group">
									<select class="form-control" name="gender">
										<option
											<c:out value="${searchCriteria.gender == 'null' ? 'selected' : ''}"/>>성별</option>
										<option value="남"
											<c:out value="${searchCriteria.gender eq '남' ? 'selected' : ''}"/>>남</option>
										<option value="여"
											<c:out value="${searchCriteria.gender eq '여' ? 'selected' : ''}"/>>여</option>
										<option value="불명"
											<c:out value="${searchCriteria.gender eq '불명' ? 'selected' : ''}"/>>불명</option>
									</select>
								</div>
							</div>

						</td>
				</table>
			</div>
		</c:if>

		<br>
		<p class="center">10 results in 0.059s</p>
	</div>
</div>