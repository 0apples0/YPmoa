
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Board</h1>

                    <p id="login_p">관리자 게시글 관리</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title text-center text-primary text-uppercase">Reported board</h6>
            <h1 class="mb-4"><span class="text-primary text-uppercase">게시글</span> 관리</h1>
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
										<option value="S"
											<c:out value="${pageMaker.cri.boardType == 'S'?'selected':'' }"/>>건의</option>
										<option value="T"
											<c:out value="${pageMaker.cri.boardType == 'T'?'selected':'' }"/>>꿀팁</option>
                                    </select>
                                </div>
                                <div class="col-md-2">
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
                                    <table id="admin_boardTable" class="table table-hover admin_boardTable">


                                        <thead>
                                            <tr> 
                                                <th data-sort="board">게시판</th>
                                                <th data-sort="nickname">닉네임</th>
                                                <th data-sort="title">글 제목</th>
                                                <th data-sort="date">작성일</th>
                                                <th data-sort="reportNum">신고횟수</th>
                                                <th data-sort="delete">글삭제</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        </tbody>
                                    </table>
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
                  <a class="page-link" href="${pageMaker.cri.prevprevPage}"><i class="fa fa-angle-double-left"
                           aria-hidden="true"></i></a>
               </c:when>
               <c:otherwise>
                  <a class="page-link"><i class="fa fa-angle-double-left"
                           aria-hidden="true"></i></a>  
               </c:otherwise>     
               </c:choose>            
            </li> 
            <%-- <버튼: 1페이지 이전 --%>
            <li class="paginate_button policy_page-item prev">
               <c:choose>
               <c:when test="${(pageMaker.cri.pageNum) >1}">
               	
                  <a class="page-link" href="${pageMaker.cri.pageNum -1 }"><i class="fa fa-angle-left"
                           aria-hidden="true"></i></a>
                    </c:when>
                    <c:otherwise>
                  <a class="page-link"><i class="fa fa-angle-left"
                           aria-hidden="true"></i></a>  
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
                  <a class="page-link" href="${pageMaker.cri.pageNum +1 }"><i class="fa fa-angle-right"
                           aria-hidden="true"></i></a>
               </c:when> 
               <c:when test="${(pageMaker.cri.pageNum+1 > pageMaker.realEnd)}">
                  <a class="page-link"><i class="fa fa-angle-right"
                           aria-hidden="true"></i></a>
               </c:when>               
               <c:otherwise>
                  <a class="page-link" href="${pageMaker.endPage+1}"><i class="fa fa-angle-right"
                           aria-hidden="true"></i></a>   
               </c:otherwise>     
              </c:choose>            
            </li>              
            
            <%-- >>버튼: 10페이지 이동 --%>  
            <li class="paginate_button page-item next">
               <c:choose>
               <c:when test="${pageMaker.realEnd == pageMaker.endPage}">
                  <a class="page-link"><i class="fa fa-angle-double-right"
                           aria-hidden="true"></i></a>  

               </c:when>
               <c:otherwise>
                  <a class="page-link" href="${pageMaker.cri.nextnextPage}">
                           <i class="fa fa-angle-double-right"
                           aria-hidden="true"></i></a>
               </c:otherwise>     
               </c:choose>            
            </li> 
            

            </ul>
        </nav>
        <form id="actionForm" action="/adminmenu/reportboardget" method="post">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="userType" value="${pageMaker.cri.userType }">
			<input type="hidden" name="boardType" value="${pageMaker.cri.boardType }">
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
                                            바나나를 싫어한다고 해서 기분나빠요
                                            바나나를 싫어한다고 해서 기분나빠요
                                            바나나를 싫어한다고 해서 기분나빠요
                                            바나나를 싫어한다고 해서 기분나빠요
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
                                             우끼끼 우끼끼 우끼끼 우끼끼
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
        
        
  
<script>
$(document).ready(function () {
    loadTableData();
	$("#searchForm button[type='reset']").on("click", function (e) {
	    // 검색어 입력 필드 초기화
	    $("#searchForm input[name='keyword']").val('');
	    $("#searchForm select").val('');
		e.preventDefault();
	});
	
	function bindCommentActionHandlers(row, bno, boardType, isdeleted) {
		
		row.on("click", ".titleLink", function(e){
			e.preventDefault();
			if(isdeleted == 0){
				if(boardType === "T"){
					window.location.href = "/community/get?bno="+bno;
				}else if(boardType === "S"){
					window.location.href = "/suggest/get?bno="+bno;
				}				
			}else{
				alert("이미 삭제된 게시글입니다.");
			}

    		
		});
		row.on("click", ".board_deleteBtn", function(e){
			e.preventDefault();
			$('#modalCenterSelect').modal('show');
			$('#deleteCheckBtn').on("click", function(e){
				e.preventDefault();
				$.ajax({
			        url: "/adminmenu/deleteBoard",
			        type: "POST",
			        dataType: "text", 
			        data: {
			        	bno: bno, // 삭제 대상 게시글 번호
			        	boardType: boardType // 삭제 대상 게시판 타입
			        },
			        success: function (response) {
			            console.log("게시글 삭제가 완료되었습니다.");
			            // 게시글 삭제 완료 후 기존 삭제 버튼이 있던 자리에 텍스트 대체
			            row.find('.board_deleteBtn').parent('td').empty().text('삭제완료');
			        },
			        error: function (error) {
			            console.error("게시글 삭제 중 오류가 발생했습니다.", error);
			        }
			    });				
			});
			$('#passCheckBtn').on("click", function(e){
				alert("삭제 안할거야");
			});
			
		});
	}
  	
    function loadTableData(){
        
        $.ajax({
           url: "/adminmenu/getReportboardList",// 요청할 서버 uri
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
              $.each(data, function(index, board){
                
                 let regDate=new Date(board.regDate);
                 // numeric: 숫자, 2-digit: 두자리 숫자 형식
                 let options = {year:"numeric", month:"2-digit", day:"2-digit", hour:"2-digit", minute:"2-digit"};
                 let formateDate = regDate.toLocaleString("ko-KR", options);

                 // 데이터를 순회하여 테이블 목록을 불러와 테이블 바디에 추가
                 let row = $("<tr>");
                 row.append($("<td>").text(board.boardType === "T" ? "꿀팁" : "건의"));
                 row.append($("<td>").text(board.writer));
                 
                 let titleTd = $("<td>");
               	 let titleLink = $("<a>").addClass("titleLink").attr("href", "").text(board.title);
               	 titleTd.append(titleLink);
                 row.append(titleTd);
                 
                 row.append($("<td>").text(formateDate));
                 row.append($("<td>").text(board.countReport));
                 
                 let deleteTd = $("<td>");
                 let deleteImg = $("<i>").addClass("fa fa-trash fa-2x text-primary admin_reportModal");
                 let deleteLink = $("<a>").addClass("board_deleteBtn").attr("href", "").text("삭제");
                 deleteTd.append(deleteImg, deleteLink);
                
                 row.append(deleteTd);  
                 userTbody.append(row);
                 console.log("pagemaker: "+${pageMaker.realEnd});
                 
                 // row, board.bno, board.boardType 전달하여 활용하는 함수
                 bindCommentActionHandlers(row, board.bno, board.boardType, board.isdeleted);
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
});
</script>



<%@include file="../includes/footer.jsp"%>