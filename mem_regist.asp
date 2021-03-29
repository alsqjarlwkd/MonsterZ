<%@CODEPAGE ="65001"%>
<%Response.CharSet ="utf-8"%>
<!--#include file="dbconn.inc"-->
<!--mem_regist.asp-->

<% '데이터 받아오기
    username = request.form("inputname")
    userid = request.form("InputId")
    pwd = request.form("inputpassword")
    phone = request.form("inputPhone")
    'birYear = request.form("inputYear")
    'birMonth = request.form("inputMonth")
    'birDay = request.form("inputDay")

    'SQL문
    sql = "select * from member where userid = '"&userid&"'"
    set rs = server.createobject("ADODB.Recordset")
    rs.open sql, dbconn, 1

    '검색 결과 없으면 --> 가입
    if rs.bof and rs.eof then   'bof = bigin of file, eof = end of file
        sql = "insert into member values ('"
        sql = sql &userid&"', '"
        sql = sql &pwd&"', '"
        sql = sql &username&"', '"
        'sql = sql &birYear&"', '"
        'sql = sql &birMonth&"', '"
        'sql = sql &birDay&"', '"
        sql = sql &phone&"', default)"

        dbconn.execute(sql)
%>
    <script>
        alert("가입완료");
        location.href="Login.html";
    </script>
<%else%>
    <script>
        alert("이미 사용중인 id 입니다.");
        javascript:history.back();
    </script>
<%end if
rs.close
dbconn.close
set rs = nothing
set dbconn = nothing
%>
