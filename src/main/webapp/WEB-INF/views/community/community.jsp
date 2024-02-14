<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/header.jsp"%>

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center ">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Community</h1>
            <p class="mobile_suggestH1" id="login_p">정책정보, 신청방법, 후기 등 꿀팁을 공유하세요!</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
    <h6 class="section-title text-center text-primary text-uppercase">Community</h6>
    <h1 class="mb-5"><i class="fa fa-comments text-primary commu_pic"></i><span class="text-primary text-uppercase">꿀팁</span> 모음</h1>
</div>
<!-- Booking Start -->
<div class="container-fluid mypage_booking pb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container_search">
        <div class="bg-white mypage_shadow mobile_policySearch" style="padding: 49px;">
            <div class="row g-2">
                <h3 class=" text-center text-primary ">상세검색<img id="policy_search"
                        src="${pageContext.request.contextPath}/resources/img/search.png" /></h3>
            </div>
            <form id="searchForm">
                <div class="row policy_row g-2">
                        <div class="col-md-auto mobile_policySearch1">
							<select class="form-select mobile_policyFilter" name="rgnSeNm">
								<%-- foreach문 사용하여 DB내의 지역 카테고리 반영 필요 --%>
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
                        <div class="col-md-auto mobile_policySearch1">
							<select class="form-select mobile_policyFilter" name="policyTypeNm">
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
                        <div class="col-md-auto mobile_policySearch2">
                           <select class="form-select mobile_policyFilter" name="type">
                            <option value="" 
                             	<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>전체</option>
                            <option value="T" 
                             	<c:out value="${pageMaker.cri.type == 'T'?'selected':''}"/>>제목</option>
                            <option value="TC"
                             	<c:out value="${pageMaker.cri.type == 'TC'?'selected':''}"/>>제목+내용</option>  
                            <option value="W" 
                             	<c:out value="${pageMaker.cri.type == 'W'?'selected':''}"/>>작성자</option>
                           </select>
                        </div>
                        <div class="col-md-3 mobile_policySearch3">
                            <input type="text" class="form-control datetimepicker-input font_light mobile_policyFilter"
                                placeholder="검색어를 입력하세요" name="keyword" value="${pageMaker.cri.keyword }"/>
                        </div>
                        <div class="col-md-1_a mobile_policySearch_suggest">
                            <button type="submit" id="searchBtn" class="btn btn-primary w-100 mobile_btn">검색하기</button>
                        </div>
                        <div class="col-md-auto mobile_policySearch_suggest2">
                            <button type="reset" class="btn btn-secondary mobile_btn">초기화</button>
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
				<div id="policy_checkbox">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="form-check-input"
							<c:out value="${pageMaker.cri.selectedFilter == 'like'?'checked':'' }"/>
							id="customCheck"> 
						<label class="custom-control-label" for="customCheck">좋아요 많은 순</label>
					</div>
				</div>
                <!-- table section -->
				<div class="col-md-12">
	                <div class="white_shd_a full">
	                    <div class="table_section padding_infor_info_a">
	                        <div class="table-responsive-sm">
	                            <table id="communityBoardTable" class="table table-default commu_table commu_table_a">
	                            	<thead>
	                                	<tr>
	                                        <th class="mobile_table_th"  data-sort="area" style="width:5%;">지역</th>
	                                        <th class="mobile_table_th" data-sort="category" style="width:8%;">꿀팁분야</th>
	                                        <th data-sort="title">제목</th>
	                                        <th data-sort="author" style="width:10%;">작성자</th>
	                                        <th data-sort="date" style="width:15%;">작성일</th>
	                                        <th data-sort="like"  id="commu_likeBtn" style="width:5%;">좋아요</th>
	                                    </tr>
	                            	</thead>
	                                <tbody>
	                                   <!-- 여기에 동적으로 생성되는 내용이 들어갈 자리입니다 -->
	                                </tbody>
	                            </table>
	                        </div>
	                    </div>
					</div>
					<div id="policy_checkbox">
						<c:choose>
		  					<c:when test = "${user ne null && user.nick ne null && user.userType == 1}">
								<div class="col-md-auto policy_writeBtn">
									<button id="writeBtn" class="btn btn-warning">글쓰기</button>
								</div>
								<div class="col-md-auto policy_writeBtn" style="margin-right: 10px;">
									<button id="gotoMineBtn" class="btn btn-warning mobile_btn">내글보기</button>
								</div>	                       	  
							</c:when>
		 					<c:otherwise>
								<div class="col-md-auto policy_writeBtn">
									<button id="writeBtn" class="btn btn-warning mobile_btn">글쓰기</button>
								</div>	                        
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
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
	 				<c:when test="${pageMaker.realEnd==0}">
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
	<form id="actionForm" action="/community/community" method="post">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" id="writer" name="writer" value="${pageMaker.cri.writer}">
		<input type="hidden" name="rgnSeNm" value="${pageMaker.cri.rgnSeNm }">
		<input type="hidden" name="policyTypeNm" value="${pageMaker.cri.policyTypeNm }">
		<input type="hidden" name="type" value="${pageMaker.cri.type }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		<input type="hidden" name="selectedFilter" value="${pageMaker.cri.selectedFilter }">			
	</form>
	<form id="usernickForm" action="/community/community" method="get">
		<input type="hidden" name="writer" value="${user.nick}">
	</form>
</div>

<script>
	$(document).ready(function () {
		
		setButtonText();
		
		// 댓글 갯수
		let getCommentNm = function(bno) {
			$.ajax({
				type: "GET",
	            url: "/community/commentNm",
	            data: { bno: bno },
	            success: function(data) {
	            	if (data > 0) {
	                	$(".board_commentNm[data-bno='" + bno + "']").text("["+data+"]");
	                } else {
	                    return;
	                }
	            },
	            error: function(error) {
	                console.error("댓글개수 불러오기 실패");
	            }
	        });
	    }
	
		let addedBno;
		
		// 새글알림
		function newAlarm(){
			$.ajax({
				type: "GET",
	          	url: "/community/newAlarm",
	          	success: function (data) {
	          		addedBno = data;
	                loadTableData(addedBno);
	          	},
	          	error: function (xhr, status, error) {
	          		console.error("new알람 실패:", status, error);
	          	}
	      	});
		}
		
		newAlarm();
		
	   	$("#customCheck").change(function () {
	   		// 체크박스 상태에 따라 actionForm의 값을 변경하고 submit 호출3
		    let selectedFilter = "";
		    if ($("#customCheck").is(":checked")) {
		        selectedFilter = "like";
		    }
		    // 선택한 필터 값을 hidden input에 설정
		    $("#actionForm input[name='selectedFilter']").val(selectedFilter);
		    $("#actionForm input[name='pageNum']").val(1);
		    newAlarm();
		    // actionForm submit 호출
		    actionForm.submit();
		    loadTableData();
		});
	    
	    // 내글 보기
	    $("#gotoMineBtn").on("click", function(e){
	    	let checkwriterValue = $("#actionForm").find("input[name='writer']").val();
	       	if(checkwriterValue){
	       		$("#actionForm").find("input[name='writer']").val('');
	    	   	$("#actionForm").find("input[name='pageNum']").val(1);
	    		$(this).text("목록"); 
	       	}else{
	    	   	$("#actionForm").find("input[name='writer']").val('${user.nick}');
	    	   	$("#actionForm").find("input[name='pageNum']").val(1);
	    	   
	       	}
	       	let gotoMineForm = $("#actionForm");
	   	   	e.preventDefault();
	   	   	gotoMineForm.submit();
	    });   
	    
	    function setButtonText() {
	        let checkwriterValue = $("#actionForm").find("input[name='writer']").val();
	        if (checkwriterValue) {
	            $("#gotoMineBtn").text("목록");
	        } else {
	            $("#gotoMineBtn").text("내글보기");
	        }
	    }
		
		let searchForm = $("#searchForm");
			
		$("#searchBtn").on("click",function(e){
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			searchForm.submit();
		});
	
		$("#searchForm button[type='reset']").on("click", function (e) {
			// 검색어 입력 필드 초기화
		    $("#searchForm input[name='keyword']").val('');
		    $("#searchForm select").val('');
			e.preventDefault();
		});
		
		$("#writeBtn").on("click", function(){
			userNick = $("#usernickForm input[name='writer']").val();
			if(userNick != null && userNick!=""){
				self.location = "/community/write";
			}else{
				alert("로그인이 필요한 서비스입니다.");
				self.location = "/user/login";
			}
		});
		
	    function loadTableData(){
	       $.ajax({
	          url: "/community/getList",// 요청할 서버 uri
	          type: "POST", //요청방식 지정
	          dataType : "json", // 서버 응답의 데이터 타입(대표적으로 json(name, value 형태), xml(태그 형태)이 있다)
	          data:{
	        	  pageNum : $("#actionForm").find("input[name='pageNum']").val(),
	              amount : $("#actionForm").find("input[name='amount']").val(),
	              writer: $("#actionForm").find("input[name='writer']").val(),
		          type: $("#searchForm select[name='type']").val(),
	  	          keyword: $("#actionForm").find("input[name='keyword']").val(),
	  	          rgnSeNm: $("#searchForm select[name='rgnSeNm']").val(),
	    		  policyTypeNm: $("#searchForm select[name='policyTypeNm']").val(),
	    		  selectedFilter: $("#actionForm").find("input[name='selectedFilter']").val()              
	          },
				success: function(data){
					let boardTbody = $("#communityBoardTable tbody");
	        		boardTbody.empty(); // 기존 테이블 행 삭제
	        		//Ajax가 반환한 데이터를 "순회"=='반복자'하여 처리
	        		//for(let item of items) -> items == data, item ==board 역할
					if (data.length === 0) {
						// 검색 결과가 없는 경우 메시지 표시
						boardTbody.append("<tr><td colspan='6' class='text-center' style='text-align:center !important'>등록된 게시글 또는 검색 결과가 없습니다.</td></tr>");
					} else {
						$.each(data, function(index, board){
							getCommentNm(board.bno);
			            	console.log(board.bno);
		                  	let regDate=new Date(board.regDate);
		                  	// numeric: 숫자, 2-digit: 두자리 숫자 형식
		                  	let options = {year:"numeric", month:"2-digit", day:"2-digit", hour:"2-digit", minute:"2-digit"};
		                  	let formateDate = regDate.toLocaleString("ko-KR", options);
	                        // 데이터를 순회하여 테이블 목록을 불러와 테이블 바디에 추가
							// 동적으로 데이터 처리
							let row = $("<tr>");
							row.append($("<td>").text(board.region));
							row.append($("<td>").text(board.category));
							let titleLink = $("<a>").addClass("commu_title font_light").attr("href", "/community/get?bno="+board.bno).text(board.title);
							let titleLink_mobile = $("<a>").addClass("commu_title font_light").attr("href", "/suggest/get?bno="+board.bno).text("["+board.region+"/"+board.category+"]"+board.title); 
							 
							 
							
							
							
							let commentNm = $("<span>").addClass("board_commentNm").attr("data-bno", board.bno).text("");
							titleLink.append(commentNm);
							titleLink_mobile.append(commentNm.clone());

							
							
							let newAlarm = $("<span>").addClass("badge_board mobile_sugBadge").text("N").attr("hidden", true);
							addedBno.forEach(function(bno) {
							    if (board.bno == bno) {
							    	let clonedNewAlarm = newAlarm.clone(true);// newAlarm을 복제하여 새로운 요소 생성
							         clonedNewAlarm.removeAttr("hidden"); // 숨겨진 속성 제거하여 보이게 함
							         titleLink.append(clonedNewAlarm); // titleLink에 새로운 newAlarm 추가
							         titleLink_mobile.append(clonedNewAlarm.clone()); 
							    }
							});
							
							
	                
							let titleTd = $("<td>");
							
							if (window.matchMedia("(max-width: 400px)").matches) {
							    // 창의 너비가 400px 이하인 경우
								titleTd.append(titleLink_mobile);
							} else {
							    // 창의 너비가 400px 초과인 경우
								titleTd.append(titleLink);
							}
			                row.append(titleTd);
			                row.append($("<td>").text(board.writer));
			                row.append($("<td>").text(formateDate));
	                
			                // 새로운 <td> 엘리먼트 생성 (이미지와 span 포함)
			                let likeTd = $("<td>");
			                let likeImg = $("<img>").addClass("commu_like").attr("src", "${pageContext.request.contextPath}/resources/img/checkLike.png");
			                let likeSpan = $("<span>").text(board.like+"개"); // **이곳에 좋아요 수 반영 필요
			
			                // 이미지와 span을 <td> 엘리먼트에 추가
			                likeTd.append(likeImg).append(likeSpan);
			
			                // 새로운 <td> 엘리먼트를 행에 추가
			                row.append(likeTd);
	
	                        boardTbody.append(row);
	                        
	                        if (board.userType === 0) {
	                            row.css({
	                            	"background-color": "rgb(240, 246, 255)", // 배경 색상
	                                "font-weight": "600" // 폰트 굵기
	                            });
	                        }
	                        console.log("pagemaker: "+${pageMaker.realEnd});
						});
					}
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
    	} // loadTable 끝
	}); // document.ready끝

</script>

<%@include file="../includes/footer.jsp" %>