<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.moa.youthpolicy.user.domain.UserVO"%>
<%@include file="../includes/header.jsp"%>


<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center ">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Find Login Info</h1>
            <p id="login_p">아이디/비밀번호 찾기</p>
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
                        <div class="col-xxl userModi_login_section d-flex">
                            
                                <div id="usermodi_card-body">
                                  
                                    <form id="findID" name="findID">
									    <div class="row mb-3">
											<div class="col-sm-8">
												<div class="input-group input-group-merge">
													<input type="text" class="regi_pwd_form-control" hidden="hidden" required readonly="readonly" aria-describedby="basic-default-password"  />
												</div>
											</div>
										</div>
                                        <div class="row mb-3" style="text-align: center;">
									        
                                            <h3>아이디 찾기<i class="fa fa-user-check text-primary userModi_findID"></i></h3>
									    </div>
									    <div class="row mb-3 usermodi_nameBox">
									        <label class="col-sm-2 col-form-label" id="regi_pwd_letter">이름</label>
									        <div class="col-sm-8_a">
									            <div class="input-group input-group-merge">
											    <input type="text" class="regi_pwd_form-control"
											           required
											           name="userName"
											           aria-describedby="basic-default-password" />
									            </div>
									        </div>
									    </div>
									    <div class="row mb-3">
									        <label class="col-sm-2 col-form-label"id="regi_pwd_letter" >연락처</label>
									        <div class="col-sm-8_a">
									            <div class="input-group input-group-merge">
											    <input type="text" class="regi_pwd_form-control"
											           required
											           name="userPhone"
											           aria-describedby="basic-default-password" />
									            </div>
									        </div>
									    </div>
							 				
									    <div class="col-sm-12 usermodi_idBtn" id="regi_btn">
									        <button class="btn btn-primary findId_Btn" id="findId_Btn">아이디찾기</button>
									        <button type="reset" class="btn btn-secondary">초기화</button>
									    </div>
									</form>
								
                                </div>
                                <div style="border: 1px dashed rgb(199, 199, 199); height: 370px; margin-top: 37px; margin-bottom: 10px;"></div>
                                <div id="usermodi_card-body">
                                  
                                    <form id="pwUpdate" name="pwUpdate">
									    <div class="row mb-3">
											<div class="col-sm-8">
												<div class="input-group input-group-merge">
													<input type="text" class="regi_pwd_form-control" hidden="hidden" required readonly="readonly" aria-describedby="basic-default-password"  />
												</div>
											</div>
										</div>
                                        <div class="row mb-3" style="text-align: center;">
									        <h3>비밀번호 찾기<i class="fa fa-key text-primary userModi_findID"></i></h3>
									    </div>
									    <div class="row mb-3">
									        <label class="col-sm-2 col-form-label" id="regi_pwd_letter">아이디</label>
									        <div class="col-sm-8_a">
									            <div class="input-group input-group-merge">
											    <input type="text" class="regi_pwd_form-control"
											           required placeholder="이메일을 입력하세요"
											           name="userID"
											           aria-describedby="basic-default-password" />
									            </div>
									        </div>
									    </div>
									    <div class="row mb-3">
									        <label class="col-sm-2 col-form-label" id="regi_pwd_letter">이름</label>
									        <div class="col-sm-8_a">
									            <div class="input-group input-group-merge">
											    <input type="text" class="regi_pwd_form-control"
											           required
											           name="_userName"
											           aria-describedby="basic-default-password" />
									            </div>
									        </div>
									    </div>

									    <div class="row mb-3">
									        <label class="col-sm-2 col-form-label" id="regi_pwd_letter">연락처</label>
									        <div class="col-sm-8_a">
									            <div class="input-group input-group-merge">
											    <input type="text" class="regi_pwd_form-control"
											           required
											           name="_userPhone"
											           aria-describedby="basic-default-password" />
									            </div>
									        </div>
									    </div>
							 				
									    <div class="col-sm-12" id="regi_btn">
									        <button type="button" class="btn btn-primary userModi_findPwdBtn">비밀번호 찾기</button>
									        <button type="reset" class="btn btn-secondary">초기화</button>
									    </div>
									</form>
								
                                </div>
                            </div>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%-- 아이디 찾기 모달 --%>
<div class="modal fade" id="usermodi_idModal" tabindex="-1"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">아이디 찾기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body" style="text-align:center;">회원님의 아이디는 <span class="text-primary" id="finduserID"></span>입니다.</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" id="loginBtn">로그인</button>
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>
<%-- 아이디 찾기 모달 끝 --%>

<%-- 비번 찾기 모달 --%>
<div class="modal fade" id="usermodi_pwdModal" tabindex="-1"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">비밀번호 찾기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body" style="text-align:center;">임시비밀번호가 발급되었습니다.</div>
			<div class="modal-body" style="text-align:center;"><span class="text-primary" id="tempPW"></span></div>
			<div class="modal-body" style="text-align:center;">해당 비밀번호로 로그인하신 뒤 비밀번호를 변경해주세요.</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" id="_loginBtn">로그인</button>
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>
<%-- 비번 찾기 모달 끝 --%>

<script>
$(document).ready(function(){
    $("#findId_Btn").on("click", function(e){
    	e.preventDefault();
    	let userName = $("#findID").find("input[name='userName']").val();
    	let userPhone = $("#findID").find("input[name='userPhone']").val();
    	
    	if(userName=="" || userPhone==""){
    		alert("이름과 연락처를 모두 입력하세요.")
    	}else{
    		$.ajax({
                type: "POST",
                url: "/user/findID",
                data: {
                    name: userName,
                    phone: userPhone
                },
                success: function (data) {
                	if(data){
                	    let index = data.indexOf('@');
                	    let maskedPart;
                	    let maskID;
                		if(index >3){
                	        maskedPart = data.substring(0, 3) + '*'.repeat(index - 3);
                	        maskID = maskedPart + data.substring(index);                			
                		}else if (index > 2) {
                	        maskedPart = data.substring(0, 2) + '*'.repeat(index - 2);
                	        maskID = maskedPart + data.substring(index);
                	    }else if(index > 1){
                	        maskedPart = data.substring(0, 1) + '*'.repeat(index - 1);
                	        maskID = maskedPart + data.substring(index);
                	    }
                		$('#usermodi_idModal').find('#finduserID').text(maskID);
                		$("#usermodi_idModal").modal('show');
                	}else{
                		alert("일치하는 회원 정보가 없습니다.");
                	}
                },
                error: function (error) {
                    console.error("실패: " + error);
                }
            });
    	}
        
    });
    
    $("#loginBtn").on("click", function(){
    	window.location.href = "/user/login";
    });
    $("#_loginBtn").on("click", function(){
    	window.location.href = "/user/login";
    });
    
    		
    $(".userModi_findPwdBtn").click(function(e){
    	e.preventDefault();
    	let userName = $("#pwUpdate").find("input[name='_userName']").val();
    	let userID = $("#pwUpdate").find("input[name='userID']").val();
    	let userPhone = $("#pwUpdate").find("input[name='_userPhone']").val();
    	
    	if(userName=="" || userPhone=="" || userID==""){
    		alert("이름, 아이디, 연락처를 모두 입력하세요.")
    	}else{
    		$.ajax({
                type: "POST",
                url: "/user/findPW",
                data: {
                    name: userName,
                    phone: userPhone,
                    Email: userID
                },
                success: function (data) {
                	if(data==null || data==""){
                		alert("일치하는 회원 정보가 없습니다.");
                	}else{
                		$('#usermodi_pwdModal').find('#tempPW').text(data);
                		$("#usermodi_pwdModal").modal('show');
                	}
                },
                error: function (error) {
                    console.error("실패: " + error);
                }
            });
    	}
    });
});
</script>

<!-- Booking End -->
   <%@include file="../includes/footer.jsp" %>