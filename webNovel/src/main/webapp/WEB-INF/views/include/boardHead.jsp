<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container p-3 border  border-info mb-2">
	<c:if test="${authors ne null}">
		<h4>작가 검색</h4>
	</c:if>
	<c:if test="${novels ne null}">
		<h4>작품 검색</h4>
	</c:if>
	<c:if test="${webs ne null}">
		<h4>연재처 검색</h4>
	</c:if>
		<c:if test="${pubs ne null}">
		<h4>출판사 검색</h4>
	</c:if>
	<div class="text-center">
		<fieldset class="search">
			<div
				style="width: 520px; text-align: center; margin-left: auto; margin-right: auto; text-align: center;">
				<a
					class="btn btn-outline-info btn-sm center <c:if test="${novels ne null}">
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
			<input style="width: 510px;" type="text" name="q" id="q" class="text"
				value="" /><input type="submit" class="submit" value="Search!" />
		</fieldset>
		<br>

		<div class="container text-center ">
			<input type="hidden">
			<table style="margin-left: auto; margin-right: auto;">
				<tr>
					<td class="row">
						<div class="col-auto px-1">
							<div class="dropdown">
								<a class="btn btn-outline-info dropdown-toggle"
									style="font-size: small;" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">And</a>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="#">And: 모든 필터가 적용된
											결과가 검색됩니다.</a></li>
									<li><a class="dropdown-item" href="#">Or: 한 가치 필터라도
											충족되면 검색됩니다.</a></li>

								</ul>
							</div>

						</div> <b class="col-auto px-1">→</b>
						<div class="col-auto px-1">
							<div class="dropdown">
								<a class="btn btn-outline-info dropdown-toggle"
									style="font-size: small;" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">작가</a>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="#">And: 모든 필터가 적용된
											결과가 검색됩니다.</a></li>
									<li><a class="dropdown-item" href="#">Or: 한 가치 필터라도
											충족되면 검색됩니다.</a></li>

								</ul>
							</div>
						</div>
						<div class="col-auto  px-1">
							<div class="dropdown">
								<a class="btn btn-outline-info dropdown-toggle"
									style="font-size: small;" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">태그</a>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="#">And: 모든 필터가 적용된
											결과가 검색됩니다.</a></li>
									<li><a class="dropdown-item" href="#">Or: 한 가치 필터라도
											충족되면 검색됩니다.</a></li>

								</ul>
							</div>
						</div>
						<div class="col-auto  px-1">
							<div class="dropdown">
								<a class="btn btn-outline-info dropdown-toggle"
									style="font-size: small;" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">태그</a>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="#">And: 모든 필터가 적용된
											결과가 검색됩니다.</a></li>
									<li><a class="dropdown-item" href="#">Or: 한 가치 필터라도
											충족되면 검색됩니다.</a></li>
								</ul>
							</div>
						</div>
						<div class="col-auto px-1">
							<a class="btn btn-outline-info" style="font-size: small;"
								href="#" role="button" id="dropdownMenuLink"
								data-bs-toggle="dropdown" aria-expanded="false">+</a>
						</div>
					</td>
			</table>
		</div>
		<br>
		<p class="center">10 results in 0.059s</p>
	</div>

</div>