VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B504021C009402}#1.2#0"; "C:\WINDOWS\SysWOW64\richtx32.ocx"
Begin VB.Form dlgFiltrarAfectaciondePadrones
  Caption = "Filtrar Afectacion de Padrones"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgFiltrarAfectaciondePadrones.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9156
  ClientHeight = 4824
  StartUpPosition = 2 'CenterScreen
  Moveable = 0   'False
  Begin VB.ListBox lstFields
    Left = 3840
    Top = 720
    Width = 1215
    Height = 1200
    Visible = 0   'False
    TabIndex = 11
  End
  Begin VB.CommandButton cmdOr
    Caption = "OR"
    Left = 1920
    Top = 1200
    Width = 1215
    Height = 375
    TabIndex = 8
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
  Begin VB.CommandButton cmdAnd
    Caption = "AND"
    Left = 1920
    Top = 720
    Width = 1215
    Height = 375
    TabIndex = 7
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
  Begin VB.CommandButton cmdLimpiar
    Caption = "Limpiar"
    Left = 6360
    Top = 1920
    Width = 1335
    Height = 495
    TabIndex = 6
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
  Begin VB.CommandButton cmdQuitar
    Caption = "<< Quitar"
    Left = 6360
    Top = 1320
    Width = 1335
    Height = 495
    TabIndex = 5
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
  Begin VB.CommandButton cmdAgregar
    Caption = "Agregar >>"
    Left = 6360
    Top = 720
    Width = 1335
    Height = 495
    TabIndex = 3
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
  Begin RichTextLib.RichTextBox rtfRecordSource
    Left = 120
    Top = 2520
    Width = 8415
    Height = 1335
    TabIndex = 10
    OleObjectBlob = "dlgFiltrarAfectaciondePadrones.frx":08CA
  End
  Begin VB.TextBox txtValor
    ForeColor = &HFF0000&
    Left = 4680
    Top = 120
    Width = 3735
    Height = 420
    TabIndex = 2
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
  Begin VB.ComboBox cboOperador
    Style = 2
    Left = 1920
    Top = 120
    Width = 2655
    Height = 420
    TabIndex = 1
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
  Begin VB.ListBox lstCampos
    Left = 120
    Top = 120
    Width = 1695
    Height = 2160
    TabIndex = 0
    Sorted = -1  'True
  End
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1680
    Top = 4080
    Width = 1335
    Height = 495
    TabIndex = 9
    Cancel = -1  'True
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
    Top = 4080
    Width = 1335
    Height = 495
    TabIndex = 4
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

Attribute VB_Name = "dlgFiltrarAfectaciondePadrones"

Public sPasaSelect As String
Public sCaption As String


Private Sub txtValor_GotFocus() '9C22A0
  'Data Table: 4410A8
  loc_9C228C: FLdPr Me
  loc_9C228F: VCallAd Control_ID_txtValor
  loc_9C2292: CVarAd
  loc_9C2296: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C229B: FFree1Var var_94 = ""
  loc_9C229E: ExitProcHresult
End Sub

Private Sub Form_Load() 'AC9FFC
  'Data Table: 4410A8
  loc_AC9EE4: LitStr "Filtrar Concepto"
  loc_AC9EE7: FLdPr Me
  loc_AC9EEA: Me.Caption = from_stack_1
  loc_AC9EEF: FLdPr Me
  loc_AC9EF2: VCallAd Control_ID_lstCampos
  loc_AC9EF5: FStAdFunc var_88
  loc_AC9EF8: LitVarI2 var_98, 0
  loc_AC9EFD: PopAdLdVar
  loc_AC9EFE: LitStr "Código"
  loc_AC9F01: FLdPr var_88
  loc_AC9F04: Me.AddItem from_stack_1, from_stack_2
  loc_AC9F09: LitVarI2 var_98, 1
  loc_AC9F0E: PopAdLdVar
  loc_AC9F0F: LitStr "Detalle"
  loc_AC9F12: FLdPr var_88
  loc_AC9F15: Me.AddItem from_stack_1, from_stack_2
  loc_AC9F1A: LitNothing
  loc_AC9F1C: FStAd var_88 
  loc_AC9F20: FLdPr Me
  loc_AC9F23: VCallAd Control_ID_lstFields
  loc_AC9F26: FStAdFunc var_9C
  loc_AC9F29: LitVarI2 var_98, 0
  loc_AC9F2E: PopAdLdVar
  loc_AC9F2F: LitStr "obrareem.OrdeObre"
  loc_AC9F32: FLdPr var_9C
  loc_AC9F35: Me.AddItem from_stack_1, from_stack_2
  loc_AC9F3A: LitVarI2 var_98, 1
  loc_AC9F3F: PopAdLdVar
  loc_AC9F40: LitStr "obrareem.DetaObre"
  loc_AC9F43: FLdPr var_9C
  loc_AC9F46: Me.AddItem from_stack_1, from_stack_2
  loc_AC9F4B: LitNothing
  loc_AC9F4D: FStAd var_9C 
  loc_AC9F51: FLdPr Me
  loc_AC9F54: VCallAd Control_ID_cboOperador
  loc_AC9F57: FStAdFunc var_A0
  loc_AC9F5A: LitVar_Missing var_98
  loc_AC9F5D: PopAdLdVar
  loc_AC9F5E: LitStr "Mayor o Igual que"
  loc_AC9F61: FLdPr var_A0
  loc_AC9F64: Me.AddItem from_stack_1, from_stack_2
  loc_AC9F69: LitVar_Missing var_98
  loc_AC9F6C: PopAdLdVar
  loc_AC9F6D: LitStr "Mayor que"
  loc_AC9F70: FLdPr var_A0
  loc_AC9F73: Me.AddItem from_stack_1, from_stack_2
  loc_AC9F78: LitVar_Missing var_98
  loc_AC9F7B: PopAdLdVar
  loc_AC9F7C: LitStr "Igual a"
  loc_AC9F7F: FLdPr var_A0
  loc_AC9F82: Me.AddItem from_stack_1, from_stack_2
  loc_AC9F87: LitVar_Missing var_98
  loc_AC9F8A: PopAdLdVar
  loc_AC9F8B: LitStr "Distinto a"
  loc_AC9F8E: FLdPr var_A0
  loc_AC9F91: Me.AddItem from_stack_1, from_stack_2
  loc_AC9F96: LitVar_Missing var_98
  loc_AC9F99: PopAdLdVar
  loc_AC9F9A: LitStr "Contiene"
  loc_AC9F9D: FLdPr var_A0
  loc_AC9FA0: Me.AddItem from_stack_1, from_stack_2
  loc_AC9FA5: LitVar_Missing var_98
  loc_AC9FA8: PopAdLdVar
  loc_AC9FA9: LitStr "Menor que"
  loc_AC9FAC: FLdPr var_A0
  loc_AC9FAF: Me.AddItem from_stack_1, from_stack_2
  loc_AC9FB4: LitVar_Missing var_98
  loc_AC9FB7: PopAdLdVar
  loc_AC9FB8: LitStr "Menor o Igual que"
  loc_AC9FBB: FLdPr var_A0
  loc_AC9FBE: Me.AddItem from_stack_1, from_stack_2
  loc_AC9FC3: LitNothing
  loc_AC9FC5: FStAd var_A0 
  loc_AC9FC9: LitI2_Byte &HFF
  loc_AC9FCB: LitI2_Byte 0
  loc_AC9FCD: FLdPr Me
  loc_AC9FD0: VCallAd Control_ID_lstCampos
  loc_AC9FD3: FStAdFunc var_A4
  loc_AC9FD6: FLdPr var_A4
  loc_AC9FD9: Me.Selected = from_stack_1
  loc_AC9FDE: FFree1Ad var_A4
  loc_AC9FE1: LitStr "Igual a"
  loc_AC9FE4: FLdPr Me
  loc_AC9FE7: VCallAd Control_ID_cboOperador
  loc_AC9FEA: FStAdFunc var_A4
  loc_AC9FED: FLdPr var_A4
  loc_AC9FF0: Me.Text = from_stack_1
  loc_AC9FF5: FFree1Ad var_A4
  loc_AC9FF8: ExitProcHresult
End Sub

Private Sub OKButton_Click() 'AA2450
  'Data Table: 4410A8
  loc_AA239C: FLdPr Me
  loc_AA239F: VCallAd Control_ID_rtfRecordSource
  loc_AA23A2: FStAdFunc var_88
  loc_AA23A5: FLdPr var_88
  loc_AA23A8: LateIdLdVar var_98 DispID_-517 -1
  loc_AA23AF: CStrVarTmp
  loc_AA23B0: FStStrNoPop var_9C
  loc_AA23B3: LitStr vbNullString
  loc_AA23B6: NeStr
  loc_AA23B8: FFree1Str var_9C
  loc_AA23BB: FFree1Ad var_88
  loc_AA23BE: FFree1Var var_98 = ""
  loc_AA23C1: BranchF loc_AA2434
  loc_AA23C4: LitStr "SELECT OrdeObre, DetaObre FROM obrareem "
  loc_AA23C7: LitStr " WHERE "
  loc_AA23CA: ConcatStr
  loc_AA23CB: FStStrNoPop var_9C
  loc_AA23CE: FLdPr Me
  loc_AA23D1: VCallAd Control_ID_rtfRecordSource
  loc_AA23D4: FStAdFunc var_88
  loc_AA23D7: FLdPr var_88
  loc_AA23DA: LateIdLdVar var_98 DispID_-517 -1
  loc_AA23E1: CStrVarTmp
  loc_AA23E2: FStStrNoPop var_A0
  loc_AA23E5: ConcatStr
  loc_AA23E6: FStStrNoPop var_A4
  loc_AA23E9: FLdPr Me
  loc_AA23EC: MemStStrCopy
  loc_AA23F0: FFreeStr var_9C = "": var_A0 = ""
  loc_AA23F9: FFree1Ad var_88
  loc_AA23FC: FFree1Var var_98 = ""
  loc_AA23FF: LitStr "Filtro aplicado: "
  loc_AA2402: FLdPr Me
  loc_AA2405: VCallAd Control_ID_rtfRecordSource
  loc_AA2408: FStAdFunc var_88
  loc_AA240B: FLdPr var_88
  loc_AA240E: LateIdLdVar var_98 DispID_-517 -1
  loc_AA2415: CStrVarTmp
  loc_AA2416: FStStrNoPop var_9C
  loc_AA2419: ConcatStr
  loc_AA241A: FStStrNoPop var_A0
  loc_AA241D: FLdPr Me
  loc_AA2420: MemStStrCopy
  loc_AA2424: FFreeStr var_9C = ""
  loc_AA242B: FFree1Ad var_88
  loc_AA242E: FFree1Var var_98 = ""
  loc_AA2431: Branch loc_AA2439
  loc_AA2434: Call CancelButton_Click()
  loc_AA2439: ILdRf Me
  loc_AA243C: FStAdNoPop
  loc_AA2440: ImpAdLdRf MemVar_D9C5D8
  loc_AA2443: NewIfNullPr Global
  loc_AA2446: Global.Unload from_stack_1
  loc_AA244B: FFree1Ad var_88
  loc_AA244E: ExitProcHresult
End Sub

Private Sub cmdAnd_Click() 'A422B8
  'Data Table: 4410A8
  loc_A42274: FLdPr Me
  loc_A42277: VCallAd Control_ID_rtfRecordSource
  loc_A4227A: FStAdFunc var_88
  loc_A4227D: FLdPr var_88
  loc_A42280: LateIdLdVar var_98 DispID_-517 -1
  loc_A42287: CStrVarTmp
  loc_A42288: FStStrNoPop var_9C
  loc_A4228B: LitStr " AND "
  loc_A4228E: ConcatStr
  loc_A4228F: CVarStr var_AC
  loc_A42292: PopAdLdVar
  loc_A42293: FLdPr Me
  loc_A42296: VCallAd Control_ID_rtfRecordSource
  loc_A42299: FStAdFunc var_C0
  loc_A4229C: FLdPr var_C0
  loc_A4229F: LateIdSt
  loc_A422A4: FFree1Str var_9C
  loc_A422A7: FFreeAd var_88 = ""
  loc_A422AE: FFreeVar var_98 = ""
  loc_A422B5: ExitProcHresult
End Sub

Private Sub cmdAgregar_Click() 'B2B3C4
  'Data Table: 4410A8
  loc_B2B15C: FLdRfVar var_90
  loc_B2B15F: FLdPr Me
  loc_B2B162: VCallAd Control_ID_txtValor
  loc_B2B165: FStAdFunc var_8C
  loc_B2B168: FLdPr var_8C
  loc_B2B16B:  = Me.Text
  loc_B2B170: ILdRf var_90
  loc_B2B173: LitStr vbNullString
  loc_B2B176: EqStr
  loc_B2B178: FFree1Str var_90
  loc_B2B17B: FFree1Ad var_8C
  loc_B2B17E: BranchF loc_B2B1B3
  loc_B2B181: LitVar_Missing var_110
  loc_B2B184: LitVar_Missing var_F0
  loc_B2B187: LitVarStr var_C0, "InfoGov"
  loc_B2B18C: FStVarCopyObj var_D0
  loc_B2B18F: FLdRfVar var_D0
  loc_B2B192: LitI4 &H30
  loc_B2B197: LitVarStr var_A0, "Debe ingresar un valor. Reintente..."
  loc_B2B19C: FStVarCopyObj var_B0
  loc_B2B19F: FLdRfVar var_B0
  loc_B2B1A2: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B2B1A7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_B2B1B2: ExitProcHresult
  loc_B2B1B3: FLdPr Me
  loc_B2B1B6: VCallAd Control_ID_rtfRecordSource
  loc_B2B1B9: FStAdFunc var_8C
  loc_B2B1BC: FLdPr var_8C
  loc_B2B1BF: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2B1C6: CStrVarTmp
  loc_B2B1C7: FStStrNoPop var_90
  loc_B2B1CA: FLdPr Me
  loc_B2B1CD: MemStStrCopy
  loc_B2B1D1: FFree1Str var_90
  loc_B2B1D4: FFree1Ad var_8C
  loc_B2B1D7: FFree1Var var_B0 = ""
  loc_B2B1DA: FLdPr Me
  loc_B2B1DD: VCallAd Control_ID_rtfRecordSource
  loc_B2B1E0: FStAdFunc var_114
  loc_B2B1E3: FLdPr var_114
  loc_B2B1E6: LateIdLdVar var_D0 DispID_-517 -1
  loc_B2B1ED: PopAd
  loc_B2B1EF: FLdPr Me
  loc_B2B1F2: VCallAd Control_ID_rtfRecordSource
  loc_B2B1F5: FStAdFunc var_128
  loc_B2B1F8: FLdPr var_128
  loc_B2B1FB: LateIdLdVar var_138 DispID_-517 -1
  loc_B2B202: PopAd
  loc_B2B204: FLdPr Me
  loc_B2B207: VCallAd Control_ID_rtfRecordSource
  loc_B2B20A: FStAdFunc var_8C
  loc_B2B20D: FLdPr var_8C
  loc_B2B210: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2B217: CStrVarTmp
  loc_B2B218: FStStrNoPop var_90
  loc_B2B21B: LitStr vbNullString
  loc_B2B21E: NeStr
  loc_B2B220: CVarBoolI2 var_E0
  loc_B2B224: LitI4 4
  loc_B2B229: FLdRfVar var_D0
  loc_B2B22C: CStrVarTmp
  loc_B2B22D: CVarStr var_F0
  loc_B2B230: FLdRfVar var_110
  loc_B2B233: ImpAdCallFPR4  = Right(, )
  loc_B2B238: FLdRfVar var_110
  loc_B2B23B: LitVarStr var_A0, "AND "
  loc_B2B240: HardType
  loc_B2B241: EqVar var_124
  loc_B2B245: LitI4 3
  loc_B2B24A: FLdRfVar var_138
  loc_B2B24D: CStrVarTmp
  loc_B2B24E: CVarStr var_148
  loc_B2B251: FLdRfVar var_158
  loc_B2B254: ImpAdCallFPR4  = Right(, )
  loc_B2B259: FLdRfVar var_158
  loc_B2B25C: LitVarStr var_C0, "OR "
  loc_B2B261: HardType
  loc_B2B262: EqVar var_168
  loc_B2B266: OrVar var_178
  loc_B2B26A: NotVar var_188
  loc_B2B26E: AndVar var_198
  loc_B2B272: CBoolVarNull
  loc_B2B274: FFree1Str var_90
  loc_B2B277: FFreeAd var_8C = "": var_114 = ""
  loc_B2B280: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_B2B293: BranchF loc_B2B29B
  loc_B2B296: Call cmdAnd_Click()
  loc_B2B29B: FLdRfVar var_90
  loc_B2B29E: FLdPr Me
  loc_B2B2A1: VCallAd Control_ID_cboOperador
  loc_B2B2A4: FStAdFunc var_8C
  loc_B2B2A7: FLdPr var_8C
  loc_B2B2AA:  = Me.Text
  loc_B2B2AF: ILdRf var_90
  loc_B2B2B2: LitStr "Contiene"
  loc_B2B2B5: EqStr
  loc_B2B2B7: FFree1Str var_90
  loc_B2B2BA: FFree1Ad var_8C
  loc_B2B2BD: BranchF loc_B2B2C9
  loc_B2B2C0: LitStr Chr(37)
  loc_B2B2C3: FStStrCopy var_88
  loc_B2B2C6: Branch loc_B2B2CF
  loc_B2B2C9: LitStr vbNullString
  loc_B2B2CC: FStStrCopy var_88
  loc_B2B2CF: FLdPr Me
  loc_B2B2D2: VCallAd Control_ID_rtfRecordSource
  loc_B2B2D5: FStAdFunc var_8C
  loc_B2B2D8: FLdPr var_8C
  loc_B2B2DB: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2B2E2: CStrVarTmp
  loc_B2B2E3: FStStrNoPop var_1A0
  loc_B2B2E6: FLdRfVar var_90
  loc_B2B2E9: FLdRfVar var_19A
  loc_B2B2EC: FLdPr Me
  loc_B2B2EF: VCallAd Control_ID_lstCampos
  loc_B2B2F2: FStAdFunc var_114
  loc_B2B2F5: FLdPr var_114
  loc_B2B2F8:  = Me.ListIndex
  loc_B2B2FD: FLdI2 var_19A
  loc_B2B300: FLdPr Me
  loc_B2B303: VCallAd Control_ID_lstFields
  loc_B2B306: FStAdFunc var_128
  loc_B2B309: FLdPr var_128
  loc_B2B30C: from_stack_2 = Me.List(from_stack_1)
  loc_B2B311: ILdRf var_90
  loc_B2B314: ConcatStr
  loc_B2B315: FStStrNoPop var_1A4
  loc_B2B318: LitStr " "
  loc_B2B31B: ConcatStr
  loc_B2B31C: FStStrNoPop var_1B4
  loc_B2B31F: FLdRfVar var_1AC
  loc_B2B322: FLdPr Me
  loc_B2B325: VCallAd Control_ID_cboOperador
  loc_B2B328: FStAdFunc var_1A8
  loc_B2B32B: FLdPr var_1A8
  loc_B2B32E:  = Me.Text
  loc_B2B333: FLdZeroAd var_1AC
  loc_B2B336: PopTmpLdAdStr
  loc_B2B33A: ImpAdCallI2 Proc_272_0_A83C54()
  loc_B2B33F: FStStrNoPop var_1B8
  loc_B2B342: ConcatStr
  loc_B2B343: FStStrNoPop var_1BC
  loc_B2B346: LitStr " '"
  loc_B2B349: ILdRf var_88
  loc_B2B34C: ConcatStr
  loc_B2B34D: FStStrNoPop var_1C0
  loc_B2B350: ConcatStr
  loc_B2B351: FStStrNoPop var_1CC
  loc_B2B354: FLdRfVar var_1C8
  loc_B2B357: FLdPr Me
  loc_B2B35A: VCallAd Control_ID_txtValor
  loc_B2B35D: FStAdFunc var_1C4
  loc_B2B360: FLdPr var_1C4
  loc_B2B363:  = Me.Text
  loc_B2B368: ILdRf var_1C8
  loc_B2B36B: ConcatStr
  loc_B2B36C: FStStrNoPop var_1D0
  loc_B2B36F: ILdRf var_88
  loc_B2B372: ConcatStr
  loc_B2B373: FStStrNoPop var_1D4
  loc_B2B376: LitStr "'"
  loc_B2B379: ConcatStr
  loc_B2B37A: CVarStr var_D0
  loc_B2B37D: PopAdLdVar
  loc_B2B37E: FLdPr Me
  loc_B2B381: VCallAd Control_ID_rtfRecordSource
  loc_B2B384: FStAdFunc var_1D8
  loc_B2B387: FLdPr var_1D8
  loc_B2B38A: LateIdSt
  loc_B2B38F: FFreeStr var_1A0 = "": var_90 = "": var_1A4 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1CC = "": var_1C8 = "": var_1D0 = ""
  loc_B2B3AA: FFreeAd var_8C = "": var_114 = "": var_128 = "": var_1A8 = "": var_1C4 = ""
  loc_B2B3B9: FFreeVar var_B0 = ""
  loc_B2B3C0: ExitProcHresult
  loc_B2B3C1: CStr2Ansi
End Sub

Private Sub cmdLimpiar_Click() '9E267C
  'Data Table: 4410A8
  loc_9E2660: LitVarStr var_94, vbNullString
  loc_9E2665: PopAdLdVar
  loc_9E2666: FLdPr Me
  loc_9E2669: VCallAd Control_ID_rtfRecordSource
  loc_9E266C: FStAdFunc var_A8
  loc_9E266F: FLdPr var_A8
  loc_9E2672: LateIdSt
  loc_9E2677: FFree1Ad var_A8
  loc_9E267A: ExitProcHresult
End Sub

Private Sub cmdQuitar_Click() 'B00E30
  'Data Table: 4410A8
  loc_B00C54: FLdPr Me
  loc_B00C57: VCallAd Control_ID_rtfRecordSource
  loc_B00C5A: FStAdFunc var_8C
  loc_B00C5D: FLdPr var_8C
  loc_B00C60: LateIdLdVar var_9C DispID_-517 -1
  loc_B00C67: PopAd
  loc_B00C69: LitI4 0
  loc_B00C6E: LitI4 -1
  loc_B00C73: LitStr " AND"
  loc_B00C76: FLdRfVar var_9C
  loc_B00C79: CStrVarTmp
  loc_B00C7A: FStStrNoPop var_A0
  loc_B00C7D: ImpAdCallI2 InStrRev(, , , )
  loc_B00C82: CI2I4
  loc_B00C83: FStI2 var_86
  loc_B00C86: FFree1Str var_A0
  loc_B00C89: FFree1Ad var_8C
  loc_B00C8C: FFree1Var var_9C = ""
  loc_B00C8F: FLdPr Me
  loc_B00C92: VCallAd Control_ID_rtfRecordSource
  loc_B00C95: FStAdFunc var_8C
  loc_B00C98: FLdPr var_8C
  loc_B00C9B: LateIdLdVar var_9C DispID_-517 -1
  loc_B00CA2: PopAd
  loc_B00CA4: LitI4 0
  loc_B00CA9: LitI4 -1
  loc_B00CAE: LitStr " OR"
  loc_B00CB1: FLdRfVar var_9C
  loc_B00CB4: CStrVarTmp
  loc_B00CB5: FStStrNoPop var_A0
  loc_B00CB8: ImpAdCallI2 InStrRev(, , , )
  loc_B00CBD: CI2I4
  loc_B00CBE: FStI2 var_88
  loc_B00CC1: FFree1Str var_A0
  loc_B00CC4: FFree1Ad var_8C
  loc_B00CC7: FFree1Var var_9C = ""
  loc_B00CCA: FLdI2 var_86
  loc_B00CCD: LitI2_Byte 0
  loc_B00CCF: EqI2
  loc_B00CD0: FLdI2 var_88
  loc_B00CD3: LitI2_Byte 0
  loc_B00CD5: EqI2
  loc_B00CD6: AndI4
  loc_B00CD7: BranchF loc_B00CF7
  loc_B00CDA: LitVarStr var_B0, vbNullString
  loc_B00CDF: PopAdLdVar
  loc_B00CE0: FLdPr Me
  loc_B00CE3: VCallAd Control_ID_rtfRecordSource
  loc_B00CE6: FStAdFunc var_8C
  loc_B00CE9: FLdPr var_8C
  loc_B00CEC: LateIdSt
  loc_B00CF1: FFree1Ad var_8C
  loc_B00CF4: Branch loc_B00E2E
  loc_B00CF7: FLdI2 var_86
  loc_B00CFA: FLdI2 var_88
  loc_B00CFD: GtI2
  loc_B00CFE: BranchF loc_B00D99
  loc_B00D01: FLdPr Me
  loc_B00D04: VCallAd Control_ID_rtfRecordSource
  loc_B00D07: FStAdFunc var_8C
  loc_B00D0A: FLdPr var_8C
  loc_B00D0D: LateIdLdVar var_9C DispID_-517 -1
  loc_B00D14: PopAd
  loc_B00D16: FLdPr Me
  loc_B00D19: VCallAd Control_ID_rtfRecordSource
  loc_B00D1C: FStAdFunc var_C4
  loc_B00D1F: FLdPr var_C4
  loc_B00D22: LateIdLdVar var_D4 DispID_-517 -1
  loc_B00D29: PopAd
  loc_B00D2B: LitI4 0
  loc_B00D30: LitI4 -1
  loc_B00D35: LitStr " AND"
  loc_B00D38: FLdRfVar var_D4
  loc_B00D3B: CStrVarTmp
  loc_B00D3C: FStStrNoPop var_A0
  loc_B00D3F: ImpAdCallI2 InStrRev(, , , )
  loc_B00D44: LitI4 1
  loc_B00D49: SubI4
  loc_B00D4A: CVarI4
  loc_B00D4E: LitI4 1
  loc_B00D53: FLdRfVar var_9C
  loc_B00D56: CStrVarTmp
  loc_B00D57: CVarStr var_E4
  loc_B00D5A: FLdRfVar var_104
  loc_B00D5D: ImpAdCallFPR4  = Mid(, , )
  loc_B00D62: FLdRfVar var_104
  loc_B00D65: CStrVarTmp
  loc_B00D66: CVarStr var_114
  loc_B00D69: PopAdLdVar
  loc_B00D6A: FLdPr Me
  loc_B00D6D: VCallAd Control_ID_rtfRecordSource
  loc_B00D70: FStAdFunc var_118
  loc_B00D73: FLdPr var_118
  loc_B00D76: LateIdSt
  loc_B00D7B: FFree1Str var_A0
  loc_B00D7E: FFreeAd var_8C = "": var_C4 = ""
  loc_B00D87: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B00D96: Branch loc_B00E2E
  loc_B00D99: FLdPr Me
  loc_B00D9C: VCallAd Control_ID_rtfRecordSource
  loc_B00D9F: FStAdFunc var_8C
  loc_B00DA2: FLdPr var_8C
  loc_B00DA5: LateIdLdVar var_9C DispID_-517 -1
  loc_B00DAC: PopAd
  loc_B00DAE: FLdPr Me
  loc_B00DB1: VCallAd Control_ID_rtfRecordSource
  loc_B00DB4: FStAdFunc var_C4
  loc_B00DB7: FLdPr var_C4
  loc_B00DBA: LateIdLdVar var_D4 DispID_-517 -1
  loc_B00DC1: PopAd
  loc_B00DC3: LitI4 0
  loc_B00DC8: LitI4 -1
  loc_B00DCD: LitStr " OR"
  loc_B00DD0: FLdRfVar var_D4
  loc_B00DD3: CStrVarTmp
  loc_B00DD4: FStStrNoPop var_A0
  loc_B00DD7: ImpAdCallI2 InStrRev(, , , )
  loc_B00DDC: LitI4 1
  loc_B00DE1: SubI4
  loc_B00DE2: CVarI4
  loc_B00DE6: LitI4 1
  loc_B00DEB: FLdRfVar var_9C
  loc_B00DEE: CStrVarTmp
  loc_B00DEF: CVarStr var_E4
  loc_B00DF2: FLdRfVar var_104
  loc_B00DF5: ImpAdCallFPR4  = Mid(, , )
  loc_B00DFA: FLdRfVar var_104
  loc_B00DFD: CStrVarTmp
  loc_B00DFE: CVarStr var_114
  loc_B00E01: PopAdLdVar
  loc_B00E02: FLdPr Me
  loc_B00E05: VCallAd Control_ID_rtfRecordSource
  loc_B00E08: FStAdFunc var_118
  loc_B00E0B: FLdPr var_118
  loc_B00E0E: LateIdSt
  loc_B00E13: FFree1Str var_A0
  loc_B00E16: FFreeAd var_8C = "": var_C4 = ""
  loc_B00E1F: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B00E2E: ExitProcHresult
End Sub

Private Sub cmdOr_Click(arg_30) 'A423C8
  'Data Table: 4410A8
  loc_A42384: FLdPr Me
  loc_A42387: VCallAd Control_ID_rtfRecordSource
  loc_A4238A: FStAdFunc var_88
  loc_A4238D: FLdPr var_88
  loc_A42390: LateIdLdVar var_98 DispID_-517 -1
  loc_A42397: CStrVarTmp
  loc_A42398: FStStrNoPop var_9C
  loc_A4239B: LitStr " OR "
  loc_A4239E: ConcatStr
  loc_A4239F: CVarStr var_AC
  loc_A423A2: PopAdLdVar
  loc_A423A3: FLdPr Me
  loc_A423A6: VCallAd Control_ID_rtfRecordSource
  loc_A423A9: FStAdFunc var_C0
  loc_A423AC: FLdPr var_C0
  loc_A423AF: LateIdSt
  loc_A423B4: FFree1Str var_9C
  loc_A423B7: FFreeAd var_88 = ""
  loc_A423BE: FFreeVar var_98 = ""
  loc_A423C5: ExitProcHresult
  loc_A423C6: FLdR8 arg_3003
End Sub

Private Sub CancelButton_Click(arg_30) '9FD294
  'Data Table: 4410A8
  loc_9FD268: LitStr "SELECT OrdeObre, DetaObre, FealObre FROM obrareem ORDER BY OrdeObre"
  loc_9FD26B: FLdPr Me
  loc_9FD26E: MemStStrCopy
  loc_9FD272: LitStr vbNullString
  loc_9FD275: FLdPr Me
  loc_9FD278: MemStStrCopy
  loc_9FD27C: ILdRf Me
  loc_9FD27F: FStAdNoPop
  loc_9FD283: ImpAdLdRf MemVar_D9C5D8
  loc_9FD286: NewIfNullPr Global
  loc_9FD289: Global.Unload from_stack_1
  loc_9FD28E: FFree1Ad var_88
  loc_9FD291: ExitProcHresult
  loc_9FD292: FLdZeroAd arg_30AC
End Sub

Public Function sPasaSelectGet() '44190C
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '44191B
  sPasaSelect = Value
End Sub

Public Function sCaptionGet() '44192A
  sCaptionGet = sCaption
End Function

Public Sub sCaptionPut(Value) '441939
  sCaption = Value
End Sub

Public Function translateField(Label) 'A8F8C4
  'Data Table: 4410A8
  loc_A8F824: ZeroRetVal
  loc_A8F826: ILdI4 Label
  loc_A8F829: FStStrCopy var_8C
  loc_A8F82C: ILdRf var_8C
  loc_A8F82F: FLdRfVar translateField
  loc_A8F832: LitI2_Byte 0
  loc_A8F834: FLdPr Me
  loc_A8F837: VCallAd Control_ID_lstCampos
  loc_A8F83A: FStAdFunc var_90
  loc_A8F83D: FLdPr var_90
  loc_A8F840: from_stack_2 = Me.List(from_stack_1)
  loc_A8F845: ILdRf translateField
  loc_A8F848: EqStr
  loc_A8F84A: FFree1Str translateField
  loc_A8F84D: FFree1Ad var_90
  loc_A8F850: BranchF loc_A8F875
  loc_A8F853: FLdRfVar translateField
  loc_A8F856: LitI2_Byte 0
  loc_A8F858: FLdPr Me
  loc_A8F85B: VCallAd Control_ID_lstFields
  loc_A8F85E: FStAdFunc var_90
  loc_A8F861: FLdPr var_90
  loc_A8F864: from_stack_2 = Me.List(from_stack_1)
  loc_A8F869: FLdZeroAd translateField
  loc_A8F86C: FStStr var_88
  loc_A8F86F: FFree1Ad var_90
  loc_A8F872: Branch loc_A8F8BB
  loc_A8F875: ILdRf var_8C
  loc_A8F878: FLdRfVar translateField
  loc_A8F87B: LitI2_Byte 1
  loc_A8F87D: FLdPr Me
  loc_A8F880: VCallAd Control_ID_lstCampos
  loc_A8F883: FStAdFunc var_90
  loc_A8F886: FLdPr var_90
  loc_A8F889: from_stack_2 = Me.List(from_stack_1)
  loc_A8F88E: ILdRf translateField
  loc_A8F891: EqStr
  loc_A8F893: FFree1Str translateField
  loc_A8F896: FFree1Ad var_90
  loc_A8F899: BranchF loc_A8F8BB
  loc_A8F89C: FLdRfVar translateField
  loc_A8F89F: LitI2_Byte 1
  loc_A8F8A1: FLdPr Me
  loc_A8F8A4: VCallAd Control_ID_lstFields
  loc_A8F8A7: FStAdFunc var_90
  loc_A8F8AA: FLdPr var_90
  loc_A8F8AD: from_stack_2 = Me.List(from_stack_1)
  loc_A8F8B2: FLdZeroAd translateField
  loc_A8F8B5: FStStr var_88
  loc_A8F8B8: FFree1Ad var_90
  loc_A8F8BB: ExitProcCbHresult
End Function
