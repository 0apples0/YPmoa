
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Member</h1>

                    <p id="login_p">관리자 회원 관리</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title text-center text-primary text-uppercase">Member</h6>
            <h1 class="mb-4"><span class="text-primary text-uppercase">회원</span> 관리</h1>
        </div>


        <!-- Booking Start -->
        <div class="container-fluid mypage_booking wow fadeIn" data-wow-delay="0.1s" >
            <div class="container_search" >
                <div class="bg-white" style="padding: 20px;">
                   


                    <form id="searchForm">

                        <div class="row policy_row g-2">



                            <div class="row policy_row g-2" style="justify-content: right;">
                                <div class="col-md-auto">
                                    <select class="form-select" name="userType">
										<option value="1"
											<c:out value="${pageMaker.cri.userType == '1' or pageMaker.cri.userType == null ?'selected':'' }"/>>일반회원</option>
										<option value="3"
											<c:out value="${pageMaker.cri.userType == '3'?'selected':'' }"/>>정지회원</option>											
                                    </select>
                                </div>

                                <div class="col-md-auto">
                                    <select class="form-select" name="type">
										<option value="nick"
											<c:out value="${pageMaker.cri.type == 'nick'?'selected':'' }"/>>닉네임</option>
										<option value="Email"
											<c:out value="${pageMaker.cri.type == 'Email'?'selected':'' }"/>>이메일</option>										
                                    </select>
                                </div>
                             
                                <div class="col-md-2">
                                    <input type="text" class="form-control datetimepicker-input font_light"
                                        placeholder="검색어를 입력하세요" name="keyword"/>
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
                                    <table id="admin_userTable" class="table table-hover admin_userTable">


                                        <thead>
                                            <tr> 
                                                <th data-sort="Email">아이디</th>
                                                <th data-sort="nickname">닉네임</th>
                                                <th data-sort="name">이름</th>
                                                <th data-sort="phone">연락처</th>
                                                <th data-sort="date">가입일자</th>
                                                <th data-sort="reportNum"  colspan="2">신고이력</th>
                                                <c:choose>
						                            <c:when test="${pageMaker.cri.userType == 2 or pageMaker.cri.userType == 3}">
						                                <th data-sort="leaveDate">정지일자</th>
						                                <th data-sort="rollback">정지해제</th>
						                            </c:when>
						                            <c:otherwise>
						                                <th data-sort="leave">회원정지</th>
						                            </c:otherwise>
					                            </c:choose>
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
                  <a class="page-link" style="pointer-events: none; cursor: default;"><i class="fa fa-angle-double-left"
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
                  <a class="page-link" style="pointer-events: none; cursor: default;"><i class="fa fa-angle-left"
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
                  <a class="page-link" style="pointer-events: none; cursor: default;"><i class="fa fa-angle-right"
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
                  <a class="page-link" style="pointer-events: none; cursor: default;"><i class="fa fa-angle-double-right"
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
        <form id="actionForm" action="/adminmenu/userget" method="post">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="userType" value="${pageMaker.cri.userType }">
			<input type="hidden" name="type" value="${pageMaker.cri.type }">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		</form>
    </div>

    <!-- 정지 버튼 Modal -->
    <div class="modal fade admin_Modal" id="modalCenterSelect" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalCenterTitle">회원 관리</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" >
                            <div style="text-align:center">해당 회원을 정지할까요?</div>
                            
                </div>
                <div class="modal-footer" style="justify-content:center">
                    <button type="button" id="deleteCheckBtn" class="btn btn-warning" data-bs-dismiss="modal">확인</button>
                    <button type="button" id="passCheckBtn" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 복구 버튼 Modal -->
    <div class="modal fade admin_Modal" id="modalCenterSelectRollback" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalCenterTitle">정지회원 관리</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" >
                            <div style="text-align:center">회원 정지를 해제할까요?</div>
                </div>
                <div class="modal-footer" style="justify-content:center">
                    <button type="button" id="rollbackCheckBtn" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
                    <button type="button" id="passCheckBtn" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>
    
    <form id="searchForm" method="post" action="/adminmenu/reportboardget">
    	<input type="hidden" name="keyword" value=""/>
	</form>
<script>
$(document).ready(function () {
	loadTableData();
	
	let searchForm = $("#searchForm");
	
	$("#searchBtn").on("click",function(e){
		searchForm.find("input[name='pageNum']").val("1");
		e.preventDefault();
		searchForm.submit();
	});

	$("#searchForm button[type='reset']").on("click", function (e) {
	    // 검색어 입력 필드 초기화
	    $("#searchForm input[name='keyword']").val('');
	    $("#searchForm select:eq(0)").val('1');
	    $("#searchForm select:eq(1)").val('nick');
		e.preventDefault();
	});
	
	
	function bindCommentActionHandlers(row, Email, userType, nick) {
		// 회원 정지
		row.on("click", ".user_deleteBtn", function(e){
			e.preventDefault();
			$("#modalCenterSelect").modal("show");
			$("#deleteCheckBtn").on("click", function(e){
				updateUserType(Email, userType);
			});
			
		});
		// 회원 정지해제
		row.on("click", "#board_rollbackBtn", function(e){
			e.preventDefault();
			$("#modalCenterSelectRollback").modal("show");
			$("#rollbackCheckBtn").on("click", function(e){
				e.preventDefault();
				updateUserType(Email, userType);		
			});

		});
		
		row.on("click", ".board_countReportBtn", function(e){
			e.preventDefault();
			$("#searchForm input[name='keyword']").val(nick);
			$("#searchForm").submit();
		});
		
	}
	
	// 회원 정지/해제 (userType 값 변경)
	function updateUserType(Email, userType){
		$.ajax({
            url: "/adminmenu/deleteUser",
            type: "POST",
            dataType: "text", 
            data: {
            	Email: Email, // 정지/해제 대상 아이디(이메일)
				userType: userType // 유저타입
            },
            success: function (response) {
                console.log("회원 정지/해제가 완료되었습니다.");
                location.reload();
            },
            error: function (error) {
                console.error("정지/해제 처리 중 오류가 발생했습니다.", error);
            }
        });  	
	}
    function loadTableData(){
        
        $.ajax({
           url: "/adminmenu/getUserList",// 요청할 서버 uri
           type: "POST", //요청방식 지정
           dataType : "json", // 서버 응답의 데이터 타입(대표적으로 json(name, value 형태), xml(태그 형태)이 있다)
           data:{
         	  pageNum : $("#actionForm").find("input[name='pageNum']").val(),
              amount : $("#actionForm").find("input[name='amount']").val(),
              userType: $("#searchForm select[name='userType']").val(),
	          type: $("#searchForm select[name='type']").val(),
  	          keyword: $("#actionForm").find("input[name='keyword']").val()
           },
           success: function(data){
       	  
              let userTbody = $("#admin_userTable tbody");
              userTbody.empty(); // 기존 테이블 행 삭제
                 
              //Ajax가 반환한 데이터를 "순회"=='반복자'하여 처리
              //for(let item of items) -> items == data, item ==board 역할
              $.each(data, function(index, users){
                
                 let regDate=new Date(users.regDate);
                 // numeric: 숫자, 2-digit: 두자리 숫자 형식
                 let options = {year:"numeric", month:"2-digit", day:"2-digit", hour:"2-digit", minute:"2-digit"};
                 let formateDate = regDate.toLocaleString("ko-KR", options);

                 // 데이터를 순회하여 테이블 목록을 불러와 테이블 바디에 추가
                 // 동적으로 데이터 처리
                 console.log(users);
                 let row = $("<tr>");
                 row.append($("<td>").text(users.email));
                 row.append($("<td>").text(users.nick));
                 row.append($("<td>").text(users.name));
                 row.append($("<td>").text(users.phone));
                 row.append($("<td>").text(formateDate));
                 
                 let countReportTd = $("<td>").addClass("board_countReportBtn").attr("id","moveBoardReport").attr("colspan", "2").text(users.countReport);
                 row.append(countReportTd);
                 
                 let deleteTd = $("<td>");
                 let deleteImg = $("<i>").addClass("fa fa-minus-circle fa-2x text-primary");
                 let deleteLink = $("<a>").addClass("user_deleteBtn").attr("href", "").text("정지");                 
                 
                 let leaveDate = new Date(users.leaveDate);
                 let formateLeaveDate = leaveDate.toLocaleString("ko-KR", options);
                 
                 // 일반 회원 검색이라면, 삭제 버튼 표시
                 if(users.userType == 1){
                     deleteTd.append(deleteImg, deleteLink);
                     row.append(deleteTd);                	 
                 }else{ // 정지 회원 검색이라면, 탈퇴일자 표시
                     let leaveDateTd = $("<td>").text(formateLeaveDate);
    				 row.append(leaveDateTd);
    				 let rollbackTd = $("<td>").addClass("rollbackTd");
                	 let rollbackLink = $("<a>").attr("href", "").attr("id", "board_rollbackBtn");
                     let rollbackBtn = $("<i>").addClass("fa fa-reply	text-success fa-2x admin_reportModal");
                     
                     rollbackLink.append(rollbackBtn);
                     rollbackTd.append(rollbackLink);
                     row.append(rollbackTd);
                 }

                 userTbody.append(row);
                 console.log("pagemaker: "+${pageMaker.realEnd});
                 
                 // 회원 정보(Email, userType)를 클릭 이벤트 핸들러에 전달하여 활용할 수 있도록 함
                 bindCommentActionHandlers(row, users.email, users.userType, users.nick);
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