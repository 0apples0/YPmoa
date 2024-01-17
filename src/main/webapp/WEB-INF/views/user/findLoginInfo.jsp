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
							 				
									    <div class="col-sm-12" id="regi_btn">
									        <button type="submit" class="btn btn-primary">아이디찾기</button>
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
									        <label class="col-sm-2 col-form-label" id="regi_pwd_letter">아이디</label>
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
									        <button type="submit" class="btn btn-primary">비밀번호 찾기</button>
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

<script>

</script>

<!-- Booking End -->
   <%@include file="../includes/footer.jsp" %>