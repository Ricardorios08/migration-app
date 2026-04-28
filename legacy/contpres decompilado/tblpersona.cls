VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblpersona"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CucuPers As String
Public CcokPers As String
Public DetaPers As String
Public JuriPers As String
Public SexoPers As String
Public TelePers As String
Public CeluPers As String
Public FaxsPers As String
Public MailPers As String
Public CodiTido As String
Public NudoPers As String
Public FealPers As String
Public FenaPers As String
Public CodiEsci As String
Public CodiPofi As String
Public CocrPers As String
Public DecrPers As String
Public NurePers As String
Public CobrPers As String
Public DebrPers As String
Public MarePers As String
Public CarePers As String
Public UbrePers As String
Public ColrPers As String
Public DelrPers As String
Public CoprPers As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '415750
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '41575F
  MsgError = Value
End Sub

Public Function CucuPersGet() '41576E
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '41577D
  CucuPers = Value
End Sub

Public Function CcokPersGet() '41578C
  CcokPersGet = CcokPers
End Function

Public Sub CcokPersPut(Value) '41579B
  CcokPers = Value
End Sub

Public Function DetaPersGet() '4157AA
  DetaPersGet = DetaPers
End Function

Public Sub DetaPersPut(Value) '4157B9
  DetaPers = Value
End Sub

Public Function JuriPersGet() '4157C8
  JuriPersGet = JuriPers
End Function

Public Sub JuriPersPut(Value) '4157D7
  JuriPers = Value
End Sub

Public Function SexoPersGet() '4157E6
  SexoPersGet = SexoPers
End Function

Public Sub SexoPersPut(Value) '4157F5
  SexoPers = Value
End Sub

Public Function TelePersGet() '415804
  TelePersGet = TelePers
End Function

Public Sub TelePersPut(Value) '415813
  TelePers = Value
End Sub

Public Function CeluPersGet() '415822
  CeluPersGet = CeluPers
End Function

Public Sub CeluPersPut(Value) '415831
  CeluPers = Value
End Sub

Public Function FaxsPersGet() '415840
  FaxsPersGet = FaxsPers
End Function

Public Sub FaxsPersPut(Value) '41584F
  FaxsPers = Value
End Sub

Public Function MailPersGet() '41585E
  MailPersGet = MailPers
End Function

Public Sub MailPersPut(Value) '41586D
  MailPers = Value
End Sub

Public Function CodiTidoGet() '41587C
  CodiTidoGet = CodiTido
End Function

Public Sub CodiTidoPut(Value) '41588B
  CodiTido = Value
End Sub

Public Function NudoPersGet() '41589A
  NudoPersGet = NudoPers
End Function

Public Sub NudoPersPut(Value) '4158A9
  NudoPers = Value
End Sub

Public Function FealPersGet() '4158B8
  FealPersGet = FealPers
End Function

Public Sub FealPersPut(Value) '4158C7
  FealPers = Value
End Sub

Public Function FenaPersGet() '4158D6
  FenaPersGet = FenaPers
End Function

Public Sub FenaPersPut(Value) '4158E5
  FenaPers = Value
End Sub

Public Function CodiEsciGet() '4158F4
  CodiEsciGet = CodiEsci
End Function

Public Sub CodiEsciPut(Value) '415903
  CodiEsci = Value
End Sub

Public Function CodiPofiGet() '415912
  CodiPofiGet = CodiPofi
End Function

Public Sub CodiPofiPut(Value) '415921
  CodiPofi = Value
End Sub

Public Function CocrPersGet() '415930
  CocrPersGet = CocrPers
End Function

Public Sub CocrPersPut(Value) '41593F
  CocrPers = Value
End Sub

Public Function DecrPersGet() '41594E
  DecrPersGet = DecrPers
End Function

Public Sub DecrPersPut(Value) '41595D
  DecrPers = Value
End Sub

Public Function NurePersGet() '41596C
  NurePersGet = NurePers
End Function

Public Sub NurePersPut(Value) '41597B
  NurePers = Value
End Sub

Public Function CobrPersGet() '41598A
  CobrPersGet = CobrPers
End Function

Public Sub CobrPersPut(Value) '415999
  CobrPers = Value
End Sub

Public Function DebrPersGet() '4159A8
  DebrPersGet = DebrPers
End Function

Public Sub DebrPersPut(Value) '4159B7
  DebrPers = Value
End Sub

Public Function MarePersGet() '4159C6
  MarePersGet = MarePers
End Function

Public Sub MarePersPut(Value) '4159D5
  MarePers = Value
End Sub

Public Function CarePersGet() '4159E4
  CarePersGet = CarePers
End Function

Public Sub CarePersPut(Value) '4159F3
  CarePers = Value
End Sub

Public Function UbrePersGet() '415A02
  UbrePersGet = UbrePers
End Function

Public Sub UbrePersPut(Value) '415A11
  UbrePers = Value
End Sub

Public Function ColrPersGet() '415A20
  ColrPersGet = ColrPers
End Function

Public Sub ColrPersPut(Value) '415A2F
  ColrPers = Value
End Sub

Public Function DelrPersGet() '415A3E
  DelrPersGet = DelrPers
End Function

Public Sub DelrPersPut(Value) '415A4D
  DelrPers = Value
End Sub

Public Function CoprPersGet() '415A5C
  CoprPersGet = CoprPers
End Function

Public Sub CoprPersPut(Value) '415A6B
  CoprPers = Value
End Sub

Public Function AltaUsuaGet() '415A7A
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '415A89
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '415A98
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '415AA7
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '415AB6
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '415AC5
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '415AD4
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '415AE3
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '415AF2
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '415B01
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '415B10
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '415B1F
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '415B2E
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '415B3D
  BajaMoti = Value
End Sub
