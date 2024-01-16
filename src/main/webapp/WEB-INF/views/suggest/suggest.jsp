<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/header.jsp"%>

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center ">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Suggest</h1>
            <p id="login_p">새로운 정책이나 기존 정책에 대한 의견을 자유롭게 나눠보세요!</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
    <h6 class="section-title text-center text-primary text-uppercase">Suggest</h6>
    <h1 class="mb-5"><span class="text-primary text-uppercase">정책</span> 건의</h1>
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
                            <select class="form-select" >
                               <option selected>지역선택</option>
                                <option value="1">부천시</option>
                                <option value="2">수원시</option>
                                <option value="3">광명시</option>
                            </select>
                        </div>
                        <div class="col-md-3_b">
                            <select class="form-select" >
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
                                placeholder="검색어를 입력하세요"/>
                        </div>
                        <div class="col-md-1_a ">
                            <button class="btn btn-primary w-100" >검색하기</button>
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
<!-- Booking End -->
<div class="container-xxl py-5_a">
    <div class="container">
        <div class="row g-4">
			<div class="wow fadeIn" data-wow-delay="0.1s">
				<div id="policy_checkbox">
	                <div class="custom-control custom-checkbox">
	                    <input type="checkbox" class="custom-control-input" id="customCheck4">
	                    <label class="custom-control-label" for="customCheck4">좋아요 많은 순</label>
	                </div>
            	</div>
             <!-- table section -->
             <div class="col-md-12">
                 <div class="white_shd_a full">
                     <div class="table_section padding_infor_info_a">
                         <div class="table-responsive-sm">
                             <table id="suggestBoardTable" class="table table-hover commu_table commu_table_a">
                                 <thead>
                                     <tr>
                                         <th data-sort="area">지역</th>
                                         <th data-sort="category">건의분야</th>
                                         <th data-sort="title">제목</th>
                                         <th data-sort="author">작성자</th>
                                         <th data-sort="date">작성일</th>
                                         <th data-sort="like" id="commu_likeBtn">좋아요</th>
                                     </tr>
                                 </thead>
                                 <tbody>
                                    <!-- 여기에 동적으로 생성되는 내용이 들어갈 자리입니다. -->
                                 </tbody>
                             </table>
                         </div>
                     </div>
                 </div>
                 <div id="policy_checkbox">
                     <div class="col-md-1 policy_writeBtn">
                         <button class="btn btn-warning w-100" id="sug_write">글쓰기</button>
                     </div>
                     <div class="col-md-1 policy_writeBtn" style="margin-right: 10px;">
                         <button id="gotoMineBtn" class="btn btn-warning w-100">내글보기</button>
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
               <c:when test="${pageMaker.cri.pageNum >1}">
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
               <c:when test="${pageMaker.cri.pageNum < pageMaker.endPage}">
                  <a class="page-link" href="${pageMaker.cri.pageNum +1 }"><i class="fa fa-angle-right"
                           aria-hidden="true"></i></a>
               </c:when> 
               <c:when test="${pageMaker.cri.pageNum+1 > pageMaker.realEnd}">
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
        <form id="actionForm" action="/suggest/suggest" method="get">
	        <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
	        <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		</form>
		<form id="usernickForm" action="/suggest/suggest" method="get">
			<input type="hidden" name="writer" value="${user.nick}">
		</form>
</div>

<script>
	var baseURL = "http://localhost:8090/suggest/suggest";
    var contextPath = "${pageContext.request.contextPath}";
    let storedValue = localStorage.getItem('switchMine');
    let switchMine = storedValue === 'false' || storedValue === null || storedValue === undefined ? false : true;
    
	function gotoNextPage(endPage) {
	    // 아무 동작 없음
	    console.log("gotoNextPage function called");
	    console.log("endPage : " + endPage);
	    var nextPage = Number(endPage) + 1
	    window.location.href = baseURL + "?pageNum=" + nextPage + "&amount=10";	
	}
	
	function gotoPrevprev(pageNum, pageAmount){
		console.log("gotoPrevprev function called");
		var prevprevPage = parseInt((pageNum-pageAmount)/pageAmount)*pageAmount+1
		console.log(prevprevPage);
	       localStorage.setItem('switchMine', switchMine);
		window.location.href = baseURL + "?pageNum=" + prevprevPage + "&amount=" + pageAmount;
	}
	
	function gotoNextnext(pageNum, pageAmount){
		var nextnextPage = (parseInt((pageNum-1)/pageAmount)+1)*pageAmount+1;
		console.log("nextnextPage : "+ nextnextPage);
	       localStorage.setItem('switchMine', switchMine);
		window.location.href = baseURL + "?pageNum=" + nextnextPage + "&amount=" + pageAmount;
	}
	

    $(document).ready(function () {
    	
    	$("#gotoMineBtn").on("click", function(e){
    	       let usernickForm = $("#usernickForm");
    	       console.log("원래 스위치 값: "+switchMine);
    	       switchMine = !switchMine;
    	       console.log("버튼눌러서 값이 바뀌었니?:"+switchMine);
    	       localStorage.setItem('switchMine', switchMine);
    	       //loadTableData(switchMine);
    	       let writer = $("#usernickForm").find("input[name='writer']").val();
    	       if(switchMine){
    	    	   e.preventDefault();
    	    	   usernickForm.submit();

    	    	   
    	       }
    	    });   
    	    loadTableData(switchMine);
    	    function loadTableData(switchMine){
    	        
    	       let data;
    	       /*console.log("loadTableData의 switchmine:"+switchMine);
    	       data = {
    	               pageNum : $("#actionForm").find("input[name='pageNum']").val(),
    	               amount : $("#actionForm").find("input[name='amount']").val()
    	       };
    	       */
    	       if(switchMine){
    	           data = {
    	                   pageNum : $("#actionForm").find("input[name='pageNum']").val(),
    	                   amount : $("#actionForm").find("input[name='amount']").val(),
    	                   writer: $("#usernickForm").find("input[name='writer']").val()
    	                };  
    	       } else{
    	           data = {
    	                   pageNum : $("#actionForm").find("input[name='pageNum']").val(),
    	                   amount : $("#actionForm").find("input[name='amount']").val(),
    	                   writer: ''
    	                };      	   
    	       }

    	  

    	        console.log(data);
    	       $.ajax({
    	          url: "/suggest/suggest",// 요청할 서버 uri
    	          type: "POST", //요청방식 지정
    	          dataType : "json", // 서버 응답의 데이터 타입(대표적으로 json(name, value 형태), xml(태그 형태)이 있다)
    	          data:data,
    	          success: function(data){
    	      	  
    	             let boardTbody = $("#suggestBoardTable tbody");
    	             boardTbody.empty(); // 기존 테이블 행 삭제 추추추가!!!
    	                
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
    	                let titleLink = $("<a>").attr("href", "/suggest/get?bno="+board.bno).text(board.title);         
    	                let titleTd = $("<td>").append(titleLink);
    	                
    	                row.append(titleTd);
    	                row.append($("<td>").text(board.writer));
    	                row.append($("<td>").text(formateDate));
    	                
    	                 // 새로운 <td> 엘리먼트 생성 (이미지와 span 포함)
    	                 let likeTd = $("<td>");
    	                 let likeImg = $("<img>").addClass("commu_like").attr("src", "${pageContext.request.contextPath}/resources/img/checkLike.png");
    	                 // 수정된 부분: 서버에서 가져온 like 값 사용
    	                 let likeSpan = $("<span>").text(board.like + "개");


    	                 // 이미지와 span을 <td> 엘리먼트에 추가
    	                 likeTd.append(likeImg).append(likeSpan);

    	                 // 새로운 <td> 엘리먼트를 행에 추가
    	                 row.append(likeTd);

    	                boardTbody.append(row);
    	                console.log("pagemaker: "+${pageMaker.realEnd});
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
    	    
    	    loadTableData(switchMine);
    	    

    	});

</script>

<%@include file="../includes/footer.jsp" %>
