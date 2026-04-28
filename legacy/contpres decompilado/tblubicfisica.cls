VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblubicfisica"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public IdUbfi As String
Public DetaUbfi As String
Public CucuPers As String
Public CodiTiUbfi As String
Public TeleUbfi As String
Public CeluUbfi As String
Public DireUbfi As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '405C08
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '405C17
  MsgError = Value
End Sub

Public Function IdUbfiGet() '405C26
  IdUbfiGet = IdUbfi
End Function

Public Sub IdUbfiPut(Value) '405C35
  IdUbfi = Value
End Sub

Public Function DetaUbfiGet() '405C44
  DetaUbfiGet = DetaUbfi
End Function

Public Sub DetaUbfiPut(Value) '405C53
  DetaUbfi = Value
End Sub

Public Function CucuPersGet() '405C62
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '405C71
  CucuPers = Value
End Sub

Public Function CodiTiUbfiGet() '405C80
  CodiTiUbfiGet = CodiTiUbfi
End Function

Public Sub CodiTiUbfiPut(Value) '405C8F
  CodiTiUbfi = Value
End Sub

Public Function TeleUbfiGet() '405C9E
  TeleUbfiGet = TeleUbfi
End Function

Public Sub TeleUbfiPut(Value) '405CAD
  TeleUbfi = Value
End Sub

Public Function CeluUbfiGet() '405CBC
  CeluUbfiGet = CeluUbfi
End Function

Public Sub CeluUbfiPut(Value) '405CCB
  CeluUbfi = Value
End Sub

Public Function DireUbfiGet() '405CDA
  DireUbfiGet = DireUbfi
End Function

Public Sub DireUbfiPut(Value) '405CE9
  DireUbfi = Value
End Sub

Public Function AltaUsuaGet() '405CF8
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '405D07
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '405D16
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '405D25
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '405D34
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '405D43
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '405D52
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '405D61
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '405D70
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '405D7F
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '405D8E
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '405D9D
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '405DAC
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '405DBB
  BajaMoti = Value
End Sub
