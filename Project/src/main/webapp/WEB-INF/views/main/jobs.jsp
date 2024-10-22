<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/common.js" defer></script>
</head>
<body>
	<%@include file="/WEB-INF/include/header.jsp" %>
   <main class="jobs">
        <div class="inner">
          <h3>채용정보</h3>
          <div class="filter-input">
          	<form action="Main/Filter">
	            <select name="city_id" onchange="filterPosts()">
	              <option selected style="display: none">지역</option>
	              <option value="10">서울</option>
	              <option value="20">부산</option>
	              <option value="30">경남</option>
	            </select>
	            <select name="duty_id" onchange="filterPosts()">
	              <option style="display: none">직무</option>
	              <option value="10">생산</option>
	              <option value="20">인사</option>
	              <option value="30">IT</option>
	            </select>
	            <select name="career_id" onchange="filterPosts()">
	              <option style="display: none">경력</option>
	              <option value="10">신입</option>
	              <option value="20">1년차</option>
	              <option value="30">2년차</option>
	            </select>
		            <select name="emp_id" onchange="filterPosts()">
		              <option style="display: none">고용형태</option>
		              <option value="10">정규직</option>
		              <option value="20">비정규직</option>
		              <option value="30">아르바이트</option>
		            </select>
							<div class="skill-div">
		            <input
		              class="skill-input"
		              type="text"
		              placeholder="기술 스택 검색"
		            />
		            <ul >
		            	<c:forEach var="skill" items="${skillList }">
		            		<li>${skill}</li>
		            	</c:forEach>
		            </ul>
							</div>
          	</form>
          	<ul class="stack-list">
          	</ul>
          </div>
          <div class="main-post">
            <div class="main-post-list">
          <c:forEach var="card" items="${postList}">
          	<div class="post-card">
                <ul>
                  <li class="post-card-img">기업로고/직무이미지</li>
                  <li class="post-card-company">${card.post_idx}</li>
                  <li class="post-card-title">${card.post_title}</li>
                  <li class="post-card-info">경력, 직무, 기술스택 등</li>
                </ul>
              </div>
          </c:forEach>
            </div>
          </div>
        </div>
        </main>
	<%@include file="/WEB-INF/include/footer.jsp" %>
    <script>
		    const $skillInput = document.querySelector(".skill-input");
		    const $skillUl    = document.querySelector(".skill-div ul");
		    const $skills     = document.querySelectorAll(".skill-div ul li");
		    const $stackList  = document.querySelector(".stack-list");
		    let   skillArr    = [];
		    

		    
		    $skillInput.addEventListener("focus", function(){
		      $skillUl.style.display = "block"
		    })
		    
		    
				$skillInput.addEventListener("input", function(e){
		      console.log(e.target.value);
		      console.log($skills)
		      let html = "";
		      $skills.forEach(a=>{
		    	  let skillStr = a.innerText.toUpperCase()
		    	  let inputStr = e.target.value.toUpperCase()
		    	  console.log(skillStr.includes(inputStr))
		    	  if(skillStr.includes(inputStr))
		      		html += "<li>"+a.innerText+"</li>"
		      })
		      $skillUl.innerHTML = html;
		    })
		    
		   $skills.forEach(a=>{
			    a.addEventListener("click", function(){
				      skillArr.push(a.innerText);
				      skillArr = new Set(skillArr);
				      skillArr = Array.from(skillArr)
				      
				      $skillUl.style.display = "none"
				      console.log(skillArr)
				      
				      let html = "";
				      skillArr.forEach((a,i)=>{
				    	  html += "<li>" + a 
				    	  html +="<img src='/images/icon/close.png' onclick='deleteSkill("+i+")'>"
				    		html += "</li>";
				      })
				      $stackList.innerHTML = html;	      
				    })
		      })
		      
		      document.body.addEventListener("click",function(){
		    	  $skillUl.style.display = "none"
		      })
		   
		      		    
    		function deleteSkill(idx){
    			skillArr.splice(idx,1)
    			let html = "";
			      skillArr.forEach((a,i)=>{
			    	  html += "<li>" + a 
			    	  html +="<img src='/images/icon/close.png' onclick='deleteSkill("+i+")'>"
			    		html += "</li>";
			      })
			      $stackList.innerHTML = html;	  
    		}
		    
    
		    function filterPosts() {
		        const cityId = $('select[name="city_id"]').val();
		        const dutyId = $('select[name="duty_id"]').val();
		        const careerId = $('select[name="career_id"]').val();
		        const empId = $('select[name="emp_id"]').val();
		        const skills = skillArr; // 선택된 기술 스택

		        $.ajax({
		            url: '/Main/Filter', // 필터링을 위한 엔드포인트
		            method: 'GET',
		            data: {
		                city_id: cityId,
		                duty_id: dutyId,
		                career_id: careerId,
		                emp_id: empId,
		                skills: skills.join(',') // 배열을 문자열로 변환
		            },
		            dataType: 'json',
		            success: function(data) {
		                const postContainer = $('.main-post-list'); // 수정된 선택자
		                postContainer.empty(); // 기존 공고 목록 비우기

		                data.postList.forEach(post => {
		                    postContainer.append(`
		                        <div class="post-card">
		                            <ul>
		                                <li class="post-card-img">기업로고/직무이미지</li>
		                                <li class="post-card-company">${post.post_idx}</li>
		                                <li class="post-card-title">${post.post_title}</li>
		                                <li class="post-card-info">경력, 직무, 기술스택 등</li>
		                            </ul>
		                        </div>
		                    `);
		                });
		            },
		            error: function(xhr, status, error) {
		                console.error('AJAX error:', error);
		            }
		        });
		    }
    </script>
</body>
</html>