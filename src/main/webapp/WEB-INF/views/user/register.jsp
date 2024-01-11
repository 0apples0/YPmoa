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
												<input type="email" class="regi_sub_form-control" required name="Email"/>
												<button type="button" class="btn btn-primary  regi_checkBtn" id="idchk">중복확인</button>
											</div>

										</div>


										<div class="row mb-3 ">
											<label class="col-sm-2 col-form-label">비밀번호</label>
											<div class="col-sm-10">
												<div class="input-group input-group-merge">
													<input type="password" class="regi_pwd_form-control" name = "PW"
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
												<input type="text" class="regi_pwd_form-control" required name="name"
													placeholder="" />

											</div>
										</div>

										<div class="row mb-3">
											<label class="col-sm-2 col-form-label"
												for="basic-default-phone">연락처</label>
											<div class="col-sm-10">
												<input type="text" id="basic-default-phone" required
													class="regi_sub_form-control phone-mask"
													aria-describedby="basic-default-phone" name="phone"/>
												<button type="button" class="btn btn-primary  regi_checkBtn" id="phoneck">중복확인</button>
											</div>
										</div>
										<div class="row mb-3">
											<label class="col-sm-2 col-form-label"
												for="basic-default-company">닉네임</label>
											<div class="col-sm-10">
												<input type="text" class="regi_sub_form-control" required
													placeholder="한글 10글자, 영어 20자, 한글+영어 20자 이내" name="nick" />
												<button type="button" class="btn btn-primary  regi_checkBtn" id="nickchk">중복확인</button>
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






<script>
    $(document).ready(function () {
        // 초기에 회원가입 버튼 비활성화
        $("#regi_regiBtn").prop("disabled", true);

        // 각 중복 체크 상태를 저장하는 변수들
        var idCheckDone = false;
        var phoneCheckDone = false;
        var nickCheckDone = false;

        // 아이디 중복 체크 버튼 클릭 시
		$("#idchk").on("click", function () {
		    // 여기에 아이디 중복 체크 로직을 추가
		    var userId = $(".regi_sub_form-control[name='Email']").val();
		
		    // Ajax를 이용하여 서버에 아이디 중복 체크 요청
		    $.ajax({
		        type: "POST",
		        url: "/user/chkEmail",
		        data: { Email: userId },
		        success: function (response) {
		            if (response) {
		                idCheckDone = true;
		                enableOrDisableRegisterButton();
		                alert("사용 가능한 아이디입니다.");
		            } else {
		                idCheckDone = false;
		                enableOrDisableRegisterButton();
		                alert("이미 사용 중인 아이디입니다.");
		            }
		        },
		        error: function () {
		            alert("아이디 중복 체크 중 오류가 발생했습니다.");
		        }
		    });
		});
        
		// 연락처 중복 체크 버튼 클릭 시
		$("#phoneck").on("click", function () {
		    // 여기에 연락처 중복 체크 로직을 추가
		    var phoneNumber = $(".regi_sub_form-control[name='phone']").val();

		    // Ajax를 이용하여 서버에 연락처 중복 체크 요청
		    $.ajax({
		        type: "POST",
		        url: "/user/chkPhone",
		        data: { phone: phoneNumber },
		        success: function (response) {
		            if (response) {
		                phoneCheckDone = true;
		                enableOrDisableRegisterButton();
		                alert("사용 가능한 연락처입니다.");
		            } else {
		                phoneCheckDone = false;
		                enableOrDisableRegisterButton();
		                alert("이미 사용 중인 연락처입니다.");
		            }
		        },
		        error: function () {
		            alert("연락처 중복 체크 중 오류가 발생했습니다.");
		        }
		    });
		});

		// 닉네임 중복 체크 버튼 클릭 시
		$("#nickchk").on("click", function () {
		    // 여기에 닉네임 중복 체크 로직을 추가
		    var nickname = $(".regi_sub_form-control[name='nick']").val();

		    // Ajax를 이용하여 서버에 닉네임 중복 체크 요청
		    $.ajax({
		        type: "POST",
		        url: "/user/chkNickname",
		        data: { nick: nickname },
		        success: function (response) {
		            if (response) {
		                nickCheckDone = true;
		                enableOrDisableRegisterButton();
		                alert("사용 가능한 닉네임입니다.");
		            } else {
		                nickCheckDone = false;
		                enableOrDisableRegisterButton();
		                alert("이미 사용 중인 닉네임입니다.");
		            }
		        },
		        error: function () {
		            alert("닉네임 중복 체크 중 오류가 발생했습니다.");
		        }
		    });
		});

        // 회원가입 버튼 클릭 시
        $("#regi_regiBtn").on("click", function (e) {
            e.preventDefault();

            // 여기에서 필요한 회원가입 유효성 검사 로직을 추가

            // Ajax를 이용하여 서버에 회원가입 요청
            $.ajax({
                type: "POST",
                url: "/user/register",
                data: {
                    Email: $(".regi_sub_form-control[name='Email']").val(),
                    PW: $(".regi_pwd_form-control[type='password']").val(),
                    phone: $(".regi_sub_form-control[name='phone']").val(),
                    name: $(".regi_pwd_form-control[name='name']").val(),
                    nick: $(".regi_sub_form-control[name='nick']").val()
                },
                success: function (response) {
                    alert("회원가입이 완료되었습니다.");
                    window.location.href = "/";
                },
                error: function () {
                    alert("회원가입 중 오류가 발생했습니다.");
                }
            });
        });

        // 회원가입 버튼을 활성화 또는 비활성화하는 함수
        function enableOrDisableRegisterButton() {
            var allChecksDone = idCheckDone && phoneCheckDone && nickCheckDone;
            var allInputsFilled = true;

            $(".regi_sub_form-control, .regi_pwd_form-control, .phone-mask").each(function () {
                if ($(this).val() === "") {
                    allInputsFilled = false;
                    return false; // 중단
                }
            });

            if (allChecksDone && allInputsFilled) {
                enableRegisterButton();
            } else {
                disableRegisterButton();
            }
        }

        // 회원가입 버튼을 활성화하는 함수
        function enableRegisterButton() {
            $("#regi_regiBtn").prop("disabled", false);
        }

        // 회원가입 버튼을 비활성화하는 함수
        function disableRegisterButton() {
            $("#regi_regiBtn").prop("disabled", true);
        }
    });
</script>

<%@include file="../includes/footer.jsp" %>