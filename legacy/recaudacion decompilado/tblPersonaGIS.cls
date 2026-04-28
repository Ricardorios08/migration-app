VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblPersonaGIS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CucuPers As String
Public DetaPers As String
Public Dependencia As String
Public Distrito As String
Public Seccion As String
Public Manzana As String
Public Parcela As String
Public Subparcela As String
Public DigiVeri As String
Public DecaPost As String
Public NumePost As String
Public DebaPost As String
Public ManzPost As String
Public CasaPost As String
Public DeloPost As String
Public DetaCall As String
Public NucaInmu As String
Public DetaBarr As String
Public ManzInmu As String
Public CasaInmu As String
Public DetaLoca As String
Public SupeInmu As String
Public AvalInmu As String
Public CodiRyB As String
Public DetaRyB As String
Public CodiEsta As String
Public DetaEsta As String
Public FechEsta As String
Public FechAlta As String
Public FechModi As String


Public Function MsgErrorGet() '40B524
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40B533
  MsgError = Value
End Sub

Public Function CucuPersGet() '40B542
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '40B551
  CucuPers = Value
End Sub

Public Function DetaPersGet() '40B560
  DetaPersGet = DetaPers
End Function

Public Sub DetaPersPut(Value) '40B56F
  DetaPers = Value
End Sub

Public Function DependenciaGet() '40B57E
  DependenciaGet = Dependencia
End Function

Public Sub DependenciaPut(Value) '40B58D
  Dependencia = Value
End Sub

Public Function DistritoGet() '40B59C
  DistritoGet = Distrito
End Function

Public Sub DistritoPut(Value) '40B5AB
  Distrito = Value
End Sub

Public Function SeccionGet() '40B5BA
  SeccionGet = Seccion
End Function

Public Sub SeccionPut(Value) '40B5C9
  Seccion = Value
End Sub

Public Function ManzanaGet() '40B5D8
  ManzanaGet = Manzana
End Function

Public Sub ManzanaPut(Value) '40B5E7
  Manzana = Value
End Sub

Public Function ParcelaGet() '40B5F6
  ParcelaGet = Parcela
End Function

Public Sub ParcelaPut(Value) '40B605
  Parcela = Value
End Sub

Public Function SubparcelaGet() '40B614
  SubparcelaGet = Subparcela
End Function

Public Sub SubparcelaPut(Value) '40B623
  Subparcela = Value
End Sub

Public Function DigiVeriGet() '40B632
  DigiVeriGet = DigiVeri
End Function

Public Sub DigiVeriPut(Value) '40B641
  DigiVeri = Value
End Sub

Public Function DecaPostGet() '40B650
  DecaPostGet = DecaPost
End Function

Public Sub DecaPostPut(Value) '40B65F
  DecaPost = Value
End Sub

Public Function NumePostGet() '40B66E
  NumePostGet = NumePost
End Function

Public Sub NumePostPut(Value) '40B67D
  NumePost = Value
End Sub

Public Function DebaPostGet() '40B68C
  DebaPostGet = DebaPost
End Function

Public Sub DebaPostPut(Value) '40B69B
  DebaPost = Value
End Sub

Public Function ManzPostGet() '40B6AA
  ManzPostGet = ManzPost
End Function

Public Sub ManzPostPut(Value) '40B6B9
  ManzPost = Value
End Sub

Public Function CasaPostGet() '40B6C8
  CasaPostGet = CasaPost
End Function

Public Sub CasaPostPut(Value) '40B6D7
  CasaPost = Value
End Sub

Public Function DeloPostGet() '40B6E6
  DeloPostGet = DeloPost
End Function

Public Sub DeloPostPut(Value) '40B6F5
  DeloPost = Value
End Sub

Public Function DetaCallGet() '40B704
  DetaCallGet = DetaCall
End Function

Public Sub DetaCallPut(Value) '40B713
  DetaCall = Value
End Sub

Public Function NucaInmuGet() '40B722
  NucaInmuGet = NucaInmu
End Function

Public Sub NucaInmuPut(Value) '40B731
  NucaInmu = Value
End Sub

Public Function DetaBarrGet() '40B740
  DetaBarrGet = DetaBarr
End Function

Public Sub DetaBarrPut(Value) '40B74F
  DetaBarr = Value
End Sub

Public Function ManzInmuGet() '40B75E
  ManzInmuGet = ManzInmu
End Function

Public Sub ManzInmuPut(Value) '40B76D
  ManzInmu = Value
End Sub

Public Function CasaInmuGet() '40B77C
  CasaInmuGet = CasaInmu
End Function

Public Sub CasaInmuPut(Value) '40B78B
  CasaInmu = Value
End Sub

Public Function DetaLocaGet() '40B79A
  DetaLocaGet = DetaLoca
End Function

Public Sub DetaLocaPut(Value) '40B7A9
  DetaLoca = Value
End Sub

Public Function SupeInmuGet() '40B7B8
  SupeInmuGet = SupeInmu
End Function

Public Sub SupeInmuPut(Value) '40B7C7
  SupeInmu = Value
End Sub

Public Function AvalInmuGet() '40B7D6
  AvalInmuGet = AvalInmu
End Function

Public Sub AvalInmuPut(Value) '40B7E5
  AvalInmu = Value
End Sub

Public Function CodiRyBGet() '40B7F4
  CodiRyBGet = CodiRyB
End Function

Public Sub CodiRyBPut(Value) '40B803
  CodiRyB = Value
End Sub

Public Function DetaRyBGet() '40B812
  DetaRyBGet = DetaRyB
End Function

Public Sub DetaRyBPut(Value) '40B821
  DetaRyB = Value
End Sub

Public Function CodiEstaGet() '40B830
  CodiEstaGet = CodiEsta
End Function

Public Sub CodiEstaPut(Value) '40B83F
  CodiEsta = Value
End Sub

Public Function DetaEstaGet() '40B84E
  DetaEstaGet = DetaEsta
End Function

Public Sub DetaEstaPut(Value) '40B85D
  DetaEsta = Value
End Sub

Public Function FechEstaGet() '40B86C
  FechEstaGet = FechEsta
End Function

Public Sub FechEstaPut(Value) '40B87B
  FechEsta = Value
End Sub

Public Function FechAltaGet() '40B88A
  FechAltaGet = FechAlta
End Function

Public Sub FechAltaPut(Value) '40B899
  FechAlta = Value
End Sub

Public Function FechModiGet() '40B8A8
  FechModiGet = FechModi
End Function

Public Sub FechModiPut(Value) '40B8B7
  FechModi = Value
End Sub
