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
<ul><p class="menu1">MonsterZ 소개</p>
  <div class="menu_sub1">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  </div>
</ul>
<ul><p class="menu2">상품판매</p>
  <div class="menu_sub2">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  </div>
</ul>
<ul><p class="menu3">컴퓨터사양</p>
  <div class="menu_sub3">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
</div>
</ul>
<ul><p class="menu4">임직원</p>
  <div class="menu_sub4">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
</div>
</ul>
<ul><p class="menu5">MonsterZ 연혁</p>
  <div class="menu_sub5">
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
  <li>dddd</li>
</div>
</ul>
<div class="Main_login"  style="padding-top:15px; margin-top:0px">
<% if session("id") = "" then %>
<p><a href="Login.html">로그인</a></p>
<p>/</p>
<p><a href="JoinUs.html">회원가입</a></p>
</div>
<%else%>
<div class="Main_login_info" style="width:300px">
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
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="default.js"></script>
</body>
</html>
