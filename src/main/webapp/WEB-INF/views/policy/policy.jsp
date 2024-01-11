
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header_guest.jsp" %>

     <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Policy</h1>

                    <p id="login_p">청년들을 위한 정책</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title text-center text-primary text-uppercase">Policy</h6>
            <h1 class="mb-5"><span class="text-primary text-uppercase">정책</span> 둘러보기 </h1>
        </div>
        <!-- Booking Start -->
        <div class="container-fluid mypage_booking pb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container_search">
                <div class="bg-white mypage_shadow" style="padding: 35px;">
                    <div class="row g-2">

                        <h3 class=" text-center text-primary ">상세검색<img id="policy_search"
                                src="${pageContext.request.contextPath}/resources/img/search.png" /></h3>


                    </div>



                    <div class="row policy_row g-2">


                        <form>

                            <div class="row  policy_row g-2">
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
                                        <option selected>취업상태</option>
                                        <option value="1">취업</option>
                                        <option value="2">미취업</option>
                                    </select>
                                </div>
                                <div class="col-md-3_b_1">
                                    <div>
                                        <input type="text" class="form-control datetimepicker-input"
                                            placeholder="만 나이 숫자만 입력" />
                                    </div>
                                </div>
                                <div class="col-md-3_b_2">
                                    <select class="form-select">
                                        <option selected>소득범위</option>
                                        <option value="1">소득없음</option>
                                        <option value="2">세전 월 200만원 미만</option>
                                        <option value="3">세전 월 200만원 이상 300만원 미만</option>
                                    </select>
                                </div>
                                <div class="col-md-3_b">
                                    <select class="form-select">
                                        <option selected>결혼여부</option>
                                        <option value="1">미혼</option>
                                        <option value="2">기혼</option>
                                    </select>
                                </div>
                                <div class="col-md-3_b">
                                    <select class="form-select">
                                        <option selected>관심분야</option>
                                        <option value="1">주거</option>
                                        <option value="2">교육</option>
                                        <option value="3">신혼부부</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>



                    <div>


                        <div class="row g-2 justify-content-center">


                            <div class="col-md-5 policy_search_box">
                                <div>
                                    <input type="text" class="form-control datetimepicker-input"
                                        placeholder="검색어를 입력하세요" />
                                </div>
                            </div>



                        </div>

                        <div class="row g-2 justify-content-center policy_search_box">

                            <!-- 조건+제목+내용 / 제목+내용 검색 -->
                            <div class="col-md-1 ">
                                <button class="btn btn-primary w-100">검색하기</button>
                            </div>
                            <!-- 저장된 본인의 맞춤정보에 따라 조건 적용 -->
                            <div class="col-md-2">
                                <button class="btn btn-warning w-100">내 맞춤조건 적용</button>
                            </div>
                            <div class="col-md-1_a">
                                <button type="reset" class="btn btn-secondary ">초기화</button>
                            </div>
                        </div>

                    </div>


                </div>
            </div>
        </div>
    </div>


    <!-- Booking End -->



    <div class="container-xxl py-5">
        <div class="container">


            <!-- 체크박스를 누르면 바로 검색결과가 두두두 떴으면 좋겠습니다.. -->

            <div id="policy_checkbox">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                    <label class="custom-control-label" for="customCheck1">전체</label>
                </div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="customCheck2">
                    <label class="custom-control-label" for="customCheck2">모집중</label>
                </div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="customCheck3">
                    <label class="custom-control-label" for="customCheck3">신청마감</label>
                </div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="customCheck4">
                    <label class="custom-control-label" for="customCheck4">좋아요 많은 순</label>
                </div>

            </div>


            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/카드1.png" alt="">
                            <div class="policy_wish_box">
                                <div
                                    class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">

                                    <a class="btn btn-square mx-1 toggleLink" href="#" data-target="policy_heart_1"><img
                                            class="policy_heart" id="policy_heart_1"
                                            src="${pageContext.request.contextPath}/resources/img/addWish.png" /></a>
                                </div>

                                <!-- 하트를 누르면.. 이미지 바뀌는거는 아래에 해놧고요..
                                    누르면 알림으로 위시리스트에 등록되었습니다 라고 떴으면 좋겠습니다..
                                    다시누르면..(빈 하트가되면) 위시리스트에서 해제되었습니다..뜨구요..
                                -->
                            </div>
                        </div>

                        <!-- 값 불러올 곳 -->
                        <div class="text-center p-4 mt-2 policy_detail">
                            <h5 class="fw-bold mb-4">청년 일자리 사업</h5>

                            <small id="policy_areaName">포항시</small>
                            <small id="policy_startDate">2024-01-22</small>

                        </div>


                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/카드2.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#" data-target="policy_heart_2"><img
                                        class="policy_heart" id="policy_heart_2" src="${pageContext.request.contextPath}/resources/img/addWish.png" /></a>
                            </div>



                        </div>
                        <div class="text-center p-4 mt-2 policy_detail">
                            <h5 class="fw-bold mb-4">청년 일자리 사업</h5>

                            <small id="policy_areaName">포항시</small>
                            <small id="policy_startDate">2024-01-22</small>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/카드3.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#" data-target="policy_heart_3"><img
                                        class="policy_heart" id="policy_heart_3" src="${pageContext.request.contextPath}/resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail">
                            <h5 class="fw-bold mb-4">청년 일자리 사업</h5>

                            <small id="policy_areaName">포항시</small>
                            <small id="policy_startDate">2024-01-22</small>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/카드4.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#" data-target="policy_heart_4"><img
                                        class="policy_heart" id="policy_heart_4" src="${pageContext.request.contextPath}/resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail">
                            <h5 class="fw-bold mb-4">청년 일자리 사업</h5>

                            <small id="policy_areaName">포항시</small>
                            <small id="policy_startDate">2024-01-22</small>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/카드5.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#" data-target="policy_heart_5"><img
                                        class="policy_heart" id="policy_heart_5" src="${pageContext.request.contextPath}/resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail">
                            <h5 class="fw-bold mb-4">청년 일자리 사업</h5>

                            <small id="policy_areaName">포항시</small>
                            <small id="policy_startDate">2024-01-22</small>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/카드6.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#" data-target="policy_heart_6"><img
                                        class="policy_heart" id="policy_heart_6" src="${pageContext.request.contextPath}/resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail">
                            <h5 class="fw-bold mb-4">청년 일자리 사업</h5>

                            <small id="policy_areaName">포항시</small>
                            <small id="policy_startDate">2024-01-22</small>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/카드7.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#" data-target="policy_heart_7"><img
                                        class="policy_heart" id="policy_heart_7" src="${pageContext.request.contextPath}/resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail">
                            <h5 class="fw-bold mb-4">청년 일자리 사업</h5>

                            <small id="policy_areaName">포항시</small>
                            <small id="policy_startDate">2024-01-22</small>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/카드8.png" alt="">

                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#" data-target="policy_heart_8"><img
                                        class="policy_heart" id="policy_heart_8" src="${pageContext.request.contextPath}/resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail">
                            <h5 class="fw-bold mb-4">청년 일자리 사업</h5>

                            <small id="policy_areaName">포항시</small>
                            <small id="policy_startDate">2024-01-22</small>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav aria-label="Page navigation" class="policy_page_nav wow fadeInUp">
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
    
  <script>
     $(document).ready(function () {
    // 체크박스 중복 방지
    $('.custom-control-input').on('change', function () {
        if ($(this).prop('checked')) {
            $('.custom-control-input').not(this).prop('disabled', true);
        } else {
            $('.custom-control-input').prop('disabled', false);
        }
    });

    // 리스트 위시 버튼
    $(".toggleLink").click(function (e) {
        e.preventDefault();

        var $img = $("#" + $(this).data("target"));

        $img.attr("src", function (_, oldSrc) {
            return oldSrc.includes("addWish.png") ? "${pageContext.request.contextPath}/resources/img/checkWish.png" : "${pageContext.request.contextPath}/resources/img/addWish.png";
        });
    });
});


    </script>
<%@include file="../includes/footer.jsp" %>
