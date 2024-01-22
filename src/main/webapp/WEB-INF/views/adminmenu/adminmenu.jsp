
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>



        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Admin Menu</h1>

                    <p id="login_p">관리자 전용</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title text-center text-primary text-uppercase">Admin Menu</h6>
            <h1 class="mb-5"><span class="text-primary text-uppercase">관리자</span> 메뉴 </h1>
        </div>

        <!-- Service Start -->
        <div class="container-xxl py-5_b">
            <div class="container">
              
                <div class="row g-4" style="justify-content: center;">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="service-item rounded" href="/adminmenu/userget">
                            <div class="service-icon bg-transparent border rounded p-1">
                                <div class="w-100 h-100 border rounded d-flex align-items-center_admin justify-content-center">
                                    <i class="fa fa-user fa-2x text-primary"></i>
                                </div>
                            </div>
                            <h5 class="mb-3">회원관리</h5>
                            <p class="text-body mb-0">회원 정보를 조회하고 관리하세요</p>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <a class="service-item rounded" href="/adminmenu/reportboardget">
                            <div class="service-icon bg-transparent border rounded p-1">
                                <div class="w-100 h-100 border rounded d-flex align-items-center_admin justify-content-center">
                                    <i class="fa fa-clipboard fa-2x text-primary"></i>
                                </div>
                            </div>
                            <h5 class="mb-3">게시글관리</h5>
                            <p class="text-body mb-0">신고된 게시글을 관리하세요</p>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <a class="service-item rounded" href="/adminmenu/reportcommentget">
                            <div class="service-icon bg-transparent border rounded p-1">
                                <iv class="w-100 h-100 border rounded d-flex align-items-center_admin justify-content-center">
                                    <i class="fa fa-keyboard fa-2x text-primary"></i>
                                </div>
                         
                            <h5 class="mb-3">댓글관리</h5>
                            <p class="text-body mb-0">신고된 댓글을 관리하세요</p>
                        </a>
                    </div>
                    
                 
                   
                </div>
            </div>
        </div>
        <!-- Service End -->


<%@include file="../includes/footer.jsp"%>
