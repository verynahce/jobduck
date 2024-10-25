<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYpE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
/*오버레이*/
.overlay {
  
  position: fixed;
  top: 0;
  left: 0;
  z-index: 2;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  display:none;
  transition: all 0.3s  ease-in;
 }
 /*body*/
.inner {
display:flex;
justify-content: space-between;
}

#job{
   font-family: pretendard; 
    background-color:#F5F5F5;
    padding-top:30px; 
    padding-bottom:60px; 

       
    main{        
    width: 890px;
    min-height: 1960px;
    background-color: white;
    border-radius: 20px;
    margin: 0px auto 60px  auto  ;
    padding-left: 60px;
    padding-right: 60px;
    padding-bottom:50px;
   

     /* 주 제목 */   
    .main-title {
    color: #333333;
    font-size: 36px; 
    font-weight: 600; 
    line-height: 50.40px;
    padding-bottom: 14px; 
    padding-top: 30px;
       }
       
    /* 기업 정보 */   
    #info {
     display: flex; 
     padding-top:23px;

    #info-content {
    padding-left:23px;
    #star-size1 {
      width: 15px;
    height: 15px;
    }
    
    }
    
    #info-title {
    
    color: #333333; 
    font-size: 28px; 
    font-weight: 600; 
    line-height: 39.20px; 
    }        
    p {
    color: #555555; 
    font-size: 16px; 
    font-weight: 400; 
    line-height: 22.40px;
    margin-top: 4px;
    margin-bottom: 3px;
    }   
    img {
      width: 120px;
    height: 120px;
    }  
    }
    
    
    
    /*서브 분야들*/ 
.sub-filed{    
  .sub-topic {
    width:100%;
    border-collapse: collapse;
    tr {
     border-bottom:1px solid #CCCCCC; 
     td {
      border-bottom:1px solid #CCCCCC; 
      padding-bottom:30px; 
      padding-top: 30px;  
         }   
    .sub-skill {
     padding-bottom:20px; 
     padding-top: 20px;  
     }             
    td:nth-child(1) {                   
       color: #333333; 
       font-size: 16px; 
       font-weight: 500; 
       line-height: 22.40px; 
       width:80px;   
                    }
    td:nth-child(2) {
      color: #333333; 
      font-size: 16px;
      font-weight: 400;
      line-height: 22.40px; 
      padding-left: 160px;
      border-bottom:                       
      }
     }
     } 
      
    .sub-title {
      color: #333333;
      font-size: 20px; 
      font-weight: 500; 
      line-height: 28px;
      margin-top:63px;
      margin-bottom:16px;
    }
    .sub-content {   
	  width:100%;
	  min-height: 250px;
      padding-top: 10px;
	  color: #767676;
	  border-bottom: 1px solid #CCCCCC;
    }
    p {
      padding-top: 10px;
      color: #767676;
     }
     
     
     /*기술스택 */
     .sub-skill-layout {
     display:flex;
     div {
     padding:12px;
     margin:8px;
     background-color:#EBECF1; 
     border-radius: 4px;
     }
     div:nth-child(1) {
      margin-left: 0px;
     }
     
       }             
     }
    }
    
    /*오른쪽 메뉴*/ 
    #side-menu{
    padding :0 24px ;
  
    width: 280px; 
    height: 222px;
    background: white; 
    border-radius: 16px; 
    border: 1px #EBEDF1 solid;
    
    position: sticky; 
    top: 20px; 
    
    
    
    p:nth-child(1) {
    
    color: #767676; 
    font-size: 14px; 
    font-weight: 400; 
    line-height: 19.60px;
    padding-top: 28px ;
    padding-bottom: 12px;
    }
    #side-hit {    
    color: #767676; 
    font-size: 12px; 
    font-weight: 400; 
    line-height: 16.80px; 
    padding-bottom: 22px;
 
    }
    
   h4 {
   color: #333333; 
   font-size: 20px; 
   font-weight: 600; 
   line-height: 28px;
     padding-top: 9px ;
    padding-bottom: 12px;
       white-space: nowrap;
      overflow: hidden; 
   text-overflow: ellipsis;  
   }
    }
    #side-bottom {
    display:flex;
    justify-content: space-between;
     align-items: center; 
    }
    .btn {
    width: 170px; 
   height: 50px; 
   padding: 10px; 
   background: #333333; 
   border-radius: 8px;
   color:white;
   cursor: pointer;
    &:hover {
    background-color: #4A4A4A;
   }
    }
    
    #btn-scrape{
    width: 40px; 
   height: 40px;
   border-radius: 4px;
   border: 1px solid #cccccc;
   text-align: center;
   padding-top:3px;
    }
   .image {
    width: 28px; 
    height: 28px;
    font-size: 16px; 
    border-radius: 8px;
    line-height: 14px;
 
 }
 /*버튼*/
 .btn-back {

    width: 200px; 
    height: 60px;
    background: #585766; 
    color: white;
    margin: 0 auto; 
    border-radius: 8px;
        &:hover {
     background-color:#666577;
     color:white;
     
   }
    
    a {
    display: block;
    text-decoration: none; 
    color: white; 
    width: 100%; 
    height: 100%;
    text-align: center;
    line-height: 60px;
 }
 }
 
}
/*채용제의 */
.support {
   position: fixed;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%); 
   width: 570px; 
   height: 700px; 
   background-color: white; 
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
   z-index: 3 
   display: flex;
   align-items: center;
   justify-content: center;
   border-radius: 8px;
   padding: 80px 51px 15px 51px;
}
.s-header {

 display:flex;
 justify-content: space-between;
}
.s-title {
 color: #333333;
 font-size: 36px; 
 font-weight: 600; 
 line-height: 50.40px;
 margin-bottom: 8px;
 padding:0;
    }


.s-list{
  border-collapse: collapse;
  width:100%;
   tr {
   td { 
   padding:18px 0 18px;
   }
   td:nth-child(1){
   width:80%;
   text-align: left;
   input{
   width: 17px;
   height: 17px;
   border-bottom: #cccccc
      }
   label{
   margin-left:8px;
   font-size: 20px;
   color: #333333;
   }
   }
   td:nth-child(2){
   width:20%;
   text-align: right;
   color: #767676;
   }
   }
}


.s-btn {
   width: 170px; 
   height: 50px; 
   padding: 10px; 
   background: #333333; 
   border-radius: 8px;
   color:white;

   position: absolute; /* 절대 위치 설정 */
   bottom: 50px;
   cursor: pointer;
   left: 50%;
   transform: translateX(-50%);
   
   &:hover {
   background-color: #4A4A4A;
   }
   a{ 
    display: block;
    text-decoration: none; 
    color: white; 
    width: 100%; 
    height: 100%;
    text-align: center;
    line-height: 33px;
   }   
   }
.s-delete {
 color: #767676;
font-weight: 300;
font-size: 36px;  
cursor: pointer;

}

</style>

</head>
<body>

<div class="overlay">  
 <div class="support"> 
   <div class="s-header">
      <h2 class="s-title">이력서</h2><span class="s-delete">x</span>
   </div>
   <hr>
   
   <table class="s-list">
     <tr>
     <td><input type="checkbox"name="" id="resume_id1"> <label for="resume_id1">이력서1</label></td>
     <td>
     <p>2024.10.14</p>
     </td>
   </tr>
  </table>
  
   <div class="s-btn" ><a href ="#">입사지원</a></div> 
 </div>
</div>
	<%@include file="/WEB-INF/include/header.jsp" %>

<div id="job">
  <div class="inner">
    <div id="main-layout">
    <main>
     
      <h2 class="main-title">채용공고제목</h2>
      <hr>
      <div id="info">
        <img src="" alt=""/>
        <div id="info-content">
           <h3 id="info-title">기업이름</h3>
           <p><img id="star-size1"src="/images/star1.png" alt="Star Image"> (5.0)</p>
           <p>email@email.com</p>
           <p>010-1234-1234<p/>
        </div>
      </div>

      <div class="sub-filed">
        <h4 class="sub-title">모집조건</h4>
        <hr>
        <table class="sub-topic">
        <tr>
          <td>직무</td>
          <td>IT개발</td>
        </tr>
		<tr>
		 <td>경력</td>
		  <td>경력무관</td>
		</tr>
		<tr>
		  <td>최종학력</td>
		  <td>학력무관</td>
		</tr>
		<tr>
		  <td>급여</td>
		  <td>회사내규에 따름</td>
		</tr>
		<tr>
		  <td colspan="2" class="sub-skill">업무스킬
           <div class="sub-skill-layout">

              <div>JAVA </div> <div>HTML/CSS </div> 
           </div> 
         </td>
		</tr>
        </table>
      </div>



      <div class="sub-filed">
	    <h4 class="sub-title">근무조건</h4>
	    <hr> 
	    <table class="sub-topic">
		<tr>
	      <td>근무형태</td>
	      <td>정규직</td>
	    </tr>
	    <tr>
	      <td>근무지역</td>
	      <td>부산시 부산진구</td>
	    </tr>
	   </table>
	  </div>


	
      <div class="sub-filed">
	    <h4 class="sub-title" >상세내용</h4>
	    <hr> 
	    <div class ="sub-content"> 나에 대해 자유롭게 설명하고 채용기회의 확률을 높이세요</div>
	  </div>
	
	  <div class="sub-filed">
	    <h4 class="sub-title">접수기간</h4>
	    <hr> 
	    <table class="sub-topic">
	     <tr>
	       <td>접수기간</td>
	       <td>정규직</td>
	     </tr>
   
        <tr>
          <td>접수방법</td>
          <td>잡덕 입사지원</td>
        </tr>
        <tr>
           <td>이력서 양식</td>
           <td>잡덕 온라인 이력서</td>
        </tr>
       </table>
     </div>

     <div class="sub-filed">
        <h4 class="sub-title" >유의사항</h4>
        <hr> 
        <p>입사지원 서류에 허위사실이 발견될 경우, 채용확정 이후에도 채용이 취소될 수 있습니다<p>
     </div>
     
     
     
     
     
    </main>
    <div class="btn-back"><a href ="#">돌아가기</a></div>
   </div>

    <div id="side-menu">
       <div id ="side-frame">
         <p>최종수정일:2024.10.10<p>
         <hr>
         <h4>공고제목</h4>
         <p id="side-hit">조회수 1 <p>

         <div id="side-bottom">
           <button class="btn" id="btn-apply">입사지원</button>
           <div id="btn-scrape" >
            <input type="image" src="/images//star1.png" alt="Star Image"class="image">
           </div>
         </div>
       </div>
    </div>
        
    
   </div>
  
     
 </div>
 
 <%@include file="/WEB-INF/include/footer.jsp" %>
 
 
   <script>
  
  $(function(){

	$('#btn-apply').on('click', function(){
		$('.overlay').fadeIn();
				
	})
	$('.s-delete').on('click', function(){
		$('.overlay').fadeOut();				
	})
	$('.s-btn').on('click', function(){
		$('.overlay').fadeOut();				
	})

  })
  </script>
</body>
</html>