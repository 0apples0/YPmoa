<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- index.jsp 수정 24.01.08 -->
<%@include file="../includes/header_guest.jsp" %>

        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="resources/img/banner1.png" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-start justify-content-center">
                            <div class="p-3" style="max-width: 1000px;">
                                <a href="#" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">신청하기</a>
                                <a href="#" class="btn btn-light py-md-3 px-md-5 animated slideInRight">상세보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="resources/img/banner22.png" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-right justify-content-end">
                            <div class="p-3" style="max-width: 1000px;">
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInRight" id="headerBtn">게시판 보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="resources/img/banner3.png" alt="Image">
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
                    <div class="row g-2">
                        <div class="col-md-10">
                            <div class="row g-2">
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
                                        <option selected>취업상태</option>
                                        <option value="1">취업</option>
                                        <option value="2">미취업</option>
                                    </select>
                                </div>
                                <div class="col-md-3_a">
                                    <div>
                                        <input type="text" class="form-control datetimepicker-input"
                                            placeholder="만 나이 입력" data-target="#date2" data-toggle="datetimepicker" />
                                    </div>
                                </div>
                                <div class="col-md-3_a">
                                    <select class="form-select">
                                        <option selected>소득범위</option>
                                        <option value="1">소득없음</option>
                                        <option value="2">세전 월 200만원 미만</option>
                                        <option value="3">세전 월 200만원 이상 300만원 미만</option>
                                    </select>
                                </div>
                                <div class="col-md-3_a">
                                    <div>
                                        <input type="text" class="form-control datetimepicker-input"
                                            placeholder="검색어 입력" data-target="#date2" data-toggle="datetimepicker" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <button class="btn btn-primary w-100">정책검색</button>
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
                        <div class="white_shd full margin_bottom_30">
                            <div class="full graph_head mini_board_more" >
                                    <span><img src="resources/img/checkWish.png" id="mini_heart"/></span>
                                    <span class="mini_board_title">나의 위시 정책</span>
                                    <span class="mini_board_span"><a href="">더보기</a></span>
                              
                            </div>
                            <div class="table_section padding_infor_info" >
                                <div class="table-responsive-sm">
                                    <table class="table table-hover"  >

                                        <tbody>
                                            <tr>
                                                <td class="mini_board_bold">남양주시</td>
                                                <td>햄버거 100개 지원 정책</td>
                                                <td class="list_date">2024-06-10</td>
                                            </tr>
                                            <tr>
                                                <td class="mini_board_bold">남양주시</td>
                                                <td>그냥 2000만원 지급</td>
                                                <td class="list_date">2024-07-11</td>
                                            </tr>
                                            <tr>
                                                <td class="mini_board_bold">남양주시</td>
                                                <td>집에가고싶은 사람 손들어</td>
                                                <td class="list_date">2024-10-10</td>
                                            </tr>
                                            <tr>
                                                <td class="mini_board_bold">남양주시</td>
                                                <td>집에가고싶은 사람 손들어</td>
                                                <td class="list_date">2024-10-10</td>
                                            </tr>
                                            <tr>
                                                <td class="mini_board_bold">남양주시</td>
                                                <td>집에가고싶은 사람 손들어</td>
                                                <td class="list_date">2024-10-10</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="white_shd full margin_bottom_30">
                            <div class="full graph_head mini_board_more">
                                <span><img src="resources/img/commentManage.png" id="mini_heart"/></span>
                                <span class="mini_board_title">정책정보</span>
                                <span class="mini_board_span"><a href="">더보기</a></span>
                            </div>
                            <div class="table_section padding_infor_info">
                                <div class="table-responsive-sm">
                                    <table class="table table-hover">

                                        <tbody>
                                            <tr>
                                                <td class="mini_board_bold">수원시</td>
                                                <td>신혼부부 임대주택 정책</td>
                                                <td class="list_date">2024-05-03</td>
                                            </tr>
                                            <tr>
                                                <td class="mini_board_bold">부천시</td>
                                                <td>청년 사업지원금 지급</td>
                                                <td class="list_date">2024-01-12</td>
                                            </tr>
                                            <tr>
                                                <td class="mini_board_bold">광명시</td>
                                                <td>대학생 학자금 지원</td>
                                                <td class="list_date">2024-04-05</td>
                                            </tr>
                                            <tr>
                                                <td class="mini_board_bold">광명시</td>
                                                <td>대학생 학자금 지원</td>
                                                <td class="list_date">2024-04-05</td>
                                            </tr>
                                            <tr>
                                                <td class="mini_board_bold">광명시</td>
                                                <td>대학생 학자금 지원</td>
                                                <td class="list_date">2024-04-05</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="white_shd full margin_bottom_30">
                            <div class="full graph_head mini_board_more">
                                <span><img src="resources/img/commentManage.png" id="mini_heart"/></span>
                                <span class="mini_board_title">꿀팁모음</span>
                                <span class="mini_board_span"><a href="">더보기</a></span>
                            </div>
                            <div class="table_section padding_infor_info">
                                <div class="table-responsive-sm">
                                    <table class="table table-hover">

                                        <tbody>
                                            <tr>

                                                <td>와; 이번정책 도랏음 정부 미쳤음;</td>
                                                <td class="list_date">2024-01-05</td>
                                            </tr>
                                            <tr>

                                                <td>미쳤따미쳤다 낮잠자고싶다</td>
                                                <td class="list_date">2024-01-12</td>
                                            </tr>
                                            <tr>

                                                <td>임대주택 신청할때 이렇게 하세여 ㅋㅋ</td>
                                                <td class="list_date">2024-04-05</td>
                                            </tr>
                                            <tr>

                                                <td>임대주택 신청할때 이렇게 하세여 ㅋㅋ</td>
                                                <td class="list_date">2024-04-05</td>
                                            </tr>
                                            <tr>

                                                <td>임대주택 신청할때 이렇게 하세여 ㅋㅋ</td>
                                                <td class="list_date">2024-04-05</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="white_shd full margin_bottom_30">
                            <div class="full graph_head mini_board_more">
                                <span><img src="resources/img/commentManage.png" id="mini_heart"/></span>
                                <span class="mini_board_title">정책건의</span>
                                <span class="mini_board_span"><a href="">더보기</a></span>
                            </div>
                            <div class="table_section padding_infor_info">
                                <div class="table-responsive-sm">
                                    <table class="table table-hover">

                                        <tbody>
                                            <tr>

                                                <td>청년들 벤처기업 연계 해주면 좋겠어요</td>
                                                <td class="list_date">2024-05-03</td>
                                            </tr>
                                            <tr>

                                                <td>신혼부부 혜택을 늘려주는 정책없나요</td>
                                                <td class="list_date">2024-01-12</td>
                                            </tr>
                                            <tr>

                                                <td>고용 관련 정책이 수정되었으면합니다ㅠ</td>
                                                <td class="list_date">2024-04-05</td>
                                            </tr>
                                            <tr>

                                                <td>고용 관련 정책이 수정되었으면합니다ㅠ</td>
                                                <td class="list_date">2024-04-05</td>
                                            </tr>
                                            <tr>

                                                <td>고용 관련 정책이 수정되었으면합니다ㅠ</td>
                                                <td class="list_date">2024-04-05</td>
                                            </tr>
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



        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer wow fadeIn" data-wow-delay="0.7s">
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