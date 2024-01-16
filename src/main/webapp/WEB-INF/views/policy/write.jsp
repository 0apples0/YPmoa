
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header_admin.jsp"%>



        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Policy</h1>

                    <p id="login_p">정책 등록하기</p>



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
                                                       <textarea class="form-control"></textarea>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <!-- policyTypeNm -->
                                                    <th scope="row">시행 지역</th>
                                                    <td>
                                                        <input class="form-control">
                                                    </td>
                                                    <!-- operInstNm -->
                                                    <th scope="row">주관 기관</th>
                                                    <td> <input class="form-control"></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">정책 유형</th>
                                                    <td>
                                                        <input class="form-control">
                                                    </td>
                                                    <th scope="row">지원 대상</th>
                                                    <td>
                                                        <input class="form-control">
                                                    </td>
                                                </tr>


                                                <tr>
                                                    <th scope="row">신청 시작 날짜</th>
                                                    <td > 
                                                        <input class="form-control" type="text" id="dateInput" placeholder="yyyy-mm-dd" onblur="validateDateInput(this)">

                                                       
                                                  
                                                    </td>
                                                    <th scope="row">신청 마감 날짜</th>
                                                    <td>
                                                        <input class="form-control" type="text" id="dateInput" placeholder="yyyy-mm-dd" onblur="validateDateInput(this)">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <!-- policySd -->
                                                    <th scope="row">지원규모</th>
                                                    <td> <input class="form-control"></td>
                                                    <th scope="row">신청 사이트</th>
                                                    <td><a
                                                            href="#"> <input class="form-control"></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">연락처</th>
                                                    <td colspan="3">
                                                        <input class="form-control">
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
                                            <button class="btn btn-primary">등록</button>
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


<script>
// 정책 글쓰기 날짜 입력 함수
function validateDateInput(input) {
var dateRegex = /^\d{4}-\d{2}-\d{2}$/;

if (!dateRegex.test(input.value)) {
    alert('올바른 날짜 형식을 입력하세요 (yyyy-mm-dd).');
    input.value = '';
}
}
</script>


<%@include file="../includes/footer.jsp"%>


