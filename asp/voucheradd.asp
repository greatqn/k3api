<!--#include file ="init.asp"-->
<%

log("t1:" & "begin login K3Login") 
dim K3Login


Set K3Login = CreateObject("KDLogin.NoUILogin")
        If K3Login.Login("super", "", 1, username, password) Then '参数说明：子系统ID，中间层服务器，账套号，用户名，密码
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
'VoucherID = 1505
    'Set DelV = CreateObject("EBSGLVoucher.VoucherUpdate")
    'Call DelV.Delete(K3Login.PropsString, VoucherID)

    Set Cre = CreateObject("EBSGLVoucher.VoucherUpdate")
    VoucherID = Cre.Create(K3Login.PropsString, Voucher)
    log("t6:" & VoucherID ) 
showError("VoucherID")

%>