<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>


<main>

	<div class="container p-3 border border-info mb-2">
		<h4>등장인물 등록</h4>
		<p class="text-danger">
			등장인물을 등록하기 전에 <a>가이드 라인</a>을 읽어주세요.
		</p>
		<p class="text-danger">등록하려는 등장인물이 데이터베이스에 존재하는지 먼저 확인해주세요!</p>
	</div>
	<div class="container p-3 border border-info mb-2">
		<!-- 탭 -->
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#general">기본 정보</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#image">이미지</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#writer">태그</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#web">등장작품</a></li>
		</ul>
		<!-- 탭 -->
		<!-- 기본 정보 -->
		<div class="tab-content p-3" id="myTabContent">
			<div class="tab-pane fade show active" id="general" role="tabpanel"
				aria-labelledby="general-tab">
				<h4 class="mb-4">기본 정보</h4>
				<div class="mb-3  col-12 row">
					<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">이름</label>
					<div class="col-5">
						<input type="text" class="form-control" id="inputTitle"
							placeholder="이름을 입력해주세요">
					</div>
				</div>
				<div class="mb-3 col-12 row">
					<label for="inputAlias" class="col-1 col-form-label pt-0 pl-0">별칭</label>
					<div class="col-5">
						<textarea class="form-control" id="inputAlias" rows="2"></textarea>
						<small id="aliashelp" class="form-text text-muted">별칭란은
							인터넷 상에서 사용되는 줄임말, 별명 등을 기입하는 곳입니다. <br>구분자 없이 한 줄에 하나의 별칭을
							입력해주세요.
						</small>
					</div>
				</div>
				<div class="mb-3 col-12 row">
					<label for="inputDescription"
						class="col-1 col-form-label pt-0 pl-0">설명</label>
					<div class="col-5">
						<textarea class="form-control" id="exampleTextarea" rows="5"></textarea>
						<small id="descriptionHelp" class="form-text text-muted">인물에
							대한 대략적인 설명을 입력해주세요.<br> 이야기의 스포일러가 되는 내용은 담지 말아주시길 바랍니다.
							줄거리를 직접 작성한 게 아니라면 출처를 기입해주세요.
						</small>
					</div>
				</div>
				<div class="mb-3  col-12 row">
					<label for="selectContinue" class="col-1 col-form-label pt-0 pl-0">생일</label>
					<div class="col-2">
						<select class="custom-select" id="selectContinue">
							<option value="1">불명</option>
							<option value="2">1월</option>
							<option value="3">2월</option>
							<option value="4">3월</option>
							<option value="5">4월</option>
							<option value="6">5월</option>
							<option value="7">6월</option>
							<option value="8">7월</option>
							<option value="9">8월</option>
							<option value="10">9월</option>
							<option value="11">10월</option>
							<option value="12">11월</option>
							<option value="13">12월</option>
						</select>
					</div>
					<div class="col-2">
						<select class="custom-select" id="selectContinue">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
					</div>
				</div>
				<div class="mb-3  col-12 row">
					<label for="exampleInputEmail1"
						class="col-1 col-form-label pt-0 pl-0">나이</label>
					<div class="col-1">
						<input type="text" class="form-control" id="inputRelation"
							aria-describedby="emailHelp">
					</div>
					<p class="m-0 align-self-center">살</p>
				</div>
				<div class="mb-3  col-12 row">
					<b class="col-1 col-form-label pt-0 pl-0">신체</b>
				</div>
				<div class="mb-3  col-12 row">
					<label for="selectContinue" class="col-1 col-form-label pt-0 pl-0">성별</label>
					<div class="col-2">
						<select class="custom-select" id="selectContinue">
							<option value="1">불명</option>
							<option value="2">남성</option>
							<option value="3">여성</option>
							<option value="4">그외</option>
						</select>
					</div>
				</div>
				<div class="mb-3  col-12 row">
					<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">키</label>
					<div class="col-1">
						<input type="text" class="form-control" id="inputTitle">
					</div>
					<p class="m-0 align-self-center">cm</p>
				</div>
				<div class="mb-3  col-12 row">
					<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">몸무게</label>
					<div class="col-1">
						<input type="text" class="form-control" id="inputTitle">
					</div>
					<p class="m-0 align-self-center">kg</p>
				</div>
				<div class="mb-3  col-12 row">
					<label for="selectContinue" class="col-1 col-form-label pt-0 pl-0">혈액형</label>
					<div class="col-2">
						<select class="custom-select" id="selectContinue">
							<option value="1">불명</option>
							<option value="2">O</option>
							<option value="3">B</option>
							<option value="4">A</option>
							<option value="4">AB</option>
						</select>
					</div>
				</div>
			</div>
			<!-- 기본 정보 -->
			<!-- 이미지 -->
			<div class="tab-pane fade" id="image" role="tabpanel"
				aria-labelledby="image-tab">
				<h4 class="mb-4">이미지</h4>

				<table>
					<tr>
						<td class="border p-1" style="width: 256px; height: 400px;"><p
								class="text-center">이미지 없음</p> <img src="#"
							class="img-thumbnail hidden" alt="#"></td>
						<td class="px-4" style="width: 320px; height: 400px;">
							<div class="form-group">
								<div class="input-group mb-3">
									<div class="custom-file">
										<input type="file" class="custom-file-input"
											id="inputGroupFile02" aria-describedby="inputImgHelp">
										<label class="custom-file-label" for="inputGroupFile02">이미지
											선택</label>
									</div>
									<small id="inputImgHelp" class="form-text text-muted">이미지는
										10mb이하의 JPEG 혹은 PNG 포맷으로만 올릴 수 있습니다. <br>256x400보다 큰 사이즈의
										이미지는 자동으로 크기가 조정됩니다.
									</small>
								</div>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<!-- 이미지 -->
			<!-- 태그 -->
			<div class="tab-pane fade" id="writer" role="tabpanel"
				aria-labelledby="writer-tab">
				<h4 class="mb-4">태그</h4>
				<div class="mb-3 col-12 row">
					<label for="exampleInputEmail1"
						class="col-1 col-form-label pt-0 pl-0">태그</label>
					<div class="col-5">
						<input type="text" class="form-control" id="inputRelation"
							aria-describedby="emailHelp" placeholder="태그검색"> <small
							id="emailHelp" class="form-text text-muted">찾는 태그를 <a
							href="chartagBoard">태그 리스트</a>에서 확인해보세요.<br>찾는 태그가 존재하지 않을
							경우 태그를 <a href=#>등록 신청</a> 해주세요.
						</small>
					</div>
				</div>
			</div>
			<!-- 작가 -->
			<!-- 연재처 -->
			<div class="tab-pane fade" id="web" role="tabpanel"
				aria-labelledby="web-tab">
				<h4 class="mb-4">등장작품</h4>
				<div class="mb-3 col-12 row">
					<label for="exampleInputEmail1"
						class="col-1 col-form-label pt-0 pl-0">등장작품</label>
					<div class="col-3">
						<input type="text" class="form-control" id="inputRelation"
							aria-describedby="emailHelp" placeholder="등장작품">
					</div>
				</div>
				<div class="mb-3 col-12 row">
					<div class="col-1"></div>
					<div class="col-7 row">
						<button type="button" class="btn btn-secondary btn-sm p-0 col-1"
							style="width: 23px; margin-left: 15px;">+</button>
						<small id="emailHelp" class="form-text text-muted px-2">여러
							작품에 등장할 경우 추가해주세요. 찾는 작품이 없다면 <a href=#>등록</a> 해주세요
						</small>
					</div>

				</div>
			</div>
			<!-- 연재처 -->

		</div>
	</div>
	<div class="container p-3 border border-info mb-2 text-center">
		<a class="btn btn-outline-info center" href="#">등록하기</a>
	</div>
</main>


<%@include file="../include/footer.jsp"%>