<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 수정 24.01.10 -->
<%@include file="../includes/header.jsp"%>

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

		<div class="row">
			<div class="col-lg-12" id="login_inner_box">
			
					<div class="col-lg-12  wow zoomIn justify-content-center d-flex"  style="align-items: center;"
						data-wow-delay="0.1s">




						<div class="col-xxl login_section">
							<div class=" mb-4">

								<div id="card-body" style="padding-top:70px">
									<form>



										<div class="row mb-3">
											<label class="col-sm-2 col-form-label field " id="regi_pwd_letter"
												for="basic-default-email">아이디</label>
											<div class="col-sm-10">
												<input type="email" class="regi_sub_form-control" placeholder="이메일 형식으로 입력하세요" required name="Email"/>
												
												<button type="button" class="btn btn-primary  regi_checkBtn" id="idchk">중복확인</button>
											</div>
											
											<div class="col-sm-11" ><span class="validation" id="emailValidation">올바른 이메일 주소를 입력해주세요.</span></div>
											
										</div>

										
										<div class="row mb-3 ">
											<label class="col-sm-2 col-form-label" id="regi_pwd_letter">비밀번호</label>
											<div class="col-sm-10">
												<div class="input-group input-group-merge">
													<input type="password" class="regi_pwd_form-control" name = "PW"
														required placeholder="비밀번호 (8자 이상, 영문, 숫자, 특수문자)"
														placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
														aria-describedby="basic-default-password" />

												</div>
											</div>
											<div class="col-sm-11" ><span class="validation" id="passwordValidation">유효성검사</span></div>
										</div>
										<div class="row mb-3" style="align-items: center">
											<label class="col-sm-2 col-form-label" id="regi_pwd_letter">비밀번호<br>
												확인</label>
											<div class="col-sm-10">
												<div class="input-group input-group-merge">
													<input type="password" class="regi_pwd_form-control" 
														required placeholder="비밀번호 확인"
														placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
														aria-describedby="basic-default-password" name="confirmPassword"/>

												</div>
											</div>
											<div class="col-sm-11" ><span class="validation" id="confirmPasswordValidation">유효성검사</span></div>
										</div>
										<div class="row mb-3">
											<label class="col-sm-2 col-form-label" id="regi_pwd_letter"
												for="basic-default-company">이름</label>
											<div class="col-sm-10" id="regi_input">
												<input type="text" class="regi_pwd_form-control" required name="name"
													placeholder="" />

											</div>
											<div class="col-sm-11" ><span class="validation" id="nameValidation">유효성검사</span></div>
										</div>

										<div class="row mb-3">
											<label class="col-sm-2 col-form-label" id="regi_pwd_letter"
												for="basic-default-phone">연락처</label>
											<div class="col-sm-10">
												<input type="text" id="basic-default-phone" required
													class="regi_sub_form-control phone-mask" placeholder="연락처 (숫자만 입력)"
													aria-describedby="basic-default-phone" name="phone"/>
												<button type="button" class="btn btn-primary  regi_checkBtn" id="phoneck">중복확인</button>
											</div>
											<div class="col-sm-11" ><span class="validation" id="phoneValidation">유효성검사</span></div>
										</div> 
										<div class="row mb-3">
											<label class="col-sm-2 col-form-label" id="regi_pwd_letter"
												for="basic-default-company">닉네임</label>
											<div class="col-sm-10">
												<input type="text" class="regi_sub_form-control" required
													placeholder="한글 10글자, 영어 20자 이내" name="nick" />
												<button type="button" class="btn btn-primary  regi_checkBtn" id="nickchk">중복확인</button>
											</div>
											<div class="col-sm-11" ><span class="validation" id="nickValidation">유효성검사</span></div>
										</div>

										<div class="col-sm-12" id="regi_btn">
											<button type="submit" class="btn btn-primary"
												id="regi_regiBtn">회원가입</button>
											<button type="reset" class="btn btn-secondary">초기화</button>
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
<!-- Booking End -->






<script>
    $(document).ready(function () {
        // 초기에 회원가입 버튼 비활성화
        $("#regi_regiBtn").prop("disabled", true);
    	 // 초기에 각 validation span을 숨김
        $(".validation").hide();

        // 각 중복 체크 상태를 저장하는 변수들
        var idCheckDone = false;
        var phoneCheckDone = false;
        var nickCheckDone = false;

        // 아이디 중복 체크 버튼 클릭 시
        $("#idchk").on("click", function () {
		    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
		    var emailField = $(".regi_sub_form-control[name='Email']");
		    var emailValidation = $("#emailValidation");
		    var userId = emailField.val();
		
		    if (!emailRegex.test(userId)) {
		        emailValidation.text("올바른 이메일 주소를 입력해주세요.").show();
		        return;
		    }
		
		    // Ajax를 이용하여 서버에 아이디 중복 체크 요청
		    $.ajax({
		        type: "POST",
		        url: "/user/chkEmail",
		        data: { Email: userId },
		        success: function (response) {
		            if (response) {
		                idCheckDone = true;
		                enableOrDisableRegisterButton();
		                //emailValidation.text("사용 가능한 아이디입니다.").show();
		            } else {
		                idCheckDone = false;
		                enableOrDisableRegisterButton();
		                emailValidation.text("이미 사용 중인 아이디입니다.").show();
		            }
		        },
		        error: function () {
		            emailValidation.text("아이디 중복 체크 중 오류가 발생했습니다.").show();
		        }
		    });
		});

        // 연락처 중복 체크 버튼 클릭 시
        $("#phoneck").on("click", function () {
		    var phoneRegex = /^[0-9]{10,11}$/;
		    var phoneField = $(".regi_sub_form-control[name='phone']");
		    var phoneValidation = $("#phoneValidation");
		
		    if (!phoneRegex.test(phoneField.val())) {
		        phoneValidation.text("올바른 연락처를 입력해주세요.").show();
		        return;
		    }
		
		    var phoneNumber = phoneField.val();
		
		    // Ajax를 이용하여 서버에 연락처 중복 체크 요청
		    $.ajax({
		        type: "POST",
		        url: "/user/chkPhone",
		        data: { phone: phoneNumber },
		        success: function (response) {
		            if (response) {
		                phoneCheckDone = true;
		                enableOrDisableRegisterButton();
		                //phoneValidation.text("사용 가능한 연락처입니다.").show();
		            } else {
		                phoneCheckDone = false;
		                enableOrDisableRegisterButton();
		                phoneValidation.text("이미 사용 중인 연락처입니다.").show();
		            }
		        },
		        error: function () {
		            phoneValidation.text("연락처 중복 체크 중 오류가 발생했습니다.").show();
		        }
		    });
		});

        // 닉네임 중복 체크 버튼 클릭 시
        $("#nickchk").on("click", function () {
		    var nicknameField = $(".regi_sub_form-control[name='nick']");
		    var nicknameValidation = $("#nickValidation");
		    var nickname = nicknameField.val();
		
		    // 숨겨진 span 태그를 표시하고 메시지를 설정
		    nicknameValidation.text("닉네임 중복을 확인중입니다.").show();
		
		    // Ajax를 이용하여 서버에 닉네임 중복 체크 요청
		    $.ajax({
		        type: "POST",
		        url: "/user/chkNickname",
		        data: { nick: nickname },
		        success: function (response) {
		            if (response) {
		                nickCheckDone = true;
		                enableOrDisableRegisterButton();
		                // 성공 시 메시지를 변경하고 일정 시간 후에 숨김
		                //nicknameValidation.text("사용 가능한 닉네임입니다.").delay(3000).fadeOut();
		            } else {
		                nickCheckDone = false;
		                enableOrDisableRegisterButton();
		                // 실패 시 메시지를 변경하고 일정 시간 후에 숨김
		                nicknameValidation.text("이미 사용 중인 닉네임입니다.").delay(3000).fadeOut();
		            }
		        },
		        error: function () {
		            console.error("닉네임 중복 체크 중 오류가 발생했습니다.", error);
		            nicknameValidation.text("닉네임 중복 체크 중 오류가 발생했습니다.").delay(3000).fadeOut();
		        }
		    });
		});

        // 회원가입 양식의 유효성 검사 함수
       function validateRegistrationForm() {
		    // 각 필드에 대한 유효성 검사 로직을 추가
		    var emailField = $(".regi_sub_form-control[name='Email']");
		    var emailValidation = $("#emailValidation");
		    if (emailField.val() === "") {
		        emailValidation.text("이메일을 입력해주세요.").show();
		        return false;
		    }
		
		    if (!idCheckDone) {
		        emailValidation.text("아이디 중복을 확인해주세요.").show();
		        return false;
		    }
		
		    var passwordField = $(".regi_pwd_form-control[type='password']");
		    var passwordValidation = $("#passwordValidation");
		    if (passwordField.val() === "") {
		        passwordValidation.text("비밀번호를 입력해주세요.").show();
		        return false;
		    }
		
		    // 이메일 주소 유효성 검사
		    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
		    if (!emailRegex.test(emailField.val())) {
		        emailValidation.text("올바른 이메일 주소를 입력해주세요.").show();
		        return false;
		    }
		
		    // 비밀번호 유효성 검사
		    var passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
		    if (!passwordRegex.test(passwordField.val())) {
		        passwordValidation.text("올바른 비밀번호를 입력해주세요.").show();
		        return false;
		    }
		
		    // 비밀번호 확인 일치 여부 확인
		    var confirmPasswordField = $(".regi_pwd_form-control[name='confirmPassword']");
		    var confirmPasswordValidation = $("#confirmPasswordValidation");
		    var password = passwordField.val();
		    var confirmPassword = confirmPasswordField.val();
		    if (password !== confirmPassword) {
		        confirmPasswordValidation.text("비밀번호가 일치하지 않습니다.").show();
		        return false;
		    }
		
		    // 이름 유효성 검사 (필요에 따라 추가)
		    var nameField = $(".regi_pwd_form-control[name='name']");
		    var nameValidation = $("#nameValidation");
		    if (nameField.val() === "") {
		        nameValidation.text("이름을 입력해주세요.").show();
		        return false;
		    }
		
		    // 연락처 유효성 검사
		    var phoneField = $(".regi_sub_form-control[name='phone']");
		    var phoneValidation = $("#phoneValidation");
		    var phoneRegex = /^[0-9]{10,11}$/;
		    if (!phoneRegex.test(phoneField.val())) {
		        phoneValidation.text("올바른 연락처를 입력해주세요.").show();
		        return false;
		    }
		
		    // 닉네임 유효성 검사
		    var nickField = $(".regi_sub_form-control[name='nick']");
		    var nickValidation = $("#nickValidation"); 
		    var nickRegex = /^[a-zA-Z]{1,20}$|^[\uac00-\ud7a3]{1,10}$/;
		    if (!nickRegex.test(nickField.val())) {
		        nickValidation.text("닉네임은 한글 10글자 또는 영어 20글자 이내로 입력해주세요.").show();
		        return false;
		    }
		
		    // 통과하면 에러 메시지 숨기고 true 반환
		    emailValidation.hide();
		    passwordValidation.hide();
		    confirmPasswordValidation.hide();
		    nameValidation.hide();
		    phoneValidation.hide();
		    nickValidation.hide();
		    return true;
		}

        // 회원가입 버튼 클릭 시
        $("#regi_regiBtn").on("click", function (e) {
            e.preventDefault();

            // 유효성 검사 수행
            if (!validateRegistrationForm()) {
                return;
            }

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
                    //alert("회원가입이 완료되었습니다.");
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