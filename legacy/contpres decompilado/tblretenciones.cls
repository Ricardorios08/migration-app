VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblretenciones"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiRete As String
Public DetaRete As String
Public CodiCuco As String
Public CucuPers As String
Public UlceRete As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '404A44
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '404A53
  MsgError = Value
End Sub

Public Function PeriInfoGet() '404A62
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '404A71
  PeriInfo = Value
End Sub

Public Function CodiReteGet() '404A80
  CodiReteGet = CodiRete
End Function

Public Sub CodiRetePut(Value) '404A8F
  CodiRete = Value
End Sub

Public Function DetaReteGet() '404A9E
  DetaReteGet = DetaRete
End Function

Public Sub DetaRetePut(Value) '404AAD
  DetaRete = Value
End Sub

Public Function CodiCucoGet() '404ABC
  CodiCucoGet = CodiCuco
End Function

Public Sub CodiCucoPut(Value) '404ACB
  CodiCuco = Value
End Sub

Public Function CucuPersGet() '404ADA
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '404AE9
  CucuPers = Value
End Sub

Public Function UlceReteGet() '404AF8
  UlceReteGet = UlceRete
End Function

Public Sub UlceRetePut(Value) '404B07
  UlceRete = Value
End Sub

Public Function AltaUsuaGet() '404B16
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '404B25
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '404B34
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '404B43
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '404B52
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '404B61
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '404B70
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '404B7F
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '404B8E
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '404B9D
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '404BAC
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '404BBB
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '404BCA
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '404BD9
  BajaMoti = Value
End Sub
