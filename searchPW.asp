<%@CODEPAGE="65001"%>
<%Response.CharSet="utf-8"%>
<!--#include file="dbconn.inc"-->
<!--searchID.asp-->

<%
    name = request.form("name")
    id = request.form("ID")
    phone = request.form("PhoneNumber")

    sql = "select * from member where username='"&name&"' and userid='"&id&"' and phone='"&phone&"'"

    set rs = dbconn.execute(sql)

    if rs.bof and rs.eof then ' 검색 결과가 없으면
%>
    <script>
        alert("일치하는 정보를 찾을 수 없습니다.");
        javascript:history.back();
    </script>
<% else %>
    <script>
        alert("<%=rs("pwd")%> 입니다.");
        window.close();
    </script>
<% end if
rs.close
dbconn.close

%>