VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblliquidacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public ExpeImpu As String
Public NumeLiqu As String
Public FechLiqu As String
Public DetaLiqu As String
Public FeanLiqu As String
Public PeriInfo As String
Public NumeOrpa As String
Public TipoLiqu As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '40623C
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40624B
  MsgError = Value
End Sub

Public Function ExpeImpuGet() '40625A
  ExpeImpuGet = ExpeImpu
End Function

Public Sub ExpeImpuPut(Value) '406269
  ExpeImpu = Value
End Sub

Public Function NumeLiquGet() '406278
  NumeLiquGet = NumeLiqu
End Function

Public Sub NumeLiquPut(Value) '406287
  NumeLiqu = Value
End Sub

Public Function FechLiquGet() '406296
  FechLiquGet = FechLiqu
End Function

Public Sub FechLiquPut(Value) '4062A5
  FechLiqu = Value
End Sub

Public Function DetaLiquGet() '4062B4
  DetaLiquGet = DetaLiqu
End Function

Public Sub DetaLiquPut(Value) '4062C3
  DetaLiqu = Value
End Sub

Public Function FeanLiquGet() '4062D2
  FeanLiquGet = FeanLiqu
End Function

Public Sub FeanLiquPut(Value) '4062E1
  FeanLiqu = Value
End Sub

Public Function PeriInfoGet() '4062F0
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '4062FF
  PeriInfo = Value
End Sub

Public Function NumeOrpaGet() '40630E
  NumeOrpaGet = NumeOrpa
End Function

Public Sub NumeOrpaPut(Value) '40631D
  NumeOrpa = Value
End Sub

Public Function TipoLiquGet() '40632C
  TipoLiquGet = TipoLiqu
End Function

Public Sub TipoLiquPut(Value) '40633B
  TipoLiqu = Value
End Sub

Public Function AltaUsuaGet() '40634A
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '406359
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '406368
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '406377
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '406386
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '406395
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '4063A4
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '4063B3
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '4063C2
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '4063D1
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '4063E0
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '4063EF
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '4063FE
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '40640D
  BajaMoti = Value
End Sub
