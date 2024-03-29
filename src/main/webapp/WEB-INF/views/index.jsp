<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp" %>

<!-- Carousel Start -->
<div class="container-fluid p-0 mb-3">
    <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
             <a href="/policy/policy">
                <img class="w-100" src="${pageContext.request.contextPath}/resources/img/배너_정책게시판.gif" alt="Image"></a>
               	  <div class="carousel-caption carousel-caption_a d-flex flex-column align-items-center justify-content-center">
              		 <div class="p-3" style="max-width: 700px;">
            			    <img class="py-md-3 px-md-5 me-3  " id="bestPost" src="${pageContext.request.contextPath}/resources/img/그림1.png" alt="Image">
                   			  <a href="#" >
                   			  	<span class="bestPostLetter bestPostLetter_everyone">인기정책<br>바로가기<br>Click!</span>
                   			  </a>
                     </div>
                  </div>
				
				<%-- 추천정책 말풍선 --%>
				<div
					class="carousel-caption carousel-caption_b d-flex flex-column align-items-center justify-content-center">
					<div class="p-3" style="max-width: 700px;">
					    <c:if test="${user!=null && ((user.address!=null && user.address!='') || (user.interestField!=null && user.interestField!=''))}">
						<img class="py-md-3 px-md-5 me-3  " id="bestPost_member"
							src="${pageContext.request.contextPath}/resources/img/그림2.png"
							alt="Image"> <a href="/policy/policy"> <span
							class="bestPostLetter bestPostLetter_member">추천정책<br>바로가기<br>Click!
						</span>
						</a>
						</c:if>
					</div>
				</div>
				<%-- 추천정책 말풍선 끝 --%>
			</div>
            
            <div class="carousel-item">
            <a href="/suggest/suggest">
                <img class="w-100" src="${pageContext.request.contextPath}/resources/img/배너_건의게시판.gif" alt="Image"></a>
            </div>
            <div class="carousel-item">
              <a href="/community/community">
                <img class="w-100" src="${pageContext.request.contextPath}/resources/img/배너_꿀팁게시판.gif" alt="Image"></a>
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
<!-- Booking ㄹ -->
<div class="container-fluid booking pb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container">
        <div class="bg-white mobile_index_searchBox" style="padding: 35px; margin-top: 56px; box-shadow: 0 5px 20px rgba(0, 0, 0, 0.146);">
            <div class="row g-2 justify-content-center">
                <div class="col-md-10">
                <form action="/policy/indexsearch" method="post">
                <div class="row g-2">
                    		<div class="col-md-7 mobile_index_bestsearch" style="margin-bottom:10px; margin-left:10px; ">
                    		<img src="/resources/img/campfire.png" class="mobile_fire" style="width:30px; padding-bottom:10px"/>
                    			<span class="mobile_indexBestSearch" style="font-size:larger">인기 검색어</span><span id="insertionPoint"></span>
                    			
                    			<a href="/policy/policy?type=C&keyword=중소기업">#<span>중소기업</span></a>
                    			<a href="/policy/policy?type=C&keyword=19세">#<span>19세</span></a>
                    			<a href="/policy/policy?type=C&keyword=대학생">#<span>대학생</span></a>
                    			<a href="/policy/policy?type=C&keyword=창업">#<span>창업</span></a>
                    			<a href="/policy/policy?type=C&keyword=전세">#<span>전세</span></a>
                    			
                    		</div>
                    	
                    	</div>
                   	 <div class="row g-2 justify-content-center">                    
	                        <div class="col-md-3_a mobile_index_select mobile_policySearch1">
	                            <select class="form-select mobile_policyFilter" name="rgnSeNm">
	                                <option value="" selected>지역선택</option>
	                                <option value="경상북도">경상북도</option>
	                                <option value="경산시">경산시</option> 
	                                <option value="경주시">경주시</option>
	                                <option value="구미시">구미시</option>
	                                <option value="김천시">김천시</option>
	                                <option value="문경시">문경시</option>
	                                <option value="상주시">상주시</option>
	                                <option value="안동시">안동시</option>
	                                <option value="영주시">영주시</option>
	                                <option value="영천시">영천시</option>
	                                <option value="포항시">포항시</option>
	                                <option value="군위군">군위군</option>
	                                <option value="봉화군">봉화군</option>
	                                <option value="성주군">성주군</option>
	                                <option value="영덕군">영덕군</option>
	                                <option value="영양군">영양군</option>
	                                <option value="예천군">예천군</option>
	                                <option value="고령군">고령군</option>
	                                <option value="청도군">청도군</option>
	                                <option value="청송군">청송군</option>
	                                <option value="칠곡군">칠곡군</option>
	                                <option value="경주시">경주시</option>
	                                <option value="울진군">울진군</option>
	                                <option value="의성군">의성군</option>
	                            </select>
	                        </div>
	                        <div class="col-md-3_a mobile_index_select mobile_policySearch1" >
	                            <select class="form-select mobile_policyFilter" name="policyTypeNm">
	                                <option selected value="">정책분야</option>
	                                <option value="일자리 (창업)">일자리 (창업)</option>
	                                <option value="일자리 (취업)">일자리 (취업)</option>
	                                <option value="참여">참여</option>
	                                <option value="교육">교육</option>
	                                <option value="복지">복지</option>
	                                <option value="주거비 지원">주거비 지원</option>
	                                <option value="문화">문화</option>
	                                <option value="금융">금융</option>
	                                <option value="주택공급">주택공급</option>
	                                <option value="건강">건강</option>
	                            </select>
	                        </div>
	                        <div class="col-md-5 ">
	                            <div>
	                                <input type="text" class="form-control datetimepicker-input mobile_policyFilter" style="  font-family: 'LINESeedKR-Bd_light';" 
	                                    placeholder="검색어 입력" data-target="#date2" data-toggle="datetimepicker" name="keyword"/>
	                            </div>
	                        </div>
	                        <input type="hidden" name="pageNum" value=1>
	                        <div class="col-md-2">
	                    		<button type="submit" id="searchBtn" class="btn btn-primary w-100 mobile_btn">정책검색</button>
	                		</div>	                	
                    	</div>
                    	
                    	
                    	
                    
                    	
                    </form>
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
            <h6 class="section-title text-center mobile_boardtitle">게시판</h6>
        </div>
        <div class="row g-4" id="mini_table">
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                <div class="white_shd_b full margin_bottom_30 index_miniboard">
                    <div class="full graph_head mini_board_more" >
                            <span><img src="${pageContext.request.contextPath}/resources/img/checkWish.png" id="mini_heart"/></span>
                            <span class="mini_board_title">나의 위시 정책</span>
                            <span class="mini_board_span"><a href="#" onclick="chkAndGoToWish()">더보기</a></span>
                    </div>
                    <div class="table_section padding_infor_info mobile_board_a" >
                        <div class="table-responsive-sm">
                            <table class="table table-basic index_table_a" id="wishList" style="text-align:left;" >
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                <div class="white_shd_b full margin_bottom_30 index_miniboard">
                    <div class="full graph_head mini_board_more">
                        <span><img src="${pageContext.request.contextPath}/resources/img/commentManage.png" id="mini_heart"/></span>
                        <span class="mini_board_title">정책정보</span>
                        <span class="mini_board_span"><a href="/policy/policy">더보기</a></span>
                    </div>
                    <div class="table_section padding_infor_info mobile_board_a">
                        <div class="table-responsive-sm">
                            <table class="table table-basic index_table_a" id="policy" style="text-align:left;">
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                <div class="white_shd_b full margin_bottom_30 index_miniboard">
                    <div class="full graph_head mini_board_more">
                        <span><img src="${pageContext.request.contextPath}/resources/img/commentManage.png" id="mini_heart"/></span>
                        <span class="mini_board_title">꿀팁모음</span>
                        <span class="mini_board_span"><a href="/community/community">더보기</a></span>
                    </div>
                    <div class="table_section padding_infor_info mobile_board">
                        <div class="table-responsive-sm">
                            <table class="table table-basic index_table_b" id="communityList" style="text-align:left;">
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                <div class="white_shd_b	 full margin_bottom_30 index_miniboard">
                    <div class="full graph_head mini_board_more">
                        <span><img src="${pageContext.request.contextPath}/resources/img/commentManage.png" id="mini_heart"/></span>
                        <span class="mini_board_title">정책건의</span>
                        <span class="mini_board_span"><a href="/suggest/suggest">더보기</a></span>
                    </div>
                    <div class="table_section padding_infor_info mobile_board">
                        <div class="table-responsive-sm">
                            <table class="table table-basic index_table_b" id="suggestList" style="text-align:left;">
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
        <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true" data-backdrop="static" data-keyboard="false">
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
                                <input type="text" id="nickInput" required style="margin-left: 0px;"
                                    class="regi_sub_form-control phone-mask" placeholder="한글 10글자 이내 또는 영어 20글자 이내"/>
                                <button type="button"
                                    class="btn btn-outline-primary regi_checkBtn" onclick="checkNickname()" id="checkNicknameBtn">중복확인</button>
                            </div>
                            <div class="col-sm-11" ><span class="nicknameValidation" id="nickValidation">유효성검사</span></div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label mypage_label"
                                for="basic-default-phone">연락처</label>
                            <div class="col-sm-10" >
                                <input type="text" id="phoneInput" required style="margin-left: 0px;"  
                                    class="regi_sub_form-control phone-mask" placeholder="연락처를 입력해주세요" />
                                <button type="button"
                                    class="btn btn-outline-primary  regi_checkBtn" onclick="checkPhoneNumber()" onclick="checkPhoneNumber()" id="checkPhoneNumberBtn" disabled>중복확인</button>
                            </div>
                            <div class="col-sm-11" ><span class="phoneValidation" id="phoneValidation">유효성검사</span></div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" onclick="confirmChanges()" id="confirmBtn">확인</button>
                        <button type="submit" class="btn btn-warning" onclick="logout()">로그아웃</button>

                    </div>
                </div>
            </div>
        </div>
		<!-- 맞춤 정보 이동 확인 모달 -->
		<div class="modal fade" tabindex="-1"
			aria-hidden="true" data-backdrop="static" data-keyboard="false" id="gotoMyPageCustom">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">맞춤 조건 설정</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">회원가입이 완료되었습니다.<br>맞춤 조건을 설정하고 나에게 맞는 정책을 추천받아보세요!</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" id="gotoMyPage">설정하러가기</button>
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">다음에</button>
					</div>
				</div>
			</div>
		</div>       
        <form id="usernickForm" action="/community/community" method="get">
           <input type="hidden" name="writer" value="${user.nick}">
           <input type="hidden" name="Email" value="${user.email}">
           <input type="hidden" name="phone" value="${user.phone}">
           <input type="hidden" name="userType" value="${user.userType}">
        </form>

<!-- Modal End! -->


<script type="text/javascript">
	function formatDate(date) {
		const options = { year: 'numeric', month: '2-digit', day: '2-digit' };
		const formattedDate = new Date(date).toLocaleDateString('en-US', options);
	 	// '/'를 '-'로 바꿔서 반환
		return formattedDate.replace(/(\d{1,2})\/(\d{1,2})\/(\d{4})/, '$3-$1-$2');
	}
	// 중복 확인 상태 변수 초기화
    var nicknameCheckDone = false;
    var phoneNumberCheckDone = false;

    // 이전 값 저장 변수 초기화
    var prevNicknameValue = "";
    var prevPhoneNumberValue = "";

	function chkAndGoToWish(){
		var userTypeValue = document.getElementsByName('chkUserType')[0].value;
		

		if(!chkLogin()){
			alert("로그인이 필요한 서비스입니다.");
			window.location.href = "/user/login";
		}else{
			if(userTypeValue==0){
				alert("관리자는 이용할 수 없는 기능입니다.")
			}else{
				window.location.href = "/wish/wish";
			}

		}
	}
	function chkLogin() {
		userNick = $("#usernickForm input[name='writer']").val();
		if (userNick == null || userNick == "") {
			return false;
		} else {
			return true;
		}
	} 	
	$(document).ready(function() {
		
		// 모바일 반응형 - 인기검색어 조절
   var isBrAdded = false;

    function addBreak() {
        if (!isBrAdded) {
            var insertionPoint = document.getElementById('insertionPoint');
            insertionPoint.insertAdjacentHTML('beforebegin', '<br>');
            isBrAdded = true;
        }
    }

    function removeBreak() {
        var brElement = document.querySelector('#insertionPoint + br');
        if (brElement) {
            brElement.remove();
            isBrAdded = false;
        }
    }

    function handleWindowSize() {
        if (window.innerWidth <= 500) {
            addBreak();
        } else {
            removeBreak();
        }
    }

    window.addEventListener('resize', function() {
        if (window.innerWidth <= 500) {
            handleWindowSize();
        } else {
            removeBreak();
        }
    });

    window.addEventListener('DOMContentLoaded', function() {
        handleWindowSize();
    });
	    
		
		$("#modalCenter").modal({
		    backdrop: 'static',
		    keyboard:false
		});
		$("#gotoMyPageCustom").modal({
		    backdrop: 'static',
		    keyboard:false
		});		
		
		$("#nickValidation").hide(); // 닉네임 유효성 메시지 숨김
		$("#phoneValidation").hide(); // 연락처 유효성 메시지 숨김
		
		var chkfirstRegister = <%=session.getAttribute("firstRegister")%>;
		if("${user.email}" != "")
		    if(($("#usernickForm input[name=phone]").val() === undefined || $("#usernickForm input[name=phone]").val().trim() === "" && $("#usernickForm input[name='userType']").val() != 0)
		    || ($("#usernickForm input[name=writer]").val() === undefined || $("#usernickForm input[name=writer]").val().trim() === "")){
				$("#modalCenter").modal("show");
			    $('#modalCenter').on('shown.bs.modal', function () {
			        $("span.bestPostLetter_everyone").on('click', function(event) {
			            event.preventDefault();
			        });
			    });
				$('#modalCenter').on('hidden.bs.modal', function () { //네이버, 구글 최초 로그인 시 노출되는 정보 입력 팝업이 닫힌 후
					$("span.bestPostLetter_everyone").off('click');
					gotoMyPageCustom(chkfirstRegister); // 맞춤조건 설정 모달 노출
				});		
				
			}else{
				gotoMyPageCustom(chkfirstRegister); // 회원가입 시 최초 1회 맞춤조건 설정 모달 노출
			}
		
		// 초기화 시 확인 버튼 상태 업데이트
		enableOrDisableConfirmButton();
		
		// 닉네임 입력값 변경 감지
        $("#nickInput").on("input", function () {
            var currentNicknameValue = $(this).val();
            if (currentNicknameValue !== prevNicknameValue) {
                // 값이 변경되면 이전 값 갱신 및 중복 확인 상태 초기화
                prevNicknameValue = currentNicknameValue;
                nicknameCheckDone = false;
                enableOrDisableConfirmButton();
            	 // 중복 확인 버튼 다시 활성화
                $("#checkNicknameBtn").prop("disabled", false);
            }
        });
        // 연락처 입력값 변경 감지
        $("#phoneInput").on("input", function () {
            var currentPhoneNumberValue = $(this).val();
            if (currentPhoneNumberValue !== prevPhoneNumberValue) {
                // 값이 변경되면 이전 값 갱신 및 중복 확인 상태 초기화
                prevPhoneNumberValue = currentPhoneNumberValue;
                phoneNumberCheckDone = false;
                enableOrDisableConfirmButton();
                // 중복 확인 버튼 다시 활성화
                $("#checkPhoneNumberBtn").prop("disabled", false);
            }
        });
        var userPhone = "${user.phone}";
        if (userPhone) {
        	phoneNumberCheckDone = true;
            $("#phoneInput").val(userPhone);
            //$("#phoneInput").prop("disabled", true);
            $("#checkPhoneNumberBtn").prop("disabled", true);
        }
		
	     // 맞춤조건, 조회수에 따른 정책글 가져오기
	     
	     $.ajax({
	         type: "POST",
	         url: "/policy/getCustomPolicy",
	         dataType: "json",
	         success: function(data) {
	             // 성공 시 데이터를 처리하고 동적으로 테이블에 추가
	             if(data!=null && data!=''){
	 	        	var bestPostLink = $(".bestPostLetter_member").closest("a");
		     		// href 속성 변경
		     	    bestPostLink.attr("href", "/policy/get?no=" + data.no);
	             }
	         },
	         error: function(error) {
	             $("#bestPost_member").hide();
	             $(".bestPostLetter_member").css("display", "none");
	             console.log("Error: " + error);
	         }
	     });
	     
	     // 조회수에 따른 인기정책글 가져오기
	     $.ajax({
	         type: "POST",
	         url: "/policy/getBestPolicy",
	         dataType: "json",
	         success: function(data) {
	        	var bestPostLink = $(".bestPostLetter_everyone").closest("a");
	     		// href 속성 변경
	     	    bestPostLink.attr("href", "/policy/get?no=" + data.no);
	         },
	         error: function(error) {
	             console.log("Error: " + error);
	         }
	     });
		
		
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
	     // wish 가져오기(로그인되어있지 않을 때는 ajax 요청 보내지 않고 문구 출력)
	     if(chkLogin()){
		     $.ajax({
		         type: "POST",
		         url: "/wish/getfiveBoard",
		         dataType: "json",
		         success: function(data) {
		             // 성공 시 데이터를 처리하고 동적으로 테이블에 추가ㄹ
		             processData_Wish(data);
		         },
		         error: function(error) {
		             console.log("Error: " + error);
		         }
		     });	    	 
	     }else{
	    	 $("#wishList").html("<tr><td colspan='3'>로그인이 필요한 서비스입니다.<br></td></tr>");
			 $("#wishList").closest('table').css('text-align', 'center');
	     }

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

	function gotoMyPageCustom(chkfirstRegister){
		if(chkfirstRegister != null && chkfirstRegister == true){
			$("#gotoMyPageCustom").modal("show");
		    $('#gotoMyPageCustom').on('shown.bs.modal', function () {
		        $("span.bestPostLetter_everyone").on('click', function(event) {
		            event.preventDefault();
		        });
		    });
		    $('#gotoMyPageCustom').on('hidden.bs.modal', function () { 
		    	$("span.bestPostLetter_everyone").off('click');
		    });

		    $.ajax({
		        type: "GET",
		        url: "/user/changeSessionValue",
		        dataType: "text",
		        success: function() {
		            console.log("세션 값이 변경되었습니다.");
		            $("span.bestPostLetter_everyone").off('click');
		        },
		        error: function() {
		            console.error("세션 값을 변경하는 중 오류가 발생하였습니다:");
		        }
		    });
	        $("#gotoMyPage").on("click", function() {
                var Email = '${user.email}';
                $("span.bestPostLetter_everyone").off('click');
                window.location.href = "/user/mypage?Email=" + Email;
                
            });
		}
	}
	
	function processCustomDataForBanner(data){
		var bestPostLink = $(".bestPostLetter").closest("a");
		// href 속성 변경
	    bestPostLink.attr("href", "/policy/get?no=" + data.no);
	}
	// 정책모음 게시판 가져오기
	function processData(data) {
		if (data.length === 0) {
			$("#policy").html("<tr><td colspan='3'>정책정보 게시판이 비어있습니다.</td></tr>");
			$("#policy").closest('table').css('text-align', 'center');
			return;
		}
		
		var windowWidth = $(window).width();
	    var maxTextLength = (windowWidth <= 500) ? 17 : 27;
	    // 테이블에 데이터 추가
	    $.each(data, function(index, policy) {
	    	policy.crtDt = formatDate(policy.crtDt);
	        // 각 데이터에 대한 텍스트 길이 제한 
	       // var maxTextLength = 27; // 적절한 길이로 조절
	        // 텍스트 길이가 maxTextLength보다 길면 말줄임표 추가
	        var policyNmText = (policy.policyNm.length > maxTextLength) ? policy.policyNm.substring(0, maxTextLength) + '...' : policy.policyNm;
	        var row = "<tr>" +
	        			"<td class='mini_board_bold'>" + policy.rgnSeNm + "</td>" +
	                    "<td class='ellipsis' id='mini_board_title' ><a href='policy/get?no="+ policy.no +"' id='index_wish'>" + policyNmText + "</a></td>" +
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
		var windowWidth = $(window).width();
	    var maxTextLength = (windowWidth <= 500) ? 20 : 29;
	    
		// 테이블에 데이터 추가
		$.each(data, function(index, community) {
			community.regDate = formatDate(community.regDate);
	     	//community.regDate = formatDate(community.regDate);
	        // 각 데이터에 대한 텍스트 길이 제한 
	        // 텍스트 길이가 maxTextLength보다 길면 말줄임표 추가
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
	    
	    var windowWidth = $(window).width();
	    var maxTextLength = (windowWidth <= 500) ? 17 : 27;
	    
	    $.each(data, function(index, policy) {
		    policy.crtDt = formatDate(policy.crtDt);
		    // 각 데이터에 대한 텍스트 길이 제한 ㅋ
			//   var maxTextLength = 28;  // 적절한 길이로 조절
		    // 텍스트 길이가 maxTextLength보다 길면 말줄임표 추가
		    var policyNmText = (policy.policyNm.length > maxTextLength) ? policy.policyNm.substring(0, maxTextLength) + '...' : policy.policyNm;
			var row = "<tr>" +
						"<td class='mini_board_bold'>" + policy.rgnSeNm + "</td>" +
		                "<td class='ellipsis' id='mini_board_title'><a href='policy/get?no="+ policy.no +"' id='index_wish'>" + policyNmText + "</a></td>" +
		                "<td class='list_date'>" + policy.crtDt + "</td>" +
		                "</tr>";
			$("#wishList").append(row);
		});
    }

	
	
	
	// 건의게시판 추가ㄹ
		function processSuggestData(data) {
		if (data.length === 0) {
			$("#suggestList").html("<tr><td colspan='3'>건의 게시판이 비어있습니다.</td></tr>");
			$("#suggestList").closest('table').css('text-align', 'center');
			return;
		}
		var windowWidth = $(window).width();
	    var maxTextLength = (windowWidth <= 500) ? 20 : 29;
		// 테이블에 데이터 추가
		$.each(data, function(index, suggest) {
			suggest.regDate = formatDate(suggest.regDate);
	        // 각 데이터에 대한 텍스트 길이 제한 
	        // 텍스트 길이가 maxTextLength보다 길면 말줄임표 추가
	        var suggestTitleText = (suggest.title.length > maxTextLength) ? suggest.title.substring(0, maxTextLength) + '...' : suggest.title;
	        var row = "<tr>" +
						"<td class='ellipsis' id='mini_board_title'><a href='suggest/get?bno="+ suggest.bno +"' id='index_wish'>" + suggestTitleText + "</a></td>" +
	                    "<td class='list_date'>" + suggest.regDate + "</td>" +
	                  	"</tr>";
			$("#suggestList").append(row);
		});
	}
	
	
		function hideValidationMessage(validationSpan) {
		    validationSpan.hide();
		}

		function showValidationMessage(validationSpan, message) {
		    validationSpan.text(message).show();
		}
	
		function checkNickname() {
			var nickname = $("#nickInput").val();
		    var nicknameValidation = $("#nickValidation"); 

		    if (!isValidNickname(nickname)) {
		        showValidationMessage(nicknameValidation, "유효하지 않은 닉네임입니다. 한글 10글자 이내 또는 영어 20글자 이내로 입력하세요.");
		        return;
		    }

	        // 중복 확인 상태 초기화
	        nicknameCheckDone = false;

	        // Ajax를 이용하여 서버에 닉네임 중복 체크 요청
	        $.ajax({
	            type: "POST",
	            url: "/user/chkNickname",
	            data: { nick: nickname },
	            success: function (response) {
	                if (response) {
	                    alert("사용 가능한 닉네임입니다.");
	                    nicknameCheckDone = true;
	                    enableOrDisableConfirmButton();
	                    // 중복 확인 버튼 다시 비활성화
	                    $("#checkNicknameBtn").prop("disabled", true);
	                    hideValidationMessage(nicknameValidation);
	                } else {
	                	showValidationMessage(nicknameValidation, "이미 사용 중인 닉네임입니다.");
	                    disableConfirmButton();
	                }
	            },
	            error: function () {
	                alert("닉네임 중복 체크 중 오류가 발생했습니다.");
	            }
	        });
	    }
		
		function checkPhoneNumber() {
			var phoneNumber = $("#phoneInput").val();
		    var phoneValidation = $("#phoneValidation"); 

		    if (!isValidPhoneNumber(phoneNumber)) {
		        showValidationMessage(phoneValidation, "유효하지 않은 핸드폰 번호입니다.");
		        return;
		    }

	        // 중복 확인 상태 초기화
	        phoneNumberCheckDone = false;

	        // Ajax를 이용하여 서버에 연락처 중복 체크 요청
	        $.ajax({
	            type: "POST",
	            url: "/user/chkPhone",
	            data: { phone: phoneNumber },
	            success: function (response) {
	                if (response) {
	                    alert("사용 가능한 연락처입니다.");
	                    phoneNumberCheckDone = true;
	                    enableOrDisableConfirmButton();
	                    $("#checkPhoneNumberBtn").prop("disabled", true);
	                    hideValidationMessage(phoneValidation);
	                } else {
	                	showValidationMessage(phoneValidation, "이미 사용 중인 연락처입니다.");
	                    disableConfirmButton();
	                }
	            },
	            error: function () {
	                alert("연락처 중복 체크 중 오류가 발생했습니다.");
	            }
	        });
	    }
		
		function enableOrDisableConfirmButton() {
	        // 중복 확인이 모두 완료되고 값이 변경되지 않았다면 확인 버튼 활성화
	        if (nicknameCheckDone && phoneNumberCheckDone) {
	            $("#confirmBtn").prop("disabled", false);
	        } else {
	            $("#confirmBtn").prop("disabled", true);
	        }
	    }
		
		function disableConfirmButton() {
	        // 중복 확인이 실패하면 확인 버튼 비활성화
	        $("#confirmBtn").prop("disabled", true);
	    }
		
		function isValidPhoneNumber(phoneNumber) {
		    // 핸드폰 번호 유효성 검사를 수행하는 로직을 구현
		    // 여기서는 간단한 예시로 010으로 시작하는 11자리 숫자만 유효하다고 가정
		    var phoneNumberRegex = /^010[0-9]{8}$/;
		    return phoneNumberRegex.test(phoneNumber);
		}
		function isValidNickname(nickname) {
		    // 닉네임 유효성 검사를 수행하는 로직을 구현
		    // 여기서는 한글 10글자 이내 또는 영어 20글자 이내로 제한
			var nickRegex = /^(?:[가-힣]{1,10}|[a-zA-Z]{1,20}|[a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ]{2,14})$/;

			return nickRegex.test(nickname);
		}
		
		function confirmChanges() {
			
			$.ajax({
				type: "POST",
				url: "/user/modinfo",
				data: {
					Email: $("#usernickForm input[name=Email]").val(),
		            phone: $("#phoneInput").val(),
		            nick: $("#nickInput").val()
				},
				success: function (){
					window.location.href = "/";
				}
			});
						
	    }

	    function logout() {
	    	window.location.href = "/user/logout";
	    }
	    
	    
	    
	
</script>

<%@include file="includes/footer.jsp" %>