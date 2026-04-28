VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblentereca"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiEnre As String
Public DetaEnre As String


Public Function MsgErrorGet() '40247C
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40248B
  MsgError = Value
End Sub

Public Function CodiEnreGet() '40249A
  CodiEnreGet = CodiEnre
End Function

Public Sub CodiEnrePut(Value) '4024A9
  CodiEnre = Value
End Sub

Public Function DetaEnreGet() '4024B8
  DetaEnreGet = DetaEnre
End Function

Public Sub DetaEnrePut(Value) '4024C7
  DetaEnre = Value
End Sub
