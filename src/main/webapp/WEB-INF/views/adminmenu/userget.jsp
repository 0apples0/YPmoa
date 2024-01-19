
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>"%>


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
                                        <%-- 
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
                                          --%> 
                                          
                                          

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                  



                    </div>
                </div>
            </div>
        </div>

        <%-- 페이징 적용 --%>
        <nav aria-label="Page navigation" class="commu_page_nav wow fadeInUp">
            <ul class="pagination justify-content-center policy_page_navbox">

			<%-- <<버튼: 10페이지 이전 --%>
            <li class="paginate_button policy_page-item_prev prev">
               <c:choose>
               <c:when test="${(pageMaker.cri.pageNum - pageMaker.cri.amount) >=1}">
                  <a class="page-link" href="${pageMaker.cri.prevprevPage}"><i class="fa fa-angle-double-left"
                           aria-hidden="true"></i></a>
               </c:when>
               <c:otherwise>
                  <a class="page-link"><i class="fa fa-angle-double-left"
                           aria-hidden="true"></i></a>  
               </c:otherwise>     
               </c:choose>            
            </li> 
            <%-- <버튼: 1페이지 이전 --%>
            <li class="paginate_button policy_page-item prev">
               <c:choose>
               <c:when test="${(pageMaker.cri.pageNum) >1}">
               	
                  <a class="page-link" href="${pageMaker.cri.pageNum -1 }"><i class="fa fa-angle-left"
                           aria-hidden="true"></i></a>
                    </c:when>
                    <c:otherwise>
                  <a class="page-link"><i class="fa fa-angle-left"
                           aria-hidden="true"></i></a>  
                    </c:otherwise>     
               </c:choose>            
            </li>            

			<%-- 페이지 넘버 --%>
            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                <li class="paginate_button page-item ${pageMaker.cri.pageNum == num ? 'active' : ''}">
                    <a class="page-link" href="${num}">${num}</a>
                </li>
            </c:forEach>

			<%-- >버튼: 1페이지 이동 --%>
            <li class="paginate_button policy_page-item next">
               <c:choose>
               <c:when test="${(pageMaker.cri.pageNum < pageMaker.endPage)}">
                  <a class="page-link" href="${pageMaker.cri.pageNum +1 }"><i class="fa fa-angle-right"
                           aria-hidden="true"></i></a>
               </c:when> 
               <c:when test="${(pageMaker.cri.pageNum+1 > pageMaker.realEnd)}">
                  <a class="page-link"><i class="fa fa-angle-right"
                           aria-hidden="true"></i></a>
               </c:when>               
               <c:otherwise>
                  <a class="page-link" href="${pageMaker.endPage+1}"><i class="fa fa-angle-right"
                           aria-hidden="true"></i></a>   
               </c:otherwise>     
              </c:choose>            
            </li>              
            
            <%-- >>버튼: 10페이지 이동 --%>  
            <li class="paginate_button page-item next">
               <c:choose>
               <c:when test="${pageMaker.realEnd == pageMaker.endPage}">
                  <a class="page-link"><i class="fa fa-angle-double-right"
                           aria-hidden="true"></i></a>  

               </c:when>
               <c:otherwise>
                  <a class="page-link" href="${pageMaker.cri.nextnextPage}">
                           <i class="fa fa-angle-double-right"
                           aria-hidden="true"></i></a>
               </c:otherwise>     
               </c:choose>            
            </li> 
            

            </ul>
        </nav>
        <form id="actionForm" action="/adminmenu/userget" method="post">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		</form>
    </div>
<script>
$(document).ready(function () {
	//loadTableData();
	
});

</script>
<%@include file="../includes/footer.jsp"%>