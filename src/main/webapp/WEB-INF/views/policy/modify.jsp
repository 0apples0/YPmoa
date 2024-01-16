
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header_admin.jsp"%>




        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Policy</h1>

                    <p id="login_p">정책 수정하기</p>



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
                               
                                <div class="full graph_head" style="padding-bottom: 7px;">
                                    <div class="heading1 policyGet_title" style="justify-content: left;">
                                        <h2>정책 개요</h2>
                                     
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
                                        <div class="mb-3">
                                            <label for="formFile" class="form-label"></label>
                                            <input class="form-control" type="file" id="formFile" />
                                           
                                          </div>

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
                                                        <textarea class="form-control" disabled placeholder="이미지 나오는 곳"></textarea>
                                                        
                                                    </td>

                                                </tr>
                                                <tr style="text-align: center;">
                                                    <td colspan="4">
                                                       <textarea class="form-control" placeholder="정책 설명을 입력하세요"></textarea>
                                                    </td>

                                                </tr>
                                                <tr style="text-align: center;">
                                                    <td colspan="4">
                                                        <textarea class="form-control" style="height: 500px;" placeholder="정책 신청 방법을 입력하세요"></textarea>
                                                    </td>

                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                       
                                        <div>
                                            <button class="btn btn-primary">수정</button>
                                            <button class="btn btn-warning">취소</button>
                                        </div>
                                     
                                    </div>
                                </div>


                            </div>




                        </div>
                    </div>

                </div>
            </div>

        </div>


    


<%@include file="../includes/footer.jsp"%>