VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblordenpago"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public NumeOrpa As String
Public ExpeImpu As String
Public NumeLiqu As String
Public FechOrpa As String
Public DetaOrpa As String
Public FereOrpa As String
Public FearOrpa As String
Public ArchOrpa As String
Public FojaOrpa As String
Public FeanOrpa As String
Public TipoOrpa As String
Public ChunOrpa As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '40854C
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40855B
  MsgError = Value
End Sub

Public Function PeriInfoGet() '40856A
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '408579
  PeriInfo = Value
End Sub

Public Function NumeOrpaGet() '408588
  NumeOrpaGet = NumeOrpa
End Function

Public Sub NumeOrpaPut(Value) '408597
  NumeOrpa = Value
End Sub

Public Function ExpeImpuGet() '4085A6
  ExpeImpuGet = ExpeImpu
End Function

Public Sub ExpeImpuPut(Value) '4085B5
  ExpeImpu = Value
End Sub

Public Function NumeLiquGet() '4085C4
  NumeLiquGet = NumeLiqu
End Function

Public Sub NumeLiquPut(Value) '4085D3
  NumeLiqu = Value
End Sub

Public Function FechOrpaGet() '4085E2
  FechOrpaGet = FechOrpa
End Function

Public Sub FechOrpaPut(Value) '4085F1
  FechOrpa = Value
End Sub

Public Function DetaOrpaGet() '408600
  DetaOrpaGet = DetaOrpa
End Function

Public Sub DetaOrpaPut(Value) '40860F
  DetaOrpa = Value
End Sub

Public Function FereOrpaGet() '40861E
  FereOrpaGet = FereOrpa
End Function

Public Sub FereOrpaPut(Value) '40862D
  FereOrpa = Value
End Sub

Public Function FearOrpaGet() '40863C
  FearOrpaGet = FearOrpa
End Function

Public Sub FearOrpaPut(Value) '40864B
  FearOrpa = Value
End Sub

Public Function ArchOrpaGet() '40865A
  ArchOrpaGet = ArchOrpa
End Function

Public Sub ArchOrpaPut(Value) '408669
  ArchOrpa = Value
End Sub

Public Function FojaOrpaGet() '408678
  FojaOrpaGet = FojaOrpa
End Function

Public Sub FojaOrpaPut(Value) '408687
  FojaOrpa = Value
End Sub

Public Function FeanOrpaGet() '408696
  FeanOrpaGet = FeanOrpa
End Function

Public Sub FeanOrpaPut(Value) '4086A5
  FeanOrpa = Value
End Sub

Public Function TipoOrpaGet() '4086B4
  TipoOrpaGet = TipoOrpa
End Function

Public Sub TipoOrpaPut(Value) '4086C3
  TipoOrpa = Value
End Sub

Public Function ChunOrpaGet() '4086D2
  ChunOrpaGet = ChunOrpa
End Function

Public Sub ChunOrpaPut(Value) '4086E1
  ChunOrpa = Value
End Sub

Public Function AltaUsuaGet() '4086F0
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '4086FF
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '40870E
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '40871D
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '40872C
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '40873B
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '40874A
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '408759
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '408768
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '408777
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '408786
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '408795
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '4087A4
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '4087B3
  BajaMoti = Value
End Sub
