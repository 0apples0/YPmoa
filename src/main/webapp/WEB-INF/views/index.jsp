<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp" %>

<!-- Carousel Startf -->
<div class="container-fluid p-0 mb-5">
    <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="w-100" src="${pageContext.request.contextPath}/resources/img/banner1.png" alt="Image">
                <div class="carousel-caption d-flex flex-column align-items-start justify-content-center">
                    <div class="p-3" style="max-width: 1000px;">
                        <a href="#" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">신청하기</a>
                        <a href="#" class="btn btn-light py-md-3 px-md-5 animated slideInRight">상세보기</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="w-100" src="${pageContext.request.contextPath}/resources/img/banner22.png" alt="Image">
                <div class="carousel-caption d-flex flex-column align-items-right justify-content-end">
                    <div class="p-3" style="max-width: 1000px;">
                        <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInRight" id="headerBtn">게시판 보기</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="w-100" src="${pageContext.request.contextPath}/resources/img/banner3.png" alt="Image">
                <div class="carousel-caption d-flex flex-column align-items-center justify-content-end">
                    <div class="p-3" style="max-width: 1000px;">
                        <a href="#" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">신청하기</a>
                        <a href="#" class="btn btn-light py-md-3 px-md-5 animated slideInRight">상세보기</a>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
            data-bs-slide="prev">
            <span id="previous_btn_box" class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
            data-bs-slide="next">
            <span id="previous_btn_box" class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
<!-- Carousel End -->
<!-- Booking Start -->
<div class="container-fluid booking pb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container">
        <div class="bg-white shadow" style="padding: 35px;">
            <div class="row g-2 justify-content-center">
                <div class="col-md-10">
                    <div class="row g-2 justify-content-center">
                        <div class="col-md-3_a">
                            <select class="form-select">
                                <option selected>지역선택</option>
                                <option value="1">부천시</option>
                                <option value="2">수원시</option> 
                                <option value="3">광명시</option>
                            </select>
                        </div>
                        <div class="col-md-3_a">
                            <select class="form-select">
                                <option selected>정책분야</option>
                                <option value="1">주거</option>
                                <option value="2">일자리</option>
                            </select>
                        </div>
                        <div class="col-md-5">
                            <div>
                                <input type="text" class="form-control datetimepicker-input" style="  font-family: 'LINESeedKR-Bd_light';" 
                                    placeholder="검색어 입력" data-target="#date2" data-toggle="datetimepicker" />
                            </div>
                        </div>
                        <div class="col-md-2">
                    		<button class="btn btn-primary w-100">정책검색</button>
                		</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Booking End -->
<!-- Service Start -->
<div class="container-xxl " id="mini_board">
    <div class="container">
        <div class="text-center wow fadeInUp" id="mini_title" data-wow-delay="0.1s">
            <h6 class="section-title text-center ">게시판</h6>
        </div>
        <div class="row g-4" id="mini_table">
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                <div class="white_shd_b full margin_bottom_30">
                    <div class="full graph_head mini_board_more" >
                            <span><img src="${pageContext.request.contextPath}/resources/img/checkWish.png" id="mini_heart"/></span>
                            <span class="mini_board_title">나의 위시 정책</span>
                            <span class="mini_board_span"><a href="">더보기</a></span>
                    </div>
                    <div class="table_section padding_infor_info" >
                        <div class="table-responsive-sm">
                            <table class="table table-hover index_table_a" id="wishList" style="text-align:left;" >
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                <div class="white_shd_b full margin_bottom_30">
                    <div class="full graph_head mini_board_more">
                        <span><img src="${pageContext.request.contextPath}/resources/img/commentManage.png" id="mini_heart"/></span>
                        <span class="mini_board_title">정책정보</span>
                        <span class="mini_board_span"><a href="">더보기</a></span>
                    </div>
                    <div class="table_section padding_infor_info">
                        <div class="table-responsive-sm">
                            <table class="table table-hover index_table_a" id="policy" style="text-align:left;">
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                <div class="white_shd_b full margin_bottom_30">
                    <div class="full graph_head mini_board_more">
                        <span><img src="${pageContext.request.contextPath}/resources/img/commentManage.png" id="mini_heart"/></span>
                        <span class="mini_board_title">꿀팁모음</span>
                        <span class="mini_board_span"><a href="">더보기</a></span>
                    </div>
                    <div class="table_section padding_infor_info">
                        <div class="table-responsive-sm">
                            <table class="table table-hover index_table_b" id="communityList" style="text-align:left;">
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                <div class="white_shd_b	 full margin_bottom_30">
                    <div class="full graph_head mini_board_more">
                        <span><img src="${pageContext.request.contextPath}/resources/img/commentManage.png" id="mini_heart"/></span>
                        <span class="mini_board_title">정책건의</span>
                        <span class="mini_board_span"><a href="">더보기</a></span>
                    </div>
                    <div class="table_section padding_infor_info">
                        <div class="table-responsive-sm">
                            <table class="table table-hover index_table_b" id="suggestList" style="text-align:left;">
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
<!-- Service End -->

 <!-- Modal -->
        <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalCenterTitle">정보 수정하기</h5>
                        
                    </div>
                    <div class="modal-body">
                       
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label mypage_label"
                                for="basic-default-phone">닉네임</label>
                            <div class="col-sm-10" >
                                <input type="text" id="basic-default-phone" required style="margin-left: 0px;"
                                    class="regi_sub_form-control phone-mask" placeholder="닉네임을 입력해주세요"/>
                                <button type="button"
                                    class="btn btn-outline-primary regi_checkBtn">중복확인</button>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label mypage_label"
                                for="basic-default-phone">연락처</label>
                            <div class="col-sm-10" >
                                <input type="text" id="basic-default-phone" required style="margin-left: 0px;"  
                                    class="regi_sub_form-control phone-mask" placeholder="연락처를 입력해주세요" />
                                <button type="button"
                                    class="btn btn-outline-primary  regi_checkBtn">중복확인</button>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">확인</button>
                        <button type="submit" class="btn btn-warning">로그아웃</button>

                    </div>
                </div>
            </div>
        </div>

<!-- Modal End -->

<script type="text/javascript">
	function formatDate(date) {
		const options = { year: 'numeric', month: '2-digit', day: '2-digit' };
		const formattedDate = new Date(date).toLocaleDateString('en-US', options);
	 	// '/'를 '-'로 바꿔서 반환
		return formattedDate.replace(/(\d{1,2})\/(\d{1,2})\/(\d{4})/, '$3-$1-$2');
	}
	
	$(document).ready(function() {
	     // 정책모음 게시판 가져오기
	     $.ajax({
	         type: "POST",
	         url: "/policy/get5policy",
	         dataType: "json",
	         success: function(data) {
	             // 성공 시 데이터를 처리하고 동적으로 테이블에 추가
	             processData(data);
	         },
	         error: function(error) {
	             console.log("Error: " + error);
	         }
	     });
	     // 꿀팁 게시판 가져오기
	     $.ajax({
	         type: "POST",
	         url: "/community/get5community",
	         dataType: "json",
	         success: function(data) {
	             // 성공 시 데이터를 처리하고 동적으로 테이블에 추가
	             processCommunityData(data);
	         },
	         error: function(error) {
	             console.log("Error: " + error);
	         }
	     });
	     // wish 가져오기
	     $.ajax({
	         type: "POST",
	         url: "/wish/getfiveBoard",
	         dataType: "json",
	         success: function(data) {
	             // 성공 시 데이터를 처리하고 동적으로 테이블에 추가
	             processData_Wish(data);
	         },
	         error: function(error) {
	             console.log("Error: " + error);
	         }
	     });
	     // 건의 게시판 가져오기
	     $.ajax({
	         type: "POST",
	         url: "/suggest/get5suggest",
	         dataType: "json",
	         success: function(data) {
	             // 성공 시 데이터를 처리하고 동적으로 테이블에 추가
	             processSuggestData(data);
	         },
	         error: function(error) {
	             console.log("Error: " + error);
	         }
	     });
	});

	// 정책모음 게시판 가져오기
	function processData(data) {
		if (data.length === 0) {
			$("#wishList").html("<tr><td colspan='3'>정책모음 게시판이 비어있습니다.</td></tr>");
			$("#wishList").closest('table').css('text-align', 'center');
			return;
		}
	    // 테이블에 데이터 추가
	    $.each(data, function(index, policy) {
	    	policy.crtDt = formatDate(policy.crtDt);
	        // 각 데이터에 대한 텍스트 길이 제한 
	        var maxTextLength = 20; // 적절한 길이로 조절
	        // 텍스트 길이가 maxTextLength보다 길면 말줄임표 추가
	        var policyNmText = (policy.policyNm.length > maxTextLength) ? policy.policyNm.substring(0, maxTextLength) + '...' : policy.policyNm;
	        var row = "<tr>" +
	        			"<td class='mini_board_bold'>" + policy.rgnSeNm + "</td>" +
	                    "<td class='ellipsis' id='mini_board_title' style='cursor:pointer;'><a href='policy/get?no="+ policy.no +"' id='index_wish'>" + policyNmText + "</a></td>" +
	                    "<td class='list_date'>" + policy.crtDt + "</td>" +
						"</tr>";
			$("#policy").append(row);
		});
	}
 
	// 커뮤니티 게시판
	function processCommunityData(data) {
		if (data.length === 0) {
			$("#communityList").html("<tr><td colspan='3'>꿀팁 게시판이 비어있습니다.</td></tr>");
			$("#communityList").closest('table').css('text-align', 'center');
			return;
		}
		// 테이블에 데이터 추가
		$.each(data, function(index, community) {
			community.regDate = formatDate(community.regDate);
	     	//community.regDate = formatDate(community.regDate);
	        // 각 데이터에 대한 텍스트 길이 제한 
	        var maxTextLength = 20; // 적절한 길이로 조절
	        // 텍스트 길이가 maxTextLength보다 길면 말줄임표 추가
			console.log("흑흑");
	        var communityTitleText = (community.title.length > maxTextLength) ? community.title.substring(0, maxTextLength) + '...' : community.title;
	        var row = "<tr>" +
						"<td class='ellipsis' id='mini_board_title' style='cursor:pointer;'><a href='community/get?bno="+ community.bno +"' id='index_wish'>" + communityTitleText + "</a></td>" +
	                    "<td class='list_date'>" + community.regDate + "</td>" +
	                  	"</tr>";
			$("#communityList").append(row);
		});
	}
 
	// 위시리스트 추가
	function processData_Wish(data) {
	    // 데이터가 없으면 "위시리스트에 등록된 정책이 없습니다" 메시지 표시
	    if (data.length === 0) {
		    $("#wishList").html("<tr><td colspan='3'>위시리스트에 등록된 정책이 없습니다.<br>정책정보 게시판에서 마음에 드는 정책을 위시리스트에 담고<br>신청마감 알림도 받아보세요!</td></tr>");
		    $("#wishList").closest('table').css('text-align', 'center');
		    return;
	    }
	    $.each(data, function(index, policy) {
		    policy.crtDt = formatDate(policy.crtDt);
		    // 각 데이터에 대한 텍스트 길이 제한 
		    var maxTextLength = 20; // 적절한 길이로 조절
		    // 텍스트 길이가 maxTextLength보다 길면 말줄임표 추가
		    var policyNmText = (policy.policyNm.length > maxTextLength) ? policy.policyNm.substring(0, maxTextLength) + '...' : policy.policyNm;
			var row = "<tr>" +
						"<td class='mini_board_bold'>" + policy.rgnSeNm + "</td>" +
		                "<td class='ellipsis' id='mini_board_title' style='cursor:pointer;'	><a href='policy/get?no="+ policy.no +"' id='index_wish'>" + policyNmText + "</a></td>" +
		                "<td class='list_date'>" + policy.crtDt + "</td>" +
		                "</tr>";
			$("#wishList").append(row);
		});
    }

	// 건의게시판 추가
		function processSuggestData(data) {
		if (data.length === 0) {
			$("#suggestList").html("<tr><td colspan='3'>건의 게시판이 비어있습니다.</td></tr>");
			$("#suggestList").closest('table').css('text-align', 'center');
			return;
		}
		// 테이블에 데이터 추가
		$.each(data, function(index, suggest) {
			suggest.regDate = formatDate(suggest.regDate);
	        // 각 데이터에 대한 텍스트 길이 제한 
	        var maxTextLength = 20; // 적절한 길이로 조절
	        // 텍스트 길이가 maxTextLength보다 길면 말줄임표 추가
	        var suggestTitleText = (suggest.title.length > maxTextLength) ? suggest.title.substring(0, maxTextLength) + '...' : suggest.title;
	        var row = "<tr>" +
						"<td class='ellipsis' id='mini_board_title' style='cursor:pointer;'><a href='suggest/get?bno="+ suggest.bno +"' id='index_wish'>" + suggestTitleText + "</a></td>" +
	                    "<td class='list_date'>" + suggest.regDate + "</td>" +
	                  	"</tr>";
			$("#suggestList").append(row);
		});
	}
</script>

<%@include file="includes/footer.jsp" %>