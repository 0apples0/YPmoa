<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>



        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Community</h1>

                    <p id="login_p">꿀팁 수정하기</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="container-xxl py-5_a">
            <div class="container">
                <div class="row g-4">
                    <div class="wow fadeInUp" data-wow-delay="0.1s">
                        <!-- table section -->
                        <form method="post" action="/community/modify">
                        <div class="col-md-12">
                            <div class="white_shd_a full">
                               <div class="padding_infor_info">
		                            <div class="row ">
		                                <div class="" style="width: 13%; margin-left:10px">
		                                    <select class="form-select" id="region" name="region">
		                                    <c:choose>
		                                        <c:when test="${empty vo.region}">
		                                            <option selected value="">지역</option>
		                                        </c:when>
		                                        <c:otherwise>
		                                            <option value="${vo.region}">${vo.region}</option>
		                                        </c:otherwise>
											</c:choose>
		                                        <option selected value="" >지역</option>
											<option value="부천시">부천시</option>
		                                    <option value="수원시">수원시</option>
		                                    <option value="광명시">광명시</option>
		                                    </select>
		                                </div>
		                                <div class="" style="width: 13%; padding-left:0px">
		                                    <select class="form-select" id="category" name="category">
	                                        <c:choose>
		                                        <c:when test="${empty vo.category}">
		                                            <option selected value="">관심분야</option>
		                                        </c:when>
		                                        <c:otherwise>
		                                            <option value="${vo.category}">${vo.category}</option>
		                                        </c:otherwise>
											</c:choose>
		                                    <option value="주거">주거</option>
		                                    <option value="교육">교육</option>
		                                    <option value="신혼부부">신혼부부</option>
		                                    </select>
		                                </div>
		                                <input class="form-control" id="titleInput" name="title"
		                                    style="font-family: 'LINESeedKR-Bd_light'; width: 71%;"
		                                    placeholder="제목을 입력해주세요" value="${vo.title}">
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
                                                         <textarea id="summernote" name="content" class="form-control"  style="font-family: 'LINESeedKR-Bd_light';">${vo.content}</textarea>
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
$(document).ready(function ($) {

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