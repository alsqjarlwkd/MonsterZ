<!DOCTYPE html>
<%@CODEPAGE ="65001"%>
<%Response.CharSet ="utf-8"%>
<!--#include file="dbconn.inc"-->
<!--mem_edit.asp-->

<% if session("id") = "" then %>
<script>
  alert("접근 제한 페이지입니다.");
  javascript:history.back();
</script>
<% else

sql = "select * from member where userid = '"&session("id")&"'"
set rs = dbconn.execute(sql)
%>
<html>
  <head>
    <!--<meta charset="UTF-8">-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="mem_edit.css">
    <title>MonsterZ</title>
  </head>
  <body charset="utf-8">
    <div class="Mem_edit" align="center">
        <div id="Mem_edit_p"><p>MonsterZ 회원 정보 수정</p></div>
        <div class="inputSection">
            <form class="Mem_edit_Form" action="mem_edit_reg.asp" method="post">
              <input type="hidden" name="mem_idx" value="<%=rs("mem_idx")%>">
                <label>
                    <p>이름</p>
                    <input id="inputname" type="text" placeholder="이름" name="username" style="width: 300px; height: 50px; margin-bottom: 10px;" value="<%=rs("username")%>" readonly>
                    <p>아이디</p>
                    <input  id="inputId" type="text" placeholder="아이디" name="ID" style="width: 300px; height: 50px; margin-bottom: 10px;" value="<%=rs("userid")%>" readonly>
                    <p>비밀번호</p>
                    <input id="inputpassword" type="password" placeholder="비밀번호" name="pwd" style="width: 300px; height: 50px; margin-bottom: 10px;">
                    <p style="margin-top: 0px; color: red;" class="MustTypingId">필수 입력란 입니다!! (최소3~5글자)</p>
                    <p>비밀번호 재확인</p>
                    <input id="inputOkpassword" type="password" placeholder="비밀번호 재확인" name="pwd2" style="width: 300px; height: 50px; margin-bottom: 10px;">
                    <p style="margin-top: 0px; color: red;" class="MustTypingId">필수 입력란 입니다!! (최소3~5글자)</p>
                    <p>휴대전화</p>
                    <input id="inputPhone" type="text" placeholder="휴대전화" name="Phone" style="width: 300px; height: 50px; margin-bottom: 10px;">
                    <p style="margin-top: 0px; color: red;" class="MustTypingId">필수 입력란 입니다!! (최소3~5글자)</p>
                </label>
            </form>
        </div>
        <div class="Mem_edit_btn_wrapper">
        <div class="Mem_edit_btn">
            <p>수정하기</p>
        </div>
    </div>
    <p style="text-align: center;">Copyright © MonsterZ Corp. All Rights Reserved.</p>
    </div>

    <script src="mem_edit.js"></script>
</html>
<%end if
  rs.close
  dbconn.close

  set rs = nothing
  set dbconn = nothing
%>
