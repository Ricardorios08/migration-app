VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tbltipoasiento"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiTias As String
Public DetaTias As String
Public FijoTias As String


Public Function MsgErrorGet() '4029A8
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '4029B7
  MsgError = Value
End Sub

Public Function CodiTiasGet() '4029C6
  CodiTiasGet = CodiTias
End Function

Public Sub CodiTiasPut(Value) '4029D5
  CodiTias = Value
End Sub

Public Function DetaTiasGet() '4029E4
  DetaTiasGet = DetaTias
End Function

Public Sub DetaTiasPut(Value) '4029F3
  DetaTias = Value
End Sub

Public Function FijoTiasGet() '402A02
  FijoTiasGet = FijoTias
End Function

Public Sub FijoTiasPut(Value) '402A11
  FijoTias = Value
End Sub
