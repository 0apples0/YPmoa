
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header_guest.jsp" %>

        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Policy</h1>

                    <p id="login_p">정책 상세정보</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="container-xxl py-5_a">
            <div class="container">




                <div class="row g-4">
                    <div class="wow fadeInUp" data-wow-delay="0.1s">

                        <!-- table section -->
                        <div class="col-md-12">
                            <div class="white_shd_a full margin_bottom_30">
                                <div class="policyGet_title">
                                    <!-- policyNm -->
                                    <h1>청년 스타트업 지원 사업 </h1>

                                </div>
                                <div class="full graph_head" style="padding-bottom: 7px;">
                                    <div class="heading1 policyGet_title">
                                        <h2>정책 개요</h2>
                                        <!-- 위시버튼인데요 누르면 알림으로 위시리스트에 등록되었습니다
                                            다시 누르면 취소되었습니다 이렇게 떴으면 좋겠어..
                                            그리고 이 버튼이 policy게시판의 하트에서도 반영되어야해여..
                                        -->
                                        <div id="policyGet_heart_box">
                                            <img src="${pageContext.request.contextPath}/resources/img/addWish.png" class="policy_get_heart"
                                                id="policyGet_heartBtn" />
                                        </div>
                                    </div>
                                </div>
                                <div class="table_section padding_infor_info">

                                    <div class="table-responsive-sm">
                                        <table class="table table-bordered commu_table policy_dt_table">
                                            <colgroup>
                                                <col style="width: 14%">
                                                <col style="width: 36%">
                                                <col style="width: 14%">
                                                <col style="width: 36%">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <!-- policyCn-->
                                                    <th scope="row">정책 소개</th>
                                                    <td colspan="3">
                                                        청소년기에서 청년기로 이행하며 사회에 첫발을 내딛는 청년들(만19~24세)의 교통비 부담 완화 및 이동권 보장을
                                                        위한 대중교통비 지원
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <!-- policyTypeNm -->
                                                    <th scope="row">시행 지역</th>
                                                    <td>
                                                        영등포구
                                                    </td>
                                                    <!-- operInstNm -->
                                                    <th scope="row">주관 기관</th>
                                                    <td>서울시청 미래청년기획단</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">정책 유형</th>
                                                    <td>
                                                        주거
                                                    </td>
                                                    <th scope="row">지원 대상</th>
                                                    <td>
                                                        <!-- 이부분은 더미값 -->
                                                        시행지역 3년 이상 거주, 만 나이 25세 이상
                                                    </td>
                                                </tr>


                                                <tr>
                                                    <th scope="row">신청 시작 날짜</th>
                                                    <td> 2023. 12. 22.
                                                    </td>
                                                    <th scope="row">신청 마감 날짜</th>
                                                    <td>
                                                        2024. 05. 31.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <!-- policySd -->
                                                    <th scope="row">지원규모</th>
                                                    <td>150,000명</td>
                                                    <th scope="row">신청 사이트</th>
                                                    <td><a
                                                            href="#">http://gbyouth.co.kr/policy/list.tc?mn=2379&pageNo=5069&no=165</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">연락처</th>
                                                    <td colspan="3">
                                                        전화: 02-1234-1234, 메일: 123@aaa.com
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>


                            </div>




                        </div>
                        <div class="col-md-12">
                            <div class="white_shd_a full margin_bottom_30">
                                <div class="full graph_head">
                                    <div class="heading1 margin_0">
                                        <h2>정책 상세</h2>
                                    </div>
                                </div>
                                <div class="table_section padding_infor_info">

                                    <div class="table-responsive-sm">
                                        <table class="table commu_table policy_dt_table">
                                            <colgroup>
                                                <col style="width: 14%">
                                                <col style="width: 36%">
                                                <col style="width: 14%">
                                                <col style="width: 36%">
                                            </colgroup>
                                            <tbody>
                                                <tr style="text-align: center;">
                                                    <td colspan="4">
                                                        <img style="width: 80%;" src="${pageContext.request.contextPath}/resources/img/카드1.png" />

                                                    </td>

                                                </tr>
                                                <tr style="text-align: center;">
                                                    <td colspan="4">
                                                        정책 상세 내용<br>
                                                        정책 상세 내용<br>
                                                        정책 상세 내용<br>
                                                        정책 상세 내용<br>
                                                        정책 상세 내용<br>
                                                        정책 상세 내용<br>
                                                        정책 상세 내용<br>
                                                        정책 상세 내용<br>
                                                    </td>

                                                </tr>
                                                <tr style="text-align: center;">
                                                    <td colspan="4">
                                                        정책 신청 방법<br>
                                                        정책 신청 방법<br>
                                                        정책 신청 방법<br>
                                                        정책 신청 방법<br>
                                                        정책 신청 방법<br>
                                                        정책 신청 방법<br>
                                                        정책 신청 방법<br>
                                                        정책 신청 방법<br>
                                                    </td>

                                                </tr>




                                            </tbody>
                                        </table>
                                        <br>
                                        <div style="display: flex;" class="policyGet_likeBox">
                                            <div class="g-4 policyGet_letter">
                                                좋아요</div>
                                            <a> <img src="${pageContext.request.contextPath}/resources/img/addLike.png" class="policyGet_likeBtn"
                                                    style="width: 38px; cursor: pointer;" /></a>
                                            <div class="g-4">
                                                <span class="policyGet_likeCount">3</span>
                                            </div>
                                            <div class="g-4 policyGet_letter">개</div>
                                        </div>
                                    </div>
                                </div>


                            </div>




                        </div>
                    </div>

                </div>
            </div>

        </div>


        <div class="container-xxl py-5_a">
            <div class="container">




                <div class="row g-4">
                    <div class="wow fadeInUp" data-wow-delay="0.1s">
                        <h3 style="margin-left: 20px;">댓글</h3>
                        <div style="display: flex; justify-content: center;">
                            <input type="text" class="form-control datetimepicker-input font_light" style="width: 88%;"
                                placeholder="서로를 배려하는 댓글 문화를 만듭시다" />
                            <button class="btn btn-primary" style="margin-left: 10px;">댓글 작성</button>
                        </div>

                        <!-- table section -->
                        <div class="col-md-12">
                            <div class="white_shd_a full margin_bottom_30">

                                <div class="table_section padding_infor_info">
                                    <div class="table-responsive-sm">
                                        <table class="table table-basic commu_table policyGet_comment">

                                            <tbody>
                                                <tr>
                                                    <td style="width: 60%;">
                                                        john@example.comjohn@example.comjohn@example.com안녕하세요
                                                        안녕하세요
                                                        안녕하세요
                                                        안녕하세요
                                                    </td>
                                                    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇd</td>
                                                    <td>2024-01-05</td>
                                                    <td><a><img class="commu_like policyGet_like"
                                                                src="${pageContext.request.contextPath}/resources/img/addLike.png" /></a>
                                                        <span>32</span>개
                                                    </td>
                                                    <td><a href="#">
                                                            <img class="policyGet_report" src="${pageContext.request.contextPath}/resources/img/report.png"
                                                                style="width: 20px;" />
                                                            신고</a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td style="width: 60%;">
                                                        john@example.comjohn@example.comjohn@example.com안녕하세요

                                                    </td>
                                                    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇd</td>
                                                    <td>2024-01-05</td>
                                                    <td><img class="commu_like policyGet_like"
                                                            src="${pageContext.request.contextPath}/resources/img/addLike.png" />
                                                        <span>32</span>개
                                                    </td>
                                                    <td><a href="#">
                                                            <img class="policyGet_report" src="${pageContext.request.contextPath}/resources/img/report.png"
                                                                style="width: 20px;" />
                                                            신고</a>
                                                    </td>
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


         <script>
            // 위시 버튼 클릭 시 이미지 변경
            $(document).ready(function () {
                $("#policyGet_heartBtn").click(function () {
                    var currentSrc = $("#policyGet_heartBtn").attr("src");
                    var newSrc = (currentSrc === "${pageContext.request.contextPath}/resources/img/addWish.png") ? "${pageContext.request.contextPath}/resources/img/checkWish.png" : "${pageContext.request.contextPath}/resources/img/addWish.png";
                    $("#policyGet_heartBtn").attr("src", newSrc);
                });


                // 좋아요 버튼 클릭 시 이미지 변경

                $(".policyGet_likeBtn").click(function () {
                    var currentSrc = $(".policyGet_likeBtn").attr("src");
                    var newSrc = (currentSrc === "${pageContext.request.contextPath}/resources/img/addLike.png") ? "${pageContext.request.contextPath}/resources/img/checkLike.png" : "${pageContext.request.contextPath}/resources/img/addLike.png";
                    $(".policyGet_likeBtn").attr("src", newSrc);
                });


                // 댓글 좋아요 버튼 클릭 시 이미지 변경
                $(".commu_like").click(function () {
                    var currentSrc = $(this).attr("src");
                    var newSrc = (currentSrc === "${pageContext.request.contextPath}/resources/img/addLike.png") ? "${pageContext.request.contextPath}/resources/img/checkLike.png" : "${pageContext.request.contextPath}/resources/img/addLike.png";
                    $(this).attr("src", newSrc);
                });




            });






        </script>



<%@include file="../includes/footer.jsp" %>