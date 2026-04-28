VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tbltipomovibanco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiTimb As String
Public DetaTimb As String
Public DeCreTimb As String
Public CodiCuco As String
Public PermCucoTimb As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '404784
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '404793
  MsgError = Value
End Sub

Public Function CodiTimbGet() '4047A2
  CodiTimbGet = CodiTimb
End Function

Public Sub CodiTimbPut(Value) '4047B1
  CodiTimb = Value
End Sub

Public Function DetaTimbGet() '4047C0
  DetaTimbGet = DetaTimb
End Function

Public Sub DetaTimbPut(Value) '4047CF
  DetaTimb = Value
End Sub

Public Function DeCreTimbGet() '4047DE
  DeCreTimbGet = DeCreTimb
End Function

Public Sub DeCreTimbPut(Value) '4047ED
  DeCreTimb = Value
End Sub

Public Function CodiCucoGet() '4047FC
  CodiCucoGet = CodiCuco
End Function

Public Sub CodiCucoPut(Value) '40480B
  CodiCuco = Value
End Sub

Public Function PermCucoTimbGet() '40481A
  PermCucoTimbGet = PermCucoTimb
End Function

Public Sub PermCucoTimbPut(Value) '404829
  PermCucoTimb = Value
End Sub

Public Function AltaUsuaGet() '404838
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '404847
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '404856
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '404865
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '404874
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '404883
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '404892
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '4048A1
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '4048B0
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '4048BF
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '4048CE
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '4048DD
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '4048EC
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '4048FB
  BajaMoti = Value
End Sub
