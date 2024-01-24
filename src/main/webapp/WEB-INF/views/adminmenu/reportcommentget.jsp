
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
            <form>
                <div class="row policy_row g-2">
                    <div class="row policy_row g-2" style="justify-content: right;">
                        <div class="col-md-auto">
                            <select class="form-select">
                                <option selected>게시판</option>
                                <option value="1">정책</option>
                                <option value="1">건의</option>
                                <option value="1">꿀팁</option>
                            </select>
                        </div>
                        <div class="col-md-auto">
                            <select class="form-select">
                                <option selected>전체</option>
                                <option value="1">닉네임</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <input type="text" class="form-control datetimepicker-input font_light"
                                placeholder="검색어를 입력하세요" />
                        </div>
                        <div class="col-md-auto">

                            <button class="btn btn-primary w-100">검색하기</button>
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
                                <table id="admin_commentTable" class="table table-hover admin_boardTable">
                                    <thead>
                                        <tr>
                                            <th data-sort="board">게시판</th>
                                            <th data-sort="nickname">닉네임</th>
                                            <th data-sort="title">댓글내용</th>
                                            <th data-sort="date">작성일</th>
                                            <th data-sort="reportNum">신고횟수</th>
                                            <th data-sort="delete">댓글삭제</th>
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
<div class="modal fade admin_modalInfo" id="modalCenter" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCenterTitle">댓글신고</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div style="margin: 5px; margin-bottom: 20px;">
                        <div>- 불건전한 내용 <span>2</span>회</div>
                        <div>- 영리목적/홍보성 <span>2</span>회</div>
                        <div>- 개인정보노출 <span>2</span>회</div>
                        <div>- 기타 <span>2</span>회</div>
                </div>
                <div class="row">
                    <div class="col mb-3 admin_modalBox">
                       <table class="table table-bordered admin_boardModal">
                        <thead>
                            <th>신고자<br>닉네임</th>
                            <th>기타 신고 사유</th>
                            <th>신고날짜</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>최바나나</td>
                                <td>
                                    바나나를 싫어한다고 해서 기분나빠요
                                </td>
                                <td>24-02-16</td>
                            </tr>
                            <tr>
                                <td>박감귤</td>
                                <td>
                                    감귤이 최고다
                                </td>
                                <td>24-02-16</td>
                            </tr>
                            <tr>
                                <td>김원숭이</td>
                                <td>
                                    우끼끼 우끼끼 우끼끼 우끼끼
                                </td>
                                <td>24-02-16</td>
                            </tr>
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
<div class="modal fade admin_Modal" id="modalCenter" tabindex="-1" aria-hidden="true">
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
                <button type="button" class="btn btn-warning" data-bs-dismiss="modal">삭제</button>
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">처리완료</button>
            </div>
        </div>
    </div>
</div>
        
<script>

	// 신고 개수 누르면 모달창
	$(".admin_boardReport").click(function(event) {
		$(".admin_modalInfo").modal("show");
	});
	$(".admin_reportModal").click(function(event) {
		event.preventDefault();
		$(".admin_Modal").modal("show");
	});
	
	$(document).ready(function () {
		loadTableData();
		
	    function loadTableData(){
	    	$.ajax({
	    		url: "/adminmenu/getCommentList",// 요청할 서버 uri
				type: "POST", //요청방식 지정
				dataType : "json", // 서버 응답의 데이터 타입(대표적으로 json(name, value 형태), xml(태그 형태)이 있다)
				data:{
					pageNum : $("#actionForm").find("input[name='pageNum']").val(),
					amount : $("#actionForm").find("input[name='amount']").val(),             
				},
				success: function(data){
					let commentTbody = $("#admin_commentTable tbody");
					commentTbody.empty(); // 기존 테이블 행 삭제
					//Ajax가 반환한 데이터를 "순회"=='반복자'하여 처리
					//for(let item of items) -> items == data, item ==board 역할
					$.each(data, function(index, comments){
						let regDate=new Date(comments.regDate);
						// numeric: 숫자, 2-digit: 두자리 숫자 형식
						let options = {year:"numeric", month:"2-digit", day:"2-digit", hour:"2-digit", minute:"2-digit"};
						let formateDate = regDate.toLocaleString("ko-KR", options);
			            // 데이터를 순회하여 테이블 목록을 불러와 테이블 바디에 추가
			            // 동적으로 데이터 처리
			            console.log("@@@@@@@@@comments : "+comments);
			            console.log(JSON.stringify(comments, null, 2));
			            console.log(comments);
			            let row = $("<tr>");
			            row.append($("<td>").text(comments.boardType === "P" ? "정책게시판" : "꿀팁게시판"));
			            row.append($("<td>").text(comments.writer));
			            row.append($("<td>").text(comments.content));
			            row.append($("<td>").text(formateDate)); // 작성일
						// tipCount와 policyCount 중에서 어떤 값을 보여줄지 결정
			            row.append($("<td>").text(comments.policycno === null || comments.policycno === "" || comments.policycno === 0 ? comments.tipcno : comments.policycno));
			            
						// 댓글 신고 횟수 표시 부분
						console.log("comments.tipcno:", comments.tipcno);
						console.log("comments.policycno:", comments.policycno);
			            
			            // 삭제 버튼 표시 부분
			            let deleteTd = $("<td>");
			            let deleteImg = $("<i>").addClass("fa fa-minus-circle fa-2x text-primary");
			            let deleteLink = $("<a>").addClass("comment_deleteBtn").attr("href", "").text("삭제");                 
			            
			            deleteTd.append(deleteImg, deleteLink);
			            row.append(deleteTd);
			            commentTbody.append(row);
			            console.log("pagemaker: "+${pageMaker.realEnd});
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
	}); //document ready End
	
</script>
    
<%@include file="../includes/footer.jsp"%>