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
          	<form action="Main/JobsFilter">
	            <select id="cityId" name="city_id">
	              <option value="" selected="selected" style="display: none">지역</option>
	              <option value="">전국</option>
	              <option value="10">서울</option>
	              <option value="20">부산</option>
	              <option value="30">경남</option>
	            </select>
	            <select id="dutyId" name="duty_id">
	              <option value="" selected="selected" style="display: none" >직무</option>
	              <option value="10">생산</option>
	              <option value="20">인사</option>
	              <option value="30">IT</option>
	            </select>
	            <select id="careerId" name="career_id">
	              <option value="" selected="selected" style="display: none">경력</option>
	              <option value="10">신입</option>
	              <option value="20">1년차</option>
	              <option value="30">2년차</option>
	            </select>
		            <select id="empId" name="emp_id">
		              <option value="" selected="selected" style="display: none">고용형태</option>
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
		         <button type="reset" onclick='deleteSkill()'>초기화</button>
		            <ul >
		            	<c:forEach var="skill" items="${skillList}">
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
                  <li class="post-card-img"><a href="#">기업로고/직무이미지</a></li>
                  <li class="post-card-company">${card.company_name}</li>
                  <li class="post-card-title"><a href="#">${card.post_title}</a></li>
                  <li class="post-card-info">${card.city_name}, ${card.duty_name}, 기술스택 등</li>
                </ul>
              </div>
          </c:forEach>
            </div>
          </div>
        </div>
        </main>
	<%@include file="/WEB-INF/include/footer.jsp" %>
  <script>
  
  			// 스택 검색을 위한 element
		    const $skillInput = document.querySelector(".skill-input");
		    const $skillUl    = document.querySelector(".skill-div ul");
		    const $skills     = document.querySelectorAll(".skill-div ul li");
		    const $stackList  = document.querySelector(".stack-list");
		    let   skillArr    = [];

		    // 검색 인풋 focus
		    $skillInput.addEventListener("focus", function(){
		      $skillUl.style.display = "block"
		    })
		    
		    
		    // 검색 인풋 input시 value 포함 여부 검사
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
		    
		   // 스택 선택시 스택리스트에 스택 추가
		   $skills.forEach(a=>{
			    a.addEventListener("click", function(e){				      
				      $skillUl.style.display = "none"
				      let html = "";
				    	  html += "<li>" + e.target.innerText
				    	  html +="<img src='/images/icon/close.png' onclick='deleteSkill()'>"
				    		html += "</li>";
				      $stackList.innerHTML = html;	      
				    })
		      })
		      		    
		     // 스택 x 클릭시 해당 스택 삭제
    		function deleteSkill(idx){
			      $stackList.innerHTML = "";	  
    		}
		    
		    // 스택 인풋 엔터 방지
		    document.addEventListener('keydown', function(event) {
		    	  if (event.keyCode === 13) {
		    	    event.preventDefault();
		    	  };
		    	}, true);

		    // select 변경 시 Ajax
		        $("#cityId,#dutyId,#careerId,#empId").change(function(){
			        let cityId = $("#cityId").val();
			        let dutyId = $("#dutyId").val();
			        let careerId= $("#careerId").val();
			        let empId = $("#empId").val();
			        console.log($("#cityId").val())
			        $.ajax({
			            url: '/Main/JobsFilter',
			            type: 'GET',
			            dataType: 'json',
			            data: { "city_id": cityId, "duty_id": dutyId, "emp_id": empId },
			            success: function(response) {
			                $('.main-post-list').html("");
			                response.postList.forEach(a => {
			                	console.log(a.post)
			                    $('.main-post-list').append(`
			                        <div class="post-card">
			                            <ul>
			                                <li class="post-card-img">기업로고/직무이미지</li>
			                                <li class="post-card-company">`+ a.company_idx +`</li>
			                                <li class="post-card-title">`+a.post_title+`</li>
			                                <li class="post-card-info">`+ a.city_name + `, ` + a.duty_id + `,` + a.emp_id + `</li>
			                            </ul>
			                        </div>
			                    `);
			                });
			            },
			            error: function(jqXHR, textStatus, errorThrown) {
			                console.error(textStatus, errorThrown);
			                alert("데이터를 가져오는 데 실패했습니다. 다시 시도해 주세요.");
			            }
			        });
			    });

    </script>
</body>
</html>