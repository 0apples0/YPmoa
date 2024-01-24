
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
							<select class="form-select" name="rgnSeNm">
								<option value=""
									<c:out value="${pageMaker.cri.rgnSeNm == null? 'selected' : '' }"/>>지역선택</option>
							
								<option value="구미시"
									<c:out value="${pageMaker.cri.rgnSeNm == '구미시'?'selected':'' }"/>>구미시</option>
								
								<option value="안동시"
									<c:out value="${pageMaker.cri.rgnSeNm == '안동시'?'selected':'' }"/>>안동시</option>
								<option value="울진군"
									<c:out value="${pageMaker.cri.rgnSeNm == '울진군'?'selected':'' }"/>>울진군</option>
								<option value="부천시"
									<c:out value="${pageMaker.cri.rgnSeNm == '부천시'?'selected':'' }"/>>부천시</option>
									
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
                        
					</div>
					<div class="row g-2 justify-content-center policy_search_box">
						
						<!-- 조건+제목+내용 / 제목+내용 검색 -->
						<div class="col-md-1 ">
							<button type="submit" id="searchBtn"  class="btn btn-primary w-100">검색하기</button>
						</div>
						<!-- 저장된 본인의 맞춤정보에 따라 조건 적용 -->
						<div class="col-md-2">
							<button id="applyConditionsBtn" class="btn btn-warning w-100">내 맞춤조건 적용</button>
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
 				<c:if test="${user.userType eq 0}">
	                <a href="/policy/write"><button class="btn btn-primary">글쓰기</button></a>
	            </c:if>
 	
            </div>

		<!-- 체크박스를 누르면 바로 검색결과가 두두두 떴으면 좋겠습니다.. -->

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
		
		<form id="usernickForm" action="/community/community" method="get">
           <input type="hidden" name="writer" value="${user.nick}">
           <input type="hidden" name="userType" value="${user.userType}">
        </form>
    </div>




<script>

document.getElementById("applyConditionsBtn").onclick = applyUserConditions;
function applyUserConditions(e) {
	e.preventDefault();
	if("${user.address}" == null){
		
		return;
	}
    // 사용자 정보 가져오기
    var user = {
        address: "${user.address}",
        interestField: "${user.interestField}"
    };

    // 주소 선택
    var addressSelect = document.getElementsByName("rgnSeNm")[0];
    for (var i = 0; i < addressSelect.options.length; i++) {
        if (addressSelect.options[i].value === user.address) {
            addressSelect.options[i].selected = true;
            break;
        }
    }

    // 관심 분야 선택
    var interestFieldSelect = document.getElementsByName("policyTypeNm")[0];
    for (var j = 0; j < interestFieldSelect.options.length; j++) {
        if (interestFieldSelect.options[j].value === user.interestField) {
            interestFieldSelect.options[j].selected = true;
            break;
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
		    	alert("로그인 필요");
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
		    	 	var addWishImagePath = "addWish.png";
		    	    var checkWishImagePath = "checkWish.png";
		    	    
		    	    var buttonHtml = '';
		    	    console.log($("#usernickForm input[name='userType']").val());
		    	    console.log($("#usernickForm input[name='writer']").val());
		    	    // userType이 0일 때만 삭제와 수정 버튼을 추가
		    	    if ($("#usernickForm input[name='writer']").val() != "" && $("#usernickForm input[name='userType']").val() == 0) {
		    	    	buttonHtml += '<div class="commuGet_btn" >'; 
		    	        buttonHtml += '<a href="modify?no=' + policy.no + '"><button class="btn btn-primary">수정</button></a>';
		    	        buttonHtml += '<button class="btn btn-primary" onclick="confirmDelete(' + policy.no + ')">삭제</button>';
		    	        buttonHtml += '</div>';
		    	        //buttonHtml += '<a href="delPolicy?no=' + policy.no + '"><button class="btn btn-primary" style="margin: 10px;">삭제</button>';
		    	    }

		    	    // ...

		    	    // 이미지 경로 사용
		    	    var imagePath = policy.wishVO == null ? addWishImagePath : checkWishImagePath;
		    	    
		    	    var displayPolicyName = policy.policyNm ? policy.policyNm.replace(/\([^)]*\)/g, '') : '';   // 제목에 괄호 빼고 표시
		    	    var contextPath = "${pageContext.request.contextPath}"; // JSP 페이지에서 변수로 받아올 경우
		    	
	
		    	    var policyHtml = '<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="' + (0.1 * index) + 's">' +
		    	        '<div class="rounded shadow overflow-hidden">' +
		    	        '<div class="position-relative">' +
		    	        '<img class="img-fluid" src="' + contextPath + '/resources/img/카드' + (index ? index : '2') + '.png" alt="">' +
		    	        '<div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">' +
		    	        '<a class="btn btn-square mx-1 toggleLink" href='+policy.no+'  data-target="policy_heart_' + index + '">' +
		    	        '<img class="policy_heart" id="policy_heart_' + index + '" src="' + contextPath + '/resources/img/'+ imagePath +'" />' +
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
		    	        
		    	        buttonHtml + 
		    	        
		    	        '</div>';
	
	
		    	
	
		    	    // 정책 컨테이너에 추가
		    	    $("#policyContainer").append(policyHtml);
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
