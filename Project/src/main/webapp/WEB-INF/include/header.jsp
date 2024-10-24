<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <header>
   <div class="inner">
     <h1><a href="/">JOBDUCK</a></h1>
     <ul class="header-gnb">
       <li><a href="/Main/Jobs/List">채용정보</a></li>
       <li><a href="/Main/Hrs/List">인재정보</a></li>
       <li class="header-comunity">
         <a href="/Main/Comunity/Review/List">기업리뷰</a>
       </li>
       <li><a href="#">고객센터</a></li>
     </ul>
     <ul class="header-util">
       <li><a href="/User/LoginForm">로그인</a></li>
       <li>|</li>
       <li><a href="/User/RegisterForm">회원가입</a></li>
       <li class="menu-btn"><button></button></li>
     </ul>
   </div>
 </header>