
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header_admin.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
	<div class="page-header-inner" id="login_banner">
		<div class="container text-center ">
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


				<form>

					<div class="row  policy_row g-2">
						<div class="col-md-3_b">
							<select class="form-select">
								<option selected>지역선택</option>
								<option value="1">부천시</option>
								<option value="2">수원시</option>
								<option value="3">광명시</option>
							</select>
						</div>
						<div class="col-md-3_b">
							<select class="form-select">
								<option selected>취업상태</option>
								<option value="1">취업</option>
								<option value="2">미취업</option>
							</select>
						</div>
						<div class="col-md-3_b_1">
							<div>
								<input type="text" class="form-control datetimepicker-input"
									placeholder="만 나이 숫자만 입력" />
							</div>
						</div>
						<div class="col-md-3_b_2">
							<select class="form-select">
								<option selected>소득범위</option>
								<option value="1">소득없음</option>
								<option value="2">세전 월 200만원 미만</option>
								<option value="3">세전 월 200만원 이상 300만원 미만</option>
							</select>
						</div>
						<div class="col-md-3_b">
							<select class="form-select">
								<option selected>결혼여부</option>
								<option value="1">미혼</option>
								<option value="2">기혼</option>
							</select>
						</div>
						<div class="col-md-3_b">
							<select class="form-select">
								<option selected>관심분야</option>
								<option value="1">주거</option>
								<option value="2">교육</option>
								<option value="3">신혼부부</option>
							</select>
						</div>
					</div>
				</form>
			</div>



			<div>


				<div class="row g-2 justify-content-center">


					<div class="col-md-5 policy_search_box ">

						<input type="text"
							class="form-control datetimepicker-input font_light"
							placeholder="검색어를 입력하세요" />

					</div>



				</div>

				<div class="row g-2 justify-content-center policy_search_box">

					<!-- 조건+제목+내용 / 제목+내용 검색 -->
					<div class="col-md-1 ">
						<button class="btn btn-primary w-100">검색하기</button>
					</div>
					<!-- 저장된 본인의 맞춤정보에 따라 조건 적용 -->
					<div class="col-md-2">
						<button class="btn btn-warning w-100">내 맞춤조건 적용</button>
					</div>
					<div class="col-md-1_a">
						<button type="reset" class="btn btn-secondary ">초기화</button>
					</div>
				</div>

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
					id="customCheck1"> <label class="custom-control-label"
					for="customCheck1">전체</label>
			</div>
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="customCheck2"> <label class="custom-control-label"
					for="customCheck2">모집중</label>
			</div>
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="customCheck3"> <label class="custom-control-label"
					for="customCheck3">신청마감</label>
			</div>
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="customCheck4"> <label class="custom-control-label"
					for="customCheck4">좋아요 많은 순</label>
			</div>

		</div>


		<div class="row g-4" id="policyContainer"></div>

	</div>


 <%-- 페이징 적용 --%>
        <nav aria-label="Page navigation" class="commu_page_nav wow fadeInUp">
            <ul class="pagination justify-content-center policy_page_navbox">


            <li class="paginate_button policy_page-item_prev prev">
               <c:choose>
               <c:when test="${(pageMaker.cri.pageNum - pageMaker.cri.amount) >=1}">
                  <a class="page-link" href="" onclick="gotoPrevprev(${pageMaker.cri.pageNum}, ${pageMaker.cri.amount})"><i class="fa fa-angle-double-left"
                           aria-hidden="true"></i></a>
               </c:when>
               <c:otherwise>
                  <a class="page-link"><i class="fa fa-angle-double-left"
                           aria-hidden="true"></i></a>  
               </c:otherwise>     
               </c:choose>            
            </li> 
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


            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                <li class="paginate_button page-item ${pageMaker.cri.pageNum == num ? 'active' : ''}">
                    <a class="page-link" href="${num}">${num}</a>
                </li>
            </c:forEach>

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
                  <a class="page-link" href="" onclick="gotoNextPage('${pageMaker.endPage}')"><i class="fa fa-angle-right"
                           aria-hidden="true"></i></a>   
               </c:otherwise>     
              </c:choose>            
            </li>              
              
            <li class="paginate_button page-item next">
               <c:choose>
               <c:when test="${pageMaker.realEnd == pageMaker.endPage}">
                  <a class="page-link"><i class="fa fa-angle-double-right"
                           aria-hidden="true"></i></a>  

               </c:when>
               <c:otherwise>
                  <a class="page-link" href="" onclick="gotoNextnext(${pageMaker.cri.pageNum}, ${pageMaker.cri.amount})">
                  			<i class="fa fa-angle-double-right"
                           aria-hidden="true"></i></a>
               </c:otherwise>     
               </c:choose>            
            </li> 
            

            </ul>
        </nav>
        <form id="actionFrom" action="/policy/policy" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		</form>
    </div>




<script>

	function gotoNextPage(endPage) {
	    // 아무 동작 없음
	    console.log("gotoNextPage function called");
	    console.log("endPage : " + endPage);
	    //event.preventDefault();
	    var nextPage = Number(endPage) + 1
	    window.location.href="http://localhost:8090/community/community?pageNum="+ nextPage + "&amount=10";
	}
	
	function gotoPrevprev(pageNum, pageAmount){
		console.log("gotoPrevprev function called");
		var prevprevPage = parseInt((pageNum-pageAmount)/pageAmount)*pageAmount+1
		console.log(prevprevPage);
		window.location.href="http://localhost:8090/community/community?pageNum="+ prevprevPage + "&amount=" + pageAmount;
	}
	
	function gotoNextnext(pageNum, pageAmount){
		var nextnextPage = (parseInt((pageNum-1)/pageAmount)+1)*pageAmount+1;
		console.log("nextnextPage : "+ nextnextPage);
		window.location.href="http://localhost:8090/community/community?pageNum="+ nextnextPage + "&amount=" + pageAmount;
	}


     $(document).ready(function () {
   	loadTableData();
   	
   	
   	
    // 체크박스 중복 방지
    $('.custom-control-input').on('change', function () {
        if ($(this).prop('checked')) {
            $('.custom-control-input').not(this).prop('disabled', true);
        } else {
            $('.custom-control-input').prop('disabled', false);
        }
    });

    // 리스트 위시 버튼
    $(".toggleLink").click(function (e) {
        e.preventDefault();

        var $img = $("#" + $(this).data("target"));

        $img.attr("src", function (_, oldSrc) {
            return oldSrc.includes("addWish.png") ? "${pageContext.request.contextPath}/resources/img/checkWish.png" : "${pageContext.request.contextPath}/resources/img/addWish.png";
        });
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
		
		$("#searchForm button").on("click",function(e){
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			searchForm.submit();
		});
		
		
	     function loadTableData() {
	  	    $.ajax({
	  	        url: "/policy/getList",
	  	        type: "POST",
	  	        dataType: "json",
	  	        data: {
	  	            pageNum: $("#actionFrom").find("input[name='pageNum']").val(),
	  	            amount: $("#actionFrom").find("input[name='amount']").val(),
	  	            type: $("#searchForm select[name='type']").val(),
	  	            keyword: $("#searchForm").find("input[name='keyword']").val()
	  	        },
	  	        success: function (data) {
	  	        	
	 					console.log(data);
	  	            // 정책 정보를 동적으로 추가
	  	            data.forEach(function (policy, index) {
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
	    	
	    	    var datePart = policy.crtDt.split(' ')[0];

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
	    	        '<div class="text-center p-4 mt-2 policy_detail">' +
	    	        '<h5 class="fw-bold mb-4">' + displayPolicyName + '</h5>' +
	    	        '<small class="policy_areaName">' + (policy.rgnSeNm) + '</small>' +
	    	        '<small class="policy_startDate">' + datePart + '</small>' + // 날짜 부분만 표시
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
