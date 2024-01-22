<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">WishList</h1>

                    <p id="login_p">위시리스트에 담긴 정책을 확인하세요!</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title text-center text-primary text-uppercase">WishList</h6>
            <h1 class="mb-5"><i class="fa fa-hand-holding-heart text-primary"></i>
            <span class="text-primary text-uppercase">정책</span> 위시리스트 </h1>
        </div>
        <!-- Booking Start -->
        <div class="container-fluid mypage_booking pb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container_search">
                <div class="bg-white mypage_shadow" style="padding: 35px;">
                    <div class="row g-2">

                        <h3 class=" text-center text-primary ">상세검색<img id="policy_search"
                                src="${pageContext.request.contextPath}/resources/img/search.png" /></h3>


                    </div>



                    <div class="row policy_row g-2">


                        <form id="searchForm">

					<div class="row  policy_row g-2">
						<div class="col-md-auto">
							<select class="form-select" name="rgnSeNm">
								<option value=""
									<c:out value="${pageMaker.cri.rgnSeNm == null? 'selected' : '' }"/>>지역선택</option>
							
								<option value="구미시"
									<c:out value="${pageMaker.cri.rgnSeNm == '구미시'?'selected':'' }"/>>구미시</option>
								
								<option value="안동시"
									<c:out value="${pageMaker.cri.rgnSeNm == '안동시'?'selected':'' }"/>>안동시</option>
								<option value="울진군"
									<c:out value="${pageMaker.cri.rgnSeNm == '울진군'?'selected':'' }"/>>울진군</option>
									
							</select>
						</div>
						
						<div class="col-md-auto">
							<select class="form-select" name="policyTypeNm">
								<option value=""
									<c:out value="${pageMaker.cri.policyTypeNm == null?'selected':'' }"/>>관심분야</option>
								<option value="주거"
									<c:out value="${pageMaker.cri.policyTypeNm == '주거'?'selected':'' }"/>>주거</option>
								<option value="교육"
									<c:out value="${pageMaker.cri.policyTypeNm == '교육'?'selected':'' }"/>>교육</option>
								<option value="신혼부부"
									<c:out value="${pageMaker.cri.policyTypeNm == '신혼부부'?'selected':'' }"/>>신혼부부</option>
							</select>
						</div>
						<div class="col-md-auto">
                            <select class="form-select" name="type">
                                <option value="TC" 
                                 	<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>전체</option>
                                <option value="T" 
                                 	<c:out value="${pageMaker.cri.type == 'T'?'selected':''}"/>>제목</option>
                                <option value="C"
                                 	<c:out value="${pageMaker.cri.type == 'TC'?'selected':''}"/>>내용</option>  
                            </select>
                        </div>
                        <div class="col-md-3">

							<input type="text"
								class="form-control datetimepicker-input font_light"
								placeholder="검색어를 입력하세요" name="keyword" value="${pageMaker.cri.keyword == null?null:pageMaker.cri.keyword}"/>

						</div>
                        
					</div>
					<div class="row g-2 justify-content-center policy_search_box">
						
						<!-- 조건+제목+내용 / 제목+내용 검색 -->
						<div class="col-md-1 ">
							<button type="submit" id="searchBtn"  class="btn btn-primary w-100">검색하기</button>
						</div>
						<!-- 저장된 본인의 맞춤정보에 따라 조건 적용 -->
						<div class="col-md-2">
							<button class="btn btn-warning w-100">내 맞춤조건 적용</button>
						</div>
						<div class="col-md-1_a">
							<button type="reset" class="btn btn-secondary ">초기화</button>
						</div>
					</div>
					<div class="row g-2 justify-content-center">


						
					</div>
				</form>
                                
                                
                            </div>
                        </div>

                    </div>


                </div>
   

    <!-- Booking End -->



<div class="container-xxl py-5">
	<div class="container wow fadeInUp" data-wow-delay="0.1s" style="height: 70px;">
		<div id="policy_checkbox" style="float: left;">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="form-check-input"
					<c:out value="${pageMaker.cri.selectedFilter == 'like'?'checked':'' }"/>
					id="customCheck"> <label class="custom-control-label"
					for="customCheck">알림받은 정책보기</label>
			</div>

		</div>

	</div>


	<div class="container">


		<div class="row g-4" id="wishContainer">
			<!-- 값 들어갈 곳 -->
		</div>
		<!-- wishContainer 끝 -->
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
	<form id="actionForm" action="/wish/wish" method="post">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="rgnSeNm" value="${pageMaker.cri.rgnSeNm }">
		<input type="hidden" name="policyTypeNm"
			value="${pageMaker.cri.policyTypeNm }"> <input type="hidden"
			name="type" value="${pageMaker.cri.type }"> <input
			type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		<input type="hidden" name="selectedFilter"
			value="${pageMaker.cri.selectedFilter }">
	</form>

	<form id="usernickForm" action="wish/wish" method="get">
		<input type="hidden" name="writer" value="${user.nick}">
	</form>
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
        	
        	function formatDate(date) {
        		
        	    if (!date) {
        	        return "상시모집";
        	    }
        		  const options = { year: 'numeric', month: '2-digit', day: '2-digit' }; 
        		  const formattedDate = new Date(date).toLocaleDateString('en-US', options); 

        		  // '/'를 '-'로 바꿔서 반환
        		  return formattedDate.replace(/(\d{1,2})\/(\d{1,2})\/(\d{4})/, '$3-$1-$2');

        		}
   



			let actionFrom = $("#actionFrom");
			$(".paginate_button a").on("click", function(e) {
				// 기존에 가진 이벤트를 중단(기본적으로 수행하는 행동을 막는 역할)
				e.preventDefault(); // 이벤트 초기화
				//pageNum값을 사용자가 누른 a태그의 href속성값으로 변경
				// 3페이지 선택시 pageNum = 3;
				actionFrom.find("input[name='pageNum']").val($(this).attr("href"));
				actionFrom.submit();
			});
			
			let searchForm = $("#searchForm");
			
			$("#searchForm #searchBtn").on("click",function(e){
				searchForm.find("input[name='pageNum']").val("1");
				e.preventDefault();
				searchForm.submit();
			});
			
            
            function loadTableData() {
		    	//$("#policyContainer").empty();
		  	    $.ajax({
		  	        url: "/wish/get",
		  	        type: "POST",
		  	        dataType: "json",
		  	        data: {
		  	            pageNum: $("#actionFrom").find("input[name='pageNum']").val(),
		  	            amount: $("#actionFrom").find("input[name='amount']").val(),
		  	            type: $("#searchForm select[name='type']").val(),
		  	            keyword: $("#actionFrom").find("input[name='keyword']").val(),
		  	            rgnSeNm: $("#searchForm select[name='rgnSeNm']").val(),
	        			policyTypeNm: $("#searchForm select[name='policyTypeNm']").val(),
	        			selectedFilter: $("#actionFrom").find("input[name='selectedFilter']").val()
		  	        },
		  	        success: function (data) {
		  	        	
		 				console.log(data);
		  	            // 정책 정보를 동적으로 추가
		  	            data.forEach(function (policy, index, wish) {
		  	               policy.aplyEndDt = formatDate(policy.aplyEndDt);
		  	               addPolicyToContainer(policy, index + 1, wish);
		  	            });
		  	        },
		  	        error: function (e) {
		  	            console.log(e);
		  	        }
		  	    });
		  	    
		  	  let actionForm = $("#actionForm");
		      $(".paginate_button a").on("click", function(e){
		      
		         //기존에 가진 이벤트를 중단(기본적으로 수행하는 행동을 막는 역할)
		         e.preventDefault(); //이벤트 초기화
		         //pageNum 값을 사용자가 누른 a태그의 href 속성값으로 변경
		         console.log(actionForm);
		         /*
		         actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		         actionForm.submit();
		         */
		         console.log("href : " + $(this).attr("href"));
		          // pageNum 값을 사용자가 누른 a태그의 href 속성값으로 변경
		          let newPageNum = $(this).attr("href");
		         console.log("newPageNum : " + newPageNum);
		          // pageNum이 비어있지 않은 경우에만 submit 실행
		          if (newPageNum) {
		              actionForm.find("input[name='pageNum']").val(newPageNum);
		              actionForm.submit();
		          }
		      });
		  	} // ajax의 끝
		 	  
            
            function addPolicyToContainer(policy, index, wish) {
	    	
	    	    
	    	    var displayPolicyName = policy.policyNm ? policy.policyNm.replace(/\([^)]*\)/g, '') : '';   // 제목에 괄호 빼고 표시
	    	    var contextPath = "${pageContext.request.contextPath}"; // JSP 페이지에서 변수로 받아올 경우
	    	

	    	    var policyHtml = '<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="' + (0.1 * index) + 's" data-wish-policy-no="' + policy.no + '">' +
	    	        '<div class="rounded shadow overflow-hidden">' +
	    	        '<div class="position-relative">' +
	    	        '<img class="img-fluid" src="' + contextPath + '/resources/img/카드' + (index ? index : '2') + '.png" alt="">' +
	    	        '</div>' +
	    	        '<div class="p-4 mt-2">' +
	    	        '<h5 class="fw-bold mb-4"><a href="/policy/get?no=' + policy.no + '" style="color:black;">' + displayPolicyName + '</a></h5>' +
	    	        		
	    	        '<div class="d-flex">'+
	    	        '<small class="policy_areaName" style="max-width:100px" >' + (policy.rgnSeNm) + '</small>' +
	    	        '<small class="policy_startDate" style="margin-left:auto; text-align:right;">신청마감일<br>' + (policy.aplyEndDt) + '</small>' + // 날짜 부분만 표시
	    	        '</div>'+
	    	        '</div>' +
	    	        '<div class="commuGet_btn" >' +
	    	        '<button class="btn btn-outline-primary wish_alarm" id="wishAlarmBtn" data-wish-alarm="' + (wish.isalert ? 'true' : 'false') + '">알림받기</button>' +
	    	        '<button class="btn btn-outline-danger" id="delBtn" style="margin: 10px;">삭제</button>' +
	    	        '</div>' +
	    	        '</div>';


	    	

	    	   
	    	    $("#wishContainer").append(policyHtml);
	    	}
     	
		 
		  	
         	// 위시 삭제
            $(document).on("click", "#delBtn", function(e) {
                e.preventDefault();
                userNick = $("#usernickForm input[name='writer']").val();
                if (userNick == null || userNick == "") {
                    alert("로그인 필요");
                    return;
                }

                var wishPolicy = $(this).closest('.col-lg-3').data('wish-policy-no');


                console.log("위시jsp: " + wishPolicy);
                // 확인을 눌렀을 때
                if (confirm("위시리스트에서 삭제하시겠습니까?")) {
                    $.ajax({
                        url: "/wish/del",
                        type: "POST",
                        data: { wishPolicy: wishPolicy },
                        success: function () {
                            alert("삭제되었습니다.");
                            location.reload(); // 페이지 리로딩
                        },
                        error: function (e) {
                            alert("삭제 실패");
                            console.log(e);
                        }
                    });
                } else {
                    // 취소를 눌렀을 때
                    alert("취소되었습니다.");
                }
            });


        	
         	// 알람 눌렀을 때
            $(document).on("click", "#wishAlarmBtn", function() {
                var button = $(this);
                var currentStatus = button.data("status");
                var wishPolicy = button.closest('.col-lg-3').data('wish-policy-no');
                var wishAlarm = button.data('wish-alarm');
              	console.log(wishPolicy);
				console.log(wishAlarm);
                $.ajax({
                    url: "/wish/alarm",
                    type: "POST",
                    data: { wishPolicy: wishPolicy, wishAlarm: wishAlarm },
                    success: function(response) {
                        if (response.success) {
                            // 서버에서 성공적으로 응답 받았을 때

                            // 토글 처리
                            if (currentStatus === "알림받기" || currentStatus === undefined) {
                                button.text("알림해제");
                                button.removeClass("btn-outline-primary").addClass("btn-primary");
                                button.data("status", "알림해제");
                            } else {
                                button.text("알림받기");
                                button.removeClass("btn-primary").addClass("btn-outline-primary");
                                button.data("status", "알림받기");
                            }

                            alert(response.message); // 서버에서 받은 메시지 출력

                            // 추가적인 로직 수행 가능
                        } else {
                            // 서버에서 실패한 경우
                            alert("알림 등록에 실패했습니다");
                        }
                    },
                    error: function(e) {
                        // 실패 시 알림창 표시
                        alert("알림 등록에 실패했습니다");
                        console.log(e);
                    }
                });
            });


		  	
		  	
            
        }); // document.ready함수 끝


    </script>


<%@include file="../includes/footer.jsp"%>
