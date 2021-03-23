<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>

	<main>
		<div class="container p-3 border border-info mb-2">
			<h4>작품 등록</h4>
			<p class="text-danger">
				작품을 등록하기 전에 <a>가이드 라인</a>을 읽어주세요.
			</p>
			<p class="text-danger">등록하려는 작품이 데이터베이스에 존재하는지 먼저 확인해주세요!</p>
		</div>
		<div class="container p-3 border border-info mb-2">
			<!-- 탭 -->
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#general">기본 정보</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#image">이미지</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#writer">작가</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#web">연재처</a></li>
			</ul>
			<!-- 탭 -->
			<!-- 기본 정보 -->
			<div class="tab-content p-3" id="myTabContent">
				<div class="tab-pane fade show active" id="general" role="tabpanel"
					aria-labelledby="general-tab">
					<h4 class="mb-4">기본 정보</h4>
					<div class="mb-3  col-12 row">
						<label for="inputTitle" class="col-1 col-form-label pt-0 pl-0">제목</label>
						<div class="col-5">
							<input type="text" class="form-control" id="inputTitle"
								placeholder="제목을 입력해주세요">
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
							class="col-1 col-form-label pt-0 pl-0">줄거리</label>
						<div class="col-5">
							<textarea class="form-control" id="exampleTextarea" rows="5"></textarea>
							<small id="descriptionHelp" class="form-text text-muted">줄거리를
								입력해주세요. 이야기의 스포일러가 되는 내용은 담지 말아주시길 바랍니다. 줄거리를 직접 작성한 게 아니라면 출처를
								기입해주세요. </small>
						</div>
					</div>
					<div class="mb-3  col-12 row">
						<label for="selectContinue" class="col-1 col-form-label pt-0 pl-0">연재상황</label>
						<div class="col-5">
							<select class="custom-select" id="selectContinue">
								<option value="0">연재중</option>
								<option value="1">완결</option>
								<option value="2">연재중단</option>
							</select>
						</div>
					</div>
					<div class="mb-3  col-12 row">
						<label for="exampleInputEmail1"
							class="col-1 col-form-label pt-0 pl-0">관련작품</label>
						<div class="col-5">
							<input type="text" class="form-control" id="inputRelation"
								aria-describedby="emailHelp" placeholder="Enter email">
							<small id="emailHelp" class="form-text text-muted">이미
								존재하는 작품들 중에서 관련있는 작품을 선택해주세요.ex)등록작품이 속편이고 본편이 존재할 경우 선택</small>
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
											10mb이하의 JPEG 혹은 PNG 포맷으로만 올릴 수 있습니다. <br>256x400보다 큰
											사이즈의 이미지는 자동으로 크기가 조정됩니다.
										</small>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<!-- 이미지 -->
				<!-- 작가 -->
				<div class="tab-pane fade" id="writer" role="tabpanel"
					aria-labelledby="writer-tab">
					<h4 class="mb-4">작가</h4>
					<div class="mb-3 col-12 row">
						<label for="exampleInputEmail1"
							class="col-1 col-form-label pt-0 pl-0">작가이름</label>
						<div class="col-5">
							<input type="text" class="form-control" id="inputRelation"
								aria-describedby="emailHelp" placeholder="작가이름"> <small
								id="emailHelp" class="form-text text-muted">찾는 작가가 존재하지
								않을 경우 작가를 <a href=#>등록</a> 해주세요
							</small>
						</div>
					</div>
				</div>
				<!-- 작가 -->
				<!-- 연재처 -->
				<div class="tab-pane fade" id="web" role="tabpanel"
					aria-labelledby="web-tab">
					<h4 class="mb-4">연재처</h4>
					<div class="mb-3 col-12 row">
						<label for="exampleInputEmail1"
							class="col-1 col-form-label pt-0 pl-0">연재처</label>
						<div class="col-3">
							<input type="text" class="form-control" id="inputRelation"
								aria-describedby="emailHelp" placeholder="연재처">
						</div>
						<label for="exampleInputEmail1"
							class="col-1 col-form-label pt-0 px-0">연재시작일</label>
						<div class="col-3">
							<input type="text" class="form-control" id="inputRelation"
								aria-describedby="emailHelp" placeholder="연재시작일">
						</div>

					</div>
					<div class="mb-3 col-12 row">
						<div class="col-1"></div>
						<div class="col-7 row">
							<button type="button" class="btn btn-secondary btn-sm p-0 col-1"
								style="width: 23px; margin-left: 15px;">+</button>
							<small id="emailHelp" class="form-text text-muted px-2">여러
								곳에서 연재할 경우 추가해주세요. 찾는 연재처가 없다면 <a href=#>등록</a> 해주세요
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