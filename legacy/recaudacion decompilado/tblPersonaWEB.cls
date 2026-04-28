VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblPersonaWEB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CucuPewe As String
Public DetaPewe As String
Public SexoPewe As String
Public TipePewe As String
Public DirecPewe As String
Public MailPewe As String
Public TelePewe As String


Public Function MsgErrorGet() '4029F0
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '4029FF
  MsgError = Value
End Sub

Public Function CucuPeweGet() '402A0E
  CucuPeweGet = CucuPewe
End Function

Public Sub CucuPewePut(Value) '402A1D
  CucuPewe = Value
End Sub

Public Function DetaPeweGet() '402A2C
  DetaPeweGet = DetaPewe
End Function

Public Sub DetaPewePut(Value) '402A3B
  DetaPewe = Value
End Sub

Public Function SexoPeweGet() '402A4A
  SexoPeweGet = SexoPewe
End Function

Public Sub SexoPewePut(Value) '402A59
  SexoPewe = Value
End Sub

Public Function TipePeweGet() '402A68
  TipePeweGet = TipePewe
End Function

Public Sub TipePewePut(Value) '402A77
  TipePewe = Value
End Sub

Public Function DirecPeweGet() '402A86
  DirecPeweGet = DirecPewe
End Function

Public Sub DirecPewePut(Value) '402A95
  DirecPewe = Value
End Sub

Public Function MailPeweGet() '402AA4
  MailPeweGet = MailPewe
End Function

Public Sub MailPewePut(Value) '402AB3
  MailPewe = Value
End Sub

Public Function TelePeweGet() '402AC2
  TelePeweGet = TelePewe
End Function

Public Sub TelePewePut(Value) '402AD1
  TelePewe = Value
End Sub
