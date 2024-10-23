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
	<main class="review-inner">
		<div class="inner">
			<div class="review-title">
				<p class="sub-title1">리뷰로 보는 기업의 미래</p>
				<h2>기업리뷰</h2>
				<p class="sub-title2">직원의 목소리를 통해 기업의 성장 가능성을 분석해 보세요.</p>
			</div>
		</div>
		<div class="review-banner">

			<div class="banner-inner">
				<a href="#"><img src="/images/review/phone.png"></a>
				<div class="banner-title">
					<h2>
						현재 <span>0개</span>의 기업리뷰가 등록됐어요!
					</h2>
					<p>회사 리뷰 남기고, 나와 맞는 기업을 저장하세요!</p>
				</div>
			</div>
		</div>
		<div class="inner">
			<div class="company-list">
				<div class="company-card">
					<div class="company-content">
						<div class="company-img"><a href="View">기업로고</a></div>
						<div class="company-text">
							<div class="company-info">
								<h3><a href="View">회사명</a></h3>
								<p>부산</p>
							</div>
							<p>현재 채용 중 0건</p>
						</div>
					</div>
					<a href="#"><p class="bookmark">관심기업</p></a>
				</div>
			</div>
			<div class="paging-container">
				<ul>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
				</ul>
				<p>다음 ></p>			
		</div>
		</div>
	</main>
		
	<%@include file="/WEB-INF/include/footer.jsp"%>
</body>
</html>