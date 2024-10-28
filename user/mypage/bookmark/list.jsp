<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/js/common.js" defer></script>
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
   top: 124px; 
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
 }
 
 .title {
   font-weight:550;
   font-size:36px;
 }
 
 .subtitles {
   margin-top:30px;
   margin-bottom:12px;
 }
 .subtitle {
   width:750px;
   border-collapse:collapse;
   margin-top:20px;
 }
 .subtitle tr{
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
   width:300px;
 }
 
 .subtitle th:nth-child(3) {
   width:160px;
   text-align:left;
   padding-left:30px;
 }
 .subtitle th:nth-child(4) {
   text-align:left;
   padding-left:15px;
 }
 
 .subtitle td {
   padding-top:15px;
   padding-bottom:15px;
   line-height:0.9;
 }
 
 .subtitle td:nth-child(1) {
   text-align:center;
   font-size:15px;
   font-weight:250;
   color:gray;
 }
 
 .subtitle td:nth-child(2) {
   padding-left:30px;
   
 }
 
 .subtitle td:nth-child(3) {
   padding-left:18px;
   font-size:15px;
   font-weight:250;
   color:gray;
 }
 
 .subtitle td:nth-child(4) {
   text-align:right;
 }

 .img {
   width:24px;
   height:24px;
 }
 
 #coname {
   color:gray;
   font-size:14px;
 }
 
 #posttitle {
   font-weight:500;
   font-size:19px;
 }
 
 #postname {
   font-size:18px;
   font-weight:450;
 }
 
 #posteddate {
   font-size:14px;
   color:#B2B0B0;
 }
 
 .post-box {
   border:1px solid #E0DEDE;
   border-radius:10px;
   text-align:left;
   width:220px;
   height:150px;
   padding-left:15px;
   margin-top:20px;
   box-sizing: border-box;
 }
 
.boxflex {
 display:flex;
 justify-content: flex-start;
 gap:14px;
 flex-wrap: wrap; 
 }
 
/*북마크 색 변환*/

 
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
         <tr><td><a href="" class="link"><img src="/images/icon2.svg" class="img" data-hover="/images/icon22.svg">이력서</a></td></tr>
         <tr><td><a href="" class="active-color"><img src="/images/icon33.svg" class="img" >관심기업 / 받은제의</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/arrow.svg" class="img"   data-hover="/images/arrow2.svg">지원내역</a></td></tr>
        </table>
      </div>
      <div class="container">
       <div>
     	<h2 class="title">관심기업</h2>
       </div>
       
        <div class="boxflex">
        <c:forEach var="item" items="${BookmarkList}">
         <table class="post-box">
         <tr>
          <td id="postname"><a href="/User/MyPage/BookMark/View?post_idx=${item.post_idx}&user_idx=${item.user_idx}">${item.post_title}</a></td>
          <td ><input type="image" src="/images/bmstar.png" class="star" alt="${item.ub_idx}"data-post="${item.post_idx}" data-user="${item.user_idx}"/></td>
         </tr>
         <tr>
          <td id="posteddate">${item.post_ddate}</td>
         </tr>        
        </table>
        </c:forEach>
        </div>
        
       	<div class="subtitles">
       	 <div>
       	 <br><br>
     	  <h2 class="title">받은제의</h2>
         </div>
       	 <table class="subtitle">
       	  <tr>
       	   <th>제의날짜</th>
       	   <th>회사명/공고제목</th>
       	   <th colspan="2">모집마감일</th>
       	  </tr>
       	  <c:forEach var="item" items="${ScoutList}">
       	  <tr>
       	   <td>${item.scout_date}</td>
       	   <td><span id="coname">${item.company_name}</span><br>
       	   <span id="posttitle"><a href="/User/MyPage/BookMark/View?post_idx=${item.post_idx}&user_idx=${item.user_idx}">${item.post_title}</a></span></td>
       	   <td>${item.post_ddate}</td>
       	   <td><a href="" class="link"><img src="/images/applybtn.png" class="img2" data-hover="/images/applybtn2.png"></a></td>
       	  </tr>
       	  </c:forEach>
       	 </table>
       	</div>
      </div>
   </div>
 </div>

</main>
   <%@include file="/WEB-INF/include/footer.jsp" %>
   
<script>

$(function(){
     //사이드바 색변경
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
    
    // 북마크 색 변환
          let count = 0; 	 
         const stars = $('.star'); 
         
        
         for (let i = 0; i < stars.length; i++) {
             $(stars[i]).on('click', function() {
            	 
            	 if (count === 0) {
            		 $(stars[i]).attr('src', '/images/star.png');
                     count = 1;                    
                     console.log($(stars[i]).attr('alt'))
                     alert('북마크가 해제되었습니다');
                 	$.ajax({
            			url:'/User/MyPage/BookMark/Off',
            			data:{ub_idx: $(stars[i]).attr('alt')}
            		}).done(function(data){           			
            			console.log()
            		}).fail(function(err){
            			console.log(err)
            		})
                     
                     
                 } else {   	
                	 $(stars[i]).attr('src', '/images/bmstar.png');
                     count = 0;     
                     alert('북마크 되었습니다');
                     $.ajax({
             			url:'/User/MyPage/BookMark/On',
             			data:{post_idx: $(stars[i]).data('post'),
             				  user_idx: $(stars[i]).data('user')
             			}
             		}).done(function(data){           			
             			console.log()
             		}).fail(function(err){
             			console.log(err)
             		})
                     
                     
                     
                 }  	 
            	 
             });
         
         
         }
    	

    
    
    
	})
    
    
    


       

</script>

</body>
</html>