<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>

<main>
	<div class="container p-3 border border-info mb-2">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="mb-4">${novel_all.novel.title}</h4>
			</div>


			<div class="col-4 mx-3 float-right">
				<div class="border" style="width: 256px; height: 400px;">
					<img src="${novel_all.novel.image}" class="img-thumbnail">
				</div>
			</div>
			<div class="col-7">
				<table class="table table-striped table-sm">
					<tbody>
						<tr>
							<td>제목</td>
							<td>${novel_all.novel.title}</td>

						</tr>
						<tr>
							<td>작가</td>
							<td>${novel_all.author.a_name}</td>


						</tr>
						<tr>
							<td>연재상황</td>
							<td>${novel_all.novel.ending }</td>


						</tr>
						<tr>
							<td>연재처</td>
							<td>${novel_all.web.w_name }</td>


						</tr>
						<tr>
							<td>미디어믹스</td>
							<td>웹툰</td>
						</tr>

						<tr>
							<td colspan="2">유저참여</td>

						</tr>
						<tr>
							<td>나의 상태</td>
							<td>읽음</td>

						</tr>
						<tr>
							<td>나의 투표</td>
							<td>4</td>

						</tr>
						<tr>
							<td colspan="2">줄거리</td>
						</tr>
						<tr>
							<td colspan="2">${novel_all.novel.n_description }</td>

						</tr>

					</tbody>
				</table>



			</div>
		</div>
	</div>
</main>


<%@include file="../include/footer.jsp"%>