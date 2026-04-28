VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblfinalidad"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiFifu As String
Public DetaFifu As String
Public AutoFifu As String
Public ObseFifu As String
Public CoauFifu As String
Public ImpuFifu As String
Public CoesFifu As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '405F14
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '405F23
  MsgError = Value
End Sub

Public Function PeriInfoGet() '405F32
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '405F41
  PeriInfo = Value
End Sub

Public Function CodiFifuGet() '405F50
  CodiFifuGet = CodiFifu
End Function

Public Sub CodiFifuPut(Value) '405F5F
  CodiFifu = Value
End Sub

Public Function DetaFifuGet() '405F6E
  DetaFifuGet = DetaFifu
End Function

Public Sub DetaFifuPut(Value) '405F7D
  DetaFifu = Value
End Sub

Public Function AutoFifuGet() '405F8C
  AutoFifuGet = AutoFifu
End Function

Public Sub AutoFifuPut(Value) '405F9B
  AutoFifu = Value
End Sub

Public Function ObseFifuGet() '405FAA
  ObseFifuGet = ObseFifu
End Function

Public Sub ObseFifuPut(Value) '405FB9
  ObseFifu = Value
End Sub

Public Function CoauFifuGet() '405FC8
  CoauFifuGet = CoauFifu
End Function

Public Sub CoauFifuPut(Value) '405FD7
  CoauFifu = Value
End Sub

Public Function ImpuFifuGet() '405FE6
  ImpuFifuGet = ImpuFifu
End Function

Public Sub ImpuFifuPut(Value) '405FF5
  ImpuFifu = Value
End Sub

Public Function CoesFifuGet() '406004
  CoesFifuGet = CoesFifu
End Function

Public Sub CoesFifuPut(Value) '406013
  CoesFifu = Value
End Sub

Public Function AltaUsuaGet() '406022
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '406031
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '406040
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '40604F
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '40605E
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '40606D
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '40607C
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '40608B
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '40609A
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '4060A9
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '4060B8
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '4060C7
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '4060D6
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '4060E5
  BajaMoti = Value
End Sub
