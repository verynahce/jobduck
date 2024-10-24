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
   gap:15px;
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
 }
 
 .sidebar th {
   background-color:#333;
   color:white;
   height:50px;
   margin:0;
 }
 .sidebar td {
   padding-left:25px;
   margin:0;
   
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
 
 .content2 {
   text-align:center;
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
         <tr><td><a href="">MY홈</a></td></tr>
         <tr><td><a href="">이력서</a></td></tr>
         <tr><td><a href="">관심기업</a></td></tr>
         <tr><td><a href="">지원내역</a></td></tr>
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
      <!-- 이거 table 만드는게 나을듯? -->
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