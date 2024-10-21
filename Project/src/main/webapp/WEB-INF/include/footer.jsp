<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer>
     <ul>
       <li><a href="#">이용약관</a></li>
       <li>|</li>
       <li><a href="#">개인정보처리방침</a></li>
       <li>|</li>
       <li><a href="#">위치기반서비스</a></li>
       <li>|</li>
       <li><a href="#">사업자정보확인</a></li>
       <li>|</li>
       <li><a href="#">게시글 수집 및 이용안내</a></li>
       <li>|</li>
       <li><a href="#">고객센터</a></li>
     </ul>
     <p>@Jobduck Corp. All rights reserved.</p>
   </footer>
   <script>
   const $header         = document.querySelector("header")
   const $menuBtn        = document.querySelector(".menu-btn");
   const $headerUtil     = document.querySelectorAll(".header-util li");
   const $utilBtn        = document.querySelector(".menu-btn button");
   const $headerComunity = document.querySelector(".header-comunity")
   const $submenu = document.querySelector(".header-comunity ul")

   
   let menuActive = false;
   $menuBtn.addEventListener("click", (e) => {
     menuActive = !menuActive;
     console.log(menuActive);
     if (menuActive) {
       $header.classList.add("menu-btn-active");
       $menuBtn.classList.add("menu-btn-active");
       $utilBtn.classList.add("menu-btn-active");
       $submenu.classList.add("menu-btn-active");
       for(let i = 0; i < 3; i++){
         $headerUtil[i].style.display = "none"
       }

     } else {
       $header.classList.remove("menu-btn-active");
       $menuBtn.classList.remove("menu-btn-active");
       $utilBtn.classList.remove("menu-btn-active");
       $submenu.classList.remove("menu-btn-active");

       for(let i = 0; i < 3; i++){
         $headerUtil[i].style.display = "block"
       }
     }
   });
 </script>