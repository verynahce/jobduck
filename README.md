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
  <li>개인회원 마이페이지 - 이력서 관리: <strong>CRUD</strong> 및 지원 내역·받은 제안 <strong>CREATE/READ</strong> 기능 구현</li>
  <li>개인회원 마이페이지 - 북마크 <strong>ON/OFF</strong>, 유저 정보 <strong>UPDATE</strong> 기능 개발</li>
  <li>개인회원 마이페이지 - 이력서 FORM·DETAIL 화면(UI) 구현</li>
  <li>기업회원 마이페이지 - 채용 공고 <strong>UPDATE/DELETE</strong>, 지원 내역 <strong>READ</strong> 기능 구현</li>
  <li>기업회원 마이페이지 - 채용 공고 FORM·DETAIL 화면(UI) 구현</li>
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
<ul>

  <!-- 사례 1 -->
  <li>
    <strong>1. 사례 – 지원자 리스트 삭제 기능</strong>
    <ul>
      <li>
        <strong>문제</strong><br>
        - 지원자 리스트 삭제 기능 구현 시, 새로고침 시 원복되거나 초기화 후 이벤트 미적용 문제 발생
      </li>
      <li>
        <strong>해결</strong><br>
        - 단순 삭제 대신 <strong>이벤트 위임(Event Delegation)</strong>과 <code>localStorage</code>를 활용해 새로고침·초기화 이후에도 정상 동작하도록 개선
        <pre><code class="language-javascript">
// 삭제 버튼 이벤트 (위임 방식)
$(document).on('click', '.delete', function() {
    var $row = $(this).closest('tr.Dcontent'); 
    var appliIdx = $row.data('idx'); 

    var deletedItems = localStorage.getItem('deletedItems') 
        ? JSON.parse(localStorage.getItem('deletedItems')) 
        : [];
    deletedItems.push(appliIdx); 
    localStorage.setItem('deletedItems', JSON.stringify(deletedItems)); 

    $row.hide(); 
});
        </code></pre>
      </li>
    </ul>
  </li>

  <br><br> <!-- 사례 간 여백 -->

  <!-- 사례 2 -->
  <li>
    <strong>2. 사례 – Soft Delete(논리 삭제) 패턴</strong>
    <ul>
      <li>
        <strong>문제</strong><br>
        - DB 설계 및 데이터 처리 방식(물리 삭제 vs 논리 삭제)에서 의사결정 필요, 물리 삭제 시 <strong>데이터 복구 불가 · 통계 집계 오류 · 이력 추적 불가</strong> 문제가 발생
      </li>
      <li>
        <strong>해결</strong><br>
        - <strong>Soft Delete(논리 삭제) 패턴</strong>을 채택하여 실제 레코드를 삭제하지 않고 Y/N 플래그로 숨김 처리, WHERE절 필터링으로 무결성과 복구 보장
        <pre><code class="language-java">
// Controller 단에서 논리 삭제 처리
@DeleteMapping("/resume/{id}")
public String deleteResume(@PathVariable Long id) {
    // 물리 삭제 대신 UPDATE로 is_deleted 플래그만 변경
    userMapper.updateResumeDeleted(id, "Y");
    return "redirect:/User/MyPage/Resume/List";
}
        </code></pre>
      </li>
    </ul>
  </li>

  <br><br> <!-- 사례 간 여백 -->

  <!-- 사례 3 -->
  <li>
    <strong>3. 사례 – 신입/경력 이력서 등록 Validation</strong>
    <ul>
      <li>
        <strong>문제</strong><br>
        - 신입/경력 이력서 등록 시, 신입 사용자는 경력사항 없이 submit 가능해야 하나 null 처리 오류로 <strong>Validation 에러</strong> 발생
      </li>
      <li>
        <strong>해결</strong><br>
        - <strong>RequestParam의 Required 옵션을 false</strong>로 설정하고, 조건부 검증 로직을 적용해 신입/경력 구분에 따라 Validation을 유연하게 처리
        <pre><code class="language-java">
// 경력 등록 (경력자만 입력하도록 조건부 처리)
if (career_cname != null && !career_cname.isBlank()) {
    userMapper.insertCarrer(user_idx, career_cname, career_description, career_sdate, career_edate);
}
        </code></pre>
      </li>
    </ul>
  </li>
  <br><br> <!-- 사례 간 여백 -->
  <!-- 사례 4 -->
  <li>
    <strong>4. 사례 – 공고·이력서 Bookmark 등록 시 파라미터 인식 오류</strong>
    <ul>
      <li>
        <strong>문제</strong><br>
        - 공고 내역을 반복문으로 출력하고 선택한 공고와 이력서의 idx를 Bookmark DB에 전달하는 과정에서 문제가 발생  
        - <code>parameter</code> 값을 컨트롤러에서 인식하지 못하거나, 선택한 공고의 속성 값을 받아오지 못하는 오류 발생
      </li>
      <li>
        <strong>해결</strong><br>
        - <code>@RequestParam</code>으로 변수명을 고정하여 전달하고, MyBatis XML 쿼리에서는 <code>#{arg0}, #{arg1}</code>를 사용하도록 수정
      </li>
    </ul>
  </li>
  <br>
<pre><code class="language-xml">
<!-- bookmarkMapper.xml -->
<insert id="insertBookmark">
    INSERT INTO bookmark_tb (post_idx, resume_idx)
    VALUES (#{arg0}, #{arg1})
</insert>
</code></pre>


</ul>


<h2>화면 설계</h2>
<p>노션 : https://www.notion.so/263e7dcfb28a818d90b4ccb17a8e418b?source=copy_link</p>
&nbsp

<h2>테이블 설계</h2>
<b>초안</b>
<img src="https://github.com/user-attachments/assets/65438436-7bfa-407c-999e-2bb93436589f">
<b>최종</b>
<img src="https://github.com/user-attachments/assets/ef1d5070-062b-4310-980b-6f62655af689">


