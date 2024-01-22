
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Comment</h1>

                    <p id="login_p">신고된 댓글 관리</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title text-center text-primary text-uppercase">Reported comment</h6>
            <h1 class="mb-4"><span class="text-primary text-uppercase">댓글</span> 관리</h1>
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
                                        <option selected>게시판</option>
                                        <option value="1">정책</option>
                                        <option value="1">건의</option>
                                        <option value="1">꿀팁</option>
                                    </select>
                                </div>
                                <div class="col-md-auto">
                                    <select class="form-select">
                                        <option selected>전체</option>
                                        <option value="1">닉네임</option>
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
                                    <table class="table table-hover admin_boardTable">


                                        <thead>
                                            <tr> 
                                                <th data-sort="board">게시판</th>
                                                <th data-sort="nickname">닉네임</th>
                                                <th data-sort="title">댓글내용</th>
                                                <th data-sort="date">작성일</th>
                                                <th data-sort="reportNum">신고횟수</th>
                                                <th data-sort="delete">댓글삭제</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>정책</td>
                                                <td>동그란피자</td>
                                                <td>
                                                    너네몇번찍엇냐; 양심잇으면 대댓 ㅋㅋ
                                                    너네몇번찍엇냐; 양심잇으면 대댓 ㅋㅋ
                                                    너네몇번찍엇냐; 양심잇으면 대댓 ㅋㅋ
                                                    너네몇번찍엇냐; 양심잇으면 대댓 ㅋㅋ
                                                    너네몇번찍엇냐; 양심잇으면 대댓 ㅋㅋ
                                                </td>
                                                <td>2024-05-11
                                                </td>
                                              
                                                <td class="admin_boardReport"><span>2</span>회
                                                </td>
                                                <td><a href="#"> <i class="fa fa-trash fa-2x text-primary admin_reportModal"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>꿀팁</td>
                                                <td>부드러운아보카도</td>
                                                <td>진짜 아보카도혐오하는사람들 디져라</td>
                                                <td>2024-05-11  
                                                </td>
                                              
                                                <td class="admin_boardReport"><span>2</span>회
                                                </td>
                                                <td><a href="#"> <i class="fa fa-check fa-2x text-primary"></i></a></td> 
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


    
        <!-- Modal -->
        <div class="modal fade admin_modalInfo" id="modalCenter" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalCenterTitle">댓글신고</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div style="margin: 5px; margin-bottom: 20px;">
                                <div>- 불건전한 내용 <span>2</span>회</div>
                                <div>- 영리목적/홍보성 <span>2</span>회</div>
                                <div>- 개인정보노출 <span>2</span>회</div>
                                <div>- 기타 <span>2</span>회</div>

                        </div>
                        <div class="row">
                            <div class="col mb-3 admin_modalBox">
                               <table class="table table-bordered admin_boardModal">
                                <thead>
                                    <th>신고자<br>닉네임</th>
                                    <th>기타 신고 사유</th>
                                    <th>신고날짜</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>최바나나</td>
                                        <td>
                                            바나나를 싫어한다고 해서 기분나빠요
                                            바나나를 싫어한다고 해서 기분나빠요
                                            바나나를 싫어한다고 해서 기분나빠요
                                            바나나를 싫어한다고 해서 기분나빠요
                                            바나나를 싫어한다고 해서 기분나빠요
                                            바나나를 싫어한다고 해서 기분나빠요

                                        </td>
                                        <td>24-02-16</td>
                                    </tr>
                                    <tr>
                                        <td>박감귤</td>
                                        <td>
                                            감귤이 최고다

                                        </td>
                                        <td>24-02-16</td>
                                    </tr>
                                    <tr>
                                        <td>김원숭이</td>
                                        <td>
                                            우끼끼 우끼끼 우끼끼 우끼끼
                                             우끼끼 우끼끼 우끼끼 우끼끼
                                              우끼끼 우끼끼 우끼끼 우끼끼

                                        </td>
                                        <td>24-02-16</td>
                                    </tr>
                                </tbody>
                               </table>
                               
       
                            </div>
                            
                        </div>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
                      

                    </div>
                </div>
            </div>
        </div>
        
       <!-- 신고 버튼 Modal -->
        <div class="modal fade admin_Modal" id="modalCenter" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalCenterTitle">게시글 관리</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" >
                                <div style="text-align:center">해당 신고를 처리할 방법을 선택하세요</div>
                                
                    </div>
                    <div class="modal-footer" style="justify-content:center">
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal">삭제</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">처리완료</button>
                      

                    </div>
                </div>
            </div>
        </div>
        
  
    <script>

	// 신고 개수 누르면 모달창
	$(".admin_boardReport").click(function(event) {
		$(".admin_modalInfo").modal("show");
	});

	
	$(".admin_reportModal").click(function(event) {
		event.preventDefault();
		$(".admin_Modal").modal("show");
	});
	</script>
    
    
    
    
<%@include file="../includes/footer.jsp"%>