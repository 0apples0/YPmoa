package com.moa.youthpolicy.user.domain;

import lombok.Data;

@Data
public class UserVO {
    int userType;       // 사용자 유형(0: 관리자, 1: 일반사용자)
    String Email;       // 이메일(아이디)
    String PW;          // 비밀번호
    String name;        // 이름
    String nick;        // 닉네임
    String phone;       // 전화번호 (문자열로 변경)

    String address;     // 주소
    int age;            // 만 나이
    int income;         // 소득
    int isWork;         // 취업 상태
    int isMarry;        // 결혼 여부
    String interestField; // 관심 분야

    int countReport;    // 신고당한 횟수

    // 새 비밀번호와 확인 비밀번호 관련 메서드 추가
    private String newPassword;
    private String confirmPassword;

    // 비밀번호 필드와 관련된 메서드 수정
    public String getPW() {
        return PW;
    }

    public void setPW(String pw) {
        PW = pw;
    }

    // 새 비밀번호 관련 메서드 수정
    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
    
    // 추가: 전화번호 관련 메서드
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
