<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 수정 24.01.09 -->
<%@include file="../includes/header_guest.jsp" %>

           <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0" >
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">LogIn</h1>
                
                            <p id="login_p">로그인하면 더 많은 혜택을 누리실 수 있습니다</p>
               
        
                  
                </div>
            </div>
        </div>
        <!-- Page Header End -->





        <!-- Booking Start -->
        <div class="container-xxl py-5">
            <div class="container" >
               
                <div class="row g-5" id="login_box">
                    <div class="col-lg-6" id="login_inner_box">
                        <div class="row g-3">
                            <div class="col-6 w-100 wow zoomIn" data-wow-delay="0.1s">


                                <div class="login_section">
                                 
                                    <div class="login_form">
                                       <form action="#" method="post" >
                                          <fieldset>
                                             <div class="field" id="login_email_box">
                                                <label class="label_field">아이디</label>
                                                <input type="email" name="email" id="login_email_input" placeholder="이메일을 입력하세요" />
                                             </div>
                                             <div class="field" id="login_password_box">
                                                <label class="label_field">비밀번호</label>
                                                <input type="password" name="password" placeholder="" />
                                             </div>
                                            
                                             <div class="field login_btn" id="siteLogin_btn">
                                                <button type="submit" class="btn-primary btn" id="login_loginBtn">로그인</button>
                                             </div>

                                             <div id="login_line">

                                             </div>


                                             <div class="field  login_btn">
                                             
                                               	<!-- SNS로그인 버튼 -->
                                                <img src="resources/img/btnG_완성형.png" id="login_naverlogo"></img>
                                                <img src="resources/img/web_neutral_sq_SU.svg"></img>
                                                
                                             </div>
                                          
                                           
                                             <div class="field">
                                               <button class="login_registerBtn a_btn" href="#">회원가입</button>
                                               <button class="forgot a_btn" href="#">아이디/비밀번호 찾기</button>
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
        </div>
        <!-- Booking End -->


       


        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer wow fadeIn" data-wow-delay="0.3s">
            <div class="container">
                <div class="row g-5" ></div>
                    <div class="rounded p-4" id="footer_box">
                        <a href="">
                            <img src="resources/img/foot.svg" id="logo" /></a>
                    </div>



                </div>

            </div>

        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/lib/wow/wow.min.js"></script>
    <script src="resources/lib/easing/easing.min.js"></script>
    <script src="resources/lib/waypoints/waypoints.min.js"></script>
    <script src="resources/lib/counterup/counterup.min.js"></script>
    <script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="resources/lib/tempusdominus/js/moment.min.js"></script>
    <script src="resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="resources/js/main.js"></script>
</body>

</html>