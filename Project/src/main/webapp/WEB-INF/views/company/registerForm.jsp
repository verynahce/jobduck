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
            <li><a href="/User/RegisterForm">개인회원</a></li>
            <li class="active"><a href="/Company/RegisterForm">기업회원</a></li>
          </ul>
          <form>
          <ul class="login-input">
            <li><input type="text" name="company_id" placeholder="아이디"></li>
            <li><input type="text" name="company_pw" placeholder="비밀번호"></li>
          </ul>
          <ul class="login-input">
            <li><input type="text" name="company_name" placeholder="기업명"></li>
            <li>
              <input type="text" name="company_area" placeholder="산업군">
            </li>
            <li>
              <input type="text" name="company_brnum" placeholder="사업자등록번호">
            </li>
          </ul>
          <ul class="login-input">
            <li><input type="text" name="rep_name" placeholder="담당자 이름"></li>
            <li>
              <input type="text" name="company_birthdate" placeholder="연락처">
            </li>
            <li>
              <input type="text" name="company_email" placeholder="담당자 이메일">
            </li>
          </ul>
          <div class="login-btn">
            <button type="submit">회원가입</button>
            <p class="regist-info">이미 회원이세요?<a href="/Company/LoginForm">로그인</a></p>
          </div>
          </form>
        </div>
      </main>
</body>
</html>