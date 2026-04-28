VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblescalas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public FechEsca As String
Public CodiRete As String
Public CodiDere As String
Public CodiEsca As String
Public BaseEsca As String
Public MiniEsca As String
Public MaxiEsca As String
Public ImfiEsca As String
Public AlicEsca As String
Public ImnoEsca As String
Public RemiEsca As String
Public PefiEsca As String
Public PerfEsca As String


Public Function MsgErrorGet() '405600
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40560F
  MsgError = Value
End Sub

Public Function PeriInfoGet() '40561E
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '40562D
  PeriInfo = Value
End Sub

Public Function FechEscaGet() '40563C
  FechEscaGet = FechEsca
End Function

Public Sub FechEscaPut(Value) '40564B
  FechEsca = Value
End Sub

Public Function CodiReteGet() '40565A
  CodiReteGet = CodiRete
End Function

Public Sub CodiRetePut(Value) '405669
  CodiRete = Value
End Sub

Public Function CodiDereGet() '405678
  CodiDereGet = CodiDere
End Function

Public Sub CodiDerePut(Value) '405687
  CodiDere = Value
End Sub

Public Function CodiEscaGet() '405696
  CodiEscaGet = CodiEsca
End Function

Public Sub CodiEscaPut(Value) '4056A5
  CodiEsca = Value
End Sub

Public Function BaseEscaGet() '4056B4
  BaseEscaGet = BaseEsca
End Function

Public Sub BaseEscaPut(Value) '4056C3
  BaseEsca = Value
End Sub

Public Function MiniEscaGet() '4056D2
  MiniEscaGet = MiniEsca
End Function

Public Sub MiniEscaPut(Value) '4056E1
  MiniEsca = Value
End Sub

Public Function MaxiEscaGet() '4056F0
  MaxiEscaGet = MaxiEsca
End Function

Public Sub MaxiEscaPut(Value) '4056FF
  MaxiEsca = Value
End Sub

Public Function ImfiEscaGet() '40570E
  ImfiEscaGet = ImfiEsca
End Function

Public Sub ImfiEscaPut(Value) '40571D
  ImfiEsca = Value
End Sub

Public Function AlicEscaGet() '40572C
  AlicEscaGet = AlicEsca
End Function

Public Sub AlicEscaPut(Value) '40573B
  AlicEsca = Value
End Sub

Public Function ImnoEscaGet() '40574A
  ImnoEscaGet = ImnoEsca
End Function

Public Sub ImnoEscaPut(Value) '405759
  ImnoEsca = Value
End Sub

Public Function RemiEscaGet() '405768
  RemiEscaGet = RemiEsca
End Function

Public Sub RemiEscaPut(Value) '405777
  RemiEsca = Value
End Sub

Public Function PefiEscaGet() '405786
  PefiEscaGet = PefiEsca
End Function

Public Sub PefiEscaPut(Value) '405795
  PefiEsca = Value
End Sub

Public Function PerfEscaGet() '4057A4
  PerfEscaGet = PerfEsca
End Function

Public Sub PerfEscaPut(Value) '4057B3
  PerfEsca = Value
End Sub
