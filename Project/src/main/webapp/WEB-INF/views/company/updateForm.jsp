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
   gap:120px;
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
   display :flex;
   flex-direction:column;
   align-items:left;
   width: 100%;
 }
 
 .title {
   text-align:center;
   margin-bottom:30px;
   font-size:30px;
   font-weight:550;
 }
 
 .subtitle {
   font-weight:450;
   font-size:24px;
   padding-bottom:14px;
 }
 
 .contents {
   width:550px;
 }
 
 .info {
   display:flex;
   padding-top:23px;
   flex-direction:row;
 }
 
 .info-content {
   display:flex;
   flex-direction:column;
   margin-left:15px;
 }
 
 #info-title {
   font-weight:465;
   font-size:20px;
 }
 
 #info-year {
   color:#767676;
 }
 
 .profile-image {
   display:flex;
   flex-direction:column;
   align-items:center;
 }
 
 #profileimage-update {
   color:#767676;
   border: 1px solid silver;
   border-radius:5px;
   text-align:center;
   width:85%;
   margin-top:10px;
 }
 #profileimage-updatebtn {
   display:block;
 }
 
 .info-sub {
   display:flex;
   flex-direction:row;
   margin-top:70px;
   gap:30px;
   width:100%;
   padding-right:0;
   padding-left:45px;
   justify-content:left;
 }
 
 .updatetitles {
   width:110px;
   margin-right:15px;
 }
 
 .updateinputs {
   border:1px solid silver;
   border-radius:5px;
   width:330px;

 }
 .inputs {
   border:none;
   outline:none;
 }

 .underline {
   border-bottom: 1px solid silver;
   border-collapse:collapse;
   padding:15px;
 }
 
 .updateinputs tr:last-child .underline {
   border-bottom: none;
 }
 
 .btn-layout {
   margin: 100px 180px;
}

 .btn {
   display: inline-block;
   width: 200px; 
   height: 60px;   
   border-radius: 8px;
 
   a {
   display: block;
   text-decoration: none; 
   width: 100%; 
   height: 100%;
   text-align: center;
   line-height: 60px;
 }
 }
 
 .btn-back {
   background: #585766; 
   color: white;
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
         <tr><td><a href="" class="link"><img src="/images/icon3.svg" class="img" data-hover="/images/icon33.svg">관심인재</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/arrow.svg" class="img" data-hover="/images/arrow2.svg">지원내역</a></td></tr>
        </table>
       </div>
       <div class="container">
      	<div class="contents">
      	 <h2 class="title">회원 정보 수정</h2>
      	 <h3 class="subtitle">기본정보</h3>
      	 <hr>
      	 <div class="info">
      	  <div class="profile-image">
      	  	<img src="/images/profile.png"/>
      	    <span id="profileimage-update"><a href="" id="profileimage-updatebtn">프로필 변경</a></span>
      	  </div>
      	  <div class="info-content">
      	  	<h3 id="info-title">기업이름</h3>
      	    <p id="info-year">(창립 연도)</p>
      	  </div>      	 
      	 </div>
      	 <div class="info-sub">
      	  <table class="updatetitles">
      	  	<tr>
      	   	  <td>아이디</td>
      	  	</tr>
      	  	<tr>
      	   	  <td>비밀번호</td>
      	  	</tr>
    	  	<tr>
      	   	  <td>비밀번호 확인</td>
      	  	</tr>
      	  </table>
      	  <table class="updateinputs">
      	  	<tr>
      	   	  <td class="underline"><input type="text" class="inputs" value="아이디"></td>
      	  	</tr>
      	  	<tr>
      	   	  <td class="underline"><input type="password" class="inputs" value="비밀번호 확인"></td>
      	  	</tr>
    	  	<tr>
      	   	  <td class="underline"><input type="password" class="inputs" value="비밀번호 확인"></td>
      	  	</tr>
      	  </table>
      	 </div>
      	 <div class="info-sub">
      	  <table class="updatetitles">
      	  	<tr>
      	   	  <td>기업명</td>
      	  	</tr>
      	  	<tr>
      	   	  <td>산업군</td>
      	  	</tr>
    	  	<tr>
      	   	  <td>사업자 등록번호</td>
      	  	</tr>
      	  </table>
      	  <table class="updateinputs">
      	  	<tr>
      	   	  <td class="underline"><input type="text" class="inputs" value="기업명"></td>
      	  	</tr>
      	  	<tr>
      	   	  <td class="underline"><input type="text" class="inputs" value="산업군"></td>
      	  	</tr>
    	  	<tr>
      	   	  <td class="underline"><input type="text" class="inputs" value="사업자 등록번호"></td>
      	  	</tr>
      	  </table>
      	 </div>
      	 <div class="info-sub">
      	  <table class="updatetitles">
      	  	<tr>
      	   	  <td>담당자 이름</td>
      	  	</tr>
      	  	<tr>
      	   	  <td>연락처</td>
      	  	</tr>
    	  	<tr>
      	   	  <td>담당자 이메일</td>
      	  	</tr>
      	  </table>
      	  <table class="updateinputs">
      	  	<tr>
      	   	  <td class="underline"><input type="text" class="inputs" value="담당자 이름"></td>
      	  	</tr>
      	  	<tr>
      	   	  <td class="underline"><input type="text" class="inputs" value="연락처"></td>
      	  	</tr>
    	  	<tr>
      	   	  <td class="underline"><input type="text" class="inputs" value="담당자 이메일"></td>
      	  	</tr>
      	  </table>
      	 </div>
      	   <div class="btn-layout">
             <div class="btn btn-back"><a href ="#">회원정보 수정</a></div>
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