VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblinvepatrimonial"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiInpa As String
Public CoteInpa As String
Public DetaInpa As String
Public CaraInpa As String
Public BiorInpa As String
Public FechInpa As String
Public DonaInpa As String
Public PeriInfo As String
Public CodiOrco As String
Public CodiRece As String
Public CodiItco As String
Public AlteItco As String
Public CodiInsu As String
Public CantInpa As String
Public ImpoInpa As String
Public CodiPart As String
Public CodiCuco As String
Public CodiOrga As String
Public CodiUnga As String
Public CodiFifu As String
Public NumeImpu As String
Public FegaInpa As String
Public ExorImpu As String
Public ExpeImpu As String
Public MarcInpa As String
Public IdUbfi As String
Public FebaInpa As String
Public MobaInpa As String
Public NoleInpa As String
Public FealInpa As String
Public CodiUsua As String


Public Function MsgErrorGet() '412FD0
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '412FDF
  MsgError = Value
End Sub

Public Function CodiInpaGet() '412FEE
  CodiInpaGet = CodiInpa
End Function

Public Sub CodiInpaPut(Value) '412FFD
  CodiInpa = Value
End Sub

Public Function CoteInpaGet() '41300C
  CoteInpaGet = CoteInpa
End Function

Public Sub CoteInpaPut(Value) '41301B
  CoteInpa = Value
End Sub

Public Function DetaInpaGet() '41302A
  DetaInpaGet = DetaInpa
End Function

Public Sub DetaInpaPut(Value) '413039
  DetaInpa = Value
End Sub

Public Function CaraInpaGet() '413048
  CaraInpaGet = CaraInpa
End Function

Public Sub CaraInpaPut(Value) '413057
  CaraInpa = Value
End Sub

Public Function BiorInpaGet() '413066
  BiorInpaGet = BiorInpa
End Function

Public Sub BiorInpaPut(Value) '413075
  BiorInpa = Value
End Sub

Public Function FechInpaGet() '413084
  FechInpaGet = FechInpa
End Function

Public Sub FechInpaPut(Value) '413093
  FechInpa = Value
End Sub

Public Function DonaInpaGet() '4130A2
  DonaInpaGet = DonaInpa
End Function

Public Sub DonaInpaPut(Value) '4130B1
  DonaInpa = Value
End Sub

Public Function PeriInfoGet() '4130C0
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '4130CF
  PeriInfo = Value
End Sub

Public Function CodiOrcoGet() '4130DE
  CodiOrcoGet = CodiOrco
End Function

Public Sub CodiOrcoPut(Value) '4130ED
  CodiOrco = Value
End Sub

Public Function CodiReceGet() '4130FC
  CodiReceGet = CodiRece
End Function

Public Sub CodiRecePut(Value) '41310B
  CodiRece = Value
End Sub

Public Function CodiItcoGet() '41311A
  CodiItcoGet = CodiItco
End Function

Public Sub CodiItcoPut(Value) '413129
  CodiItco = Value
End Sub

Public Function AlteItcoGet() '413138
  AlteItcoGet = AlteItco
End Function

Public Sub AlteItcoPut(Value) '413147
  AlteItco = Value
End Sub

Public Function CodiInsuGet() '413156
  CodiInsuGet = CodiInsu
End Function

Public Sub CodiInsuPut(Value) '413165
  CodiInsu = Value
End Sub

Public Function CantInpaGet() '413174
  CantInpaGet = CantInpa
End Function

Public Sub CantInpaPut(Value) '413183
  CantInpa = Value
End Sub

Public Function ImpoInpaGet() '413192
  ImpoInpaGet = ImpoInpa
End Function

Public Sub ImpoInpaPut(Value) '4131A1
  ImpoInpa = Value
End Sub

Public Function CodiPartGet() '4131B0
  CodiPartGet = CodiPart
End Function

Public Sub CodiPartPut(Value) '4131BF
  CodiPart = Value
End Sub

Public Function CodiCucoGet() '4131CE
  CodiCucoGet = CodiCuco
End Function

Public Sub CodiCucoPut(Value) '4131DD
  CodiCuco = Value
End Sub

Public Function CodiOrgaGet() '4131EC
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '4131FB
  CodiOrga = Value
End Sub

Public Function CodiUngaGet() '41320A
  CodiUngaGet = CodiUnga
End Function

Public Sub CodiUngaPut(Value) '413219
  CodiUnga = Value
End Sub

Public Function CodiFifuGet() '413228
  CodiFifuGet = CodiFifu
End Function

Public Sub CodiFifuPut(Value) '413237
  CodiFifu = Value
End Sub

Public Function NumeImpuGet() '413246
  NumeImpuGet = NumeImpu
End Function

Public Sub NumeImpuPut(Value) '413255
  NumeImpu = Value
End Sub

Public Function FegaInpaGet() '413264
  FegaInpaGet = FegaInpa
End Function

Public Sub FegaInpaPut(Value) '413273
  FegaInpa = Value
End Sub

Public Function ExorImpuGet() '413282
  ExorImpuGet = ExorImpu
End Function

Public Sub ExorImpuPut(Value) '413291
  ExorImpu = Value
End Sub

Public Function ExpeImpuGet() '4132A0
  ExpeImpuGet = ExpeImpu
End Function

Public Sub ExpeImpuPut(Value) '4132AF
  ExpeImpu = Value
End Sub

Public Function MarcInpaGet() '4132BE
  MarcInpaGet = MarcInpa
End Function

Public Sub MarcInpaPut(Value) '4132CD
  MarcInpa = Value
End Sub

Public Function IdUbfiGet() '4132DC
  IdUbfiGet = IdUbfi
End Function

Public Sub IdUbfiPut(Value) '4132EB
  IdUbfi = Value
End Sub

Public Function FebaInpaGet() '4132FA
  FebaInpaGet = FebaInpa
End Function

Public Sub FebaInpaPut(Value) '413309
  FebaInpa = Value
End Sub

Public Function MobaInpaGet() '413318
  MobaInpaGet = MobaInpa
End Function

Public Sub MobaInpaPut(Value) '413327
  MobaInpa = Value
End Sub

Public Function NoleInpaGet() '413336
  NoleInpaGet = NoleInpa
End Function

Public Sub NoleInpaPut(Value) '413345
  NoleInpa = Value
End Sub

Public Function FealInpaGet() '413354
  FealInpaGet = FealInpa
End Function

Public Sub FealInpaPut(Value) '413363
  FealInpa = Value
End Sub

Public Function CodiUsuaGet() '413372
  CodiUsuaGet = CodiUsua
End Function

Public Sub CodiUsuaPut(Value) '413381
  CodiUsua = Value
End Sub
