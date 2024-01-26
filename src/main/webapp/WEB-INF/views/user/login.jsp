<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.moa.youthpolicy.user.domain.UserVO" %>
<%@include file="../includes/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>


<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">LogIn</h1>
            <p id="login_p">로그인하면 더 많은 혜택을 누리실 수 있습니다</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<!-- Booking Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12" id="login_inner_box">
             
                    <div class="col-lg-12  wow fadeIn justify-content-center d-flex" id="login_small_box" data-wow-delay="0.1s"
                    				style="align-items: center;">
                        <div class="login_section">
                            <div class="login_form">
                                <form id="loginchk" name="loginchk">
                                    <fieldset>
                                        <div class="field" id="login_email_box">
                                            <label class="label_field">아이디</label>
                                            <input type="email" name="Email" id="Email" placeholder="이메일을 입력하세요" 
                                            	style="font-family: 'LINESeedKR-Bd_light';"/>
                                        </div>
                                        <div class="field" id="login_password_box">
                                            <label class="label_field">비밀번호</label>
                                            <input type="password" name="password" id="password" placeholder="" />
                                        </div>
                                        <div class="field login_btn" id="siteLogin_btn">
                                            <button type="button" onclick="chk_login()" class="btn-primary btn" id="login_loginBtn">로그인</button>
                                        </div>
                                        <div id="login_line">
                                        </div>
                                        <div class="field  login_btn">
                                            <!-- SNS로그인 버튼 -->
                                            <button type="button" class="a_btn" style="cursor: pointer;"
                                                onclick="location.href='/user/naver_login'"><img
                                                    src="${pageContext.request.contextPath}/resources/img/btnG_완성형.png"
                                                    id="login_naverlogo"></img></button>
                                            <button type="button" class="a_btn" style="cursor: pointer;"
                                                onclick="location.href='/user/google_login'"><img
                                                    src="${pageContext.request.contextPath}/resources/img/web_neutral_sq_SU.svg"></img></button>
                                        </div>
                                        <div class="field">
                                            <button type="button" class="login_registerBtn a_btn" style="cursor: pointer;"
                                                onclick="">회원가입</button>
                                            <button type="button" class="forgot a_btn" style="cursor: pointer;"
                                                onclick="">아이디/비밀번호 찾기</button>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="confirmBlockedUserModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">운영자에 의해 사용이 정지된 계정입니다.</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                계정 정지 관련 문의 사항이 있을 경우<br> 
                회원가입 시 사용한 이메일 계정을 통해<br>
                ypmoa@ypmoa.com로 메일을 보내주시길 바랍니다.    
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">확인</button>
            </div>
        </div>
    </div>
</div>

<script>



				
				
				 function chk_login() {
			            var email = $("#Email").val();
			            if (email.trim() !== "") {
			            console.log("chk_login - Start");
			                $.ajax({
			                    type: "POST",
			                    url: "/user/chkEmail", 
			                    data: { Email: email },
			                    success: function(response) {
			                    	console.log("chk_login - Email:", email);
			                    	console.log("chk_login - Response:", response);
			                        if (!response) {
			                        	chkPW(email);
			                        } else {
			                            alert("아이디 혹은 비밀번호를 잘못 입력하셨습니다.");
			                        }
			                    },
			                    error: function() {
			                        alert("Error checking user in the database.");
			                    }
			                });
			            }
			        }
				 /*
				 function chkPW(email) {
					    var password = $("#password").val();

					    if (password.trim() !== "") {
					        console.log("chkPW - Email:", email, "Password:", password);
					        $.ajax({
					            type: "POST",
					            url: "/user/chkPassword",
					            data: { Email: email, Password: password },
					            success: function(response) {
					                if (response) {
					                    // 서버에서 세션에 사용자 정보를 저장하도록 요청
					                    $.ajax({
					                        type: "POST",
					                        url: "/user/login",
					                        data: { Email: email },
					                        success: function() {
					                            window.location.href = "/";
					                        },
					                        error: function() {
					                            alert("세션에 사용자 정보를 저장하는데 실패했습니다.");
					                        }
					                    });
					                } else {
			                            alert("아이디 혹은 비밀번호를 잘못 입력하셨습니다.");
					                }
					            },
					            error: function() {
					                alert("Error checking password in the database.");
					            }
					        });
					    }
					}*/
					 function chkPW(email) {
					    var password = $("#password").val();

					    if (password.trim() !== "") {
					        console.log("chkPW - Email:", email, "Password:", password);
					        $.ajax({
					            type: "POST",
					            url: "/user/chkPassword",
					            data: { Email: email, Password: password },
					            success: function(response) {
					                if (response) {
					                    // 서버에서 세션에 사용자 정보를 저장하도록 요청
					                    $.ajax({
					                        type: "POST",
					                        url: "/user/login",
					                        data: { Email: email },
					                        success: function() {
					                        	// 로그인 성공 시 usertype 체크
					                            chkUserType(email);
					                        },
					                        error: function() {
					                            alert("세션에 사용자 정보를 저장하는데 실패했습니다.");
					                        }
					                    });
					                } else {
			                            alert("아이디 혹은 비밀번호를 잘못 입력하셨습니다.");
					                }
					            },
					            error: function() {
					                alert("Error checking password in the database.");
					            }
					        });
					    }
					}			
					
					function chkUserType(email) {
					    $.ajax({
					        type: "POST",
					        url: "/user/chkUserType",
					        data: { Email: email },
					        success: function(usertype) {
					            
					            if (usertype == 3) {
					            	$("#confirmBlockedUserModal").modal("show");
					            } else {
					                // 세션에 사용자 정보를 저장하도록 요청
					                $.ajax({
					                    type: "POST",
					                    url: "/user/login",
					                    data: { Email: email },
					                    success: function() {
					                        window.location.href = "/";
					                    },
					                    error: function() {
					                        alert("세션에 사용자 정보를 저장하는데 실패했습니다.");
					                    }
					                });
					            }
					        },
					        error: function() {
					            alert("데이터베이스에서 usertype을 확인하는 도중 오류가 발생했습니다.");
					        }
					    });
					}
	
</script>

<script>
$(document).ready(function(){
    var blockedUser = ${sessionScope.blockedUser};
    if (blockedUser) {
        $('#confirmBlockedUserModal').modal('show');
        ${sessionScope.blockedUser = null};
    }
});	
</script>
<!-- Booking End -->
<%@include file="../includes/footer.jsp" %>