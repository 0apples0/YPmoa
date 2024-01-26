<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.moa.youthpolicy.user.domain.UserVO"%>
<%@include file="../includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="UTF-8">

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
	<div class="page-header-inner" id="login_banner">
		<div class="container text-center ">
			<h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">My Page</h1>
			<p id="login_p">마이페이지에서 나만의 맞춤설정과 내 정보를 수정해보세요!</p>
		</div>
	</div>
</div>
<!-- Page Header End -->
<!-- Booking Start -->
            <!--  컨트롤러에서 모델에 담긴 user 객체 가져오기 -->
<%
    UserVO user = (UserVO) session.getAttribute("user");
    if (user != null) {
%>
<form method="post" action="/user/mypage" id="modifyForm">
    <div class="container-fluid mypage_booking pb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <div class="text-center wow fadeIn" data-wow-delay="0.1s">
                <div class="g-2 justify-content-center">
                    <h3 class="text-center text-primary "> <i class="fa fa-user-edit text-primary"></i> 맞춤 조건 설정</h3>
                    <div class="col-md-12">
                        <div class="row g-2 mypage_select" style="justify-content: center;">
                            <!-- Address 선택 -->
                            <div class="col-md-3_b">
                                <select class="form-select" name="address">
                                    <c:choose>
                                        <c:when test="${empty user.address}">
                                            <option selected value="">지역선택</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="${user.address}">${user.address}</option>
                                        </c:otherwise>
                                    </c:choose>
                                    <option value="부천시">부천시</option>
                                    <option value="수원시">수원시</option>
                                    <option value="광명시">광명시</option>
                                </select>
                            </div>
                            <!-- Interest Field 선택 -->
                            <div class="col-md-3_b">
                                <select class="form-select" name="interestField">
                                    <c:choose>
                                        <c:when test="${empty user.interestField}">
                                            <option selected value="">관심분야</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="${user.interestField}">${user.interestField}</option>
                                        </c:otherwise>
                                    </c:choose>
                                    <option value="주거">주거</option>
                                    <option value="교육">교육</option>
                                    <option value="신혼부부">신혼부부</option>
                                </select>
                            </div>
                            <!-- 저장하기 버튼 -->
                            <div class="col-md-3_b">
                                <button type="button" class="btn btn-primary w-100" id="saveButton">저장하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mypage_section wow fadeInUp" data-wow-delay="0.5s"></div>
        </div>
    </div>
    <!-- Booking End -->

    <!-- Basic Layout -->
    <div class="container-xxl py-5_a">
        <div class="container">
            <div class="row">
                <div class="col-lg-12" id="login_inner_box">
                    <div class="col-lg-12 wow zoomIn justify-content-center d-flex" id="login_small_box" data-wow-delay="0.1s" style="align-items: center;">
                        <div class="login_section">
                            <div id="card-body">
                                <!-- 아이디 표시 -->
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label field mypage_label" for="basic-default-email">아이디</label>
                                    <div class="col-sm-10">
                                        <div class="input-group input-group-merge">
                                            <input type="text" class="regi_pwd_form-control" required readonly="readonly" aria-describedby="basic-default-password" id="Email" name="Email" value="<%=user.getEmail()%>" />
                                        </div>
                                    </div>
                                </div>
                                <!-- 이름 표시 -->
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label mypage_label" for="basic-default-company">이름</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="regi_pwd_form-control" required readonly="readonly" aria-describedby="basic-default-password" id="name" name="name" value="<%=user.getName()%>" />
                                    </div>
                                </div>
                                <!-- 연락처 입력, 중복확인 버튼 -->
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label mypage_label" for="basic-default-phone">연락처</label>
                                    <div class="col-sm-10">
                                        <input type="text" required class="regi_sub_form-control phone-mask" id="phone" name="phone" value="<%= user.getPhone().toString() %>" aria-describedby="basic-default-phone" />
                                        <button type="button" class="btn btn-primary regi_checkBtn" id="phoneck">중복확인</button>
                                    </div>
                                </div>
                                <!-- 닉네임 입력, 중복확인 버튼 -->
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label mypage_label" for="basic-default-company">닉네임</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="regi_sub_form-control" required id="nick" name="nick" value="<%=user.getNick()%>" placeholder="한글 10글자, 영어 20자, 한글+영어 20자 이내" />
                                        <button type="button" class="btn btn-primary  regi_checkBtn" id="nickchk">중복확인</button>
                                    </div>
                                </div>
                                <!-- 수정완료, 비밀번호 변경, 초기화, 회원탈퇴 버튼 -->
                                <div class="col-sm-12" id="regi_btn">
                                    <button type="submit" class="btn btn-primary" id="mod_regiBtn">수정완료</button>
                                    <button type="button" class="btn btn-primary" id="modpw_regiBtn">비밀번호 변경</button>
                                    <button type="reset" class="btn btn-primary">초기화</button>
                                    <button type="button" class="btn btn-warning" id="user_delBtn">회원탈퇴</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
 		<%
            } else {
        %>
        	<h1>로그인이 필요한 서비스입니다.</h1>
        <%        
            }
        %>
<!-- Booking End -->


<script>	
$(document).ready(function() {
    // 초기에 'phoneck' 버튼 비활성화
    $("#phoneck").prop("disabled", true);
    // 초기에 'nickchk' 버튼 비활성화
    $("#nickchk").prop("disabled", true);
    
    // 각 중복 체크 상태를 저장하는 변수들
    var phoneCheckDone = true;
    var nickCheckDone = true;
	
    // 페이지가 로드되면 실행될 코드
    var addressOption = $('#address'); // id가 "address"인 option 요소 선택

    // 값이 없거나 null인 경우 숨기기
    if (addressOption.val() === '' || addressOption.val() === null) {
        addressOption.hide();
        // value가 0인 옵션을 selected로 설정
        $('[value="0"]').prop('selected', true);
	}
    
    // 'phone' 입력에 대한 변경 이벤트 리스너 추가
    $(".regi_sub_form-control[name='phone']").on("input", function () {
        // 'phone' 입력 값이 변경될 때 'phoneck' 버튼 활성화
        $("#phoneck").prop("disabled", false);
    });
    
    // 'nick' 입력에 대한 변경 이벤트 리스너 추가
    $(".regi_sub_form-control[name='nick']").on("input", function () {
        // 'nick' 입력 값이 변경될 때 'nickchk' 버튼 활성화
        $("#nickchk").prop("disabled", false);
    });
    
    // 연락처 중복 체크 버튼 클릭 시
    $("#phoneck").on("click", function () {
        // 여기에 연락처 중복 체크 로직을 추가
        var phoneNumber = $(".regi_sub_form-control[name='phone']").val();
    
        // Ajax를 이용하여 서버에 연락처 중복 체크 요청
        $.ajax({
            type: "POST",
            url: "/user/chkPhone", 
            data: { phone: phoneNumber },
            success: function (response) {
                if (response) {
                    phoneCheckDone = true;
                    enableOrDisableRegisterButton();
                    alert("사용 가능한 연락처입니다.");
                } else {
                    phoneCheckDone = false;
                    enableOrDisableRegisterButton();
                    alert("이미 사용 중인 연락처입니다.");
                }
            },
            error: function (error) {
                console.error("연락처 중복 체크 중 오류가 발생했습니다.", error);
                alert("연락처 중복 체크 중 오류가 발생했습니다.");
            }
        });
    });
    
    // 닉네임 중복 체크 버튼 클릭 시
    $("#nickchk").on("click", function () {
        // 여기에 닉네임 중복 체크 로직을 추가
        var nickname = $(".regi_sub_form-control[name='nick']").val();
    
        // Ajax를 이용하여 서버에 닉네임 중복 체크 요청
        $.ajax({
            type: "POST",
            url: "/user/chkNickname", 
            data: { nick: nickname },
            success: function (response) {
                if (response) {
                    nickCheckDone = true;
                    enableOrDisableRegisterButton();
                    alert("사용 가능한 닉네임입니다.");
                } else {
                    nickCheckDone = false;
                    enableOrDisableRegisterButton();
                    alert("이미 사용 중인 닉네임입니다.");
                }
            },
            error: function (error) {
                console.error("닉네임 중복 체크 중 오류가 발생했습니다.", error);
                alert("닉네임 중복 체크 중 오류가 발생했습니다.");
            }
        });
    });


    // 수정완료 버튼을 활성화 또는 비활성화하는 함수
    function enableOrDisableRegisterButton() {
        var allChecksDone =  phoneCheckDone && nickCheckDone;
        var allInputsFilled = true;
    
        $(".regi_sub_form-control, .regi_pwd_form-control, .phone-mask").each(function () {
            if ($(this).val() === "") {
                allInputsFilled = false;
                return false; // 중단
            }
        });
    
        if (allChecksDone && allInputsFilled) {
            enableRegisterButton();
        } else {
            disableRegisterButton();
        }
    }
    
    
    // 수정완료 버튼을 활성화하는 함수
    function enableRegisterButton() {
        $("#mod_regiBtn").prop("disabled", false);
    }
    
    // 수정완료 버튼을 비활성화하는 함수
    function disableRegisterButton() {
        $("#mod_regiBtn").prop("disabled", true);
    }
    
    // 저장하기 버튼
    $("#saveButton").on("click", function () {
        var formData = {
                address: $("select[name='address']").val(),
                interestField: $("select[name='interestField']").val(),
                Email: $("#Email").val()
            };
        
        $.ajax({
            type: "POST",
            url: "/user/modinfo", 
            data: formData,
            success: function (response) {
                alert("저장되었습니다.");
                location.reload();
            },
            error: function (error) {
                console.error("저장 중 오류가 발생했습니다.", error);
                alert("저장 중 오류가 발생했습니다.");
            }
        });
    });
    
    // 비밀번호 변경 버튼 눌렀을 때
    $("#modpw_regiBtn").on("click", function () {
        // 사용자 이메일 값 가져오기
        var userEmail = "<%=user.getEmail()%>";

        // 이메일 값을 modify.jsp로 전달하는 URL 생성
        var redirectUrl = "/user/modify?email=" + encodeURIComponent(userEmail);

        // modify.jsp로 이동
        window.location.href = redirectUrl;
    });
    
    // 회원탈퇴 버튼 눌렀을 때
    $("#user_delBtn").on("click",function(){
        var isConfirmed = confirm("탈퇴하시면 청년정책모아에서의 모든 활동 및 기록이 삭제됩니다.\n정말 탈퇴하시겠습니까?");
        if (isConfirmed) {
            $.ajax({
                type: "POST",
                url: "/user/remove", 
                success: function (response) {
                    // 회원 탈퇴 성공 시
                    alert("회원탈퇴가 완료되었습니다.");
                    window.location.href = "/user/login"; 
                },
                error: function (error) {
                    // 회원 탈퇴 실패 시
                    console.error("회원 탈퇴 중 오류가 발생했습니다.", error);
                    alert("회원 탈퇴 중 오류가 발생했습니다.");
                }
            });
        } else {
            location.reload();
        }
    });
    
    $("#regi_regiBtn").on("click", function () {
        location.reload();
    });
    
});
</script>


<%@include file="../includes/footer.jsp" %>