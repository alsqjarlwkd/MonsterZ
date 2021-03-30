<!DOCTYPE html>
<%@CODEPAGE ="65001"%>
<%Response.CharSet ="utf-8"%>
<!--#include file="dbconn.inc"-->
<!--login_check.asp-->

<%
    userid = request.form("id")
    pwd = request.form("pwd")

    'id가 일치하면
    sql = "select * from member where userid = '"&userid&"'"

    set rs = dbconn.execute(sql)

    if rs.bof and rs.eof then
%>
    <script>
        alert("ID 를 찾을 수 없습니다.");
        location.href="JoinUs.html";
    </script>
<%  'id가 일치하면
    'pw체크
    else if rtrim(rs("pwd")) = pwd then
    'pw 일치하면 --> Session 변수 할당 (db의 id와 name)
        session("id") = rs("userid")
        session("name") = rs("username")
        response.redirect "default.asp"
    else 'pw가 일치하지 않다면
%>
    <script>
        alert("비밀번호가 일치하지 않습니다.");
        javascript:history.back();
    </script>
<% end if
rs.close
dbconn.close

set rs = nothing
set dbconn = nothing
end if%>