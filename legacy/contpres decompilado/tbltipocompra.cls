VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tbltipocompra"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiTico As String
Public DetaTico As String
Public LimiTico As String
Public ColiTico As String
Public CucuPers As String
Public DetaPers As String
Public MareTico As String
Public DipaTico As String
Public ExobTico As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String
Public Autorizado As String


Public Function MsgErrorGet() '406F04
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '406F13
  MsgError = Value
End Sub

Public Function CodiTicoGet() '406F22
  CodiTicoGet = CodiTico
End Function

Public Sub CodiTicoPut(Value) '406F31
  CodiTico = Value
End Sub

Public Function DetaTicoGet() '406F40
  DetaTicoGet = DetaTico
End Function

Public Sub DetaTicoPut(Value) '406F4F
  DetaTico = Value
End Sub

Public Function LimiTicoGet() '406F5E
  LimiTicoGet = LimiTico
End Function

Public Sub LimiTicoPut(Value) '406F6D
  LimiTico = Value
End Sub

Public Function ColiTicoGet() '406F7C
  ColiTicoGet = ColiTico
End Function

Public Sub ColiTicoPut(Value) '406F8B
  ColiTico = Value
End Sub

Public Function CucuPersGet() '406F9A
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '406FA9
  CucuPers = Value
End Sub

Public Function DetaPersGet() '406FB8
  DetaPersGet = DetaPers
End Function

Public Sub DetaPersPut(Value) '406FC7
  DetaPers = Value
End Sub

Public Function MareTicoGet() '406FD6
  MareTicoGet = MareTico
End Function

Public Sub MareTicoPut(Value) '406FE5
  MareTico = Value
End Sub

Public Function DipaTicoGet() '406FF4
  DipaTicoGet = DipaTico
End Function

Public Sub DipaTicoPut(Value) '407003
  DipaTico = Value
End Sub

Public Function ExobTicoGet() '407012
  ExobTicoGet = ExobTico
End Function

Public Sub ExobTicoPut(Value) '407021
  ExobTico = Value
End Sub

Public Function AltaUsuaGet() '407030
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '40703F
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '40704E
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '40705D
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '40706C
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '40707B
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '40708A
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '407099
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '4070A8
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '4070B7
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '4070C6
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '4070D5
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '4070E4
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '4070F3
  BajaMoti = Value
End Sub

Public Function AutorizadoGet() '407102
  AutorizadoGet = Autorizado
End Function

Public Sub AutorizadoPut(Value) '407111
  Autorizado = Value
End Sub
