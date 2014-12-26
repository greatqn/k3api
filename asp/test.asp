<%@ CODEPAGE=65001 %> 
<% Response.CodePage=65001%> 
<% Response.Charset="UTF-8" %>
<%
ON ERROR RESUME NEXT 
'On Error Goto 0 '取消错误捕捉
dim msgcount
set msgcount = 1
Function log(msg)
	response.Write(":"&msg)
	response.Write("<br>")
	'set msgcount=msgcount+1
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
dim conn
set conn = server.createobject("adodb.connection")  
log("t1:" & root) 
log("t2:" & server.mapPath("./mydata.asp") ) 



'http://localhost/KDWebService2/test.asp'
conn.connectionstring="Provider = Microsoft.Jet.OLEDB.4.0;Data Source="&server.mapPath("./mydata.asp") 
conn.open 

log("ttt" & conn) 

dim rs,exec
set rs=server.createobject("adodb.recordset") 
set exec="select * from shop where title like '%'" 
rs.open exec,conn,1,1 
if rs.eof then
	log "&nbsp;没有搜索到您想要的产品信息！"
else
	
end if
conn.close
set rs=nothing
showError("recordset")

log("t1:" & "begin login K3Login") 
dim K3Login
'set K3Login = server.createobject("KDWebServices.clsLogin")
'if Err.Number <> 0 Then 
	'log("error: K3Login create")
	'log(Err.Number)
	'log(Err.Description)
	'log(Err.Source)
'end if 
'log("t1:" & K3Login) 
'log("t2:" & K3Login.PropsString )
'set iAisID = 1
'set strUser = "001"
'set strPassword = "1234567"
'set rs = K3Login.Login("super","",iAisID, strUser, strPassword)
'if Err.Number <> 0 Then 
	'log("error: K3Login")
	'log(Err.Number)
	'log(Err.Description)
	'log(Err.Source)
'end if 
'log("t3:" & K3Login ) 

Set K3Login = CreateObject("KDLogin.NoUILogin")
        If K3Login.Login("super", "", 1, "001", "1234567") Then '参数说明：子系统ID，中间层服务器，账套号，用户名，密码
            HasConn = True
            StrConn = K3Login.PropsString
        End If

log("t4:" & K3Login.PropsString ) 
showError("login")
showError("login")
'set dt = FormatDateTime(now(),"yyyy-MM-dd")
'log("dt:" & dt) 
log("dt:" & now()) 
log("dt:" & date()) 
showError("date")
log("t1:" & "begin save 凭证") 
'获取凭证随机科目
    dim Acct1, Acct2,VoucherID
    Acct1 = 1252
    Acct2 = 1265
showError("voucher")
    Dim Voucher,tempEntry,VoucherEntry,Cre
    set Voucher = CreateObject("kfo.Dictionary")

    Voucher("FDate") = "2008-2-1" '当前期间凭证日期
    Voucher("FGroup") = "调" '凭证字
    Voucher("FNumber") = "1"      '凭证号
    Voucher("FInternalInd") = "Super" '机制凭证信息(可选)　为ＮＵＬＬ的话，删除时会报＂堆栈空间溢出＂

    'Dim VoucherEntry As New kfo.Vector
    'Dim tempEntry As kfo.Dictionary
    'Dim dtvect As Object
    set VoucherEntry = CreateObject("kfo.Vector")

    set tempEntry = CreateObject("kfo.Dictionary")
    tempEntry("FExplanation") = "凭证录入检测-分录1"
    tempEntry("FAccountID") = Acct1
    tempEntry("FCurrencyID") = 1
    tempEntry("FDC") = 1
    tempEntry("FAmountFor") = 100
    tempEntry("FAmount") = 100
log("t5:" & Voucher("FDate") ) 
showError("voucher")
    VoucherEntry.Add tempEntry
    
    set tempEntry = CreateObject("kfo.Dictionary")
    tempEntry("FExplanation") = "凭证录入检测-分录2"
    tempEntry("FAccountID") = Acct2
    tempEntry("FCurrencyID") = 1
    tempEntry("FDC") = 0
    tempEntry("FAmountFor") = 100
    tempEntry("FAmount") = 100

    VoucherEntry.Add tempEntry
    Set Voucher("_Entries") = VoucherEntry

showError("VoucherEntry")
    'Dim Cre As Object, VoucherID As Long
    Set Cre = CreateObject("EBSGLVoucher.VoucherUpdate")
    VoucherID = Cre.Create(K3Login.PropsString, Voucher)
    log("t6:" & VoucherID ) 
showError("VoucherID")

%>