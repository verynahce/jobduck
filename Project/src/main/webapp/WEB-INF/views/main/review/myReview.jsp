<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="/js/common.js" defer></script>
</head>
<body>
	<%@include file="/WEB-INF/include/header.jsp"%>
<main>
 <div class="inner rview myReview">
      <a class="back-btn" href="List">back</a>
      <div class="review-company-profile">
        <div class="company-info">
          <p class="company-name form-style">내가 쓴 리뷰</p>
        </div>
      </div>
	 <ul class="myReview-info">
	 	<li>잡덕에 작성한 기업리뷰 내역입니다.</li>
	 	<li>기간에 상관없이 작성하신 모든 게시글을 확인하실 수 있습니다.</li>
	 	<li>게시물의 삭제 및 수정은 해당 페이지로 이동 후 가능합니다.</li>
	 </ul>
     <h2>내가 쓴 리뷰</h2>
     <table>
     	<thead>
     		<tr>
     			<th>분류</th>
     			<th>제목</th>
     			<th>조회</th>
     			<th>작성일</th>
     		</tr>
     	</thead>
     	<tbody>
     		<tr>
     			<td>기업리뷰</td>
     			<td>나의 기업리뷰입니다.</td>
     			<td>1</th>
     			<td>2024-10-14</td>
     		</tr>
     	</tbody>
     </table> 	 
    </div>
	</main>
	<%@include file="/WEB-INF/include/footer.jsp"%>
</body>
</html>