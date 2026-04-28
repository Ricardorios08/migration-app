VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblConcepto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiConc As String
Public DetaConc As String
Public ConcViej As String
Public SacuConc As String


Public Function MsgErrorGet() '4026B0
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '4026BF
  MsgError = Value
End Sub

Public Function CodiConcGet() '4026CE
  CodiConcGet = CodiConc
End Function

Public Sub CodiConcPut(Value) '4026DD
  CodiConc = Value
End Sub

Public Function DetaConcGet() '4026EC
  DetaConcGet = DetaConc
End Function

Public Sub DetaConcPut(Value) '4026FB
  DetaConc = Value
End Sub

Public Function ConcViejGet() '40270A
  ConcViejGet = ConcViej
End Function

Public Sub ConcViejPut(Value) '402719
  ConcViej = Value
End Sub

Public Function SacuConcGet() '402728
  SacuConcGet = SacuConc
End Function

Public Sub SacuConcPut(Value) '402737
  SacuConc = Value
End Sub
