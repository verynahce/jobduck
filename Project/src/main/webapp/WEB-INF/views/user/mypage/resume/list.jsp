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
   border-radius:15px;
   overflow:hidden;
   margin:0;
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
 .img {
   width:24px;
   height:24px;}

 .container {
   margin-top:25px;
   padding-left:35px;
   display :flex;
   flex-direction:column;
   width:100%;
 }
 
  #title {
   font-weight:550;
   font-size:36px;
 }
 
 .content {
   margin-top:35px;
   display:flex;
   gap:15px;
 }
 
 .post-writebox {
   border:1px solid #E0DEDE;
   border-radius:10px;
   padding:45px;
   text-align:center;
   width:220px;
   height:150px;
 }
 
 .post-box {
   border:1px solid #E0DEDE;
   border-radius:10px;
   text-align:left;
   width:220px;
   height:150px;
   padding-left:15px;
 }
 
 #postname {
   font-size:18px;
   font-weight:450;
 }
 
 #posteddate {
   font-size:14px;
   color:#B2B0B0;
 }
 
 #dots {
   text-align:right;
   padding-right:15px;
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
         <tr><th>개인서비스</th></tr>
         <tr><td><a href="" class="link"><img src="/images/myhome2.svg" class="img" data-hover="/images/myhome.svg">MY홈</a></td></tr>
         <tr><td><a href="" class="active-color"><img src="/images/icon22.svg" class="img">이력서</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/icon3.svg" class="img" data-hover="/images/icon33.svg">관심기업 / 받은제의</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/arrow.svg" class="img" data-hover="/images/arrow2.svg">지원내역</a></td></tr>
        </table>
      </div>
      <div class="container">
       <div>
     	<h2 id="title">이력서 관리</h2>
       </div>
       <div class="content">
        <table class="post-writebox">
         <tr>
          <td><a href=""><img src="/images/plus.png"><br>새 이력서 작성</a></td>
         </tr>
        </table>
        <table class="post-box">
         <tr>
          <td id="postname"><a href="">이력서 제목</a></td>
          <td id="dots"><a href="" class="link"><img src="/images/dots.png" class="img" data-hover="/images/dots2.png"></a></td>
         </tr>
         <tr>
          <td id="posteddate">2024. 10. 14</td>
         </tr>
        </table>
        <table class="post-box">
         <tr>
          <td id="postname"><a href="">이력서 제목</a></td>
          <td id="dots"><a href="" class="link"><img src="/images/dots.png" class="img" data-hover="/images/dots2.png"></a></td>
         </tr>
         <tr>
          <td id="posteddate">2024. 10. 14</td>
         </tr>
        </table>
       </div>
       </div>
   </div>
 </div>

</main>
   <%@include file="/WEB-INF/include/footer.jsp" %>
   
<script>
    const links = document.querySelectorAll(".link");

    links.forEach(link => {
        const img = link.querySelector(".img");
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