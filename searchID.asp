<%@CODEPAGE="65001"%>
<%Response.CharSet="utf-8"%>
<!--#include file="dbconn.inc"-->
<!--searchID.asp-->

<%
    name = request.form("Name")
    phone = request.form("PhoneNumber")

    sql = "select * from member where username='"&name&"' and phone='"&phone&"'"

    set rs = dbconn.execute(sql)

    if rs.bof and rs.eof then ' 검색 결과가 없으면
%>
    <script>
        alert("ID를 찾을 수 없습니다.");
        javascript:history.back();
    </script>
<% else %>
    <script>
        alert("<%=rs("userid")%> 입니다.");
        window.close();
    </script>
<% end if
rs.close
dbconn.close

%>