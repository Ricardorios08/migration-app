VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblpartida"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiPart As String
Public DetaPart As String
Public Nivel As String
Public Tipo As String
Public CredPart As String
Public CredDetaPart As String
Public EsPartCred As String
Public CredPartGestion As String
Public CredDetaPartGestion As String
Public EsPartCredGestion As String
Public CoauPart As String
Public ImpuPart As String
Public InvePart As String
Public CoesPart As String
Public CodiCuco As String
Public PatrCuco As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '40C7C0
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40C7CF
  MsgError = Value
End Sub

Public Function PeriInfoGet() '40C7DE
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '40C7ED
  PeriInfo = Value
End Sub

Public Function CodiPartGet() '40C7FC
  CodiPartGet = CodiPart
End Function

Public Sub CodiPartPut(Value) '40C80B
  CodiPart = Value
End Sub

Public Function DetaPartGet() '40C81A
  DetaPartGet = DetaPart
End Function

Public Sub DetaPartPut(Value) '40C829
  DetaPart = Value
End Sub

Public Function NivelGet() '40C838
  NivelGet = Nivel
End Function

Public Sub NivelPut(Value) '40C847
  Nivel = Value
End Sub

Public Function TipoGet() '40C856
  TipoGet = Tipo
End Function

Public Sub TipoPut(Value) '40C865
  Tipo = Value
End Sub

Public Function CredPartGet() '40C874
  CredPartGet = CredPart
End Function

Public Sub CredPartPut(Value) '40C883
  CredPart = Value
End Sub

Public Function CredDetaPartGet() '40C892
  CredDetaPartGet = CredDetaPart
End Function

Public Sub CredDetaPartPut(Value) '40C8A1
  CredDetaPart = Value
End Sub

Public Function EsPartCredGet() '40C8B0
  EsPartCredGet = EsPartCred
End Function

Public Sub EsPartCredPut(Value) '40C8BF
  EsPartCred = Value
End Sub

Public Function CredPartGestionGet() '40C8CE
  CredPartGestionGet = CredPartGestion
End Function

Public Sub CredPartGestionPut(Value) '40C8DD
  CredPartGestion = Value
End Sub

Public Function CredDetaPartGestionGet() '40C8EC
  CredDetaPartGestionGet = CredDetaPartGestion
End Function

Public Sub CredDetaPartGestionPut(Value) '40C8FB
  CredDetaPartGestion = Value
End Sub

Public Function EsPartCredGestionGet() '40C90A
  EsPartCredGestionGet = EsPartCredGestion
End Function

Public Sub EsPartCredGestionPut(Value) '40C919
  EsPartCredGestion = Value
End Sub

Public Function CoauPartGet() '40C928
  CoauPartGet = CoauPart
End Function

Public Sub CoauPartPut(Value) '40C937
  CoauPart = Value
End Sub

Public Function ImpuPartGet() '40C946
  ImpuPartGet = ImpuPart
End Function

Public Sub ImpuPartPut(Value) '40C955
  ImpuPart = Value
End Sub

Public Function InvePartGet() '40C964
  InvePartGet = InvePart
End Function

Public Sub InvePartPut(Value) '40C973
  InvePart = Value
End Sub

Public Function CoesPartGet() '40C982
  CoesPartGet = CoesPart
End Function

Public Sub CoesPartPut(Value) '40C991
  CoesPart = Value
End Sub

Public Function CodiCucoGet() '40C9A0
  CodiCucoGet = CodiCuco
End Function

Public Sub CodiCucoPut(Value) '40C9AF
  CodiCuco = Value
End Sub

Public Function PatrCucoGet() '40C9BE
  PatrCucoGet = PatrCuco
End Function

Public Sub PatrCucoPut(Value) '40C9CD
  PatrCuco = Value
End Sub

Public Function AltaUsuaGet() '40C9DC
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '40C9EB
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '40C9FA
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '40CA09
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '40CA18
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '40CA27
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '40CA36
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '40CA45
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '40CA54
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '40CA63
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '40CA72
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '40CA81
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '40CA90
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '40CA9F
  BajaMoti = Value
End Sub
