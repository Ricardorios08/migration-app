VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblacceso"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiUsua As String
Public CodiMenu As String
Public AltaAcce As String
Public BajaAcce As String
Public ModiAcce As String
Public AudiAcce As String
Public ImprAcce As String
Public AltaUsua As String


Public Function MsgErrorGet() '40345C
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40346B
  MsgError = Value
End Sub

Public Function CodiUsuaGet() '40347A
  CodiUsuaGet = CodiUsua
End Function

Public Sub CodiUsuaPut(Value) '403489
  CodiUsua = Value
End Sub

Public Function CodiMenuGet() '403498
  CodiMenuGet = CodiMenu
End Function

Public Sub CodiMenuPut(Value) '4034A7
  CodiMenu = Value
End Sub

Public Function AltaAcceGet() '4034B6
  AltaAcceGet = AltaAcce
End Function

Public Sub AltaAccePut(Value) '4034C5
  AltaAcce = Value
End Sub

Public Function BajaAcceGet() '4034D4
  BajaAcceGet = BajaAcce
End Function

Public Sub BajaAccePut(Value) '4034E3
  BajaAcce = Value
End Sub

Public Function ModiAcceGet() '4034F2
  ModiAcceGet = ModiAcce
End Function

Public Sub ModiAccePut(Value) '403501
  ModiAcce = Value
End Sub

Public Function AudiAcceGet() '403510
  AudiAcceGet = AudiAcce
End Function

Public Sub AudiAccePut(Value) '40351F
  AudiAcce = Value
End Sub

Public Function ImprAcceGet() '40352E
  ImprAcceGet = ImprAcce
End Function

Public Sub ImprAccePut(Value) '40353D
  ImprAcce = Value
End Sub

Public Function AltaUsuaGet() '40354C
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '40355B
  AltaUsua = Value
End Sub
