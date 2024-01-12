
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header_guest.jsp" %>


        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Suggest</h1>

                    <p id="login_p">새로운 정책이나 기존 정책에 대한 의견을 자유롭게 나눠보세요!</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title text-center text-primary text-uppercase">Suggest</h6>
            <h1 class="mb-5"><span class="text-primary text-uppercase">정책</span> 건의</h1>
        </div>
        <!-- Booking Start -->
        <div class="container-fluid mypage_booking pb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container_search">
                <div class="bg-white mypage_shadow" style="padding: 20px;">
                    <div class="row g-2">

                        <h3 class=" text-center text-primary ">상세검색<img id="policy_search"
                                src="${pageContext.request.contextPath}/resources/img/search.png" /></h3>


                    </div>


                    <form>

                        <div class="row policy_row g-2">



                            <div class="row policy_row g-2">
                                <div class="col-md-3_b">
                                    <select class="form-select">
                                        <option selected>지역선택</option>
                                        <option value="1">부천시</option>
                                        <option value="2">수원시</option>
                                        <option value="3">광명시</option>
                                    </select>
                                </div>



                                <div class="col-md-3_b">

                                    <select class="form-select">
                                        <option selected>분야선택</option>
                                        <option value="1">주거</option>
                                        <option value="2">교육</option>
                                        <option value="3">신혼부부</option>
                                    </select>
                                </div>
                                <div class="col-md-3_b">
                                    <select class="form-select">
                                        <option selected>전체</option>
                                        <option value="1">제목</option>
                                        <option value="2">제목+내용</option>
                                        <option value="3">글쓴이</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <input type="text" class="form-control datetimepicker-input font_light"
                                        placeholder="검색어를 입력하세요" />
                                </div>
                                <div class="col-md-1_a ">

                                    <button class="btn btn-primary w-100">검색하기</button>
                                </div>

                                <div class="col-md-auto">
                                    <button type="reset" class="btn btn-secondary ">초기화</button>
                                </div>



                            </div>

                        </div>




                    </form>


                </div>
            </div>
        </div>
    </div>


    <!-- Booking End -->






    <div class="container-xxl py-5_a">
        <div class="container">
            <div class="row g-4">
                <div class="wow fadeIn" data-wow-delay="0.1s">

                    <!-- table section -->
                    <div class="col-md-12">
                        <div class="white_shd_a full">

                            <div class="table_section padding_infor_info_a">
                                <div class="table-responsive-sm">
                                    <table class="table table-hover commu_table commu_table_a">


                                        <thead>
                                            <tr>
                                                <th data-sort="area">지역</th>
                                                <th data-sort="category">꿀팁분야</th>
                                                <th data-sort="title">제목</th>
                                                <th data-sort="author">작성자</th>
                                                <th data-sort="date">작성일</th>
                                                <th data-sort="like" id="commu_likeBtn">좋아요 <i class="fa fa-angle-up"
                                                        aria-hidden="true"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>경상북도,포항시,영주시,어쩌구</td>
                                                <td>일자리 (창업)</td>
                                                <td><a href="#"></a>john@example.comjohn@example.comjohn@example.com
                                                </td>
                                                <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>32</span>개
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>John</td>
                                                <td><a href="#"></a>ㅇ안녕하세요ㄴㄴㄴㄴㄴㅇㅇㅇㅇㅇㄴㄴㄴㄴㄴㅇㅇㅇㅇㅇㄴㄴㄴㄴㄴㅇㅇㅇㅇㅇ</td>
                                                <td>aaaaaaaaaaaaaaaaaaaaaa</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>32</span>개
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>John</td>
                                                <td><a href="#"></a>john@example.com</td>
                                                <td>john@example.com</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>3</span>개
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>John</td>
                                                <td><a href="#"></a>john@example.com</td>
                                                <td>john@example.com</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>32</span>개
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>John</td>
                                                <td><a href="#"></a>john@example.com</td>
                                                <td>john@example.com</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>32</span>개
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>John</td>
                                                <td><a href="#"></a>john@example.com</td>
                                                <td>john@example.com</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>32</span>개
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>John</td>
                                                <td><a href="#"></a>john@example.com</td>
                                                <td>john@example.com</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>32</span>개
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>John</td>
                                                <td><a href="#"></a>john@example.com</td>
                                                <td>john@example.com</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>32</span>개
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>John</td>
                                                <td><a href="#"></a>john@example.com</td>
                                                <td>john@example.com</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>32</span>개
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>John</td>
                                                <td><a href="#"></a>john@example.com</td>
                                                <td>john@example.com</td>
                                                <td>2024-01-05</td>
                                                <td><img class="commu_like" src="${pageContext.request.contextPath}/resources/img/checkLike.png" />
                                                    <span>32</span>개
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="policy_checkbox">

                            <div class="col-md-1 policy_writeBtn">

                                <button class="btn btn-warning w-100">글쓰기</button>
                            </div>
                            <div class="col-md-1 policy_writeBtn" style="margin-right: 10px;">

                                <button class="btn btn-warning w-100">내글보기</button>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>

        <nav aria-label="Page navigation" class="commu_page_nav wow fadeInUp">
            <ul class="pagination justify-content-center policy_page_navbox">
                <li class="policy_page-item_prev prev">
                    <a class="page-link" href="javascript:void(0);"><i class="fa fa-angle-double-left"
                            aria-hidden="true"></i></a>
                </li>
                <li class="policy_page-item prev">
                    <a class="page-link" href="javascript:void(0);"><i class="fa fa-angle-left"
                            aria-hidden="true"></i></a>
                </li>
                <li class="page-item active">
                    <a class="page-link" href="javascript:void(0);">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">4</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">5</a>
                </li>
                <li class="page-item next">
                    <a class="page-link" href="javascript:void(0);"><i class="fa fa-angle-right"
                            aria-hidden="true"></i></a>
                </li>
                <li class="page-item next">
                    <a class="page-link" href="javascript:void(0);"><i class="fa fa-angle-double-right"
                            aria-hidden="true"></i></a>
                </li>
            </ul>
        </nav>
    </div>




    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer wow fadeIn" data-wow-delay="0.3s">
        <div class="container">
            <div class="row g-5"></div>
            <div class="rounded p-4" id="footer_box">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/foot.svg" id="logo" /></a>
            </div>



        </div>

    </div>
    <!-- Footer End -->


    <script>
        $(document).ready(function () {
            // 좋아요 th를 클릭할 때마다 아이콘 변경
            $("#commu_likeBtn").on("click", function () {
                var icon = $(this).find("i");

                if (icon.hasClass("fa-angle-up")) {
                    // 현재가 오름차순이라면 내림차순으로 변경
                    icon.removeClass("fa-angle-up").addClass("fa-angle-down");
                } else if (icon.hasClass("fa-angle-down")) {
                    // 현재가 내림차순이라면 정렬 제거로 변경
                    icon.removeClass("fa-angle-down").addClass("fa-sort");
                } else {
                    // 그 외의 경우는 오름차순으로 변경
                    icon.removeClass("fa-sort").addClass("fa-angle-up");
                }


            });
        });

    </script>

<%@include file="../includes/footer.jsp" %>
