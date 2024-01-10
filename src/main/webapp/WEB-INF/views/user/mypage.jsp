<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.moa.youthpolicy.user.domain.UserVO" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
</head>
<body>
    <div>
        <%
            // 컨트롤러에서 모델에 담긴 user 객체 가져오기
            UserVO user = (UserVO) request.getAttribute("user");

            if (user != null) {
        %>
        <form>
            <p>
                <label for="Email">아이디(이메일)</label>
                <input type="text" id="Email" name="Email" value="<%= user.getEmail() %>" readonly="readonly"/>
            </p>
            <p>
                <label for="PW">비밀번호</label>
                <a href="/user/modify?PW=${user.PW}" id="myPage">비밀번호 변경</a>
            </p>
            <p>
                <label for="name">이름</label>
                <input type="text" id="name" name="name" value="<%= user.getName() %>"/>
            </p>
            <p>
                <label for="nick">닉네임</label>
                <input type="text" id="nick" name="nick" value="<%= user.getNick() %>"/>
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
            } else {
        %>
        	<h1>로그인이 필요한 서비스입니다.</h1>
        <%        
            }
        %>
    </div>
</body>
</html>