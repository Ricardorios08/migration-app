VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblorgaxusua"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public PeriInfo As String
Public CodiOrga As String
Public DetaOrga As String
Public CodiUsua As String
Public AltaUsua As String
Public AltaFeho As String
Public ModiUsua As String
Public ModiFeho As String
Public BajaUsua As String
Public BajaFeho As String
Public BajaMoti As String


Public Function MsgErrorGet() '404258
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '404267
  MsgError = Value
End Sub

Public Function PeriInfoGet() '404276
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '404285
  PeriInfo = Value
End Sub

Public Function CodiOrgaGet() '404294
  CodiOrgaGet = CodiOrga
End Function

Public Sub CodiOrgaPut(Value) '4042A3
  CodiOrga = Value
End Sub

Public Function DetaOrgaGet() '4042B2
  DetaOrgaGet = DetaOrga
End Function

Public Sub DetaOrgaPut(Value) '4042C1
  DetaOrga = Value
End Sub

Public Function CodiUsuaGet() '4042D0
  CodiUsuaGet = CodiUsua
End Function

Public Sub CodiUsuaPut(Value) '4042DF
  CodiUsua = Value
End Sub

Public Function AltaUsuaGet() '4042EE
  AltaUsuaGet = AltaUsua
End Function

Public Sub AltaUsuaPut(Value) '4042FD
  AltaUsua = Value
End Sub

Public Function AltaFehoGet() '40430C
  AltaFehoGet = AltaFeho
End Function

Public Sub AltaFehoPut(Value) '40431B
  AltaFeho = Value
End Sub

Public Function ModiUsuaGet() '40432A
  ModiUsuaGet = ModiUsua
End Function

Public Sub ModiUsuaPut(Value) '404339
  ModiUsua = Value
End Sub

Public Function ModiFehoGet() '404348
  ModiFehoGet = ModiFeho
End Function

Public Sub ModiFehoPut(Value) '404357
  ModiFeho = Value
End Sub

Public Function BajaUsuaGet() '404366
  BajaUsuaGet = BajaUsua
End Function

Public Sub BajaUsuaPut(Value) '404375
  BajaUsua = Value
End Sub

Public Function BajaFehoGet() '404384
  BajaFehoGet = BajaFeho
End Function

Public Sub BajaFehoPut(Value) '404393
  BajaFeho = Value
End Sub

Public Function BajaMotiGet() '4043A2
  BajaMotiGet = BajaMoti
End Function

Public Sub BajaMotiPut(Value) '4043B1
  BajaMoti = Value
End Sub
