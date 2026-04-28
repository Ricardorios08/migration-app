VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblunidadgasto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiOrga As String
Public DetaOrga As String
Public PermOrga As String
Public CodiUnga As String
Public DetaUnga As String
Public CodiInsu As String
Public DetaInsu As String
Public PermInsu As String
Public CodiPart As String
Public DetaPart As String
Public PermPart As String
Public CodiFifu As String
Public DetaFifu As String
Public PermFifu As String
Public CucuProv As String
Public DetaProv As String
Public PermProv As String
Public ImpoUgpe As String
Public AumeUgpe As String
Public DismUgpe As String
Public CoimUgpe As String
Public ObseUgpe As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '4124E0
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '4124EF
  MsgError = Value
End Sub

Public Function PeriInfoGet() '4124FE
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '41250D
  PeriInfo = Value
End Sub

Public Function CodiOrgaGet() '41251C
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '41252B
  CodiOrga = Value
End Sub

Public Function DetaOrgaGet() '41253A
  DetaOrgaGet = DetaOrga
End Function

Public Sub DetaOrgaPut(Value) '412549
  DetaOrga = Value
End Sub

Public Function PermOrgaGet() '412558
  PermOrgaGet = PermOrga
End Function

Public Sub PermOrgaPut(Value) '412567
  PermOrga = Value
End Sub

Public Function CodiUngaGet() '412576
  CodiUngaGet = CodiUnga
End Function

Public Sub CodiUngaPut(Value) '412585
  CodiUnga = Value
End Sub

Public Function DetaUngaGet() '412594
  DetaUngaGet = DetaUnga
End Function

Public Sub DetaUngaPut(Value) '4125A3
  DetaUnga = Value
End Sub

Public Function CodiInsuGet() '4125B2
  CodiInsuGet = CodiInsu
End Function

Public Sub CodiInsuPut(Value) '4125C1
  CodiInsu = Value
End Sub

Public Function DetaInsuGet() '4125D0
  DetaInsuGet = DetaInsu
End Function

Public Sub DetaInsuPut(Value) '4125DF
  DetaInsu = Value
End Sub

Public Function PermInsuGet() '4125EE
  PermInsuGet = PermInsu
End Function

Public Sub PermInsuPut(Value) '4125FD
  PermInsu = Value
End Sub

Public Function CodiPartGet() '41260C
  CodiPartGet = CodiPart
End Function

Public Sub CodiPartPut(Value) '41261B
  CodiPart = Value
End Sub

Public Function DetaPartGet() '41262A
  DetaPartGet = DetaPart
End Function

Public Sub DetaPartPut(Value) '412639
  DetaPart = Value
End Sub

Public Function PermPartGet() '412648
  PermPartGet = PermPart
End Function

Public Sub PermPartPut(Value) '412657
  PermPart = Value
End Sub

Public Function CodiFifuGet() '412666
  CodiFifuGet = CodiFifu
End Function

Public Sub CodiFifuPut(Value) '412675
  CodiFifu = Value
End Sub

Public Function DetaFifuGet() '412684
  DetaFifuGet = DetaFifu
End Function

Public Sub DetaFifuPut(Value) '412693
  DetaFifu = Value
End Sub

Public Function PermFifuGet() '4126A2
  PermFifuGet = PermFifu
End Function

Public Sub PermFifuPut(Value) '4126B1
  PermFifu = Value
End Sub

Public Function CucuProvGet() '4126C0
  CucuProvGet = CucuProv
End Function

Public Sub CucuProvPut(Value) '4126CF
  CucuProv = Value
End Sub

Public Function DetaProvGet() '4126DE
  DetaProvGet = DetaProv
End Function

Public Sub DetaProvPut(Value) '4126ED
  DetaProv = Value
End Sub

Public Function PermProvGet() '4126FC
  PermProvGet = PermProv
End Function

Public Sub PermProvPut(Value) '41270B
  PermProv = Value
End Sub

Public Function ImpoUgpeGet() '41271A
  ImpoUgpeGet = ImpoUgpe
End Function

Public Sub ImpoUgpePut(Value) '412729
  ImpoUgpe = Value
End Sub

Public Function AumeUgpeGet() '412738
  AumeUgpeGet = AumeUgpe
End Function

Public Sub AumeUgpePut(Value) '412747
  AumeUgpe = Value
End Sub

Public Function DismUgpeGet() '412756
  DismUgpeGet = DismUgpe
End Function

Public Sub DismUgpePut(Value) '412765
  DismUgpe = Value
End Sub

Public Function CoimUgpeGet() '412774
  CoimUgpeGet = CoimUgpe
End Function

Public Sub CoimUgpePut(Value) '412783
  CoimUgpe = Value
End Sub

Public Function ObseUgpeGet() '412792
  ObseUgpeGet = ObseUgpe
End Function

Public Sub ObseUgpePut(Value) '4127A1
  ObseUgpe = Value
End Sub

Public Function AltaUsuaGet() '4127B0
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '4127BF
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '4127CE
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '4127DD
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '4127EC
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '4127FB
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '41280A
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '412819
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '412828
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '412837
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '412846
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '412855
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '412864
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '412873
  BajaMoti = Value
End Sub
