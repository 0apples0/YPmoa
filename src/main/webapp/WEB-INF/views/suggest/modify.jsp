<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>



<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center ">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Suggest</h1>
            <p id="login_p">정책 건의 수정하기</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<div class="container-xxl py-5_a">
    <div class="container">
        <div class="row g-4">
            <div class="wow fadeInUp" data-wow-delay="0.1s">
                <!-- table section -->
                           		<form method="post" action="/suggest/modify">
                <div class="col-md-12">
                    <div class="white_shd_a full">
                        <div class="padding_infor_info">
                            <div class="row ">
                                <div class="" style="width: 15%;">
                                    <select class="form-select" id="category">
                                    	<option value="${vo.category}">${vo.category}</option>
                                        <option value="1">주거</option>
                                        <option value="2">일자리</option>
                                    </select>
                                </div>
                                <input class="form-control" id="titleInput"
                                    style="font-family: 'LINESeedKR-Bd_light'; width: 84%;"
                                    placeholder="제목을 입력해주세요"  value="${vo.title}">
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
                                                    <textarea id="summernote" name="content" class="form-control">${vo.content}</textarea>
	                                            </td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                                <br>
	                                <div>
                                        <button type="submit" class="btn btn-primary">수정하기</button>
                                        <button type="button" class="btn btn-warning" onclick="history.back()">취소</button>
	                                </div>
	                                <input type="hidden" id="bno" name="bno" value="${vo.bno}" />

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
    jQuery(document).ready(function ($) {

        $('#summernote').summernote({
            height: 500,
            minHeight: null,
            maxHeight: null,
            lang: "ko-KR",					// 한글 설정
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

        // 말머리 미선택시 알림창
        $(".btn-primary").click(function () {
            var selectedCategory = $(".form-select").val();

            if (selectedCategory === "말머리") {
                alert('말머리를 선택해주세요');
                return;
            }
        });
    }); // 글쓰기에디터 ready함수 끝
</script>

<%@include file="../includes/footer.jsp"%>