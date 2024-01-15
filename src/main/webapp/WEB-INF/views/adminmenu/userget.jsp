
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header_admin.jsp"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Member</h1>

                    <p id="login_p">관리자 회원 관리</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title text-center text-primary text-uppercase">Member</h6>
            <h1 class="mb-4"><span class="text-primary text-uppercase">회원</span> 관리</h1>
        </div>


        <!-- Booking Start -->
        <div class="container-fluid mypage_booking wow fadeIn" data-wow-delay="0.1s" >
            <div class="container_search" >
                <div class="bg-white" style="padding: 20px;">
                   


                    <form>

                        <div class="row policy_row g-2">



                            <div class="row policy_row g-2" style="justify-content: right;">
                                <div class="col-md-auto">
                                    <select class="form-select">
                                        <option selected>전체</option>
                                        <option value="1">닉네임</option>
                                        <option value="2">탈퇴회원</option>
                                    </select>
                                </div>


                             
                                <div class="col-md-2">
                                    <input type="text" class="form-control datetimepicker-input font_light"
                                        placeholder="검색어를 입력하세요" />
                                </div>
                                <div class="col-md-auto">

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
                                    <table class="table table-hover admin_userTable">


                                        <thead>
                                            <tr> 
                                                <th data-sort="area">아이디</th>
                                                <th data-sort="category">닉네임</th>
                                                <th data-sort="title">이름</th>
                                                <th data-sort="author">연락처</th>
                                                <th data-sort="date">가입일자</th>
                                                <th data-sort="like"  colspan="2">신고이력</th>
                                                <th data-sort="like" >회원삭제 </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>aaㅇㄹㅇㅇㄹaa@naver.com</td>
                                                <td>동그란피자동그란피자</td>
                                                <td>김피자
                                                </td>
                                                <td>010-5555-4444</td>
                                                <td>2024-01-05</td>
                                                <td>게시글 신고 <span>2</span>회
                                                </td>
                                                <td>댓글 신고 <span>2</span>회
                                                </td>
                                                <td><a href="#"> <i class="fa fa-minus-circle fa-2x text-primary"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>aaaa@naver.com</td>
                                                <td>동그란피자</td>
                                                <td>김피자
                                                </td>
                                                <td>010-5555-4444</td>
                                                <td>2024-01-05</td>
                                                <td>게시글 신고 <span>2</span>회
                                                </td>
                                                <td>댓글 신고 <span>2</span>회
                                                </td>
                                                <td><a href="#"> <i class="fa fa-minus-circle fa-2x text-primary"></i></a></td>
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

        <nav aria-label="Page navigation" class="admin_page_nav wow fadeInUp">
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

<%@include file="../includes/footer.jsp"%>