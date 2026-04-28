VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmModificaciondeBoletosCobrados
  Caption = "Modificacion de Boletos Cobrados"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmModificaciondeBoletosCobrados.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15612
  ClientHeight = 10440
  Begin VB.Frame Frame1
    Left = 120
    Top = 4320
    Width = 13440
    Height = 2400
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox ImpoAcpaTxt
      ForeColor = &HFF0000&
      Left = 5880
      Top = 1800
      Width = 1695
      Height = 345
      TabIndex = 9
      MaxLength = 12
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox TocoAcpaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1800
      Width = 735
      Height = 345
      TabIndex = 8
      MaxLength = 4
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
    Begin VB.TextBox CodiEnreTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1320
      Width = 495
      Height = 345
      TabIndex = 6
      MaxLength = 3
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
    Begin VB.TextBox NumeAcpaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 840
      Width = 495
      Height = 345
      TabIndex = 3
      MaxLength = 3
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
    Begin VB.CommandButton CodiEnreCmd
      Left = 3120
      Top = 1320
      Width = 495
      Height = 345
      TabIndex = 7
      Picture = "frmModificaciondeBoletosCobrados.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton FeenAcpaCmd
      Left = 3960
      Top = 360
      Width = 375
      Height = 360
      TabIndex = 2
      Picture = "frmModificaciondeBoletosCobrados.frx":3344
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton FepaAcpaCmd
      Left = 6795
      Top = 840
      Width = 375
      Height = 360
      TabIndex = 5
      Picture = "frmModificaciondeBoletosCobrados.frx":3886
      Style = 1
      CausesValidation = 0   'False
    End
    Begin MSMask.MaskEdBox FeenAcpaMsk
      Left = 2520
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 1
      OleObjectBlob = "frmModificaciondeBoletosCobrados.frx":3DC8
    End
    Begin MSMask.MaskEdBox FepaAcpaMsk
      Left = 5400
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 4
      OleObjectBlob = "frmModificaciondeBoletosCobrados.frx":3E78
    End
    Begin VB.Label Label7
      Caption = "Fecha de Envio:"
      Left = 720
      Top = 360
      Width = 1710
      Height = 300
      TabIndex = 17
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
      Caption = "Nro. de Grupo:"
      Left = 870
      Top = 840
      Width = 1560
      Height = 300
      TabIndex = 16
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
      Caption = "Fecha de Pago:"
      Left = 3720
      Top = 840
      Width = 1680
      Height = 300
      TabIndex = 15
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
    Begin VB.Label Label4
      Caption = "Ente Recaudador:"
      Left = 480
      Top = 1320
      Width = 1950
      Height = 300
      TabIndex = 14
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
      Caption = "Total de Boletos:"
      Left = 600
      Top = 1800
      Width = 1785
      Height = 300
      TabIndex = 13
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
    Begin VB.Label Label6
      Caption = "Importe Total:"
      Left = 4320
      Top = 1800
      Width = 1470
      Height = 300
      TabIndex = 12
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
    Begin VB.Label DetaEnreLbl
      Left = 3720
      Top = 1320
      Width = 6015
      Height = 345
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 13920
    Height = 3315
    TabIndex = 0
    OleObjectBlob = "frmModificaciondeBoletosCobrados.frx":3F28
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmModificaciondeBoletosCobrados.frx":4596
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15612
    Height = 636
    TabIndex = 18
    OleObjectBlob = "frmModificaciondeBoletosCobrados.frx":C114
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 19
      TabStop = 0   'False
      Picture = "frmModificaciondeBoletosCobrados.frx":C670
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmModificaciondeBoletosCobrados"


Private Sub FeenAcpaMsk_UnknownEvent_0 '9C4388
  'Data Table: 48BC64
  loc_9C4374: FLdPr Me
  loc_9C4377: VCallAd Control_ID_FeenAcpaMsk
  loc_9C437A: CVarAd
  loc_9C437E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4383: FFree1Var var_94 = ""
  loc_9C4386: ExitProcHresult
End Sub

Private Function FeenAcpaMsk_UnknownEvent_8(arg_C) 'ABDC44
  'Data Table: 48BC64
  loc_ABDB4C: FLdPr Me
  loc_ABDB4F: VCallAd Control_ID_FeenAcpaMsk
  loc_ABDB52: FStAdFunc var_88
  loc_ABDB55: FLdPr var_88
  loc_ABDB58: LateIdLdVar var_98 DispID_13 -32767
  loc_ABDB5F: CBoolVar
  loc_ABDB61: LitI2_Byte &HFF
  loc_ABDB63: EqI2
  loc_ABDB64: FFree1Ad var_88
  loc_ABDB67: FFree1Var var_98 = ""
  loc_ABDB6A: BranchF loc_ABDC42
  loc_ABDB6D: LitVarStr var_A8, vbNullString
  loc_ABDB72: PopAdLdVar
  loc_ABDB73: FLdPr Me
  loc_ABDB76: VCallAd Control_ID_FeenAcpaMsk
  loc_ABDB79: FStAdFunc var_88
  loc_ABDB7C: FLdPr var_88
  loc_ABDB7F: LateIdSt
  loc_ABDB84: FFree1Ad var_88
  loc_ABDB87: FLdPr Me
  loc_ABDB8A: VCallAd Control_ID_FeenAcpaMsk
  loc_ABDB8D: FStAdFunc var_88
  loc_ABDB90: FLdPr var_88
  loc_ABDB93: LateIdLdVar var_98 DispID_22 0
  loc_ABDB9A: CStrVarTmp
  loc_ABDB9B: FStStrNoPop var_BC
  loc_ABDB9E: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_ABDBA3: FStStrNoPop var_C0
  loc_ABDBA6: FLdPr Me
  loc_ABDBA9: MemStStrCopy
  loc_ABDBAD: FFreeStr var_BC = ""
  loc_ABDBB4: FFree1Ad var_88
  loc_ABDBB7: FFree1Var var_98 = ""
  loc_ABDBBA: LitVarStr var_A8, "##/##/####"
  loc_ABDBBF: PopAdLdVar
  loc_ABDBC0: FLdPr Me
  loc_ABDBC3: VCallAd Control_ID_FeenAcpaMsk
  loc_ABDBC6: FStAdFunc var_88
  loc_ABDBC9: FLdPr var_88
  loc_ABDBCC: LateIdSt
  loc_ABDBD1: FFree1Ad var_88
  loc_ABDBD4: LitVarI2 var_A8, 10
  loc_ABDBD9: PopAdLdVar
  loc_ABDBDA: FLdPr Me
  loc_ABDBDD: VCallAd Control_ID_FeenAcpaMsk
  loc_ABDBE0: FStAdFunc var_88
  loc_ABDBE3: FLdPr var_88
  loc_ABDBE6: LateIdSt
  loc_ABDBEB: FFree1Ad var_88
  loc_ABDBEE: FLdPr Me
  loc_ABDBF1: MemLdStr global_64
  loc_ABDBF4: LitStr vbNullString
  loc_ABDBF7: NeStr
  loc_ABDBF9: BranchF loc_ABDC42
  loc_ABDBFC: FLdPr Me
  loc_ABDBFF: MemLdStr global_64
  loc_ABDC02: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABDC07: LitI2_Byte 0
  loc_ABDC09: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABDC0E: CStrDate
  loc_ABDC10: CVarStr var_98
  loc_ABDC13: PopAdLdVar
  loc_ABDC14: FLdPr Me
  loc_ABDC17: VCallAd Control_ID_FeenAcpaMsk
  loc_ABDC1A: FStAdFunc var_88
  loc_ABDC1D: FLdPr var_88
  loc_ABDC20: LateIdSt
  loc_ABDC25: FFree1Ad var_88
  loc_ABDC28: FFree1Var var_98 = ""
  loc_ABDC2B: FLdPr Me
  loc_ABDC2E: VCallAd Control_ID_FeenAcpaMsk
  loc_ABDC31: CVarAd
  loc_ABDC35: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABDC3A: FFree1Var var_98 = ""
  loc_ABDC3D: LitI2_Byte &HFF
  loc_ABDC3F: IStI2 arg_C
  loc_ABDC42: ExitProcHresult
End Function

Private Sub cmdCancelar_Click() 'ACEBB0
  'Data Table: 48BC64
  loc_ACEAA0: LitI2_Byte 0
  loc_ACEAA2: FLdPr Me
  loc_ACEAA5: MemStI2 global_60
  loc_ACEAA8: LitI2_Byte 0
  loc_ACEAAA: ILdRf Me
  loc_ACEAAD: CastAd
  loc_ACEAB0: FStAdFunc var_88
  loc_ACEAB3: FLdRfVar var_88
  loc_ACEAB6: ImpAdCallFPR4  = Proc_272_3_B44A88()
  loc_ACEABB: FFree1Ad var_88
  loc_ACEABE: LitI4 0
  loc_ACEAC3: LitI4 0
  loc_ACEAC8: FLdRfVar var_8C
  loc_ACEACB: Redim
  loc_ACEAD5: FLdPr Me
  loc_ACEAD8: VCallAd Control_ID_dgdABMS
  loc_ACEADB: CVarAd
  loc_ACEADF: ParmAry1St
  loc_ACEAE5: FLdRfVar var_8C
  loc_ACEAE8: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ACEAED: FLdRfVar var_8C
  loc_ACEAF0: Erase
  loc_ACEAF1: Call EnlazaTodo()
  loc_ACEAF6: ILdRf Me
  loc_ACEAF9: CastAd
  loc_ACEAFC: FStAdFunc var_88
  loc_ACEAFF: FLdRfVar var_88
  loc_ACEB02: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_ACEB07: FFree1Ad var_88
  loc_ACEB0A: FLdPr Me
  loc_ACEB0D: VCallAd Control_ID_FeenAcpaMsk
  loc_ACEB10: FStAdFunc var_88
  loc_ACEB13: FLdPr var_88
  loc_ACEB16: LateIdLdVar var_9C DispID_15 0
  loc_ACEB1D: CStrVarTmp
  loc_ACEB1E: CVarStr var_AC
  loc_ACEB21: ImpAdCallI2 IsDate()
  loc_ACEB26: FLdRfVar var_B4
  loc_ACEB29: FLdPr Me
  loc_ACEB2C: VCallAd Control_ID_NumeAcpaTxt
  loc_ACEB2F: FStAdFunc var_B0
  loc_ACEB32: FLdPr var_B0
  loc_ACEB35:  = Me.Text
  loc_ACEB3A: FLdZeroAd var_B4
  loc_ACEB3D: CVarStr var_C4
  loc_ACEB40: ImpAdCallI2 IsNumeric()
  loc_ACEB45: AndI4
  loc_ACEB46: FFreeAd var_88 = ""
  loc_ACEB4D: FFreeVar var_9C = "": var_AC = ""
  loc_ACEB56: BranchF loc_ACEBAD
  loc_ACEB59: FLdPr Me
  loc_ACEB5C: VCallAd Control_ID_FeenAcpaMsk
  loc_ACEB5F: FStAdFunc var_88
  loc_ACEB62: FLdPr var_88
  loc_ACEB65: LateIdLdVar var_9C DispID_15 0
  loc_ACEB6C: PopAd
  loc_ACEB6E: FLdRfVar var_B4
  loc_ACEB71: FLdPr Me
  loc_ACEB74: VCallAd Control_ID_NumeAcpaTxt
  loc_ACEB77: FStAdFunc var_B0
  loc_ACEB7A: FLdPr var_B0
  loc_ACEB7D:  = Me.Text
  loc_ACEB82: ILdRf var_B4
  loc_ACEB85: CI2Str
  loc_ACEB87: FLdRfVar var_9C
  loc_ACEB8A: CStrVarTmp
  loc_ACEB8B: FStStrNoPop var_C8
  loc_ACEB8E: FLdPr Me
  loc_ACEB91: MemLdRfVar from_stack_1.global_52
  loc_ACEB94: NewIfNullPr clsacrepago
  loc_ACEB97: Call clsacrepago.Encontrar(from_stack_1v, from_stack_2v)
  loc_ACEB9C: FFreeStr var_C8 = ""
  loc_ACEBA3: FFreeAd var_88 = ""
  loc_ACEBAA: FFree1Var var_9C = ""
  loc_ACEBAD: ExitProcHresult
End Sub

Private Sub FeenAcpaCmd_Click() 'A50B74
  'Data Table: 48BC64
  loc_A50B20: LitVar_Missing var_A4
  loc_A50B23: PopAdLdVar
  loc_A50B24: LitVarI4
  loc_A50B2C: PopAdLdVar
  loc_A50B2D: ImpAdLdRf MemVar_D930A4
  loc_A50B30: NewIfNullPr frmCalendario
  loc_A50B33: frmCalendario.Show from_stack_1, from_stack_2
  loc_A50B38: ImpAdLdI4 MemVar_D93028
  loc_A50B3B: LitStr vbNullString
  loc_A50B3E: NeStr
  loc_A50B40: BranchF loc_A50B5E
  loc_A50B43: ImpAdLdRf MemVar_D93028
  loc_A50B46: CDargRef
  loc_A50B4A: FLdPr Me
  loc_A50B4D: VCallAd Control_ID_FeenAcpaMsk
  loc_A50B50: FStAdFunc var_A8
  loc_A50B53: FLdPr var_A8
  loc_A50B56: LateIdSt
  loc_A50B5B: FFree1Ad var_A8
  loc_A50B5E: FLdPr Me
  loc_A50B61: VCallAd Control_ID_FeenAcpaMsk
  loc_A50B64: CVarAd
  loc_A50B68: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A50B6D: FFree1Var var_B8 = ""
  loc_A50B70: ExitProcHresult
End Sub

Private Sub FepaAcpaCmd_Click() 'A50C8C
  'Data Table: 48BC64
  loc_A50C38: LitVar_Missing var_A4
  loc_A50C3B: PopAdLdVar
  loc_A50C3C: LitVarI4
  loc_A50C44: PopAdLdVar
  loc_A50C45: ImpAdLdRf MemVar_D930A4
  loc_A50C48: NewIfNullPr frmCalendario
  loc_A50C4B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A50C50: ImpAdLdI4 MemVar_D93028
  loc_A50C53: LitStr vbNullString
  loc_A50C56: NeStr
  loc_A50C58: BranchF loc_A50C76
  loc_A50C5B: ImpAdLdRf MemVar_D93028
  loc_A50C5E: CDargRef
  loc_A50C62: FLdPr Me
  loc_A50C65: VCallAd Control_ID_FepaAcpaMsk
  loc_A50C68: FStAdFunc var_A8
  loc_A50C6B: FLdPr var_A8
  loc_A50C6E: LateIdSt
  loc_A50C73: FFree1Ad var_A8
  loc_A50C76: FLdPr Me
  loc_A50C79: VCallAd Control_ID_FepaAcpaMsk
  loc_A50C7C: CVarAd
  loc_A50C80: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A50C85: FFree1Var var_B8 = ""
  loc_A50C88: ExitProcHresult
End Sub

Private Sub CodiEnreCmd_Click() 'A820F8
  'Data Table: 48BC64
  loc_A8206C: LitVar_Missing var_A4
  loc_A8206F: PopAdLdVar
  loc_A82070: LitVarI4
  loc_A82078: PopAdLdVar
  loc_A82079: ImpAdLdRf MemVar_D941EC
  loc_A8207C: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8207F: dlgBuscarEnteRecaudador.Show from_stack_1, from_stack_2
  loc_A82084: FLdRfVar var_AA
  loc_A82087: FLdRfVar var_A8
  loc_A8208A: ImpAdLdRf MemVar_D941EC
  loc_A8208D: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A82090: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A82095: FLdPr var_A8
  loc_A82098: from_stack_1 = clsentereca.CodiEnre
  loc_A8209D: FLdI2 var_AA
  loc_A820A0: CStrUI1
  loc_A820A2: FStStrNoPop var_B0
  loc_A820A5: FLdPr Me
  loc_A820A8: VCallAd Control_ID_CodiEnreTxt
  loc_A820AB: FStAdFunc var_B4
  loc_A820AE: FLdPr var_B4
  loc_A820B1: Me.Text = from_stack_1
  loc_A820B6: FFree1Str var_B0
  loc_A820B9: FFreeAd var_A8 = ""
  loc_A820C0: FLdRfVar var_B0
  loc_A820C3: FLdRfVar var_A8
  loc_A820C6: ImpAdLdRf MemVar_D941EC
  loc_A820C9: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A820CC: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A820D1: FLdPr var_A8
  loc_A820D4: from_stack_1 = clsentereca.DetaEnre
  loc_A820D9: ILdRf var_B0
  loc_A820DC: FLdPr Me
  loc_A820DF: VCallAd Control_ID_DetaEnreLbl
  loc_A820E2: FStAdFunc var_B4
  loc_A820E5: FLdPr var_B4
  loc_A820E8: Me.Caption = from_stack_1
  loc_A820ED: FFree1Str var_B0
  loc_A820F0: FFreeAd var_A8 = ""
  loc_A820F7: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A66568
  'Data Table: 48BC64
  loc_A6650C: FLdRfVar var_B4
  loc_A6650F: FLdRfVar var_B0
  loc_A66512: FLdI2 ColIndex
  loc_A66515: CVarI2 var_A8
  loc_A66518: PopAdLdVar
  loc_A66519: FLdPr Me
  loc_A6651C: VCallAd Control_ID_dgdABMS
  loc_A6651F: FStAdFunc var_88
  loc_A66522: FLdPr var_88
  loc_A66525: LateIdLdVar var_98 DispID_105 0
  loc_A6652C: CastAdVar Me
  loc_A66530: FStAdFunc var_AC
  loc_A66533: FLdPr var_AC
  loc_A66536: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A6653B: FLdPr var_B0
  loc_A6653E:  = Me.DataField
  loc_A66543: FLdZeroAd var_B4
  loc_A66546: PopTmpLdAdStr
  loc_A6654A: FLdPr Me
  loc_A6654D: MemLdRfVar from_stack_1.global_52
  loc_A66550: NewIfNullPr clsacrepago
  loc_A66553: Call clsacrepago.Sort(from_stack_1v)
  loc_A66558: FFree1Str var_B8
  loc_A6655B: FFreeAd var_88 = "": var_AC = ""
  loc_A66564: FFree1Var var_98 = ""
  loc_A66567: ExitProcHresult
End Sub

Private Sub FepaAcpaMsk_UnknownEvent_0 '9C42B0
  'Data Table: 48BC64
  loc_9C429C: FLdPr Me
  loc_9C429F: VCallAd Control_ID_FepaAcpaMsk
  loc_9C42A2: CVarAd
  loc_9C42A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C42AB: FFree1Var var_94 = ""
  loc_9C42AE: ExitProcHresult
End Sub

Private Sub FepaAcpaMsk_UnknownEvent_8 'ABDB0C
  'Data Table: 48BC64
  loc_ABDA14: FLdPr Me
  loc_ABDA17: VCallAd Control_ID_FepaAcpaMsk
  loc_ABDA1A: FStAdFunc var_88
  loc_ABDA1D: FLdPr var_88
  loc_ABDA20: LateIdLdVar var_98 DispID_13 -32767
  loc_ABDA27: CBoolVar
  loc_ABDA29: LitI2_Byte &HFF
  loc_ABDA2B: EqI2
  loc_ABDA2C: FFree1Ad var_88
  loc_ABDA2F: FFree1Var var_98 = ""
  loc_ABDA32: BranchF loc_ABDB0A
  loc_ABDA35: LitVarStr var_A8, vbNullString
  loc_ABDA3A: PopAdLdVar
  loc_ABDA3B: FLdPr Me
  loc_ABDA3E: VCallAd Control_ID_FepaAcpaMsk
  loc_ABDA41: FStAdFunc var_88
  loc_ABDA44: FLdPr var_88
  loc_ABDA47: LateIdSt
  loc_ABDA4C: FFree1Ad var_88
  loc_ABDA4F: FLdPr Me
  loc_ABDA52: VCallAd Control_ID_FepaAcpaMsk
  loc_ABDA55: FStAdFunc var_88
  loc_ABDA58: FLdPr var_88
  loc_ABDA5B: LateIdLdVar var_98 DispID_22 0
  loc_ABDA62: CStrVarTmp
  loc_ABDA63: FStStrNoPop var_BC
  loc_ABDA66: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_ABDA6B: FStStrNoPop var_C0
  loc_ABDA6E: FLdPr Me
  loc_ABDA71: MemStStrCopy
  loc_ABDA75: FFreeStr var_BC = ""
  loc_ABDA7C: FFree1Ad var_88
  loc_ABDA7F: FFree1Var var_98 = ""
  loc_ABDA82: LitVarStr var_A8, "##/##/####"
  loc_ABDA87: PopAdLdVar
  loc_ABDA88: FLdPr Me
  loc_ABDA8B: VCallAd Control_ID_FepaAcpaMsk
  loc_ABDA8E: FStAdFunc var_88
  loc_ABDA91: FLdPr var_88
  loc_ABDA94: LateIdSt
  loc_ABDA99: FFree1Ad var_88
  loc_ABDA9C: LitVarI2 var_A8, 10
  loc_ABDAA1: PopAdLdVar
  loc_ABDAA2: FLdPr Me
  loc_ABDAA5: VCallAd Control_ID_FepaAcpaMsk
  loc_ABDAA8: FStAdFunc var_88
  loc_ABDAAB: FLdPr var_88
  loc_ABDAAE: LateIdSt
  loc_ABDAB3: FFree1Ad var_88
  loc_ABDAB6: FLdPr Me
  loc_ABDAB9: MemLdStr global_64
  loc_ABDABC: LitStr vbNullString
  loc_ABDABF: NeStr
  loc_ABDAC1: BranchF loc_ABDB0A
  loc_ABDAC4: FLdPr Me
  loc_ABDAC7: MemLdStr global_64
  loc_ABDACA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABDACF: LitI2_Byte 0
  loc_ABDAD1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABDAD6: CStrDate
  loc_ABDAD8: CVarStr var_98
  loc_ABDADB: PopAdLdVar
  loc_ABDADC: FLdPr Me
  loc_ABDADF: VCallAd Control_ID_FepaAcpaMsk
  loc_ABDAE2: FStAdFunc var_88
  loc_ABDAE5: FLdPr var_88
  loc_ABDAE8: LateIdSt
  loc_ABDAED: FFree1Ad var_88
  loc_ABDAF0: FFree1Var var_98 = ""
  loc_ABDAF3: FLdPr Me
  loc_ABDAF6: VCallAd Control_ID_FepaAcpaMsk
  loc_ABDAF9: CVarAd
  loc_ABDAFD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABDB02: FFree1Var var_98 = ""
  loc_ABDB05: LitI2_Byte &HFF
  loc_ABDB07: IStI2 ColIndex
  loc_ABDB0A: ExitProcHresult
End Sub

Private Sub CodiEnreTxt_GotFocus() '9C43D0
  'Data Table: 48BC64
  loc_9C43BC: FLdPr Me
  loc_9C43BF: VCallAd Control_ID_CodiEnreTxt
  loc_9C43C2: CVarAd
  loc_9C43C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C43CB: FFree1Var var_94 = ""
  loc_9C43CE: ExitProcHresult
End Sub

Private Sub CodiEnreTxt_KeyPress(KeyAscii As Integer) '9CE4E4
  'Data Table: 48BC64
  loc_9CE4CC: LitStr "0123456789"
  loc_9CE4CF: FStStrCopy var_88
  loc_9CE4D2: FLdRfVar var_88
  loc_9CE4D5: ILdRf KeyAscii
  loc_9CE4D8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CE4DD: IStI2 KeyAscii
  loc_9CE4E0: FFree1Str var_88
  loc_9CE4E3: ExitProcHresult
End Sub

Private Sub CodiEnreTxt_Validate(Cancel As Boolean) 'ACC610
  'Data Table: 48BC64
  loc_ACC4F4: FLdRfVar var_8A
  loc_ACC4F7: FLdPr Me
  loc_ACC4FA: VCallAd Control_ID_CodiEnreTxt
  loc_ACC4FD: FStAdFunc var_88
  loc_ACC500: FLdPr var_88
  loc_ACC503:  = Me.Enabled
  loc_ACC508: FLdI2 var_8A
  loc_ACC50B: FFree1Ad var_88
  loc_ACC50E: BranchF loc_ACC60C
  loc_ACC511: FLdRfVar var_90
  loc_ACC514: FLdPr Me
  loc_ACC517: VCallAd Control_ID_CodiEnreTxt
  loc_ACC51A: FStAdFunc var_88
  loc_ACC51D: FLdPr var_88
  loc_ACC520:  = Me.Text
  loc_ACC525: FLdZeroAd var_90
  loc_ACC528: CVarStr var_A0
  loc_ACC52B: ImpAdCallI2 IsNumeric()
  loc_ACC530: NotI4
  loc_ACC531: FFree1Ad var_88
  loc_ACC534: FFree1Var var_A0 = ""
  loc_ACC537: BranchF loc_ACC551
  loc_ACC53A: LitStr "0"
  loc_ACC53D: FLdPr Me
  loc_ACC540: VCallAd Control_ID_CodiEnreTxt
  loc_ACC543: FStAdFunc var_88
  loc_ACC546: FLdPr var_88
  loc_ACC549: Me.Text = from_stack_1
  loc_ACC54E: FFree1Ad var_88
  loc_ACC551: FLdRfVar var_90
  loc_ACC554: FLdPr Me
  loc_ACC557: VCallAd Control_ID_CodiEnreTxt
  loc_ACC55A: FStAdFunc var_88
  loc_ACC55D: FLdPr var_88
  loc_ACC560:  = Me.Text
  loc_ACC565: ILdRf var_90
  loc_ACC568: ImpAdCallI2 Proc_18_39_A5661C()
  loc_ACC56D: FStStrNoPop var_A4
  loc_ACC570: FLdPr Me
  loc_ACC573: MemStStrCopy
  loc_ACC577: FFreeStr var_90 = ""
  loc_ACC57E: FFree1Ad var_88
  loc_ACC581: FLdPr Me
  loc_ACC584: MemLdStr global_64
  loc_ACC587: LitStr vbNullString
  loc_ACC58A: NeStr
  loc_ACC58C: BranchF loc_ACC5CC
  loc_ACC58F: FLdPr Me
  loc_ACC592: MemLdStr global_64
  loc_ACC595: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACC59A: LitStr vbNullString
  loc_ACC59D: FLdPr Me
  loc_ACC5A0: VCallAd Control_ID_DetaEnreLbl
  loc_ACC5A3: FStAdFunc var_88
  loc_ACC5A6: FLdPr var_88
  loc_ACC5A9: Me.Caption = from_stack_1
  loc_ACC5AE: FFree1Ad var_88
  loc_ACC5B1: FLdPr Me
  loc_ACC5B4: VCallAd Control_ID_CodiEnreTxt
  loc_ACC5B7: CVarAd
  loc_ACC5BB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACC5C0: FFree1Var var_A0 = ""
  loc_ACC5C3: LitI2_Byte &HFF
  loc_ACC5C5: IStI2 Cancel
  loc_ACC5C8: ExitProcHresult
  loc_ACC5C9: Branch loc_ACC60C
  loc_ACC5CC: FLdRfVar var_90
  loc_ACC5CF: FLdPr Me
  loc_ACC5D2: VCallAd Control_ID_CodiEnreTxt
  loc_ACC5D5: FStAdFunc var_88
  loc_ACC5D8: FLdPr var_88
  loc_ACC5DB:  = Me.Text
  loc_ACC5E0: ILdRf var_90
  loc_ACC5E3: CI2Str
  loc_ACC5E5: ImpAdCallI2 Proc_270_42_A7BB98()
  loc_ACC5EA: FStStrNoPop var_A4
  loc_ACC5ED: FLdPr Me
  loc_ACC5F0: VCallAd Control_ID_DetaEnreLbl
  loc_ACC5F3: FStAdFunc var_A8
  loc_ACC5F6: FLdPr var_A8
  loc_ACC5F9: Me.Caption = from_stack_1
  loc_ACC5FE: FFreeStr var_90 = ""
  loc_ACC605: FFreeAd var_88 = ""
  loc_ACC60C: ExitProcHresult
End Sub

Private Sub Form_Load() 'AEB5A0
  'Data Table: 48BC64
  loc_AEB424: LitI2_Byte 0
  loc_AEB426: CR8I2
  loc_AEB427: PopFPR4
  loc_AEB428: FLdPr Me
  loc_AEB42B: Me.Left = from_stack_1s
  loc_AEB430: LitI2_Byte 0
  loc_AEB432: CR8I2
  loc_AEB433: PopFPR4
  loc_AEB434: FLdPr Me
  loc_AEB437: Me.Top = from_stack_1s
  loc_AEB43C: LitStr "SELECT FeenAcpa, acrepago.NumeAcpa, FealAcpa, FeacAcpa, FepaAcpa, acrepago.CodiEnre, DetaEnre, ActuAcpa, TocoAcpa, ImpoAcpa, NoarAcpa, acrepago.CodiUsua FROM acrepago"
  loc_AEB43F: LitStr " LEFT JOIN infogov.entereca ON acrepago.CodiEnre = infogov.entereca.CodiEnre"
  loc_AEB442: ConcatStr
  loc_AEB443: FStStrNoPop var_88
  loc_AEB446: LitStr " WHERE ActuAcpa = 'No' "
  loc_AEB449: ConcatStr
  loc_AEB44A: FStStrNoPop var_8C
  loc_AEB44D: LitStr " ORDER BY FeenAcpa, NumeAcpa"
  loc_AEB450: ConcatStr
  loc_AEB451: FStStrNoPop var_90
  loc_AEB454: FLdPr Me
  loc_AEB457: MemLdRfVar from_stack_1.global_52
  loc_AEB45A: NewIfNullPr clsacrepago
  loc_AEB45D: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_AEB462: FFreeStr var_88 = "": var_8C = ""
  loc_AEB46B: LitVarStr var_A0, "FeenAcpa"
  loc_AEB470: PopAdLdVar
  loc_AEB471: FLdPr Me
  loc_AEB474: VCallAd Control_ID_FeenAcpaMsk
  loc_AEB477: FStAdFunc var_B4
  loc_AEB47A: FLdPr var_B4
  loc_AEB47D: LateIdSt
  loc_AEB482: FFree1Ad var_B4
  loc_AEB485: LitStr "NumeAcpa"
  loc_AEB488: FLdPr Me
  loc_AEB48B: VCallAd Control_ID_NumeAcpaTxt
  loc_AEB48E: FStAdFunc var_B4
  loc_AEB491: FLdPr var_B4
  loc_AEB494: Me.DataField = from_stack_1
  loc_AEB499: FFree1Ad var_B4
  loc_AEB49C: LitVarStr var_A0, "FepaAcpa"
  loc_AEB4A1: PopAdLdVar
  loc_AEB4A2: FLdPr Me
  loc_AEB4A5: VCallAd Control_ID_FepaAcpaMsk
  loc_AEB4A8: FStAdFunc var_B4
  loc_AEB4AB: FLdPr var_B4
  loc_AEB4AE: LateIdSt
  loc_AEB4B3: FFree1Ad var_B4
  loc_AEB4B6: LitStr "CodiEnre"
  loc_AEB4B9: FLdPr Me
  loc_AEB4BC: VCallAd Control_ID_CodiEnreTxt
  loc_AEB4BF: FStAdFunc var_B4
  loc_AEB4C2: FLdPr var_B4
  loc_AEB4C5: Me.DataField = from_stack_1
  loc_AEB4CA: FFree1Ad var_B4
  loc_AEB4CD: LitStr "DetaEnre"
  loc_AEB4D0: FLdPr Me
  loc_AEB4D3: VCallAd Control_ID_DetaEnreLbl
  loc_AEB4D6: FStAdFunc var_B4
  loc_AEB4D9: FLdPr var_B4
  loc_AEB4DC: Me.DataField = from_stack_1
  loc_AEB4E1: FFree1Ad var_B4
  loc_AEB4E4: LitStr "TocoAcpa"
  loc_AEB4E7: FLdPr Me
  loc_AEB4EA: VCallAd Control_ID_TocoAcpaTxt
  loc_AEB4ED: FStAdFunc var_B4
  loc_AEB4F0: FLdPr var_B4
  loc_AEB4F3: Me.DataField = from_stack_1
  loc_AEB4F8: FFree1Ad var_B4
  loc_AEB4FB: LitStr "ImpoAcpa"
  loc_AEB4FE: FLdPr Me
  loc_AEB501: VCallAd Control_ID_ImpoAcpaTxt
  loc_AEB504: FStAdFunc var_B4
  loc_AEB507: FLdPr var_B4
  loc_AEB50A: Me.DataField = from_stack_1
  loc_AEB50F: FFree1Ad var_B4
  loc_AEB512: LitI4 0
  loc_AEB517: LitI4 1
  loc_AEB51C: FLdRfVar var_B8
  loc_AEB51F: Redim
  loc_AEB529: FLdPr Me
  loc_AEB52C: MemLdRfVar from_stack_1.global_52
  loc_AEB52F: NewIfNullAd
  loc_AEB532: FStAd var_B4 
  loc_AEB536: FLdRfVar var_B4
  loc_AEB539: CVarRef
  loc_AEB53E: ParmAry1St
  loc_AEB544: FLdPr Me
  loc_AEB547: VCallAd Control_ID_dgdABMS
  loc_AEB54A: CVarAd
  loc_AEB54E: ParmAry1St
  loc_AEB554: FLdRfVar var_B8
  loc_AEB557: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AEB55C: ILdRf var_B4
  loc_AEB55F: CastAd
  loc_AEB562: FLdPr Me
  loc_AEB565: MemStAdFunc
  loc_AEB569: FLdRfVar var_B8
  loc_AEB56C: Erase
  loc_AEB56D: FFree1Ad var_B4
  loc_AEB570: Call EnlazaTodo()
  loc_AEB575: ILdRf Me
  loc_AEB578: CastAd
  loc_AEB57B: FStAdFunc var_B4
  loc_AEB57E: FLdRfVar var_B4
  loc_AEB581: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_AEB586: FFree1Ad var_B4
  loc_AEB589: LitI2_Byte 0
  loc_AEB58B: ILdRf Me
  loc_AEB58E: CastAd
  loc_AEB591: FStAdFunc var_B4
  loc_AEB594: FLdRfVar var_B4
  loc_AEB597: ImpAdCallFPR4  = Proc_272_3_B44A88()
  loc_AEB59C: FFree1Ad var_B4
  loc_AEB59F: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A629E0
  'Data Table: 48BC64
  loc_A62984: FLdRfVar var_C2
  loc_A62987: FLdRfVar var_C0
  loc_A6298A: LitVarI2 var_B8, 1
  loc_A6298F: FLdPr Me
  loc_A62992: VCallAd Control_ID_tlbABMS
  loc_A62995: FStAdFunc var_88
  loc_A62998: FLdPr var_88
  loc_A6299B: LateIdLdVar var_98 DispID_3 0
  loc_A629A2: CastAdVar Me
  loc_A629A6: FStAdFunc var_BC
  loc_A629A9: FLdPr var_BC
  loc_A629AC:  = Me.Buttons.ControlDefault
  loc_A629B1: FLdPr var_C0
  loc_A629B4:  = Me.Enabled
  loc_A629B9: FLdI2 var_C2
  loc_A629BC: FFreeAd var_88 = "": var_BC = ""
  loc_A629C5: FFreeVar var_98 = ""
  loc_A629CC: BranchF loc_A629DD
  loc_A629CF: FLdPr Me
  loc_A629D2: MemLdRfVar from_stack_1.global_52
  loc_A629D5: NewIfNullPr clsacrepago
  loc_A629D8: Call clsacrepago.Requery()
  loc_A629DD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9CE614
  'Data Table: 48BC64
  loc_9CE5FC: ILdI2 KeyCode
  loc_9CE5FF: ILdRf Me
  loc_9CE602: CastAd
  loc_9CE605: FStAdFunc var_88
  loc_9CE608: FLdRfVar var_88
  loc_9CE60B: ImpAdCallFPR4  = Proc_272_5_B525D4()
  loc_9CE610: FFree1Ad var_88
  loc_9CE613: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B5C424
  'Data Table: 48BC64
  loc_B5C048: ILdRf Button
  loc_B5C04B: FStAd var_88 
  loc_B5C04F: FLdRfVar var_8C
  loc_B5C052: FLdPr var_88
  loc_B5C055:  = Me.Key
  loc_B5C05A: FLdZeroAd var_8C
  loc_B5C05D: FStStr var_90
  loc_B5C060: ILdRf var_90
  loc_B5C063: LitStr "btnCrear"
  loc_B5C066: EqStr
  loc_B5C068: BranchF loc_B5C06E
  loc_B5C06B: Branch loc_B5C421
  loc_B5C06E: ILdRf var_90
  loc_B5C071: LitStr "btnModificar"
  loc_B5C074: EqStr
  loc_B5C076: BranchF loc_B5C1C9
  loc_B5C079: FLdRfVar var_94
  loc_B5C07C: FLdPr Me
  loc_B5C07F: MemLdRfVar from_stack_1.global_52
  loc_B5C082: NewIfNullPr clsacrepago
  loc_B5C085: from_stack_1 = clsacrepago.RecordCount
  loc_B5C08A: ILdRf var_94
  loc_B5C08D: LitI4 0
  loc_B5C092: GtI4
  loc_B5C093: BranchF loc_B5C1C6
  loc_B5C096: FLdRfVar var_8C
  loc_B5C099: FLdPr Me
  loc_B5C09C: MemLdRfVar from_stack_1.global_52
  loc_B5C09F: NewIfNullPr clsacrepago
  loc_B5C0A2: from_stack_1 = clsacrepago.ActuAcpa
  loc_B5C0A7: ILdRf var_8C
  loc_B5C0AA: LitStr "No"
  loc_B5C0AD: EqStr
  loc_B5C0AF: FFree1Str var_8C
  loc_B5C0B2: BranchF loc_B5C1BE
  loc_B5C0B5: LitI2_Byte 2
  loc_B5C0B7: FLdPr Me
  loc_B5C0BA: MemStI2 global_60
  loc_B5C0BD: ILdRf Me
  loc_B5C0C0: CastAd
  loc_B5C0C3: FStAdFunc var_98
  loc_B5C0C6: FLdRfVar var_98
  loc_B5C0C9: ImpAdCallFPR4  = Proc_272_4_B2D678()
  loc_B5C0CE: FFree1Ad var_98
  loc_B5C0D1: LitI4 0
  loc_B5C0D6: LitI4 0
  loc_B5C0DB: FLdRfVar var_9C
  loc_B5C0DE: Redim
  loc_B5C0E8: FLdPr Me
  loc_B5C0EB: VCallAd Control_ID_dgdABMS
  loc_B5C0EE: CVarAd
  loc_B5C0F2: ParmAry1St
  loc_B5C0F8: FLdRfVar var_9C
  loc_B5C0FB: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B5C100: FLdRfVar var_9C
  loc_B5C103: Erase
  loc_B5C104: ILdRf Me
  loc_B5C107: CastAd
  loc_B5C10A: FStAdFunc var_98
  loc_B5C10D: FLdRfVar var_98
  loc_B5C110: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_B5C115: FFree1Ad var_98
  loc_B5C118: LitI4 0
  loc_B5C11D: LitI4 7
  loc_B5C122: FLdRfVar var_9C
  loc_B5C125: Redim
  loc_B5C12F: FLdPr Me
  loc_B5C132: VCallAd Control_ID_FeenAcpaMsk
  loc_B5C135: CVarAd
  loc_B5C139: ParmAry1St
  loc_B5C13F: FLdPr Me
  loc_B5C142: VCallAd Control_ID_FeenAcpaCmd
  loc_B5C145: CVarAd
  loc_B5C149: ParmAry1St
  loc_B5C14F: FLdPr Me
  loc_B5C152: VCallAd Control_ID_NumeAcpaTxt
  loc_B5C155: CVarAd
  loc_B5C159: ParmAry1St
  loc_B5C15F: FLdPr Me
  loc_B5C162: VCallAd Control_ID_FepaAcpaMsk
  loc_B5C165: CVarAd
  loc_B5C169: ParmAry1St
  loc_B5C16F: FLdPr Me
  loc_B5C172: VCallAd Control_ID_FepaAcpaCmd
  loc_B5C175: CVarAd
  loc_B5C179: ParmAry1St
  loc_B5C17F: FLdPr Me
  loc_B5C182: VCallAd Control_ID_CodiEnreTxt
  loc_B5C185: CVarAd
  loc_B5C189: ParmAry1St
  loc_B5C18F: FLdPr Me
  loc_B5C192: VCallAd Control_ID_CodiEnreCmd
  loc_B5C195: CVarAd
  loc_B5C199: ParmAry1St
  loc_B5C19F: FLdPr Me
  loc_B5C1A2: VCallAd Control_ID_DetaEnreLbl
  loc_B5C1A5: CVarAd
  loc_B5C1A9: ParmAry1St
  loc_B5C1AF: FLdRfVar var_9C
  loc_B5C1B2: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B5C1B7: FLdRfVar var_9C
  loc_B5C1BA: Erase
  loc_B5C1BB: Branch loc_B5C1C6
  loc_B5C1BE: LitStr "La caja se encuentra actualizada. No se puede modificar. Verifique..."
  loc_B5C1C1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5C1C6: Branch loc_B5C421
  loc_B5C1C9: ILdRf var_90
  loc_B5C1CC: LitStr "btnEliminar"
  loc_B5C1CF: EqStr
  loc_B5C1D1: BranchF loc_B5C1D7
  loc_B5C1D4: Branch loc_B5C421
  loc_B5C1D7: ILdRf var_90
  loc_B5C1DA: LitStr "btnGuardar"
  loc_B5C1DD: EqStr
  loc_B5C1DF: BranchF loc_B5C31D
  loc_B5C1E2: LitI2_Byte 0
  loc_B5C1E4: PopTmpLdAd2 var_11E
  loc_B5C1E7: from_stack_2v = FeenAcpaMsk_UnknownEvent_8(from_stack_1v)
  loc_B5C1EC: FLdPr Me
  loc_B5C1EF: MemLdStr global_64
  loc_B5C1F2: LitStr vbNullString
  loc_B5C1F5: NeStr
  loc_B5C1F7: BranchF loc_B5C1FB
  loc_B5C1FA: ExitProcHresult
  loc_B5C1FB: LitI2_Byte 0
  loc_B5C1FD: PopTmpLdAd2 var_11E
  loc_B5C200: Call NumeAcpaTxt_Validate(from_stack_1v)
  loc_B5C205: FLdPr Me
  loc_B5C208: MemLdStr global_64
  loc_B5C20B: LitStr vbNullString
  loc_B5C20E: NeStr
  loc_B5C210: BranchF loc_B5C214
  loc_B5C213: ExitProcHresult
  loc_B5C214: LitI2_Byte 0
  loc_B5C216: PopTmpLdAd2 var_11E
  loc_B5C219: Call FepaAcpaMsk_UnknownEvent_8()
  loc_B5C21E: FLdPr Me
  loc_B5C221: MemLdStr global_64
  loc_B5C224: LitStr vbNullString
  loc_B5C227: NeStr
  loc_B5C229: BranchF loc_B5C22D
  loc_B5C22C: ExitProcHresult
  loc_B5C22D: LitI2_Byte 0
  loc_B5C22F: PopTmpLdAd2 var_11E
  loc_B5C232: Call CodiEnreTxt_Validate(from_stack_1v)
  loc_B5C237: FLdPr Me
  loc_B5C23A: MemLdStr global_64
  loc_B5C23D: LitStr vbNullString
  loc_B5C240: NeStr
  loc_B5C242: BranchF loc_B5C246
  loc_B5C245: ExitProcHresult
  loc_B5C246: FLdPr Me
  loc_B5C249: MemLdI2 global_60
  loc_B5C24C: FStI2 var_120
  loc_B5C24F: FLdI2 var_120
  loc_B5C252: LitI2_Byte 2
  loc_B5C254: EqI2
  loc_B5C255: BranchF loc_B5C315
  loc_B5C258: FLdRfVar var_AC
  loc_B5C25B: FLdPr Me
  loc_B5C25E: MemLdRfVar from_stack_1.global_52
  loc_B5C261: NewIfNullPr clsacrepago
  loc_B5C264: from_stack_1 = clsacrepago.FeenAcpa
  loc_B5C269: FLdRfVar var_11E
  loc_B5C26C: FLdPr Me
  loc_B5C26F: MemLdRfVar from_stack_1.global_52
  loc_B5C272: NewIfNullPr clsacrepago
  loc_B5C275: from_stack_1 = clsacrepago.NumeAcpa
  loc_B5C27A: FLdPr Me
  loc_B5C27D: VCallAd Control_ID_FeenAcpaMsk
  loc_B5C280: FStAdFunc var_98
  loc_B5C283: FLdPr var_98
  loc_B5C286: LateIdLdVar var_BC DispID_15 0
  loc_B5C28D: PopAd
  loc_B5C28F: FLdRfVar var_8C
  loc_B5C292: FLdPr Me
  loc_B5C295: VCallAd Control_ID_NumeAcpaTxt
  loc_B5C298: FStAdFunc var_124
  loc_B5C29B: FLdPr var_124
  loc_B5C29E:  = Me.Text
  loc_B5C2A3: FLdRfVar var_12C
  loc_B5C2A6: FLdPr Me
  loc_B5C2A9: VCallAd Control_ID_CodiEnreTxt
  loc_B5C2AC: FStAdFunc var_128
  loc_B5C2AF: FLdPr var_128
  loc_B5C2B2:  = Me.Text
  loc_B5C2B7: FLdPr Me
  loc_B5C2BA: VCallAd Control_ID_FepaAcpaMsk
  loc_B5C2BD: FStAdFunc var_130
  loc_B5C2C0: FLdPr var_130
  loc_B5C2C3: LateIdLdVar var_CC DispID_15 0
  loc_B5C2CA: CStrVarTmp
  loc_B5C2CB: CVarStr var_EC
  loc_B5C2CE: PopAdLdVar
  loc_B5C2CF: ILdRf var_12C
  loc_B5C2D2: CI2Str
  loc_B5C2D4: ILdRf var_8C
  loc_B5C2D7: CI2Str
  loc_B5C2D9: FLdRfVar var_BC
  loc_B5C2DC: CStrVarTmp
  loc_B5C2DD: CVarStr var_DC
  loc_B5C2E0: PopAdLdVar
  loc_B5C2E1: FLdI2 var_11E
  loc_B5C2E4: FLdVar var_AC
  loc_B5C2E8: FLdPr Me
  loc_B5C2EB: MemLdRfVar from_stack_1.global_56
  loc_B5C2EE: NewIfNullPr clspago
  loc_B5C2F1: Call clspago.ModificaBoletosIngresadosMasivos(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_B5C2F6: FFreeStr var_8C = ""
  loc_B5C2FD: FFreeAd var_98 = "": var_124 = "": var_128 = ""
  loc_B5C308: FFreeVar var_BC = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B5C315: Call cmdCancelar_Click()
  loc_B5C31A: Branch loc_B5C421
  loc_B5C31D: ILdRf var_90
  loc_B5C320: LitStr "btnCancelar"
  loc_B5C323: EqStr
  loc_B5C325: BranchF loc_B5C330
  loc_B5C328: Call cmdCancelar_Click()
  loc_B5C32D: Branch loc_B5C421
  loc_B5C330: ILdRf var_90
  loc_B5C333: LitStr "btnPrimero"
  loc_B5C336: EqStr
  loc_B5C338: BranchF loc_B5C34C
  loc_B5C33B: FLdPr Me
  loc_B5C33E: MemLdRfVar from_stack_1.global_52
  loc_B5C341: NewIfNullPr clsacrepago
  loc_B5C344: Call clsacrepago.MoveFirst()
  loc_B5C349: Branch loc_B5C421
  loc_B5C34C: ILdRf var_90
  loc_B5C34F: LitStr "btnAnterior"
  loc_B5C352: EqStr
  loc_B5C354: BranchF loc_B5C368
  loc_B5C357: FLdPr Me
  loc_B5C35A: MemLdRfVar from_stack_1.global_52
  loc_B5C35D: NewIfNullPr clsacrepago
  loc_B5C360: Call clsacrepago.MovePrevious()
  loc_B5C365: Branch loc_B5C421
  loc_B5C368: ILdRf var_90
  loc_B5C36B: LitStr "btnSiguiente"
  loc_B5C36E: EqStr
  loc_B5C370: BranchF loc_B5C384
  loc_B5C373: FLdPr Me
  loc_B5C376: MemLdRfVar from_stack_1.global_52
  loc_B5C379: NewIfNullPr clsacrepago
  loc_B5C37C: Call clsacrepago.MoveNext()
  loc_B5C381: Branch loc_B5C421
  loc_B5C384: ILdRf var_90
  loc_B5C387: LitStr "btnUltimo"
  loc_B5C38A: EqStr
  loc_B5C38C: BranchF loc_B5C3A0
  loc_B5C38F: FLdPr Me
  loc_B5C392: MemLdRfVar from_stack_1.global_52
  loc_B5C395: NewIfNullPr clsacrepago
  loc_B5C398: Call clsacrepago.MoveLast()
  loc_B5C39D: Branch loc_B5C421
  loc_B5C3A0: ILdRf var_90
  loc_B5C3A3: LitStr "btnFiltrar"
  loc_B5C3A6: EqStr
  loc_B5C3A8: BranchF loc_B5C3AE
  loc_B5C3AB: Branch loc_B5C421
  loc_B5C3AE: ILdRf var_90
  loc_B5C3B1: LitStr "btnBuscar"
  loc_B5C3B4: EqStr
  loc_B5C3B6: BranchF loc_B5C3BC
  loc_B5C3B9: Branch loc_B5C421
  loc_B5C3BC: ILdRf var_90
  loc_B5C3BF: LitStr "btnImprimir"
  loc_B5C3C2: EqStr
  loc_B5C3C4: BranchF loc_B5C3CA
  loc_B5C3C7: Branch loc_B5C421
  loc_B5C3CA: ILdRf var_90
  loc_B5C3CD: LitStr "btnAyuda"
  loc_B5C3D0: EqStr
  loc_B5C3D2: BranchF loc_B5C401
  loc_B5C3D5: LitVar_Missing var_DC
  loc_B5C3D8: LitVar_Missing var_CC
  loc_B5C3DB: LitVar_Missing var_BC
  loc_B5C3DE: LitI4 0
  loc_B5C3E3: LitVarStr var_140, "Opcion no disponible en esta version."
  loc_B5C3E8: FStVarCopyObj var_AC
  loc_B5C3EB: FLdRfVar var_AC
  loc_B5C3EE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B5C3F3: FFreeVar var_AC = "": var_BC = "": var_CC = ""
  loc_B5C3FE: Branch loc_B5C421
  loc_B5C401: ILdRf var_90
  loc_B5C404: LitStr "btnSalir"
  loc_B5C407: EqStr
  loc_B5C409: BranchF loc_B5C421
  loc_B5C40C: ILdRf Me
  loc_B5C40F: FStAdNoPop
  loc_B5C413: ImpAdLdRf MemVar_D9C5D8
  loc_B5C416: NewIfNullPr Global
  loc_B5C419: Global.Unload from_stack_1
  loc_B5C41E: FFree1Ad var_98
  loc_B5C421: ExitProcHresult
End Sub

Private Sub NumeAcpaTxt_GotFocus() '9C4340
  'Data Table: 48BC64
  loc_9C432C: FLdPr Me
  loc_9C432F: VCallAd Control_ID_NumeAcpaTxt
  loc_9C4332: CVarAd
  loc_9C4336: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C433B: FFree1Var var_94 = ""
  loc_9C433E: ExitProcHresult
End Sub

Private Sub NumeAcpaTxt_KeyPress(KeyAscii As Integer) '9CE7DC
  'Data Table: 48BC64
  loc_9CE7C4: LitStr "0123456789"
  loc_9CE7C7: FStStrCopy var_88
  loc_9CE7CA: FLdRfVar var_88
  loc_9CE7CD: ILdRf KeyAscii
  loc_9CE7D0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CE7D5: IStI2 KeyAscii
  loc_9CE7D8: FFree1Str var_88
  loc_9CE7DB: ExitProcHresult
End Sub

Private Sub NumeAcpaTxt_Validate(Cancel As Boolean) 'AE9ADC
  'Data Table: 48BC64
  loc_AE995C: FLdRfVar var_8A
  loc_AE995F: FLdPr Me
  loc_AE9962: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9965: FStAdFunc var_88
  loc_AE9968: FLdPr var_88
  loc_AE996B:  = Me.Enabled
  loc_AE9970: FLdI2 var_8A
  loc_AE9973: LitI2_Byte &HFF
  loc_AE9975: EqI2
  loc_AE9976: FFree1Ad var_88
  loc_AE9979: BranchF loc_AE9AD9
  loc_AE997C: FLdRfVar var_90
  loc_AE997F: FLdPr Me
  loc_AE9982: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9985: FStAdFunc var_88
  loc_AE9988: FLdPr var_88
  loc_AE998B:  = Me.Text
  loc_AE9990: LitI2_Byte 0
  loc_AE9992: LitI2_Byte 0
  loc_AE9994: ILdRf var_90
  loc_AE9997: LitStr "Numero de Grupo"
  loc_AE999A: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AE999F: FStStrNoPop var_94
  loc_AE99A2: FLdPr Me
  loc_AE99A5: MemStStrCopy
  loc_AE99A9: FFreeStr var_90 = ""
  loc_AE99B0: FFree1Ad var_88
  loc_AE99B3: FLdPr Me
  loc_AE99B6: MemLdStr global_64
  loc_AE99B9: LitStr vbNullString
  loc_AE99BC: NeStr
  loc_AE99BE: BranchF loc_AE99E4
  loc_AE99C1: FLdPr Me
  loc_AE99C4: MemLdStr global_64
  loc_AE99C7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE99CC: FLdPr Me
  loc_AE99CF: VCallAd Control_ID_NumeAcpaTxt
  loc_AE99D2: CVarAd
  loc_AE99D6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE99DB: FFree1Var var_A4 = ""
  loc_AE99DE: LitI2_Byte &HFF
  loc_AE99E0: IStI2 Cancel
  loc_AE99E3: ExitProcHresult
  loc_AE99E4: FLdPr Me
  loc_AE99E7: VCallAd Control_ID_FeenAcpaMsk
  loc_AE99EA: FStAdFunc var_88
  loc_AE99ED: FLdPr var_88
  loc_AE99F0: LateIdLdVar var_A4 DispID_15 0
  loc_AE99F7: PopAd
  loc_AE99F9: FLdRfVar var_90
  loc_AE99FC: FLdPr Me
  loc_AE99FF: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9A02: FStAdFunc var_A8
  loc_AE9A05: FLdPr var_A8
  loc_AE9A08:  = Me.Text
  loc_AE9A0D: FLdRfVar var_AC
  loc_AE9A10: ILdRf var_90
  loc_AE9A13: CI2Str
  loc_AE9A15: FLdRfVar var_A4
  loc_AE9A18: CStrVarTmp
  loc_AE9A19: FStStrNoPop var_94
  loc_AE9A1C: FLdPr Me
  loc_AE9A1F: MemLdRfVar from_stack_1.global_52
  loc_AE9A22: NewIfNullPr clsacrepago
  loc_AE9A25: from_stack_3v = clsacrepago.ValidaClave(from_stack_1v, from_stack_2v)
  loc_AE9A2A: ILdRf var_AC
  loc_AE9A2D: FLdPr Me
  loc_AE9A30: MemStStrCopy
  loc_AE9A34: FFreeStr var_94 = "": var_90 = ""
  loc_AE9A3D: FFreeAd var_88 = ""
  loc_AE9A44: FFree1Var var_A4 = ""
  loc_AE9A47: FLdPr Me
  loc_AE9A4A: MemLdStr global_64
  loc_AE9A4D: LitStr vbNullString
  loc_AE9A50: NeStr
  loc_AE9A52: BranchF loc_AE9A78
  loc_AE9A55: FLdPr Me
  loc_AE9A58: MemLdStr global_64
  loc_AE9A5B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE9A60: FLdPr Me
  loc_AE9A63: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9A66: CVarAd
  loc_AE9A6A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE9A6F: FFree1Var var_A4 = ""
  loc_AE9A72: LitI2_Byte &HFF
  loc_AE9A74: IStI2 Cancel
  loc_AE9A77: ExitProcHresult
  loc_AE9A78: FLdRfVar var_90
  loc_AE9A7B: FLdPr Me
  loc_AE9A7E: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9A81: FStAdFunc var_88
  loc_AE9A84: FLdPr var_88
  loc_AE9A87:  = Me.Text
  loc_AE9A8C: ILdRf var_90
  loc_AE9A8F: ImpAdCallI2 Proc_18_42_A841B8()
  loc_AE9A94: FStStrNoPop var_94
  loc_AE9A97: FLdPr Me
  loc_AE9A9A: MemStStrCopy
  loc_AE9A9E: FFreeStr var_90 = ""
  loc_AE9AA5: FFree1Ad var_88
  loc_AE9AA8: FLdPr Me
  loc_AE9AAB: MemLdStr global_64
  loc_AE9AAE: LitStr vbNullString
  loc_AE9AB1: NeStr
  loc_AE9AB3: BranchF loc_AE9AD9
  loc_AE9AB6: FLdPr Me
  loc_AE9AB9: MemLdStr global_64
  loc_AE9ABC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE9AC1: FLdPr Me
  loc_AE9AC4: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9AC7: CVarAd
  loc_AE9ACB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE9AD0: FFree1Var var_A4 = ""
  loc_AE9AD3: LitI2_Byte &HFF
  loc_AE9AD5: IStI2 Cancel
  loc_AE9AD8: ExitProcHresult
  loc_AE9AD9: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'AB1A48
  'Data Table: 48BC64
  loc_AB1988: LitI4 0
  loc_AB198D: LitI4 7
  loc_AB1992: FLdRfVar var_88
  loc_AB1995: Redim
  loc_AB199F: FLdPr Me
  loc_AB19A2: MemLdRfVar from_stack_1.global_52
  loc_AB19A5: NewIfNullAd
  loc_AB19A8: FStAd var_8C 
  loc_AB19AC: FLdRfVar var_8C
  loc_AB19AF: CVarRef
  loc_AB19B4: ParmAry1St
  loc_AB19BA: FLdPr Me
  loc_AB19BD: VCallAd Control_ID_FeenAcpaMsk
  loc_AB19C0: CVarAd
  loc_AB19C4: ParmAry1St
  loc_AB19CA: FLdPr Me
  loc_AB19CD: VCallAd Control_ID_NumeAcpaTxt
  loc_AB19D0: CVarAd
  loc_AB19D4: ParmAry1St
  loc_AB19DA: FLdPr Me
  loc_AB19DD: VCallAd Control_ID_FepaAcpaMsk
  loc_AB19E0: CVarAd
  loc_AB19E4: ParmAry1St
  loc_AB19EA: FLdPr Me
  loc_AB19ED: VCallAd Control_ID_CodiEnreTxt
  loc_AB19F0: CVarAd
  loc_AB19F4: ParmAry1St
  loc_AB19FA: FLdPr Me
  loc_AB19FD: VCallAd Control_ID_DetaEnreLbl
  loc_AB1A00: CVarAd
  loc_AB1A04: ParmAry1St
  loc_AB1A0A: FLdPr Me
  loc_AB1A0D: VCallAd Control_ID_TocoAcpaTxt
  loc_AB1A10: CVarAd
  loc_AB1A14: ParmAry1St
  loc_AB1A1A: FLdPr Me
  loc_AB1A1D: VCallAd Control_ID_ImpoAcpaTxt
  loc_AB1A20: CVarAd
  loc_AB1A24: ParmAry1St
  loc_AB1A2A: FLdRfVar var_88
  loc_AB1A2D: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB1A32: ILdRf var_8C
  loc_AB1A35: CastAd
  loc_AB1A38: FLdPr Me
  loc_AB1A3B: MemStAdFunc
  loc_AB1A3F: FLdRfVar var_88
  loc_AB1A42: Erase
  loc_AB1A43: FFree1Ad var_8C
  loc_AB1A46: ExitProcHresult
End Sub
