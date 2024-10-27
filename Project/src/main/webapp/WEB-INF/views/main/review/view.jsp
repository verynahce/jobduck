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
 <div class="inner rview">
      <a class="back-btn" href="List">back</a>
      <div class="review-company-profile">
        <div class="company-image">기업로고</div>
        <div class="company-info">
          <p class="company-name">기업이름</p>
          <p><span class="total">5.0</span><span class="duty">산업군</span></p>
		  <p>Tel</p>
		  <p>Email</p>
        </div>
      </div>
      <table class="review-table">
        <tr>
          <td>복지 및 급여</td>
          <td class="point">5.0</td>
        </tr>
        <tr>
          <td>업무와 삶의 균형</td>
          <td class="point">5.0</td>
        </tr>
        <tr>
          <td>사내문화</td>
          <td class="point">5.0</td>
        </tr>
        <tr>
          <td>승진 기회 및 가능성</td>
          <td class="point">5.0</td>
        </tr>
        <tr>
          <td>경영진</td>
          <td class="point">5.0</td>
        </tr>
      </table>
      <p class="view-title">기업리뷰 <span>1건</span></p>
      <div class="review-inner">
        <ul>
          <li>전직원</li>
          <li>|</li>
          <li>경력 0개월</li>
          <li class="point">5.0</li>
        </ul>
        <p class="review-view-title">리뷰 제목</p>
        <div class="review-pros">
          <p class="review-sub-title">장점</p>
          <p class="review-content">
            국회의원은 그 지위를 남용하여 국가·공공단체 또는 기업체와의 계약이나
            그 처분에 의하여 재산상의 권리·이익 또는 직위를 취득하거나 타인을
            위하여 그 취득을 알선할 수 없다. 국회는 국무총리 또는 국무위원의
            해임을 대통령에게 건의할 수 있다. 감사원은 원장을 포함한 5인 이상
            11인 이하의 감사위원으로 구성한다. 국가원로자문회의의 의장은
            직전대통령이 된다. 다만, 직전대통령이 없을 때에는 대통령이 지명한다.
          </p>
        </div>
        <div class="review-cons">
          <p class="review-sub-title">단점</p>
          <p class="review-content">
            국회의원은 그 지위를 남용하여 국가·공공단체 또는 기업체와의 계약이나
            그 처분에 의하여 재산상의 권리·이익 또는 직위를 취득하거나 타인을
            위하여 그 취득을 알선할 수 없다. 국회는 국무총리 또는 국무위원의
            해임을 대통령에게 건의할 수 있다. 감사원은 원장을 포함한 5인 이상
            11인 이하의 감사위원으로 구성한다. 국가원로자문회의의 의장은
            직전대통령이 된다. 다만, 직전대통령이 없을 때에는 대통령이 지명한다.
          </p>
        </div>
      </div>
    </div>
	</main>
		
	<%@include file="/WEB-INF/include/footer.jsp"%>
</body>
</html>