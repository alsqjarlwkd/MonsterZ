<!DOCTYPE html>
<%@CODEPAGE ="65001"%>
<%Response.CharSet ="utf-8"%>
<!--#include file="dbconn.inc"-->
<html><head></head>
<body><center>
<% if session("id") = "" then %>
  <h2>회원만 접근할 수 잇는 페이지 입니다.</h2>
  <hr>
  <br>sessionID: <%session.sessionid()%><br>
  <a href="member.html">회원가입</a><br><br>
  <a href="login.html">로그인</a>
<%else%>
  <H2><%response.write Session("name")%> 님 로그인 되었습니다.</h2>
  <br><a href = "mem_edit.asp">회원정보수정</a>
  <a href = "mem_del.asp">회원탈퇴</a>
  <a href = "logout.asp">로그아웃</a>
  <br>sessionID: <%response.write Session("id")%><br>
<%end if%>
</center></body></html>
