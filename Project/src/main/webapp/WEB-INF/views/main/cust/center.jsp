<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<%@include file="/WEB-INF/include/header.jsp"%>
	<main>
		<div class="inner cust-center">
			<p class="sub-title">도움이 필요하신가요?</p>
			<h2>잡덕 고객센터</h2>
			<ul class="cust-info">
				<li>1588-1588</li>
				<li><span>평일</span>오전 09:00 ~ 오후 06:00</li>
				<li><span>점심</span>오후 12:50 ~ 오후 02:00</li>
				<li><span>휴무</span>주말/공휴일은 휴무</li>
			</ul>
			<div class="qna">
				<p class="qna-title">자주 묻는 질문</p>
				<ul class="quset-user">
					<li class="cust-icon">개인회원</li>
					<li class="quset">이력서는 어떻게 작성하나요?
						<p class="answer">이력서 작성방법</p>
					</li>
					<li class="quset">개명한 이름으로 회원정보를 변경하고 싶어요!
						<p class="answer">이력서 작성방법</p>
					</li>
					<li class="quset">온라인지원과 이메일지원은 어떻게 하는건가요?
						<p class="answer">이력서 작성방법</p>
					</li>
					<li class="quset">공고를 보고 지원하려고 하는데 어떻게 하면 되나요?
						<p class="answer">이력서 작성방법</p>
					</li>
					<li class="quset">개인회원도 채용공고를 등록할 수 있나요?
						<p class="answer">이력서 작성방법</p>
					</li>
				</ul>
				<ul class="quset-company">
					<li class="cust-icon">기업회원</li>
					<li class="quset">채용공고를 어떻게 등록해야 하나요?
						<p class="answer">채용공고 작성방법</p>
					</li>
					<li class="quset">매번 공고 내용을 입력하기 번거로운데 방법이 없나요?
						<p class="answer">이력서 작성방법</p>
					</li>
					<li class="quset">공고를 무료로 등록할 수 있나요?
						<p class="answer">이력서 작성방법</p>
					</li>
					<li class="quset">마감된 공고는 어디서 확인할 수 있나요?
						<p class="answer">이력서 작성방법</p>
					</li>
					<li class="quset">비회원으로도 채용공고를 등록할 수 있나요?
						<p class="answer">이력서 작성방법</p>
					</li>
				</ul>
			</div>
		</div>
	</main>
	<%@include file="/WEB-INF/include/footer.jsp"%>
	<script>
		$(".quset").click(function(){
			$(this).children("p").slideToggle()
		})
	</script>
</body>
</html>