VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form FrmMain 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "凭证接口二次开发演示"
   ClientHeight    =   4410
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9120
   BeginProperty Font 
      Name            =   "宋体"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "FrmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4410
   ScaleWidth      =   9120
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.ListBox ListStatus 
      Height          =   960
      Left            =   60
      TabIndex        =   23
      Top             =   3030
      Width           =   8985
   End
   Begin VB.CommandButton CmdPrint 
      Caption         =   "打印报告(&P)"
      Height          =   330
      Left            =   7800
      TabIndex        =   22
      Top             =   2580
      Width           =   1180
   End
   Begin TabDlg.SSTab SSTab 
      Height          =   2835
      Left            =   30
      TabIndex        =   3
      Top             =   120
      Width           =   7455
      _ExtentX        =   13150
      _ExtentY        =   5001
      _Version        =   393216
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "连接"
      TabPicture(0)   =   "FrmMain.frx":000C
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "CmdConn"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "CmdQConn"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "FrameConn"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "凭证"
      TabPicture(1)   =   "FrmMain.frx":0028
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "LbVch(1)"
      Tab(1).Control(1)=   "LbVch(0)"
      Tab(1).Control(2)=   "CboGroup"
      Tab(1).Control(3)=   "TxtNumber"
      Tab(1).Control(4)=   "CmdDoVch"
      Tab(1).Control(5)=   "Frame1"
      Tab(1).ControlCount=   6
      TabCaption(2)   =   "基础资料"
      TabPicture(2)   =   "FrmMain.frx":0044
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "TxtItemNumber"
      Tab(2).Control(1)=   "CmdDoSys"
      Tab(2).Control(2)=   "CboSysclass"
      Tab(2).Control(3)=   "LbVch(3)"
      Tab(2).Control(4)=   "LbVch(2)"
      Tab(2).ControlCount=   5
      Begin VB.TextBox TxtItemNumber 
         Height          =   300
         Left            =   -72540
         TabIndex        =   25
         Top             =   810
         Width           =   1665
      End
      Begin VB.CommandButton CmdDoSys 
         Caption         =   "调用(&D)"
         Height          =   330
         Left            =   -71100
         TabIndex        =   24
         Top             =   1830
         Width           =   1185
      End
      Begin VB.Frame Frame1 
         Caption         =   "凭证选项"
         Height          =   2175
         Left            =   -74730
         TabIndex        =   16
         Top             =   480
         Width           =   2745
         Begin VB.OptionButton OptVch 
            Caption         =   "凭证删除(中间层)"
            Height          =   400
            Index           =   4
            Left            =   270
            TabIndex        =   21
            Top             =   1740
            Width           =   2200
         End
         Begin VB.OptionButton OptVch 
            Caption         =   "凭证保存(中间层)"
            Height          =   400
            Index           =   3
            Left            =   270
            TabIndex        =   20
            Top             =   1359
            Width           =   2200
         End
         Begin VB.OptionButton OptVch 
            Caption         =   "凭证修改(界面)"
            Height          =   400
            Index           =   2
            Left            =   270
            TabIndex        =   19
            Top             =   976
            Width           =   2200
         End
         Begin VB.OptionButton OptVch 
            Caption         =   "凭证新增(界面数据)"
            Height          =   400
            Index           =   1
            Left            =   270
            TabIndex        =   18
            Top             =   593
            Width           =   2200
         End
         Begin VB.OptionButton OptVch 
            Caption         =   "凭证新增(界面)"
            Height          =   400
            Index           =   0
            Left            =   270
            TabIndex        =   17
            Top             =   210
            Value           =   -1  'True
            Width           =   2200
         End
      End
      Begin VB.CommandButton CmdDoVch 
         Caption         =   "调用(&D)"
         Height          =   330
         Left            =   -70680
         TabIndex        =   15
         Top             =   1920
         Width           =   1185
      End
      Begin VB.Frame FrameConn 
         Caption         =   "登录方式"
         Height          =   1785
         Left            =   390
         TabIndex        =   12
         Top             =   510
         Width           =   2595
         Begin VB.OptionButton OptConn 
            Caption         =   "无UI登录"
            Height          =   405
            Index           =   1
            Left            =   330
            TabIndex        =   14
            Top             =   1020
            Width           =   2025
         End
         Begin VB.OptionButton OptConn 
            Caption         =   "选择账套登录"
            Height          =   405
            Index           =   0
            Left            =   330
            TabIndex        =   13
            Top             =   450
            Value           =   -1  'True
            Width           =   2025
         End
      End
      Begin VB.CommandButton CmdQConn 
         Caption         =   "取消登录(&C)"
         Enabled         =   0   'False
         Height          =   330
         Left            =   4500
         TabIndex        =   11
         Top             =   1560
         Width           =   1350
      End
      Begin VB.CommandButton CmdConn 
         Caption         =   "开始登录(&L)"
         Height          =   330
         Left            =   4470
         TabIndex        =   10
         Top             =   870
         Width           =   1350
      End
      Begin VB.ComboBox CboSysclass 
         Height          =   300
         Left            =   -72540
         Style           =   2  'Dropdown List
         TabIndex        =   8
         Top             =   510
         Width           =   2625
      End
      Begin VB.TextBox TxtNumber 
         Height          =   300
         Left            =   -70710
         TabIndex        =   5
         Top             =   1050
         Width           =   1665
      End
      Begin VB.ComboBox CboGroup 
         Height          =   300
         Left            =   -70710
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   660
         Width           =   1695
      End
      Begin VB.Label LbVch 
         AutoSize        =   -1  'True
         Caption         =   "编辑代码："
         Height          =   180
         Index           =   3
         Left            =   -73950
         TabIndex        =   26
         Top             =   870
         Width           =   900
      End
      Begin VB.Label LbVch 
         AutoSize        =   -1  'True
         Caption         =   "选择基础资料类别："
         Height          =   180
         Index           =   2
         Left            =   -74670
         TabIndex        =   9
         Top             =   570
         Width           =   1620
      End
      Begin VB.Label LbVch 
         AutoSize        =   -1  'True
         Caption         =   "凭证字："
         Height          =   180
         Index           =   0
         Left            =   -71610
         TabIndex        =   7
         Top             =   720
         Width           =   720
      End
      Begin VB.Label LbVch 
         AutoSize        =   -1  'True
         Caption         =   "凭证号："
         Height          =   180
         Index           =   1
         Left            =   -71640
         TabIndex        =   6
         Top             =   1140
         Width           =   720
      End
   End
   Begin VB.TextBox TxtStatus 
      Height          =   345
      Left            =   7980
      MultiLine       =   -1  'True
      TabIndex        =   1
      Top             =   1500
      Visible         =   0   'False
      Width           =   1065
   End
   Begin VB.CommandButton CmdExit 
      Caption         =   "退出(&E)"
      Height          =   330
      Left            =   7740
      TabIndex        =   0
      Top             =   450
      Width           =   1180
   End
   Begin MSComctlLib.StatusBar sb 
      Align           =   2  'Align Bottom
      Height          =   315
      Left            =   0
      TabIndex        =   2
      Top             =   4095
      Width           =   9120
      _ExtentX        =   16087
      _ExtentY        =   556
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   5
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   3528
            MinWidth        =   3528
            Text            =   "就绪"
            TextSave        =   "就绪"
            Key             =   "Status"
            Object.ToolTipText     =   "状态"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   1
            Object.Width           =   5292
            MinWidth        =   5292
            Text            =   "公司"
            TextSave        =   "公司"
            Key             =   "Dbname"
            Object.ToolTipText     =   "当前帐套公司名"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   2
            Object.Width           =   3519
            MinWidth        =   3528
            Text            =   "帐套"
            TextSave        =   "帐套"
            Key             =   "Company"
            Object.ToolTipText     =   "当前帐套名"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   2117
            MinWidth        =   2117
            Text            =   "9999年99期"
            TextSave        =   "9999年99期"
            Key             =   "Period"
            Object.ToolTipText     =   "当前会计期间"
         EndProperty
         BeginProperty Panel5 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   2646
            MinWidth        =   2646
            Key             =   "User"
            Object.ToolTipText     =   "用户名称"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "FrmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Option Compare Text
Private FirstLoad As Long
Private K3Login As Object '当前连接对象
Private ReturnVoucherID As Long '保存返回的凭证ID
Private StrConn As String



 
Private Sub CmdConn_Click()
    On Error GoTo Conn_Error
    Dim HasConn As Boolean '当前连接是否成功
    HasConn = False
    If OptConn(0).Value Then '选择登录
        Set K3Login = CreateObject("K3Login.ClsLogin")
        If Not K3Login.CheckLogin Then
            AddString "连接不成功"
            Set K3Login = Nothing
            Exit Sub
        End If
        HasConn = True
        StrConn = K3Login.PropsString
        
'        第二个登录组件
'        Set K3Login = CreateObject("KDLogin.clsLogin")
'        If K3Login.Login("super", "基础系统", False) Then '参数说明：子系统ID，子系统名称，中间层服务器是否有改变
'            HasConn = True
'            StrConn = K3Login.PropsString
'        End If
        
    Else '按当前默认登录
        HasConn = False
        Set K3Login = CreateObject("KDLogin.NoUILogin")
        If K3Login.Login("super", "", 1, "001", "1234567") Then '参数说明：子系统ID，中间层服务器，账套号，用户名，密码
            HasConn = True
            StrConn = K3Login.PropsString
        End If
    End If
    CmdQConn.Enabled = HasConn
    CmdConn.Enabled = Not HasConn
    '显示账套连接信息
    SetStatusBar HasConn
    Exit Sub
Conn_Error:
    AddString "ErrCode:" & Err & " ErrDescription:" & Err.Description
End Sub

Private Sub CmdDoSys_Click()
        Dim retcol As Object
        Select Case CboSysclass.Text
            Case "凭证字查询"
                Set retcol = GLView.VoucherGroupLookup
            Case "凭证字新增"
                Set retcol = GLView.VoucherGroupAdd
            Case "凭证字修改"
                Set retcol = GLView.VoucherGroupEdit(1)
            Case "科目查询"
                Set retcol = GLView.AccountLookup
            Case "科目新增"
                Set retcol = GLView.AccountAdd
            Case "科目修改"
                Set retcol = GLView.AccountEdit(TxtItemNumber.Text)
            Case "币别查询"
                Set retcol = GLView.CurrencyLookup
            Case "币别新增"
                Set retcol = GLView.CurrencyAdd
            Case "币别修改"
                Set retcol = GLView.CurrencyEdit(1)
            Case "核算项目(职员)查询"
                Set retcol = GLView.ItemLookup(3) '核算项目类别t_ItemClass中职员ItemClassID=3
            Case "核算项目(职员)新增"
                Set retcol = GLView.ItemAdd(3)
            Case "核算项目(职员)修改"
                Set retcol = GLView.ItemEdit(TxtItemNumber.Text)
            Case "辅助资料(文化程度)查询"
                Set retcol = GLView.SubMesLookup(23) '文化程度(工业t_Submestype FtypeID=23)
            Case "辅助资料(文化程度)新增"
                Set retcol = GLView.SubMesAdd(23)
            Case "辅助资料(文化程度)修改"
                Set retcol = GLView.SubMesEdit(TxtItemNumber.Text, 23)
        End Select
        If retcol.ReturnOK Then
             If Not retcol.ReturnObject Is Nothing Then
                AddString "功能操作[" & CboSysclass.Text & "]成功"
             End If
        End If
End Sub

Private Sub CmdDoVch_Click()
    Dim Vch As Object, Mode As Long
    Set Vch = CreateObject("Mvedit.MVoucherEdit")
    'Mode值= '新增 0        '显示 1        '修改 2        '审核 3
    If OptVch(0).Value = True Then '凭证新增(界面)
        Mode = 0
        Vch.LoadVoucher Mode, , , , ReturnVoucherID
    ElseIf OptVch(1).Value = True Then '凭证新增(界面数据)
        Mode = 0
        ReturnVoucherID = 0
        Dim Voucher As Object
        Set Voucher = CreateVoucher
        If Voucher Is Nothing Then Exit Sub
        Dim rel As KDVBF.Relevancy
        Set rel = New KDVBF.Relevancy '建立输入对象
        Set rel.EditObject = Voucher '设置凭证数据对象到Rel参数
        rel.MultiEdit = False '是否允许多张凭证编辑
        Vch.LoadVoucher Mode, , rel, , ReturnVoucherID
        MsgVoucher ReturnVoucherID
    ElseIf OptVch(2).Value = True Then '凭证修改(界面)
        If ReturnVoucherID <= 0 Then
            MsgBox "请先新增一张凭证!"
            Exit Sub
         End If
        Mode = 2
        Vch.LoadVoucher Mode, ReturnVoucherID
    ElseIf OptVch(3).Value = True Then '凭证保存(中间层)
        ReturnVoucherID = SaveVoucher
    ElseIf OptVch(4).Value = True Then '凭证删除
        If ReturnVoucherID <= 0 Then
            MsgBox "请先新增一张凭证!"
            Exit Sub
         End If
        If DeleteVoucher(ReturnVoucherID) Then
            AddString "凭证成功删除!" & ReturnVoucherID
            ReturnVoucherID = 0
        End If
    End If
    
    Set Vch = Nothing
End Sub

Private Sub CmdExit_Click()
    Unload Me
End Sub

Private Sub CmdPrint_Click()
       Dim a As Object '
       Set a = CreateObject("KDNotation.Notation")
       a.Text = TxtStatus.Text
       a.ShowDialog "凭证接口二次开发演示"
End Sub

Private Sub CmdQConn_Click()
    On Error GoTo Quit_Error
    If OptConn(0).Value Then '登录取消
        Set K3Login = Nothing
    Else '按当前默认登录
    
    End If
    CmdQConn.Enabled = False
    CmdConn.Enabled = True
    AddString "当前登录已经取消!"
    SetStatusBar
    Exit Sub
Quit_Error:
    AddString "ErrCode:" & Err & " ErrDescription:" & Err.Description
End Sub

Private Sub Form_Load()
    SetStatusBar
    FirstLoad = True
End Sub

Public Sub SetStatusBar(Optional ByVal HasConn As Boolean = False)
    On Error GoTo init_Fail
    If Not HasConn Then '当前没有数据连接
        sb.Panels(2).Text = "当前没有可用的数据连接"
        sb.Panels(3).Text = ""
        sb.Panels(4).Text = ""
        sb.Panels(5).Text = ""
        SSTab.TabVisible(1) = False
        SSTab.TabVisible(2) = False
        Exit Sub
    End If
    SSTab.TabVisible(1) = True
    SSTab.TabVisible(2) = True
    
    AddString "当前账套数据连接串[" & StrConn & "]"
    
    'If K3Login.IsDemo Then sb.Panels(3).Text = "演示版-"
    sb.Panels(3).Text = sb.Panels(3).Text & Trim$(K3Login.AcctName)
    sb.Panels(2).Text = GLData.SystemProfile.CompanyName
    With GLData.SystemProfile
        sb.Panels(4).Text = .GLGetCurrentYear & "年" & .GLGetCurrentPeriod & "期"
    End With
    sb.Panels(5).Text = SystemData.CurrentUserName
    AddString "账套[" & K3Login.AcctName & "]连接成功,公司名称:" & GLData.SystemProfile.CompanyName
    
    Exit Sub
init_Fail:
    AddString "ErrCode:" & Err & " ErrDescription:" & Err.Description
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set K3Login = Nothing
End Sub

Private Sub SSTab_Click(PreviousTab As Integer)
    Select Case SSTab.Tab
    Case 0 '登录
    Case 1 '凭证
        '填充凭证字列表
        GLView.FillVoucherGroup CboGroup
        If CboGroup.ListCount > 0 Then CboGroup.ListIndex = 0
        TxtNumber.Text = "1"
    Case 2 '基础资料
        With CboSysclass
            .Clear
            .AddItem "凭证字查询"
            .AddItem "凭证字新增"
            .AddItem "凭证字修改"
            .AddItem "科目查询"
            .AddItem "科目新增"
            .AddItem "科目修改"
            .AddItem "币别查询"
            .AddItem "币别新增"
            .AddItem "币别修改"
            .AddItem "核算项目(职员)查询"
            .AddItem "核算项目(职员)新增"
            .AddItem "核算项目(职员)修改"
            .AddItem "辅助资料(文化程度)查询"
            .AddItem "辅助资料(文化程度)新增"
            .AddItem "辅助资料(文化程度)修改"
        End With
        
    End Select
End Sub
'建立界面显示凭证数据
Private Function CreateVoucher() As Object
    Dim Voucher As Object '凭证对象
    Dim VoucherEntrys As Object '凭证分录对象
    Set Voucher = CreateObject("EBCGL.Voucher")
    Voucher.Construct Nothing, Nothing '建立凭证数据对象
    Set VoucherEntrys = Voucher.Entries '设置凭证分录对象
    Voucher.InternalInd = "Super" '机制凭证信息(可选)
    '设置凭证默认日期(可选)
'    Voucher.TransDate = Format(Now, "yyyy-mm-dd") '业务日期
 '   Voucher.VoucherDate = Format(Now, "yyyy-mm-dd") '凭证日期
     Voucher.GroupID = CboGroup.ItemData(CboGroup.ListIndex) '凭证字
     Voucher.Number = Val(TxtNumber.Text) '凭证号
    
    '下面输入凭证分录数据
    '借方分录数据
    Dim Acct1 As Long, Acct2 As Long
    GetRndAccountID Acct1, Acct2
    If Acct1 * Acct2 = 0 Then Exit Function
    VoucherEntrys.Add
    With Voucher.Entries(Voucher.Entries.Count)
        .Explanation = "凭证录入检测-分录1"
        .AccountID = Acct1
        .Amount = 100
        .AmountFor = 100
        .ExchangeRate = 1
        .CurrencyID = 1
        .DC = 1 '借方
    End With
    '贷方分录数据
    VoucherEntrys.Add
    With Voucher.Entries(Voucher.Entries.Count)
        .Explanation = "凭证录入检测-分录1"
        .AccountID = Acct2
        .Amount = 100 '本位币
        .AmountFor = 100 '原币
        .ExchangeRate = 1 '汇率
        .CurrencyID = 1 '币别
        .DC = 0 '贷方
    End With
    Set CreateVoucher = Voucher
End Function
'中间层直接保存凭证
Private Function SaveVoucher() As Long
    On Error GoTo ErrHandle
    Dim Acct1 As Long, Acct2 As Long
    SaveVoucher = 0
    
    '获取凭证随机科目
    GetRndAccountID Acct1, Acct2
    If Acct1 * Acct2 = 0 Then Exit Function
    AddString "凭证:" & Acct1 & "-" & Acct2
    
    Dim Voucher As New kfo.Dictionary
    Dim VchDate As Date
    VchDate = DateSerial(SystemProfile.GLGetCurrentYear, SystemProfile.GLGetCurrentPeriod, 1)
    Voucher("FDate") = VchDate '当前期间凭证日期
    Voucher("FGroup") = CboGroup.Text '凭证字
    Voucher("FNumber") = Val(TxtNumber.Text)      '凭证号
    Voucher("FInternalInd") = "Super" '机制凭证信息(可选)　为ＮＵＬＬ的话，删除时会报＂堆栈空间溢出＂
    
    Dim VoucherEntry As New kfo.Vector
    Dim tempEntry As kfo.Dictionary
    Dim dtvect As Object
    
    Set tempEntry = New kfo.Dictionary
    tempEntry("FExplanation") = "凭证录入检测-分录1"
    tempEntry("FAccountID") = Acct1
    tempEntry("FCurrencyID") = 1
    tempEntry("FDC") = 1
    tempEntry("FAmountFor") = 100
    tempEntry("FAmount") = 100
'Set dtvect = GetItemofAcct(Acct1)
'If Not (dtvect Is Nothing) Then
'    Set tempEntry("Detail") = dtvect
'End If
    VoucherEntry.Add tempEntry
    
    Set tempEntry = New kfo.Dictionary
    tempEntry("FExplanation") = "凭证录入检测-分录2"
    tempEntry("FAccountID") = Acct2
    tempEntry("FCurrencyID") = 1
    tempEntry("FDC") = 0
    tempEntry("FAmountFor") = 100
    tempEntry("FAmount") = 100
'Set dtvect = GetItemofAcct(Acct2)
'If Not (dtvect Is Nothing) Then
'    Set tempEntry("Detail") = dtvect
'End If
    '==============================================
    '保存带核算项目的部分
    'If Not (GetItemofAcct(Acct1) Is Nothing) Then _
    '    Set VoucherEntry("_Detail") = GetItemofAcct(Acct1)



    '==============================================
    VoucherEntry.Add tempEntry
    Set Voucher("_Entries") = VoucherEntry

    Dim Cre As Object, VoucherID As Long
    Set Cre = CreateObject("EBSGLVoucher.VoucherUpdate")
    VoucherID = Cre.Create(K3Login.PropsString, Voucher)
    Set Cre = Nothing
    MsgVoucher VoucherID
    SaveVoucher = VoucherID
    Exit Function
ErrHandle:
    HandleError Err
End Function
'取得指定的科目的核算项目
Private Function GetItemofAcct(lAcctID As Long) As Object
    
    Dim obj As Object
    Dim rsAcct As Object
    Dim dtVector As kfo.Vector
    Dim Dt As kfo.Dictionary
    
    
    Set obj = CreateObject("EbcglView.GlData")
    Set rsAcct = obj.GetAccountItem(lAcctID)
    If rsAcct Is Nothing Then Exit Function
    '将取得核算项目打包
    Set dtVector = New kfo.Vector
    If rsAcct.RecordCount <> 0 Then
        rsAcct.MoveFirst
        Do While rsAcct.EOF
            Set Dt = New kfo.Dictionary
            Dt("FItemID") = rsAcct!FItemID
            Dt("FItemClassID") = rsAcct!FItemClassID
            dtVector.Add Dt
        Loop
    End If
    AddString "核算项目数" & dtVector.Size
    
    Set GetItemofAcct = dtVector
    
End Function
Private Function DeleteVoucher(ByVal VoucherID As Long) As Boolean
    On Error GoTo ErrHandle
    DeleteVoucher = False
    Dim DelV As Object
    Set DelV = CreateObject("EBSGLVoucher.VoucherUpdate")
    Call DelV.Delete(K3Login.PropsString, VoucherID)
    Set DelV = Nothing

'    Dim VchSet As Object
'    Dim Vch As Object
'    Set VchSet = CreateObject("EBCGL.VoucherSet")
'    Set Vch = VchSet(VoucherID)
'    Call VchSet.Remove(Vch.VoucherID)
'    Set Vch = Nothing
'    Set VchSet = Nothing
    DeleteVoucher = True
    Exit Function
ErrHandle:
    HandleError Err
End Function
'显示凭证信息
Private Sub MsgVoucher(ByVal VoucherID As Long)
    On Error Resume Next
    If VoucherID <= 0 Then Exit Sub
    Dim VchSet As Object    'EBCGL.VoucherSet
    Dim Vch As Object   'EBCGL.Voucher
    Set VchSet = CreateObject("EBCGL.VoucherSet")
    Set Vch = VchSet(VoucherID)
    If Not Vch Is Nothing Then AddString "已经生成一张凭证," & vbCrLf & "凭证字号为: " & Vch.Group & " - " & Vch.Number & " VoucherID为: " & VoucherID
End Sub
'获取凭证保存的随机科目
Private Function GetRndAccountID(Acct1 As Long, Acct2 As Long) As Boolean
    On Error GoTo ErrHandle
    Dim As1 As Long, As2 As Long
    Dim AcctRs As Object
    '获得科目数据结果集
    Set AcctRs = GLData.AccountSet.Recordset.Clone
    '随机选取符合凭证录入的科目
    AcctRs.Filter = " FDetailID=0 and FDetail=1 and FQuantities=0 and FCurrencyID=1 "
    GetRndAccountID = False
    Acct1 = 0
    Acct2 = 0
    If AcctRs.RecordCount <= 0 Then Exit Function
    Randomize Timer
    As1 = Round(Rnd(1000) * (AcctRs.RecordCount - 1))
    AcctRs.Move As1, 1
    Acct1 = AcctRs!FAccountID
    As2 = Round(Rnd(1000) * (AcctRs.RecordCount - 1))
    AcctRs.Move As2, 1
    Acct2 = AcctRs!FAccountID
    GetRndAccountID = True
    Exit Function
ErrHandle:
End Function

Private Sub AddString(ByVal str As String)
    Dim l As Long
    str = "......" & str
    ListStatus.AddItem str
    l = Len(TxtStatus.Text & vbCrLf)
    TxtStatus.Text = TxtStatus.Text & vbCrLf & str
    TxtStatus.SelStart = l
End Sub

Private Sub Text1_Change()

End Sub
