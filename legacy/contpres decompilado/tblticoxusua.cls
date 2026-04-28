VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblticoxusua"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiTico As String
Public DetaTico As String
Public CodiUsua As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '403B0C
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '403B1B
  MsgError = Value
End Sub

Public Function CodiTicoGet() '403B2A
  CodiTicoGet = CodiTico
End Function

Public Sub CodiTicoPut(Value) '403B39
  CodiTico = Value
End Sub

Public Function DetaTicoGet() '403B48
  DetaTicoGet = DetaTico
End Function

Public Sub DetaTicoPut(Value) '403B57
  DetaTico = Value
End Sub

Public Function CodiUsuaGet() '403B66
  CodiUsuaGet = CodiUsua
End Function

Public Sub CodiUsuaPut(Value) '403B75
  CodiUsua = Value
End Sub

Public Function AltaUsuaGet() '403B84
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '403B93
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '403BA2
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '403BB1
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '403BC0
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '403BCF
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '403BDE
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '403BED
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '403BFC
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '403C0B
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '403C1A
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '403C29
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '403C38
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '403C47
  BajaMoti = Value
End Sub
