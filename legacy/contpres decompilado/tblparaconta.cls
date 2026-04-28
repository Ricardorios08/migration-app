VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblparaconta"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CaerPaco As String
Public ProvPaco As String
Public ChsrPaco As String
Public DeexPaco As String
Public PaexPaco As String
Public CatePaco As String
Public CajaPaco As String
Public CarePaco As String
Public PatrPaco As String
Public ReejPaco As String
Public FedePaco As String
Public MiinPaco As String
Public ParpPaco As String
Public CcrpPaco As String
Public SacePaco As String
Public DefaPaco As String
Public TranPaco As String
Public AltaUsua As String


Public Function MsgErrorGet() '4079C0
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '4079CF
  MsgError = Value
End Sub

Public Function PeriInfoGet() '4079DE
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '4079ED
  PeriInfo = Value
End Sub

Public Function CaerPacoGet() '4079FC
  CaerPacoGet = CaerPaco
End Function

Public Sub CaerPacoPut(Value) '407A0B
  CaerPaco = Value
End Sub

Public Function ProvPacoGet() '407A1A
  ProvPacoGet = ProvPaco
End Function

Public Sub ProvPacoPut(Value) '407A29
  ProvPaco = Value
End Sub

Public Function ChsrPacoGet() '407A38
  ChsrPacoGet = ChsrPaco
End Function

Public Sub ChsrPacoPut(Value) '407A47
  ChsrPaco = Value
End Sub

Public Function DeexPacoGet() '407A56
  DeexPacoGet = DeexPaco
End Function

Public Sub DeexPacoPut(Value) '407A65
  DeexPaco = Value
End Sub

Public Function PaexPacoGet() '407A74
  PaexPacoGet = PaexPaco
End Function

Public Sub PaexPacoPut(Value) '407A83
  PaexPaco = Value
End Sub

Public Function CatePacoGet() '407A92
  CatePacoGet = CatePaco
End Function

Public Sub CatePacoPut(Value) '407AA1
  CatePaco = Value
End Sub

Public Function CajaPacoGet() '407AB0
  CajaPacoGet = CajaPaco
End Function

Public Sub CajaPacoPut(Value) '407ABF
  CajaPaco = Value
End Sub

Public Function CarePacoGet() '407ACE
  CarePacoGet = CarePaco
End Function

Public Sub CarePacoPut(Value) '407ADD
  CarePaco = Value
End Sub

Public Function PatrPacoGet() '407AEC
  PatrPacoGet = PatrPaco
End Function

Public Sub PatrPacoPut(Value) '407AFB
  PatrPaco = Value
End Sub

Public Function ReejPacoGet() '407B0A
  ReejPacoGet = ReejPaco
End Function

Public Sub ReejPacoPut(Value) '407B19
  ReejPaco = Value
End Sub

Public Function FedePacoGet() '407B28
  FedePacoGet = FedePaco
End Function

Public Sub FedePacoPut(Value) '407B37
  FedePaco = Value
End Sub

Public Function MiinPacoGet() '407B46
  MiinPacoGet = MiinPaco
End Function

Public Sub MiinPacoPut(Value) '407B55
  MiinPaco = Value
End Sub

Public Function ParpPacoGet() '407B64
  ParpPacoGet = ParpPaco
End Function

Public Sub ParpPacoPut(Value) '407B73
  ParpPaco = Value
End Sub

Public Function CcrpPacoGet() '407B82
  CcrpPacoGet = CcrpPaco
End Function

Public Sub CcrpPacoPut(Value) '407B91
  CcrpPaco = Value
End Sub

Public Function SacePacoGet() '407BA0
  SacePacoGet = SacePaco
End Function

Public Sub SacePacoPut(Value) '407BAF
  SacePaco = Value
End Sub

Public Function DefaPacoGet() '407BBE
  DefaPacoGet = DefaPaco
End Function

Public Sub DefaPacoPut(Value) '407BCD
  DefaPaco = Value
End Sub

Public Function TranPacoGet() '407BDC
  TranPacoGet = TranPaco
End Function

Public Sub TranPacoPut(Value) '407BEB
  TranPaco = Value
End Sub

Public Function AltaUsuaGet() '407BFA
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '407C09
  AltaUsua = Value
End Sub
