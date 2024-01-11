<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<head>

    <meta charset="utf-8">
    <title>청년정책모아</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
	
	<!-- 버전 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4/css/bootstrap.min.css">
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

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/css_main/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/css_main/style.css" rel="stylesheet">
<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css_main/style.css" rel="stylesheet">

<!-- 원본 css 여기까지 -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css_pluto/style_pluto.css" />

<!-- css2 -->
<script src="${pageContext.request.contextPath}/resources/assets/vendor/js/helpers.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendor/fonts/boxicons.css" />

<!-- Vendors CSS -->
<script src="${pageContext.request.contextPath}/resources/assets/vendor/js/helpers.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/config.js"></script>

<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>

<body>
    <div class="container-xxl bg-white p-0">


        <!-- Header Start -->
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">
                    <a href="#"
                        class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <img src="${pageContext.request.contextPath}resources/img/logo.svg" id="logo" />

                    </a>

                </div>
                <div id="nickname_box">
                    <p id="nickname">닉네임님 환영합니다!</p>
                </div>
                <div id="login_menu_box">

                    <a href="#"> <img src="${pageContext.request.contextPath}resources/img/notify.png" id="notify" />
                        <p id="notify_letter">알림</p>
                    </a>
                  <a href="#"> <img src="${pageContext.request.contextPath}resources/img/logout.png" id="logout" />
                        <p class="register_letter">로그아웃</p>
                    </a>
                </div>

            </div>
        </div>
        <div class="col-lg-12">

            <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                <a href="index.html" class="navbar-brand d-block d-lg-none">
                    <h1 class="m-0 text-primary text-uppercase">모아모아</h1>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0" id="main_menu">

                        <a href="index.html" class="nav-item nav-link">정책정보</a>
                        <a href="index.html" class="nav-item nav-link">정책건의</a>
                        <a href="index.html" class="nav-item nav-link">꿀팁모음</a>
                        <a href="index.html" class="nav-item nav-link">위시리스트</a>
                        <a href="index.html"  class="nav-item nav-link" id="myPage" class="nav-item nav-link">마이페이지</a>
                    </div>

                </div>
            </nav>
        </div>
        <!-- Header End -->