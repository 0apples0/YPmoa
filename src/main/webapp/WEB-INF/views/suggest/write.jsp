<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>


<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center ">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Suggest</h1>
            <p id="login_p">정책 건의 등록하기</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<div class="container-xxl py-5_a">
    <div class="container">
        <div class="row g-4">
            <div class="wow fadeInUp" data-wow-delay="0.1s">
                <!-- table section -->
                <form id="writeForm" method="post" action="/suggest/write" onsubmit="return validateForm()">
	                <div class="col-md-12">
	                    <div class="white_shd_a full">
	                        <div class="padding_infor_info">
	                            <div class="row ">
	                                <div class="" style="width: 15%;">
	                                    <select class="form-select" id="region" name="region">
	                                        <option selected value="" >지역</option>
		                                    <option value="부천시">부천시</option>
		                                    <option value="수원시">수원시</option>
		                                    <option value="광명시">광명시</option>
	                                    </select>
	                                </div>
	                                <div class="" style="width: 15%;">
	                                    <select class="form-select" id="category" name="category">
	                                        <option selected value="" >관심분야</option>
		                                    <option value="주거">주거</option>
		                                    <option value="교육">교육</option>
		                                    <option value="신혼부부">신혼부부</option>
	                                    </select>
	                                </div>
	                                <input class="form-control" id="titleInput" name="title"
	                                    style="font-family: 'LINESeedKR-Bd_light'; width: 67%;"
	                                    placeholder="제목을 입력해주세요">
	                                <input type="hidden" name="nick" value="${user.nick}">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-12">
	                    <div class="white_shd_a full margin_bottom_auto">
	                        <div class="table_section padding_infor_info">
	                            <div class="table-responsive-sm">
	                                <table class="table commu_table policy_dt_table policyWrite_table">
	                                    <colgroup>
	                                        <col style="width: 14%">
	                                        <col style="width: 36%">
	                                        <col style="width: 14%">
	                                        <col style="width: 36%">
	                                    </colgroup>
	                                    <tbody>
	                                        <tr>
	                                            <td colspan="4">
													<textarea id="summernote" name="content" class="form-control"></textarea>
	                                            </td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                                <br>
	                                <div>
	                                    <button type="submit" class="btn btn-primary">등록하기</button>
	                                    <button type="button" class="btn btn-warning" onclick="history.back()">취소</button>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>

	
    $(document).ready(function ($) {
    	
    	// 모든 내용 선택 및 작성 확인
        $('#writeForm').submit(function (event) {
            var region = $('#region').val();
            var category = $('#category').val();
            var title = $('#titleInput').val();
            var content = $('#summernote').val();

            if (region === "") {
                alert("지역을 선택해주세요.");
                event.preventDefault();
            }else if(category === ""){
                alert("관심분야를 선택해주세요.");
                event.preventDefault();
            }else if(title === ""){
                alert("제목을 작성해주세요.");
                event.preventDefault();
            }else if(content === ""){
                alert("내용을 작성해주세요.");
                event.preventDefault();
            }
        });
	
        $('#summernote').summernote({
            height: 500,
            minHeight: null,
            maxHeight: null,
            lang: "ko-KR",	// 한글 설정
            focus: true,
            toolbar: [
                // [groupName, [list of button]]
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['picture', ['[picture]']],
                ['insert', ['link', 'picture']],
            ]

        });

		$('#summernote').summernote('fontName', 'LINESeedKR-Bd_light');

    }); 


</script>

<%@include file="../includes/footer.jsp"%>