<%@CODEPAGE ="65001"%>
<%Response.CharSet ="utf-8"%>
<!--#include file="dbconn.inc"-->
<!--mem_del_go.asp-->

<%if session("id") = "" then%>
<script>
  alert("잘못된 접근");
  javascript:history.back();
</script>
<%else

  sql = "select * from member where userid = '"&session("id")&"'"
  set rs=dbconn.execute(sql)

  sql = "delete from member where userid = '"&session("id")&"'"
  dbconn.execute(sql)

  session.abandon
end if
rs.close
dbconn.close
set rs = nothing
set dbconn = nothing
%>
<script type="text/javascript">
  alert("사이트에서 탈퇴하셧습니다.\n이용해주셔서 감사합니다.");
  location.href="default.asp";
</script>
