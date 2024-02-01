
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
	<h1 class="mb-5"><i class="fa fa-file-contract text-primary"></i>
		<span class="text-primary text-uppercase">정책</span> 둘러보기
	</h1>
</div>
<!-- Booking Start -->
<div class="container-fluid mypage_booking pb-5 wow fadeIn"
	data-wow-delay="0.1s">
	<div class="container_search">
		<div class="bg-white mypage_shadow" style="padding: 35px; padding-top:25px">
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
							<select class="form-select" id="selectRgnSeNm" name="rgnSeNm">
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
								<option value="경주시"
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
									<c:out value="${pageMaker.cri.policyTypeNm == '일자리 (창업)'?'selected':'' }"/>>일자리 (창업)</option>
								<option value="일자리 (취업)"
									<c:out value="${pageMaker.cri.policyTypeNm == '일자리 (취업)'?'selected':'' }"/>>일자리 (취업)</option>
								<option value="참여"
									<c:out value="${pageMaker.cri.policyTypeNm == '참여'?'selected':'' }"/>>참여</option>
								<option value="교육"
									<c:out value="${pageMaker.cri.policyTypeNm == '교육'?'selected':'' }"/>>교육</option>
								<option value="복지"
									<c:out value="${pageMaker.cri.policyTypeNm == '복지'?'selected':'' }"/>>복지</option>
								<option value="주거비 지원"
									<c:out value="${pageMaker.cri.policyTypeNm == '주거비 지원'?'selected':'' }"/>>주거비 지원</option>
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
								placeholder="검색어를 입력하세요" name="keyword" value="${pageMaker.cri.keyword == null?null:pageMaker.cri.keyword}"/>

						</div>
                        <div class="col-md-auto">
							<button type="submit" id="searchBtn"  class="btn btn-primary w-100">검색하기</button>
						</div>
					</div>
					
					<div class="row g-2 justify-content-center policy_search_box">
						
						
						<div class="col-md-auto">
							<button id="applyConditionsBtn" class="btn btn-warning w-100">내 맞춤조건 적용</button>
						</div>
						<div class="col-md-auto">
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
 <div class="commuGet_btn policy_adminWrite">
 				<c:if test="${user.userType eq 0}">
	                <a href="/policy/write"><button class="btn btn-primary">글쓰기</button></a>
	            </c:if>
 	
            </div>


		<div id="policy_checkbox">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="form-check-input"
					<c:out value="${pageMaker.cri.selectedFilter == null?'checked':'' }"/>
					id="customCheck1"> <label class="custom-control-label"
					for="customCheck1">전체</label>
			</div>
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="form-check-input"
					<c:out value="${pageMaker.cri.selectedFilter == 'applyDate'?'checked':'' }"/>
					id="customCheck2"> <label class="custom-control-label"
					for="customCheck2">모집중</label>
			</div>
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="form-check-input"
					<c:out value="${pageMaker.cri.selectedFilter == 'overDate'?'checked':'' }"/>
					id="customCheck3"> <label class="custom-control-label"
					for="customCheck3">신청마감</label>
			</div>
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="form-check-input"
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
					<a class="page-link" href="${pageMaker.cri.prevprevPage}">
						<i class="fa fa-angle-double-left" aria-hidden="true"></i>
					</a>
				    </c:when>
					<c:otherwise>
						<a class="page-link" style="pointer-events: none; cursor: default;"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a>  
					</c:otherwise>     
				</c:choose>            
			</li> 
			<%-- <버튼: 1페이지 이전 --%>
			<li class="paginate_button policy_page-item prev">
				<c:choose>
					<c:when test="${(pageMaker.cri.pageNum) >1}">
						<a class="page-link" href="${pageMaker.cri.pageNum -1 }">
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
			<%-- >버튼: 1페이지 이동 --%>
			<li class="paginate_button policy_page-item next">
				<c:choose>
					<c:when test="${(pageMaker.cri.pageNum < pageMaker.endPage)}">
						<a class="page-link" href="${pageMaker.cri.pageNum +1 }">
		            		<i class="fa fa-angle-right" aria-hidden="true"></i>
						</a>
					</c:when> 
					<c:when test="${(pageMaker.cri.pageNum+1 > pageMaker.realEnd)}">
						<a class="page-link" style="pointer-events: none; cursor: default;">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</a>
					</c:when>               
					<c:otherwise>
						<a class="page-link" href="${pageMaker.endPage+1}">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</a>   
					</c:otherwise>     
				</c:choose>            
			</li>              
			<%-- >>버튼: 10페이지 이동 --%>  
	 		<li class="paginate_button page-item next">
				<c:choose>
					<c:when test="${pageMaker.realEnd == pageMaker.endPage}">
						<a class="page-link" style="pointer-events: none; cursor: default;"> 
						<i class="fa fa-angle-double-right" aria-hidden="true"></i>
						</a>  
					</c:when>
					<c:otherwise>
						<a class="page-link" href="${pageMaker.cri.nextnextPage}">
							<i class="fa fa-angle-double-right"  aria-hidden="true"></i>
						</a>
					</c:otherwise>     
				</c:choose>            
			</li>
		</ul>
	</nav>
        <form id="actionFrom" action="/policy/policy" method="post">			
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="rgnSeNm" value="${pageMaker.cri.rgnSeNm }">
			<input type="hidden" name="policyTypeNm" value="${pageMaker.cri.policyTypeNm }">
			<input type="hidden" name="type" value="${pageMaker.cri.type }">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
			<input type="hidden" name="selectedFilter" value="${pageMaker.cri.selectedFilter }">			
		</form>
		
		<form id="usernickForm" action="/community/community" method="get">
           <input type="hidden" name="writer" value="${user.nick}">
           <input type="hidden" name="userType" value="${user.userType}">
        </form>
    </div>




<script>

document.getElementById("applyConditionsBtn").onclick = applyUserConditions;
function applyUserConditions(e) {
	var email = "${user.email}";
	console.log(email);
	if(email == null || email == ""){
		alert("로그인 후 이용 가능한 서비스입니다.");
		return;
	}
	e.preventDefault();
	if("${user.address}" == null || "${user.address}" == "" || "${user.interestField}" == ""){
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
    // 주소 선택
    var rgnSeNmSelect = document.getElementById("selectRgnSeNm");

	if (rgnSeNmSelect && rgnSeNmSelect.tagName === 'SELECT') {
	    var rgnSeNmOptions = rgnSeNmSelect.options;
	
	    for (var i = 0; i < rgnSeNmOptions.length; i++) {
	        if (rgnSeNmOptions[i].value === user.address) {
	            rgnSeNmOptions[i].selected = true;
	            break;
	        }
	    }
	} 

    // 관심 분야 선택
    var policyTypeNmSelect = document.getElementById("selectPolicyTypeNm");

	if (policyTypeNmSelect && policyTypeNmSelect.tagName === 'SELECT') {
	    var policyTypeNmOptions = policyTypeNmSelect.options;
	
	    for (var j = 0; j < policyTypeNmOptions.length; j++) {
	        if (policyTypeNmOptions[j].value === user.interestField) {
	            policyTypeNmOptions[j].selected = true;
	            break;
	        }
	    }
	}
}


function formatDate(date) {
	  const options = { year: 'numeric', month: '2-digit', day: '2-digit' }; 
	  const formattedDate = new Date(date).toLocaleDateString('en-US', options); 

	  // '/'를 '-'로 바꿔서 반환
	  return formattedDate.replace(/(\d{1,2})\/(\d{1,2})\/(\d{4})/, '$3-$1-$2');

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
	   	$('.form-check-input').on('change', function () {
	   	    if ($(this).prop('checked')) {
	   	        // 현재 선택된 체크박스의 ID
	   	        var selectedId = $(this).attr('id');

	   	        // 모든 체크박스 반복
	   	        $('.form-check-input').each(function () {
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
		    userNick = $("#usernickForm input[name='writer']").val();
		    if(userNick == null || userNick==""){
		    	alert("로그인 후 이용 가능한 서비스입니다.");
		    	return;
		    }
		
		    var $link = $(this).closest("a");
		    var hrefValue = $link.attr("href");		
		    
		    var $img = $("#" + $(this).data("target"));
		
		    // 현재 소스를 가져옴
		    var currentSrc = $img.attr("src");
			
		   
		    $.ajax({
		    	url: "/policy/toggleWish",
		    	type: "POST",
		    	data: {no : hrefValue},
	    		success: function () {
	    			 // 토글해서 새로운 소스를 설정
	    		    var newSrc = currentSrc.includes("addWish.png") ? "${pageContext.request.contextPath}/resources/img/checkWish.png" : "${pageContext.request.contextPath}/resources/img/addWish.png";
	    			
	    		    // 이미지 소스를 변경
	    		    $img.attr("src", newSrc);
	    			alert(currentSrc.includes("addWish.png") ? "위시리스트에 등록되었습니다" : "위시리스트에서 해제되었습니다");
	    		},
	    		error: function (e) {
	    			alert("실패");
	  	            console.log(e);
	  	        }
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
			            var promises = data.map(function(policy) {
			                return new Promise(function(resolve, reject) {
			                    // 이미지 URL 가져오기
			                    getImageUrlFromServer(policy.no, function(imageUrl) {
			                        // 정책 정보에 이미지 URL 추가
			                        policy.imageUrl = imageUrl;
			                        resolve(policy);
			                    });
			                });
			            });
			            Promise.all(promises)
			                .then(function(policies) {
			                    // 모든 정책 정보가 준비된 후 화면에 추가
			                    policies.forEach(function(policy, index) {
			                        policy.crtDt = formatDate(policy.crtDt);
			                        addPolicyToContainer(policy, index + 1, policy.imageUrl);
			                    });
			                })
			                .catch(function(error) {
			                    console.error("정책 정보를 가져오는 중 오류 발생:", error);
			                });
			        } 
			    }); // $.ajax 함수의 중괄호 닫기
			    let actionForm = $("#actionForm");
			    $(".paginate_button a").on("click", function(e){
			        // 기존에 가진 이벤트를 중단(기본적으로 수행하는 행동을 막는 역할)
			        e.preventDefault(); // 이벤트 초기화
			        // pageNum 값을 사용자가 누른 a태그의 href 속성값으로 변경
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

		 	  
	
		    
		     function addPolicyToContainer(policy, index, imageUrl) {
		    	 	var addWishImagePath = "addWish.png";
		    	    var checkWishImagePath = "checkWish.png";
		    	    
		    	    var buttonHtml = '';
		    	    console.log($("#usernickForm input[name='userType']").val());
		    	    console.log($("#usernickForm input[name='writer']").val());
		    	    // userType이 0일 때만 삭제와 수정 버튼을 추가
		    	    if ($("#usernickForm input[name='writer']").val() != "" && $("#usernickForm input[name='userType']").val() == 0) {
		    	    	buttonHtml += '<div class="commuGet_btn policy_btn" >' 
		    	        buttonHtml += '<a href="modify?no=' + policy.no + '"><button class="btn btn-outline-primary policy_adminModi">수정</button></a>';
		    	        buttonHtml += '<button class="btn btn-outline-secondary" onclick="confirmDelete(' + policy.no + ')">삭제</button>';
		    	        buttonHtml += '</div>'
		    	        //buttonHtml += '<a href="delPolicy?no=' + policy.no + '"><button class="btn btn-primary" style="margin: 10px;">삭제</button>';
		    	        var policyDetailMargin = 'mb-0';
		    	    }else {
		    	        var policyDetailMargin = 'mb-3_a';
		    	    }

		    	    // ...

		    	    // 이미지 경로 사용
		    	    var imagePath = policy.wishVO == null ? addWishImagePath : checkWishImagePath;
		    	    
		    	    var displayPolicyName = policy.policyNm ? policy.policyNm.replace(/\([^)]*\)/g, '') : '';   // 제목에 괄호 빼고 표시
		    	    var contextPath = "${pageContext.request.contextPath}"; // JSP 페이지에서 변수로 받아올 경우
		    	    var currentDate = new Date();
		    	    
		    	    var policyHtml = '<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="' + (0.1 * index) + 's">' +
		    	        '<div class="rounded shadow overflow-hidden">' +
		    	        '<div class="position-relative overflow-hidden" style="height: 276px;" >' +
		    	        '<img class="img-fluid" src="' + contextPath + '/resources/save_img/'+ imageUrl +'" style="height: 100%; object-fit: cover;" alt="">' +
		    	        '<div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">' +
		    	        '<a class="btn btn-square mx-1 toggleLink" href='+policy.no+'  data-target="policy_heart_' + index + '">' +
		    	        '<img class="policy_heart" id="policy_heart_' + index + '" src="' + contextPath + '/resources/img/'+ imagePath +'" />' +
		    	        '</a>' +
		    	        '<div class="position-absolute translate-middle d-flex align-items-center" style="top:-150%;">' ;
		    	      
		    	         if((policy.aplyEndDt) === null || (policy.aplyEndDt) === "") {
		    	            policyHtml += '<span class="policy_badge" style="background-color: red; ">마감일상세확인</span>' ;
		    	        } 
		    	         else if ((policy.aplyEndDt) <= currentDate) {
		    	            policyHtml +=  '<span class="policy_badge" style="background-color: green; left:25%;">모집마감</span>';
		    	        } 
		    	        else if ((policy.aplyEndDt) > currentDate && (policy.aplyEndDt) != null && (policy.aplyEndDt != "")) {
		    	            policyHtml +=  '<span class="policy_badge" style="background-color: hotpink; left: 40%;">모집중</span>';
		    	              
		    	        }
		    	        policyHtml += '</div>' +
		    	        '</div>' +
		    	        '</div>' +
		    	        '<div class="p-4 ' + policyDetailMargin + ' policy_detail">' +
		    	        '<h5 class="fw-bold mb-4"><a href="get?no=' + policy.no + '" style="color:black;">' + displayPolicyName + '</a></h5>' +
		    	        		
		    	        '<div class="d-flex">'+
		    	        '<small class="policy_areaName" style="max-width:100px" >' + (policy.rgnSeNm) + '</small>' +
		    	        '<small class="policy_startDate" style="margin-left:auto">' + (policy.crtDt) + '</small>' + // 날짜 부분만 표시
		    	        '</div>'+
		    	        '</div>' +
		    	        
		    	        buttonHtml + 
		    	        
		    	        '</div>';
	
		    	
	
		    	    // 정책 컨테이너에 추가
		    	    $("#policyContainer").append(policyHtml);
		    	    
		    	    
		    	}
		     
		     function getImageUrlFromServer(no, callback) {
		    	    $.ajax({
		    	        url: "/policy/getImageUrl",
		    	        type: "GET",
		    	        data: {bno: no},
		    	        dataType: 'text', 
		    	        success: function(response) {
		    	        	 console.log(response);
		    	             // 응답이 없는 경우 기본값으로 '카드1.jpg'를 사용
		    	             var imageUrl = response !== '' ? response : '카드1.png';
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


	
	     
}); // document.ready함수 끝
function confirmDelete(policyNo) {
    // 사용자에게 정말로 삭제할 것인지 확인하는 알림창 표시
    var confirmResult = confirm("정말로 삭제하시겠습니까?");

    // 확인을 누르면 삭제 실행
    if (confirmResult) {
        // 여기에서 삭제를 수행하는 코드를 추가
        // 예를 들어, Ajax를 사용하여 서버에 삭제 요청을 보낼 수 있습니다.
        $.ajax({
            type: "POST",
            url: "/policy/delPolicy",
            data: { no: policyNo },
            success: function () {
                // 삭제 성공 시, 여러 가지 작업 수행
                alert("삭제되었습니다.");
                window.location.href = '/policy/policy';
            },
            error: function () {
                alert("삭제 중 오류가 발생했습니다.");
            }
        });
    }
}





    </script>
<%@include file="../includes/footer.jsp"%>
