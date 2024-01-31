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
                                  
                                    <form action="/user/modify" method="post" id="pwUpdate" name="pwUpdate">
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
											           name="currentPassword"
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
											           name="newPassword"
											           aria-describedby="basic-default-password" />
									            </div>
									        </div>
									    </div>
							 				
									    <div class="col-sm-12 usermodi_idBtn" id="regi_btn">
									        <button type="submit" class="btn btn-primary findId_Btn">아이디찾기</button>
									        <button type="reset" class="btn btn-secondary">초기화</button>
									    </div>
									</form>
								
                                </div>
                                <div style="border: 1px dashed rgb(199, 199, 199); height: 370px; margin-top: 10px; margin-bottom: 10px;"></div>
                                <div id="usermodi_card-body">
                                  
                                    <form action="/user/modify" method="post" id="pwUpdate" name="pwUpdate">
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
									        <label class="col-sm-2 col-form-label" id="regi_pwd_letter">이름</label>
									        <div class="col-sm-8_a">
									            <div class="input-group input-group-merge">
											    <input type="text" class="regi_pwd_form-control"
											           required
											           name="currentPassword"
											           aria-describedby="basic-default-password" />
									            </div>
									        </div>
									    </div>
									    <div class="row mb-3">
									        <label class="col-sm-2 col-form-label" id="regi_pwd_letter">아이디</label>
									        <div class="col-sm-8_a">
									            <div class="input-group input-group-merge">
											    <input type="text" class="regi_pwd_form-control"
											           required placeholder="이메일을 입력하세요"
											           name="currentPassword"
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
											           name="newPassword"
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
			<div class="modal-body" style="text-align:center;">회원님의 아이디는 <span class="text-primary">유민유민</span>입니다.</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">로그인</button>
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
			<div class="modal-body" style="text-align:center;"><span class="text-primary">yumin123</span></div>
			<div class="modal-body" style="text-align:center;">해당 비밀번호로 로그인 뒤 비밀번호를 변경해주세요.</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">로그인</button>
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>
<%-- 비번 찾기 모달 끝 --%>

<script>
$(document).ready(function(){
    $(".findId_Btn").click(function(){
        $("#usermodi_idModal").modal('show');
    });
    $(".userModi_findPwdBtn").click(function(){
        $("#usermodi_pwdModal").modal('show');
    });
});
</script>

<!-- Booking End -->
   <%@include file="../includes/footer.jsp" %>