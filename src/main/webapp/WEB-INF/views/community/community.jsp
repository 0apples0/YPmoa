
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                <div class="bg-white mypage_shadow" style="padding: 35px;">
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
                            </div>

                        </div>



                        <div>


                            <div class="row policy_row g-2">

                                <div class="row policy_row g-2">

                                    <div class="col-md-4">
                                        <input type="text" class="form-control datetimepicker-input font_light"
                                            placeholder="검색어를 입력하세요" />
                                    </div>
                                </div>






                            </div>

                            <div class="row g-2 justify-content-center policy_search_box">


                                <div class="col-md-1 ">

                                    <button class="btn btn-primary w-100">검색하기</button>
                                </div>

                                <div class="col-md-1_a">
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
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <div id="policy_checkbox">

                        <div class="col-md-1 policy_writeBtn">

                            <button class="btn btn-warning w-100">글쓰기</button>
                        </div>
                        <div class="col-md-1 policy_writeBtn">

                            <button class="btn btn-warning w-100">내글보기</button>
                        </div>
                    </div>
                </div>
            </div>

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
                                                <th data-sort="area">지역</th>
                                                <th data-sort="category">꿀팁분야</th>
                                                <th data-sort="title">제목</th>
                                                <th data-sort="author">작성자</th>
                                                <th data-sort="date">작성일</th>
                                                <th data-sort="like" id="commu_likeBtn">좋아요 <i class="fa fa-angle-up" aria-hidden="true"></i></th>
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
                                                <td><a href="#"></a>ㅇ안녕하세요ㄴㄴㄴㄴㄴㅇㅇㅇㅇㅇㄴㄴㄴㄴㄴㅇㅇㅇㅇㅇㄴㄴㄴㄴㄴㅇㅇㅇㅇㅇ</td>
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
    
	function loadTableData(){
		//Ajax:비동기 통신
		// - 프로세스의 완료를 기다리지 않고 동시에 여러 작업을 처리
		// - 전체 페이지를 새로고침하지 않고 필요한 부분만을 업데이트할 수 있다
		// - 자원과 시간을 절약, 깜박거리거나 멈추지 않고 부드럽게 작동
		
		$.ajax({
			url: "/community/community",// 요청할 서버 uri
			type: "POST", //요청방식 지정
			dataType : "json", // 서버 응답의 데이터 타입(대표적으로 json(name, value 형태), xml(태그 형태)이 있다)
			data:{
				pageNum : $("#actionForm").find("input[name='pageNum']").val(),
				amount : $("#actionForm").find("input[name='amount']").val(),
				type : $("#searchForm select[name='type']").val(),
				keyword : $("#searchForm").find("input[name='keyword']").val()
			},
			success: function(data){
				let boardTbody = $("#boardTable tbody");
				// for문,,, for(let item of items)
					
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
					row.append($("<td>").text(board.bno));
		
					let titleLink = $("<a>").attr("href", "/board/get?bno="+board.bno).text(board.title);			
					let titleTd = $("<td>").append(titleLink);
					
					row.append(titleTd);
					row.append($("<td>").text(board.content));
					row.append($("<td>").text(board.writer));
					row.append($("<td>").text(board.regdate));
					
					boardTbody.append(row);
				});
			},
			error: function(e){
				console.log(e);
			}
		});
	}
});







    </script>





<%@include file="../includes/footer.jsp" %>