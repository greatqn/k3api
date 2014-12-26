Attribute VB_Name = "SysObj"
Private mSystemProfile As Object '系统基本参数对象(会计期间等)
Private mGLView As Object '基本资料界面对象(如科目维护)
Private mGLData As Object '基本资料数据对象(如科目数据结果集)
Private mSystemData As Object '帐套连接信息对象(帐套名，当前用户等)
Public Sub RefreshAllObjects()
    Set mSystemProfile = Nothing
    Set mGLView = Nothing
    Set mGLData = Nothing
    Set mSystemData = Nothing
    Set mAppPub = Nothing
End Sub
Public Property Get SystemProfile() As Object
    If mSystemProfile Is Nothing Then
        Set mSystemProfile = GLData.SystemProfile
    End If
    Set SystemProfile = mSystemProfile
End Property
Public Property Set SystemProfile(ByVal NewVal As Object)
    Set mSystemProfile = NewVal
    Set GLData.SystemProfile = NewVal
End Property
Public Property Get SystemData() As Object
    If mSystemData Is Nothing Then
        Set mSystemData = CreateObject("EBCBase.ClientBase").SystemData
    End If
    Set SystemData = mSystemData
End Property
Public Property Get GLData() As Object
    If mGLData Is Nothing Then
        Set mGLData = CreateObject("EBCGLView.GLData")
    End If
    Set GLData = mGLData
End Property
Public Property Get GLView() As Object
    If mGLView Is Nothing Then
        Set mGLView = CreateObject("EBCGLView.GLView")
    End If
    Set GLView = mGLView
End Property


