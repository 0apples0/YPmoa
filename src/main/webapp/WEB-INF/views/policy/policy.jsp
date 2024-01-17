
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
	<div class="page-header-inner" id="login_banner">
		<div class="container text-center">
			<h1 class=" display-3 text-white mb-3 animated slideInDown"
				id="login_h1">Policy</h1>

			<p id="login_p">청년들을 위한 정책</p>



		</div>
	</div>
</div>
<!-- Page Header End -->
<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
	<h6 class="section-title text-center text-primary text-uppercase">Policy</h6>
	<h1 class="mb-5">
		<span class="text-primary text-uppercase">정책</span> 둘러보기
	</h1>
</div>
<!-- Booking Start -->
<div class="container-fluid mypage_booking pb-5 wow fadeIn"
	data-wow-delay="0.1s">
	<div class="container_search">
		<div class="bg-white mypage_shadow" style="padding: 35px;">
			<div class="row g-2">

				<h3 class=" text-center text-primary ">
					상세검색<img id="policy_search"
						src="${pageContext.request.contextPath}/resources/img/search.png" />
				</h3>


			</div>



			<div class="row policy_row g-2">


				<form id="searchForm">

					<div class="row  policy_row g-2">
						<div class="col-md-3_b">
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
						
						<div class="col-md-3_b">
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
						<div class="col-md-3_b">
                            <select class="form-select" name="type">
                                <option value="TC" 
                                 	<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>전체</option>
                                <option value="T" 
                                 	<c:out value="${pageMaker.cri.type == 'T'?'selected':''}"/>>제목</option>
                                <option value="C"
                                 	<c:out value="${pageMaker.cri.type == 'TC'?'selected':''}"/>>내용</option>  
                            </select>
                        </div>
					</div>
					<div class="row g-2 justify-content-center policy_search_box">
						<div class="col-md-2">

							<input type="text"
								class="form-control datetimepicker-input font_light"
								placeholder="검색어를 입력하세요" name="keyword" value="${pageMaker.cri.keyword == null?null:pageMaker.cri.keyword}"/>

						</div>
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



			<div>
			</div>


		</div>
	</div>
</div>


<!-- Booking End -->



<div class="container-xxl py-5">
	<div class="container">
 <div class="commuGet_btn">
                <button class="btn btn-primary">글쓰기</button>
            </div>

		<!-- 체크박스를 누르면 바로 검색결과가 두두두 떴으면 좋겠습니다.. -->

		<div id="policy_checkbox">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					<c:out value="${pageMaker.cri.selectedFilter == null?'checked':'' }"/>
					id="customCheck1"> <label class="custom-control-label"
					for="customCheck1">전체</label>
			</div>
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					<c:out value="${pageMaker.cri.selectedFilter == 'applyDate'?'checked':'' }"/>
					id="customCheck2"> <label class="custom-control-label"
					for="customCheck2">모집중</label>
			</div>
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					<c:out value="${pageMaker.cri.selectedFilter == 'overDate'?'checked':'' }"/>
					id="customCheck3"> <label class="custom-control-label"
					for="customCheck3">신청마감</label>
			</div>
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					<c:out value="${pageMaker.cri.selectedFilter == 'like'?'checked':'' }"/>
					id="customCheck4"> <label class="custom-control-label"
					for="customCheck4">좋아요 많은 순</label>
			</div>

		</div>


		<div class="row g-4" id="policyContainer"></div>

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
        <form id="actionFrom" action="/policy/policy" method="post">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="rgnSeNm" value="${pageMaker.cri.rgnSeNm }">
			<input type="hidden" name="policyTypeNm" value="${pageMaker.cri.policyTypeNm }">
			<input type="hidden" name="type" value="${pageMaker.cri.type }">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
			<input type="hidden" name="selectedFilter" value="${pageMaker.cri.selectedFilter }">			
		</form>
    </div>




<script>

	function formatDate(date) {
	    const options = { year: 'numeric', month: 'long', day: 'numeric' };
	    return new Date(date).toLocaleDateString('ko-KR', options);
	}


     $(document).ready(function () {
    	 
	   	loadTableData();
	   	
	   	$("#searchForm button[type='reset']").on("click", function (e) {
	        // 검색어 입력 필드 초기화
	        $("#searchForm input[name='keyword']").val('');
	        $("#searchForm select").val('');
	        e.preventDefault();
	    });
	   	
	   	//체크박스
	   	$('.custom-control-input').on('change', function () {
	   	    if ($(this).prop('checked')) {
	   	        // 현재 선택된 체크박스의 ID
	   	        var selectedId = $(this).attr('id');

	   	        // 모든 체크박스 반복
	   	        $('.custom-control-input').each(function () {
	   	            // 현재 체크박스의 ID
	   	            var currentId = $(this).attr('id');

	   	            // 현재 체크박스가 선택된 체크박스가 아니라면 선택 해제
	   	            if (currentId !== selectedId) {
	   	                $(this).prop('checked', false);
	   	            }
	   	        });
	   	        
	   	        // 체크박스 상태에 따라 actionForm의 값을 변경하고 submit 호출
	   	        let selectedFilter = "";
	   	        if ($("#customCheck1").is(":checked")) {
	   	            selectedFilter = "";
	   	        } else if ($("#customCheck2").is(":checked")) {
	   	            selectedFilter = "applyDate";
	   	        } else if ($("#customCheck3").is(":checked")) {
	   	            selectedFilter = "overDate";
	   	        } else if ($("#customCheck4").is(":checked")) {
	   	            selectedFilter = "like";
	   	        }

	   	        // 선택한 필터 값을 hidden input에 설정
	   	        $("#actionFrom input[name='selectedFilter']").val(selectedFilter);
	   	        $("#actionFrom input[name='pageNum']").val(1);

	   	        // actionForm submit 호출
	   	        actionFrom.submit();
	   	    }
	   	}); //체크박스 끝
	
	    // 리스트 위시 버튼
		 $(document).on("click", ".toggleLink", function(e) {
		    e.preventDefault();
		
		    var $img = $("#" + $(this).data("target"));
		
		    // 현재 소스를 가져옴
		    var currentSrc = $img.attr("src");
		
		    // 토글해서 새로운 소스를 설정
		    var newSrc = currentSrc.includes("addWish.png") ? "${pageContext.request.contextPath}/resources/img/checkWish.png" : "${pageContext.request.contextPath}/resources/img/addWish.png";
		
		    // 이미지 소스를 변경
		    $img.attr("src", newSrc);
		
		    // 알림 창 표시
		    var message = currentSrc.includes("addWish.png") ? "위시리스트에 등록되었습니다" : "위시리스트에서 해제되었습니다";
		    alert(message);
		});


	    
	    
	    
			
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
		  	        url: "/policy/getList",
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
		  	            data.forEach(function (policy, index) {
		  	               policy.crtDt = formatDate(policy.crtDt);
		  	               addPolicyToContainer(policy, index + 1);
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
		  	}
		 	  
	
		    
		     function addPolicyToContainer(policy, index) {
		    	    console.log(policy.policyNm);
		    	    
		    	    var displayPolicyName = policy.policyNm ? policy.policyNm.replace(/\([^)]*\)/g, '') : '';   // 제목에 괄호 빼고 표시
		    	    var contextPath = "${pageContext.request.contextPath}"; // JSP 페이지에서 변수로 받아올 경우
		    	
	
		    	    var policyHtml = '<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="' + (0.1 * index) + 's">' +
		    	        '<div class="rounded shadow overflow-hidden">' +
		    	        '<div class="position-relative">' +
		    	        '<img class="img-fluid" src="' + contextPath + '/resources/img/카드' + (index ? index : '2') + '.png" alt="">' +
		    	        '<div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">' +
		    	        '<a class="btn btn-square mx-1 toggleLink"  data-target="policy_heart_' + index + '">' +
		    	        '<img class="policy_heart" id="policy_heart_' + index + '" src="' + contextPath + '/resources/img/addWish.png" />' +
		    	        '</a>' +
		    	        '</div>' +
		    	        '</div>' +
		    	        '<div class="p-4 mt-2 policy_detail">' +
		    	        '<h5 class="fw-bold mb-4"><a href="get?no=' + policy.no + '" style="color:black;">' + displayPolicyName + '</a></h5>' +
		    	        		
		    	        '<div class="d-flex">'+
		    	        '<small class="policy_areaName" style="max-width:100px" >' + (policy.rgnSeNm) + '</small>' +
		    	        '<small class="policy_startDate" style="margin-left:auto">' + (policy.crtDt) + '</small>' + // 날짜 부분만 표시
		    	        '</div>'+
		    	        '</div>' +
		    	        '<div class="commuGet_btn" >' +
		    	        '<button class="btn btn-primary">수정</button>' +
		    	        '<button class="btn btn-primary" style="margin: 10px;">삭제</button>' +
		    	        '</div>' +
		    	        '</div>';
	
	
		    	
	
		    	    // 정책 컨테이너에 추가
		    	    $("#policyContainer").append(policyHtml);
		    	}
	     
	     
	
	     
}); // document.ready함수 끝

    </script>
<%@include file="../includes/footer.jsp"%>
