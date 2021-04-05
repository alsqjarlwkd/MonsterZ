<%@CODEPAGE ="65001"%>
<%Response.CharSet ="utf-8"%>

<% if session("id") = "" then %>
<script>
alert("접근 제한 페이지입니다.");
javascript:history.back();
</script>
<% end if%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>회원탈퇴</title>
  </head>
  <body>
    <center>
    <h1>::::::회 원 탈 퇴::::::</h1>
    <form>
      <fieldset>
        <h3><font color="blue">회원 탈퇴 신청에 앞서 아래의 사항 반드시 확인하라</font><br></h3>
        <b>1. 회원 탈퇴시 현재 로그인된 아이디는즉시 탈퇴 처리되며,<br>
        복구가 불가능합니다.<br><br>

        2.회원정보는 삭제됩니다.<br><br>

        3.더이상 서비스를 제공받지 못합니다.<br></b>
    </fieldset>
    </form>
    <a href=# onclick="del()">탈퇴</a>
    <a href=# onclick="Back()">취소</a>
  </center>
  <script type="text/javascript">
    function Back(){
        javascript:history.back();
    }
    function del(){
      var cc=confirm("정말로 탈퇴하시겠습니까?")
      if(cc){
        location.href="mem_del_go.asp";
      }
    }
  </script>
  </body>
</html>
