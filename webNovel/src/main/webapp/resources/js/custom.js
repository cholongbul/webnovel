(function() {
	'use strict';

	$(window).scroll(function() {
		var top = $(document).scrollTop();
		if (top > 50) {
			$('#home > .navbar').removeClass('navbar-transparent');
		} else {
			$('#home > .navbar').addClass('navbar-transparent');
		}
	})

	$('a[href="#"]').click(function(event) {
		event.preventDefault();
	})

	$('.bs-component')
			.each(
					function() {
						var $component = $(this);
						var $button = $('<button class="source-button btn btn-primary btn-xs" role="button" tabindex="0">&lt; &gt;</button>');
						$component.append($button);

						if ($component.find('[data-toggle="tooltip"]').length > 0) {
							$component.attr('data-html', $component.html());
						}
					});

	$('.bs-component [data-toggle="popover"]').popover();
	$('.bs-component [data-toggle="tooltip"]').tooltip();

	$('body').on(
			'click',
			'.source-button',
			function(event) {
				event.preventDefault();

				var component = $(this).parent();
				var html = component.attr('data-html') ? component
						.attr('data-html') : component.html();

				html = cleanSource(html);
				$('#source-modal pre').text(html);
				$('#source-modal').modal();
			})

	function cleanSource(html) {
		html = html.replace(/×/g, '&times;').replace(/«/g, '&laquo;').replace(
				/»/g, '&raquo;').replace(/←/g, '&larr;')
				.replace(/→/g, '&rarr;')

		var lines = html.split(/\n/);

		lines.shift();
		lines.splice(-1, 1);

		var indentSize = lines[0].length - lines[0].trim().length;
		var re = new RegExp(' {' + indentSize + '}');

		lines = lines.map(function(line) {
			if (line.match(re)) {
				line = line.slice(Math.max(0, indentSize));
			}

			return line;
		});

		lines = lines.join('\n');

		return lines;
	}
})();

// 커스텀 버튼

$(document).ready(function() {

	var formObj = $("form[role='form']");
	console.log(formObj);

	// 공용 버튼

	$(".cancelBtn").on("click", function() {
		history.go(-1);
	});
});
// 작가 커스텀 버튼

$(document).ready(function() {

	var formObj = $("form[role='form']");
	console.log(formObj);

	$(".a_modBtn").on("click", function() {
		formObj.attr("action", "modifyAuthor");
		formObj.attr("method", "get");
		formObj.submit();
	});

	$(".a_delBtn").on("click", function() {
		formObj.attr("action", "authorRemove");
		formObj.submit();
	});

	$(".a_listBtn").on("click", function() {
		formObj.attr("method", "get");
		formObj.attr("action", "authorBoard");
		formObj.submit();
	});
});

$(document).ready(
		function() {

			$("#a_searchBtn").on(
					"click",
					function(event) {
						self.location = "authorBoard?page=1&perPageNum=80"
								+ "&gender="
								+ $("select option:selected").val()
								+ "&keyword="
								+ encodeURIComponent($("#keywordInput").val());
					});

		});

// 출판사 커스텀 버튼

// 커스텀 버튼

$(document).ready(function() {

	var formObj = $("form[role='form']");
	console.log(formObj);

	$(".p_listBtn").on("click", function() {
		formObj.attr("method", "get");
		formObj.attr("action", "pubBoard");
		formObj.submit();
	});
});

$(document).ready(
		function() {

			$("#p_searchBtn").on(
					"click",
					function(event) {
						self.location = "pubBoard?page=1&perPageNum=80"
								+ "&keyword="
								+ encodeURIComponent($("#keywordInput").val());
					});

		});

// 자동완성

$(document).ready(function() {
	$("#authorInput").autocomplete({
		source : function(request, response) {
			$.ajax({
				url : "/autotext",
				type : "GET",
				data : {
					keyWord : $("#authorInput").val()
				} // 검색 키워드
				,
				success : function(data) { // 성공
					response($.map(data, function(item) {
						return {
							label : item.testNm // 목록에 표시되는 값
							,
							value : item.testNm
						// 선택 시 input창에 표시되는 값
						};
					})); // response
				},
				error : function() { // 실패
					alert("통신에 실패했습니다.");
				}
			});
		},
		minLength : 1,
		autoFocus : false,
		select : function(evt, ui) {
			console.log("전체 data: " + JSON.stringify(ui));
			console.log("검색 데이터 : " + ui.item.value);
		},
		focus : function(evt, ui) {
			return false;
		},
		close : function(evt) {
		}
	});
});

// 이미지 업로드

$("#gdsImg").change(function() {
	if (this.files && this.files[0]) {
		var reader = new FileReader;
		reader.onload = function(data) {
			$(".select_img img").attr("src", data.target.result).width(500);
		}
		reader.readAsDataURL(this.files[0]);
	}
});
