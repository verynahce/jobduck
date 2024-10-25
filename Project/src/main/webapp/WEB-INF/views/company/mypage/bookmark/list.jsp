<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<style>
 .innercontents {
   display:flex;
   gap:30px;
 }
 
 .sidebar {
   border :1px solid #ccc;
   width:300px;
   height:378px;
   border-radius:15px;
   overflow:hidden;
   margin:0;
   position:sticky;
   top:20px;
 }
 
 .sidebar table {
   width:100%;
   margin:0;
   border-spacing:0;
 }

 .sidebar th {
   background-color:#333;
   color:white;
   height:80px;
   margin:0;
   font-size:25px;
 }
 .sidebar td {
   padding:15px 15px;;
   margin:0;
   
 }
 
 .sidebar a {
   display:block;
   padding:10px 0;
   text-decoration:none;
   border-radius:7px;
   padding-left:10px;
   color: #767676;
   display:flex;
   align-items:center;
 }
   
 .sidebar a:hover {
   background-color: #EBECF1;
   color: #111;
 }
 
 .sidebar a img {
   margin-right:10px;
   
 }

 .container {
   margin-top:25px;
   padding-left:35px;
   display :flex;
   flex-direction:column;
   width:100%;
   gap:30px;
 }
 
 #title {
   font-weight:550;
   font-size:36px;
 }
 
 .subtitles {
   padding-left:10px;
   margin-top:12px;
   margin-bottom:12px;
 }
 .subtitle {
   width:750px;
   border-collapse:collapse;
 }
 .subtitle tr{
   border-top:1px solid #E0DEDE;
   border-bottom:1px solid #E0DEDE;
 }
 
 .subtitle th{
   font-weight:400;
   color:gray;
   padding-top:10px;
   padding-bottom:10px;
   font-size:12px;
 }
 .subtitle th:nth-child(1) {
   width:110px;
   text-align:center;
 }
 
 .subtitle th:nth-child(2) {
   width:400px;
 }
 
 .subtitle th:nth-child(3) {
   width:240px;
   text-align:left;
   padding-left:25px;
 }
 
 .subtitle td {
   padding-top:15px;
   padding-bottom:10px;
   font-size:15px;
   font-weight:300;
   line-height:0.9;
 }
 
 .subtitle td:nth-child(1) {
   text-align:center;
 }
 
 .subtitle td:nth-child(2) {
   padding-left:22px;
 }
 
 .subtitle td:nth-child(3) {
   padding-left:18px;
 }
 
 .namebot {
   font-size:10px;
   color:#AEACAC;
 }
 
 .stacks {
   font-size:11px;
   color:#7585D8;
   background-color:#F1F3F5;
   padding:4px;
   border-radius:3px;
   line-height:2.5;
 }
 
 .img {
   width:24px;
   height:24px;
 }
 
 .img2 {
   width:25px;
   height:25px;
 }
 
</style>
</head>
<body>
   <%@include file="/WEB-INF/include/header.jsp" %>
 <main>
  <div class="inner">
      <div class="innercontents">
      <div class="sidebar">
         <table>
         <tr><th>기업서비스</th></tr>
         <tr><td><a href="" class="link"><img src="/images/myhome2.svg" class="img" data-hover="/images/myhome.svg">MY홈</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/icon2.svg" class="img" data-hover="/images/icon22.svg">채용공고</a></td></tr>
         <tr><td><a href="" class=active-color><img src="/images/icon33.svg" class="img">관심인재</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/arrow.svg" class="img" data-hover="/images/arrow2.svg">지원내역</a></td></tr>
        </table>
      </div>
      <div class="container">
       <div>
     	<h2 id="title">관심인재</h2>
       </div>
       <div class="content">
       	<div class="subtitles">
       	 <table class="subtitle">
       	  <tr>
       	   <th>이름</th>
       	   <th>이력서 요약</th>
       	   <th colspan="2">경력</th>
       	  </tr>
       	  <tr>
       	   <td>홍OO<br><span class="namebot">(남,22세)</span></td>
       	   <td>이력서 제목<br><span class="stacks">기술 스택</span>&nbsp;<span class="stacks">기술 스택</span>&nbsp;<span class="stacks">기술 스택</span></td>
       	   <td>0년 0개월</td>
       	   <td><a href="" class="link"><img src="/images/trashcan.png" class="img2" data-hover="/images/trashcan2.png"></a></td>
       	  </tr>
       	  <tr>
       	   <td>홍OO<br><span class="namebot">(남,22세)</span></td>
       	   <td>이력서 제목<br><span class="stacks">기술 스택</span>&nbsp;<span class="stacks">기술 스택</span>&nbsp;<span class="stacks">기술 스택</span></td>
       	   <td>0년 0개월</td>
       	   <td><a href="" class="link"><img src="/images/trashcan.png" class="img2" data-hover="/images/trashcan2.png"></a></td>
       	  </tr>
       	 </table>
       	</div>
       </div>
      </div>
   </div>
 </div>

</main>
   <%@include file="/WEB-INF/include/footer.jsp" %>
   
<script>
    const links = document.querySelectorAll(".link");

    links.forEach(link => {
        const img = link.querySelector(".img, .img2");
        const originalSrc = img.src;
        const hoverSrc = img.getAttribute("data-hover");

        link.addEventListener("mouseover", () => {
            img.src = hoverSrc;
        });

        link.addEventListener("mouseout", () => {
            img.src = originalSrc;
        });
    });
</script>

</body>
</html>