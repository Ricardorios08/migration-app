VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblfifupartorga"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiFifu As String
Public CodiPart As String
Public CodiOrga As String
Public DeorFipo As String
Public FechFipo As String
Public AutoFipo As String
Public CoauFipo As String
Public AutmFipo As String
Public CodiUsua As String


Public Function MsgErrorGet() '403FE4
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '403FF3
  MsgError = Value
End Sub

Public Function PeriInfoGet() '404002
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '404011
  PeriInfo = Value
End Sub

Public Function CodiFifuGet() '404020
  CodiFifuGet = CodiFifu
End Function

Public Sub CodiFifuPut(Value) '40402F
  CodiFifu = Value
End Sub

Public Function CodiPartGet() '40403E
  CodiPartGet = CodiPart
End Function

Public Sub CodiPartPut(Value) '40404D
  CodiPart = Value
End Sub

Public Function CodiOrgaGet() '40405C
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '40406B
  CodiOrga = Value
End Sub

Public Function DeorFipoGet() '40407A
  DeorFipoGet = DeorFipo
End Function

Public Sub DeorFipoPut(Value) '404089
  DeorFipo = Value
End Sub

Public Function FechFipoGet() '404098
  FechFipoGet = FechFipo
End Function

Public Sub FechFipoPut(Value) '4040A7
  FechFipo = Value
End Sub

Public Function AutoFipoGet() '4040B6
  AutoFipoGet = AutoFipo
End Function

Public Sub AutoFipoPut(Value) '4040C5
  AutoFipo = Value
End Sub

Public Function CoauFipoGet() '4040D4
  CoauFipoGet = CoauFipo
End Function

Public Sub CoauFipoPut(Value) '4040E3
  CoauFipo = Value
End Sub

Public Function AutmFipoGet() '4040F2
  AutmFipoGet = AutmFipo
End Function

Public Sub AutmFipoPut(Value) '404101
  AutmFipo = Value
End Sub

Public Function CodiUsuaGet() '404110
  CodiUsuaGet = CodiUsua
End Function

Public Sub CodiUsuaPut(Value) '40411F
  CodiUsua = Value
End Sub
