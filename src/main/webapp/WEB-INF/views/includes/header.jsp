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
<!-- 버전 -->
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
                <div class="col-lg-3 bg-dark d-none d-lg-block">
                    <a href="${pageContext.request.contextPath}/"
                        class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <img src="${pageContext.request.contextPath}/resources/img/logo.svg" id="logo" />
                    </a>
                </div>
                
                <%-- 사용자에 따른 안내 문구 변경 --%>
                <div id="nickname_box">
                    <p id="nickname">
                       <c:choose>
                       <c:when test = "${user ne null && user.userType == 1}">
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
				<c:when test="${user ne null && user.userType == 1}">
				    <div  id="admin_login_menu_box">
                    <a href="#"> <img src="${pageContext.request.contextPath}/resources/img/adminMenu.png" id="adminMenu" /><p id="adminMenu_letter">관리자메뉴</p> </a>
                    <a href="/user/logout"> <img src="${pageContext.request.contextPath}/resources/img/logout.png" id="admin_logout" /><p class="register_letter">로그아웃</p> </a>
                	</div>
				</c:when>
                <c:when test="${user eq null && user.nick eq null}">
                <div id="login_menu_box_guest">
                    <a href="/user/login"> <img src="${pageContext.request.contextPath}/resources/img/login.png" id="login" /><p id="login_letter">로그인</p> </a>
                    <a href="/user/register"> <img src="${pageContext.request.contextPath}/resources/img/register.png" id="register" /><p id="register_letter_guest">회원가입</p> </a>
                </div>
                </c:when>
                <c:otherwise>
                <div id="login_menu_box">
                    <a href="#"> <img src="${pageContext.request.contextPath}/resources/img/notify.png" id="notify" />
                        <p id="notify_letter">알림 <span class="badge">new</span></p>
                    </a>
                  <a href="#"> <img src="${pageContext.request.contextPath}/resources/img/logout.png" id="logout" />
                        <p class="register_letter">로그아웃</p>
                    </a>
                </div>
                </c:otherwise>
                </c:choose>
            </div>
        </div>
        <div class="col-lg-12">
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                <a href="index.html" class="navbar-brand d-block d-lg-none">
                    <h1 class="m-0 text-primary text-uppercase">청년정책모아</h1>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav py-0" id="main_menu">
                        <a href="/policy/policy" class="nav-item nav-link" style="margin-left:80px">정책정보</a>
                        <a href="/suggest/suggest" class="nav-item nav-link">정책건의</a>
                        <a href="/community/community" onclick="resetSettings()" class="nav-item nav-link">꿀팁모음</a>
                        <a href="index.html" class="nav-item nav-link">위시리스트</a>
                        <a href="#" class="nav-item nav-link" onclick="checkAndNavigateToMypage('${user.email}')">마이페이지</a>
                    </div>
                </div>
            </nav>
        </div>
   </div>
   <script>
   function checkAndNavigateToMypage(Email) {
       // 여기에서 로그인 여부를 확인하고, 필요한 경우 알림창을 띄우거나 마이페이지로 이동
       var user_email = null;
       user_email = Email;
       
       if (!user_email) {
           // 로그인 페이지로
           alert("로그인이 필요한 서비스입니다.");
           window.location.href = "/user/login";
       } else {
           // 마이페이지로 이동
           window.location.href = "/user/mypage?Email=" + user_email;
       }
   }
   
   function resetSettings(){
	   localStorage.setItem('switchMine', false);
	   
   }
</script>
   
</body>


<!-- Header End -->