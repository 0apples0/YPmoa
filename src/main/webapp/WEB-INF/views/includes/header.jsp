<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>청년정책모아</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<!-- Favicon -->
<link href="${pageContext.request.contextPath}/resources/img/favicon.ico" rel="icon">
<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css_main/bootstrap.min.css" rel="stylesheet">
<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css_main/style.css" rel="stylesheet">
<!-- 원본 css 여기까지-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css_pluto/style_pluto.css" />
<!-- css2 -->
<script src="${pageContext.request.contextPath}/resources/assets/vendor/js/helpers.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendor/fonts/boxicons.css" />
<!-- Vendors CSS -->
<script src="${pageContext.request.contextPath}/resources/assets/vendor/js/helpers.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/config.js"></script>
<!-- list CSS-->
<script src="${pageContext.request.contextPath}/resources/css_sb/vendor/bootstrap/css/bootstrap.min.css"></script>
<!-- 모달 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- 부트스트랩 및 팝퍼.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- 글쓰기 에디터 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.js"></script>

<!-- Summernote 추가 스크립트 -->
<script src="${pageContext.request.contextPath}/resources/summerNote/js/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/summerNote/js/lang/summernote-ko-KR.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summerNote/css/summernote-lite.css">

</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Header Start -->
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-lg-block mobile_logo_box">
                    <a href="${pageContext.request.contextPath}/"
                        class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <img src="${pageContext.request.contextPath}/resources/img/logo.svg" id="logo" />
                    </a>
                </div>
                
                <%-- 사용자에 따른 안내 문구 변경 --%>
                <div id="nickname_box">
                    <p id="nickname">
                       <c:choose>
                       <c:when test = "${user ne null && user.userType == 0}">
                       	  관리자님,
                       </c:when>
                       <c:when test="${user ne null && user.nick ne null}">
                          ${user.nick}님, 
                       </c:when>
                       </c:choose>  
                          방문을 환영합니다!
                    </p>
                </div>
  
 				<%-- 사용자에 따른 상단 메뉴 변경 --%>               
                <c:choose>
				<c:when test="${user ne null && user.userType == 0}">
				    <div  id="admin_login_menu_box">
                    <a href="/adminmenu/adminmenu" style="margin-right:5px"> <img src="${pageContext.request.contextPath}/resources/img/adminMenu.png" id="adminMenu" /><p id="adminMenu_letter">관리자메뉴</p> </a>
                    <a href="/user/logout"> <img src="${pageContext.request.contextPath}/resources/img/logout.png" id="admin_logout" /><p class="register_letter">로그아웃</p> </a>
                	</div>
				</c:when>
                <c:when test="${user eq null && user.nick eq null}">
                <div id="login_menu_box_guest">
                    <a href="/user/login" style="margin-right:8px"> <img src="${pageContext.request.contextPath}/resources/img/login.png" id="login" /><p id="login_letter">로그인</p> </a>
                    <a href="/user/register"> <img src="${pageContext.request.contextPath}/resources/img/register.png" id="register" /><p id="register_letter_guest">회원가입</p> </a>
                </div>
                </c:when>
                <c:otherwise>
                <div id="login_menu_box">
                    <a href="/wish/wish" class="notify_letter"> <img src="${pageContext.request.contextPath}/resources/img/notify.png" id="notify" />
                       <span class="login_alarmLetter">알림</span> <span class="badge" hidden>new</span></a>
                    
                  <a href="/user/logout"> <img src="${pageContext.request.contextPath}/resources/img/logout.png" id="logout" />
                        <p class="register_letter">로그아웃</p>
                    </a>
                </div>
                </c:otherwise>
                </c:choose>
                
                
                <%-- mobile: 사용자에 따른 안내 문구 변경 --%>
                <div id="nickname_box_mobile" style="display: none">
                    <p id="nickname">
                       <c:choose>
                       <c:when test = "${user ne null && user.userType == 0}">
                       	  관리자님,
                       </c:when>
                       <c:when test="${user ne null && user.nick ne null}">
                          ${user.nick}님, 
                       </c:when>
                       </c:choose>  
                          방문을 환영합니다!
                    </p>
                </div>
            </div>
        </div>
        <div class="col-lg-12 mobile_header">
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0 mobile_logoBox">
              	
              	
              	
                <button type="button" class="navbar-toggler" >
                    <i class="fa fa-bars text-secondary"></i>
                </button>
                <div class="collapse navbar-collapse justify-content-between mobile_menu" >
                    <div class="navbar-nav py-0" id="main_menu">
                        <a href="/policy/policy" class="nav-item nav-link mobile_menu_first" style="margin-left:80px">정책정보</a>
                        <a href="/suggest/suggest" class="nav-item nav-link">정책건의</a>
                        <a href="/community/community" onclick="resetSettings()" class="nav-item nav-link">꿀팁모음</a>
                        <form id="myForm" action="/wish/wish" method="post" class="nav-item nav-link" style="margin-right:80px; padding-right:0px">
						    <a href="#" onclick="submitForm('${user.email}')" id="header_wish">위시리스트</a><br>
						</form>
                        <a href="#" class="nav-item nav-link" onclick="checkAndNavigateToMypage('${user.email}', 'mypage')">마이페이지</a>
                    </div>
                </div>
            </nav>
        </div>
   </div>
   
   <div class="modal fade" id="noAlamModal" tabindex="-1"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">위시리스트</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body" style="font-family: 'LINESeedKR-Bd_light';">마감일이 일주일 이내인 정책이 없습니다.</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" id="confirmDeleteBtn" data-bs-dismiss="modal">확인</button>
				
			</div>
		</div>
	</div>
</div>
   
   
	<form action="/wish/wish" method="POST" id="alertForm">
		<input type="hidden" name="isAlert" value="isAlert">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="amount" value="8">
		<input type="hidden" name="rgnSeNm" value="${pageMaker.cri.rgnSeNm }">
		<input type="hidden" name="policyTypeNm" value="${pageMaker.cri.policyTypeNm }"> 
		<input type="hidden" name="type" value="${pageMaker.cri.type }"> 
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
			<input type="hidden" name="selectedFilter" value="isAlert">
	</form>

   <form id="usernickForm" action="community/community" method="post">
		<input type="hidden" name="writer" value="${user.nick}">
		<input type="hidden" name="wishUser" value="${user.email}">
	</form>
	
	<input type="hidden" name="chkUserType" value="${user.userType }">
	
   <script>
   function checkAndNavigateToMypage(Email) {
       // 여기에서 로그인 여부를 확인하고, 필요한 경우 알림창을 띄우거나 마이ㄹ페이지로 이동
       var user_email = null;
       user_email = Email;
       console.log(user_email);
       
       var userTypeValue = document.getElementsByName('chkUserType')[0].value;

       if (!user_email) {
           // 로그인 페이지로
           alert("로그인이 필요한 서비스입니다.");
           window.location.href = "/user/login";
       } else {
           if(userTypeValue == 0){
        	   alert("관리자는 이용할 수 없는 기능입니다.");
           }else{
        	   window.location.href = "/user/mypage?Email=" + user_email;
           }
       }
   }
   
   function resetSettings(){
	   localStorage.setItem('switchMine', false);
	   
   }
   
   // 위시리스트 로그인 상태만 이동
   function submitForm(Email) {
	   var user_email = null;
       user_email = Email;
       console.log("로그인"+user_email);
       
       var userTypeValue = document.getElementsByName('chkUserType')[0].value;
       
       if(!user_email){
    	   alert("로그인이 필요한 서비스입니다.");
           window.location.href = "/user/login";
       }else{
    	   if(userTypeValue == 0){
        	   alert("관리자는 이용할 수 없는 기능입니다.")
           }else{
    	   	   document.getElementById("myForm").submit();
           }
       }
   }
 
   function endAlarm() {
	       $.ajax({
	         type: "GET",
	         url: "/wish/endAlarm",
	         data: {wishUser: $("#usernickForm").find("input[name='wishUser']").val()},
	         success: function(data) {
	        	console.log("ajax 알람 값: "+data);
	        	if (data > 0) {
	        	    $('.badge').removeAttr('hidden');
	        	} else {
	        	    $('.badge').attr('hidden', 'hidden');
	        	}
	         },
	         error: function(xhr, status, error) {
	           console.error("알람불러오기 실패:", status, error);
	         }
	       });
	 }

   window.onload = function() {
	   

	   endAlarm();
	   
	   $("a[href='/wish/wish']").click(function(e){
	        e.preventDefault();
	        if ($(".badge").is(":hidden")) {
	            // hidden 속성이 있는 경우 모달을 띄움
	            showModal();
	        } else {
	            // hidden 속성이 없는 경우 폼 제출
	            $("#alertForm").submit();
	        }
	    });
	   
	   
	   function showModal() {
		    // noAlamModal id를 가진 모달을 띄움
		    $("#noAlamModal").modal("show");
		}
	   
	   
	   var $dropdownToggle = $(".navbar-toggler");
	    var $dropdownMenu = $(".mobile_menu");

	    $dropdownToggle.click(function() {
	        if ($dropdownMenu.is(":visible")) {
	            $dropdownMenu.stop().slideUp();
	        } else {
	            $dropdownMenu.stop().slideDown();
	        }
	    });


	 }; // window.onload끝

</script>
   
</body>


<!-- Header End -->