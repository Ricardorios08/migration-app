VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblinsumo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiInsu As String
Public DetaInsu As String
Public UlprInsu As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '403D78
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '403D87
  MsgError = Value
End Sub

Public Function CodiInsuGet() '403D96
  CodiInsuGet = CodiInsu
End Function

Public Sub CodiInsuPut(Value) '403DA5
  CodiInsu = Value
End Sub

Public Function DetaInsuGet() '403DB4
  DetaInsuGet = DetaInsu
End Function

Public Sub DetaInsuPut(Value) '403DC3
  DetaInsu = Value
End Sub

Public Function UlprInsuGet() '403DD2
  UlprInsuGet = UlprInsu
End Function

Public Sub UlprInsuPut(Value) '403DE1
  UlprInsu = Value
End Sub

Public Function AltaUsuaGet() '403DF0
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '403DFF
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '403E0E
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '403E1D
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '403E2C
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '403E3B
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '403E4A
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '403E59
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '403E68
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '403E77
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '403E86
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '403E95
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '403EA4
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '403EB3
  BajaMoti = Value
End Sub
