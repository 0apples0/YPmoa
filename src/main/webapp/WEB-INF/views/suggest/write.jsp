<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0">
    <div class="page-header-inner" id="login_banner">
        <div class="container text-center ">
            <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Suggest</h1>
            <p id="login_p">정책 건의 등록하기</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<div class="container-xxl py-5_a">
    <div class="container">
        <div class="row g-4">
            <div class="wow fadeInUp" data-wow-delay="0.1s">
                <!-- table section -->
                <form id="writeForm" method="post" action="/suggest/write" onsubmit="return validateForm()">
	                <div class="col-md-12">
	                    <div class="white_shd_a full">
	                        <div class="padding_infor_info">
	                            <div class="row ">
	                                <div class="" style="width: 13%; margin-left:10px">
	                                    <select class="form-select" id="region" name="region">
	                                        <option selected value="" >지역</option>
		                                    <option value="경상북도">경상북도</option>
		                                    <option value="경산시">경산시</option>
		                                    <option value="경주시">경주시</option>
		                                    <option value="구미시">구미시</option>
		                                    <option value="김천시">김천시</option>
		                                    <option value="문경시">문경시</option>
		                                    <option value="상주시">상주시</option>
		                                    <option value="안동시">안동시</option>
		                                    <option value="영주시">영주시</option>
		                                    <option value="영천시">영천시</option>
		                                    <option value="포항시">포항시</option>
		                                    <option value="군위군">군위군</option>
		                                    <option value="봉화군">봉화군</option>
		                                    <option value="성주군">성주군</option>
		                                    <option value="영덕군">영덕군</option>
		                                    <option value="영양군">영양군</option>
		                                    <option value="예천군">예천군</option>
		                                    <option value="고령군">고령군</option>
		                                    <option value="청도군">청도군</option>
		                                    <option value="청송군">청송군</option>
		                                    <option value="칠곡군">칠곡군</option>
		                                    <option value="울릉군">울릉군</option>
		                                    <option value="울진군">울진군</option>
		                                    <option value="의성군">의성군</option>
	                                    </select>
	                                </div>
	                                <div class="" style="width: 13%; padding-left:0px">
	                                    <select class="form-select" id="category" name="category">
	                                        <option selected value="" >분야</option>
		                                    <option value="일자리 (창업)">일자리 (창업)</option>
		                                    <option value="일자리 (취업)">일자리 (취업)</option>
		                                    <option value="참여">참여</option>
		                                    <option value="교육">교육</option>
		                                    <option value="복지">복지</option>
		                                    <option value="주거비 지원">주거비 지원</option>
		                                    <option value="문화">문화</option>
		                                    <option value="금융">금융</option>
		                                    <option value="주택공급">주택공급</option>
		                                    <option value="건강">건강</option>
	                                    </select>
	                                </div>
	                                <input class="form-control" id="titleInput" name="title"
	                                    style="font-family: 'LINESeedKR-Bd_light'; width: 70%;"
	                                    placeholder="제목을 입력해주세요">
	                                <input type="hidden" name="nick" value="${user.nick}">
	                                <input type="hidden" name="userType" value="${user.userType}">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-12">
	                    <div class="white_shd_a full margin_bottom_auto">
	                        <div class="table_section padding_infor_info">
	                            <div class="table-responsive-sm">
	                                <table class="table commu_table policy_dt_table policyWrite_table">
	                                    <colgroup>
	                                        <col style="width: 14%">
	                                        <col style="width: 36%">
	                                        <col style="width: 14%">
	                                        <col style="width: 36%">
	                                    </colgroup>
	                                    <tbody>
	                                        <tr>
	                                            <td colspan="4">
													<textarea id="summernote" name="content" class="form-control"></textarea>
	                                            </td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                                <br>
	                                <div>
	                                    <button type="submit" class="btn btn-primary">등록하기</button>
	                                    <button type="button" class="btn btn-warning" onclick="history.back()">취소</button>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
	
    $(document).ready(function ($) {
    	
    	// 모든 내용 선택 및 작성 확인
        $('#writeForm').submit(function (event) {
            var region = $('#region').val();
            var category = $('#category').val();
            var title = $('#titleInput').val();
            var content = $('#summernote').summernote('code'); 

            if (region === "") {
                alert("지역을 선택해주세요.");
                event.preventDefault();
            }else if(category === ""){
                alert("관심분야를 선택해주세요.");
                event.preventDefault();
            }else if(title === ""){
                alert("제목을 작성해주세요.");
                event.preventDefault();
            }else if(content === "<p><br></p>" || content.trim() === "" || content ==='<p><span style="font-family: LINESeedKR-Bd_light;">﻿</span><br></p>'){
                alert("내용을 작성해주세요.");
                event.preventDefault();
            }
        });
	
        $('#summernote').summernote({
            height: 500,
            minHeight: null,
            maxHeight: null,
            lang: "ko-KR",	// 한글 설정
            focus: true,
            toolbar: [
                // [groupName, [list of button]]
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['picture', ['[picture]']],
 ﻿               ['insert', ['link', 'picture']],
            ]
        });

		$('#summernote').summernote('fontName', 'LINESeedKR-Bd_light');
		
        // userType이 0이면 공지 옵션만 보임
        var userType = "${user.userType}";
        if (userType === "0") {
            // 기존 옵션 제거
            $("#category").empty(); 
            $("#region").empty(); 
            // 공지 옵션 추가
            $("#category").append('<option value="공지">공지</option>');
            $("#region").append('<option value="공지">공지</option>');
        }
		
	    function sendFile(file, editor, welEdit) {
	    	console.log("file" + file);
			//파라미터를 전달하기 위해 form객체 만든다.
			var frm = new FormData();

			//위의 frm객체에 send_img이라는 파라미터를 지정!
			frm.append("send_img", file);
			//		frm.append("type", "saveImg");

			//비동기식 통신
			$.ajax({
				url : "/uploadImge",
				data : frm,
				cache : false,
				contentType : false,
				processData : false,
				type : "POST",
				dataType : "JSON" //나중 받을 데이터의 형식을 지정
			}).done(function(data) {
				//도착함수
				//alert(data.url);

				//에디터에 img태그로 저장하기 위해 
				//다음과 같이 img태그를 정의한다.
				//var image = $('<img>').attr('src',data.url);

				//에디터에 정의한 img태그를 보여준다.
				//$('#content').summernote('insertNode',image[0]);

				$('#summernote').summernote('insertImage', data.url);

			}).fail(function(e) {
				console.log(e);
			});
		}

    }); // document ready End


</script>

<%@include file="../includes/footer.jsp"%>