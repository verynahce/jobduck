<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="/js/common.js" defer></script>
</head>
<body>
	<%@include file="/WEB-INF/include/header.jsp"%>
      <main>
        <div class="login-inner">
          <h1>
            <a href="/">JOBDUCK</a>
          </h1>
          <ul class="login-type">
						<li class="active"><a href="/User/RegisterForm">개인회원</a></li>
            <li><a href="/Company/RegisterForm">기업회원</a></li>
          </ul>
          <form action="/User/Register" method="POST">
          <ul class="login-input">
            <li><input type="text" name="user_id" placeholder="아이디"></li>
            <li><input type="text" name="user_pw" placeholder="비밀번호"></li>
          </ul>
          <ul class="login-input regist-radio">
            <li><input type="text" name="user_name" placeholder="이름"></li>
            <li>
              <input type="text" name="user_birthdate" placeholder="생년월일 6자리">
            </li>
            <li>
              <input type="text" name="user_tel" placeholder="전화번호">
            </li>
            <li>
              <input type="text" name="user_email" placeholder="이메일">
            </li>
          </ul>
          <ul class="input-radio">
            <li><input id="gender-male" type="radio" name="user_gender" value="남" checked><label for="gender-male">남</label></li>
            <li><input id="gender-female" type="radio" name="user_gender" value="여"><label for="gender-female">여</label></li>
          </ul>
          <div class="login-btn">
            <button type="submit">회원가입</button>
            <p class="regist-info">이미 회원이세요?<a href="/User/LoginForm">로그인</a></p>
          </div>
          </form>
        </div>
      </main>
</body>
</html>