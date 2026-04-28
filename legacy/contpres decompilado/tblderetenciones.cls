VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblderetenciones"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiRete As String
Public CodiDere As String
Public DetaDere As String
Public PregDere As String
Public ImfiDere As String
Public AcumDere As String
Public AcubDere As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '40688C
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40689B
  MsgError = Value
End Sub

Public Function PeriInfoGet() '4068AA
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '4068B9
  PeriInfo = Value
End Sub

Public Function CodiReteGet() '4068C8
  CodiReteGet = CodiRete
End Function

Public Sub CodiRetePut(Value) '4068D7
  CodiRete = Value
End Sub

Public Function CodiDereGet() '4068E6
  CodiDereGet = CodiDere
End Function

Public Sub CodiDerePut(Value) '4068F5
  CodiDere = Value
End Sub

Public Function DetaDereGet() '406904
  DetaDereGet = DetaDere
End Function

Public Sub DetaDerePut(Value) '406913
  DetaDere = Value
End Sub

Public Function PregDereGet() '406922
  PregDereGet = PregDere
End Function

Public Sub PregDerePut(Value) '406931
  PregDere = Value
End Sub

Public Function ImfiDereGet() '406940
  ImfiDereGet = ImfiDere
End Function

Public Sub ImfiDerePut(Value) '40694F
  ImfiDere = Value
End Sub

Public Function AcumDereGet() '40695E
  AcumDereGet = AcumDere
End Function

Public Sub AcumDerePut(Value) '40696D
  AcumDere = Value
End Sub

Public Function AcubDereGet() '40697C
  AcubDereGet = AcubDere
End Function

Public Sub AcubDerePut(Value) '40698B
  AcubDere = Value
End Sub

Public Function AltaUsuaGet() '40699A
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '4069A9
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '4069B8
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '4069C7
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '4069D6
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '4069E5
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '4069F4
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '406A03
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '406A12
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '406A21
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '406A30
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '406A3F
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '406A4E
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '406A5D
  BajaMoti = Value
End Sub
