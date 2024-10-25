<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>   
<!DOCTYpE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>

 .innercontents {
   display:flex;
     gap:30px;
    font-family: pretendard; 
  

    padding-top:30px; 
    padding-bottom:60px; 
 }
 
 .sidebar {
   border :1px solid #ccc;
   width:300px;
   height:378px;
   border-radius:15px;
   overflow:hidden;
   margin:0;
   
    position: sticky; 
    top: 20px; 
    z-index: 1000;
  
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
   padding:15px 15px;
   margin:0;
   background-color:white;
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

     width:  100%;
     display:flex;
      flex-direction: column; 
    justify-content: center;
 }
 
  .contain-body {
    width:940px;
    min-height: 1840px;
    background-color: white;
    border-radius: 20px;
    margin: 0px auto 60px  auto  ;
    padding: 0 60px 50px 60px;
  }

.main-title {
    color: #333333;
    font-size: 36px; 
    font-weight: 600; 
    line-height: 50.40px;
    padding:30px 0 14px 0 ;
     }
 
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
              padding-bottom:5px; 
              padding-top: 5px;  
            }   
    .sub-skill {
                   padding-bottom:15px; 
                   padding-top: 15px;      
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
           padding-left: 155px;
           border-bottom:                       
           }
          }                    
     }      
    

     p {
      padding-top: 10px;
    color: #767676;
     }         
}


/*서브 - 긴글*/
.sub-content {
    
  				  width:100%;
  				  min-height: 250px;
   				 padding-top: 10px;
    			color: #767676;
   				 border-bottom: 1px solid #CCCCCC;
}
/*서브 - 소제목*/
.sub-title {
                color: #333333;
                font-size: 20px; 
                font-weight: 500; 
                line-height: 28px;
                margin-top:63px;
                margin-bottom:16px;
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
.pSkill {

display: inline-block;

  font-size: 17px; 
  color: #555555;   
  padding: 15px;
  margin-right:10px; 
  margin-top:-6px;      
 background-color:#EBECF1; 
 border-radius: 8px;
} 
.skillDelete {
 display: inline-block;
 padding:0 ;
  margin-top:-10.4px; 
 font-size: 17px;
 cursor: pointer;
}


/*버튼*/

  .btn:hover {
   background-color:#666577;
   color: white;
   } 

  .btn-submit {

   background: #585766; 
   color: white;
   font-size: 16.1px; 
   margin-left:353px;
   width: 200px; 
   height: 60px;   
   border-radius: 8px;
   border : 1px solid #585766;
 }
 
 
/*input 정리*/
input[type="text"] {
    height: 47px;

    border: 1px solid #cccccc; 
    border-radius:8px;
    padding: 10px;
    color: black; 
    margin: 18px 0;
    font-size: 16px; 
    &::placeholder {
        color: #cccccc; 
    }
}

.input-size2{
 width:100%;
}

.input-size1{
 width:300px;
  padding: 0px;

}
 
select {
    height: 47px;
    border: 1px solid #cccccc; 
    border-radius:8px;
    padding: 10px;
    color: #767676; 
    margin: 18px 4px;
    font-size: 16px; 
}
textarea {
    border: 1px solid #cccccc; 
    border-radius:8px;
    padding: 10px;
    color: #767676; 
    margin: 18px 4px;
    font-size: 16px; 
    width:100%;
    min-height: 240px;
     &::placeholder {
        color: #cccccc; 
    }

}
/*서브 - 경력긴글*/    
#sub-duty {
     	width:100%;
        min-height: 200px;
      					}   
 } 
 
 /*경력 신입 */
.switch {
    border-radius: 20px; 
}

.option {
    flex: 1;
    padding: 10px;
    text-align: center;
    transition: background-color 0.3s;
     background-color: #f0f0f0;
    color:#cccccc;
    cursor: pointer;
    display:inline-block;
    margin:10px 0 ;
    border-radius:8px;
    width:90px;
}
.active {
    background-color: white; 
    color: black;
    border: 2px solid #ccc;
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
         <tr><td><a href="" class="active-color"><img src="/images/icon22.svg" class="img" >이력서</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/icon3.svg" class="img" data-hover="/images/icon33.svg">관심기업 / 받은제의</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/arrow.svg" class="img" data-hover="/images/arrow2.svg">지원내역</a></td></tr>
        </table>
      </div>
      
      <div class="container" >
    <form action="#" method="Post">     
      <div class="contain-body">  
       
      <h2 class="main-title">이력서 제목</h2>
      <hr>
      <div id="info">
        <img src="" alt=""/>
        <div id="info-content">
           <h3 id="info-title">회원이름</h3>
           <p>성별,나이 (태어난 연도)</p>
           <p>email@email.com</p>
           <p>010-1234-1234<p/>
        </div>
      </div>
      

      <div class="sub-filed">
        <h4 class="sub-title">학력</h4>
        <hr>
        <table class="sub-topic">
        <tr>
          <td>최종학력</td>
          <td>
            <input class="input-size1" id="school" type="text" value="" placeholder="학교명을 입력해주세요"  />
            <select name="" id="schoolState">
            <option>졸업</option>
            <option>졸업유예</option>
            <option>휴학</option>
            <option>재학</option>
            <option>중퇴</option>
            </select>
            
          </td>
        </tr>	
		
        </table>
      </div>
     
      <div class="sub-filed">
        <h4 class="sub-title">업무 및 스킬</h4>
        <hr>
   <input class="input-size2" id="skill" type="text" value="" placeholder="스킬을 영어로 입력해주세요" list="skillOptions"/>
         <div id='techList'></div>
       <datalist id ="skillOptions">
         <option value="java"/>
         <option value="jquery"/>
         <option value="oracle"/>
         <option value="html/css"/>
         <option value="javascript"/>
         </datalist>
      </div>

      <div class="sub-filed">
	    <h4 class="sub-title">희망 근무조건</h4>
	    <hr> 
	    <table class="sub-topic">
		<tr>
	      <td>희망근무지</td>
	      <td> 
	         <select name="" id="region">	      	       
            <option>지역</option>
            <option>부산</option>
            <option>울산</option>
            <option>서울</option>
            </select>
          </td>
	    </tr>
	    <tr>
	      <td>희망직무</td>
	         <td> 
	         <select name="" id="field">	      	       
            <option>직무</option>
            <option>IT개발</option>
            <option>마케팅</option>
            <option>서비스</option>
            </select>
          </td>
	    </tr>
	    <tr>
	      <td>희망고용형태</td>
	      <td> 
	         <select name="" id="eForm">	      	       
            <option>고용형태</option>
            <option>정규직</option>
            <option>계약직</option>
            <option>파견직</option>
            <option>프리랜서</option>
            </select>
          </td>
	    </tr>
	   </table>
	  </div>	  
	  
       <div class="sub-filed">
	    <h4 class="sub-title">경력</h4>
	    <hr> 
	    <table class="sub-topic">
	      <tr>
	        <td>신입/경력</td>
	        <td> 
	       <div class="switch">
           <div class="option" id="newbie">신입</div>
           <div class="option" id="experienced">경력</div>
         </div>
         </td>
	     </tr>
	      </table>
	  <table class="sub-topic career">
       </table>
     </div>
	
      <div class="sub-filed">
	    <h4 class="sub-title" >자기소개서</h4>
	    <hr> 
	    <textarea id="cover" placeholder="나에 대해 자유롭게 설명하고 채용기회의 확률을 높이세요"></textarea>
	  </div>     
     
    
          </div>
          <div class="btn-layout">
               <input class="btn btn-submit" type="submit" value="이력서수정"/>
         </div>
         
         </form>
      </div>
   </div>
 </div>

</main>

 <%@include file="/WEB-INF/include/footer.jsp" %>
 
 
 <script>
 
 $(function() {
	 
//변수
const formEl = document.getElementsByTagName('form')[0];	 
const links = document.querySelectorAll(".link");

//사이드 바 클릭시

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
	 
//신입 경력 	 
$('.option').click(function() {
	        // 모든 옵션에서 active 클래스 제거
	        $('.option').removeClass('active');

	        // 클릭한 옵션에 active 클래스 추가
	        $(this).addClass('active');
 });	 
 
 
 const addRow = `  
    <tr class="dynamic-row">
     <td>회사명</td>
     <td>
         <input class="input-size1" id="company" type="text" value="" placeholder="회사명 입력해주세요"/>
     </td>
 </tr>
 <tr class="dynamic-row">
     <td>근무기간</td>
     <td>
         <select name="" id="eYear">
             <option>입사년도</option>
             <c:forEach var="year" begin="1930" end="2024">
                 <option value="${year}">${year}</option>
             </c:forEach>
         </select>
         <select name="" id="eMonth">
             <option>입사월</option>
             <c:forEach var="month" begin="1" end="12">
                 <option value="${month}">${month}</option>
             </c:forEach>
         </select>
         &nbsp;-&nbsp;
         <select name="" id="dYear">
             <option>퇴사년도</option>
             <c:forEach var="year" begin="1930" end="2024">
                 <option value="${year}">${year}</option>
             </c:forEach>
         </select>
         <select name="" id="dMonth">
             <option>퇴사월</option>
             <c:forEach var="month" begin="1" end="12">
                 <option value="${month}">${month}</option>
             </c:forEach>
         </select>
     </td>
 </tr>
 <tr class="dynamic-row">
     <td><div id="sub-duty">담당업무</div></td>
     <td>
         <textarea id="DutyContent" placeholder="담당업무와 업무를 적어주세요"></textarea>
     </td>
 </tr>`
 

 
 // input 값이 하나라도 있으면 경력이 보인다(수정 예정)
if ( $('#company').val() !== '') {   
	 $('.career').html(addRow); 
	 }else {
		 
	 }
 
 //신입 경력 클릭시 
 $('#experienced').click(function(){

		 $('.career').html(addRow)   	
})

$('#newbie').click(function(){
	 $('.dynamic-row').remove();
})	 




 
//기술 스택 
const techs = ['java', 'jquery', 'oracle', 'javascript','html/css']; 

//기술 입력 필드에서 Enter 키 입력 처리
$('#skill').on("keyup", function(key) {
   if (key.keyCode === 13) { 
       const inputValue = $(this).val().trim(); 
       if (techs.includes(inputValue)) {
    	   
    	   const newDiv = $('<div class="pSkill"></div>').text(inputValue).append('<p class="skillDelete"> &nbsp; x &nbsp; </p>'); 
           $('#techList').append(newDiv); 
           $(this).val(''); 
       } else {
           alert('유효하지 않은 기술입니다.');
       }
       key.preventDefault(); 
   }
});

$('#techList').on('click', '.skillDelete', function() {
    $(this).parent().remove(); // 클릭한 p 태그의 부모 div 삭제
});

//폼 제출 시 Enter 키 입력방치처리
$(formEl).on('keydown', function(event) {
   if (event.keyCode === 13) {
       event.preventDefault(); 
   }
});
 
 
 //폼 제출시 null값 방지
 formEl.onsubmit = function() { 
     if ($('#title').val().trim() == '') {
         alert('제목을 입력하세요');
         $('#title').focus();
         return false;
     } else if ($('#school').val().trim() == '') {
         alert('학교를 입력하세요');
         $('#school').focus();
         return false;
     } else if ($('#region').val() == '지역') {
         alert('지역을 선택하세요');
         $('#region').focus();
         return false;         
     } else if ($('#field').val() == '직무') {
         alert('희망직무를 선택하세요');
         $('#field').focus();
         return false;         
     } else if ($('#eForm').val() == '고용형태') {
         alert('고용형태를 선택하세요');
         $('#eForm').focus();
         return false;         
     } else if ($('#cover').val().trim() == '') {
         alert('자기소개서를 작성하세요');
         $('#cover').focus();
         return false;    
     } else if ($('#company').val().trim() == '') {
             alert('회사를 입력하세요');
             $('#company').focus(); 
             return false;    
         } else if ($('#eYear').val() == '입사년도') {
             alert('입사년도를 선택하세요');
             $('#eYear').focus(); 
             return false;    
         } else if ($('#eMonth').val() == '입사월') {
             alert('입사월을 선택하세요');
             $('#eMonth').focus(); 
             return false;    
         } else if ($('#dYear').val() == '퇴사년도') {
             alert('퇴사년도 선택하세요');
             $('#dYear').focus(); 
             return false;    
         } else if ($('#dMonth').val() == '퇴사월') {
             alert('퇴사월을 선택하세요');
             $('#dMonth').focus(); 
             return false;    
         } else if ($('#DutyContent').val() == '') { 
             alert('담당업무를 입력하세요');
             $('#DutyContent').focus(); 
             return false;    
         }else {
        	 
        	 
        	 return true;
         }
         
   
 };


 })
 </script>
 
 
 
</body>
</html>