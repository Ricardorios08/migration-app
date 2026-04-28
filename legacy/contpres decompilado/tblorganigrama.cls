VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblorganigrama"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiOrga As String
Public DetaOrga As String
Public CucuPers As String
Public CredOrga As String
Public CredDetaOrga As String
Public EsCredOrga As String
Public CredOrgaGestion As String
Public CredDetaOrgaGestion As String
Public EsCredOrgaGestion As String
Public CoesOrga As String
Public MailOrga As String
Public UGreqOrga As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String
Public Autorizado As String


Public Function MsgErrorGet() '409134
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '409143
  MsgError = Value
End Sub

Public Function PeriInfoGet() '409152
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '409161
  PeriInfo = Value
End Sub

Public Function CodiOrgaGet() '409170
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '40917F
  CodiOrga = Value
End Sub

Public Function DetaOrgaGet() '40918E
  DetaOrgaGet = DetaOrga
End Function

Public Sub DetaOrgaPut(Value) '40919D
  DetaOrga = Value
End Sub

Public Function CucuPersGet() '4091AC
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '4091BB
  CucuPers = Value
End Sub

Public Function CredOrgaGet() '4091CA
  CredOrgaGet = CredOrga
End Function

Public Sub CredOrgaPut(Value) '4091D9
  CredOrga = Value
End Sub

Public Function CredDetaOrgaGet() '4091E8
  CredDetaOrgaGet = CredDetaOrga
End Function

Public Sub CredDetaOrgaPut(Value) '4091F7
  CredDetaOrga = Value
End Sub

Public Function EsCredOrgaGet() '409206
  EsCredOrgaGet = EsCredOrga
End Function

Public Sub EsCredOrgaPut(Value) '409215
  EsCredOrga = Value
End Sub

Public Function CredOrgaGestionGet() '409224
  CredOrgaGestionGet = CredOrgaGestion
End Function

Public Sub CredOrgaGestionPut(Value) '409233
  CredOrgaGestion = Value
End Sub

Public Function CredDetaOrgaGestionGet() '409242
  CredDetaOrgaGestionGet = CredDetaOrgaGestion
End Function

Public Sub CredDetaOrgaGestionPut(Value) '409251
  CredDetaOrgaGestion = Value
End Sub

Public Function EsCredOrgaGestionGet() '409260
  EsCredOrgaGestionGet = EsCredOrgaGestion
End Function

Public Sub EsCredOrgaGestionPut(Value) '40926F
  EsCredOrgaGestion = Value
End Sub

Public Function CoesOrgaGet() '40927E
  CoesOrgaGet = CoesOrga
End Function

Public Sub CoesOrgaPut(Value) '40928D
  CoesOrga = Value
End Sub

Public Function MailOrgaGet() '40929C
  MailOrgaGet = MailOrga
End Function

Public Sub MailOrgaPut(Value) '4092AB
  MailOrga = Value
End Sub

Public Function UGreqOrgaGet() '4092BA
  UGreqOrgaGet = UGreqOrga
End Function

Public Sub UGreqOrgaPut(Value) '4092C9
  UGreqOrga = Value
End Sub

Public Function AltaUsuaGet() '4092D8
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '4092E7
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '4092F6
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '409305
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '409314
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '409323
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '409332
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '409341
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '409350
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '40935F
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '40936E
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '40937D
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '40938C
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '40939B
  BajaMoti = Value
End Sub

Public Function AutorizadoGet() '4093AA
  AutorizadoGet = Autorizado
End Function

Public Sub AutorizadoPut(Value) '4093B9
  Autorizado = Value
End Sub
