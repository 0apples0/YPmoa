<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/header.jsp"%>
<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center ">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Suggest</h1>
            <p id="login_p">정책건의 상세정보</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<div class="container-xxl ">
    <div class="container">
        <div class="row g-4">
            <div class="wow fadeIn" data-wow-delay="0.1s">
                <!-- table section -->
                <div class="col-md-12">
                    <div class="white_shd_a full margin_bottom_30">
                        <div class="full graph_head" style="padding-bottom: 7px;">
                            <div class="heading1 ">
                                <h2 style="font-size: 30px;">${vo.title}</h2><br>
                                <div>${vo.writer}</div>
                                <div class="font_light"><fmt:formatDate value="${vo.regDate}" pattern="yyyy. MM. dd. a hh:mm" /></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="white_shd_a full margin_bottom_30">
                        <div class="table_section padding_infor_info">
                            <div class="table-responsive-sm">
                                <table class=" commu_table policy_dt_table commuGet_table">
                                    <tbody>
                                        <tr>
                                            <td>
												${vo.content }
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <br>
                                <div style="display: flex;" class="commuGet_likeBox">
                                    <div class="g-4 policyGet_letter">
                                        좋아요</div>
                                    <a> <img src="${pageContext.request.contextPath}/resources/img/addLike.png" class="policyGet_likeBtn"
                                            style="width: 38px; cursor: pointer;" /></a>
                                    <div class="g-4">
                                        <span class="policyGet_likeCount">3</span>
                                    </div>
                                    <div class="g-4 policyGet_letter">개</div>
                                </div>
                                <div class="commuGet_btn">
                                    <button class="btn btn-primary commuGet_modifyBtn">목록</button>
                                    <button class="btn btn-primary commuGet_modifyBtn">수정하기</button>
                                    <!-- 한번 알람이 떠서 ㄹㅇ삭제? 이런거 나왔으면 좋겠습니당-->
                                    <button class="btn btn-primary commuGet_deleteBtn">삭제하기</button>
                                    <button class="btn btn-warning commuGet_postReport">신고하기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCenterTitle">게시글 신고</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="policyGet_checkbox">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck1"
                            data-textarea-id="textarea2">
                        <label class="custom-control-label" for="customCheck1">불건전한 내용</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck2"
                            data-textarea-id="textarea3">
                        <label class="custom-control-label" for="customCheck2">영리목적/홍보성</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck3"
                            data-textarea-id="textarea4">
                        <label class="custom-control-label" for="customCheck3">개인정보노출</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck4"
                            data-textarea-id="textarea1">
                        <label class="custom-control-label" for="customCheck4">기타(아래에 작성해주세요)</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <label class="form-label">신고내용</label>
                        <textarea disabled id="textarea1" placeholder="신고내용을 작성해주세요"
                            style="resize: none;" class="policyGet_reportDetail font_light"></textarea>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary suggest_report">신고하기</button>
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                    취소
                </button>
            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready(function () {
        // 좋아요 버튼 클릭 시 이미지 변경
        $(".policyGet_likeBtn").click(function () {
            var currentSrc = $(".policyGet_likeBtn").attr("src");
            var newSrc = (currentSrc === "${pageContext.request.contextPath}/resources/img/addLike.png") ? "${pageContext.request.contextPath}/resources/img/checkLike.png" : "${pageContext.request.contextPath}/resources/img/addLike.png";
            $(".policyGet_likeBtn").attr("src", newSrc);
        });

        // 게시글 신고 모달창
        $(".commuGet_postReport").click(function(event){
            $("#modalCenter").modal("show");
        });
        
        // 체크박스 중복 방지
        $('.custom-control-input').on('change', function () {
            if ($(this).prop('checked')) {
                $('.custom-control-input').not(this).prop('disabled', true);
            } else {
                $('.custom-control-input').prop('disabled', false);
            }
        });
        
        // 기타 항목에 체크했을 때만 입력창 활성화
        $(".custom-control-input").change(function () {
            var isChecked = $(this).prop("checked");
            $(".policyGet_reportDetail").prop("disabled", true);
            if (isChecked) {
                var textareaId = $(this).data("textarea-id");
                $("#" + textareaId).prop("disabled", false);
            }
        });

       // 아무 체크도 안했을 때 선택버튼 비활성화
        $(".custom-control-input").change(updateReportButtonState);
        $(".policyGet_reportDetail").on("keyup", updateReportButtonState);
     
        updateReportButtonState();

        function updateReportButtonState() {
            var anyCheckboxChecked = $(".custom-control-input:checked").length > 0;

            var anyTextareaContent = $(".policyGet_reportDetail").filter(function () {
                return $(this).val().trim() !== "";
            }).length > 0;

            $(".suggest_report").prop("disabled", !(anyCheckboxChecked || anyTextareaContent));
        }
    }); // document.ready함수
</script>

<%@include file="../includes/footer.jsp" %>