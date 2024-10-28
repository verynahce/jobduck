<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
       <div class="inner home-main">
         <div class="main-visual">
           <p><span>구직</span> 과 <span>채용</span>, 망설이고 있진 않나요?</p>
           <h2>지금 바로 시작하세요</h2>
           <p><a href="#">이력서 등록</a><a href="#">공고 등록</a></p>
         </div>
         <div class="main-post">
           <h3>오늘의 추천공고</h3>
           <div class="main-post-list">
		   <c:forEach var="card" items="${postList}">
          	<div class="post-card">
                <ul>
                  <li class="post-card-img"><a href="/Main/Jobs/View?post_idx=${card.post_idx}">기업로고/직무이미지</a></li>
                  <li class="post-card-company">${card.company_name}</li>
                  <li class="post-card-title"><a href="/Main/Jobs/View?post_idx=${card.post_idx}">${card.post_title}</a></li>
                  <li class="post-card-info">${card.city_name}, ${card.duty_name}, 기술스택 등</li>
                </ul>
              </div>
            </c:forEach>
           </div>
         </div>
       </div>
     </main>
	<%@include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>