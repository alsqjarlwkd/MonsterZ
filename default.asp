<!DOCTYPE html>
<%@CODEPAGE ="65001"%>
<%Response.CharSet ="utf-8"%>
<!--#include file="dbconn.inc"-->
<html>
<head>
  <link rel="stylesheet" href="default.css">
</head>
<body>
<div class="Section1">
<div class="LogoMonsterZ">
<img src="./imgs/Monster_Z_Logo_White.png">
</div>
<div class="navbar">
<div class="navbar_item1">
<ul><p class="menu1" onclick="MonsterZ_introduce();">MonsterZ 소개</p>
  <div class="menu_sub1">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  </div>
  </div>
</ul>
<div class="navbar_item2">
<ul><p class="menu2" onclick="MonsterZ_Product_sell();">상품판매</p>
  <div class="menu_sub2">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  </div>
</div>
</ul>
<div class="navbar_item3">
<ul><p class="menu3">컴퓨터사양</p>
  <div class="menu_sub3">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
</div>
</div>
</ul>
<div class="navbar_item4">
<ul><p class="menu4">임직원</p>
  <div class="menu_sub4">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
</div>
</div>
</ul>
<div class="navbar_item5">
<ul><p class="menu5">MonsterZ 연혁</p>
  <div class="menu_sub5">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
</div>
</div>
</ul>
<div class="Main_login"  style="padding-top:15px; margin-top:0px">
<% if session("id") = "" then %>
<p><a href="Login.html">로그인</a></p>
<p>/</p>
<p><a href="JoinUs.html">회원가입</a></p>
</div>
<%else%>
<div class="Main_login_info" style="width:300px;text-align:center;">
<h4 style="margin-top:0px; text-align:center;"><%=Session("name")%> 님 로그인 되었습니다.</h4>
<div class="Main_login_info_sub" style="text-align:center;">
  <br><a href = "mem_edit.asp" style="text-decoration:none;"><p style="text-decoration:none; display:inline-block">회원정보수정</p></a>
  <a href = "mem_del.asp" style="text-decoration:none;"><p style="text-decoration:none;display:inline-block">회원탈퇴</p></a>
  <a href = "logout.asp" style="text-decoration:none;"><p style="text-decoration:none;display:inline-block">로그아웃</p></a>
  <!--  <br>sessionID: <%response.write Session("id")%><br>
-->
</div>
</div>
<%end if%>
</div>
</div>
</div>
<div class="section2">
<div class="Slide">
<ul>
  <li style="list-style: none;"><img src="./imgs/Monster_Z_Logo_White.png"></li>
  <li style="list-style: none;"><img src="./imgs/Monster_Z_Logo_White.png"></li>
  <li style="list-style: none;"><img src="./imgs/Monster_Z_Logo_White.png"></li>
  <li style="list-style: none;"><img src="./imgs/Monster_Z_Logo_White.png"></li>
  <li style="list-style: none;"><img src="./imgs/Monster_Z_Logo_White.png"></li>
</ul>
</div>
</div>
<hr style="margin-top: 16px; margin-bottom: 16px;">
<div class="section3">
  <div class="MonsterZ_intro">
    <h1>MonsterZ 소개</h1>
    <p>MonsterZ PC방은 인천내에 위치한 유일한 프리미엄 서비스 지원 PC방입니다.</p>
    <p>직원들도 한마음 한뜻으로 모두 함께 MonsterZ PC방의 발전을 위해 진심을 다해 일하고 있습니다.</p>
    <p>2021년도 역삼 체인점 런칭 완료 및 지속적으로 다른 지역으로 체인점을 확장해 나갈 예정입니다.</p>
    <P>최상의 음식과 서비스가 존재하는 MonsterZ에서 직원과 손님이 하나가 되는 PC방을 경험해 보시기 바랍니다.</P>
  </div>
  <div class="MonsterZ_intro_img">
    <img src="./imgs/Monster_Z_Logo_White.png">
  </div>
</div>
<hr style="margin-top: 16px; margin-bottom: 16px;">
<div class="section4">
<div class="MonsterZ_Product_sales">
  <h1>상품 판매</h1>
  <p>상품 판매 섹션 입니다</p>
  <div class="MonsterZ_Product_sales_section"></div>
</div>
</div>
<script crossorigin src="https://unpkg.com/react@17/umd/react.development.js"></script>
<script crossorigin src="https://unpkg.com/react-dom@17/umd/react-dom.development.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="default.js"></script>
</body>
</html>
