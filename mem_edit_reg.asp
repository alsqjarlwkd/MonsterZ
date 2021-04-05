<%@CODEPAGE ="65001"%>
<%Response.CharSet ="utf-8"%>
<!--#include file="dbconn.inc"-->
<!--mem_edit_reg.asp-->

<%if session("id") = "" then%>
<script>
  alert("잘못된 접근");
  javascript:history.back();
</script>
<%else

  mem_idx = request.form("mem_idx")
  pwd = request.form("pwd")
  phone = request.form("phone")

  sql = "select pwd from member where mem_idx="&mem_idx
  set rs = dbconn.execute(sql)

  if pwd = rtrim(rs("pwd")) then
  'update'
  sql = "update member set phone='"
  sql = sql &phone&"' where mem_idx="&mem_idx

  dbconn.execute(sql)%>
  <script type="text/javascript">
    alert("회원 정보 수정되었습니다.");
    location.href="default.asp";
  </script>
  <%else%>
  <script type="text/javascript">
  alert("비밀번호가 일치하지 않습니다.");
  javascript:history.back();
  </script>
<%
  end if
end if
  rs.close
  dbconn.close

  set rs = nothing
  set dbconn = nothing
%>
