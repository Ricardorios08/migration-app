VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblcotizacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public PeriInfo As String
Public CodiNope As String
Public CucuPers As String
Public FechCoti As String
Public FeanCoti As String
Public PlenCoti As String
Public MaofCoti As String
Public ObseCoti As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function PeriInfoGet() '405904
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '405913
  PeriInfo = Value
End Sub

Public Function CodiNopeGet() '405922
  CodiNopeGet = CodiNope
End Function

Public Sub CodiNopePut(Value) '405931
  CodiNope = Value
End Sub

Public Function CucuPersGet() '405940
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '40594F
  CucuPers = Value
End Sub

Public Function FechCotiGet() '40595E
  FechCotiGet = FechCoti
End Function

Public Sub FechCotiPut(Value) '40596D
  FechCoti = Value
End Sub

Public Function FeanCotiGet() '40597C
  FeanCotiGet = FeanCoti
End Function

Public Sub FeanCotiPut(Value) '40598B
  FeanCoti = Value
End Sub

Public Function PlenCotiGet() '40599A
  PlenCotiGet = PlenCoti
End Function

Public Sub PlenCotiPut(Value) '4059A9
  PlenCoti = Value
End Sub

Public Function MaofCotiGet() '4059B8
  MaofCotiGet = MaofCoti
End Function

Public Sub MaofCotiPut(Value) '4059C7
  MaofCoti = Value
End Sub

Public Function ObseCotiGet() '4059D6
  ObseCotiGet = ObseCoti
End Function

Public Sub ObseCotiPut(Value) '4059E5
  ObseCoti = Value
End Sub

Public Function AltaUsuaGet() '4059F4
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '405A03
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '405A12
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '405A21
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '405A30
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '405A3F
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '405A4E
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '405A5D
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '405A6C
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '405A7B
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '405A8A
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '405A99
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '405AA8
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '405AB7
  BajaMoti = Value
End Sub
