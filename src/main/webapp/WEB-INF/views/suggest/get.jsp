
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header_guest.jsp" %>



        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Suggest</h1>

                    <p id="login_p">정책건의 상세정보</p>



                </div>
            </div>
        </div>
        <!-- Page Header Eㄹnd -->
        <div class="container-xxl ">
            <div class="container">




                <div class="row g-4">
                    <div class="wow fadeIn" data-wow-delay="0.1s">

                        <!-- table section -->
                        <div class="col-md-12">
                            <div class="white_shd_a full margin_bottom_30">

                                <div class="full graph_head" style="padding-bottom: 7px;">
                                    <div class="heading1 ">
                                        <h2 style="font-size: 30px;">이번 청약 신청방법 이런식으로 하면 어떨까요?</h2><br>
                                        <div>동그란햄스터</div>
                                        <div class="font_light">2024/02/11/ 17:18:22</div>
                                    </div>
                                </div>



                            </div>




                        </div>
                        <div class="col-md-12">
                            <div class="white_shd_a full margin_bottom_30">

                                <div class="table_section padding_infor_info">

                                    <div class="table-responsive-sm">
                                        <table class=" commu_table policy_dt_table commuGet_table">

                                            <tbody>
                                                <tr>
                                                    <td>
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ<br>
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ<br>
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ<br>
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ<br>
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ<br>
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ<br>
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ<br>
                                                        오늘저녁뭐먹을지추천좀ㅋㅋ<br>
                                                    </td>

                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                        <div style="display: flex;" class="commuGet_likeBox">
                                            <div class="g-4 policyGet_letter">
                                                좋아요</div>
                                            <a> <img src="${pageContext.request.contextPath}/resources/img/addLike.png" class="policyGet_likeBtn"
                                                    style="width: 38px; cursor: pointer;" /></a>
                                            <div class="g-4">
                                                <span class="policyGet_likeCount">3</span>
                                            </div>
                                            <div class="g-4 policyGet_letter">개</div>
                                        </div>
                                        <div class="commuGet_btn">
                                            <button class="btn btn-primary commuGet_modifyBtn">목록</button>
                                            <button class="btn btn-primary commuGet_modifyBtn">수정하기</button>


                                            <!-- 한번 알람이 떠서 ㄹㅇ삭제? 이런거 나왔으면 좋겠습니당-->
                                            <button class="btn btn-primary commuGet_deleteBtn">삭제하기</button>



                                            <button class="btn btn-warning commuGet_postReport">신고하기</button>
                                        </div>
                                    </div>
                                </div>





                            </div>





                        </div>
                    </div>

                </div>
            </div>

        </div>


       


     

    <script>
        $(document).ready(function () {
          
            // 좋아요 버튼 클릭 시 이미지 변경

            $(".policyGet_likeBtn").click(function () {
                var currentSrc = $(".policyGet_likeBtn").attr("src");
                var newSrc = (currentSrc === "${pageContext.request.contextPath}/resources/img/addLike.png") ? "${pageContext.request.contextPath}/resources/img/checkLike.png" : "${pageContext.request.contextPath}/resources/img/addLike.png";
                $(".policyGet_likeBtn").attr("src", newSrc);
            });


        }); // document.ready함수


    </script>


<%@include file="../includes/footer.jsp" %>

