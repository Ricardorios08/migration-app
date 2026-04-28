VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblimputacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public IdImpu As String
Public CodiPart As String
Public CodiOrga As String
Public CodiUnga As String
Public NumeImpu As String
Public CodiInsu As String
Public CodiFifu As String
Public FechImpu As String
Public ExorImpu As String
Public ExpeImpu As String
Public CantImpu As String
Public ImunImpu As String
Public PrevImpu As String
Public DefiImpu As String
Public DeveImpu As String
Public MapaImpu As String
Public PagaImpu As String
Public SaldImpu As String
Public SaldDeve As String
Public DetaImpu As String
Public CucuPers As String
Public AltaUsua As String
Public AltaFeho As String
Public CodiNope As String
Public Item As String
Public Altern As String
Public CodiOrco As String
Public ReapDefi As String
Public CodiRece As String
Public TifaDeve As String
Public SufaDeve As String
Public NufaDeve As String
Public NumeFact As String


Public Function MsgErrorGet() '416314
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '416323
  MsgError = Value
End Sub

Public Function PeriInfoGet() '416332
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '416341
  PeriInfo = Value
End Sub

Public Function IdImpuGet() '416350
  IdImpuGet = IdImpu
End Function

Public Sub IdImpuPut(Value) '41635F
  IdImpu = Value
End Sub

Public Function CodiPartGet() '41636E
  CodiPartGet = CodiPart
End Function

Public Sub CodiPartPut(Value) '41637D
  CodiPart = Value
End Sub

Public Function CodiOrgaGet() '41638C
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '41639B
  CodiOrga = Value
End Sub

Public Function CodiUngaGet() '4163AA
  CodiUngaGet = CodiUnga
End Function

Public Sub CodiUngaPut(Value) '4163B9
  CodiUnga = Value
End Sub

Public Function NumeImpuGet() '4163C8
  NumeImpuGet = NumeImpu
End Function

Public Sub NumeImpuPut(Value) '4163D7
  NumeImpu = Value
End Sub

Public Function CodiInsuGet() '4163E6
  CodiInsuGet = CodiInsu
End Function

Public Sub CodiInsuPut(Value) '4163F5
  CodiInsu = Value
End Sub

Public Function CodiFifuGet() '416404
  CodiFifuGet = CodiFifu
End Function

Public Sub CodiFifuPut(Value) '416413
  CodiFifu = Value
End Sub

Public Function FechImpuGet() '416422
  FechImpuGet = FechImpu
End Function

Public Sub FechImpuPut(Value) '416431
  FechImpu = Value
End Sub

Public Function ExorImpuGet() '416440
  ExorImpuGet = ExorImpu
End Function

Public Sub ExorImpuPut(Value) '41644F
  ExorImpu = Value
End Sub

Public Function ExpeImpuGet() '41645E
  ExpeImpuGet = ExpeImpu
End Function

Public Sub ExpeImpuPut(Value) '41646D
  ExpeImpu = Value
End Sub

Public Function CantImpuGet() '41647C
  CantImpuGet = CantImpu
End Function

Public Sub CantImpuPut(Value) '41648B
  CantImpu = Value
End Sub

Public Function ImunImpuGet() '41649A
  ImunImpuGet = ImunImpu
End Function

Public Sub ImunImpuPut(Value) '4164A9
  ImunImpu = Value
End Sub

Public Function PrevImpuGet() '4164B8
  PrevImpuGet = PrevImpu
End Function

Public Sub PrevImpuPut(Value) '4164C7
  PrevImpu = Value
End Sub

Public Function DefiImpuGet() '4164D6
  DefiImpuGet = DefiImpu
End Function

Public Sub DefiImpuPut(Value) '4164E5
  DefiImpu = Value
End Sub

Public Function DeveImpuGet() '4164F4
  DeveImpuGet = DeveImpu
End Function

Public Sub DeveImpuPut(Value) '416503
  DeveImpu = Value
End Sub

Public Function MapaImpuGet() '416512
  MapaImpuGet = MapaImpu
End Function

Public Sub MapaImpuPut(Value) '416521
  MapaImpu = Value
End Sub

Public Function PagaImpuGet() '416530
  PagaImpuGet = PagaImpu
End Function

Public Sub PagaImpuPut(Value) '41653F
  PagaImpu = Value
End Sub

Public Function SaldImpuGet() '41654E
  SaldImpuGet = SaldImpu
End Function

Public Sub SaldImpuPut(Value) '41655D
  SaldImpu = Value
End Sub

Public Function SaldDeveGet() '41656C
  SaldDeveGet = SaldDeve
End Function

Public Sub SaldDevePut(Value) '41657B
  SaldDeve = Value
End Sub

Public Function DetaImpuGet() '41658A
  DetaImpuGet = DetaImpu
End Function

Public Sub DetaImpuPut(Value) '416599
  DetaImpu = Value
End Sub

Public Function CucuPersGet() '4165A8
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '4165B7
  CucuPers = Value
End Sub

Public Function AltaUsuaGet() '4165C6
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '4165D5
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '4165E4
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '4165F3
  AltaFeho = Value
End Sub

Public Function CodiNopeGet() '416602
  CodiNopeGet = CodiNope
End Function

Public Sub CodiNopePut(Value) '416611
  CodiNope = Value
End Sub

Public Function ItemGet() '416620
  ItemGet = Item
End Function

Public Sub ItemPut(Value) '41662F
  Item = Value
End Sub

Public Function AlternGet() '41663E
  AlternGet = Altern
End Function

Public Sub AlternPut(Value) '41664D
  Altern = Value
End Sub

Public Function CodiOrcoGet() '41665C
  CodiOrcoGet = CodiOrco
End Function

Public Sub CodiOrcoPut(Value) '41666B
  CodiOrco = Value
End Sub

Public Function ReapDefiGet() '41667A
  ReapDefiGet = ReapDefi
End Function

Public Sub ReapDefiPut(Value) '416689
  ReapDefi = Value
End Sub

Public Function CodiReceGet() '416698
  CodiReceGet = CodiRece
End Function

Public Sub CodiRecePut(Value) '4166A7
  CodiRece = Value
End Sub

Public Function TifaDeveGet() '4166B6
  TifaDeveGet = TifaDeve
End Function

Public Sub TifaDevePut(Value) '4166C5
  TifaDeve = Value
End Sub

Public Function SufaDeveGet() '4166D4
  SufaDeveGet = SufaDeve
End Function

Public Sub SufaDevePut(Value) '4166E3
  SufaDeve = Value
End Sub

Public Function NufaDeveGet() '4166F2
  NufaDeveGet = NufaDeve
End Function

Public Sub NufaDevePut(Value) '416701
  NufaDeve = Value
End Sub

Public Function NumeFactGet() '416710
  NumeFactGet = NumeFact
End Function

Public Sub NumeFactPut(Value) '41671F
  NumeFact = Value
End Sub
