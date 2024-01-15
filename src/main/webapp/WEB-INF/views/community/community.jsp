
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/header_guest.jsp" %>


        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Community</h1>

                    <p id="login_p">정책정보, 신청방법, 후기 등 꿀팁을 공유하세요!</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title text-center text-primary text-uppercase">Community</h6>
            <h1 class="mb-5"><span class="text-primary text-uppercase">꿀팁</span> 모음</h1>
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
                                    <table id="communityBoardTable" class="table table-hover commu_table commu_table_a">


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
        <%-- 페이징 적용 --%>
        <nav aria-label="Page navigation" class="commu_page_nav wow fadeInUp">
            <ul class="pagination justify-content-center policy_page_navbox">


            <li class="paginate_button policy_page-item_prev prev">
               <c:choose>
               <c:when test="${(pageMaker.cri.pageNum - pageMaker.cri.amount) >=1}">
                  <a class="page-link" href="" onclick="gotoPrevprev(${pageMaker.cri.pageNum}, ${pageMaker.cri.amount})"><i class="fa fa-angle-double-left"
                           aria-hidden="true"></i></a>
               </c:when>
               <c:otherwise>
                  <a class="page-link"><i class="fa fa-angle-double-left"
                           aria-hidden="true"></i></a>  
               </c:otherwise>     
               </c:choose>            
            </li> 
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


            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                <li class="paginate_button page-item ${pageMaker.cri.pageNum == num ? 'active' : ''}">
                    <a class="page-link" href="${num}">${num}</a>
                </li>
            </c:forEach>               

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
                  <a class="page-link" href="" onclick="gotoNextPage('${pageMaker.endPage}')"><i class="fa fa-angle-right"
                           aria-hidden="true"></i></a>   
               </c:otherwise>     
              </c:choose>            
            </li>              
              
            <li class="paginate_button page-item next">
               <c:choose>
               <c:when test="${pageMaker.realEnd == pageMaker.endPage}">
                  <a class="page-link"><i class="fa fa-angle-double-right"
                           aria-hidden="true"></i></a>  

               </c:when>
               <c:otherwise>
                  <a class="page-link" href="" onclick="gotoNextnext(${pageMaker.cri.pageNum}, ${pageMaker.cri.amount})">
                  			<i class="fa fa-angle-double-right"
                           aria-hidden="true"></i></a>
               </c:otherwise>     
               </c:choose>            
            </li> 
            

            </ul>
        </nav>
        <form id="actionForm" action="/community/community" method="get">
         <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
         <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
      </form>
    </div>


    <script>

    function gotoNextPage(endPage) {
        // 아무 동작 없음
        console.log("gotoNextPage function called");
        console.log("endPage : " + endPage);
        //event.preventDefault();
        var nextPage = Number(endPage) + 1
        window.location.href="http://localhost:8090/community/community?pageNum="+ nextPage + "&amount=10";
    }
    
    function gotoPrevprev(pageNum, pageAmount){
    	console.log("gotoPrevprev function called");
    	var prevprevPage = parseInt((pageNum-pageAmount)/pageAmount)*pageAmount+1
    	console.log(prevprevPage);
    	window.location.href="http://localhost:8090/community/community?pageNum="+ prevprevPage + "&amount=" + pageAmount;
    }
    
    function gotoNextnext(pageNum, pageAmount){
    	var nextnextPage = (parseInt((pageNum-1)/pageAmount)+1)*pageAmount+1;
    	console.log("nextnextPage : "+ nextnextPage);
    	window.location.href="http://localhost:8090/community/community?pageNum="+ nextnextPage + "&amount=" + pageAmount;
    }
    
$(document).ready(function () {
    // 좋아요 th를 클릭할 때마다 아이콘 변경(오름-내림-원래로)
    $("#commu_likeBtn").on("click", function () {
        var icon = $(this).find("i");

        if (icon.hasClass("fa-angle-up")) {
            icon.removeClass("fa-angle-up").addClass("fa-angle-down");
        } else if (icon.hasClass("fa-angle-down")) {
            icon.removeClass("fa-angle-down").addClass("fa-sort");
        } else {
            icon.removeClass("fa-sort").addClass("fa-angle-up");
        }

      
    });
    
    loadTableData();
    
    function loadTableData(){

       $.ajax({
          url: "/community/community",// 요청할 서버 uri
          type: "POST", //요청방식 지정
          dataType : "json", // 서버 응답의 데이터 타입(대표적으로 json(name, value 형태), xml(태그 형태)이 있다)
          data:{
            pageNum : $("#actionForm").find("input[name='pageNum']").val(),
            amount : $("#actionForm").find("input[name='amount']").val()
          },
          success: function(data){
             let boardTbody = $("#communityBoardTable tbody");
             
                
             //Ajax가 반환한 데이터를 "순회"=='반복자'하여 처리
             //for(let item of items) -> items == data, item ==board 역할
             $.each(data, function(index, board){
                
                let regDate=new Date(board.regDate);
                // numeric: 숫자, 2-digit: 두자리 숫자 형식
                let options = {year:"numeric", month:"2-digit", day:"2-digit", hour:"2-digit", minute:"2-digit"};
                let formateDate = regDate.toLocaleString("ko-KR", options);

                // 데이터를 순회하여 테이블 목록을 불러와 테이블 바디에 추가
                // 동적으로 데이터 처리
                let row = $("<tr>");
                row.append($("<td>").text(board.region));
                row.append($("<td>").text(board.category));
                let titleLink = $("<a>").attr("href", "/community/get?bno="+board.bno).text(board.title);         
                let titleTd = $("<td>").append(titleLink);
                
                row.append(titleTd);
                row.append($("<td>").text(board.writer));
                row.append($("<td>").text(formateDate));
                
                 // 새로운 <td> 엘리먼트 생성 (이미지와 span 포함)
                 let likeTd = $("<td>");
                 let likeImg = $("<img>").addClass("commu_like").attr("src", "${pageContext.request.contextPath}/resources/img/checkLike.png");
                 let likeSpan = $("<span>").text("3개"); // **이곳에 좋아요 수 반영 필요

                 // 이미지와 span을 <td> 엘리먼트에 추가
                 likeTd.append(likeImg).append(likeSpan);

                 // 새로운 <td> 엘리먼트를 행에 추가
                 row.append(likeTd);

                boardTbody.append(row);
             });
          },
          error: function(e){
             console.log(e);
          }
       });
      let actionForm = $("#actionForm");
      $(".paginate_button a").on("click", function(e){
         //기존에 가진 이벤트를 중단(기본적으로 수행하는 행동을 막는 역할)
         e.preventDefault(); //이벤트 초기화
         //pageNum 값을 사용자가 누른 a태그의 href 속성값으로 변경
         console.log(actionForm);
         /*
         actionForm.find("input[name='pageNum']").val($(this).attr("href"));
         actionForm.submit();
         */
         console.log("href : " + $(this).attr("href"));
          // pageNum 값을 사용자가 누른 a태그의 href 속성값으로 변경
          let newPageNum = $(this).attr("href");
         console.log("newPageNum : " + newPageNum);
          // pageNum이 비어있지 않은 경우에만 submit 실행
          if (newPageNum) {
              actionForm.find("input[name='pageNum']").val(newPageNum);
              actionForm.submit();
          }
      });
    }

});







    </script>





<%@include file="../includes/footer.jsp" %>