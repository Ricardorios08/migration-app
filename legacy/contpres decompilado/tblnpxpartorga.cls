VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblnpxpartorga"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiPart As String
Public DetaPart As String
Public CodiOrga As String
Public DetaOrga As String
Public Impo01 As String
Public Impo02 As String
Public Impo03 As String
Public Impo04 As String
Public Impo05 As String
Public Impo06 As String
Public Impo07 As String
Public Impo08 As String
Public Impo09 As String
Public Impo10 As String
Public Impo11 As String
Public Impo12 As String
Public AltaUsua As String
Public AltaDeta As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '40DA0C
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '40DA1B
  MsgError = Value
End Sub

Public Function PeriInfoGet() '40DA2A
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '40DA39
  PeriInfo = Value
End Sub

Public Function CodiPartGet() '40DA48
  CodiPartGet = CodiPart
End Function

Public Sub CodiPartPut(Value) '40DA57
  CodiPart = Value
End Sub

Public Function DetaPartGet() '40DA66
  DetaPartGet = DetaPart
End Function

Public Sub DetaPartPut(Value) '40DA75
  DetaPart = Value
End Sub

Public Function CodiOrgaGet() '40DA84
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '40DA93
  CodiOrga = Value
End Sub

Public Function DetaOrgaGet() '40DAA2
  DetaOrgaGet = DetaOrga
End Function

Public Sub DetaOrgaPut(Value) '40DAB1
  DetaOrga = Value
End Sub

Public Function Impo01Get() '40DAC0
  Impo01Get = Impo01
End Function

Public Sub Impo01Put(Value) '40DACF
  Impo01 = Value
End Sub

Public Function Impo02Get() '40DADE
  Impo02Get = Impo02
End Function

Public Sub Impo02Put(Value) '40DAED
  Impo02 = Value
End Sub

Public Function Impo03Get() '40DAFC
  Impo03Get = Impo03
End Function

Public Sub Impo03Put(Value) '40DB0B
  Impo03 = Value
End Sub

Public Function Impo04Get() '40DB1A
  Impo04Get = Impo04
End Function

Public Sub Impo04Put(Value) '40DB29
  Impo04 = Value
End Sub

Public Function Impo05Get() '40DB38
  Impo05Get = Impo05
End Function

Public Sub Impo05Put(Value) '40DB47
  Impo05 = Value
End Sub

Public Function Impo06Get() '40DB56
  Impo06Get = Impo06
End Function

Public Sub Impo06Put(Value) '40DB65
  Impo06 = Value
End Sub

Public Function Impo07Get() '40DB74
  Impo07Get = Impo07
End Function

Public Sub Impo07Put(Value) '40DB83
  Impo07 = Value
End Sub

Public Function Impo08Get() '40DB92
  Impo08Get = Impo08
End Function

Public Sub Impo08Put(Value) '40DBA1
  Impo08 = Value
End Sub

Public Function Impo09Get() '40DBB0
  Impo09Get = Impo09
End Function

Public Sub Impo09Put(Value) '40DBBF
  Impo09 = Value
End Sub

Public Function Impo10Get() '40DBCE
  Impo10Get = Impo10
End Function

Public Sub Impo10Put(Value) '40DBDD
  Impo10 = Value
End Sub

Public Function Impo11Get() '40DBEC
  Impo11Get = Impo11
End Function

Public Sub Impo11Put(Value) '40DBFB
  Impo11 = Value
End Sub

Public Function Impo12Get() '40DC0A
  Impo12Get = Impo12
End Function

Public Sub Impo12Put(Value) '40DC19
  Impo12 = Value
End Sub

Public Function AltaUsuaGet() '40DC28
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '40DC37
  AltaUsua = Value
End Sub

Public Function AltaDetaGet() '40DC46
  AltaDetaGet = AltaDeta
End Function

Public Sub AltaDetaPut(Value) '40DC55
  AltaDeta = Value
End Sub

Public Function AltaFehoGet() '40DC64
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '40DC73
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '40DC82
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '40DC91
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '40DCA0
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '40DCAF
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '40DCBE
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '40DCCD
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '40DCDC
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '40DCEB
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '40DCFA
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '40DD09
  BajaMoti = Value
End Sub
