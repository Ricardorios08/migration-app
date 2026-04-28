VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblnotapedido"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiNope As String
Public IdRubro As String
Public IdUbfi As String
Public DienNope As String
Public CoinNope As String
Public CodiOrga As String
Public DetaOrga As String
Public DetaNope As String
Public CodiTico As String
Public ExpeImpu As String
Public FechNope As String
Public FeliNope As String
Public HoliNope As String
Public FeleNope As String
Public HoleNope As String
Public FeanNope As String
Public FeocNope As String
Public PaesNope As String
Public TotalNP As String
Public IncludOC As String
Public AltaUsua As String
Public AltaDeta As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '410FA0
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '410FAF
  MsgError = Value
End Sub

Public Function PeriInfoGet() '410FBE
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '410FCD
  PeriInfo = Value
End Sub

Public Function CodiNopeGet() '410FDC
  CodiNopeGet = CodiNope
End Function

Public Sub CodiNopePut(Value) '410FEB
  CodiNope = Value
End Sub

Public Function IdRubroGet() '410FFA
  IdRubroGet = IdRubro
End Function

Public Sub IdRubroPut(Value) '411009
  IdRubro = Value
End Sub

Public Function IdUbfiGet() '411018
  IdUbfiGet = IdUbfi
End Function

Public Sub IdUbfiPut(Value) '411027
  IdUbfi = Value
End Sub

Public Function DienNopeGet() '411036
  DienNopeGet = DienNope
End Function

Public Sub DienNopePut(Value) '411045
  DienNope = Value
End Sub

Public Function CoinNopeGet() '411054
  CoinNopeGet = CoinNope
End Function

Public Sub CoinNopePut(Value) '411063
  CoinNope = Value
End Sub

Public Function CodiOrgaGet() '411072
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '411081
  CodiOrga = Value
End Sub

Public Function DetaOrgaGet() '411090
  DetaOrgaGet = DetaOrga
End Function

Public Sub DetaOrgaPut(Value) '41109F
  DetaOrga = Value
End Sub

Public Function DetaNopeGet() '4110AE
  DetaNopeGet = DetaNope
End Function

Public Sub DetaNopePut(Value) '4110BD
  DetaNope = Value
End Sub

Public Function CodiTicoGet() '4110CC
  CodiTicoGet = CodiTico
End Function

Public Sub CodiTicoPut(Value) '4110DB
  CodiTico = Value
End Sub

Public Function ExpeImpuGet() '4110EA
  ExpeImpuGet = ExpeImpu
End Function

Public Sub ExpeImpuPut(Value) '4110F9
  ExpeImpu = Value
End Sub

Public Function FechNopeGet() '411108
  FechNopeGet = FechNope
End Function

Public Sub FechNopePut(Value) '411117
  FechNope = Value
End Sub

Public Function FeliNopeGet() '411126
  FeliNopeGet = FeliNope
End Function

Public Sub FeliNopePut(Value) '411135
  FeliNope = Value
End Sub

Public Function HoliNopeGet() '411144
  HoliNopeGet = HoliNope
End Function

Public Sub HoliNopePut(Value) '411153
  HoliNope = Value
End Sub

Public Function FeleNopeGet() '411162
  FeleNopeGet = FeleNope
End Function

Public Sub FeleNopePut(Value) '411171
  FeleNope = Value
End Sub

Public Function HoleNopeGet() '411180
  HoleNopeGet = HoleNope
End Function

Public Sub HoleNopePut(Value) '41118F
  HoleNope = Value
End Sub

Public Function FeanNopeGet() '41119E
  FeanNopeGet = FeanNope
End Function

Public Sub FeanNopePut(Value) '4111AD
  FeanNope = Value
End Sub

Public Function FeocNopeGet() '4111BC
  FeocNopeGet = FeocNope
End Function

Public Sub FeocNopePut(Value) '4111CB
  FeocNope = Value
End Sub

Public Function PaesNopeGet() '4111DA
  PaesNopeGet = PaesNope
End Function

Public Sub PaesNopePut(Value) '4111E9
  PaesNope = Value
End Sub

Public Function TotalNPGet() '4111F8
  TotalNPGet = TotalNP
End Function

Public Sub TotalNPPut(Value) '411207
  TotalNP = Value
End Sub

Public Function IncludOCGet() '411216
  IncludOCGet = IncludOC
End Function

Public Sub IncludOCPut(Value) '411225
  IncludOC = Value
End Sub

Public Function AltaUsuaGet() '411234
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '411243
  AltaUsua = Value
End Sub

Public Function AltaDetaGet() '411252
  AltaDetaGet = AltaDeta
End Function

Public Sub AltaDetaPut(Value) '411261
  AltaDeta = Value
End Sub

Public Function AltaFehoGet() '411270
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '41127F
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '41128E
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '41129D
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '4112AC
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '4112BB
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '4112CA
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '4112D9
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '4112E8
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '4112F7
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '411306
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '411315
  BajaMoti = Value
End Sub
