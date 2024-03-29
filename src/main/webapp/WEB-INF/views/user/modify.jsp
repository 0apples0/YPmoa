<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.moa.youthpolicy.user.domain.UserVO"%>
<%@include file="../includes/header.jsp"%>


<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center ">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Password Reset</h1>
            <p id="login_p">비밀번호를 변경하세요</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<!-- Booking Start -->
<!-- Basic Layout -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12" id="login_inner_box">
                <div class="row g-3">
                    <div class="col-lg-12  wow zoomIn justify-content-center d-flex" id="login_small_box" data-wow-delay="0.1s"
                    			style="align-items: center;">
                        <div class="col-xxl login_section">
                            
                                <div id="card-body">
                                    <!--  컨트롤러에서 모델에 담긴 user 객체 가져오기 -->
							  		<%
							            UserVO user = (UserVO) session.getAttribute("user");
							            if (user != null) {
							        %>
                                    <form action="/user/modify" method="post" id="pwUpdate" name="pwUpdate">
									    <div class="row mb-3">
											<div class="col-sm-8">
												<div class="input-group input-group-merge">
													<input type="text" class="regi_pwd_form-control" hidden="hidden" required readonly="readonly" aria-describedby="basic-default-password" id="Email" name="Email" value="<%=user.getEmail()%>" />
												</div>
											</div>
										</div>
									    <div class="row mb-3">
									        <label class="col-sm-2 col-form-label" id="regi_pwd_letter">현재 비밀번호</label>
									        <div class="col-sm-8_a">
									            <div class="input-group input-group-merge">
											    <input type="password" class="regi_pwd_form-control"
											           required
											           name="currentPassword"
											           placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
											           aria-describedby="basic-default-password" />
									            </div>
									        </div>
									    </div>
									    <div class="row mb-3">
									        <label class="col-sm-2 col-form-label" id="regi_pwd_letter">새 비밀번호</label>
									        <div class="col-sm-8_a">
									            <div class="input-group input-group-merge">
											    <input type="password" class="regi_pwd_form-control"
											           required
											           name="newPassword"
											           placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
											           aria-describedby="basic-default-password" />
									            </div>
									        </div>
									    </div>
							 				<div class="row mb-3">
                                            <label class="col-sm-2 col-form-label" id="regi_pwd_letter">비밀번호 확인</label>
                                            <div class="col-sm-8_a">
                                                <div class="input-group input-group-merge">
                                                    <!-- 새로운 비밀번호 확인 필드 추가 -->
                                                    <input type="password" class="regi_pwd_form-control"
                                                           required
                                                           name="confirmPassword"
                                                           placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                                           aria-describedby="basic-default-password" />
                                                </div>
									        </div>
									    </div>
									    <div class="col-sm-12" id="regi_btn">
									        <button type="submit" class="btn btn-primary" style="margin-right:5px">수정하기</button>
									        <button type="reset" class="btn btn-secondary"  style="margin-right:5px">초기화</button>
									        <button type="button" onclick="getBack()" class="btn btn-warning">취소</button>
									    </div>
									</form>
									<%
										} else {
									%>
										<h1>로그인이 필요한 서비스입니다.</h1>
									<%        
										}
									%>
                                </div>
                            </div>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
function getBack(){
	var userEmail = "<%=user.getEmail()%>";
	location.href = "/user/mypage?Email=" + userEmail;
}

	document.addEventListener("DOMContentLoaded", function () {
	    var pwUpdateForm = document.getElementById("pwUpdate");
	    
	    var passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
	
	    pwUpdateForm.addEventListener("submit", function (event) {
	    	var dbPassword = "<%= user.getPW() %>";
	        var currentPassword = pwUpdateForm.elements["currentPassword"].value;
	        var newPassword = pwUpdateForm.elements["newPassword"].value;
	        var confirmPassword = pwUpdateForm.elements["confirmPassword"].value;
            var isPasswordUpdated = [[${flash.isPasswordUpdated}]];
            
       	    // 유효성 검사 추가
            if (!passwordRegex.test(newPassword)) {
                alert("비밀번호는 최소 8자 이상의 길이, 대소문자 및 숫자, 특수 문자를 포함해야 합니다.");
                event.preventDefault();
                return;
            }
            
            if (currentPassword !== dbPassword) {
                alert("현재 비밀번호가 올바르지 않습니다. 다시 확인해주세요.");
                event.preventDefault(); 
            }else if (currentPassword == newPassword) {
	            alert("현재 비밀번호와 새 비밀번호가 동일합니다");
	            event.preventDefault();
	        }else if (newPassword !== confirmPassword) {
	            alert("새 비밀번호와 비밀번호 확인이 일치하지 않습니다");
	            event.preventDefault();
	        }else if (isPasswordUpdated) {
                alert("비밀번호가 성공적으로 업데이트되었습니다.\n다시 로그인해주세요.");
            }
	    });
	});
</script>

<!-- Booking End -->
   <%@include file="../includes/footer.jsp" %>