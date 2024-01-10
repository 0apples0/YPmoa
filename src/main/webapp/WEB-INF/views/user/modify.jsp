<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.moa.youthpolicy.user.domain.UserVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
</head>
<body>
<form action="/user/modify" method="post" id="pwUpdate" name="pwUpdate">
	<input type="hidden" id="Email" name="Email" value="${login.memberId}">	
		<div>
		    <p >변경하실 비밀번호를 입력해 주세요.</p>
		    <div>
		        <input type="password" name="memberPw" id="memberPw" placeholder="현재 비밀번호" />
		    </div>
		    <div>
		        <input type="password" name="memberPw1" placeholder="새 비밀번호" />
		    </div>
		    <div>
		        <input type="password" name="memberPw2" placeholder="새 비밀번호 확인" />
		    </div>
		    <button type="button" id="pwUpdate" name="pwUpdate" >비밀번호 변경</button> <a href="/member/infoView" >취소</a>
		</div>
</form>
<script type="text/javascript">
$(document).ready(function(){

	$("#pwUpdate").on("click", function(){
		if($("#memberPw").val==""){
			alert("현재 비밀번호를 입력해주세요");
			$("#memberPw").focus();
			return false
		}
		if($("#memberPw1").val==""){
			alert("변경비밀번호를 입력해주세요");
			$("#memberPw1").focus();
			return false
		}
		if($("#memberPw2").val==""){
			alert("변경비밀번호를 입력해주세요");
			$("#memberPw2").focus();
			return false
		}
		if ($("#memberPw").val() != $("#memberPw2").val()) {
			alert("변경비밀번호가 일치하지 않습니다.");
			$("#memberPw2").focus();
		
		$.ajax({
			url : "/member/pwCheck",
			type : "POST",
			dataType : "json",
			data : $("#pwUpdateForm").serializeArray(),
			success: function(data){
				
				if(data==0){
					alert("패스워드가 틀렸습니다.");
					return;
				}else{
					if(confirm("변경하시겠습니까?")){
						$("#pwUpdateForm").submit();
					}
				}
			}
		})
	});
})
</script>
</body>
</html>