VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tbltipocuco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiTicu As String
Public DetaTicu As String
Public ImpuTicu As String


Public Function MsgErrorGet() '402848
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '402857
  MsgError = Value
End Sub

Public Function CodiTicuGet() '402866
  CodiTicuGet = CodiTicu
End Function

Public Sub CodiTicuPut(Value) '402875
  CodiTicu = Value
End Sub

Public Function DetaTicuGet() '402884
  DetaTicuGet = DetaTicu
End Function

Public Sub DetaTicuPut(Value) '402893
  DetaTicu = Value
End Sub

Public Function ImpuTicuGet() '4028A2
  ImpuTicuGet = ImpuTicu
End Function

Public Sub ImpuTicuPut(Value) '4028B1
  ImpuTicu = Value
End Sub
