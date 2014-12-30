<!--#include file ="init.asp"-->
<%
fields=Request("fields")
values=Request("values")

arrFields = Split(fields,",")
For I = Lbound(arrFields) to Ubound(arrFields) 
log(arrFields(I)&I)
log(Request(arrFields(I)))
Next

%>