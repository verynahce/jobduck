<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <header>
   <div class="inner">
     <h1><a href="/">JOBDUCK</a></h1>
     <ul class="header-gnb">
       <li><a href="#">채용정보</a></li>
       <li><a href="#">인재정보</a></li>
       <li class="header-comunity">
         <a href="#">커뮤니티</a>
         <ul>
           <li><a href="#">자유게시판</a></li>
           <li><a href="#">기업</a></li>
         </ul>
       </li>
       <li><a href="#">고객센터</a></li>
     </ul>
     <ul class="header-util">
     	<c:if test="${user_name}">
     		<li>앙</li>
     	</c:if>
       <li><a href="/User/LoginForm">로그인</a></li>
       <li>|</li>
       <li><a href="/User/RegisterForm">회원가입</a></li>
       <li class="menu-btn"><button></button></li>
     </ul>
   </div>
 </header>