<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.moa.youthpolicy.user.domain.UserVO"%>

<%@include file="../includes/header_member.jsp"%>

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
	<div class="page-header-inner" id="login_banner">
		<div class="container text-center ">
			<h1 class=" display-3 text-white mb-3 animated slideInDown"
				id="login_h1">My Page</h1>

			<p id="login_p">마이페이지에서 나만의 맞춤설정과 내 정보를 수정해보세요!</p>



		</div>
	</div>
</div>
<!-- Page Header Enfd -->


<!-- Booking Start -->
  <%
            // 컨트롤러에서 모델에 담긴 user 객체 가져오기
            UserVO user = (UserVO) request.getAttribute("user");

            if (user != null) {
        %>
        <form name="myform" action="/user/modify" method="post">
            <p>
                <label for="Email">아이디(이메일)</label>
                <input type="text" id="Email" name="Email" value="<%= user.getEmail() %>" readonly="readonly"/>
            </p>
            <p>
                <label for="PW">비밀번호</label>
                <a href="/user/modify?Email=<%= user.getEmail() %>" id="myPage">비밀번호 변경</a>
            </p>
            <p>
                <label for="name">이름</label>
                <input type="text" id="name" name="name" maxlength="40" value="<%= user.getName() %>"/>
            </p>
            <p>
                <label for="nick">닉네임</label>
                <input type="text" id="nick" name="nick" maxlength="40" value="<%= user.getNick() %>"/>
            </p>
            <p>
                <label for="phone">전화번호</label>
                <input type="text" id="phone" name="phone" value="<%= user.getPhone() %>"/>
            </p>
            <p>
                <label for="address">지역선택</label>
                <input type="text" id="address" name="address" value="<%= user.getAddress() %>"/>
            </p>
            <p>
                <label for="isWork">취업상태</label>
                <input type="text" id="isWork" name="isWork" value="<%= user.isWork() %>"/>
            </p>
            <p>
                <label for="age">나이</label>
                <input type="text" id="age" name="age" value="<%= user.getAge() %>"/>
            </p>
            <p>
                <label for="income">소득범위</label>
                <input type="text" id="income" name="income" value="<%= user.getIncome() %>"/>
            </p>
            <p>
                <label for="isMarry">결혼여부</label>
                <input type="text" id="isMarry" name="isMarry" value="<%= user.isMarry() %>"/>
            </p>
            <p>
                <label for="interestField">관심분야</label>
                <input type="text" id="interestField" name="interestField" value="<%= user.getInterestField() %>"/>
            </p>
            
            <button type="submit">정보수정</button>
            <a href="redirect:/index">메인화면</a>
            <a href="/user/remove">회원탈퇴</a>
        </form>
        <%
<form>
	<div class="container-fluid mypage_booking pb-5 wow fadeIn" data-wow-delay="0.1s">
		<div class="container">
			<div class="bg-white mypage_shadow" style="padding: 35px;">
				<div class="row g-2">
					<h3 class="mypage_section-title text-center text-primary ">맞춤조건 설정</h3>
					<div class="col-md-10">

						<div class="row g-2">
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
									<option selected>취업상태</option>
									<option value="1">취업</option>
									<option value="2">미취업</option>
								</select>
							</div>
							<div class="col-md-3_b">
								<div>
									<input type="text" class="form-control datetimepicker-input"
										placeholder="만 나이 입력" data-target="#date2"
										data-toggle="datetimepicker" />
								</div>
							</div>
							<div class="col-md-3_b">
								<select class="form-select">
									<option selected>소득범위</option>
									<option value="1">소득없음</option>
									<option value="2">세전 월 200만원 미만</option>
									<option value="3">세전 월 200만원 이상 300만원 미만</option>
								</select>
							</div>
							<div class="col-md-3_b">
								<select class="form-select">
									<option selected>결혼여부</option>
									<option value="1">미혼</option>
									<option value="2">기혼</option>
								</select>
							</div>
							<div class="col-md-3_b">
								<select class="form-select">
									<option selected>관심분야</option>
									<option value="1">주거</option>
									<option value="2">교육</option>
									<option value="3">신혼부부</option>
								</select>
							</div>
						</div>

					</div>
					<div class="col-md-2">
						<button type="submit" class="btn btn-primary w-100">저장하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Booking End -->



	<!-- Booking Start -->
	<!-- Basic Layout -->
	<div class="container-xxl py-5">
		<div class="container">

			<div class="row g-5" id="login_box">
				<div class="col-lg-6" id="login_inner_box">
					<div class="row g-3">
						<div class="col-6  wow zoomIn" id="login_small_box"
							data-wow-delay="0.1s">




							<div class="col-xxl login_section">
								<div class=" mb-4">

									<div id="card-body">
										<form>

											<div class="row mb-3">
												<label class="col-sm-2 col-form-label field"
													for="basic-default-email">아이디</label>
												<div class="col-sm-10">
													<div class="input-group input-group-merge">
														<input type="text" class="regi_pwd_form-control" required
															disabled aria-describedby="basic-default-password"
															id="Email" name="Email" value="<%=user.getEmail()%>" />

													</div>
												</div>

											</div>


											<div class="row mb-3">
												<label class="col-sm-2 col-form-label"
													for="basic-default-company">이름</label>
												<div class="col-sm-10" id="regi_input">
													<input type="text" class="regi_pwd_form-control" required
														id="name" name="name" value="<%=user.getName()%>" />

												</div>
											</div>

											<div class="row mb-3">
												<label class="col-sm-2 col-form-label"
													for="basic-default-phone">연락처</label>
												<div class="col-sm-10">
													<input type="text" required
														class="regi_sub_form-control phone-mask" id="phone"
														name="phone" value="<%=user.getPhone()%>"
														aria-describedby="basic-default-phone" />
													<button type="button"
														class="btn btn-primary  regi_checkBtn">중복확인</button>
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label"
													for="basic-default-company">닉네임</label>
												<div class="col-sm-10">
													<input type="text" class="regi_sub_form-control" required
														id="nick" name="nick" value="<%=user.getNick()%>"
														placeholder="한글 10글자, 영어 20자, 한글+영어 20자 이내" />
													<button type="button"
														class="btn btn-primary  regi_checkBtn">중복확인</button>
												</div>
											</div>

											<div class="col-sm-12" id="regi_btn">
												<button type="submit" class="btn btn-primary"
													id="regi_regiBtn">수정완료</button>
												<button type="button" class="btn btn-primary"
													id="regi_regiBtn">비밀번호 변경</button>

												<button type="reset" class="btn btn-primary"
													id="regi_regiBtn">초기화</button>
												<button type="button" class="btn btn-warning">회원탈퇴</button>
											</div>

										</form>
									</div>
								</div>
							</div>



						</div>


					</div>
				</div>

			</div>
		</div>
	</div>
</form>
 <%
            } else {
        %>
        	<h1>로그인이 필요한 서비스입니다.</h1>
        <%        
            }
        %>
<!-- Booking End -->






<!-- Footer Start -->
<div class="container-fluid bg-dark text-light footer wow fadeIn"
	data-wow-delay="0.3s">
	<div class="container">
		<div class="row g-5"></div>
		<div class="rounded p-4" id="footer_box">
			<a href=""> <img src="resources/img/foot.svg" id="logo" /></a>
		</div>



	</div>

</div>


<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
	class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="resources/lib/wow/wow.min.js"></script>
<script src="resources/lib/easing/easing.min.js"></script>
<script src="resources/lib/waypoints/waypoints.min.js"></script>
<script src="resources/lib/counterup/counterup.min.js"></script>
<script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="resources/lib/tempusdominus/js/moment.min.js"></script>
<script src="resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
<script
	src="resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- Template Javascript -->
<script src="resources/js/main.js"></script>
</body>

</html>