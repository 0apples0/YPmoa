<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
	<div class="page-header-inner" id="login_banner">
		<div class="container text-center ">
			<h1 class=" display-3 text-white mb-3 animated slideInDown"
				id="login_h1">Policy</h1>

			<p id="login_p">정책 상세정보</p>



		</div>
	</div>
</div>
<!-- Page Header End -->
<div class="container-xxl py-5_a">
	<div class="container">




		<div class="row g-4">
			<div class="wow fadeIn" data-wow-delay="0.1s">

				<!-- table section -->
				<div class="col-md-12">
					<div class="white_shd_a full margin_bottom_30">
						<div class="policyGet_title">
							<!-- policyNm -->
							<h1>${policy.policyNm}</h1>

						</div>
						<div class="full graph_head" style="padding-bottom: 7px;">
							<div class="heading1 policyGet_title">
								<h2>정책 개요</h2>
								<!-- 위시버튼인데요 누르면 알림으로 위시리스트에 등록되었습니다
                                            다시 누르면 취소되었습니다 이렇게 떴으면 좋겠어..
                                            그리고 이 버튼이 policy게시판의 하트에서도 반영되어야해여..
                                        -->
								<div id="policyGet_heart_box">
									<img
										src="${pageContext.request.contextPath}/resources/img/${policy.wishVO == null ? 'addWish' : 'checkWish'}.png"
										class="policy_get_heart" id="policyGet_heartBtn" />
								</div>
							</div>
						</div>
						<div class="table_section padding_infor_info">

							<div class="table-responsive-sm">
								<table class="table table-bordered commu_table policy_dt_table">
									<colgroup>
										<col style="width: 14%">
										<col style="width: 36%">
										<col style="width: 14%">
										<col style="width: 36%">
									</colgroup>
									<tbody>
										<tr>
											<!-- policyCn-->
											<th scope="row">정책 소개</th>
											<td colspan="3">${policy.policyCn}</td>
										</tr>
										<tr>
											<!-- policyTypeNm -->
											<th scope="row">시행 지역</th>
											<td>${policy.rgnSeNm}</td>
											<!-- operInstNm -->
											<th scope="row">주관 기관</th>
											<td>${policy.sprvsnInstNm}</td>
										</tr>
										<tr>
											<!-- policyTypeNm -->
											<th scope="row">정책 유형</th>
											<td>${policy.policyTypeNm}</td>
											<!-- policySd -->
											<th scope="row">지원규모</th>
											<td>${policy.policyScl}</td>
										</tr>


										<tr>
											<!-- aplyBangDt -->
											<th scope="row">신청 시작 날짜</th>
											<td>${policy.aplyBgngDt}</td>
											<!-- aplyEndDt -->
											<th scope="row">신청 마감 날짜</th>
											<td>${policy.aplyEndDt}</td>
										</tr>

										<tr>
											<!-- policyEnq -->
											<th scope="row">연락처</th>
											<td>${policy.policyEnq}</td>
											<!-- dtlLinkUrl-->
											<th scope="row">신청 사이트</th>
											<td><a href="#">${policy.dtlLinkUrl}</a></td>
										</tr>
									</tbody>
								</table>

							</div>
						</div>


					</div>




				</div>
				<div class="col-md-12">
					<div class="white_shd_a full margin_bottom_30">
						<div class="full graph_head">
							<div class="heading1 margin_0">
								<h2>정책 상세</h2>
							</div>
						</div>
						<div class="table_section padding_infor_info">

							<div class="table-responsive-sm">
								<table class="table commu_table policy_dt_table">
									<colgroup>
										<col style="width: 14%">
										<col style="width: 36%">
										<col style="width: 14%">
										<col style="width: 36%">
									</colgroup>
									<tbody>
										<tr>
											<td colspan="4"><img style="width: 80%;"
												src="${pageContext.request.contextPath}/resources/img/카드1.png" />

											</td>

										</tr>
										<tr>
											<td colspan="4">
												<!-- policyCnDtl --> ${policy.policyCnDtl}

											</td>

										</tr>
										<tr>
											<td colspan="4">
												<!-- 정책신청방법 작성 --> ${policy.board.content}
											</td>

										</tr>
									</tbody>
								</table>
								<br>
								<div style="display: flex;" class="policyGet_likeBox">
									<div class="g-4 policyGet_letter">좋아요</div>
									<a> <img
										src="${pageContext.request.contextPath}/resources/img/${policy.likeVO == null ? 'addLike' : 'checkLike'}.png"
										class="policyGet_likeBtn"
										style="width: 38px; cursor: pointer;" /></a>
									<div class="g-4">
										<span class="policyGet_likeCount">${policy.like}</span>
									</div>
									<div class="g-4 policyGet_letter">개</div>
								</div>
								<div class="commuGet_btn">
									<a href="/policy/policy"><button class="btn btn-primary">목록</button></a>
									<a href="/policy/modify?no=${policy.no }"><button class="btn btn-primary">수정</button></a>
									<button class="btn btn-warning">삭제</button>
								</div>
							</div>
						</div>


					</div>




				</div>
			</div>

		</div>
	</div>

</div>


<div class="container-xxl py-5_a">
	<div class="container">




		<div class="row g-4">
			<div class="wow fadeIn" data-wow-delay="0.01s">
				<h3 style="margin-left: 20px;">댓글</h3>
				<div style="display: flex; justify-content: center;">
					<input type="text" name="AddcommentInput" id="AddcommentInput"
						class="form-control datetimepicker-input font_light"
						style="width: 88%;" placeholder="서로를 배려하는 댓글 문화를 만듭시다" />
					<button class="btn btn-primary commu_commentBtn" id="AddcommentBtn" disabled
						style="margin-left: 20px;">댓글 작성</button>
				</div>
				
				<!-- 베스트댓글부분: 조아요10개이상의 댓글을 띄워준다 해당댓글이 없을 땐 hide된다 -->
				<div id="communityBestCommentDiv" class="col-md-12">
					<div class="white_shd_a full"
						style="padding: 30px; padding-bottom: 0px;">
						<h4 style="padding-left: 10px;">
							<i class="fa fa-fire text-primary commu_pic"></i>베스트댓글 <i
								class="fa fa-fire text-primary commu_pic"></i>
						</h4>
						<div class="table-responsive-sm">
							<table id="communityBestCommentTable"
								class="table table-basic commu_table policyGet_comment">
 
								<tbody style="background-color: rgb(255, 239, 203);">
								
								</tbody>
								
							</table>
						</div>
					</div>
				</div>

				<!-- table section -->
				<div class="col-md-12">
					<div class="white_shd_a full margin_bottom_30">

						<div class="table_section padding_infor_info">
							<div class="table-responsive-sm">
								<table id="communityCommentTable"
									class="table table-basic commu_table policyGet_comment">

									<tbody>


									</tbody>
								</table>
							</div>
						</div>
					</div>




				</div>
			</div>







		</div>
	</div>


	<%-- 페이징 적용 --%>
	<nav aria-label="Page navigation" class="commu_page_nav wow fadeInUp">
		<ul class="pagination justify-content-center policy_page_navbox">

			<%-- <<버튼: 10페이지 이전 --%>
			<li class="paginate_button policy_page-item_prev prev"><c:choose>
					<c:when
						test="${(pageMaker.cri.pageNum - pageMaker.cri.amount) >=1}">
						<a class="page-link" href="${pageMaker.cri.prevprevPage}"><i
							class="fa fa-angle-double-left" aria-hidden="true"></i></a>
					</c:when>
					<c:otherwise>
						<a class="page-link"><i class="fa fa-angle-double-left"
							aria-hidden="true"></i></a>
					</c:otherwise>
				</c:choose></li>
			<%-- <버튼: 1페이지 이전 --%>
			<li class="paginate_button policy_page-item prev"><c:choose>
					<c:when test="${(pageMaker.cri.pageNum) >1}">

						<a class="page-link" href="${pageMaker.cri.pageNum -1 }"><i
							class="fa fa-angle-left" aria-hidden="true"></i></a>
					</c:when>
					<c:otherwise>
						<a class="page-link"><i class="fa fa-angle-left"
							aria-hidden="true"></i></a>
					</c:otherwise>
				</c:choose></li>

			<%-- 페이지 넘버 --%>
			<c:forEach var="num" begin="${pageMaker.startPage}"
				end="${pageMaker.endPage}">
				<li
					class="paginate_button page-item ${pageMaker.cri.pageNum == num ? 'active' : ''}">
					<a class="page-link" href="${num}">${num}</a>
				</li>
			</c:forEach>

			<%-- >버튼: 1페이지 이동 --%>
			<li class="paginate_button policy_page-item next"><c:choose>
					<c:when test="${(pageMaker.cri.pageNum < pageMaker.endPage)}">
						<a class="page-link" href="${pageMaker.cri.pageNum +1 }"><i
							class="fa fa-angle-right" aria-hidden="true"></i></a>
					</c:when>
					<c:when test="${(pageMaker.cri.pageNum+1 > pageMaker.realEnd)}">
						<a class="page-link"><i class="fa fa-angle-right"
							aria-hidden="true"></i></a>
					</c:when>
					<c:otherwise>
						<a class="page-link" href="${pageMaker.endPage+1}"><i
							class="fa fa-angle-right" aria-hidden="true"></i></a>
					</c:otherwise>
				</c:choose></li>

			<%-- >>버튼: 10페이지 이동 --%>
			<li class="paginate_button page-item next"><c:choose>
					<c:when test="${pageMaker.realEnd == pageMaker.endPage}">
						<a class="page-link"><i class="fa fa-angle-double-right"
							aria-hidden="true"></i></a>

					</c:when>
					<c:otherwise>
						<a class="page-link" href="${pageMaker.cri.nextnextPage}"> <i
							class="fa fa-angle-double-right" aria-hidden="true"></i></a>
					</c:otherwise>
				</c:choose></li>


		</ul>
	</nav>
</div>


<!-- Modal -->
<div class="modal fade" id="modalCenter" tabindex="-1"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modalCenterTitle">댓글신고</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div id="policyGet_checkbox">
					<input type="hidden" id="cno">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input"
							id="customCheck1" data-textarea-id="textarea2"> <label
							class="custom-control-label" for="customCheck1">불건전한 내용</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input"
							id="customCheck2" data-textarea-id="textarea3"> <label
							class="custom-control-label" for="customCheck2">영리목적/홍보성</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input"
							id="customCheck3" data-textarea-id="textarea4"> <label
							class="custom-control-label" for="customCheck3">개인정보노출</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input"
							id="customCheck4" data-textarea-id="textarea1"> <label
							class="custom-control-label" for="customCheck4">기타(아래에
							작성해주세요)</label>
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
				<button type="button" class="btn btn-primary" onclick="report()">신고하기</button>
				<button type="button" class="btn btn-outline-secondary"
					data-bs-dismiss="modal">취소</button>

			</div>
		</div>
	</div>
</div>

<form id="actionForm" action="/policy/get" method="post">
	<input type="hidden" name="no" value="${policy.no}"> 
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
</form>  

<form id="usernickForm" action="/policy/policy" method="get">
	<input type="hidden" name="writer" value="${user.nick}"> 
	
</form>


<script>
//선택한 값을 저장할 변수
var selectedOption = "";
var reporter = $("#usernickForm input[name='writer']").val();

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

	function report() {
		if("${user.nick}"==null || "${user.nick}"==""){
			alert("로그인 후 이용 가능한 서비스 입니다.");
			//window.location.href = "/user/login";
			return;
		}
	    $.ajax({
			url : "/policy/reportcomment", 
			type : "POST",
			data : {
				policycno : $("#cno").val(),
				reasonCategory : selectedOption,
				reporter : reporter,
				reason : $("#textarea1").val(),
				boardType : "Policy"
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

	$(document).ready(function() {
		loadTableData();
		loadBestCommentTableData();

		// 위시 버튼 클릭 시 이미지 변경        	
		let no = $("#usernickForm input[name='no']").val();
		function chkLogin() {
			userNick = $("#usernickForm input[name='writer']").val();
			if (userNick == null || userNick == "") {
				alert("로그인 필요");
				return false;
			} else {
				return true;
			}
		}

		$("#policyGet_heartBtn")
				.click(function() {
							if (!chkLogin()) {
								return;
							}
							$.ajax({
								url : "/policy/toggleWish",
								type : "POST",
								data : {
									no : no
								},
								success : function() {
									var currentSrc = $(
											"#policyGet_heartBtn")
											.attr("src");
									var newSrc = (currentSrc === "${pageContext.request.contextPath}/resources/img/addWish.png") ? "${pageContext.request.contextPath}/resources/img/checkWish.png"
											: "${pageContext.request.contextPath}/resources/img/addWish.png";
									$("#policyGet_heartBtn").attr("src",newSrc);
									alert(currentSrc
											.includes("addWish.png") ? "위시리스트에 등록되었습니다"
											: "위시리스트에서 해제되었습니다");
								},
								error : function(e) {
									alert("실패");
									console.log(e);
								}
							});

						});

		// 좋아요 버튼 클릭 시 이미지 변경

		$(".policyGet_likeBtn").click(function() {
					if (!chkLogin()) {
						return;
					}
					$.ajax({
							url : "/policy/toggleLike",
							type : "POST",
							data : {
								no : $("#actionForm").find("input[name='no']").val()
							},
							success : function(data) {
								var currentSrc = $(
										".policyGet_likeBtn")
										.attr("src");
								var newSrc = (currentSrc === "${pageContext.request.contextPath}/resources/img/addLike.png") ? "${pageContext.request.contextPath}/resources/img/checkLike.png"
										: "${pageContext.request.contextPath}/resources/img/addLike.png";
								$(".policyGet_likeBtn").attr("src",newSrc);
								$(".policyGet_likeCount").text(data); // 좋아요 개수 업데이트
							},
							error : function(e) {
								console.log(e);
							}
						});

				});

		// 댓글 좋아요 버튼 클릭 시 이미지 변경
		$(".commu_like").click(function() {
					var currentSrc = $(this).attr("src");
					var newSrc = (currentSrc === "${pageContext.request.contextPath}/resources/img/addLike.png") ? "${pageContext.request.contextPath}/resources/img/checkLike.png"
							: "${pageContext.request.contextPath}/resources/img/addLike.png";
					$(this).attr("src", newSrc);
				});

		// 신고 모달창
		$("td").click(function(event) {
					event.preventDefault();
					if ($(event.target).is(".policyGet_report, .policyGet_report img") || $(event.target).closest(".policyGet_report").length > 0) {
						$("#modalCenter").modal("show");
					}
				});
		
		
		// 체크박스 중복 방지
		$('.custom-control-input').on('change',function() {
					if ($(this).prop('checked')) {
						$('.custom-control-input').not(this).prop('disabled', true);
					} else {
						$('.custom-control-input').prop('disabled', false);
					}
				});

		// 기타 항목에 체크했을 때만 입력창 활성화
		$(".custom-control-input").change(function() {
			var isChecked = $(this).prop("checked");

					$(".policyGet_reportDetail").prop("disabled", true);

					if (isChecked) {
						var textareaId = $(this).data("textarea-id");
						$("#" + textareaId).prop("disabled",false);
					}
				});

		// 아무 체크도 안했을 때 선택버튼 비활성화
		$(".custom-control-input").change(updateReportButtonState);

		$(".policyGet_reportDetail").on("keyup",updateReportButtonState);

		updateReportButtonState();

		function updateReportButtonState() {
			var anyCheckboxChecked = $(".custom-control-input:checked").length > 0;

			var anyTextareaContent = $(".policyGet_reportDetail").filter(
					function() {
						return $(this).val().trim() !== "";
					}).length > 0;

			$(".commu_commentBtn").prop("disabled",!(anyCheckboxChecked || anyTextareaContent));
		}

		// 댓글창 내용 있어야 버튼 활성화
		var commentInput = $(".form-control");
		var submitButton = $(".btn-primary");

		commentInput.on("input",function() {
				var isInputNotEmpty = commentInput.val().trim().length > 0;

				submitButton.prop("disabled",!isInputNotEmpty);
			});
		
		$("#AddcommentInput").on("click", function(){
        	if("${user.nick}"==null || "${user.nick}"==""){
        		alert("로그인 후 이용 가능한 서비스 입니다.");
        		window.location.href = "/user/login";
        	}
        });
        $("#AddcommentBtn").on("click", function(){
        	if("${user.nick}"==null || "${user.nick}"==""){
        		alert("로그인 후 이용 가능한 서비스 입니다.");
        		window.location.href = "/user/login";
        	}
        });
        
        // 댓글 작성
        $(".commu_commentBtn").on("click", function () {
        	var commentInput = $("#AddcommentInput");
        	var commentContent = commentInput.val().trim();
        	if (commentInput.length > 0) {
        		$.ajax({
                    url: "/policy/writeComment",
                    type: "POST",
                    data: {
                        bno: $("#actionForm").find("input[name='no']").val(),
                        content: commentContent,
                        writer: "${user.nick}"
                    },
                    success: function (data) {
                        console.log("댓글 작성 성공", data);
                        // 댓글 작성 후 입력창 초기화
                        commentInput.val("");
                        // 댓글 목록을 다시 로드하는 함수 호출
						//loadTableData();
                        window.location.href = "/policy/get?no="+"${policy.no}";
                    },
                    error: function (error) {
                        console.error("댓글 작성 실패", error);
                    }
                });
        	}
        });
        
        function bindCommentActionHandlers(row, cno, bno) {
        	
        	// 댓글 신고 모달창
    	  row.on("click", ".policyGet_report", function (event) {
    		  
    	  	  event.preventDefault();
                if ($(event.target).is(".policyGet_report, .policyGet_report img") || $(event.target).closest(".policyGet_report").length > 0) {
                  $("#cno").val(cno);
                  $("#modalCenter").modal("show");
              }
    	  });
      	  // 댓글 수정
      	  row.on("click", ".commuComment_modBtn", function(){
      		  event.preventDefault();
      	     	// 기존 내용 가져오기
      	        let content = row.find("td:eq(0)").text();
      	        let writer = row.find("td:eq(1)").text();
      	        let regDate = row.find("td:eq(2)").text();
      	     	
      	     	let totalWidth = 0;
      	     	row.find("td:eq(1), td:eq(2), td:eq(3)").each(function(){
      	     		totalWidth += $(this).width();
      	     	});
      	        // content, writer, regDate 부분 input 태그로 교체(input 태그 기본값은 기존에 작성된 댓글 내용으로 지정)
      	        let inputElement = $("<input>").addClass("commuComment_modInput").attr("type", "text").css("width", totalWidth+"px").val(content);
      	        row.find("td").remove();
      	        row.append($("<td>").append(inputElement));
      	        
                  let editImg = $("<i>").addClass("fa fa-pen text-primary");
                  let editLink = $("<a>").addClass("commuComment_modDoneBtn").attr("href", "/policy/get?no="+bno).text("수정 완료");
                  
                  let editCancelImg = $("<i>").addClass("fa fa-pen text-primary");
                  let editCancelLink = $("<a>").addClass("commuComment_cancelmodBtn").attr("href", "").text("취소");
                  
                  row.append($("<td>").append(editImg, editLink,editCancelImg, editCancelLink));
                  
                  // 수정 완료 버튼 클릭 시 조건에 따라 ajax 호출
                  $(".commuComment_modDoneBtn").on("click", function(){
                  	let modifiedContent = row.find(".commuComment_modInput").val();
                  	
                  	var isInputNotEmpty = modifiedContent.trim().length > 0; // 공백 제거 후 빈칸인지 체크
                  	var isDifferentInput = (modifiedContent !== content); // 변경사항이 있는지 체크

                  	if(isInputNotEmpty && isDifferentInput){
                      	 $.ajax({
                               url: "/policy/modifyComment",
                               type: "POST",
                               dataType: "json", 
                               data: {
                                   cno: cno, // 수정 대상 댓글 번호
                                   bno: bno,
                                   content: modifiedContent // 수정된 내용
                               },
                               success: function (response) {
                                   console.log("수정이 완료되었습니다.");
                               },
                               error: function (error) {
                                   console.error("수정 중 오류가 발생했습니다.", error);
                               }
                           });                    		
                  	}else{ // 수정할 내용이 없거나, 공백일 경우 수정완료 버튼이 눌리지 않도록 설정
                  		event.preventDefault();
                  	}
                  	

                  	
                  });
                  
      	  });
      	  
      	// 댓글 삭제
      	row.on("click", ".commuComment_deleteBtn", function(){
      		$.ajax({
                  url: "/policy/deleteComment",
                  type: "POST",
                  dataType: "json", 
                  data: {
                      cno: cno, // 삭제 대상 댓글 번호
                      bno: bno
                  },
                  success: function (response) {
                  	alert(bno);
                      console.log("삭제가 완료되었습니다.");
                  },
                  error: function (error) {
                      console.error("삭제 중 오류가 발생했습니다.", error);
                  }
              });  
      	});
       }
		
		function loadTableData(){
			
               $.ajax({
                  url: "/policy/getCommentList",// 요청할 서버 uri
                  type: "POST", //요청방식 지정
                  dataType : "json", // 서버 응답의 데이터 타입(대표적으로 json(name, value 형태), xml(태그 형태)이 있다)
                  data:{
                	 pageNum : $("#actionForm").find("input[name='pageNum']").val(),
                     amount : $("#actionForm").find("input[name='amount']").val(),   
                     bno : $("#actionForm").find("input[name='no']").val() 
                  },
                  success: function(data){
                     let boardTbody = $("#communityCommentTable tbody");
                     boardTbody.empty(); // 기존 테이블 행 삭제
                        
                     //Ajax가 반환한 데이터를 "순회"=='반복자'하여 처리
                     //for(let item of items) -> items == data, item ==board 역할
                     $.each(data, function(index, board){
                       
                    	 let regDate=new Date(board.regDate);
                         // numeric: 숫자, 2-digit: 두자리 숫자 형식
                         let options = {year:"numeric", month:"2-digit", day:"2-digit", hour:"2-digit", minute:"2-digit"};
                         let formateDate = regDate.toLocaleString("ko-KR", options);

                         // 데이터를 순회하여 테이블 목록을 불러와 테이블 바디에 추가
                         // 동적으로 데이터 처리
                         let row = $("<tr>");
                         row.append($("<td>").text(board.content));
                         row.append($("<td>").text(board.writer));
                         row.append($("<td>").text(formateDate));
                         
                          // 새로운 <td> 엘리먼트 생성 (좋아요 이미지와 span 포함)
                          let likeTd = $("<td>");
                          let likeImg = $("<img>").addClass("commu_like policyGet_like").attr("src", "${pageContext.request.contextPath}/resources/img/addLike.png");
                          let likeSpan = $("<span>").text(board.like+"개"); // **이곳에 좋아요 수 반영 필요
                          // 이미지와 span을 <td> 엘리먼트에 추가
                          likeTd.append(likeImg).append(likeSpan);
                          
                       	  // 새로운 <td> 엘리먼트 생성 (신고 이미지와 link 포함)
                          let reportTd = $("<td>");
                          let editImg = $("<i>").addClass("fa fa-pen text-primary");
                          let editLink = $("<a>").addClass("commuComment_modBtn").attr("href", "").text("수정");
                          
                       
           
                          let deleteImg = $("<i>").addClass("fa fa-trash text-primary");
                          let deleteLink = $("<a>").addClass("commuComment_deleteBtn").attr("href", "/policy/get?no="+board.bno).text("삭제");
                          let reportImg = $("<i>").addClass("fa fa-exclamation-triangle text-primary");
                          let reportLink = $("<a>").addClass("policyGet_report").attr("href", "#").text("신고");
                        
                          // 이미지와 link를 <td> 엘리먼트에 추가
                          // 현재 접속한 회원과 댓글 작성자가 일치하면 수정,삭제 버튼 표시 
                          // 현재 접속한 회원과 댓글 작성자가 일치하지 않으면 신고 버튼만 표시
                          if("${user.nick}"!=null && board.writer === "${user.nick}"){
                        	  reportTd.append(editImg, editLink, deleteImg, deleteLink);
                          }else{
                        	  reportTd.append(reportImg, reportLink);
                          }

                          // 새로운 <td> 엘리먼트를 행에 추가
                          row.append(likeTd);
                          row.append(reportTd);
                          
                         boardTbody.append(row);
                         console.log("pagemaker: "+${pageMaker.realEnd});
                         
                         // 댓글 번호(cno)를 클릭 이벤트 핸들러에 전달하여 활용할 수 있도록 함
                         bindCommentActionHandlers(row, board.cno, board.bno);
                     });
                  },
                  error: function(e){
                     console.log(e);
                  }
               });
               
               $(".paginate_button a").on("click", function(e){

                   //기존에 가진 이벤트를 중단(기본적으로 수행하는 행동을 막는 역할)
                   e.preventDefault(); //이벤트 초기화
                   //pageNum 값을 사용자가 누른 a태그의 href 속성값으로 변경
                    let newPageNum = $(this).attr("href");
                   console.log("newPageNum : " + newPageNum);
                    // pageNum이 비어있지 않은 경우에만 submit 실행
                   
                    
                   let actionForm = $("#actionForm");
                    if (newPageNum) {
                            actionForm.find("input[name='pageNum']").val(newPageNum);
                            actionForm.submit();       		  
                  	  

                    }
                });      
              
            }
		
		function loadBestCommentTableData(){
            $.ajax({
               url: "/policy/getBestCommentList",// 요청할 서버 uri
               type: "POST", //요청방식 지정
               dataType : "json", // 서버 응답의 데이터 타입(대표적으로 json(name, value 형태), xml(태그 형태)이 있다)
               data:{
                  bno : $("#actionForm").find("input[name='no']").val() 
               },
               success: function(data){
           	  	  
                  let boardTbody = $("#communityBestCommentTable tbody");
                  boardTbody.empty(); // 기존 테이블 행 삭제
                  
                  if(data.length > 0){
                	  $("#communityBestCommentDiv").show();
                      //Ajax가 반환한 데이터를 "순회"=='반복자'하여 처리
                      //for(let item of items) -> items == data, item ==board 역할
                      $.each(data, function(index, board){
                        
                         let regDate=new Date(board.regDate);
                         // numeric: 숫자, 2-digit: 두자리 숫자 형식
                         let options = {year:"numeric", month:"2-digit", day:"2-digit", hour:"2-digit", minute:"2-digit"};
                         let formateDate = regDate.toLocaleString("ko-KR", options);

                         // 데이터를 순회하여 테이블 목록을 불러와 테이블 바디에 추가
                         // 동적으로 데이터 처리
                         let row = $("<tr>");
                         row.append($("<td>").text(board.content));
                         row.append($("<td>").text(board.writer));
                         row.append($("<td>").text(formateDate));
                         
                          // 새로운 <td> 엘리먼트 생성 (좋아요 이미지와 span 포함)
                          let likeTd = $("<td>");
                          let likeImg = $("<img>").addClass("commu_like policyGet_like").attr("src", "${pageContext.request.contextPath}/resources/img/addLike.png");
                          let likeSpan = $("<span>").text(board.like+"개"); // **이곳에 좋아요 수 반영 필요
                          // 이미지와 span을 <td> 엘리먼트에 추가
                          likeTd.append(likeImg).append(likeSpan);
                          
                       	  // 새로운 <td> 엘리먼트 생성 (신고 이미지와 link 포함)
                          let reportTd = $("<td>");
                          let reportImg = $("<img>").addClass("policyGet_report").attr("src", "${pageContext.request.contextPath}/resources/img/report.png")
                          						.css("width", "20px");
                          let reportLink = $("<a>").addClass("policyGet_report").attr("href", "#").text("신고");
                          // 이미지와 link를 <td> 엘리먼트에 추가
                          reportTd.append(reportImg).append(reportLink);

                          // 새로운 <td> 엘리먼트를 행에 추가
                          row.append(likeTd);
                          row.append(reportTd);
                          
                         boardTbody.append(row);
                         console.log("pagemaker: "+${pageMaker.realEnd});
                      });                   	  
                  }else{
                	  $("#communityBestCommentDiv").hide();
                  }

               },
               error: function(e){
                  console.log(e);
               }
            });
            
           
         }

	}); // document.ready함수
</script>



<%@include file="../includes/footer.jsp"%>