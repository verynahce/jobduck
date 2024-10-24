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
   padding-top:30px;
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

 
 .container {
   display :flex;
   flex-direction:column;
   gap:30px;
   width:100%;
 }
 
 .container table {
   width:100%;
 }
 
 .hr-director {
   border: 1px solid black;
   text-align:left;
   padding-left:150px;
 }
 
 .content {
   hegith:50%;
 }
 
 .content2 {
   text-align:center;
   height:50%;
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
         <tr><td><a href=""><img src="/img/myhome.svg">MY홈</a></td></tr>
         <tr><td><a href=""><img src="/img/icon2.svg">이력서</a></td></tr>
         <tr><td><a href=""><img src="/img/icon3.svg">관심기업</a></td></tr>
         <tr><td><a href=""><img src="/img/arrow.svg">지원내역</a></td></tr>
        </table>
      </div>
      <div class="container">
       <div class="content">
         <div class="hr-director">
           <table>
             <tr><th>회원이름</th></tr>
             <tr><td>성별,나이(태어난 연도)</td></tr>
             <tr><td>Email@email.com</td></tr>
             <tr><td>010-1234-1234</td></tr>
           </table>
         </div>
       </div>
      <div class=content2>
         <table style="border-collapse:collapse;width:100%;border:1px solid black;">
            <tr>
               <td>0<br>이력서</td>
               <td>0<br>관심기업</td>
               <td>0<br>지원내역</td>
            </tr>
         </table>
      </div>
      </div>
   </div>
 </div>

</main>
   <%@include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>