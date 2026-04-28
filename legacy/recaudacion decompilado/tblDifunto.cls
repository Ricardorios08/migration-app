VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblDifunto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiDifu As String
Public CodiCeme As String
Public CodiTise As String
Public SeccDifu As String
Public FilaDifu As String
Public NumeDifu As String
Public PerpDifu As String
Public ParvDifu As String
Public FeveDifu As String
Public LetrDifu As String
Public CampDifu As String


Public Function MsgErrorGet() '402E44
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '402E53
  MsgError = Value
End Sub

Public Function CodiDifuGet() '402E62
  CodiDifuGet = CodiDifu
End Function

Public Sub CodiDifuPut(Value) '402E71
  CodiDifu = Value
End Sub

Public Function CodiCemeGet() '402E80
  CodiCemeGet = CodiCeme
End Function

Public Sub CodiCemePut(Value) '402E8F
  CodiCeme = Value
End Sub

Public Function CodiTiseGet() '402E9E
  CodiTiseGet = CodiTise
End Function

Public Sub CodiTisePut(Value) '402EAD
  CodiTise = Value
End Sub

Public Function SeccDifuGet() '402EBC
  SeccDifuGet = SeccDifu
End Function

Public Sub SeccDifuPut(Value) '402ECB
  SeccDifu = Value
End Sub

Public Function FilaDifuGet() '402EDA
  FilaDifuGet = FilaDifu
End Function

Public Sub FilaDifuPut(Value) '402EE9
  FilaDifu = Value
End Sub

Public Function NumeDifuGet() '402EF8
  NumeDifuGet = NumeDifu
End Function

Public Sub NumeDifuPut(Value) '402F07
  NumeDifu = Value
End Sub

Public Function PerpDifuGet() '402F16
  PerpDifuGet = PerpDifu
End Function

Public Sub PerpDifuPut(Value) '402F25
  PerpDifu = Value
End Sub

Public Function ParvDifuGet() '402F34
  ParvDifuGet = ParvDifu
End Function

Public Sub ParvDifuPut(Value) '402F43
  ParvDifu = Value
End Sub

Public Function FeveDifuGet() '402F52
  FeveDifuGet = FeveDifu
End Function

Public Sub FeveDifuPut(Value) '402F61
  FeveDifu = Value
End Sub

Public Function LetrDifuGet() '402F70
  LetrDifuGet = LetrDifu
End Function

Public Sub LetrDifuPut(Value) '402F7F
  LetrDifu = Value
End Sub

Public Function CampDifuGet() '402F8E
  CampDifuGet = CampDifu
End Function

Public Sub CampDifuPut(Value) '402F9D
  CampDifu = Value
End Sub
