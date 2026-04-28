VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblbanco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiBanc As String
Public DetaBanc As String
Public NumeBanc As String
Public CodiCuco As String
Public FeanBanc As String
Public UlchBanc As String
Public EmauCheq As String
Public ProcBanc As String
Public DescBanc As String
Public DescAdvBanc As String
Public TxtBanc As String
Public ConautBanc As String
Public CodiUsua As String
Public SaldAlIni As String
Public TDebSinConc As String
Public TCredSinConc As String
Public TDebSinReg As String
Public TCredSinReg As String
Public TResulConci As String


Public Function MsgErrorGet() '408164
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '408173
  MsgError = Value
End Sub

Public Function PeriInfoGet() '408182
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '408191
  PeriInfo = Value
End Sub

Public Function CodiBancGet() '4081A0
  CodiBancGet = CodiBanc
End Function

Public Sub CodiBancPut(Value) '4081AF
  CodiBanc = Value
End Sub

Public Function DetaBancGet() '4081BE
  DetaBancGet = DetaBanc
End Function

Public Sub DetaBancPut(Value) '4081CD
  DetaBanc = Value
End Sub

Public Function NumeBancGet() '4081DC
  NumeBancGet = NumeBanc
End Function

Public Sub NumeBancPut(Value) '4081EB
  NumeBanc = Value
End Sub

Public Function CodiCucoGet() '4081FA
  CodiCucoGet = CodiCuco
End Function

Public Sub CodiCucoPut(Value) '408209
  CodiCuco = Value
End Sub

Public Function FeanBancGet() '408218
  FeanBancGet = FeanBanc
End Function

Public Sub FeanBancPut(Value) '408227
  FeanBanc = Value
End Sub

Public Function UlchBancGet() '408236
  UlchBancGet = UlchBanc
End Function

Public Sub UlchBancPut(Value) '408245
  UlchBanc = Value
End Sub

Public Function EmauCheqGet() '408254
  EmauCheqGet = EmauCheq
End Function

Public Sub EmauCheqPut(Value) '408263
  EmauCheq = Value
End Sub

Public Function ProcBancGet() '408272
  ProcBancGet = ProcBanc
End Function

Public Sub ProcBancPut(Value) '408281
  ProcBanc = Value
End Sub

Public Function DescBancGet() '408290
  DescBancGet = DescBanc
End Function

Public Sub DescBancPut(Value) '40829F
  DescBanc = Value
End Sub

Public Function DescAdvBancGet() '4082AE
  DescAdvBancGet = DescAdvBanc
End Function

Public Sub DescAdvBancPut(Value) '4082BD
  DescAdvBanc = Value
End Sub

Public Function TxtBancGet() '4082CC
  TxtBancGet = TxtBanc
End Function

Public Sub TxtBancPut(Value) '4082DB
  TxtBanc = Value
End Sub

Public Function ConautBancGet() '4082EA
  ConautBancGet = ConautBanc
End Function

Public Sub ConautBancPut(Value) '4082F9
  ConautBanc = Value
End Sub

Public Function CodiUsuaGet() '408308
  CodiUsuaGet = CodiUsua
End Function

Public Sub CodiUsuaPut(Value) '408317
  CodiUsua = Value
End Sub

Public Function SaldAlIniGet() '408326
  SaldAlIniGet = SaldAlIni
End Function

Public Sub SaldAlIniPut(Value) '408335
  SaldAlIni = Value
End Sub

Public Function TDebSinConcGet() '408344
  TDebSinConcGet = TDebSinConc
End Function

Public Sub TDebSinConcPut(Value) '408353
  TDebSinConc = Value
End Sub

Public Function TCredSinConcGet() '408362
  TCredSinConcGet = TCredSinConc
End Function

Public Sub TCredSinConcPut(Value) '408371
  TCredSinConc = Value
End Sub

Public Function TDebSinRegGet() '408380
  TDebSinRegGet = TDebSinReg
End Function

Public Sub TDebSinRegPut(Value) '40838F
  TDebSinReg = Value
End Sub

Public Function TCredSinRegGet() '40839E
  TCredSinRegGet = TCredSinReg
End Function

Public Sub TCredSinRegPut(Value) '4083AD
  TCredSinReg = Value
End Sub

Public Function TResulConciGet() '4083BC
  TResulConciGet = TResulConci
End Function

Public Sub TResulConciPut(Value) '4083CB
  TResulConci = Value
End Sub
