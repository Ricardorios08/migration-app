VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tbldebito"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public NumeDebi As String
Public FechDebi As String
Public ExorImpu As String
Public ExpeImpu As String
Public CodiCuco As String
Public CucuPers As String
Public ImpoDebi As String
Public NumeFact As String
Public CodiOrga As String
Public DetaDebi As String
Public TieneLiq As Boolean
Public TieneLiqAnul As Boolean
Public FeanDebi As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '409540
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40954F
  MsgError = Value
End Sub

Public Function PeriInfoGet() '40955E
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '40956D
  PeriInfo = Value
End Sub

Public Function NumeDebiGet() '40957C
  NumeDebiGet = NumeDebi
End Function

Public Sub NumeDebiPut(Value) '40958B
  NumeDebi = Value
End Sub

Public Function FechDebiGet() '40959A
  FechDebiGet = FechDebi
End Function

Public Sub FechDebiPut(Value) '4095A9
  FechDebi = Value
End Sub

Public Function ExorImpuGet() '4095B8
  ExorImpuGet = ExorImpu
End Function

Public Sub ExorImpuPut(Value) '4095C7
  ExorImpu = Value
End Sub

Public Function ExpeImpuGet() '4095D6
  ExpeImpuGet = ExpeImpu
End Function

Public Sub ExpeImpuPut(Value) '4095E5
  ExpeImpu = Value
End Sub

Public Function CodiCucoGet() '4095F4
  CodiCucoGet = CodiCuco
End Function

Public Sub CodiCucoPut(Value) '409603
  CodiCuco = Value
End Sub

Public Function CucuPersGet() '409612
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '409621
  CucuPers = Value
End Sub

Public Function ImpoDebiGet() '409630
  ImpoDebiGet = ImpoDebi
End Function

Public Sub ImpoDebiPut(Value) '40963F
  ImpoDebi = Value
End Sub

Public Function NumeFactGet() '40964E
  NumeFactGet = NumeFact
End Function

Public Sub NumeFactPut(Value) '40965D
  NumeFact = Value
End Sub

Public Function CodiOrgaGet() '40966C
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '40967B
  CodiOrga = Value
End Sub

Public Function DetaDebiGet() '40968A
  DetaDebiGet = DetaDebi
End Function

Public Sub DetaDebiPut(Value) '409699
  DetaDebi = Value
End Sub

Public Function TieneLiqGet() '4096A8
  TieneLiqGet = TieneLiq
End Function

Public Sub TieneLiqPut(Value) '4096B7
  TieneLiq = Value
End Sub

Public Function TieneLiqAnulGet() '4096C6
  TieneLiqAnulGet = TieneLiqAnul
End Function

Public Sub TieneLiqAnulPut(Value) '4096D5
  TieneLiqAnul = Value
End Sub

Public Function FeanDebiGet() '4096E4
  FeanDebiGet = FeanDebi
End Function

Public Sub FeanDebiPut(Value) '4096F3
  FeanDebi = Value
End Sub

Public Function AltaUsuaGet() '409702
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '409711
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '409720
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '40972F
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '40973E
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '40974D
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '40975C
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '40976B
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '40977A
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '409789
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '409798
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '4097A7
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '4097B6
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '4097C5
  BajaMoti = Value
End Sub
