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
Public AnfaUsua As String
Public SedeUsua As String
Public FaesUsua As String
Public SellUsua As String
Public ModiApre As String
Public MofeUsua As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '40DBC0
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40DBCF
  MsgError = Value
End Sub

Public Function CodiUsuaGet() '40DBDE
  CodiUsuaGet = CodiUsua
End Function

Public Sub CodiUsuaPut(Value) '40DBED
  CodiUsua = Value
End Sub

Public Function CucuPersGet() '40DBFC
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '40DC0B
  CucuPers = Value
End Sub

Public Function DetaPersGet() '40DC1A
  DetaPersGet = DetaPers
End Function

Public Sub DetaPersPut(Value) '40DC29
  DetaPers = Value
End Sub

Public Function ClavUsuaGet() '40DC38
  ClavUsuaGet = ClavUsua
End Function

Public Sub ClavUsuaPut(Value) '40DC47
  ClavUsua = Value
End Sub

Public Function FeveUsuaGet() '40DC56
  FeveUsuaGet = FeveUsua
End Function

Public Sub FeveUsuaPut(Value) '40DC65
  FeveUsua = Value
End Sub

Public Function InhaUsuaGet() '40DC74
  InhaUsuaGet = InhaUsua
End Function

Public Sub InhaUsuaPut(Value) '40DC83
  InhaUsua = Value
End Sub

Public Function CodiEnreGet() '40DC92
  CodiEnreGet = CodiEnre
End Function

Public Sub CodiEnrePut(Value) '40DCA1
  CodiEnre = Value
End Sub

Public Function CodiOrgaGet() '40DCB0
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '40DCBF
  CodiOrga = Value
End Sub

Public Function AcreUsuaGet() '40DCCE
  AcreUsuaGet = AcreUsua
End Function

Public Sub AcreUsuaPut(Value) '40DCDD
  AcreUsua = Value
End Sub

Public Function FirmUsuaGet() '40DCEC
  FirmUsuaGet = FirmUsua
End Function

Public Sub FirmUsuaPut(Value) '40DCFB
  FirmUsua = Value
End Sub

Public Function CargUsuaGet() '40DD0A
  CargUsuaGet = CargUsua
End Function

Public Sub CargUsuaPut(Value) '40DD19
  CargUsua = Value
End Sub

Public Function CoenUsuaGet() '40DD28
  CoenUsuaGet = CoenUsua
End Function

Public Sub CoenUsuaPut(Value) '40DD37
  CoenUsua = Value
End Sub

Public Function CosaUsuaGet() '40DD46
  CosaUsuaGet = CosaUsua
End Function

Public Sub CosaUsuaPut(Value) '40DD55
  CosaUsua = Value
End Sub

Public Function SemaUsuaGet() '40DD64
  SemaUsuaGet = SemaUsua
End Function

Public Sub SemaUsuaPut(Value) '40DD73
  SemaUsua = Value
End Sub

Public Function PumaUsuaGet() '40DD82
  PumaUsuaGet = PumaUsua
End Function

Public Sub PumaUsuaPut(Value) '40DD91
  PumaUsua = Value
End Sub

Public Function UsmaUsuaGet() '40DDA0
  UsmaUsuaGet = UsmaUsua
End Function

Public Sub UsmaUsuaPut(Value) '40DDAF
  UsmaUsua = Value
End Sub

Public Function ComaUsuaGet() '40DDBE
  ComaUsuaGet = ComaUsua
End Function

Public Sub ComaUsuaPut(Value) '40DDCD
  ComaUsua = Value
End Sub

Public Function UsslUsuaGet() '40DDDC
  UsslUsuaGet = UsslUsua
End Function

Public Sub UsslUsuaPut(Value) '40DDEB
  UsslUsua = Value
End Sub

Public Function UtlsUsuaGet() '40DDFA
  UtlsUsuaGet = UtlsUsua
End Function

Public Sub UtlsUsuaPut(Value) '40DE09
  UtlsUsua = Value
End Sub

Public Function AnfaUsuaGet() '40DE18
  AnfaUsuaGet = AnfaUsua
End Function

Public Sub AnfaUsuaPut(Value) '40DE27
  AnfaUsua = Value
End Sub

Public Function SedeUsuaGet() '40DE36
  SedeUsuaGet = SedeUsua
End Function

Public Sub SedeUsuaPut(Value) '40DE45
  SedeUsua = Value
End Sub

Public Function FaesUsuaGet() '40DE54
  FaesUsuaGet = FaesUsua
End Function

Public Sub FaesUsuaPut(Value) '40DE63
  FaesUsua = Value
End Sub

Public Function SellUsuaGet() '40DE72
  SellUsuaGet = SellUsua
End Function

Public Sub SellUsuaPut(Value) '40DE81
  SellUsua = Value
End Sub

Public Function ModiApreGet() '40DE90
  ModiApreGet = ModiApre
End Function

Public Sub ModiAprePut(Value) '40DE9F
  ModiApre = Value
End Sub

Public Function MofeUsuaGet() '40DEAE
  MofeUsuaGet = MofeUsua
End Function

Public Sub MofeUsuaPut(Value) '40DEBD
  MofeUsua = Value
End Sub

Public Function AltaUsuaGet() '40DECC
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '40DEDB
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '40DEEA
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '40DEF9
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '40DF08
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '40DF17
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '40DF26
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '40DF35
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '40DF44
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '40DF53
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '40DF62
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '40DF71
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '40DF80
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '40DF8F
  BajaMoti = Value
End Sub
