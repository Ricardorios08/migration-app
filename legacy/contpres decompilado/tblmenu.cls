VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "tblmenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MsgError As String
Public CodiSist As String
Public CodiMenu As String
Public DetaMenu As String
Public FormMenu As String
Public WforMenu As String
Public RepoMenu As String


Public Function MsgErrorGet() '402E74
  MsgErrorGet = MsgError
End Function

Public Sub MsgErrorPut(Value) '402E83
  MsgError = Value
End Sub

Public Function CodiSistGet() '402E92
  CodiSistGet = CodiSist
End Function

Public Sub CodiSistPut(Value) '402EA1
  CodiSist = Value
End Sub

Public Function CodiMenuGet() '402EB0
  CodiMenuGet = CodiMenu
End Function

Public Sub CodiMenuPut(Value) '402EBF
  CodiMenu = Value
End Sub

Public Function DetaMenuGet() '402ECE
  DetaMenuGet = DetaMenu
End Function

Public Sub DetaMenuPut(Value) '402EDD
  DetaMenu = Value
End Sub

Public Function FormMenuGet() '402EEC
  FormMenuGet = FormMenu
End Function

Public Sub FormMenuPut(Value) '402EFB
  FormMenu = Value
End Sub

Public Function WforMenuGet() '402F0A
  WforMenuGet = WforMenu
End Function

Public Sub WforMenuPut(Value) '402F19
  WforMenu = Value
End Sub

Public Function RepoMenuGet() '402F28
  RepoMenuGet = RepoMenu
End Function

Public Sub RepoMenuPut(Value) '402F37
  RepoMenu = Value
End Sub
