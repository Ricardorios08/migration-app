VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarComercio
  Caption = "Buscar Comercio por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarComercio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 12876
  ClientHeight = 7644
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo4Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1680
    Width = 6855
    Height = 360
    TabIndex = 3
    Tag = "0"
    MaxLength = 40
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Campo3Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1200
    Width = 6855
    Height = 360
    TabIndex = 2
    Tag = "0"
    MaxLength = 40
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 720
    Width = 6855
    Height = 360
    TabIndex = 1
    Tag = "0"
    MaxLength = 40
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 240
    Width = 1095
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 120
    Top = 6960
    Width = 1335
    Height = 495
    TabIndex = 5
    Tag = "2"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 2160
    Width = 12615
    Height = 4575
    Tag = "1"
    TabIndex = 4
    OleObjectBlob = "dlgBuscarComercio.frx":08CA
  End
  Begin VB.Label Label4
    Caption = "Calle del Comercio:"
    Left = 480
    Top = 1680
    Width = 2025
    Height = 300
    TabIndex = 9
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Nombre de Fantasía:"
    Left = 360
    Top = 1200
    Width = 2220
    Height = 300
    TabIndex = 8
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Apellido y Nombre:"
    Left = 600
    Top = 720
    Width = 1965
    Height = 300
    TabIndex = 7
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Cuenta:"
    Left = 1680
    Top = 240
    Width = 840
    Height = 300
    TabIndex = 6
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "dlgBuscarComercio"

Public ComercioCLS As New Class


Private Sub Form_Load() 'AA2634
  'Data Table: 43BAE4
  loc_AA258C: FLdRfVar var_94
  loc_AA258F: LitVarStr var_A4, vbNullString
  loc_AA2594: HardType
  loc_AA2595: EqVarBool
  loc_AA2597: BranchF loc_AA25BD
  loc_AA259A: LitStr "SELECT CodiCome, comercio.CucuPers, DetaPers, RazoCome, DetaCall, NucaCome  FROM comercio "
  loc_AA259D: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = comercio.CucuPers"
  loc_AA25A0: ConcatStr
  loc_AA25A1: FStStrNoPop var_B8
  loc_AA25A4: LitStr " LEFT JOIN infogov.calle ON calle.CodiCall = comercio.CodiCall"
  loc_AA25A7: ConcatStr
  loc_AA25A8: FStStrNoPop var_BC
  loc_AA25AB: LitStr " WHERE FebaCome IS NULL ORDER BY DetaPers"
  loc_AA25AE: ConcatStr
  loc_AA25AF: CVarStr var_B4
  loc_AA25B2: FStVar var_94
  loc_AA25B6: FFreeStr var_B8 = ""
  loc_AA25BD: FLdRfVar var_94
  loc_AA25C0: CStrVarVal var_B8
  loc_AA25C4: FLdPr Me
  loc_AA25C7: MemLdRfVar from_stack_1.ComercioCLS
  loc_AA25CA: NewIfNullPr clscomercio
  loc_AA25CD: Call clscomercio.RedefineRS(from_stack_1v)
  loc_AA25D2: FFree1Str var_B8
  loc_AA25D5: LitI4 0
  loc_AA25DA: LitI4 1
  loc_AA25DF: FLdRfVar var_C0
  loc_AA25E2: Redim
  loc_AA25EC: FLdPr Me
  loc_AA25EF: MemLdRfVar from_stack_1.ComercioCLS
  loc_AA25F2: NewIfNullAd
  loc_AA25F5: FStAd var_C4 
  loc_AA25F9: FLdRfVar var_C4
  loc_AA25FC: CVarRef
  loc_AA2601: ParmAry1St
  loc_AA2607: FLdPr Me
  loc_AA260A: VCallAd Control_ID_dgdABMS
  loc_AA260D: CVarAd
  loc_AA2611: ParmAry1St
  loc_AA2617: FLdRfVar var_C0
  loc_AA261A: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AA261F: ILdRf var_C4
  loc_AA2622: CastAd
  loc_AA2625: FLdPr Me
  loc_AA2628: MemStAdFunc
  loc_AA262C: FLdRfVar var_C0
  loc_AA262F: Erase
  loc_AA2630: FFree1Ad var_C4
  loc_AA2633: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B22B4
  'Data Table: 43BAE4
  loc_9B22A8: LitVarStr var_A4, vbNullString
  loc_9B22AD: FStVarCopy
  loc_9B22B1: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D20DC
  'Data Table: 43BAE4
  loc_9D20C4: FLdPr Me
  loc_9D20C7: VCallAd Control_ID_Campo2Txt
  loc_9D20CA: FStAdFunc var_88
  loc_9D20CD: FLdPr var_88
  loc_9D20D0: Me.SetFocus
  loc_9D20D5: FFree1Ad var_88
  loc_9D20D8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11A00
  'Data Table: 43BAE4
  loc_A119C4: ILdI2 KeyAscii
  loc_A119C7: LitI2_Byte &HD
  loc_A119C9: EqI2
  loc_A119CA: BranchF loc_A119DB
  loc_A119CD: LitVar_TRUE var_A4
  loc_A119D0: LitStr "{Tab}"
  loc_A119D3: ImpAdCallFPR4 SendKeys , 
  loc_A119D8: FFree1Var var_A4 = ""
  loc_A119DB: ILdI2 KeyAscii
  loc_A119DE: LitI2_Byte &H1B
  loc_A119E0: EqI2
  loc_A119E1: BranchF loc_A119FE
  loc_A119E4: ILdRf Me
  loc_A119E7: FStAdNoPop
  loc_A119EB: ImpAdLdRf MemVar_D9C5D8
  loc_A119EE: NewIfNullPr Global
  loc_A119F1: Global.Unload from_stack_1
  loc_A119F6: FFree1Ad var_A8
  loc_A119F9: LitI2_Byte 0
  loc_A119FB: IStI2 KeyAscii
  loc_A119FE: ExitProcHresult
End Sub

Private Sub Campo4Txt_Change() 'A960A8
  'Data Table: 43BAE4
  loc_A96008: LitStr vbNullString
  loc_A9600B: FLdPr Me
  loc_A9600E: VCallAd Control_ID_Campo1Txt
  loc_A96011: FStAdFunc var_88
  loc_A96014: FLdPr var_88
  loc_A96017: Me.Text = from_stack_1
  loc_A9601C: FFree1Ad var_88
  loc_A9601F: LitStr vbNullString
  loc_A96022: FLdPr Me
  loc_A96025: VCallAd Control_ID_Campo2Txt
  loc_A96028: FStAdFunc var_88
  loc_A9602B: FLdPr var_88
  loc_A9602E: Me.Text = from_stack_1
  loc_A96033: FFree1Ad var_88
  loc_A96036: LitStr vbNullString
  loc_A96039: FLdPr Me
  loc_A9603C: VCallAd Control_ID_Campo3Txt
  loc_A9603F: FStAdFunc var_88
  loc_A96042: FLdPr var_88
  loc_A96045: Me.Text = from_stack_1
  loc_A9604A: FFree1Ad var_88
  loc_A9604D: LitStr "SELECT CodiCome, comercio.CucuPers, DetaPers, RazoCome, DetaCall, NucaCome  FROM comercio "
  loc_A96050: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = comercio.CucuPers"
  loc_A96053: ConcatStr
  loc_A96054: FStStrNoPop var_8C
  loc_A96057: LitStr " LEFT JOIN infogov.calle ON calle.CodiCall = comercio.CodiCall"
  loc_A9605A: ConcatStr
  loc_A9605B: FStStrNoPop var_90
  loc_A9605E: LitStr " WHERE FebaCome IS NULL AND DetaCall LIKE '" & Chr(37)
  loc_A96061: ConcatStr
  loc_A96062: FStStrNoPop var_98
  loc_A96065: FLdRfVar var_94
  loc_A96068: FLdPr Me
  loc_A9606B: VCallAd Control_ID_Campo4Txt
  loc_A9606E: FStAdFunc var_88
  loc_A96071: FLdPr var_88
  loc_A96074:  = Me.Text
  loc_A96079: ILdRf var_94
  loc_A9607C: ConcatStr
  loc_A9607D: FStStrNoPop var_9C
  loc_A96080: LitStr Chr(37) & "' ORDER BY DetaCall, NucaCome"
  loc_A96083: ConcatStr
  loc_A96084: FStStrNoPop var_A0
  loc_A96087: FLdPr Me
  loc_A9608A: MemLdRfVar from_stack_1.ComercioCLS
  loc_A9608D: NewIfNullPr clscomercio
  loc_A96090: Call clscomercio.RedefineRS(from_stack_1v)
  loc_A96095: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A960A4: FFree1Ad var_88
  loc_A960A7: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9D2174
  'Data Table: 43BAE4
  loc_9D215C: ILdRf Me
  loc_9D215F: FStAdNoPop
  loc_9D2163: ImpAdLdRf MemVar_D9C5D8
  loc_9D2166: NewIfNullPr Global
  loc_9D2169: Global.Unload from_stack_1
  loc_9D216E: FFree1Ad var_88
  loc_9D2171: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9ED1F8
  'Data Table: 43BAE4
  loc_9ED1D4: ILdI2 KeyCode
  loc_9ED1D7: CI4UI1
  loc_9ED1D8: LitI4 &HD
  loc_9ED1DD: EqI4
  loc_9ED1DE: BranchF loc_9ED1F6
  loc_9ED1E1: ILdRf Me
  loc_9ED1E4: FStAdNoPop
  loc_9ED1E8: ImpAdLdRf MemVar_D9C5D8
  loc_9ED1EB: NewIfNullPr Global
  loc_9ED1EE: Global.Unload from_stack_1
  loc_9ED1F3: FFree1Ad var_88
  loc_9ED1F6: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D1FAC
  'Data Table: 43BAE4
  loc_9D1F94: ILdRf Me
  loc_9D1F97: FStAdNoPop
  loc_9D1F9B: ImpAdLdRf MemVar_D9C5D8
  loc_9D1F9E: NewIfNullPr Global
  loc_9D1FA1: Global.Unload from_stack_1
  loc_9D1FA6: FFree1Ad var_88
  loc_9D1FA9: ExitProcHresult
End Sub

Private Sub Campo3Txt_Change() 'A94D4C
  'Data Table: 43BAE4
  loc_A94CAC: LitStr vbNullString
  loc_A94CAF: FLdPr Me
  loc_A94CB2: VCallAd Control_ID_Campo1Txt
  loc_A94CB5: FStAdFunc var_88
  loc_A94CB8: FLdPr var_88
  loc_A94CBB: Me.Text = from_stack_1
  loc_A94CC0: FFree1Ad var_88
  loc_A94CC3: LitStr vbNullString
  loc_A94CC6: FLdPr Me
  loc_A94CC9: VCallAd Control_ID_Campo2Txt
  loc_A94CCC: FStAdFunc var_88
  loc_A94CCF: FLdPr var_88
  loc_A94CD2: Me.Text = from_stack_1
  loc_A94CD7: FFree1Ad var_88
  loc_A94CDA: LitStr vbNullString
  loc_A94CDD: FLdPr Me
  loc_A94CE0: VCallAd Control_ID_Campo4Txt
  loc_A94CE3: FStAdFunc var_88
  loc_A94CE6: FLdPr var_88
  loc_A94CE9: Me.Text = from_stack_1
  loc_A94CEE: FFree1Ad var_88
  loc_A94CF1: LitStr "SELECT CodiCome, comercio.CucuPers, DetaPers, RazoCome, DetaCall, NucaCome  FROM comercio "
  loc_A94CF4: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = comercio.CucuPers"
  loc_A94CF7: ConcatStr
  loc_A94CF8: FStStrNoPop var_8C
  loc_A94CFB: LitStr " LEFT JOIN infogov.calle ON calle.CodiCall = comercio.CodiCall"
  loc_A94CFE: ConcatStr
  loc_A94CFF: FStStrNoPop var_90
  loc_A94D02: LitStr " WHERE FebaCome IS NULL AND RazoCome LIKE '" & Chr(37)
  loc_A94D05: ConcatStr
  loc_A94D06: FStStrNoPop var_98
  loc_A94D09: FLdRfVar var_94
  loc_A94D0C: FLdPr Me
  loc_A94D0F: VCallAd Control_ID_Campo3Txt
  loc_A94D12: FStAdFunc var_88
  loc_A94D15: FLdPr var_88
  loc_A94D18:  = Me.Text
  loc_A94D1D: ILdRf var_94
  loc_A94D20: ConcatStr
  loc_A94D21: FStStrNoPop var_9C
  loc_A94D24: LitStr Chr(37) & "' ORDER BY RazoCome"
  loc_A94D27: ConcatStr
  loc_A94D28: FStStrNoPop var_A0
  loc_A94D2B: FLdPr Me
  loc_A94D2E: MemLdRfVar from_stack_1.ComercioCLS
  loc_A94D31: NewIfNullPr clscomercio
  loc_A94D34: Call clscomercio.RedefineRS(from_stack_1v)
  loc_A94D39: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A94D48: FFree1Ad var_88
  loc_A94D4B: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A95C0C
  'Data Table: 43BAE4
  loc_A95B6C: LitStr vbNullString
  loc_A95B6F: FLdPr Me
  loc_A95B72: VCallAd Control_ID_Campo1Txt
  loc_A95B75: FStAdFunc var_88
  loc_A95B78: FLdPr var_88
  loc_A95B7B: Me.Text = from_stack_1
  loc_A95B80: FFree1Ad var_88
  loc_A95B83: LitStr vbNullString
  loc_A95B86: FLdPr Me
  loc_A95B89: VCallAd Control_ID_Campo3Txt
  loc_A95B8C: FStAdFunc var_88
  loc_A95B8F: FLdPr var_88
  loc_A95B92: Me.Text = from_stack_1
  loc_A95B97: FFree1Ad var_88
  loc_A95B9A: LitStr vbNullString
  loc_A95B9D: FLdPr Me
  loc_A95BA0: VCallAd Control_ID_Campo4Txt
  loc_A95BA3: FStAdFunc var_88
  loc_A95BA6: FLdPr var_88
  loc_A95BA9: Me.Text = from_stack_1
  loc_A95BAE: FFree1Ad var_88
  loc_A95BB1: LitStr "SELECT CodiCome, comercio.CucuPers, DetaPers, RazoCome, DetaCall, NucaCome  FROM comercio "
  loc_A95BB4: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = comercio.CucuPers"
  loc_A95BB7: ConcatStr
  loc_A95BB8: FStStrNoPop var_8C
  loc_A95BBB: LitStr " LEFT JOIN infogov.calle ON calle.CodiCall = comercio.CodiCall"
  loc_A95BBE: ConcatStr
  loc_A95BBF: FStStrNoPop var_90
  loc_A95BC2: LitStr " WHERE FebaCome IS NULL AND DetaPers like '" & Chr(37)
  loc_A95BC5: ConcatStr
  loc_A95BC6: FStStrNoPop var_98
  loc_A95BC9: FLdRfVar var_94
  loc_A95BCC: FLdPr Me
  loc_A95BCF: VCallAd Control_ID_Campo2Txt
  loc_A95BD2: FStAdFunc var_88
  loc_A95BD5: FLdPr var_88
  loc_A95BD8:  = Me.Text
  loc_A95BDD: ILdRf var_94
  loc_A95BE0: ConcatStr
  loc_A95BE1: FStStrNoPop var_9C
  loc_A95BE4: LitStr Chr(37) & "' ORDER BY DetaPers"
  loc_A95BE7: ConcatStr
  loc_A95BE8: FStStrNoPop var_A0
  loc_A95BEB: FLdPr Me
  loc_A95BEE: MemLdRfVar from_stack_1.ComercioCLS
  loc_A95BF1: NewIfNullPr clscomercio
  loc_A95BF4: Call clscomercio.RedefineRS(from_stack_1v)
  loc_A95BF9: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A95C08: FFree1Ad var_88
  loc_A95C0B: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A95ED0
  'Data Table: 43BAE4
  loc_A95E30: LitStr vbNullString
  loc_A95E33: FLdPr Me
  loc_A95E36: VCallAd Control_ID_Campo2Txt
  loc_A95E39: FStAdFunc var_88
  loc_A95E3C: FLdPr var_88
  loc_A95E3F: Me.Text = from_stack_1
  loc_A95E44: FFree1Ad var_88
  loc_A95E47: LitStr vbNullString
  loc_A95E4A: FLdPr Me
  loc_A95E4D: VCallAd Control_ID_Campo3Txt
  loc_A95E50: FStAdFunc var_88
  loc_A95E53: FLdPr var_88
  loc_A95E56: Me.Text = from_stack_1
  loc_A95E5B: FFree1Ad var_88
  loc_A95E5E: LitStr vbNullString
  loc_A95E61: FLdPr Me
  loc_A95E64: VCallAd Control_ID_Campo4Txt
  loc_A95E67: FStAdFunc var_88
  loc_A95E6A: FLdPr var_88
  loc_A95E6D: Me.Text = from_stack_1
  loc_A95E72: FFree1Ad var_88
  loc_A95E75: LitStr "SELECT CodiCome, comercio.CucuPers, DetaPers, RazoCome, DetaCall, NucaCome  FROM comercio "
  loc_A95E78: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = comercio.CucuPers"
  loc_A95E7B: ConcatStr
  loc_A95E7C: FStStrNoPop var_8C
  loc_A95E7F: LitStr " LEFT JOIN infogov.calle ON calle.CodiCall = comercio.CodiCall"
  loc_A95E82: ConcatStr
  loc_A95E83: FStStrNoPop var_90
  loc_A95E86: LitStr " WHERE FebaCome IS NULL AND CodiCome like '"
  loc_A95E89: ConcatStr
  loc_A95E8A: FStStrNoPop var_98
  loc_A95E8D: FLdRfVar var_94
  loc_A95E90: FLdPr Me
  loc_A95E93: VCallAd Control_ID_Campo1Txt
  loc_A95E96: FStAdFunc var_88
  loc_A95E99: FLdPr var_88
  loc_A95E9C:  = Me.Text
  loc_A95EA1: ILdRf var_94
  loc_A95EA4: ConcatStr
  loc_A95EA5: FStStrNoPop var_9C
  loc_A95EA8: LitStr Chr(37) & "' ORDER BY CodiCome"
  loc_A95EAB: ConcatStr
  loc_A95EAC: FStStrNoPop var_A0
  loc_A95EAF: FLdPr Me
  loc_A95EB2: MemLdRfVar from_stack_1.ComercioCLS
  loc_A95EB5: NewIfNullPr clscomercio
  loc_A95EB8: Call clscomercio.RedefineRS(from_stack_1v)
  loc_A95EBD: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A95ECC: FFree1Ad var_88
  loc_A95ECF: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D22F0
  'Data Table: 43BAE4
  loc_9D22D8: LitStr "0123456789"
  loc_9D22DB: FStStrCopy var_88
  loc_9D22DE: FLdRfVar var_88
  loc_9D22E1: ILdRf KeyAscii
  loc_9D22E4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D22E9: IStI2 KeyAscii
  loc_9D22EC: FFree1Str var_88
  loc_9D22EF: ExitProcHresult
End Sub

Public Function global_4438756Get() '43C27C
  global_4438756Get = global_4438756
End Function

Public Sub global_4438756Put(Value) '43C296
  global_4438756 = Value
End Sub

Public Sub global_4438756Set(Value) '43C2B0
  global_4438756 = Value
End Sub

Private Function Proc_136_15_9D2258() '9D2258
  'Data Table: 43BAE4
  loc_9D2240: ILdRf Me
  loc_9D2243: FStAdNoPop
  loc_9D2247: ImpAdLdRf MemVar_D9C5D8
  loc_9D224A: NewIfNullPr Global
  loc_9D224D: Global.Unload from_stack_1
  loc_9D2252: FFree1Ad var_88
  loc_9D2255: ExitProcHresult
End Function
