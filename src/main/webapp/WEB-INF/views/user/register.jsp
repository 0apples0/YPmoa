<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 수정 24.01.10 -->
<%@include file="../includes/header_guest.jsp"%>

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
	<div class="page-header-inner" id="login_banner">
		<div class="container text-center ">
			<h1 class=" display-3 text-white mb-3 animated slideInDown"
				id="login_h1">Register</h1>

			<p id="login_p">회원가입하고 청년정책모아의 더 많은 혜택을 누리세요!</p>



		</div>
	</div>
</div>
<!-- Page Header End -->





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
												<input type="text" class="regi_sub_form-control" required />
												<button type="button" class="btn btn-primary  regi_checkBtn">중복확인</button>
											</div>

										</div>


										<div class="row mb-3 ">
											<label class="col-sm-2 col-form-label">비밀번호</label>
											<div class="col-sm-10">
												<div class="input-group input-group-merge">
													<input type="password" class="regi_pwd_form-control"
														required
														placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
														aria-describedby="basic-default-password" />

												</div>
											</div>
										</div>
										<div class="row mb-3 ">
											<label class="col-sm-2 col-form-label" id="regi_pwd_letter">비밀번호
												확인</label>
											<div class="col-sm-10">
												<div class="input-group input-group-merge">
													<input type="password" class="regi_pwd_form-control"
														required
														placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
														aria-describedby="basic-default-password" />

												</div>
											</div>
										</div>
										<div class="row mb-3">
											<label class="col-sm-2 col-form-label"
												for="basic-default-company">이름</label>
											<div class="col-sm-10" id="regi_input">
												<input type="text" class="regi_pwd_form-control" required
													placeholder="" />

											</div>
										</div>

										<div class="row mb-3">
											<label class="col-sm-2 col-form-label"
												for="basic-default-phone">연락처</label>
											<div class="col-sm-10">
												<input type="text" id="basic-default-phone" required
													class="regi_sub_form-control phone-mask"
													aria-describedby="basic-default-phone" />
												<button type="button" class="btn btn-primary  regi_checkBtn">중복확인</button>
											</div>
										</div>
										<div class="row mb-3">
											<label class="col-sm-2 col-form-label"
												for="basic-default-company">닉네임</label>
											<div class="col-sm-10">
												<input type="text" class="regi_sub_form-control" required
													placeholder="한글 10글자, 영어 20자, 한글+영어 20자 이내" />
												<button type="button" class="btn btn-primary  regi_checkBtn">중복확인</button>
											</div>
										</div>

										<div class="col-sm-12" id="regi_btn">
											<button type="submit" class="btn btn-primary"
												id="regi_regiBtn">회원가입</button>
											<button type="reset" class="btn btn-primary">초기화</button>
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
<!-- Booking End -->




<!-- Footer Start -->
<div class="container-fluid bg-dark text-light footer wow fadeIn"
	data-wow-delay="0.3s">
	<div class="container">
		<div class="row g-5"></div>
		<div class="rounded p-4" id="footer_box">
			<a href=""> <img
				src="${pageContext.request.contextPath}/resources/img/foot.svg"
				id="logo" /></a>
		</div>



	</div>

</div>

</div>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
	class="bi bi-arrow-up"></i></a>
</div>

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