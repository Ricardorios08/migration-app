VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblproveedor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CucuPers As String
Public DetaProv As String
Public DetaPers As String
Public MailPers As String
Public DecrPers As String
Public TelePers As String
Public FantProv As String
Public CccaProv As String
Public CubaProv As String
Public PainProv As String
Public LocaProv As String
Public FedcProv As String
Public FehcProv As String
Public TotcProv As String
Public FactProv As String
Public FeviProv As String
Public ExpeProv As String
Public CedeProv As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String
Public IdUspros As String
Public UsuaUspros As String


Public Function MsgErrorGet() '40FB8C
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40FB9B
  MsgError = Value
End Sub

Public Function CucuPersGet() '40FBAA
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '40FBB9
  CucuPers = Value
End Sub

Public Function DetaProvGet() '40FBC8
  DetaProvGet = DetaProv
End Function

Public Sub DetaProvPut(Value) '40FBD7
  DetaProv = Value
End Sub

Public Function DetaPersGet() '40FBE6
  DetaPersGet = DetaPers
End Function

Public Sub DetaPersPut(Value) '40FBF5
  DetaPers = Value
End Sub

Public Function MailPersGet() '40FC04
  MailPersGet = MailPers
End Function

Public Sub MailPersPut(Value) '40FC13
  MailPers = Value
End Sub

Public Function DecrPersGet() '40FC22
  DecrPersGet = DecrPers
End Function

Public Sub DecrPersPut(Value) '40FC31
  DecrPers = Value
End Sub

Public Function TelePersGet() '40FC40
  TelePersGet = TelePers
End Function

Public Sub TelePersPut(Value) '40FC4F
  TelePers = Value
End Sub

Public Function FantProvGet() '40FC5E
  FantProvGet = FantProv
End Function

Public Sub FantProvPut(Value) '40FC6D
  FantProv = Value
End Sub

Public Function CccaProvGet() '40FC7C
  CccaProvGet = CccaProv
End Function

Public Sub CccaProvPut(Value) '40FC8B
  CccaProv = Value
End Sub

Public Function CubaProvGet() '40FC9A
  CubaProvGet = CubaProv
End Function

Public Sub CubaProvPut(Value) '40FCA9
  CubaProv = Value
End Sub

Public Function PainProvGet() '40FCB8
  PainProvGet = PainProv
End Function

Public Sub PainProvPut(Value) '40FCC7
  PainProv = Value
End Sub

Public Function LocaProvGet() '40FCD6
  LocaProvGet = LocaProv
End Function

Public Sub LocaProvPut(Value) '40FCE5
  LocaProv = Value
End Sub

Public Function FedcProvGet() '40FCF4
  FedcProvGet = FedcProv
End Function

Public Sub FedcProvPut(Value) '40FD03
  FedcProv = Value
End Sub

Public Function FehcProvGet() '40FD12
  FehcProvGet = FehcProv
End Function

Public Sub FehcProvPut(Value) '40FD21
  FehcProv = Value
End Sub

Public Function TotcProvGet() '40FD30
  TotcProvGet = TotcProv
End Function

Public Sub TotcProvPut(Value) '40FD3F
  TotcProv = Value
End Sub

Public Function FactProvGet() '40FD4E
  FactProvGet = FactProv
End Function

Public Sub FactProvPut(Value) '40FD5D
  FactProv = Value
End Sub

Public Function FeviProvGet() '40FD6C
  FeviProvGet = FeviProv
End Function

Public Sub FeviProvPut(Value) '40FD7B
  FeviProv = Value
End Sub

Public Function ExpeProvGet() '40FD8A
  ExpeProvGet = ExpeProv
End Function

Public Sub ExpeProvPut(Value) '40FD99
  ExpeProv = Value
End Sub

Public Function CedeProvGet() '40FDA8
  CedeProvGet = CedeProv
End Function

Public Sub CedeProvPut(Value) '40FDB7
  CedeProv = Value
End Sub

Public Function AltaUsuaGet() '40FDC6
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '40FDD5
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '40FDE4
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '40FDF3
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '40FE02
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '40FE11
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '40FE20
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '40FE2F
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '40FE3E
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '40FE4D
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '40FE5C
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '40FE6B
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '40FE7A
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '40FE89
  BajaMoti = Value
End Sub

Public Function IdUsprosGet() '40FE98
  IdUsprosGet = IdUspros
End Function

Public Sub IdUsprosPut(Value) '40FEA7
  IdUspros = Value
End Sub

Public Function UsuaUsprosGet() '40FEB6
  UsuaUsprosGet = UsuaUspros
End Function

Public Sub UsuaUsprosPut(Value) '40FEC5
  UsuaUspros = Value
End Sub
