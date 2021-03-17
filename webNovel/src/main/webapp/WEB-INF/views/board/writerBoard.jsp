<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>
	<div class="container p-3 border border-info mb-2">
		<h4>작품 검색</h4>
		<form action="/v" method="get" class="text-center">
			<fieldset class="search">
				<div
					style="width: 400px; text-align: center; margin-left: auto; margin-right: auto; text-align:center;">
					<a class="btn btn-outline-info btn-sm center" href="novelBoard">작품 검색</a>
					<a class="btn btn-outline-info btn-sm center active" href="writerBoard">작가</a>
					<a class="btn btn-outline-info btn-sm center" href="charBoard">등장인물</a>
					<a class="btn btn-outline-info btn-sm center" href="noveltagBoard">작품 태그</a>
					<a class="btn btn-outline-info btn-sm center" href="chartagBoard">등장인물 태그</a>

				</div>
				<input style="width: 410px;" type="text" name="q" id="q" class="text" value="" /><input
					type="submit" class="submit" value="Search!" />
			</fieldset>
			<br>

			<div class="container text-center ">
				<input type="hidden">
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td class="row">
							<div class="col-auto px-1">
								<div class="dropdown">
									<a class="btn btn-outline-info dropdown-toggle" style="font-size: small;" href="#"
										role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
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
									<a class="btn btn-outline-info dropdown-toggle" style="font-size: small;" href="#"
										role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
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
									<a class="btn btn-outline-info dropdown-toggle" style="font-size: small;" href="#"
										role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
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
									<a class="btn btn-outline-info dropdown-toggle" style="font-size: small;" href="#"
										role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
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
							<a class="btn btn-outline-info" style="font-size: small;" href="#"
										role="button" id="dropdownMenuLink"  data-bs-toggle="dropdown"
										aria-expanded="false">+</a>
							</div>
						</td>
				</table>
			</div>
			<br>
			<p class="center">10 results in 0.059s</p>
		</form>

	</div>

	<div class="container contents-wrap text-center h-80">
		<div class="table-responsive">
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
						<td>전지적 독자 시점</td>
						<td>2016/01/05</td>
						<td>완결</td>
						<td>100.0</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>그린스킨</td>
						<td>2016/01/05</td>
						<td>연재중</td>
						<td>88.5</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>칼든 자들의 도시</td>
						<td>2016/01/05</td>
						<td>연재중</td>
						<td>88.5</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>나 혼자만 레벨업</td>
						<td>2016/01/05</td>
						<td>연재중</td>
						<td>88.5</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>던전 디펜스</td>
						<td>2016/01/05</td>
						<td>연재중</td>
						<td>88.5</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>나노 마신</td>
						<td>2016/01/05</td>
						<td>연재중</td>
						<td>88.5</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>픽미업</td>
						<td>2016/01/05</td>
						<td>연재중</td>
						<td>88.5</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>하얀 늑대들</td>
						<td>2016/01/05</td>
						<td>연재중</td>
						<td>88.5</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>머실리스: 무법지대</td>
						<td>2016/01/05</td>
						<td>연재중</td>
						<td>88.5</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>탐식의 재림</td>
						<td>2016/01/05</td>
						<td>연재중</td>
						<td>88.5</td>
						<td>8.25</td>
					</tr>
					<tr>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
					</tr>
					<tr>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
					</tr>
					<tr>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
					</tr>
					<tr>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
					</tr>
					<tr>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
					</tr>
					<tr>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
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