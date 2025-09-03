<h1>휴먼클라우드웹 프로젝트 - JOBDUCK</h1>
<img src="https://github.com/user-attachments/assets/1e5671d6-3f90-4fb4-a4cf-9bdfb9e7f675"/>
<ul>
  <li>프로젝트 기간 : 24.10.14(월) ~ 24.10.25(금)</li>
</ul>
&nbsp
<h2>프로젝트 소개</h2>
<ul>
  <li>JOBDUCK은 이력서,공고 필터링으로 구직자,채용자가 원하는 이력서,공고를 찾게 해주는 웹입니다.</li>
  <li>개인회원이 작성한 기업리뷰로 기업의 평점이 정해지고 기업리뷰를 확인할 수 있습니다.</li>
</ul>
&nbsp

<h2>시연 영상</h2>
<h4>사진 클릭시 이동 >> </h4>
<div align="center">
<a href="https://www.youtube.com/watch?v=Xy2ZWm1QUCk">
  <img src="https://img.youtube.com/vi/Xy2ZWm1QUCk/0.jpg" alt="시연 영상 썸네일" width="600"/>
</a>
</div>
&nbsp

<h2>담당 업무</h2>
<ul>
  <li>개인회원 마이페이지 - 이력서 관리: <strong>CRUD</strong> 기능 및 DB 연동 구현</li>
  <li>개인회원 마이페이지 - 북마크, 받은 제안, 개인정보 수정 기능 개발</li>
  <li>기업회원 마이페이지 - 북마크 및 지원자 관리(조회 / 상태 변경) 기능 구현</li>
</ul>
&nbsp

<h2>개발환경</h2>
<ul>
  <li>Front : HTML,CSS,Javascript,jQuery,JSP</li>
  <li>back &nbsp: Java,SQL,Spring,Oracle,Mybatis</li>
  <li>협업툴 : Notion, Github, Figma</li>
</ul>
&nbsp

<h2>트러블 슈팅</h2>
<h3>문제 상황</h3>
<ul>
  <li>프로젝트 기간이 한정적이라 DB 설계 및 데이터 처리 방식(물리 삭제 vs 논리 삭제)에서 의사결정이 필요했음. 
      단순 물리 삭제하면, <strong>데이터 복구 불가 · 통계 집계 오류 · 이력 추적 불가</strong> 문제가 발생</li>
  <li>신입/경력 이력서 등록 기능에서 신입은 경력사항이 없어도 submit이 이루어져야 하나 
      null 처리가 되지 않아 <strong>경력사항 입력 Validation 오류</strong>가 발생</li>
</ul>

<h3>개선 방안</h3>
<ul>
  <li><strong>Soft Delete(논리 삭제) 패턴</strong>을 채택하여 실제 레코드를 삭제하지 않고 Y/N으로 화면에서 노출 및 숨김 처리, 
      WHERE절 필터링을 적용해 무결성과 이력 복구 보장</li>
  <li><strong>RequestParam의 Required 옵션을 false</strong>로 설정하고, 
      비즈니스 로직에서 조건부 검증을 적용해 신입/경력 구분에 따라 Validation을 유연하게 처리</li>
</ul>

<h2>화면 설계</h2>
<p>노션 : https://www.notion.so/263e7dcfb28a818d90b4ccb17a8e418b?source=copy_link</p>
&nbsp

<h2>테이블 설계</h2>
<b>초안</b>
<img src="https://github.com/user-attachments/assets/65438436-7bfa-407c-999e-2bb93436589f">
<b>최종</b>
<img src="https://github.com/user-attachments/assets/ef1d5070-062b-4310-980b-6f62655af689">


