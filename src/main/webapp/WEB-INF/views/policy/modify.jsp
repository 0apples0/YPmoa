
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>




        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Policy</h1>

                    <p id="login_p">정책 수정하기</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="container-xxl py-5_a">
            <div class="container">




                <div class="row g-4">
                    <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <!-- form태그시작 -->
					<form method="POST" action="/policy/modpolicy" >
                        <!-- table section -->
                        <div class="col-md-12">
                            <div class="white_shd_a full margin_bottom_30">
                               
                                <div class="full graph_head" style="padding-bottom: 7px;">
                                    <div class="heading1 policyGet_title" style="justify-content: left;">
                                        <h2>정책 개요</h2>
                                     
                                    </div>
                                </div>
                                <div class="table_section padding_infor_info">

                                    <div class="table-responsive-sm">
                                        <table class="table table-bordered commu_table policy_dt_table">
                                            <colgroup>
                                                <col style="width: 14%">
                                                <col style="width: 36%">
                                                <col style="width: 14%">
                                                <col style="width: 36%">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <!-- policyCn-->
                                                    <th scope="row">정책 소개</th>
                                                    <td colspan="3">
                                                    	<textarea class="form-control" name="policyCn">${policy.policyCn}</textarea>
                                                        
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <!-- policyTypeNm -->
                                                    <th scope="row">시행 지역</th>
                                                    <td>
                                                        <input class="form-control" name="rgnSeNm" value="${policy.rgnSeNm}">
                                                    </td>
                                                    <!-- operInstNm -->
                                                    <th scope="row">주관 기관</th>
                                                    
                                                     <td>
                                                        <input class="form-control" name="sprvsnInstNm" value="${policy.sprvsnInstNm}">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">정책 유형</th>
                                                  
                                                      <td>
                                                        <input class="form-control" name="policyTypeNm" value="${policy.policyTypeNm}">
                                                    </td>
                                                    <th scope="row">지원 규모</th>
                                                    <td>
                                                        <input class="form-control" name="policyTypeNm" value="${policy.policyScl}">
                                                    </td>
                                                </tr>


                                                <tr>
												    <th scope="row">신청 시작 날짜</th>
												    <td> <input type="date" class="form-control" name="aplyBgngDt" value="${policy.aplyBgngDt}"> </td>
												    <th scope="row">신청 마감 날짜</th>
												    <td>
												        <c:if test="${not empty policy.aplyEndDt}">
												            <input type="date" class="form-control" name="aplyEndDt" value="${policy.aplyEndDt}">
												        </c:if>
												        <c:if test="${empty policy.aplyEndDt}">
												            <input type="date" class="form-control" name="aplyEndDt" value="${policy.aplyEndDt}">
												        </c:if>
												    </td>
												</tr>
                                                <tr>
                                                    <!-- policySd -->
                                                    <th scope="row">연락처</th>
                                                    <td><input class="form-control" name="policyScl" value=" ${policy.policyScl}"></td>
                                                    <th scope="row">신청 사이트</th>
                                                    <td><input class="form-control" name="dtlLinkUrl" value=" ${policy.dtlLinkUrl}">
                                                    </td>
                                                </tr>
                                           
                                            </tbody>
                                        </table>
                                        <div class="mb-3">
                                            <label for="formFile" class="form-label"></label>
                                            <input class="form-control" type="file" id="formFile" />
                                           
                                          </div>

                                    </div>
                                </div>


                            </div>




                        </div>
                        <div class="col-md-12">
                            <div class="white_shd_a full margin_bottom_30">
                                <div class="full graph_head">
                                    <div class="heading1 margin_0">
                                        <h2>정책 상세</h2>
                                    </div>
                                </div>
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
                                                            <textarea id="summernote" name="board.content"
                                                                class="form-control">${policy.board.content}  </textarea>
                                                      		<input type="hidden" name="board.bno" value="${policy.no }">
                                                      		<input type="hidden" name="no" value="${policy.no }">
                                                    </td>
												
                                                </tr>

                                            </tbody>
                                        </table>
                                        <br>
                                       
                                        <div>
                                            <button onclick="submitForm()" class="btn btn-primary" >수정하기</button>
                                            <button class="btn btn-warning">취소</button> 
                                        </div>
                                     
                                    </div>
                                </div>
                                
                                
                                


                            </div>




                        </div> <!-- 글쓰기에디터 끝 -->
                        </form>
                    </div>

                </div>
            </div>

        </div>


        <script>
        	
        
            jQuery(document).ready(function ($) {
                $('#summernote').summernote({
                    height: 500,                
                    minHeight: null,             
                    maxHeight: null,                  
                    lang: "ko-KR",					// 한글 설정
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
                    ['insert', ['link', 'picture']],
                	],
                	callbacks : {
    					onImageUpload : function(files, editor, welEdit) {
    						//alert("^^");
    						//console.log('img upload: ', files);
    						//이미지를 첨부하면 배열로 인식된다.
    						//이것을 서버로 비동기식 통신을 하는 
    						//함수를 호출하면서 보낸다.
    						sendFile(files[0], editor, welEdit);
    					}
    				}

                });


                $('#summernote').summernote('fontName', 'LINESeedKR-Bd_light');


                function sendFile(file, editor, welEdit) {
                	console.log("file" + file);
        			//파라미터를 전달하기 위해 form객체 만든다.
        			var frm = new FormData();

        			//위의 frm객체에 send_img이라는 파라미터를 지정!
        			frm.append("send_img", file);
        			//		frm.append("type", "saveImg");

        			//비동기식 통신
        			$.ajax({
        				//			url: "saveImage.jsp",
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
 
            }); // 글쓰기에디터 ready함수 끝
            
            



			
            // 정책 글쓰기 날짜 입력 함수
            function validateDateInput(input) {
                var dateRegex = /^\d{4}-\d{2}-\d{2}$/;

                if (!dateRegex.test(input.value)) {
                    alert('올바른 날짜 형식을 입력하세요 (yyyy-mm-dd).');
                    input.value = '';
                }
            }
        </script>

    


<%@include file="../includes/footer.jsp"%>