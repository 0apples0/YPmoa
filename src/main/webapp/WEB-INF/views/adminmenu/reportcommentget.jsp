
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center ">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Comment</h1>
            <p id="login_p">신고된 댓글 관리</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
    <h6 class="section-title text-center text-primary text-uppercase">Reported comment</h6>
    <h1 class="mb-4"><span class="text-primary text-uppercase">댓글</span> 관리</h1>
</div>

<!-- Booking Start -->
<div class="container-fluid mypage_booking wow fadeIn" data-wow-delay="0.1s" >
    <div class="container_search" >
        <div class="bg-white" style="padding: 20px;">
            <form id="searchForm">
                <div class="row policy_row g-2">
                    <div class="row policy_row g-2" style="justify-content: right;">
                        <div class="col-md-auto">
                        	<select class="form-select" name="boardType">                                        
                            	<option value=""
									<c:out value="${pageMaker.cri.boardType == null ?'selected':'' }"/>>게시판</option>
								<option value="P"
									<c:out value="${pageMaker.cri.boardType == 'P'?'selected':'' }"/>>정책</option>
								<option value="T"
									<c:out value="${pageMaker.cri.boardType == 'T'?'selected':'' }"/>>꿀팁</option>
                        	</select>
                        </div>
                        <div class="col-md-auto">
	                        <input type="text" class="form-control datetimepicker-input font_light"
	                            placeholder="닉네임을 입력하세요" name="keyword"/>
                        </div>
                        <div class="col-md-auto">
                            <button type="submit" id="searchBtn" class="btn btn-primary w-100">검색하기</button>
                        </div>
                        <div class="col-md-auto">
                            <button type="reset" class="btn btn-secondary ">초기화</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Booking End -->
<div class="container-xxl py-5_a">
    <div class="container">
        <div class="row g-4">
            <div class="wow fadeIn" data-wow-delay="0.1s">
                <!-- table section -->
                <div class="col-md-12">
                    <div class="white_shd_a full">
                        <div class="table_section padding_infor_info_a">
                            <div class="table-responsive-sm">
                                <table id="admin_boardTable" class="table table-default admin_boardTable">
                                    <thead>
                                        <tr>
                                            <th data-sort="board">게시판</th>
                                            <th data-sort="nickname">닉네임</th>
                                            <th data-sort="content">댓글내용</th>
                                            <th data-sort="date">작성일</th>
                                            <th data-sort="reportNum">신고횟수</th>
                                            <th data-sort="delete">관리</th>
                                            <th data-sort="rollback">복구</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<!-- 동적으로 생성 된 테이블 들어갈 자리 -->
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
			<li class="paginate_button policy_page-item_prev prev">
				<c:choose>
					<c:when test="${(pageMaker.cri.pageNum - pageMaker.cri.amount) >=1}">
						<a class="page-link" href="${pageMaker.cri.prevprevPage}">
							<i class="fa fa-angle-double-left" aria-hidden="true"></i></a>
					</c:when>
					<c:otherwise>
						<a class="page-link"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a>  
					</c:otherwise>     
				</c:choose>            
			</li> 
			<%-- <버튼: 1페이지 이전 --%>
			<li class="paginate_button policy_page-item prev">
				<c:choose>
					<c:when test="${(pageMaker.cri.pageNum) >1}">
						<a class="page-link" href="${pageMaker.cri.pageNum -1 }">
						<i class="fa fa-angle-left" aria-hidden="true"></i></a>
					</c:when>
					<c:otherwise>
						<a class="page-link"><i class="fa fa-angle-left" aria-hidden="true"></i></a>  
					</c:otherwise>     
				</c:choose>            
			</li>            
			<%-- 페이지 넘버 --%>
			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class="paginate_button page-item ${pageMaker.cri.pageNum == num ? 'active' : ''}">
					<a class="page-link" href="${num}">${num}</a>
				</li>
			</c:forEach>
			<%-- >버튼: 1페이지 이동 --%>
			<li class="paginate_button policy_page-item next">
				<c:choose>
					<c:when test="${(pageMaker.cri.pageNum < pageMaker.endPage)}">
					<a class="page-link" href="${pageMaker.cri.pageNum +1 }">
						<i class="fa fa-angle-right" aria-hidden="true"></i></a>
					</c:when> 
					<c:when test="${(pageMaker.cri.pageNum+1 > pageMaker.realEnd)}">
						<a class="page-link"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
					</c:when>               
					<c:otherwise>
					<a class="page-link" href="${pageMaker.endPage+1}">
						<i class="fa fa-angle-right" aria-hidden="true"></i></a>   
					</c:otherwise>     
				</c:choose>            
			</li>              
			<%-- >>버튼: 10페이지 이동 --%>  
			<li class="paginate_button page-item next">
			<c:choose>
				<c:when test="${pageMaker.realEnd == pageMaker.endPage}">
					<a class="page-link"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a>  
				</c:when>
				<c:otherwise>
					<a class="page-link" href="${pageMaker.cri.nextnextPage}">
						<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
				</c:otherwise>     
			</c:choose>            
			</li> 
		</ul>
	</nav>
	<form id="actionForm" action="/adminmenu/reportcommentget" method="post">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="userType" value="${pageMaker.cri.userType }">
		<input type="hidden" name="type" value="${pageMaker.cri.type }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
	</form>
</div>
<!-- Modal -->
<div class="modal fade admin_modalInfo" id="modalCenterReportDetail" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCenterTitle">댓글신고</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div style="margin: 5px; margin-bottom: 20px;">
	                <div class="modalDetailcount" id="modalDetailcount1">- 불건전한 내용 <span></span>회</div>
	                <div class="modalDetailcount" id="modalDetailcount2">- 영리목적/홍보성 <span></span>회</div>
	                <div class="modalDetailcount" id="modalDetailcount3">- 개인정보노출 <span></span>회</div>
	                <div class="modalDetailcount" id="modalDetailcount4">- 기타 <span></span>회</div>
				</div>
				<div class="row">
					<div class="col mb-3 admin_modalBox">
						<table id="reportReasonTable" class="table table-bordered admin_boardModal">
                        <thead>
	                            <th>신고자<br>닉네임</th>
	                            <th>기타 신고 사유</th>
	                            <th>신고날짜</th>
                        </thead>
                        <tbody>
							<!-- 동적으로 생성되는 내용이 들어갈 자리 -->
                        </tbody>
						</table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
            </div>
        </div>
    </div>
</div>
<!-- 신고 버튼 Modal -->
<div class="modal fade admin_Modal" id="modalCenterSelect" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCenterTitle">게시글 관리</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" >
                        <div style="text-align:center">해당 신고를 처리할 방법을 선택하세요</div>
            </div>
            <div class="modal-footer" style="justify-content:center">
	            <button type="button" id="deleteCheckBtn" class="btn btn-warning" data-bs-dismiss="modal">삭제</button>
	            <button type="button" id="passCheckBtn" class="btn btn-primary" data-bs-dismiss="modal">처리완료</button>
            </div>
        </div>
    </div>
</div>
<!-- 복구 버튼 Modal -->
<div class="modal fade admin_Modal" id="modalCenterSelect" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCenterTitle">게시글 관리</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" >
                        <div style="text-align:center">해당 신고의 처리를 복구할까요?</div>
            </div>
            <div class="modal-footer" style="justify-content:center">
                <button type="button" id="deleteCheckBtn" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
                <button type="button" id="passCheckBtn" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function () {
    
	loadTableData();
	
	$("#searchForm button[type='reset']").on("click", function (e) {
	    // 검색어 입력 필드 초기화
	    $("#searchForm input[name='keyword']").val('');
	    $("#searchForm select").val('');
		e.preventDefault();
	});
	
	function bindCommentActionHandlers(row, bno, cno, boardType, isdeleted) {
		// 신고 횟수 버튼 클릭 시 모달 표시
		row.on("click", ".board_countReportBtn", function(e){
			e.preventDefault();
			loadModalData(cno, boardType);
			$('#modalCenterReportDetail').modal('show');
		});
		
		// 댓글 내용 클릭 시 링크
		row.off("click", ".contentLink").on("click", ".contentLink", function(e){
			e.preventDefault();
		    // 댓글이 속한 게시글의 bno 값을 가져옴
		    let bno = $(this).data("bno");
		    // boardType 값을 가져오기
		    let boardType = $(this).data("boardType"); 
			if(isdeleted == 0){ 	
				if(boardType === "T"){
					window.location.href = "/community/get?bno="+bno;
				}else if(boardType === "P"){
					window.location.href = "/policy/get?no="+bno;
				}				
			}else{ // 확인용 alert! 관리자(userType: 0)는 볼 수 있도록 변경 필요
				alert("삭제된 게시글입니다.");
			}
		});
		
		// 처리 버튼 클릭 시 삭제 완료 or 처리 완료 진행
		row.off("click", ".comment_deleteBtn").on("click", ".comment_deleteBtn", function(e){
			e.preventDefault();
			$('#modalCenterSelect').modal('show');
			//삭제 버튼 체크 시
			$('#deleteCheckBtn').off("click").on("click", function(e){
				e.preventDefault();

				$.ajax({
			        url: "/adminmenu/deleteComment",
			        type: "POST",
			        dataType: "text", 
			        data: {
			        	cno: cno, // 삭제 대상 댓글 번호
			        	boardType: boardType // 삭제 대상 게시판 타입
			        },
			        success: function (response) {
			            console.log("댓글 삭제가 완료되었습니다.");
			            // 댓글 삭제 완료 후 기존 삭제 버튼이 있던 자리에 텍스트 대체
			            row.find('.comment_deleteBtn').parent('td').empty().text('삭제 완료');

			            $.ajax({
			                url: "/adminmenu/updateCommentReport",
			                type: "POST",
			                dataType: "text", 
			                data: {
			                    cno: cno, // 처리 대상 댓글 번호
			                    boardType: boardType // 처리 대상 댓글 타입
			                },
			                success: function (updateResponse) {
			                    console.log("coomentReport 테이블의 ischecked 값을 업데이트 했습니다.");
			                },
			                error: function (updateError) {
			                    console.error("coomentReport 테이블 업데이트 중 오류가 발생했습니다.", updateError);
			                }
			            });
			        },
			        error: function (error) {
			            console.error("게시글 삭제 중 오류가 발생했습니다.", error);
			        }
			    });				
			});
			
			// 처리 버튼 클릭 시
			$('#passCheckBtn').off("click").on("click", function(e){
				e.preventDefault();
				row.find('.comment_deleteBtn').parent('td').empty().text('처리 완료');
	            $.ajax({
	                url: "/adminmenu/updateCommentReport",
	                type: "POST",
	                dataType: "text", 
	                data: {
	                    cno: cno, // 처리 대상 댓글 번호
	                    boardType: boardType // 처리 대상 게시판 타입
	                },
	                success: function (updateResponse) {
	                    console.log("commentReport 테이블의 ischecked 값을 업데이트했습니다.");
	                },
	                error: function (updateError) {
	                    console.error("commentReport 테이블 업데이트 중 오류가 발생했습니다.", updateError);
	                }
	            });				
			});
		});
	}
  	
    function loadTableData(){
        
        $.ajax({
           url: "/adminmenu/getReportCommentList",// 요청할 서버 uri
           type: "POST", //요청방식 지정
           dataType : "json", // 서버 응답의 데이터 타입(대표적으로 json(name, value 형태), xml(태그 형태)이 있다)
           data:{
         	  pageNum : $("#actionForm").find("input[name='pageNum']").val(),
              amount : $("#actionForm").find("input[name='amount']").val(),
              boardType: $("#searchForm select[name='boardType']").val(),
  	          keyword: $("#actionForm").find("input[name='keyword']").val()
           },
           success: function(data){
              let userTbody = $("#admin_boardTable tbody");
              userTbody.empty(); // 기존 테이블 행 삭제
                 
              //Ajax가 반환한 데이터를 "순회"=='반복자'하여 처리
              //for(let item of items) -> items == data, item ==board 역할
              $.each(data, function(index, comment){
                
                 let regDate=new Date(comment.regDate);
                 // numeric: 숫자, 2-digit: 두자리 숫자 형식
                 let options = {year:"numeric", month:"2-digit", day:"2-digit", hour:"2-digit", minute:"2-digit"};
                 let formateDate = regDate.toLocaleString("ko-KR", options);

                 // 데이터를 순회하여 테이블 목록을 불러와 테이블 바디에 추가
                 let row = $("<tr>");
                 row.append($("<td>").text(comment.boardType === "T" ? "꿀팁" : "정책"));
                 row.append($("<td>").text(comment.writer));
                 
                 let contentTd = $("<td>").addClass("adminBoard_titleTd");
               	 let contentLink = $("<a>").addClass("titleLink").attr("href", "").text(comment.content);
               	 
              	 // 댓글이 속한 게시글의 bno 값을 댓글 요소에 추가
               	 contentLink.data("bno", comment.bno);
              	 // 댓글이 속한 게시글 타입 값을 댓글 요소에 추가
               	 contentLink.data("boardType", comment.boardType);
               	 
              	 contentTd.append(contentLink);
                 row.append(contentTd);
                 
                 row.append($("<td>").text(formateDate));
                 row.append($("<td>").addClass("board_countReportBtn").text(comment.countReport));
                 
                 let deleteTd = $("<td>");
                 let deleteLink = $("<a>").addClass("comment_deleteBtn").attr("href", "");
                 let deleteImg = $("<i>").addClass("fa fa-cog fa-2x text-secondary admin_reportModal");
                 deleteLink.append(deleteImg);
                 deleteTd.append(deleteLink);
                 
                 let chkCompleteBtn = $("<i>").addClass("fa fa-check-circle	text-primary fa-2x admin_reportModal");
                 let delCompleteBtn = $("<i>").addClass("fa fa-check-circle	text-danger fa-2x admin_reportModal");
                 // isChecked: 관리자의 처리여부 (0:미처리 1:처리)
                 // isdeleted: 게시글의 삭제여부 (0:미삭제 1:삭제)
                 if(comment.isChecked == 1){
                	 if(comment.isdeleted == 1){
                		 row.append($("<td>").append(delCompleteBtn));               		 
                	 }else{
                		 row.append($("<td>").append(chkCompleteBtn)); 
                	 }
                 }else{
                	 row.append(deleteTd);  
                 }
                 
                 let rollbackTd = $("<td>");
                 let rollbackLink = $("<a>").addClass("board_deleteBtn").attr("href", "");
                 let rollbackBtn = $("<i>").addClass("fa fa-reply	text-success fa-2x admin_reportModal");
                 
                 rollbackLink.append(rollbackBtn);
                 rollbackTd.append(rollbackLink);
				 row.append(rollbackTd);
                 
                 userTbody.append(row);
                 console.log("pagemaker: "+${pageMaker.realEnd});
                 
                 // row, comment.cno, comment.bno, comment.boardType 전달하여 활용하는 함수
                 bindCommentActionHandlers(row, comment.bno, comment.cno, comment.boardType, comment.isdeleted);
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
    
    function loadModalData(cno, boardType) {
        $.ajax({
            url: "/adminmenu/getCommentReportDetail",
            type: "POST",
            dataType: "json",
            data: {
                cno: cno,
                boardType: boardType
            },
            success: function (modalData) {
            	let reasonTbody = $("#reportReasonTable tbody");
            	reasonTbody.empty();
            	let reportCount = new Array(4).fill(0); // 항목별 건수 카운트할 배열 선언 
            	
            	$.each(modalData, function(index, report){
            		
                    let reportDate = new Date(report.reportDate);
                    // numeric: 숫자, 2-digit: 두자리 숫자 형식
                    let options = {year:"numeric", month:"2-digit", day:"2-digit"};
                    let formateDate = reportDate.toLocaleString("ko-KR", options);
                    console.log(report.reasonCategory);
                    switch (report.reasonCategory) {
                    case "불건전한 내용":
                    	reportCount[0] += 1;
                    	break;
                    case "영리목적/홍보성":
                    	reportCount[1] += 1;
                    	break;
                    case "개인정보노출":
                    	reportCount[2] += 1;
                    	break;
                    case "기타":
                    	reportCount[3] += 1;
            			let row = $("<tr>");
            			row.append($("<td>").text(report.reporter));
                        row.append($("<td>").text(report.reason));
                        row.append($("<td>").text(formateDate)); 
                        reasonTbody.append(row);
                        break;
                    default:
                        console.error("Comment Unexpected reasonCategory:", report.reasonCategory);
                    }
            	});
            	
            	let noReasontr = $("<tr>").append($("<td>").attr("colspan", 3).text("-"));
            	if(reportCount[3]==0){ //기타 사유 없을 시 표에 - 표시
            		reasonTbody.append(noReasontr);
            	}
            	$("#modalDetailcount1 span").text(reportCount[0]);
            	$("#modalDetailcount2 span").text(reportCount[1]);
            	$("#modalDetailcount3 span").text(reportCount[2]);
            	$("#modalDetailcount4 span").text(reportCount[3]);
            },
            error: function (error) {
                console.error("모달 데이터를 가져오는 중 오류가 발생했습니다.", error);
			}
		});
	}
});
	
</script>
    
<%@include file="../includes/footer.jsp"%>