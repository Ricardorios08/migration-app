VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblusuario"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiUsua As String
Public DetaUsua As String
Public GDEUsua As String
Public CucuPers As String
Public DetaPers As String
Public ClavUsua As String
Public FeveUsua As String
Public InhaUsua As String
Public CodiEnre As String
Public CodiOrga As String
Public AcreUsua As String
Public FirmUsua As String
Public CargUsua As String
Public CoenUsua As String
Public CosaUsua As String
Public SemaUsua As String
Public PumaUsua As String
Public UsmaUsua As String
Public ComaUsua As String
Public UsslUsua As String
Public UtlsUsua As String
Public FeatUsua As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '4114DC
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '4114EB
  MsgError = Value
End Sub

Public Function CodiUsuaGet() '4114FA
  CodiUsuaGet = CodiUsua
End Function

Public Sub CodiUsuaPut(Value) '411509
  CodiUsua = Value
End Sub

Public Function DetaUsuaGet() '411518
  DetaUsuaGet = DetaUsua
End Function

Public Sub DetaUsuaPut(Value) '411527
  DetaUsua = Value
End Sub

Public Function GDEUsuaGet() '411536
  GDEUsuaGet = GDEUsua
End Function

Public Sub GDEUsuaPut(Value) '411545
  GDEUsua = Value
End Sub

Public Function CucuPersGet() '411554
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '411563
  CucuPers = Value
End Sub

Public Function DetaPersGet() '411572
  DetaPersGet = DetaPers
End Function

Public Sub DetaPersPut(Value) '411581
  DetaPers = Value
End Sub

Public Function ClavUsuaGet() '411590
  ClavUsuaGet = ClavUsua
End Function

Public Sub ClavUsuaPut(Value) '41159F
  ClavUsua = Value
End Sub

Public Function FeveUsuaGet() '4115AE
  FeveUsuaGet = FeveUsua
End Function

Public Sub FeveUsuaPut(Value) '4115BD
  FeveUsua = Value
End Sub

Public Function InhaUsuaGet() '4115CC
  InhaUsuaGet = InhaUsua
End Function

Public Sub InhaUsuaPut(Value) '4115DB
  InhaUsua = Value
End Sub

Public Function CodiEnreGet() '4115EA
  CodiEnreGet = CodiEnre
End Function

Public Sub CodiEnrePut(Value) '4115F9
  CodiEnre = Value
End Sub

Public Function CodiOrgaGet() '411608
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '411617
  CodiOrga = Value
End Sub

Public Function AcreUsuaGet() '411626
  AcreUsuaGet = AcreUsua
End Function

Public Sub AcreUsuaPut(Value) '411635
  AcreUsua = Value
End Sub

Public Function FirmUsuaGet() '411644
  FirmUsuaGet = FirmUsua
End Function

Public Sub FirmUsuaPut(Value) '411653
  FirmUsua = Value
End Sub

Public Function CargUsuaGet() '411662
  CargUsuaGet = CargUsua
End Function

Public Sub CargUsuaPut(Value) '411671
  CargUsua = Value
End Sub

Public Function CoenUsuaGet() '411680
  CoenUsuaGet = CoenUsua
End Function

Public Sub CoenUsuaPut(Value) '41168F
  CoenUsua = Value
End Sub

Public Function CosaUsuaGet() '41169E
  CosaUsuaGet = CosaUsua
End Function

Public Sub CosaUsuaPut(Value) '4116AD
  CosaUsua = Value
End Sub

Public Function SemaUsuaGet() '4116BC
  SemaUsuaGet = SemaUsua
End Function

Public Sub SemaUsuaPut(Value) '4116CB
  SemaUsua = Value
End Sub

Public Function PumaUsuaGet() '4116DA
  PumaUsuaGet = PumaUsua
End Function

Public Sub PumaUsuaPut(Value) '4116E9
  PumaUsua = Value
End Sub

Public Function UsmaUsuaGet() '4116F8
  UsmaUsuaGet = UsmaUsua
End Function

Public Sub UsmaUsuaPut(Value) '411707
  UsmaUsua = Value
End Sub

Public Function ComaUsuaGet() '411716
  ComaUsuaGet = ComaUsua
End Function

Public Sub ComaUsuaPut(Value) '411725
  ComaUsua = Value
End Sub

Public Function UsslUsuaGet() '411734
  UsslUsuaGet = UsslUsua
End Function

Public Sub UsslUsuaPut(Value) '411743
  UsslUsua = Value
End Sub

Public Function UtlsUsuaGet() '411752
  UtlsUsuaGet = UtlsUsua
End Function

Public Sub UtlsUsuaPut(Value) '411761
  UtlsUsua = Value
End Sub

Public Function FeatUsuaGet() '411770
  FeatUsuaGet = FeatUsua
End Function

Public Sub FeatUsuaPut(Value) '41177F
  FeatUsua = Value
End Sub

Public Function AltaUsuaGet() '41178E
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '41179D
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '4117AC
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '4117BB
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '4117CA
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '4117D9
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '4117E8
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '4117F7
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '411806
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '411815
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '411824
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '411833
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '411842
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '411851
  BajaMoti = Value
End Sub
