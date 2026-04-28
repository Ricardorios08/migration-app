VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblcheque"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public ExpeImpu As String
Public NumeLiqu As String
Public CucuPers As String
Public DetaProv As String
Public CodiBanc As String
Public DetaBanc As String
Public NumeMoba As String
Public InteMoba As String
Public SecuCheq As String
Public ImpoCheq As String
Public PeriInfo As String
Public NumeOrpa As String
Public FechCheq As String
Public FereCheq As String
Public FepaCheq As String
Public FeanCheq As String
Public OrdeCheq As String
Public DetaCheq As String
Public AutoCheq As String


Public Function MsgErrorGet() '407600
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40760F
  MsgError = Value
End Sub

Public Function ExpeImpuGet() '40761E
  ExpeImpuGet = ExpeImpu
End Function

Public Sub ExpeImpuPut(Value) '40762D
  ExpeImpu = Value
End Sub

Public Function NumeLiquGet() '40763C
  NumeLiquGet = NumeLiqu
End Function

Public Sub NumeLiquPut(Value) '40764B
  NumeLiqu = Value
End Sub

Public Function CucuPersGet() '40765A
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '407669
  CucuPers = Value
End Sub

Public Function DetaProvGet() '407678
  DetaProvGet = DetaProv
End Function

Public Sub DetaProvPut(Value) '407687
  DetaProv = Value
End Sub

Public Function CodiBancGet() '407696
  CodiBancGet = CodiBanc
End Function

Public Sub CodiBancPut(Value) '4076A5
  CodiBanc = Value
End Sub

Public Function DetaBancGet() '4076B4
  DetaBancGet = DetaBanc
End Function

Public Sub DetaBancPut(Value) '4076C3
  DetaBanc = Value
End Sub

Public Function NumeMobaGet() '4076D2
  NumeMobaGet = NumeMoba
End Function

Public Sub NumeMobaPut(Value) '4076E1
  NumeMoba = Value
End Sub

Public Function InteMobaGet() '4076F0
  InteMobaGet = InteMoba
End Function

Public Sub InteMobaPut(Value) '4076FF
  InteMoba = Value
End Sub

Public Function SecuCheqGet() '40770E
  SecuCheqGet = SecuCheq
End Function

Public Sub SecuCheqPut(Value) '40771D
  SecuCheq = Value
End Sub

Public Function ImpoCheqGet() '40772C
  ImpoCheqGet = ImpoCheq
End Function

Public Sub ImpoCheqPut(Value) '40773B
  ImpoCheq = Value
End Sub

Public Function PeriInfoGet() '40774A
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '407759
  PeriInfo = Value
End Sub

Public Function NumeOrpaGet() '407768
  NumeOrpaGet = NumeOrpa
End Function

Public Sub NumeOrpaPut(Value) '407777
  NumeOrpa = Value
End Sub

Public Function FechCheqGet() '407786
  FechCheqGet = FechCheq
End Function

Public Sub FechCheqPut(Value) '407795
  FechCheq = Value
End Sub

Public Function FereCheqGet() '4077A4
  FereCheqGet = FereCheq
End Function

Public Sub FereCheqPut(Value) '4077B3
  FereCheq = Value
End Sub

Public Function FepaCheqGet() '4077C2
  FepaCheqGet = FepaCheq
End Function

Public Sub FepaCheqPut(Value) '4077D1
  FepaCheq = Value
End Sub

Public Function FeanCheqGet() '4077E0
  FeanCheqGet = FeanCheq
End Function

Public Sub FeanCheqPut(Value) '4077EF
  FeanCheq = Value
End Sub

Public Function OrdeCheqGet() '4077FE
  OrdeCheqGet = OrdeCheq
End Function

Public Sub OrdeCheqPut(Value) '40780D
  OrdeCheq = Value
End Sub

Public Function DetaCheqGet() '40781C
  DetaCheqGet = DetaCheq
End Function

Public Sub DetaCheqPut(Value) '40782B
  DetaCheq = Value
End Sub

Public Function AutoCheqGet() '40783A
  AutoCheqGet = AutoCheq
End Function

Public Sub AutoCheqPut(Value) '407849
  AutoCheq = Value
End Sub
