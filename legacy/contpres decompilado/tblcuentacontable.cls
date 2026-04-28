VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblcuentacontable"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiCuco As String
Public DetaCuco As String
Public ImpuCuco As String
Public CodiTicu As String
Public DebeCuco As String
Public HabeCuco As String
Public SaldCuco As String
Public DescCuco As String
Public AltaUsua As String
Public DebeMoas As String
Public HabeMoas As String
Public SaldDeu As String
Public SaldAcre As String


Public Function MsgErrorGet() '4052FC
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40530B
  MsgError = Value
End Sub

Public Function PeriInfoGet() '40531A
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '405329
  PeriInfo = Value
End Sub

Public Function CodiCucoGet() '405338
  CodiCucoGet = CodiCuco
End Function

Public Sub CodiCucoPut(Value) '405347
  CodiCuco = Value
End Sub

Public Function DetaCucoGet() '405356
  DetaCucoGet = DetaCuco
End Function

Public Sub DetaCucoPut(Value) '405365
  DetaCuco = Value
End Sub

Public Function ImpuCucoGet() '405374
  ImpuCucoGet = ImpuCuco
End Function

Public Sub ImpuCucoPut(Value) '405383
  ImpuCuco = Value
End Sub

Public Function CodiTicuGet() '405392
  CodiTicuGet = CodiTicu
End Function

Public Sub CodiTicuPut(Value) '4053A1
  CodiTicu = Value
End Sub

Public Function DebeCucoGet() '4053B0
  DebeCucoGet = DebeCuco
End Function

Public Sub DebeCucoPut(Value) '4053BF
  DebeCuco = Value
End Sub

Public Function HabeCucoGet() '4053CE
  HabeCucoGet = HabeCuco
End Function

Public Sub HabeCucoPut(Value) '4053DD
  HabeCuco = Value
End Sub

Public Function SaldCucoGet() '4053EC
  SaldCucoGet = SaldCuco
End Function

Public Sub SaldCucoPut(Value) '4053FB
  SaldCuco = Value
End Sub

Public Function DescCucoGet() '40540A
  DescCucoGet = DescCuco
End Function

Public Sub DescCucoPut(Value) '405419
  DescCuco = Value
End Sub

Public Function AltaUsuaGet() '405428
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '405437
  AltaUsua = Value
End Sub

Public Function DebeMoasGet() '405446
  DebeMoasGet = DebeMoas
End Function

Public Sub DebeMoasPut(Value) '405455
  DebeMoas = Value
End Sub

Public Function HabeMoasGet() '405464
  HabeMoasGet = HabeMoas
End Function

Public Sub HabeMoasPut(Value) '405473
  HabeMoas = Value
End Sub

Public Function SaldDeuGet() '405482
  SaldDeuGet = SaldDeu
End Function

Public Sub SaldDeuPut(Value) '405491
  SaldDeu = Value
End Sub

Public Function SaldAcreGet() '4054A0
  SaldAcreGet = SaldAcre
End Function

Public Sub SaldAcrePut(Value) '4054AF
  SaldAcre = Value
End Sub
