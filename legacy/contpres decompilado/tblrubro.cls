VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblrubro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public IdRubro As String
Public DetaRubro As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '4038C0
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '4038CF
  MsgError = Value
End Sub

Public Function IdRubroGet() '4038DE
  IdRubroGet = IdRubro
End Function

Public Sub IdRubroPut(Value) '4038ED
  IdRubro = Value
End Sub

Public Function DetaRubroGet() '4038FC
  DetaRubroGet = DetaRubro
End Function

Public Sub DetaRubroPut(Value) '40390B
  DetaRubro = Value
End Sub

Public Function AltaUsuaGet() '40391A
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '403929
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '403938
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '403947
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '403956
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '403965
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '403974
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '403983
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '403992
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '4039A1
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '4039B0
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '4039BF
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '4039CE
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '4039DD
  BajaMoti = Value
End Sub
