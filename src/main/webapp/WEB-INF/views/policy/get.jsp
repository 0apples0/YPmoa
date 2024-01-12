
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

                                    <div class="table-responsive-sm" >
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
                                                    <th scope="row">정책 유형</th>
                                                    <td>
                                                        주거
                                                    </td>
                                                    <!-- operInstNm -->
                                                    <th scope="row">주관 기관</th>
                                                    <td>서울시청 미래청년기획단</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">시행 지역</th>
                                                    <td>
                                                        영등포구
                                                    </td>
                                                    <th scope="row">지원 대상</th>
                                                    <td>
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
                                        <table class="table table-bordered commu_table policy_dt_table">
                                            <colgroup>
                                                <col style="width: 14%">
                                                <col style="width: 36%">
                                                <col style="width: 14%">
                                                <col style="width: 36%">
                                            </colgroup>
                                            <tbody>
                                                <tr style="text-align: center;">
                                                    <img style="width: 80%;" src="${pageContext.request.contextPath}/resources/img/카드1.png" />

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

        </div>


        <div class="container-xxl py-5_a">
            <div class="container">




                <div class="row g-4">
                    <div class="wow fadeInUp" data-wow-delay="0.1s">

                        <!-- table section -->
                        <div class="col-md-12">
                            <div class="white_shd_a full margin_bottom_30">

                                <div class="table_section padding_infor_info">
                                    <div class="table-responsive-sm">
                                        <table class="table table-hover commu_table">


                                            <thead>
                                                <tr>
                                                    <th data-sort="nick">닉네임</th>
                                                    <th data-sort="category">내용</th>
                                                    <th data-sort="title">제목</th>
                                                    <th data-sort="author">작성자</th>
                                                    <th data-sort="date">작성일</th>
                                                    <th data-sort="like" id="commu_likeBtn">좋아요 <i
                                                            class="fa fa-angle-up" aria-hidden="true"></i></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>John</td>
                                                    <td>John</td>
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
                                                    <td><a href="#"></a>ㅇ안녕하세요ㄴㄴㄴㄴㄴㅇㅇㅇㅇㅇㄴㄴㄴㄴㄴㅇㅇㅇㅇㅇㄴㄴㄴㄴㄴㅇㅇㅇㅇㅇ
                                                    </td>
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
            });



        </script>



<%@include file="../includes/footer.jsp" %>