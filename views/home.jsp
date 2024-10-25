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
	<%@include file="/WEB-INF/include/header.jsp" %>
	<main>
       <div class="inner">
         <div class="main-visual">
           <p><span>구직</span> 과 <span>채용</span>, 망설이고 있진 않나요?</p>
           <h2>지금 바로 시작하세요</h2>
           <p><a href="#">이력서 등록</a><a href="#">공고 등록</a></p>
         </div>
         <div class="main-post">
           <h3>오늘의 추천공고</h3>
           <div class="main-post-list">
             <div class="post-card">
                 <ul>
                   <li class="post-card-img">기업로고/직무이미지</li>
                   <li class="post-card-company">기업이름</li>
                   <li class="post-card-title">채용공고 제목</li>
                   <li class="post-card-info">경력, 직무, 기술스택 등</li>
                 </ul>
             </div>
             <div class="post-card">
                 <ul>
                   <li class="post-card-img">기업로고/직무이미지</li>
                   <li class="post-card-company">기업이름</li>
                   <li class="post-card-title">채용공고 제목</li>
                   <li class="post-card-info">경력, 직무, 기술스택 등</li>
                 </ul>
             </div>
             <div class="post-card">
                 <ul>
                   <li class="post-card-img">기업로고/직무이미지</li>
                   <li class="post-card-company">기업이름</li>
                   <li class="post-card-title">채용공고 제목</li>
                   <li class="post-card-info">경력, 직무, 기술스택 등</li>
                 </ul>
             </div>
             <div class="post-card">
                 <ul>
                   <li class="post-card-img">기업로고/직무이미지</li>
                   <li class="post-card-company">기업이름</li>
                   <li class="post-card-title">채용공고 제목</li>
                   <li class="post-card-info">경력, 직무, 기술스택 등</li>
                 </ul>
             </div>
           </div>
         </div>
       </div>
     </main>
	<%@include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>