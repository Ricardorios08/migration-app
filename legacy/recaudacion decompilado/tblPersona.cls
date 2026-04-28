VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblPersona"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CucuPers As String
Public NudoPers As String
Public DetaPers As String
Public TelePers As String
Public DetaCall As String
Public NumeCasa As String
Public DetaBarr As String
Public ManzPers As String
Public CasaPers As String
Public UbicPers As String
Public DetaLoca As String
Public FeveDifu As String


Public Function MsgErrorGet() '4030DC
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '4030EB
  MsgError = Value
End Sub

Public Function CucuPersGet() '4030FA
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '403109
  CucuPers = Value
End Sub

Public Function NudoPersGet() '403118
  NudoPersGet = NudoPers
End Function

Public Sub NudoPersPut(Value) '403127
  NudoPers = Value
End Sub

Public Function DetaPersGet() '403136
  DetaPersGet = DetaPers
End Function

Public Sub DetaPersPut(Value) '403145
  DetaPers = Value
End Sub

Public Function TelePersGet() '403154
  TelePersGet = TelePers
End Function

Public Sub TelePersPut(Value) '403163
  TelePers = Value
End Sub

Public Function DetaCallGet() '403172
  DetaCallGet = DetaCall
End Function

Public Sub DetaCallPut(Value) '403181
  DetaCall = Value
End Sub

Public Function NumeCasaGet() '403190
  NumeCasaGet = NumeCasa
End Function

Public Sub NumeCasaPut(Value) '40319F
  NumeCasa = Value
End Sub

Public Function DetaBarrGet() '4031AE
  DetaBarrGet = DetaBarr
End Function

Public Sub DetaBarrPut(Value) '4031BD
  DetaBarr = Value
End Sub

Public Function ManzPersGet() '4031CC
  ManzPersGet = ManzPers
End Function

Public Sub ManzPersPut(Value) '4031DB
  ManzPers = Value
End Sub

Public Function CasaPersGet() '4031EA
  CasaPersGet = CasaPers
End Function

Public Sub CasaPersPut(Value) '4031F9
  CasaPers = Value
End Sub

Public Function UbicPersGet() '403208
  UbicPersGet = UbicPers
End Function

Public Sub UbicPersPut(Value) '403217
  UbicPers = Value
End Sub

Public Function DetaLocaGet() '403226
  DetaLocaGet = DetaLoca
End Function

Public Sub DetaLocaPut(Value) '403235
  DetaLoca = Value
End Sub

Public Function FeveDifuGet() '403244
  FeveDifuGet = FeveDifu
End Function

Public Sub FeveDifuPut(Value) '403253
  FeveDifu = Value
End Sub
