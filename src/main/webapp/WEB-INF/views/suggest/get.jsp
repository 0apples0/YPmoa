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
                                <h2 style="font-size: 30px;">[${vo.region}/${vo.category}] ${vo.title}</h2><br>
                                
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
                                <table class="commu_table policy_dt_table commuGet_table">
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
                                    <a> <img src="${pageContext.request.contextPath}/resources/img/addLike.png" id="likeBtn" class="policyGet_likeBtn"
                                            style="width: 38px; cursor: pointer;" /></a>
                                    <div class="g-4">
                                    	<span class="policyGet_likeCount" id="likeCountSpan">${vo.like}</span>
                                    </div>
                                    <div class="g-4 policyGet_letter">개</div>
                                </div> 
                                <div class="commuGet_btn">
			                         <c:choose>
					  					<c:when test = "${user ne null && user.nick ne null && (user.userType == 1 || user.userType == 0) && user.nick == vo.writer}">
											<button id="return" class="btn btn-primary listBtn">목록</button>
											<button id="modifyBtn" class="btn btn-primary modiBtn">수정</button>
											<button type="button" id="deleteBtn" class="btn btn-warning commuGet_deleteBtn">삭제</button>
										</c:when>
										<c:when test="${user.userType==0}">
											<button id="return" class="btn btn-primary listBtn">목록</button>
											<button type="button" id="deleteBtn" class="btn btn-warning commuGet_deleteBtn">삭제</button>
										</c:when>
					 					<c:otherwise>
											<button id="return" class="btn btn-primary listBtn">목록</button>
											<button id="repot" class="btn btn-warning commuGet_postReport">신고하기</button>
										</c:otherwise>
									</c:choose>
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
                        <input type="checkbox" class="form-check-input" id="customCheck1"
                            data-textarea-id="textarea2">
                        <label class="custom-control-label" for="customCheck1">불건전한 내용</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="form-check-input" id="customCheck2"
                            data-textarea-id="textarea3">
                        <label class="custom-control-label" for="customCheck2">영리목적/홍보성</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="form-check-input" id="customCheck3"
                            data-textarea-id="textarea4">
                        <label class="custom-control-label" for="customCheck3">개인정보노출</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="form-check-input" id="customCheck4"
                            data-textarea-id="textarea1">
                        <label class="custom-control-label" for="customCheck4">기타(아래에 작성해주세요)</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <label class="form-label">신고내용</label>
                        <textarea disabled id="textarea1" placeholder="신고내용을 작성해주세요"
                            style="resize: none;" class="policyGet_reportDetail font_light form-control"></textarea>
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
<!-- Modal End-->

<!-- 확인 팝업 모달 -->
<div class="modal fade" id="confirmDeleteModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">게시글 삭제</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" style=" font-family: 'LINESeedKR-Bd_light';">
                게시글을 삭제하시겠습니까?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" id="confirmDeleteBtn">삭제</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
            </div>
        </div>
    </div>
</div>
<!-- 확인 팝업 모달 끝-->
<script>
$(document).ready(function () {
    
    // 화면 로딩 시에 좋아요 상태를 초기화
    // 좋아요 상태를 서버에서 받아와 갱신
    $.ajax({
        type: "GET",
        url: "${pageContext.request.contextPath}/suggest/checkUserLike",
        data: {
            bno: ${vo.bno}
        },
        success: function (data) {
            var likeCount = data; // 서버에서 좋아요 개수를 직접 반환하는 것으로 가정합니다.

            // 좋아요 상태에 따라 버튼 이미지 업데이트
            var likeStatus = likeCount > 0;
            var likeBtnSrc = likeStatus ? "${pageContext.request.contextPath}/resources/img/checkLike.png" : "${pageContext.request.contextPath}/resources/img/addLike.png";
            $(".policyGet_likeBtn").attr("src", likeBtnSrc);
        },
        error: function (error) {
            console.error("좋아요 상태 초기화 실패: " + JSON.stringify(error));
        }
    });
    
    // 좋아요 버튼 클릭 시 이미지 변경
    $(".policyGet_likeBtn").click(function () {
        var currentSrc = $(".policyGet_likeBtn").attr("src");
        var newSrc = (currentSrc === "${pageContext.request.contextPath}/resources/img/addLike.png") ?
            "${pageContext.request.contextPath}/resources/img/checkLike.png" :
            "${pageContext.request.contextPath}/resources/img/addLike.png";

        var userString = '${user}';
        var emailStartIndex = userString.indexOf('Email=') + 'Email='.length;
        var emailEndIndex = userString.indexOf(',', emailStartIndex) !== -1 ? userString.indexOf(',', emailStartIndex) : userString.indexOf(')', emailStartIndex);
        var userEmail = userString.substring(emailStartIndex, emailEndIndex);

        // 로그인 했을 때만 좋아요 버튼 누를 수 있음
        if (userEmail !== "") {
            $(".policyGet_likeBtn").attr("src", newSrc);

            // 좋아요 버튼 클릭 시 서버에 데이터 전송
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/suggest/toggleLike",
                data: {
                    bno: ${vo.bno},
                    Email: userEmail
                },
                success: function (data) {
                    // 좋아요 개수를 서버에서 다시 가져오도록 수정
                    $.ajax({
                        type: "GET",
                        url: "${pageContext.request.contextPath}/suggest/getLikeCount",
                        data: {
                            bno: ${vo.bno}
                        },
                        success: function (data) {
                            // 좋아요 수 갱신
                            $(".policyGet_likeCount").text(data);
                            console.log('좋아요 수 갱신:', data);
                        },
                        error: function (error) {
                            console.error("좋아요 개수 가져오기 실패: " + JSON.stringify(error));
                        }
                    });
                },
                error: function (error) {
                    console.error("좋아요 토글 실패: " + JSON.stringify(error));
                }
            });
        } else {
            alert("로그인이 필요한 서비스입니다. 로그인 후 이용해주세요.");
            window.location.href = "/user/login";
        }
    });
    

    // 게시글 신고 모달창
    $(".commuGet_postReport").click(function (event) {
        var userString = '${user}';
        var emailStartIndex = userString.indexOf('Email=') + 'Email='.length;
        var emailEndIndex = userString.indexOf(',', emailStartIndex) !== -1 ? userString.indexOf(',', emailStartIndex) : userString.indexOf(')', emailStartIndex);
        var userEmail = userString.substring(emailStartIndex, emailEndIndex);
    	if (userEmail !== "") {
        	$("#modalCenter").modal("show");
    	} else {
            alert("로그인이 필요한 서비스입니다. 로그인 후 이용해주세요.");
            window.location.href = "/user/login";
        }
    });
    
  //선택한 값을 저장할 변수
    var selectedOption = "";
   //var reporter = $("#usernickForm input[name='writer']").val();
    var reporter = "${user.nick}";

    // 모달 내부의 체크박스들에 대한 이벤트 핸들러 등록
    $("#customCheck1, #customCheck2, #customCheck3, #customCheck4").on("change", function() {
        if ($("#customCheck1").is(":checked")) {
            selectedOption = "불건전한 내용";
        } else if ($("#customCheck2").is(":checked")) {
            selectedOption = "영리목적/홍보성";
        } else if ($("#customCheck3").is(":checked")) {
            selectedOption = "개인정보노출";
        } else if ($("#customCheck4").is(":checked")) {
            selectedOption = "기타";
        }
    });
        
    // 신고 모달 데이터 전송
	function report() {
	    $.ajax({
	    
			url : "/suggest/reportBoard", 
			type : "POST",
			data : {
				suggestbno : ${vo.bno},
				reasonCategory : selectedOption,
				reporter : reporter,
				reason : $("#textarea1").val(),
				boardType : "S"
			},
			success : function(data){
				$("#modalCenter").modal("hide");
				if(data){
					alert("신고 하였습니다");
				}else{
					alert("이미 신고했습니다");
				}
			}
		});
	}

    // 체크박스 중복 방지
    $('.form-check-input').on('change', function () {
        if ($(this).prop('checked')) {
            $('.form-check-input').not(this).prop('disabled', true);
        } else {
            $('.form-check-input').prop('disabled', false);
        }
    });

    // 기타 항목에 체크했을 때만 입력창 활성화
    $(".form-check-input").change(function () {
        var isChecked = $(this).prop("checked");
        $(".policyGet_reportDetail").prop("disabled", true);
        if (isChecked) {
            var textareaId = $(this).data("textarea-id");
            $("#" + textareaId).prop("disabled", false);
        }
    });

 	// 클릭 이벤트 핸들러를 바인딩
    $(document).on("click", ".suggest_report", function() {
        report();
    });
    
    // 아무 체크도 안했을 때 선택버튼 비활성화
    $(".form-check-input").change(updateReportButtonState);
    $(".policyGet_reportDetail").on("keyup", updateReportButtonState);

    updateReportButtonState();

    function updateReportButtonState() {
        var anyCheckboxChecked = $(".form-check-input:checked").length > 0;

        var anyTextareaContent = $(".policyGet_reportDetail").filter(function () {
            return $(this).val().trim() !== "";
        }).length > 0;

        $(".suggest_report").prop("disabled", !(anyCheckboxChecked || anyTextareaContent));
    }
 	// 모달이 닫힐 때 실행되는 이벤트
    $('#modalCenter').on('hidden.bs.modal', function () {
        // 모달이 닫힐 때마다 입력 값 초기화
        $('.form-check-input').prop('disabled', false);
        $('.form-check-input').prop('checked', false);
        $('.policyGet_reportDetail').val('');
        $('.policyGet_reportDetail').prop('disabled', true);
        updateReportButtonState(); // 신고하기 버튼 상태 업데이트
    });  
    // 목록 버튼
    $("#return").on("click", function () {
        self.location = "/suggest/suggest";
    });

    // 수정 버튼
    $("#modifyBtn").on("click", function () {
        window.location.href = "/suggest/modify?bno=" + ${vo.bno};
    });

    // 삭제 버튼
    // 삭제 버튼 클릭 시 확인 팝업 표시
    $("#deleteBtn").on("click", function () {
    	console.log("이건 화면 삭제 버튼");
        $("#confirmDeleteModal").modal("show");
    });

    // 확인 팝업에서 삭제 버튼 클릭 시 삭제 요청 전송
     $(document).on("click", "#confirmDeleteBtn", function () {
    	console.log("모달 삭제 버튼 눌리긴 해 ?");
        // 여기에 삭제 요청을 보내는 코드 추가
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/suggest/remove",
            data: {
                bno: ${vo.bno}
            },
            success: function (data) {
                // 삭제 성공 시에 처리할 내용 추가
                console.log("삭제 성공");
                self.location = "/suggest/suggest";
            },
            error: function (error) {
                // 삭제 실패 시에 처리할 내용 추가
                console.error("삭제 실패: " + error);
            }
        });
    });

}); // document.ready함수
</script>

<%@include file="../includes/footer.jsp" %>