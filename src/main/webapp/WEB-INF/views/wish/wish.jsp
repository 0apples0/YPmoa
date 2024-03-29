<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




        <!-- Page  -->
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
						<div class="col-md-auto">
							<select class="form-select"  id="selectRgnSeNm" name="rgnSeNm">
								<option value=""
									<c:out value="${pageMaker.cri.rgnSeNm == null? 'selected' : '' }"/>>지역선택</option>

								<option value="경상북도"
									<c:out value="${pageMaker.cri.rgnSeNm == '경상북도'?'selected':'' }"/>>경상북도</option>

								<option value="경산시"
									<c:out value="${pageMaker.cri.rgnSeNm == '경산시'?'selected':'' }"/>>경산시</option>
								<option value="경주시"
									<c:out value="${pageMaker.cri.rgnSeNm == '경주시'?'selected':'' }"/>>경주시</option>
								<option value="구미시"
									<c:out value="${pageMaker.cri.rgnSeNm == '구미시'?'selected':'' }"/>>구미시</option>
								<option value="김천시"
									<c:out value="${pageMaker.cri.rgnSeNm == '김천시'?'selected':'' }"/>>김천시</option>
								<option value="문경시"
									<c:out value="${pageMaker.cri.rgnSeNm == '문경시'?'selected':'' }"/>>문경시</option>
								<option value="상주시"
									<c:out value="${pageMaker.cri.rgnSeNm == '상주시'?'selected':'' }"/>>상주시</option>
								<option value="안동시"
									<c:out value="${pageMaker.cri.rgnSeNm == '안동시'?'selected':'' }"/>>안동시</option>
								<option value="영주시"
									<c:out value="${pageMaker.cri.rgnSeNm == '영주시'?'selected':'' }"/>>영주시</option>
								<option value="영천시"
									<c:out value="${pageMaker.cri.rgnSeNm == '영천시'?'selected':'' }"/>>영천시</option>
								<option value="포항시"
									<c:out value="${pageMaker.cri.rgnSeNm == '포항시'?'selected':'' }"/>>포항시</option>
								<option value="군위군"
									<c:out value="${pageMaker.cri.rgnSeNm == '군위군'?'selected':'' }"/>>군위군</option>
								<option value="봉화군"
									<c:out value="${pageMaker.cri.rgnSeNm == '봉화군'?'selected':'' }"/>>봉화군</option>
								<option value="성주군"
									<c:out value="${pageMaker.cri.rgnSeNm == '성주군'?'selected':'' }"/>>성주군</option>
								<option value="영덕군"
									<c:out value="${pageMaker.cri.rgnSeNm == '영덕군'?'selected':'' }"/>>영덕군</option>
								<option value="영양군"
									<c:out value="${pageMaker.cri.rgnSeNm == '영양군'?'selected':'' }"/>>영양군</option>
								<option value="예천군"
									<c:out value="${pageMaker.cri.rgnSeNm == '예천군'?'selected':'' }"/>>예천군</option>
								<option value="고령군"
									<c:out value="${pageMaker.cri.rgnSeNm == '고령군'?'selected':'' }"/>>고령군</option>
								<option value="청도군"
									<c:out value="${pageMaker.cri.rgnSeNm == '청도군'?'selected':'' }"/>>청도군</option>
								<option value="청송군"
									<c:out value="${pageMaker.cri.rgnSeNm == '청송군'?'selected':'' }"/>>청송군</option>
								<option value="칠곡군"
									<c:out value="${pageMaker.cri.rgnSeNm == '칠곡군'?'selected':'' }"/>>칠곡군</option>
								<option value="울릉군"
									<c:out value="${pageMaker.cri.rgnSeNm == '울릉군'?'selected':'' }"/>>울릉군</option>
								<option value="울진군"
									<c:out value="${pageMaker.cri.rgnSeNm == '울진군'?'selected':'' }"/>>울진군</option>
								<option value="의성군"
									<c:out value="${pageMaker.cri.rgnSeNm == '의성군'?'selected':'' }"/>>의성군</option>

							</select>
						</div>

						<div class="col-md-auto">
							<select class="form-select" id="selectPolicyTypeNm" name="policyTypeNm">
								<option value=""
									<c:out value="${pageMaker.cri.policyTypeNm == null?'selected':'' }"/>>관심분야</option>
								<option value="일자리 (창업)"
									<c:out value="${pageMaker.cri.policyTypeNm == '일자리 (창업)'?'selected':'' }"/>>일자리
									(창업)</option>
								<option value="일자리 (취업)"
									<c:out value="${pageMaker.cri.policyTypeNm == '일자리 (취업)'?'selected':'' }"/>>일자리
									(취업)</option>
								<option value="참여"
									<c:out value="${pageMaker.cri.policyTypeNm == '참여'?'selected':'' }"/>>참여</option>
								<option value="교육"
									<c:out value="${pageMaker.cri.policyTypeNm == '교육'?'selected':'' }"/>>교육</option>
								<option value="복지"
									<c:out value="${pageMaker.cri.policyTypeNm == '복지'?'selected':'' }"/>>복지</option>
								<option value="주거비 지원"
									<c:out value="${pageMaker.cri.policyTypeNm == '주거비 지원'?'selected':'' }"/>>주거비
									지원</option>
								<option value="문화"
									<c:out value="${pageMaker.cri.policyTypeNm == '문화'?'selected':'' }"/>>문화</option>
								<option value="금융"
									<c:out value="${pageMaker.cri.policyTypeNm == '금융'?'selected':'' }"/>>금융</option>
								<option value="주택공급"
									<c:out value="${pageMaker.cri.policyTypeNm == '주택공급'?'selected':'' }"/>>주택공급</option>
								<option value="건강"
									<c:out value="${pageMaker.cri.policyTypeNm == '건강'?'selected':'' }"/>>건강</option>
							</select>
						</div>
						<div class="col-md-auto">
							<select class="form-select" name="type">
								<option value=""
									<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>전체</option>
								<option value="T"
									<c:out value="${pageMaker.cri.type == 'T'?'selected':''}"/>>제목</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type == 'C'?'selected':''}"/>>내용</option>
							</select>
						</div>
						<div class="col-md-3">

							<input type="text"
								class="form-control datetimepicker-input font_light"
								placeholder="검색어를 입력하세요" name="keyword"
								value="${pageMaker.cri.keyword == null?null:pageMaker.cri.keyword}" />

						</div>
						<div class="col-md-auto ">
							<button type="submit" id="searchBtn"
								class="btn btn-primary w-100">검색하기</button>
						</div>
					</div>
					<div class="row g-2 justify-content-center policy_search_box">


						<!-- 저장된 본인의 맞춤정보에 따라 조건 적용 -->
						<div class="col-md-auto">
							<button class="btn btn-warning w-100" id="applyConditionsBtn">내
								맞춤조건 적용</button>
						</div>
						<div class="col-md-auto">
							<button type="reset" class="btn btn-secondary ">초기화</button>
						</div>
					</div>
					<div class="row g-2 justify-content-center"></div>
				</form>


			</div>
		</div>

	</div>
	<div class="container wow fadeInUp" data-wow-delay="0.1s"
		style="height: 70px;">
		<div id="policy_checkbox" style="float: right; margin-top:30px;">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="form-check-input wish_check"
					name="isAlert"
					<c:out value="${pageMaker.cri.selectedFilter == 'isAlert'?'checked':'' }"/>
					id="customCheck"> <label class="custom-control-label"
					for="customCheck">알림받은 정책보기</label>
			</div>

		</div>

	</div>




</div>


<!-- Booking End -->


<%-- 위시리스트 없을 때 뜨는 문구 --%>

<div class="container-xxl py-5 wish_emptyShow" hidden="hidden">
	<div class="container wow fadeInUp" data-wow-delay="0.1s"
		style="height: 70px;">
		<div class="wish_hideLetter" style="text-align:center">검색 결과가 없거나 위시리스트가 비어있습니다.</div>
		<div style="text-align:center"><a href="/policy/policy" >정책 둘러보러 가기</a></div>
	</div>
</div>

<%-- 위시없문구 끝 --%>


<div class="container-xxl py-5 ">
	


	<div class="container">


		<div class="row g-4" id="wishContainer">

			<!-- 값 들어갈 곳 -->
		</div>
		<!-- wishContainer 끝 -->
	</div>




	<%-- 페이징 적용 --%>
	<nav aria-label="Page navigation" class="commu_page_nav wow fadeInUp">
	    <ul class="pagination justify-content-center policy_page_navbox">
			<%-- <<버튼: 첫페이지로 --%>
			<li class="paginate_button policy_page-item_prev prev">
				<c:choose>
			    <c:when test="${pageMaker.cri.pageNum == 1}">
			    	<a class="page-link" style="pointer-events: none; cursor: default;">
			    		<i class="fa fa-angle-double-left" aria-hidden="true"></i>
			    	</a>
			    </c:when>				
				<c:otherwise>
					<a class="page-link" href="1">
						<i class="fa fa-angle-double-left" aria-hidden="true"></i>
					</a>
			    </c:otherwise>

			    </c:choose>
			</li> 
			<%-- <버튼: 10페이지 이전 --%>
			<li class="paginate_button policy_page-item prev">
				<c:choose>
					<c:when test="${(pageMaker.cri.pageNum - pageMaker.cri.amount) >=1}">
					<a class="page-link" href="${pageMaker.cri.prevprevPage}">
						<i class="fa fa-angle-left" aria-hidden="true"></i>
					</a>
				    </c:when>
					<c:otherwise>
						<a class="page-link" style="pointer-events: none; cursor: default;"><i class="fa fa-angle-left" aria-hidden="true"></i></a>  
					</c:otherwise>     
				</c:choose>         
			</li>            
			<%-- 페이지 넘버 --%>
		    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
		        <li class="paginate_button page-item ${pageMaker.cri.pageNum == num ? 'active' : ''}">
		            <a class="page-link" href="${num}">${num}</a>
		        </li>
			</c:forEach>
			<%-- >버튼: 10페이지 이후 --%>
			<li class="paginate_button policy_page-item next">
				<c:choose>
					<c:when test="${pageMaker.realEnd == pageMaker.endPage}">
						<a class="page-link" style="pointer-events: none; cursor: default;">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</a>  
					</c:when>
					<c:otherwise>
						<a class="page-link" href="${pageMaker.cri.nextnextPage}">
							<i class="fa fa-angle-right"  aria-hidden="true"></i>
						</a>
					</c:otherwise>     
				</c:choose>           
			</li>              
			<%-- >>버튼: 마지막페이지로 --%>  
	 		<li class="paginate_button page-item next">
	 			<c:choose>
	 				<c:when test="${pageMaker.cri.pageNum == pageMaker.realEnd}">
	 					<a class="page-link" style="pointer-events: none; cursor: default;">
							<i class="fa fa-angle-double-right" aria-hidden="true"></i>
						</a>
	 				</c:when>
	 				<c:otherwise>
	 					<a class="page-link" href="${pageMaker.realEnd}">
							<i class="fa fa-angle-double-right" aria-hidden="true"></i>
						</a>
	 				</c:otherwise>
	 			</c:choose>
			</li>
		</ul>
	</nav>
	
	<form id="actionForm" action="/wish/wish" method="post">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="rgnSeNm" value="${pageMaker.cri.rgnSeNm }">
		<input type="hidden" name="policyTypeNm" value="${pageMaker.cri.policyTypeNm }"> 
		<input type="hidden" name="type" value="${pageMaker.cri.type }"> 
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		<input type="hidden" name="isAlert" value="${pageMaker.cri.isAlert }">
		<input type="hidden" name="selectedFilter" value="${pageMaker.cri.selectedFilter }">
	</form>

	<form id="usernickForm" action="community/community" method="post">
		<input type="hidden" name="writer" value="${user.nick}">
		<input type="hidden" name="wishUser" value="${user.email}">
	</form>


</div>







<script>

document.getElementById("applyConditionsBtn").onclick = applyUserConditions;

function applyUserConditions(e) {
	e.preventDefault();
	if("${user.address}" == null){
		
		return;
	}
	
	if(("${user.address}" == null && "${user.address}" == null) || ("${user.address}" == "" && "${user.interestField}" == "")){
		var confirmApplyConditions = confirm("맞춤조건을 적용하시겠습니까?");
        if (!confirmApplyConditions) {
            return; // 사용자가 취소한 경우 동작 중단
        }else{
        	window.location.href = "/user/mypage?Email=${user.email}";
        }
	}
	
	
    // 사용자 정보 가져오기
    var user = {
        address: "${user.address}",
        interestField: "${user.interestField}"
    };
	console.log(user);
    // 주소 선택
    var addressSelect = document.getElementById("selectRgnSeNm");
    if(addressSelect && addressSelect.tagName ==='SELECT'){
	    for (var i = 0; i < addressSelect.options.length; i++) {
	        if (addressSelect.options[i].value === user.address) {
	            addressSelect.options[i].selected = true;
	            break;
	        }
	    }
    }

    // 관심 분야 선택
    var interestFieldSelect = document.getElementById("selectPolicyTypeNm");
    if(interestFieldSelect && interestFieldSelect.tagName ==='SELECT'){
	    for (var j = 0; j < interestFieldSelect.options.length; j++) {
	        if (interestFieldSelect.options[j].value === user.interestField) {
	            interestFieldSelect.options[j].selected = true;
	            break;
	        }
	    }
    }
}

        $(document).ready(function () {
        	
        	loadTableData();
        	buttonClear();
        	
    	   	$("#searchForm button[type='reset']").on("click", function (e) {
    	        // 검색어 입력 필드 초기화
    	        $("#searchForm input[name='keyword']").val('');
    	        $("#searchForm select").val('');
    	        e.preventDefault();
    	    });
        	
        	function formatDate(date) {
        		
        	    if (!date) {
        	        return "마감일 상세 확인";
        	    }
        		  const options = { year: 'numeric', month: '2-digit', day: '2-digit' }; 
        		  const formattedDate = new Date(date).toLocaleDateString('en-US', options); 

        		  // '/'를 '-'로 바꿔서 반환
        		  const formattedString =  formattedDate.replace(/(\d{1,2})\/(\d{1,2})\/(\d{4})/, '$3-$1-$2');
        		  return formattedString ? formattedString : "";
        		}
   
        	
        	$("#customCheck").change(function () {
        	    // 체크박스 상태에 따라 actionForm의 값을 변경하고 submit 호출
        	    let selectedFilter = ($("#customCheck").is(":checked")) ? "isAlert" : "";
        	    // 선택한 필터 값을 hidden input에 설정
        	    $("#actionForm input[name='selectedFilter']").val(selectedFilter);
        	    $("#actionForm input[name='pageNum']").val(1);
        	    // actionForm submit 호출
        	    actionForm.submit();
        	});





			let actionForm = $("#actionForm");
			$(".paginate_button a").on("click", function(e) {
				// 기존에 가진 이벤트를 중단(기본적으로 수행하는 행동을 막는 역할)
				e.preventDefault(); // 이벤트 초기화
				//pageNum값을 사용자가 누른 a태그의 href속성값으로 변경
				// 3페이지 선택시 pageNum = 3;
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
			});
		
		  let searchForm = $("#searchForm");
			
			$("#searchForm #searchBtn").on("click",function(e){
				searchForm.find("input[name='pageNum']").val("1");
				e.preventDefault();
				searchForm.submit();
			});
			
			
            
            function loadTableData() {
            	
		  	    $.ajax({
		  	        url: "/wish/get",
		  	        type: "POST",
		  	        dataType: "json",
			  	      data: {
			  	        pageNum: $("#actionForm").find("input[name='pageNum']").val(),
			  	        amount: $("#actionForm").find("input[name='amount']").val(),
			  	        type: $("#searchForm select[name='type']").val(),
			  	        keyword: $("#actionForm").find("input[name='keyword']").val(),
			  	        rgnSeNm: $("#searchForm select[name='rgnSeNm']").val(),
			  	        policyTypeNm: $("#searchForm select[name='policyTypeNm']").val(),
			  	        selectedFilter: $("#actionForm").find("input[name='selectedFilter']").val(),
			  	        isAlert: $("#actionForm").find("input[name='selectedFilter']").val(),
			  	        wishUser: $("#usernickForm").find("input[name='wishUser']").val(),
			  	    },

			  	  success: function(data) {
			  	    if (data.length > 0) {
			  	        console.log(data);
			  	        
			  	        // 비동기 작업을 순차적으로 실행하기 위한 함수
			  	        function processPolicy(index) {
			  	            // 모든 작업이 완료되면 종료
			  	            if (index >= data.length) {
			  	                console.log("모든 작업 완료");
			  	                return;
			  	            }

			  	            // 현재 작업할 데이터
			  	            var policy = data[index];

			  	            // 이미지 URL 가져오는 비동기 작업을 수행
			  	            getImageUrlFromServer(policy.no, function(imageUrl) {
			  	                // 정책 정보에 이미지 URL 추가
			  	                // 여기용 policy.aplyEndDt = formatDate(policy.aplyEndDt);
			  	                chkEndDt = formatDate(policy.aplyEndDt);
			  	                // 요소를 순서대로 추가
			  	                addPolicyToContainer(policy, index + 1, imageUrl);
			  	                
			  	                // 다음 작업을 처리하기 위해 재귀 호출
			  	                processPolicy(index + 1);
			  	            });
			  	        }

			  	        // 첫 번째 작업 시작
			  	        processPolicy(0);
			  	    } else {
			  	        $(".wish_hide").hide();
			  	        $(".wish_emptyShow").removeAttr("hidden");
			  	    }
			  	},




		  	        error: function (e) {
		  	            console.log(e);
		  	        }
		  	    });
		  	    
		  	  	
		  	    
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
		 	
	           
	          
	            function hideButtonIfDateNull(policy) {
	                // 현재 날짜를 가져옵니다.
	                var currentDate = new Date();
	                currentDate.setHours(0, 0, 0, 0);
	                // 날짜가 null이면서 현재 날짜보다 작거나 같으면 또는 상시모집인 경우 알림받기 버튼을 숨깁니다.
	                if (!policy.aplyEndDt || chkEndDt === "마감일 상세 확인" || policy.aplyEndDt < currentDate) {
	                    $('[data-wish-policy="' + policy.no + '"] .wish_alarm').hide();
	                }
	            }

		  	
            
            function addPolicyToContainer(policy, index, imageUrl) {
            	
	    	    
	    	    var displayPolicyName = policy.policyNm ? policy.policyNm.replace(/\([^)]*\)/g, '') : '';   // 제목에 괄호 빼고 표시
	    	    var contextPath = "${pageContext.request.contextPath}"; // JSP 페이지에서 변수로 받아올 경우
	    	    var currentDate = new Date(); // 현재 날짜

	    	    // policy.aplyEndDt를 Date 객체ㄹ로 변환
	    	    var endDt = new Date(policy.aplyEndDt);
	    	    console.log(currentDate);
				console.log(endDt);
	    	    var policyHtml = '<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="' + (0.1 * index) + 's" data-wish-policy="' + policy.no + '">' +
	    	        '<div class="rounded shadow overflow-hidden" >' +
	    	        '<div class="position-relative policy_listImage"  >' +
	    	        '<img class="img-fluid policy_image" src="' + contextPath + '/resources/save_img/'+ imageUrl +'" style="width:100%" alt="">'+
	    	        '<div class="position-absolute start-policy top-policy translate-middle d-flex align-items-center_policy">' ;


	    			if((policy.aplyEndDt) === null || (policy.aplyEndDt) === "") {
	    	            policyHtml += '<span class="policy_badge" style="background-color: red; ">별도확인</span>' ;
	    	        } 
	    	         else if ((policy.aplyEndDt) < currentDate) {
	    	            policyHtml +=  '<span class="policy_badge" style="background-color: green; ">모집마감</span>';
	    	        } 
	    	        else if (policy.aplyEndDt >= currentDate && policy.aplyBgngDt <= currentDate && (policy.aplyEndDt) != null && (policy.aplyEndDt != "")) {
	    	            policyHtml +=  '<span class="policy_badge" style="background-color: hotpink; ">모집중</span>';
	    	        }else if (policy.aplyBgngDt > currentDate){
	    	        	policyHtml +=  '<span class="policy_badge" style="background-color: #d21eff; ">모집예정</span>';
	    	        }


	    	        policyHtml+= '</div>' + '</div>'+
	    	        '<div class="p-4 mt-2">' +
	    	        '<h5 class="fw-bold mb-4"><a href="/policy/get?no=' + policy.no + '" style="color:black;">' + displayPolicyName + '</a></h5>' +
	    	        		
	    	        '<div class="d-flex">'+
	    	        '<small class="policy_areaName" style="max-width:100px" >' + (policy.rgnSeNm) + '</small>' 
	    	        
	    	        if (chkEndDt !== "마감일 상세 확인") {
	    	            policyHtml += '<small class="policy_startDate" style="margin-left:auto; text-align:right;">신청마감일<br>' + formatDate(policy.aplyEndDt) + '</small>';
	    	        }else{
	    	        	 policyHtml += '<small class="policy_startDate" style="margin-left:auto; text-align:right;">' + chkEndDt + '</small>';
	    	        }
	    	       
	    	        policyHtml +=	
	    	        '</div>'+
	    	        '</div>' +
	    	        '<div class="commuGet_btn" >' +
	    	        '<button class="btn btn-outline-primary wish_alarm" data-wish-policy="' + policy.no + '">알림받기</button>' +
	    	        '<button class="btn btn-outline-danger" id="delBtn" style="margin: 10px;">삭제</button>' +
	    	        '</div>' +
	    	        '</div>';
	    	       

	    	    $("#wishContainer").append(policyHtml);
	    	    hideButtonIfDateNull(policy);
	    	    buttonClear(policy.no);
	    	}
            
            // 이미지 썸네일
            function getImageUrlFromServer(no, callback) {
	    $.ajax({
	        url: "/policy/getImageUrl",
	        type: "GET",
	        data: {bno: no},
	        dataType: 'text', 
	        success: function(response) {
	            console.log(response);
	            var imageUrl;

	            // 정규식을 사용하여 img 태그 추출
	            var imgTagMatch = response.match(/<img src="http:\/\/localhost:8090\/resources\/save_img\/([^"]+)"/);
	            if (imgTagMatch && imgTagMatch.length > 1) {
	                imageUrl = imgTagMatch[1];
	            } else {
	                imageUrl = '카드1.png';
	                console.log("img 태그가 없음");
	            }

	            console.log("이미지 URL 성공적으로 가져옴:", imageUrl);

	            // 콜백 함수 호출하여 이미지 URL 전달
	            callback(imageUrl);
	        },
	        error: function(xhr, status, error) {
	            // 에러 처리
	            console.error("에러 발생:", error);
	            callback('카드1.png');
	        }
	    });
	} 
            
            
     	
         	// 알람 눌렀을 때
			$("body").on("click", ".wish_alarm", function() {
			    var wishPolicy = $(this).data("wish-policy");
			    var $button = $(this); // 버튼 jQuery 객체 저장
				console.log("알람시작");
			    // Ajax 요청
			    $.ajax({
			        type: "POST",
			        url: "/wish/alarm",
			        contentType: "application/json",
			        data: JSON.stringify({ wishPolicy: wishPolicy }), 
			
			        success: function(result) {
			            // Ajax 요청 성공 시 실행할 로직
			            console.log("알람 설정 결과:", result);
			
			            if (result === 1) {
			                alert("알림이 설정되었습니다.");
			
			                // 알림 설정이 성공하면 버튼 클래스와 텍스트를 업데이트
			                if ($button.hasClass("btn-outline-primary")) {
			                    $button.removeClass("btn-outline-primary").addClass("btn-primary").text("알림해제");
			                }
			            } else {
			                alert("알림이 해제되었습니다.");
			
			                // 알림 해제가 성공하면 버튼 클래스와 텍스트를 업데이트
			                if ($button.hasClass("btn-primary")) {
			                    $button.removeClass("btn-primary").addClass("btn-outline-primary").text("알림받기");
			                }
			            }
			        },
			        error: function(xhr, status, error) {
			            // Ajax 요청 실패 시 실행할 로직
			            console.error("Ajax 요청 실패:", status, error);
			        }
			    });
			});
         	
         	// 버튼 상태 DB저장
			function buttonClear(no) {
			    $.ajax({
			        type: "GET",
			        url: "/wish/alarmClear", // 해당 URL을 서버에 맞게 수정
			        data: {wishUser: $("#usernickForm").find("input[name='wishUser']").val(),
			        	wishPolicy : no},
			        	
			        	 success: function(data) {
			                 console.log(data);
			                 var wishPolicy;
			                 var isAlert;
			                 for (var key in data) {
			                     wishPolicy = parseInt(key);
			                     isAlert = parseInt(data[key]);
			                 }
			                 // 버튼의 data-wish-policy와 wishPolicy 값을 비교하여 동일한 경우 버튼 상태 변경
			                 $(".wish_alarm[data-wish-policy='" + wishPolicy + "']").each(function() {
			                     if ($(this).data('wish-policy') === wishPolicy) {
			                         if (isAlert == 1) {
			                             $(this).removeClass("btn-outline-primary").addClass("btn-primary").text("알림해제");
			                         } else {
			                             $(this).removeClass("btn-primary").addClass("btn-outline-primary").text("알림받기");
			                         }
			                     }
			                 });
			             },
			        error: function(xhr, status, error) {
			            // 초기화 실패에 대한 처리
			            console.error("초기화 실패:", status, error);
			        }
			    });
			}


		  	
         	// 위시 삭제
            $(document).on("click", "#delBtn", function(e) {
                e.preventDefault();
                userNick = $("#usernickForm input[name='writer']").val();
                if (userNick == null || userNick == "") {
                    alert("로그인이 필요한 서비스입니다.");
                    return;
                }

                var wishPolicy = $(this).closest('.col-lg-3').data('wish-policy');


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


        	

            // 페이지 번호 클릭 시 이벤트 핸들러
            $(document).on("click", ".paginate_button a", function (e) {
                e.preventDefault();
                let newPageNum = $(this).attr("href");
                if (newPageNum) {
                    $("#actionForm input[name='pageNum']").val(newPageNum);
                     // 페이지 번호 클릭 시 데이터 새로고침
                    buttonClear();
                }
            });

            
            
        
		  	
       
    
            
        }); // document.ready함수 끝


    </script>


<%@include file="../includes/footer.jsp"%>
