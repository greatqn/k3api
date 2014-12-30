<%@ CODEPAGE=65001 %> 
<% Response.CodePage=65001%> 
<% Response.Charset="UTF-8" %>
<%
ON ERROR RESUME NEXT 
'On Error Goto 0 '取消错误捕捉
dim msgcount
msgcount = 1
Function log(msg)
  response.Write(msgcount&":"&msg)
  'response.Write("<br>")
  response.Write(chr(13))
  msgcount=msgcount+1
end Function

Function showError(msg)
if Err.Number <> 0 Then 
  log("error: " & msg) 
  log("错误 Number：" & Err.Number)
  log("错误信息：" & Err.Description)
  log("源代码: " & Err.Source)
  Err.Clear
end if 

end Function
%>
<%

systemId = 1
username = "001"
password = "1234567"

%>