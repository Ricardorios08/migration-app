VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Begin VB.Form rptEmisionIndividualdeComercio
  Caption = "Emisión Masiva de Comercio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEmisionIndividualdeComercio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2448
  ClientTop = 2292
  ClientWidth = 11640
  ClientHeight = 4368
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame Frame4
    Caption = "Exportar"
    Left = 3840
    Top = 2520
    Width = 3252
    Height = 1215
    TabIndex = 8
    Begin VB.CommandButton cmdPDFweb
      Caption = "PD&F para web"
      Left = 2400
      Top = 360
      Width = 1092
      Height = 615
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 840
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 9
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4110
    Width = 11640
    Height = 255
    TabIndex = 14
    OleObjectBlob = "rptEmisionIndividualdeComercio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 10320
    Top = 3000
    Width = 855
    Height = 735
    TabIndex = 12
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptEmisionIndividualdeComercio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEmisionIndividualdeComercio.frx":0B9C
    Left = 10920
    Top = 2760
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2520
    Width = 3495
    Height = 1215
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 840
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11415
    Height = 2295
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9720
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 1
    End
    Begin MSComctlLib.ProgressBar pbar
      Left = 10140
      Top = 960
      Width = 735
      Height = 735
      Visible = 0   'False
      TabIndex = 4
      OleObjectBlob = "rptEmisionIndividualdeComercio.frx":0C00
    End
    Begin MSMask.MaskEdBox CuenCtctMsk
      Left = 4800
      Top = 1200
      Width = 1335
      Height = 360
      TabIndex = 3
      OleObjectBlob = "rptEmisionIndividualdeComercio.frx":0C68
    End
    Begin VB.Label Label2
      Caption = "Cuenta de COMERCIO:"
      Left = 2160
      Top = 1200
      Width = 2535
      Height = 300
      TabIndex = 2
      AutoSize = -1  'True
    End
    Begin VB.Label ProgresoLbl
      Left = 9840
      Top = 1800
      Width = 1515
      Height = 300
      TabIndex = 5
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10560
    Top = 3360
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptEmisionIndividualdeComercio.frx":0D00
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 7680
    Top = 3120
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptEmisionIndividualdeComercio.frx":0DB4
  End
End

Attribute VB_Name = "rptEmisionIndividualdeComercio"

Public bGenerado As Boolean

Private Type UDT_1_00668CC4
  bStruc(48) As Byte ' String fields: 11
End Type

Private Type UDT_2_00560654
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_3_0066C2A4
  bStruc(116) As Byte ' String fields: 28
End Type


Private Sub cmdNueva_Click() 'A85750
  'Data Table: 4A35B0
  loc_A856B8: LitI2_Byte 0
  loc_A856BA: FLdPr Me
  loc_A856BD: MemStI2 bGenerado
  loc_A856C0: LitI2_Byte &HFF
  loc_A856C2: ILdRf Me
  loc_A856C5: CastAd
  loc_A856C8: FStAdFunc var_88
  loc_A856CB: FLdRfVar var_88
  loc_A856CE: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A856D3: FFree1Ad var_88
  loc_A856D6: FLdPr Me
  loc_A856D9: MemLdRfVar from_stack_1.global_84
  loc_A856DC: NewIfNullPr clsliquidacion
  loc_A856DF: Call clsliquidacion.Requery()
  loc_A856E4: LitStr vbNullString
  loc_A856E7: FLdPr Me
  loc_A856EA: VCallAd Control_ID_ProgresoLbl
  loc_A856ED: FStAdFunc var_88
  loc_A856F0: FLdPr var_88
  loc_A856F3: Me.Caption = from_stack_1
  loc_A856F8: FFree1Ad var_88
  loc_A856FB: LitStr vbNullString
  loc_A856FE: FLdPr Me
  loc_A85701: Me.Tag = from_stack_1
  loc_A85706: LitVarStr var_98, "0"
  loc_A8570B: PopAdLdVar
  loc_A8570C: FLdPr Me
  loc_A8570F: VCallAd Control_ID_CuenCtctMsk
  loc_A85712: FStAdFunc var_88
  loc_A85715: FLdPr var_88
  loc_A85718: LateIdSt
  loc_A8571D: FFree1Ad var_88
  loc_A85720: Call HabilitarCriterio()
  loc_A85725: ILdRf Me
  loc_A85728: CastAd
  loc_A8572B: FStAdFunc var_88
  loc_A8572E: FLdRfVar var_88
  loc_A85731: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A85736: FFree1Ad var_88
  loc_A85739: LitI2_Byte 0
  loc_A8573B: FLdPr Me
  loc_A8573E: VCallAd Control_ID_cmdPDFweb
  loc_A85741: FStAdFunc var_88
  loc_A85744: FLdPr var_88
  loc_A85747: Me.Visible = from_stack_1b
  loc_A8574C: FFree1Ad var_88
  loc_A8574F: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A0469C
  'Data Table: 4A35B0
  loc_A0466C: LitVarStr var_94, "Cerrando..."
  loc_A04671: PopAdLdVar
  loc_A04672: FLdPr Me
  loc_A04675: VCallAd Control_ID_statusBar
  loc_A04678: FStAdFunc var_A8
  loc_A0467B: FLdPr var_A8
  loc_A0467E: LateIdSt
  loc_A04683: FFree1Ad var_A8
  loc_A04686: ILdRf Me
  loc_A04689: FStAdNoPop
  loc_A0468D: ImpAdLdRf MemVar_D9C5D8
  loc_A04690: NewIfNullPr Global
  loc_A04693: Global.Unload from_stack_1
  loc_A04698: FFree1Ad var_A8
  loc_A0469B: ExitProcHresult
End Sub

Private Sub Form_Load() 'A89F38
  'Data Table: 4A35B0
  loc_A89E9C: LitStr "PRIMER"
  loc_A89E9F: LitI4 1
  loc_A89EA4: FLdPr Me
  loc_A89EA7: MemLdRfVar from_stack_1.global_128
  loc_A89EAA: Ary1StStrCopy
  loc_A89EAB: LitStr "SEGUNDO"
  loc_A89EAE: LitI4 2
  loc_A89EB3: FLdPr Me
  loc_A89EB6: MemLdRfVar from_stack_1.global_128
  loc_A89EB9: Ary1StStrCopy
  loc_A89EBA: LitStr "TERCER"
  loc_A89EBD: LitI4 3
  loc_A89EC2: FLdPr Me
  loc_A89EC5: MemLdRfVar from_stack_1.global_128
  loc_A89EC8: Ary1StStrCopy
  loc_A89EC9: LitStr "CUARTO"
  loc_A89ECC: LitI4 4
  loc_A89ED1: FLdPr Me
  loc_A89ED4: MemLdRfVar from_stack_1.global_128
  loc_A89ED7: Ary1StStrCopy
  loc_A89ED8: LitStr "QUINTO"
  loc_A89EDB: LitI4 5
  loc_A89EE0: FLdPr Me
  loc_A89EE3: MemLdRfVar from_stack_1.global_128
  loc_A89EE6: Ary1StStrCopy
  loc_A89EE7: LitStr "SEXTO"
  loc_A89EEA: LitI4 6
  loc_A89EEF: FLdPr Me
  loc_A89EF2: MemLdRfVar from_stack_1.global_128
  loc_A89EF5: Ary1StStrCopy
  loc_A89EF6: ILdRf Me
  loc_A89EF9: CastAd
  loc_A89EFC: FStAdFunc var_88
  loc_A89EFF: FLdRfVar var_88
  loc_A89F02: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A89F07: FFree1Ad var_88
  loc_A89F0A: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu, LeyeTili, FealLiqu"
  loc_A89F0D: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A89F10: ConcatStr
  loc_A89F11: FStStrNoPop var_8C
  loc_A89F14: LitStr " WHERE liquidacion.CodiOfic = 2 AND ActuLiqu = 'Si' ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A89F17: ConcatStr
  loc_A89F18: FStStrNoPop var_90
  loc_A89F1B: FLdPr Me
  loc_A89F1E: MemLdRfVar from_stack_1.global_84
  loc_A89F21: NewIfNullPr clsliquidacion
  loc_A89F24: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A89F29: FFreeStr var_8C = ""
  loc_A89F30: Call cmdNueva_Click()
  loc_A89F35: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CEC50
  'Data Table: 4A35B0
  loc_9CEC38: FLdPr Me
  loc_9CEC3B: VCallAd Control_ID_wbbReporte
  loc_9CEC3E: FStAdFunc var_88
  loc_9CEC41: FLdRfVar var_88
  loc_9CEC44: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CEC49: FFree1Ad var_88
  loc_9CEC4C: ExitProcHresult
End Sub

Private Sub CuenCtctMsk_UnknownEvent_0 '9BFAB0
  'Data Table: 4A35B0
  loc_9BFA9C: FLdPr Me
  loc_9BFA9F: VCallAd Control_ID_CuenCtctMsk
  loc_9BFAA2: CVarAd
  loc_9BFAA6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFAAB: FFree1Var var_94 = ""
  loc_9BFAAE: ExitProcHresult
End Sub

Private Sub CuenCtctMsk_UnknownEvent_8 'B4600C
  'Data Table: 4A35B0
  loc_B45D28: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = 2 AND CodiTili = 1"
  loc_B45D2B: FLdPr Me
  loc_B45D2E: MemLdRfVar from_stack_1.global_80
  loc_B45D31: NewIfNullPr clstipoliqu
  loc_B45D34: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_B45D39: FLdRfVar var_88
  loc_B45D3C: FLdPr Me
  loc_B45D3F: MemLdRfVar from_stack_1.global_80
  loc_B45D42: NewIfNullPr clstipoliqu
  loc_B45D45: from_stack_1 = clstipoliqu.RecordCount
  loc_B45D4A: ILdRf var_88
  loc_B45D4D: LitI4 0
  loc_B45D52: GtI4
  loc_B45D53: BranchF loc_B4600B
  loc_B45D56: LitStr "SELECT * FROM liqucome"
  loc_B45D59: LitStr " WHERE PeriLiqu = "
  loc_B45D5C: ConcatStr
  loc_B45D5D: FStStrNoPop var_8C
  loc_B45D60: ImpAdLdI2 MemVar_D93034
  loc_B45D63: CStrUI1
  loc_B45D65: FStStrNoPop var_90
  loc_B45D68: ConcatStr
  loc_B45D69: FStStrNoPop var_94
  loc_B45D6C: LitStr " AND CodiTili = "
  loc_B45D6F: ConcatStr
  loc_B45D70: FStStrNoPop var_9C
  loc_B45D73: FLdRfVar var_96
  loc_B45D76: FLdPr Me
  loc_B45D79: MemLdRfVar from_stack_1.global_80
  loc_B45D7C: NewIfNullPr clstipoliqu
  loc_B45D7F: from_stack_1 = clstipoliqu.CodiTili
  loc_B45D84: FLdUI1
  loc_B45D88: CStrI2
  loc_B45D8A: FStStrNoPop var_A0
  loc_B45D8D: ConcatStr
  loc_B45D8E: FStStrNoPop var_A4
  loc_B45D91: LitStr " AND CodiCome = "
  loc_B45D94: ConcatStr
  loc_B45D95: FStStrNoPop var_BC
  loc_B45D98: FLdPr Me
  loc_B45D9B: VCallAd Control_ID_CuenCtctMsk
  loc_B45D9E: FStAdFunc var_A8
  loc_B45DA1: FLdPr var_A8
  loc_B45DA4: LateIdLdVar var_B8 DispID_22 0
  loc_B45DAB: CStrVarTmp
  loc_B45DAC: FStStrNoPop var_C0
  loc_B45DAF: ConcatStr
  loc_B45DB0: FStStrNoPop var_C4
  loc_B45DB3: LitStr " AND CodiConc = '"
  loc_B45DB6: ConcatStr
  loc_B45DB7: FStStrNoPop var_CC
  loc_B45DBA: FLdRfVar var_C8
  loc_B45DBD: FLdPr Me
  loc_B45DC0: MemLdRfVar from_stack_1.global_80
  loc_B45DC3: NewIfNullPr clstipoliqu
  loc_B45DC6: from_stack_1 = clstipoliqu.ConcTili
  loc_B45DCB: ILdRf var_C8
  loc_B45DCE: ConcatStr
  loc_B45DCF: FStStrNoPop var_D0
  loc_B45DD2: LitStr "'"
  loc_B45DD5: ConcatStr
  loc_B45DD6: FStStrNoPop var_D4
  loc_B45DD9: LitStr " AND TipoVenc = 1"
  loc_B45DDC: ConcatStr
  loc_B45DDD: FStStrNoPop var_D8
  loc_B45DE0: LitStr " AND ActuLico = 'Si'"
  loc_B45DE3: ConcatStr
  loc_B45DE4: FStStrNoPop var_DC
  loc_B45DE7: LitStr " ORDER BY PeriLiqu, CodiTili, NumeLiqu, CodiCome, OrdeLico"
  loc_B45DEA: ConcatStr
  loc_B45DEB: FStStrNoPop var_E0
  loc_B45DEE: FLdPr Me
  loc_B45DF1: MemLdRfVar from_stack_1.global_84
  loc_B45DF4: NewIfNullPr clsliquidacion
  loc_B45DF7: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_B45DFC: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_BC = "": var_C0 = "": var_C4 = "": var_CC = "": var_C8 = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B45E1F: FFree1Ad var_A8
  loc_B45E22: FFree1Var var_B8 = ""
  loc_B45E25: FLdRfVar var_88
  loc_B45E28: FLdPr Me
  loc_B45E2B: MemLdRfVar from_stack_1.global_84
  loc_B45E2E: NewIfNullPr clsliquidacion
  loc_B45E31: from_stack_1 = clsliquidacion.RecordCount
  loc_B45E36: ILdRf var_88
  loc_B45E39: LitI4 0
  loc_B45E3E: GtI4
  loc_B45E3F: BranchF loc_B45FE3
  loc_B45E42: FLdPr Me
  loc_B45E45: MemLdRfVar from_stack_1.global_84
  loc_B45E48: NewIfNullPr clsliquidacion
  loc_B45E4B: Call clsliquidacion.MoveLast()
  loc_B45E50: FLdRfVar var_17C
  loc_B45E53: FLdRfVar var_F8
  loc_B45E56: LitVarStr var_F4, "PeriLiqu"
  loc_B45E5B: PopAdLdVar
  loc_B45E5C: FLdRfVar var_E4
  loc_B45E5F: FLdRfVar var_A8
  loc_B45E62: FLdPr Me
  loc_B45E65: MemLdRfVar from_stack_1.global_84
  loc_B45E68: NewIfNullPr clsliquidacion
  loc_B45E6B: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B45E70: FLdPr var_A8
  loc_B45E73:  = Me.Fields
  loc_B45E78: FLdPr var_E4
  loc_B45E7B: from_stack_2 = Me.Item(from_stack_1)
  loc_B45E80: FLdPr var_F8
  loc_B45E83:  = Me.Value
  loc_B45E88: FLdRfVar var_18C
  loc_B45E8B: FLdRfVar var_114
  loc_B45E8E: LitVarStr var_110, "BimeLiqu"
  loc_B45E93: PopAdLdVar
  loc_B45E94: FLdRfVar var_100
  loc_B45E97: FLdRfVar var_FC
  loc_B45E9A: FLdPr Me
  loc_B45E9D: MemLdRfVar from_stack_1.global_84
  loc_B45EA0: NewIfNullPr clsliquidacion
  loc_B45EA3: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B45EA8: FLdPr var_FC
  loc_B45EAB:  = Me.Fields
  loc_B45EB0: FLdPr var_100
  loc_B45EB3: from_stack_2 = Me.Item(from_stack_1)
  loc_B45EB8: FLdPr var_114
  loc_B45EBB:  = Me.Value
  loc_B45EC0: FLdRfVar var_19C
  loc_B45EC3: FLdRfVar var_130
  loc_B45EC6: LitVarStr var_12C, "CodiTili"
  loc_B45ECB: PopAdLdVar
  loc_B45ECC: FLdRfVar var_11C
  loc_B45ECF: FLdRfVar var_118
  loc_B45ED2: FLdPr Me
  loc_B45ED5: MemLdRfVar from_stack_1.global_84
  loc_B45ED8: NewIfNullPr clsliquidacion
  loc_B45EDB: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B45EE0: FLdPr var_118
  loc_B45EE3:  = Me.Fields
  loc_B45EE8: FLdPr var_11C
  loc_B45EEB: from_stack_2 = Me.Item(from_stack_1)
  loc_B45EF0: FLdPr var_130
  loc_B45EF3:  = Me.Value
  loc_B45EF8: FLdRfVar var_1AC
  loc_B45EFB: FLdRfVar var_14C
  loc_B45EFE: LitVarStr var_148, "NumeLiqu"
  loc_B45F03: PopAdLdVar
  loc_B45F04: FLdRfVar var_138
  loc_B45F07: FLdRfVar var_134
  loc_B45F0A: FLdPr Me
  loc_B45F0D: MemLdRfVar from_stack_1.global_84
  loc_B45F10: NewIfNullPr clsliquidacion
  loc_B45F13: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B45F18: FLdPr var_134
  loc_B45F1B:  = Me.Fields
  loc_B45F20: FLdPr var_138
  loc_B45F23: from_stack_2 = Me.Item(from_stack_1)
  loc_B45F28: FLdPr var_14C
  loc_B45F2B:  = Me.Value
  loc_B45F30: FLdPr Me
  loc_B45F33: VCallAd Control_ID_CuenCtctMsk
  loc_B45F36: FStAdFunc var_150
  loc_B45F39: FLdPr var_150
  loc_B45F3C: LateIdLdVar var_B8 DispID_22 0
  loc_B45F43: PopAd
  loc_B45F45: FLdRfVar var_1BC
  loc_B45F48: FLdRfVar var_16C
  loc_B45F4B: LitVarStr var_168, "CodiConc"
  loc_B45F50: PopAdLdVar
  loc_B45F51: FLdRfVar var_158
  loc_B45F54: FLdRfVar var_154
  loc_B45F57: FLdPr Me
  loc_B45F5A: MemLdRfVar from_stack_1.global_84
  loc_B45F5D: NewIfNullPr clsliquidacion
  loc_B45F60: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B45F65: FLdPr var_154
  loc_B45F68:  = Me.Fields
  loc_B45F6D: FLdPr var_158
  loc_B45F70: from_stack_2 = Me.Item(from_stack_1)
  loc_B45F75: FLdPr var_16C
  loc_B45F78:  = Me.Value
  loc_B45F7D: FLdRfVar var_1BC
  loc_B45F80: CStrVarTmp
  loc_B45F81: FStStrNoPop var_90
  loc_B45F84: FLdRfVar var_B8
  loc_B45F87: CStrVarTmp
  loc_B45F88: FStStrNoPop var_8C
  loc_B45F8B: CI4Str
  loc_B45F8C: FLdRfVar var_1AC
  loc_B45F8F: CI2Var
  loc_B45F90: FLdRfVar var_19C
  loc_B45F93: CI2Var
  loc_B45F94: FLdRfVar var_18C
  loc_B45F97: CI2Var
  loc_B45F98: FLdRfVar var_17C
  loc_B45F9B: CI2Var
  loc_B45F9C: ImpAdCallI2 Proc_270_112_AD6798(, , , , , )
  loc_B45FA1: FLdPr Me
  loc_B45FA4: MemStI4 global_152
  loc_B45FA7: FFreeStr var_8C = ""
  loc_B45FAE: FFreeAd var_A8 = "": var_E4 = "": var_FC = "": var_100 = "": var_118 = "": var_11C = "": var_134 = "": var_138 = "": var_150 = "": var_154 = "": var_158 = "": var_F8 = "": var_114 = "": var_130 = "": var_14C = ""
  loc_B45FD1: FFreeVar var_B8 = "": var_17C = "": var_18C = "": var_19C = "": var_1AC = ""
  loc_B45FE0: Branch loc_B45FEE
  loc_B45FE3: LitI4 0
  loc_B45FE8: FLdPr Me
  loc_B45FEB: MemStI4 global_152
  loc_B45FEE: FLdPr Me
  loc_B45FF1: MemLdStr global_152
  loc_B45FF4: LitI4 0
  loc_B45FF9: EqI4
  loc_B45FFA: BranchF loc_B4600B
  loc_B45FFD: LitStr "La cuenta no tiene Numero de Orden, no se puede imprimir"
  loc_B46000: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B46005: LitI2_Byte &HFF
  loc_B46007: IStI2 Cancel
  loc_B4600A: ExitProcHresult
  loc_B4600B: ExitProcHresult
End Sub

Private Sub cmdPDFweb_Click() '9AF0A8
  'Data Table: 4A35B0
  loc_9AF0A4: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'B75FD4
  'Data Table: 4A35B0
  loc_B75B24: OnErrorGoto loc_B75F4C
  loc_B75B27: FLdRfVar var_A0
  loc_B75B2A: FLdPr Me
  loc_B75B2D:  = Me.hWnd
  loc_B75B32: LitStr "Seleccione la carpeta de salida para los archivos generados"
  loc_B75B35: FLdPr Me
  loc_B75B38: MemLdStr global_76
  loc_B75B3B: ILdRf var_A0
  loc_B75B3E: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_B75B43: FStStrNoPop var_A4
  loc_B75B46: FLdPr Me
  loc_B75B49: MemStStrCopy
  loc_B75B4D: FFree1Str var_A4
  loc_B75B50: FLdPr Me
  loc_B75B53: MemLdRfVar from_stack_1.global_76
  loc_B75B56: CVarRef
  loc_B75B5B: FLdRfVar var_C4
  loc_B75B5E: ImpAdCallFPR4  = Trim()
  loc_B75B63: FLdRfVar var_C4
  loc_B75B66: LitVarStr var_D4, vbNullString
  loc_B75B6B: HardType
  loc_B75B6C: EqVarBool
  loc_B75B6E: FFree1Var var_C4 = ""
  loc_B75B71: BranchF loc_B75B75
  loc_B75B74: ExitProcHresult
  loc_B75B75: FLdRfVar var_A4
  loc_B75B78: LitStr "tmp"
  loc_B75B7B: FLdPr Me
  loc_B75B7E: MemLdStr global_76
  loc_B75B81: FLdRfVar var_88
  loc_B75B84: NewIfNullPr IFileSystem3
  loc_B75B87: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B75B8C: ILdRf var_A4
  loc_B75B8F: LitStr "\"
  loc_B75B92: ConcatStr
  loc_B75B93: FStStr var_9C
  loc_B75B96: FFree1Str var_A4
  loc_B75B99: FLdRfVar var_E6
  loc_B75B9C: ILdRf var_9C
  loc_B75B9F: FLdRfVar var_88
  loc_B75BA2: NewIfNullPr IFileSystem3
  loc_B75BA5: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B75BAA: FLdI2 var_E6
  loc_B75BAD: BranchF loc_B75BBE
  loc_B75BB0: LitStr "*.*"
  loc_B75BB3: ILdRf var_9C
  loc_B75BB6: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B75BBB: Branch loc_B75BC6
  loc_B75BBE: ILdRf var_9C
  loc_B75BC1: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_B75BC6: ILdRf var_9C
  loc_B75BC9: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B75BCE: ILdRf Me
  loc_B75BD1: CastAd
  loc_B75BD4: FStAdFunc var_EC
  loc_B75BD7: FLdRfVar var_EC
  loc_B75BDA: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B75BDF: FFree1Ad var_EC
  loc_B75BE2: Call GeneraReporte()
  loc_B75BE7: FLdPr Me
  loc_B75BEA: MemLdI2 bGenerado
  loc_B75BED: BranchF loc_B75F1D
  loc_B75BF0: FLdPr Me
  loc_B75BF3: MemLdStr global_96
  loc_B75BF6: LitI2_Byte 1
  loc_B75BF8: FnUBound
  loc_B75BFA: CR8I4
  loc_B75BFB: CVarR4
  loc_B75BFF: PopAdLdVar
  loc_B75C00: FLdPr Me
  loc_B75C03: VCallAd Control_ID_pbar
  loc_B75C06: FStAdFunc var_EC
  loc_B75C09: FLdPr var_EC
  loc_B75C0C: LateIdSt
  loc_B75C11: FFree1Ad var_EC
  loc_B75C14: LitVar_TRUE var_B4
  loc_B75C17: PopAdLdVar
  loc_B75C18: FLdPr Me
  loc_B75C1B: VCallAd Control_ID_pbar
  loc_B75C1E: FStAdFunc var_EC
  loc_B75C21: FLdPr var_EC
  loc_B75C24: LateIdSt
  loc_B75C29: FFree1Ad var_EC
  loc_B75C2C: LitStr vbNullString
  loc_B75C2F: FStStrCopy var_90
  loc_B75C32: LitI4 1
  loc_B75C37: FLdPr Me
  loc_B75C3A: MemLdStr global_96
  loc_B75C3D: Ary1LdPr
  loc_B75C3E: MemLdStr global_84
  loc_B75C41: CI4Str
  loc_B75C42: FStR4 var_98
  loc_B75C45: LitI4 1
  loc_B75C4A: FLdPr Me
  loc_B75C4D: MemLdRfVar from_stack_1.global_100
  loc_B75C50: FLdPr Me
  loc_B75C53: MemLdStr global_96
  loc_B75C56: LitI2_Byte 1
  loc_B75C58: FnUBound
  loc_B75C5A: ForI4 var_F4
  loc_B75C60: FLdPr Me
  loc_B75C63: MemLdStr global_100
  loc_B75C66: FLdPr Me
  loc_B75C69: MemLdStr global_96
  loc_B75C6C: AryLock
  loc_B75C6F: Ary1LdRf
  loc_B75C70: FStR4 var_FC
  loc_B75C73: FLdRfVar var_A4
  loc_B75C76: FLdPr Me
  loc_B75C79: MemLdStr global_100
  loc_B75C7C: Call Proc_311_15_A13E8C()
  loc_B75C81: FLdZeroAd var_A4
  loc_B75C84: FStStr var_8C
  loc_B75C87: ILdRf var_9C
  loc_B75C8A: ILdRf var_8C
  loc_B75C8D: ConcatStr
  loc_B75C8E: FStStrNoPop var_A4
  loc_B75C91: LitStr ".html"
  loc_B75C94: ConcatStr
  loc_B75C95: ImpAdStStr MemVar_D93C84
  loc_B75C99: FFree1Str var_A4
  loc_B75C9C: LitI4 0
  loc_B75CA1: FStR4 var_FC
  loc_B75CA4: AryUnlock
  loc_B75CA7: FLdPr Me
  loc_B75CAA: MemLdStr global_100
  loc_B75CAD: CR8I4
  loc_B75CAE: CVarR4
  loc_B75CB2: PopAdLdVar
  loc_B75CB3: FLdPr Me
  loc_B75CB6: VCallAd Control_ID_pbar
  loc_B75CB9: FStAdFunc var_EC
  loc_B75CBC: FLdPr var_EC
  loc_B75CBF: LateIdSt
  loc_B75CC4: FFree1Ad var_EC
  loc_B75CC7: FLdPr Me
  loc_B75CCA: MemLdStr global_100
  loc_B75CCD: CStrI4
  loc_B75CCF: FStStrNoPop var_A4
  loc_B75CD2: LitStr "/"
  loc_B75CD5: ConcatStr
  loc_B75CD6: FStStrNoPop var_100
  loc_B75CD9: FLdPr Me
  loc_B75CDC: MemLdStr global_96
  loc_B75CDF: LitI2_Byte 1
  loc_B75CE1: FnUBound
  loc_B75CE3: CStrI4
  loc_B75CE5: FStStrNoPop var_104
  loc_B75CE8: ConcatStr
  loc_B75CE9: FStStrNoPop var_108
  loc_B75CEC: FLdPr Me
  loc_B75CEF: VCallAd Control_ID_ProgresoLbl
  loc_B75CF2: FStAdFunc var_EC
  loc_B75CF5: FLdPr var_EC
  loc_B75CF8: Me.Caption = from_stack_1
  loc_B75CFD: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B75D08: FFree1Ad var_EC
  loc_B75D0B: Call GeneraHTML()
  loc_B75D10: ILdRf var_90
  loc_B75D13: LitStr """"
  loc_B75D16: ConcatStr
  loc_B75D17: FStStrNoPop var_A4
  loc_B75D1A: ImpAdLdI4 MemVar_D93C84
  loc_B75D1D: ConcatStr
  loc_B75D1E: FStStrNoPop var_100
  loc_B75D21: LitStr """ "
  loc_B75D24: ConcatStr
  loc_B75D25: FStStr var_90
  loc_B75D28: FFreeStr var_A4 = ""
  loc_B75D2F: FLdPr Me
  loc_B75D32: MemLdStr global_100
  loc_B75D35: LitI4 &HFA
  loc_B75D3A: ModI4
  loc_B75D3B: LitI4 0
  loc_B75D40: EqI4
  loc_B75D41: FLdPr Me
  loc_B75D44: MemLdStr global_100
  loc_B75D47: FLdPr Me
  loc_B75D4A: MemLdStr global_96
  loc_B75D4D: LitI2_Byte 1
  loc_B75D4F: FnUBound
  loc_B75D51: EqI4
  loc_B75D52: OrI4
  loc_B75D53: BranchF loc_B75EB7
  loc_B75D56: FLdPr Me
  loc_B75D59: MemLdStr global_100
  loc_B75D5C: FLdPr Me
  loc_B75D5F: MemLdStr global_96
  loc_B75D62: LitI2_Byte 1
  loc_B75D64: FnUBound
  loc_B75D66: EqI4
  loc_B75D67: BranchF loc_B75DAD
  loc_B75D6A: LitStr " ("
  loc_B75D6D: ILdRf var_98
  loc_B75D70: CStrI4
  loc_B75D72: FStStrNoPop var_A4
  loc_B75D75: ConcatStr
  loc_B75D76: FStStrNoPop var_100
  loc_B75D79: LitStr "-"
  loc_B75D7C: ConcatStr
  loc_B75D7D: FStStrNoPop var_104
  loc_B75D80: FLdPr Me
  loc_B75D83: MemLdStr global_96
  loc_B75D86: LitI2_Byte 1
  loc_B75D88: FnUBound
  loc_B75D8A: FLdPr Me
  loc_B75D8D: MemLdStr global_96
  loc_B75D90: Ary1LdPr
  loc_B75D91: MemLdStr global_84
  loc_B75D94: ConcatStr
  loc_B75D95: FStStrNoPop var_108
  loc_B75D98: LitStr ")"
  loc_B75D9B: ConcatStr
  loc_B75D9C: FStStr var_94
  loc_B75D9F: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B75DAA: Branch loc_B75E03
  loc_B75DAD: LitStr " ("
  loc_B75DB0: ILdRf var_98
  loc_B75DB3: CStrI4
  loc_B75DB5: FStStrNoPop var_A4
  loc_B75DB8: ConcatStr
  loc_B75DB9: FStStrNoPop var_100
  loc_B75DBC: LitStr "-"
  loc_B75DBF: ConcatStr
  loc_B75DC0: FStStrNoPop var_104
  loc_B75DC3: FLdPr Me
  loc_B75DC6: MemLdStr global_100
  loc_B75DC9: FLdPr Me
  loc_B75DCC: MemLdStr global_96
  loc_B75DCF: Ary1LdPr
  loc_B75DD0: MemLdStr global_84
  loc_B75DD3: ConcatStr
  loc_B75DD4: FStStrNoPop var_108
  loc_B75DD7: LitStr ")"
  loc_B75DDA: ConcatStr
  loc_B75DDB: FStStr var_94
  loc_B75DDE: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B75DE9: FLdPr Me
  loc_B75DEC: MemLdStr global_100
  loc_B75DEF: LitI4 1
  loc_B75DF4: AddI4
  loc_B75DF5: FLdPr Me
  loc_B75DF8: MemLdStr global_96
  loc_B75DFB: Ary1LdPr
  loc_B75DFC: MemLdStr global_84
  loc_B75DFF: CI4Str
  loc_B75E00: FStR4 var_98
  loc_B75E03: FLdPr Me
  loc_B75E06: MemLdStr global_76
  loc_B75E09: LitStr "\comercio"
  loc_B75E0C: ConcatStr
  loc_B75E0D: FStStrNoPop var_A4
  loc_B75E10: ILdRf var_94
  loc_B75E13: ConcatStr
  loc_B75E14: FStStrNoPop var_100
  loc_B75E17: LitStr ".pdf"
  loc_B75E1A: ConcatStr
  loc_B75E1B: ImpAdStStr MemVar_D93030
  loc_B75E1F: FFreeStr var_A4 = ""
  loc_B75E26: ILdRf var_90
  loc_B75E29: FnLenStr
  loc_B75E2A: LitI4 3
  loc_B75E2F: SubI4
  loc_B75E30: CVarI4
  loc_B75E34: LitI4 2
  loc_B75E39: FLdRfVar var_90
  loc_B75E3C: CVarRef
  loc_B75E41: FLdRfVar var_E4
  loc_B75E44: ImpAdCallFPR4  = Mid(, , )
  loc_B75E49: FLdRfVar var_E4
  loc_B75E4C: CStrVarTmp
  loc_B75E4D: FStStr var_90
  loc_B75E50: FFreeVar var_C4 = ""
  loc_B75E57: LitStr vbNullString
  loc_B75E5A: ImpAdLdI4 MemVar_D93030
  loc_B75E5D: ILdRf var_90
  loc_B75E60: ImpAdCallFPR4 Proc_57_55_AE2160(, , )
  loc_B75E65: LitStr "Guardando PDF: '"
  loc_B75E68: ImpAdLdI4 MemVar_D93030
  loc_B75E6B: ConcatStr
  loc_B75E6C: FStStrNoPop var_A4
  loc_B75E6F: LitStr "'"
  loc_B75E72: ConcatStr
  loc_B75E73: CVarStr var_C4
  loc_B75E76: PopAdLdVar
  loc_B75E77: FLdPr Me
  loc_B75E7A: VCallAd Control_ID_statusBar
  loc_B75E7D: FStAdFunc var_EC
  loc_B75E80: FLdPr var_EC
  loc_B75E83: LateIdSt
  loc_B75E88: FFree1Str var_A4
  loc_B75E8B: FFree1Ad var_EC
  loc_B75E8E: FFree1Var var_C4 = ""
  loc_B75E91: FLdRfVar var_E6
  loc_B75E94: ImpAdLdI4 MemVar_D93030
  loc_B75E97: FLdRfVar var_88
  loc_B75E9A: NewIfNullPr IFileSystem3
  loc_B75E9D: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B75EA2: FLdI2 var_E6
  loc_B75EA5: NotI4
  loc_B75EA6: BranchF loc_B75EB1
  loc_B75EA9: ImpAdCallFPR4 DoEvents()
  loc_B75EAE: Branch loc_B75E91
  loc_B75EB1: LitStr vbNullString
  loc_B75EB4: FStStrCopy var_90
  loc_B75EB7: ImpAdCallFPR4 DoEvents()
  loc_B75EBC: FLdPr Me
  loc_B75EBF: MemLdRfVar from_stack_1.global_100
  loc_B75EC2: NextI4 var_F4, loc_B75C60
  loc_B75EC7: LitStr "Proceso terminado."
  loc_B75ECA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B75ECF: FLdRfVar var_E6
  loc_B75ED2: ILdRf var_9C
  loc_B75ED5: FLdRfVar var_88
  loc_B75ED8: NewIfNullPr IFileSystem3
  loc_B75EDB: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B75EE0: FLdI2 var_E6
  loc_B75EE3: BranchF loc_B75EF9
  loc_B75EE6: LitStr "*.*"
  loc_B75EE9: ILdRf var_9C
  loc_B75EEC: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B75EF1: ILdRf var_9C
  loc_B75EF4: ImpAdCallFPR4 RmDir 
  loc_B75EF9: LitVar_FALSE
  loc_B75EFD: PopAdLdVar
  loc_B75EFE: FLdPr Me
  loc_B75F01: VCallAd Control_ID_pbar
  loc_B75F04: FStAdFunc var_EC
  loc_B75F07: FLdPr var_EC
  loc_B75F0A: LateIdSt
  loc_B75F0F: FFree1Ad var_EC
  loc_B75F12: FLdPr Me
  loc_B75F15: MemLdStr global_76
  loc_B75F18: ImpAdCallFPR4 Proc_272_64_A06738()
  loc_B75F1D: ILdRf Me
  loc_B75F20: CastAd
  loc_B75F23: FStAdFunc var_EC
  loc_B75F26: FLdRfVar var_EC
  loc_B75F29: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B75F2E: FFree1Ad var_EC
  loc_B75F31: LitVarStr var_B4, vbNullString
  loc_B75F36: PopAdLdVar
  loc_B75F37: FLdPr Me
  loc_B75F3A: VCallAd Control_ID_statusBar
  loc_B75F3D: FStAdFunc var_EC
  loc_B75F40: FLdPr var_EC
  loc_B75F43: LateIdSt
  loc_B75F48: FFree1Ad var_EC
  loc_B75F4B: ExitProcHresult
  loc_B75F4C: FLdRfVar var_A0
  loc_B75F4F: ImpAdCallI2 Err 'rtcErrObj
  loc_B75F54: FStAdFunc var_EC
  loc_B75F57: FLdPr var_EC
  loc_B75F5A:  = Err.Number
  loc_B75F5F: ILdRf var_A0
  loc_B75F62: FStR4 var_10C
  loc_B75F65: FFree1Ad var_EC
  loc_B75F68: ILdRf var_10C
  loc_B75F6B: LitI4 &H4C
  loc_B75F70: EqI4
  loc_B75F71: BranchF loc_B75F77
  loc_B75F74: Branch loc_B75FD3
  loc_B75F77: LitStr "Error "
  loc_B75F7A: FLdRfVar var_A0
  loc_B75F7D: ImpAdCallI2 Err 'rtcErrObj
  loc_B75F82: FStAdFunc var_EC
  loc_B75F85: FLdPr var_EC
  loc_B75F88:  = Err.Number
  loc_B75F8D: ILdRf var_A0
  loc_B75F90: CStrI4
  loc_B75F92: FStStrNoPop var_A4
  loc_B75F95: ConcatStr
  loc_B75F96: FStStrNoPop var_100
  loc_B75F99: LitStr ": "
  loc_B75F9C: ConcatStr
  loc_B75F9D: FStStrNoPop var_108
  loc_B75FA0: FLdRfVar var_104
  loc_B75FA3: ImpAdCallI2 Err 'rtcErrObj
  loc_B75FA8: FStAdFunc var_110
  loc_B75FAB: FLdPr var_110
  loc_B75FAE:  = Err.Description
  loc_B75FB3: ILdRf var_104
  loc_B75FB6: ConcatStr
  loc_B75FB7: FStStrNoPop var_114
  loc_B75FBA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B75FBF: FFreeStr var_A4 = "": var_100 = "": var_108 = "": var_104 = ""
  loc_B75FCC: FFreeAd var_EC = ""
  loc_B75FD3: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'AFF3D4
  'Data Table: 4A35B0
  loc_AFF1EC: LitVarStr var_94, "Enviando a impresora predeterminada..."
  loc_AFF1F1: PopAdLdVar
  loc_AFF1F2: FLdPr Me
  loc_AFF1F5: VCallAd Control_ID_statusBar
  loc_AFF1F8: FStAdFunc var_A8
  loc_AFF1FB: FLdPr var_A8
  loc_AFF1FE: LateIdSt
  loc_AFF203: FFree1Ad var_A8
  loc_AFF206: ILdRf Me
  loc_AFF209: CastAd
  loc_AFF20C: FStAdFunc var_A8
  loc_AFF20F: FLdRfVar var_A8
  loc_AFF212: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_AFF217: FFree1Ad var_A8
  loc_AFF21A: Call GeneraReporte()
  loc_AFF21F: FLdPr Me
  loc_AFF222: MemLdI2 bGenerado
  loc_AFF225: BranchF loc_AFF3BC
  loc_AFF228: FLdPr Me
  loc_AFF22B: MemLdStr global_96
  loc_AFF22E: LitI2_Byte 1
  loc_AFF230: FnUBound
  loc_AFF232: CR8I4
  loc_AFF233: CVarR4
  loc_AFF237: PopAdLdVar
  loc_AFF238: FLdPr Me
  loc_AFF23B: VCallAd Control_ID_pbar
  loc_AFF23E: FStAdFunc var_A8
  loc_AFF241: FLdPr var_A8
  loc_AFF244: LateIdSt
  loc_AFF249: FFree1Ad var_A8
  loc_AFF24C: LitVar_TRUE var_94
  loc_AFF24F: PopAdLdVar
  loc_AFF250: FLdPr Me
  loc_AFF253: VCallAd Control_ID_pbar
  loc_AFF256: FStAdFunc var_A8
  loc_AFF259: FLdPr var_A8
  loc_AFF25C: LateIdSt
  loc_AFF261: FFree1Ad var_A8
  loc_AFF264: LitI4 1
  loc_AFF269: FLdPr Me
  loc_AFF26C: MemLdRfVar from_stack_1.global_100
  loc_AFF26F: FLdPr Me
  loc_AFF272: MemLdStr global_96
  loc_AFF275: LitI2_Byte 1
  loc_AFF277: FnUBound
  loc_AFF279: ForI4 var_B0
  loc_AFF27F: LitStr " - "
  loc_AFF282: FLdPr Me
  loc_AFF285: MemLdStr global_100
  loc_AFF288: FLdPr Me
  loc_AFF28B: MemLdStr global_96
  loc_AFF28E: Ary1LdPr
  loc_AFF28F: MemLdStr global_84
  loc_AFF292: ConcatStr
  loc_AFF293: FStStrNoPop var_B4
  loc_AFF296: FLdPr Me
  loc_AFF299: Me.Tag = from_stack_1
  loc_AFF29E: FFree1Str var_B4
  loc_AFF2A1: ILdRf Me
  loc_AFF2A4: CastAd
  loc_AFF2A7: FStAdFunc var_A8
  loc_AFF2AA: FLdRfVar var_A8
  loc_AFF2AD: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_AFF2B2: FFree1Ad var_A8
  loc_AFF2B5: FLdPr Me
  loc_AFF2B8: MemLdStr global_100
  loc_AFF2BB: CR8I4
  loc_AFF2BC: CVarR4
  loc_AFF2C0: PopAdLdVar
  loc_AFF2C1: FLdPr Me
  loc_AFF2C4: VCallAd Control_ID_pbar
  loc_AFF2C7: FStAdFunc var_A8
  loc_AFF2CA: FLdPr var_A8
  loc_AFF2CD: LateIdSt
  loc_AFF2D2: FFree1Ad var_A8
  loc_AFF2D5: FLdPr Me
  loc_AFF2D8: MemLdStr global_100
  loc_AFF2DB: CStrI4
  loc_AFF2DD: FStStrNoPop var_B4
  loc_AFF2E0: LitStr "/"
  loc_AFF2E3: ConcatStr
  loc_AFF2E4: FStStrNoPop var_B8
  loc_AFF2E7: FLdPr Me
  loc_AFF2EA: MemLdStr global_96
  loc_AFF2ED: LitI2_Byte 1
  loc_AFF2EF: FnUBound
  loc_AFF2F1: CStrI4
  loc_AFF2F3: FStStrNoPop var_BC
  loc_AFF2F6: ConcatStr
  loc_AFF2F7: FStStrNoPop var_C0
  loc_AFF2FA: FLdPr Me
  loc_AFF2FD: VCallAd Control_ID_ProgresoLbl
  loc_AFF300: FStAdFunc var_A8
  loc_AFF303: FLdPr var_A8
  loc_AFF306: Me.Caption = from_stack_1
  loc_AFF30B: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AFF316: FFree1Ad var_A8
  loc_AFF319: Call GeneraHTML()
  loc_AFF31E: ImpAdLdRf MemVar_D93C84
  loc_AFF321: CDargRef
  loc_AFF325: FLdPr Me
  loc_AFF328: VCallAd Control_ID_wbbReporte
  loc_AFF32B: FStAdFunc var_A8
  loc_AFF32E: FLdPr var_A8
  loc_AFF331: LateIdCall
  loc_AFF339: FFree1Ad var_A8
  loc_AFF33C: ImpAdCallFPR4 DoEvents()
  loc_AFF341: FLdPr Me
  loc_AFF344: VCallAd Control_ID_wbbReporte
  loc_AFF347: FStAdFunc var_A8
  loc_AFF34A: FLdPr var_A8
  loc_AFF34D: LateIdLdVar var_D0 DispID_-525 -1
  loc_AFF354: CI4Var
  loc_AFF356: LitI4 4
  loc_AFF35B: NeI4
  loc_AFF35C: FFree1Ad var_A8
  loc_AFF35F: FFree1Var var_D0 = ""
  loc_AFF362: BranchT loc_AFF33C
  loc_AFF365: LitVarI4
  loc_AFF36D: PopAdLdVar
  loc_AFF36E: LitVarI4
  loc_AFF376: PopAdLdVar
  loc_AFF377: LitVarI2 var_110, 2
  loc_AFF37C: PopAdLdVar
  loc_AFF37D: LitVar_NULL
  loc_AFF381: PopAdLdVar
  loc_AFF382: FLdPr Me
  loc_AFF385: VCallAd Control_ID_wbbReporte
  loc_AFF388: FStAdFunc var_A8
  loc_AFF38B: FLdPr var_A8
  loc_AFF38E: LateIdCall
  loc_AFF396: FFree1Ad var_A8
  loc_AFF399: FLdPr Me
  loc_AFF39C: MemLdRfVar from_stack_1.global_100
  loc_AFF39F: NextI4 var_B0, loc_AFF27F
  loc_AFF3A4: LitVar_TRUE var_94
  loc_AFF3A7: PopAdLdVar
  loc_AFF3A8: FLdPr Me
  loc_AFF3AB: VCallAd Control_ID_pbar
  loc_AFF3AE: FStAdFunc var_A8
  loc_AFF3B1: FLdPr var_A8
  loc_AFF3B4: LateIdSt
  loc_AFF3B9: FFree1Ad var_A8
  loc_AFF3BC: ILdRf Me
  loc_AFF3BF: CastAd
  loc_AFF3C2: FStAdFunc var_A8
  loc_AFF3C5: FLdRfVar var_A8
  loc_AFF3C8: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AFF3CD: FFree1Ad var_A8
  loc_AFF3D0: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A14950
  'Data Table: 4A35B0
  loc_A14918: FLdPr Me
  loc_A1491B: VCallAd Control_ID_statusBar
  loc_A1491E: FStAdFunc var_88
  loc_A14921: FLdPr var_88
  loc_A14924: LateIdLdVar var_98 DispID_1 0
  loc_A1492B: CStrVarTmp
  loc_A1492C: CVarStr var_A8
  loc_A1492F: PopAdLdVar
  loc_A14930: FLdPr Me
  loc_A14933: VCallAd Control_ID_statusBar
  loc_A14936: FStAdFunc var_BC
  loc_A14939: FLdPr var_BC
  loc_A1493C: LateIdSt
  loc_A14941: FFreeAd var_88 = ""
  loc_A14948: FFreeVar var_98 = ""
  loc_A1494F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4A4560
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A456F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A10764
  'Data Table: 4A35B0
  loc_A10730: LitI4 0
  loc_A10735: LitI4 0
  loc_A1073A: FLdRfVar var_88
  loc_A1073D: Redim
  loc_A10747: FLdPr Me
  loc_A1074A: VCallAd Control_ID_CuenCtctMsk
  loc_A1074D: CVarAd
  loc_A10751: ParmAry1St
  loc_A10757: FLdRfVar var_88
  loc_A1075A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A1075F: FLdRfVar var_88
  loc_A10762: Erase
  loc_A10763: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B57F94
  'Data Table: 4A35B0
  loc_B57C10: FLdPr Me
  loc_B57C13: MemLdI2 bGenerado
  loc_B57C16: BranchF loc_B57C1A
  loc_B57C19: ExitProcHresult
  loc_B57C1A: LitVarStr var_94, "Generando reporte..."
  loc_B57C1F: PopAdLdVar
  loc_B57C20: FLdPr Me
  loc_B57C23: VCallAd Control_ID_statusBar
  loc_B57C26: FStAdFunc var_A8
  loc_B57C29: FLdPr var_A8
  loc_B57C2C: LateIdSt
  loc_B57C31: FFree1Ad var_A8
  loc_B57C34: LitI4 &HB
  loc_B57C39: CI2I4
  loc_B57C3A: FLdPr Me
  loc_B57C3D: Me.MousePointer = from_stack_1
  loc_B57C42: FLdRfVar var_AC
  loc_B57C45: FLdPr Me
  loc_B57C48: MemLdRfVar from_stack_1.global_84
  loc_B57C4B: NewIfNullPr clsliquidacion
  loc_B57C4E: from_stack_1 = clsliquidacion.RecordCount
  loc_B57C53: ILdRf var_AC
  loc_B57C56: LitI4 1
  loc_B57C5B: LtI4
  loc_B57C5C: BranchF loc_B57C6A
  loc_B57C5F: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B57C62: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B57C67: Branch loc_B57F6A
  loc_B57C6A: FLdPr Me
  loc_B57C6D: MemLdStr global_152
  loc_B57C70: LitI4 0
  loc_B57C75: EqI4
  loc_B57C76: BranchF loc_B57C84
  loc_B57C79: LitStr "No existe Numero de Orden. No se puede Imprimir"
  loc_B57C7C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B57C81: Branch loc_B57F6A
  loc_B57C84: Call Proc_311_16_9FD114()
  loc_B57C89: FLdPr Me
  loc_B57C8C: MemLdRfVar from_stack_1.global_88
  loc_B57C8F: NewIfNullAd
  loc_B57C92: FStAd var_B0 
  loc_B57C96: LitStr "SELECT liqucome.CodiCome, liqucome.TipoVenc, OrdeLico, liqucome.FeacLico, liqucome.BimeLiqu, sum(TotaLico) as TotaLico, boleto.PeriBole, boleto.NumeBole, SUM(if(liqucome.CodiConc='13030202',TotaLico,0)) RecaBole,"
  loc_B57C99: LitStr " boleto.FeveBole as FeveLico, CAST(boleto.TotaBole AS DOUBLE(10,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, p1.DetaPers, ifnull(p2.DetaPers,'') as Vinculo, RazoCome, DeudLico, CAST((ifnull(ImpoLico,0)-ifnull(TotaLcde,0)) AS DOUBLE(10,2)) as ImpoLico, CAST(ExenLico+DescLico AS DOUBLE(10,2)) as DescLico, ifnull(licodeta.TotaLcde,0) as CEmision,"
  loc_B57C9C: ConcatStr
  loc_B57C9D: FStStrNoPop var_B4
  loc_B57CA0: LitStr " CallLico as DetaCall, NucaLico, BarrLico as DetaBarr, ManzLico, CasaLico, UbicLico, LocaLico as DetaLoca, CopoLico,"
  loc_B57CA3: ConcatStr
  loc_B57CA4: FStStrNoPop var_B8
  loc_B57CA7: LitStr " IFNULL(domicilio.calle,'') as CallLicoReal, IFNULL(domicilio.NumeCalle,'0') as NucaLicoReal, IFNULL(domicilio.barrio,'') as BarrLicoReal, IFNULL(domicilio.Manzana,'') as ManzLicoReal, IFNULL(domicilio.Casa,'') as CasaLicoReal,"
  loc_B57CAA: ConcatStr
  loc_B57CAB: FStStrNoPop var_BC
  loc_B57CAE: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbicLicoReal,"
  loc_B57CB1: ConcatStr
  loc_B57CB2: FStStrNoPop var_C0
  loc_B57CB5: LitStr " IFNULL(domicilio.Localidad,'') as LocaLicoReal, IFNULL(domicilio.CodPostal,'0') as CopoLicoReal,"
  loc_B57CB8: ConcatStr
  loc_B57CB9: FStStrNoPop var_C4
  loc_B57CBC: LitStr " (SELECT cast(group_concat(DISTINCT if(lq2.TipoVenc=1,lq2.BimeLiqu,'anual') ORDER BY lq2.TipoVenc, lq2.BimeLiqu ASC SEPARATOR ', ') as CHAR) FROM liqucome as lq2 WHERE lq2.TipoLico = liqucome.TipoLico AND FeacLico is not null AND lq2.PeriLiqu = liqucome.PeriLiqu AND lq2.CodiTili = liqucome.CodiTili AND lq2.NumeLiqu = liqucome.NumeLiqu AND lq2.OrdeLico = liqucome.OrdeLico) as Bimestres"
  loc_B57CBF: ConcatStr
  loc_B57CC0: FStStrNoPop var_C8
  loc_B57CC3: LitStr " FROM liqucome"
  loc_B57CC6: ConcatStr
  loc_B57CC7: FStStrNoPop var_CC
  loc_B57CCA: LitStr " INNER JOIN boleto ON boleto.CodiOfic = 2 AND boleto.CuenCtct = liqucome.CodiCome AND boleto.PeriBole = liqucome.PeriBole AND boleto.NumeBole = liqucome.NumeBole"
  loc_B57CCD: ConcatStr
  loc_B57CCE: FStStrNoPop var_D0
  loc_B57CD1: LitStr " LEFT JOIN licodeta ON licodeta.PeriLiqu = liqucome.PeriLiqu AND licodeta.CodiTili = liqucome.CodiTili AND licodeta.NumeLiqu = liqucome.NumeLiqu AND licodeta.BimeLiqu = liqucome.BimeLiqu AND licodeta.CodiConc = '13020201' AND licodeta.CodiCome = liqucome.CodiCome AND licodeta.TipoVenc = liqucome.TipoVenc AND licodeta.CodiSubr=999"
  loc_B57CD4: ConcatStr
  loc_B57CD5: FStStrNoPop var_D4
  loc_B57CD8: LitStr " LEFT JOIN comercio ON comercio.CodiCome = boleto.CuenCtct"
  loc_B57CDB: ConcatStr
  loc_B57CDC: FStStrNoPop var_D8
  loc_B57CDF: LitStr " LEFT JOIN infogov.persona as p1 ON p1.CucuPers = liqucome.CucuPers"
  loc_B57CE2: ConcatStr
  loc_B57CE3: FStStrNoPop var_DC
  loc_B57CE6: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = 2 AND relacion.CuenCtct = comercio.CodiCome AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_B57CE9: ConcatStr
  loc_B57CEA: FStStrNoPop var_E0
  loc_B57CED: LitStr " LEFT JOIN infogov.persona as p2 ON p2.CucuPers = relacion.CucuPers"
  loc_B57CF0: ConcatStr
  loc_B57CF1: FStStrNoPop var_E4
  loc_B57CF4: LitStr " LEFT JOIN domicilio ON domicilio.CodiCome = liqucome.CodiCome AND domicilio.CodiOfic = 2 AND domicilio.Tipo = 'COMERCIAL'"
  loc_B57CF7: ConcatStr
  loc_B57CF8: FStStrNoPop var_E8
  loc_B57CFB: LitStr " WHERE TipoLico = 'Aforo' AND FeacLico is not null"
  loc_B57CFE: ConcatStr
  loc_B57CFF: FStStrNoPop var_EC
  loc_B57D02: LitStr " AND liqucome.PeriLiqu = "
  loc_B57D05: ConcatStr
  loc_B57D06: FStStrNoPop var_F4
  loc_B57D09: FLdRfVar var_EE
  loc_B57D0C: FLdPr Me
  loc_B57D0F: MemLdRfVar from_stack_1.global_84
  loc_B57D12: NewIfNullPr clsliquidacion
  loc_B57D15: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B57D1A: FLdI2 var_EE
  loc_B57D1D: CStrUI1
  loc_B57D1F: FStStrNoPop var_F8
  loc_B57D22: ConcatStr
  loc_B57D23: FStStrNoPop var_FC
  loc_B57D26: LitStr " AND liqucome.CodiTili = "
  loc_B57D29: ConcatStr
  loc_B57D2A: FStStrNoPop var_104
  loc_B57D2D: FLdRfVar var_FE
  loc_B57D30: FLdPr Me
  loc_B57D33: MemLdRfVar from_stack_1.global_84
  loc_B57D36: NewIfNullPr clsliquidacion
  loc_B57D39: from_stack_1 = clsliquidacion.CodiTili
  loc_B57D3E: FLdUI1
  loc_B57D42: CStrI2
  loc_B57D44: FStStrNoPop var_108
  loc_B57D47: ConcatStr
  loc_B57D48: FStStrNoPop var_10C
  loc_B57D4B: LitStr " AND liqucome.NumeLiqu = "
  loc_B57D4E: ConcatStr
  loc_B57D4F: FStStrNoPop var_114
  loc_B57D52: FLdRfVar var_10E
  loc_B57D55: FLdPr Me
  loc_B57D58: MemLdRfVar from_stack_1.global_84
  loc_B57D5B: NewIfNullPr clsliquidacion
  loc_B57D5E: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B57D63: FLdI2 var_10E
  loc_B57D66: CStrUI1
  loc_B57D68: FStStrNoPop var_118
  loc_B57D6B: ConcatStr
  loc_B57D6C: FStStrNoPop var_11C
  loc_B57D6F: LitStr " AND liqucome.OrdeLico = "
  loc_B57D72: ConcatStr
  loc_B57D73: FStStrNoPop var_120
  loc_B57D76: FLdPr Me
  loc_B57D79: MemLdStr global_120
  loc_B57D7C: ConcatStr
  loc_B57D7D: FStStrNoPop var_124
  loc_B57D80: LitStr " GROUP BY OrdeLico, TipoVenc,  BimeLiqu, liqucome.PeriBole, liqucome.NumeBole HAVING TotaLico <> 0 ORDER BY OrdeLico, BimeLiqu, liqucome.PeriBole, liqucome.NumeBole"
  loc_B57D83: ConcatStr
  loc_B57D84: FStStrNoPop var_128
  loc_B57D87: FLdPr var_B0
  loc_B57D8A: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_B57D8F: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_B57DC8: FLdRfVar var_AC
  loc_B57DCB: FLdPr var_B0
  loc_B57DCE: from_stack_1 = clsliqucome.RecordCount
  loc_B57DD3: ILdRf var_AC
  loc_B57DD6: LitI4 1
  loc_B57DDB: LtI4
  loc_B57DDC: BranchF loc_B57DEA
  loc_B57DDF: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B57DE2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B57DE7: Branch loc_B57F6A
  loc_B57DEA: LitI4 0
  loc_B57DEF: LitI4 0
  loc_B57DF4: FLdPr Me
  loc_B57DF7: MemLdRfVar from_stack_1.global_96
  loc_B57DFA: Redim
  loc_B57E04: LitI4 0
  loc_B57E09: FLdPr Me
  loc_B57E0C: MemStI4 global_100
  loc_B57E0F: LitI2_Byte 0
  loc_B57E11: FLdPr Me
  loc_B57E14: MemStI2 global_108
  loc_B57E17: FLdPr var_B0
  loc_B57E1A: Call clsliqucome.MoveFirst()
  loc_B57E1F: FLdRfVar var_AC
  loc_B57E22: FLdPr var_B0
  loc_B57E25: from_stack_1 = clsliqucome.RecordCount
  loc_B57E2A: ILdRf var_AC
  loc_B57E2D: CR8I4
  loc_B57E2E: CVarR4
  loc_B57E32: PopAdLdVar
  loc_B57E33: FLdPr Me
  loc_B57E36: VCallAd Control_ID_pbar
  loc_B57E39: FStAdFunc var_A8
  loc_B57E3C: FLdPr var_A8
  loc_B57E3F: LateIdSt
  loc_B57E44: FFree1Ad var_A8
  loc_B57E47: LitVar_TRUE var_94
  loc_B57E4A: PopAdLdVar
  loc_B57E4B: FLdPr Me
  loc_B57E4E: VCallAd Control_ID_pbar
  loc_B57E51: FStAdFunc var_A8
  loc_B57E54: FLdPr var_A8
  loc_B57E57: LateIdSt
  loc_B57E5C: FFree1Ad var_A8
  loc_B57E5F: FLdRfVar var_EE
  loc_B57E62: FLdPr var_B0
  loc_B57E65: from_stack_1 = clsliqucome.EOF
  loc_B57E6A: FLdI2 var_EE
  loc_B57E6D: NotI4
  loc_B57E6E: BranchF loc_B57F43
  loc_B57E71: FLdRfVar var_AC
  loc_B57E74: FLdPr var_B0
  loc_B57E77: from_stack_1 = clsliqucome.AbsolutePosition
  loc_B57E7C: ILdRf var_AC
  loc_B57E7F: CR8I4
  loc_B57E80: CVarR4
  loc_B57E84: PopAdLdVar
  loc_B57E85: FLdPr Me
  loc_B57E88: VCallAd Control_ID_pbar
  loc_B57E8B: FStAdFunc var_A8
  loc_B57E8E: FLdPr var_A8
  loc_B57E91: LateIdSt
  loc_B57E96: FFree1Ad var_A8
  loc_B57E99: FLdRfVar var_AC
  loc_B57E9C: FLdPr var_B0
  loc_B57E9F: from_stack_1 = clsliqucome.AbsolutePosition
  loc_B57EA4: FLdRfVar var_12C
  loc_B57EA7: FLdPr var_B0
  loc_B57EAA: from_stack_1 = clsliqucome.RecordCount
  loc_B57EAF: LitI4 1
  loc_B57EB4: LitI4 1
  loc_B57EB9: LitVarStr var_A4, "0" & Chr(37)
  loc_B57EBE: FStVarCopyObj var_14C
  loc_B57EC1: FLdRfVar var_14C
  loc_B57EC4: ILdRf var_AC
  loc_B57EC7: CR8I4
  loc_B57EC8: ILdRf var_12C
  loc_B57ECB: CR8I4
  loc_B57ECC: DivR8
  loc_B57ECD: CVarR8
  loc_B57ED1: ImpAdCallI2 Format$(, )
  loc_B57ED6: FStStrNoPop var_B4
  loc_B57ED9: FLdPr Me
  loc_B57EDC: VCallAd Control_ID_ProgresoLbl
  loc_B57EDF: FStAdFunc var_A8
  loc_B57EE2: FLdPr var_A8
  loc_B57EE5: Me.Caption = from_stack_1
  loc_B57EEA: FFree1Str var_B4
  loc_B57EED: FFree1Ad var_A8
  loc_B57EF0: FFreeVar var_13C = ""
  loc_B57EF7: FLdPr Me
  loc_B57EFA: MemLdStr global_100
  loc_B57EFD: FLdPr Me
  loc_B57F00: MemLdStr global_96
  loc_B57F03: Ary1LdPr
  loc_B57F04: MemLdStr global_76
  loc_B57F07: FLdRfVar var_AC
  loc_B57F0A: FLdPr var_B0
  loc_B57F0D: from_stack_1 = clsliqucome.CodiCome
  loc_B57F12: ILdRf var_AC
  loc_B57F15: CStrI4
  loc_B57F17: FStStrNoPop var_B4
  loc_B57F1A: NeStr
  loc_B57F1C: FFree1Str var_B4
  loc_B57F1F: BranchF loc_B57F2A
  loc_B57F22: Call Proc_311_17_BC0320()
  loc_B57F27: Branch loc_B57F2F
  loc_B57F2A: Call Proc_311_19_BD0F74()
  loc_B57F2F: FLdPr Me
  loc_B57F32: MemLdI2 global_108
  loc_B57F35: BranchF loc_B57F3B
  loc_B57F38: Branch loc_B57F6A
  loc_B57F3B: ImpAdCallFPR4 DoEvents()
  loc_B57F40: Branch loc_B57E5F
  loc_B57F43: LitVar_FALSE
  loc_B57F47: PopAdLdVar
  loc_B57F48: FLdPr Me
  loc_B57F4B: VCallAd Control_ID_pbar
  loc_B57F4E: FStAdFunc var_A8
  loc_B57F51: FLdPr var_A8
  loc_B57F54: LateIdSt
  loc_B57F59: FFree1Ad var_A8
  loc_B57F5C: LitNothing
  loc_B57F5E: FStAd var_B0 
  loc_B57F62: LitI2_Byte &HFF
  loc_B57F64: FLdPr Me
  loc_B57F67: MemStI2 bGenerado
  loc_B57F6A: LitI4 0
  loc_B57F6F: CI2I4
  loc_B57F70: FLdPr Me
  loc_B57F73: Me.MousePointer = from_stack_1
  loc_B57F78: LitVarStr var_94, vbNullString
  loc_B57F7D: PopAdLdVar
  loc_B57F7E: FLdPr Me
  loc_B57F81: VCallAd Control_ID_statusBar
  loc_B57F84: FStAdFunc var_A8
  loc_B57F87: FLdPr var_A8
  loc_B57F8A: LateIdSt
  loc_B57F8F: FFree1Ad var_A8
  loc_B57F92: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A67B44
  'Data Table: 4A35B0
  loc_A67AD4: FLdRfVar var_88
  loc_A67AD7: LitI2_Byte 0
  loc_A67AD9: LitI2_Byte &HFF
  loc_A67ADB: ImpAdLdI4 MemVar_D93C84
  loc_A67ADE: FLdPr Me
  loc_A67AE1: MemLdRfVar from_stack_1.global_56
  loc_A67AE4: NewIfNullPr IFileSystem3
  loc_A67AE7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A67AEC: ILdRf var_88
  loc_A67AEF: FLdPr Me
  loc_A67AF2: MemStVarAd
  loc_A67AF6: FFree1Ad var_88
  loc_A67AF9: LitI2_Byte 0
  loc_A67AFB: ImpAdStI2 MemVar_D93C8A
  loc_A67AFE: Call Proc_311_20_C34F64()
  loc_A67B03: Call Proc_311_21_BE5FB4()
  loc_A67B08: Call Proc_311_22_B750AC()
  loc_A67B0D: Call Proc_311_23_BAFCE4()
  loc_A67B12: Call Proc_311_24_B063D8()
  loc_A67B17: Call Proc_311_25_9F362C()
  loc_A67B1C: FLdPr Me
  loc_A67B1F: MemLdRfVar from_stack_1.global_60
  loc_A67B22: LdPrVar
  loc_A67B24: LateMemCall
  loc_A67B2A: FLdPr Me
  loc_A67B2D: MemLdStr global_76
  loc_A67B30: LitStr vbNullString
  loc_A67B33: EqStr
  loc_A67B35: BranchF loc_A67B40
  loc_A67B38: LitStr vbNullString
  loc_A67B3B: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A67B40: ExitProcHresult
End Sub

Private Function Proc_311_15_A13E8C(arg_C) 'A13E8C
  'Data Table: 4A35B0
  loc_A13E50: ZeroRetVal
  loc_A13E52: LitI4 1
  loc_A13E57: LitI4 1
  loc_A13E5C: LitVarStr var_A8, "000"
  loc_A13E61: FStVarCopyObj var_B8
  loc_A13E64: FLdRfVar var_B8
  loc_A13E67: FLdRfVar arg_C
  loc_A13E6A: CVarRef
  loc_A13E6F: FLdRfVar var_C8
  loc_A13E72: ImpAdCallFPR4  = Format(, )
  loc_A13E77: FLdRfVar var_C8
  loc_A13E7A: CStrVarTmp
  loc_A13E7B: FStStr var_88
  loc_A13E7E: FFreeVar var_B8 = ""
  loc_A13E85: ExitProcCbHresult
End Function

Private Function Proc_311_16_9FD114() '9FD114
  'Data Table: 4A35B0
  loc_9FD0E8: FLdPr Me
  loc_9FD0EB: MemLdStr global_152
  loc_9FD0EE: CStrI4
  loc_9FD0F0: FStStrNoPop var_88
  loc_9FD0F3: FLdPr Me
  loc_9FD0F6: MemStStrCopy
  loc_9FD0FA: FFree1Str var_88
  loc_9FD0FD: FLdPr Me
  loc_9FD100: MemLdStr global_152
  loc_9FD103: CStrI4
  loc_9FD105: FStStrNoPop var_88
  loc_9FD108: FLdPr Me
  loc_9FD10B: MemStStrCopy
  loc_9FD10F: FFree1Str var_88
  loc_9FD112: ExitProcHresult
End Function

Private Function Proc_311_17_BC0320() 'BC0320
  'Data Table: 4A35B0
  loc_BBFC88: FLdPr Me
  loc_BBFC8B: MemLdStr global_100
  loc_BBFC8E: LitI4 1
  loc_BBFC93: AddI4
  loc_BBFC94: FLdPr Me
  loc_BBFC97: MemStI4 global_100
  loc_BBFC9A: LitI2_Byte 0
  loc_BBFC9C: CUI1I2
  loc_BBFC9E: FLdPr Me
  loc_BBFCA1: MemStUI1
  loc_BBFCA5: LitI4 0
  loc_BBFCAA: FLdPr Me
  loc_BBFCAD: MemLdStr global_100
  loc_BBFCB0: FLdPr Me
  loc_BBFCB3: MemLdRfVar from_stack_1.global_96
  loc_BBFCB6: RedimPreserve
  loc_BBFCC0: FLdPr Me
  loc_BBFCC3: MemLdRfVar from_stack_1.global_88
  loc_BBFCC6: NewIfNullAd
  loc_BBFCC9: FStAd var_88 
  loc_BBFCCD: FLdRfVar var_8C
  loc_BBFCD0: FLdPr var_88
  loc_BBFCD3: from_stack_1 = clsliqucome.CucuPers
  loc_BBFCD8: LitI2_Byte 0
  loc_BBFCDA: LitVar_Missing var_C0
  loc_BBFCDD: LitI2_Byte 0
  loc_BBFCDF: FLdZeroAd var_8C
  loc_BBFCE2: CVarStr var_A0
  loc_BBFCE5: PopAdLdVar
  loc_BBFCE6: FLdPr Me
  loc_BBFCE9: MemLdStr global_100
  loc_BBFCEC: FLdPr Me
  loc_BBFCEF: MemLdStr global_96
  loc_BBFCF2: AryLock
  loc_BBFCF5: Ary1LdPr
  loc_BBFCF6: MemLdRfVar from_stack_1.global_0
  loc_BBFCF9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFCFE: AryUnlock
  loc_BBFD01: FFreeVar var_A0 = ""
  loc_BBFD08: FLdRfVar var_A0
  loc_BBFD0B: FLdPr var_88
  loc_BBFD0E: from_stack_1 = clsliqucome.DetaPers
  loc_BBFD13: LitI2_Byte 0
  loc_BBFD15: LitVar_Missing var_C0
  loc_BBFD18: LitI2_Byte 0
  loc_BBFD1A: FLdVar var_A0
  loc_BBFD1E: FLdPr Me
  loc_BBFD21: MemLdStr global_100
  loc_BBFD24: FLdPr Me
  loc_BBFD27: MemLdStr global_96
  loc_BBFD2A: AryLock
  loc_BBFD2D: Ary1LdPr
  loc_BBFD2E: MemLdRfVar from_stack_1.global_4
  loc_BBFD31: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFD36: AryUnlock
  loc_BBFD39: FFreeVar var_A0 = ""
  loc_BBFD40: FLdRfVar var_A0
  loc_BBFD43: FLdPr var_88
  loc_BBFD46: from_stack_1 = clsliqucome.Vinculo
  loc_BBFD4B: LitI2_Byte 0
  loc_BBFD4D: LitVar_Missing var_C0
  loc_BBFD50: LitI2_Byte 0
  loc_BBFD52: FLdVar var_A0
  loc_BBFD56: FLdPr Me
  loc_BBFD59: MemLdStr global_100
  loc_BBFD5C: FLdPr Me
  loc_BBFD5F: MemLdStr global_96
  loc_BBFD62: AryLock
  loc_BBFD65: Ary1LdPr
  loc_BBFD66: MemLdRfVar from_stack_1.global_8
  loc_BBFD69: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFD6E: AryUnlock
  loc_BBFD71: FFreeVar var_A0 = ""
  loc_BBFD78: FLdRfVar var_A0
  loc_BBFD7B: FLdPr var_88
  loc_BBFD7E: from_stack_1 = clsliqucome.DetaCall
  loc_BBFD83: LitI2_Byte 0
  loc_BBFD85: LitVar_Missing var_C0
  loc_BBFD88: LitI2_Byte 0
  loc_BBFD8A: FLdVar var_A0
  loc_BBFD8E: FLdPr Me
  loc_BBFD91: MemLdStr global_100
  loc_BBFD94: FLdPr Me
  loc_BBFD97: MemLdStr global_96
  loc_BBFD9A: AryLock
  loc_BBFD9D: Ary1LdPr
  loc_BBFD9E: MemLdRfVar from_stack_1.global_12
  loc_BBFDA1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFDA6: AryUnlock
  loc_BBFDA9: FFreeVar var_A0 = ""
  loc_BBFDB0: FLdRfVar var_C4
  loc_BBFDB3: FLdPr var_88
  loc_BBFDB6: from_stack_1 = clsliqucome.NucaLico
  loc_BBFDBB: LitI2_Byte 0
  loc_BBFDBD: LitVar_Missing var_A0
  loc_BBFDC0: LitI2_Byte 0
  loc_BBFDC2: ILdRf var_C4
  loc_BBFDC5: CVarI4
  loc_BBFDC9: PopAdLdVar
  loc_BBFDCA: FLdPr Me
  loc_BBFDCD: MemLdStr global_100
  loc_BBFDD0: FLdPr Me
  loc_BBFDD3: MemLdStr global_96
  loc_BBFDD6: AryLock
  loc_BBFDD9: Ary1LdPr
  loc_BBFDDA: MemLdRfVar from_stack_1.global_16
  loc_BBFDDD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFDE2: AryUnlock
  loc_BBFDE5: FFree1Var var_A0 = ""
  loc_BBFDE8: FLdRfVar var_A0
  loc_BBFDEB: FLdPr var_88
  loc_BBFDEE: from_stack_1 = clsliqucome.DetaBarr
  loc_BBFDF3: LitI2_Byte 0
  loc_BBFDF5: LitVar_Missing var_C0
  loc_BBFDF8: LitI2_Byte 0
  loc_BBFDFA: FLdVar var_A0
  loc_BBFDFE: FLdPr Me
  loc_BBFE01: MemLdStr global_100
  loc_BBFE04: FLdPr Me
  loc_BBFE07: MemLdStr global_96
  loc_BBFE0A: AryLock
  loc_BBFE0D: Ary1LdPr
  loc_BBFE0E: MemLdRfVar from_stack_1.global_20
  loc_BBFE11: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFE16: AryUnlock
  loc_BBFE19: FFreeVar var_A0 = ""
  loc_BBFE20: FLdRfVar var_8C
  loc_BBFE23: FLdPr var_88
  loc_BBFE26: from_stack_1 = clsliqucome.ManzLico
  loc_BBFE2B: LitI2_Byte 0
  loc_BBFE2D: LitVar_Missing var_C0
  loc_BBFE30: LitI2_Byte 0
  loc_BBFE32: FLdZeroAd var_8C
  loc_BBFE35: CVarStr var_A0
  loc_BBFE38: PopAdLdVar
  loc_BBFE39: FLdPr Me
  loc_BBFE3C: MemLdStr global_100
  loc_BBFE3F: FLdPr Me
  loc_BBFE42: MemLdStr global_96
  loc_BBFE45: AryLock
  loc_BBFE48: Ary1LdPr
  loc_BBFE49: MemLdRfVar from_stack_1.global_24
  loc_BBFE4C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFE51: AryUnlock
  loc_BBFE54: FFreeVar var_A0 = ""
  loc_BBFE5B: FLdRfVar var_8C
  loc_BBFE5E: FLdPr var_88
  loc_BBFE61: from_stack_1 = clsliqucome.CasaLico
  loc_BBFE66: LitI2_Byte 0
  loc_BBFE68: LitVar_Missing var_C0
  loc_BBFE6B: LitI2_Byte 0
  loc_BBFE6D: FLdZeroAd var_8C
  loc_BBFE70: CVarStr var_A0
  loc_BBFE73: PopAdLdVar
  loc_BBFE74: FLdPr Me
  loc_BBFE77: MemLdStr global_100
  loc_BBFE7A: FLdPr Me
  loc_BBFE7D: MemLdStr global_96
  loc_BBFE80: AryLock
  loc_BBFE83: Ary1LdPr
  loc_BBFE84: MemLdRfVar from_stack_1.global_28
  loc_BBFE87: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFE8C: AryUnlock
  loc_BBFE8F: FFreeVar var_A0 = ""
  loc_BBFE96: FLdRfVar var_8C
  loc_BBFE99: FLdPr var_88
  loc_BBFE9C: from_stack_1 = clsliqucome.UbicLico
  loc_BBFEA1: LitI2_Byte 0
  loc_BBFEA3: LitVar_Missing var_C0
  loc_BBFEA6: LitI2_Byte 0
  loc_BBFEA8: FLdZeroAd var_8C
  loc_BBFEAB: CVarStr var_A0
  loc_BBFEAE: PopAdLdVar
  loc_BBFEAF: FLdPr Me
  loc_BBFEB2: MemLdStr global_100
  loc_BBFEB5: FLdPr Me
  loc_BBFEB8: MemLdStr global_96
  loc_BBFEBB: AryLock
  loc_BBFEBE: Ary1LdPr
  loc_BBFEBF: MemLdRfVar from_stack_1.global_32
  loc_BBFEC2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFEC7: AryUnlock
  loc_BBFECA: FFreeVar var_A0 = ""
  loc_BBFED1: FLdRfVar var_A0
  loc_BBFED4: FLdPr var_88
  loc_BBFED7: from_stack_1 = clsliqucome.DetaLoca
  loc_BBFEDC: LitI2_Byte 0
  loc_BBFEDE: LitVar_Missing var_C0
  loc_BBFEE1: LitI2_Byte 0
  loc_BBFEE3: FLdVar var_A0
  loc_BBFEE7: FLdPr Me
  loc_BBFEEA: MemLdStr global_100
  loc_BBFEED: FLdPr Me
  loc_BBFEF0: MemLdStr global_96
  loc_BBFEF3: AryLock
  loc_BBFEF6: Ary1LdPr
  loc_BBFEF7: MemLdRfVar from_stack_1.global_36
  loc_BBFEFA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFEFF: AryUnlock
  loc_BBFF02: FFreeVar var_A0 = ""
  loc_BBFF09: FLdRfVar var_A0
  loc_BBFF0C: FLdPr var_88
  loc_BBFF0F: from_stack_1 = clsliqucome.CopoLico
  loc_BBFF14: LitI2_Byte 0
  loc_BBFF16: LitVar_Missing var_C0
  loc_BBFF19: LitI2_Byte 0
  loc_BBFF1B: FLdVar var_A0
  loc_BBFF1F: FLdPr Me
  loc_BBFF22: MemLdStr global_100
  loc_BBFF25: FLdPr Me
  loc_BBFF28: MemLdStr global_96
  loc_BBFF2B: AryLock
  loc_BBFF2E: Ary1LdPr
  loc_BBFF2F: MemLdRfVar from_stack_1.global_40
  loc_BBFF32: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFF37: AryUnlock
  loc_BBFF3A: FFreeVar var_A0 = ""
  loc_BBFF41: FLdRfVar var_A0
  loc_BBFF44: FLdPr var_88
  loc_BBFF47: from_stack_1 = clsliqucome.CallLicoReal
  loc_BBFF4C: LitI2_Byte 0
  loc_BBFF4E: LitVar_Missing var_C0
  loc_BBFF51: LitI2_Byte 0
  loc_BBFF53: FLdVar var_A0
  loc_BBFF57: FLdPr Me
  loc_BBFF5A: MemLdStr global_100
  loc_BBFF5D: FLdPr Me
  loc_BBFF60: MemLdStr global_96
  loc_BBFF63: AryLock
  loc_BBFF66: Ary1LdPr
  loc_BBFF67: MemLdRfVar from_stack_1.global_44
  loc_BBFF6A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFF6F: AryUnlock
  loc_BBFF72: FFreeVar var_A0 = ""
  loc_BBFF79: FLdRfVar var_A0
  loc_BBFF7C: FLdPr var_88
  loc_BBFF7F: from_stack_1 = clsliqucome.NucaLicoReal
  loc_BBFF84: LitI2_Byte 0
  loc_BBFF86: LitVar_Missing var_C0
  loc_BBFF89: LitI2_Byte 0
  loc_BBFF8B: FLdVar var_A0
  loc_BBFF8F: FLdPr Me
  loc_BBFF92: MemLdStr global_100
  loc_BBFF95: FLdPr Me
  loc_BBFF98: MemLdStr global_96
  loc_BBFF9B: AryLock
  loc_BBFF9E: Ary1LdPr
  loc_BBFF9F: MemLdRfVar from_stack_1.global_48
  loc_BBFFA2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFFA7: AryUnlock
  loc_BBFFAA: FFreeVar var_A0 = ""
  loc_BBFFB1: FLdRfVar var_A0
  loc_BBFFB4: FLdPr var_88
  loc_BBFFB7: from_stack_1 = clsliqucome.BarrLicoReal
  loc_BBFFBC: LitI2_Byte 0
  loc_BBFFBE: LitVar_Missing var_C0
  loc_BBFFC1: LitI2_Byte 0
  loc_BBFFC3: FLdVar var_A0
  loc_BBFFC7: FLdPr Me
  loc_BBFFCA: MemLdStr global_100
  loc_BBFFCD: FLdPr Me
  loc_BBFFD0: MemLdStr global_96
  loc_BBFFD3: AryLock
  loc_BBFFD6: Ary1LdPr
  loc_BBFFD7: MemLdRfVar from_stack_1.bGenerado
  loc_BBFFDA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFFDF: AryUnlock
  loc_BBFFE2: FFreeVar var_A0 = ""
  loc_BBFFE9: FLdRfVar var_A0
  loc_BBFFEC: FLdPr var_88
  loc_BBFFEF: from_stack_1 = clsliqucome.ManzLicoReal
  loc_BBFFF4: LitI2_Byte 0
  loc_BBFFF6: LitVar_Missing var_C0
  loc_BBFFF9: LitI2_Byte 0
  loc_BBFFFB: FLdVar var_A0
  loc_BBFFFF: FLdPr Me
  loc_BC0002: MemLdStr global_100
  loc_BC0005: FLdPr Me
  loc_BC0008: MemLdStr global_96
  loc_BC000B: AryLock
  loc_BC000E: Ary1LdPr
  loc_BC000F: MemLdRfVar from_stack_1.global_56
  loc_BC0012: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0017: AryUnlock
  loc_BC001A: FFreeVar var_A0 = ""
  loc_BC0021: FLdRfVar var_A0
  loc_BC0024: FLdPr var_88
  loc_BC0027: from_stack_1 = clsliqucome.CasaLicoReal
  loc_BC002C: LitI2_Byte 0
  loc_BC002E: LitVar_Missing var_C0
  loc_BC0031: LitI2_Byte 0
  loc_BC0033: FLdVar var_A0
  loc_BC0037: FLdPr Me
  loc_BC003A: MemLdStr global_100
  loc_BC003D: FLdPr Me
  loc_BC0040: MemLdStr global_96
  loc_BC0043: AryLock
  loc_BC0046: Ary1LdPr
  loc_BC0047: MemLdRfVar from_stack_1.global_60
  loc_BC004A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC004F: AryUnlock
  loc_BC0052: FFreeVar var_A0 = ""
  loc_BC0059: FLdRfVar var_A0
  loc_BC005C: FLdPr var_88
  loc_BC005F: from_stack_1 = clsliqucome.UbicLicoReal
  loc_BC0064: LitI2_Byte 0
  loc_BC0066: LitVar_Missing var_C0
  loc_BC0069: LitI2_Byte 0
  loc_BC006B: FLdVar var_A0
  loc_BC006F: FLdPr Me
  loc_BC0072: MemLdStr global_100
  loc_BC0075: FLdPr Me
  loc_BC0078: MemLdStr global_96
  loc_BC007B: AryLock
  loc_BC007E: Ary1LdPr
  loc_BC007F: MemLdRfVar from_stack_1.global_64
  loc_BC0082: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0087: AryUnlock
  loc_BC008A: FFreeVar var_A0 = ""
  loc_BC0091: FLdRfVar var_A0
  loc_BC0094: FLdPr var_88
  loc_BC0097: from_stack_1 = clsliqucome.LocaLicoReal
  loc_BC009C: LitI2_Byte 0
  loc_BC009E: LitVar_Missing var_C0
  loc_BC00A1: LitI2_Byte 0
  loc_BC00A3: FLdVar var_A0
  loc_BC00A7: FLdPr Me
  loc_BC00AA: MemLdStr global_100
  loc_BC00AD: FLdPr Me
  loc_BC00B0: MemLdStr global_96
  loc_BC00B3: AryLock
  loc_BC00B6: Ary1LdPr
  loc_BC00B7: MemLdRfVar from_stack_1.global_68
  loc_BC00BA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC00BF: AryUnlock
  loc_BC00C2: FFreeVar var_A0 = ""
  loc_BC00C9: FLdRfVar var_A0
  loc_BC00CC: FLdPr var_88
  loc_BC00CF: from_stack_1 = clsliqucome.CopoLicoReal
  loc_BC00D4: LitI2_Byte 0
  loc_BC00D6: LitVar_Missing var_C0
  loc_BC00D9: LitI2_Byte 0
  loc_BC00DB: FLdVar var_A0
  loc_BC00DF: FLdPr Me
  loc_BC00E2: MemLdStr global_100
  loc_BC00E5: FLdPr Me
  loc_BC00E8: MemLdStr global_96
  loc_BC00EB: AryLock
  loc_BC00EE: Ary1LdPr
  loc_BC00EF: MemLdRfVar from_stack_1.global_72
  loc_BC00F2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC00F7: AryUnlock
  loc_BC00FA: FFreeVar var_A0 = ""
  loc_BC0101: FLdRfVar var_C4
  loc_BC0104: FLdPr var_88
  loc_BC0107: from_stack_1 = clsliqucome.CodiCome
  loc_BC010C: LitI2_Byte 0
  loc_BC010E: LitVar_Missing var_A0
  loc_BC0111: LitI2_Byte 0
  loc_BC0113: ILdRf var_C4
  loc_BC0116: CVarI4
  loc_BC011A: PopAdLdVar
  loc_BC011B: FLdPr Me
  loc_BC011E: MemLdStr global_100
  loc_BC0121: FLdPr Me
  loc_BC0124: MemLdStr global_96
  loc_BC0127: AryLock
  loc_BC012A: Ary1LdPr
  loc_BC012B: MemLdRfVar from_stack_1.global_76
  loc_BC012E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0133: AryUnlock
  loc_BC0136: FFree1Var var_A0 = ""
  loc_BC0139: FLdRfVar var_C4
  loc_BC013C: FLdPr var_88
  loc_BC013F: from_stack_1 = clsliqucome.OrdeLico
  loc_BC0144: LitI2_Byte 0
  loc_BC0146: LitVar_Missing var_A0
  loc_BC0149: LitI2_Byte 0
  loc_BC014B: ILdRf var_C4
  loc_BC014E: CVarI4
  loc_BC0152: PopAdLdVar
  loc_BC0153: FLdPr Me
  loc_BC0156: MemLdStr global_100
  loc_BC0159: FLdPr Me
  loc_BC015C: MemLdStr global_96
  loc_BC015F: AryLock
  loc_BC0162: Ary1LdPr
  loc_BC0163: MemLdRfVar from_stack_1.global_84
  loc_BC0166: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC016B: AryUnlock
  loc_BC016E: FFree1Var var_A0 = ""
  loc_BC0171: FLdRfVar var_A0
  loc_BC0174: FLdPr var_88
  loc_BC0177: from_stack_1 = clsliqucome.CodiUsua
  loc_BC017C: LitI2_Byte 0
  loc_BC017E: LitVar_Missing var_C0
  loc_BC0181: LitI2_Byte 0
  loc_BC0183: FLdVar var_A0
  loc_BC0187: FLdPr Me
  loc_BC018A: MemLdStr global_100
  loc_BC018D: FLdPr Me
  loc_BC0190: MemLdStr global_96
  loc_BC0193: AryLock
  loc_BC0196: Ary1LdPr
  loc_BC0197: MemLdRfVar from_stack_1.global_88
  loc_BC019A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC019F: AryUnlock
  loc_BC01A2: FFreeVar var_A0 = ""
  loc_BC01A9: FLdRfVar var_A0
  loc_BC01AC: FLdPr var_88
  loc_BC01AF: from_stack_1 = clsliqucome.RazoCome
  loc_BC01B4: LitI2_Byte 0
  loc_BC01B6: LitVar_Missing var_C0
  loc_BC01B9: LitI2_Byte 0
  loc_BC01BB: FLdVar var_A0
  loc_BC01BF: FLdPr Me
  loc_BC01C2: MemLdStr global_100
  loc_BC01C5: FLdPr Me
  loc_BC01C8: MemLdStr global_96
  loc_BC01CB: AryLock
  loc_BC01CE: Ary1LdPr
  loc_BC01CF: MemLdRfVar from_stack_1.global_80
  loc_BC01D2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC01D7: AryUnlock
  loc_BC01DA: FFreeVar var_A0 = ""
  loc_BC01E1: FLdRfVar var_DC
  loc_BC01E4: FLdPr var_88
  loc_BC01E7: from_stack_1 = clsliqucome.DeudLico
  loc_BC01EC: LitI2_Byte 0
  loc_BC01EE: LitVar_Missing var_A0
  loc_BC01F1: LitI2_Byte &HFF
  loc_BC01F3: FLdFPR8 var_DC
  loc_BC01F6: CVarR8
  loc_BC01FA: PopAdLdVar
  loc_BC01FB: FLdPr Me
  loc_BC01FE: MemLdStr global_100
  loc_BC0201: FLdPr Me
  loc_BC0204: MemLdStr global_96
  loc_BC0207: AryLock
  loc_BC020A: Ary1LdPr
  loc_BC020B: MemLdRfVar from_stack_1.global_92
  loc_BC020E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0213: AryUnlock
  loc_BC0216: FFree1Var var_A0 = ""
  loc_BC0219: FLdRfVar var_A0
  loc_BC021C: FLdPr var_88
  loc_BC021F: from_stack_1 = clsliqucome.Bimestres
  loc_BC0224: FLdRfVar var_A0
  loc_BC0227: CStrVarVal var_8C
  loc_BC022B: ImpAdCallI2 StrReverse()
  loc_BC0230: FStStr var_100
  loc_BC0233: LitStr ","
  loc_BC0236: ImpAdCallI2 StrReverse()
  loc_BC023B: FStStr var_104
  loc_BC023E: LitStr " y"
  loc_BC0241: ImpAdCallI2 StrReverse()
  loc_BC0246: FStStr var_108
  loc_BC0249: LitI4 0
  loc_BC024E: LitI4 1
  loc_BC0253: LitI4 1
  loc_BC0258: FLdZeroAd var_108
  loc_BC025B: FStStrNoPop var_E8
  loc_BC025E: FLdZeroAd var_104
  loc_BC0261: FStStrNoPop var_E4
  loc_BC0264: FLdZeroAd var_100
  loc_BC0267: FStStrNoPop var_E0
  loc_BC026A: ImpAdCallI2 Replace(, , , , , )
  loc_BC026F: FStStrNoPop var_EC
  loc_BC0272: ImpAdCallI2 StrReverse()
  loc_BC0277: FStStr var_10C
  loc_BC027A: LitI2_Byte 0
  loc_BC027C: LitVar_Missing var_FC
  loc_BC027F: LitI2_Byte 0
  loc_BC0281: FLdZeroAd var_10C
  loc_BC0284: CVarStr var_C0
  loc_BC0287: PopAdLdVar
  loc_BC0288: FLdPr Me
  loc_BC028B: MemLdStr global_100
  loc_BC028E: FLdPr Me
  loc_BC0291: MemLdStr global_96
  loc_BC0294: AryLock
  loc_BC0297: Ary1LdPr
  loc_BC0298: MemLdRfVar from_stack_1.global_96
  loc_BC029B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC02A0: AryUnlock
  loc_BC02A3: FFreeStr var_8C = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_BC02B8: FFreeVar var_A0 = "": var_C0 = ""
  loc_BC02C1: FLdRfVar var_C4
  loc_BC02C4: FLdPr var_88
  loc_BC02C7: from_stack_1 = clsliqucome.CodiCome
  loc_BC02CC: FLdRfVar var_110
  loc_BC02CF: FLdPr var_88
  loc_BC02D2: from_stack_1 = clsliqucome.OrdeLico
  loc_BC02D7: ILdRf var_110
  loc_BC02DA: CStrI4
  loc_BC02DC: FStStrNoPop var_E0
  loc_BC02DF: ILdRf var_C4
  loc_BC02E2: CStrI4
  loc_BC02E4: FStStrNoPop var_8C
  loc_BC02E7: LitI2_Byte 2
  loc_BC02E9: CUI1I2
  loc_BC02EB: ImpAdCallI2  = Proc_57_40_AD4A10(, )
  loc_BC02F0: PopTmpLdAdStr var_118
  loc_BC02F3: FLdPr Me
  loc_BC02F6: MemLdStr global_100
  loc_BC02F9: FLdPr Me
  loc_BC02FC: MemLdStr global_96
  loc_BC02FF: Ary1LdPr
  loc_BC0300: MemLdRfVar from_stack_1.global_104
  loc_BC0303: StAryMove
  loc_BC0305: FFreeStr var_8C = ""
  loc_BC030C: LitNothing
  loc_BC030E: FStAd var_88 
  loc_BC0312: Call Proc_311_18_B694C4()
  loc_BC0317: Call Proc_311_19_BD0F74()
  loc_BC031C: ExitProcHresult
End Function

Private Function Proc_311_18_B694C4() 'B694C4
  'Data Table: 4A35B0
  loc_B690BC: FLdPr Me
  loc_B690BF: MemLdRfVar from_stack_1.global_92
  loc_B690C2: NewIfNullAd
  loc_B690C5: FStAd var_88 
  loc_B690C9: LitStr "SELECT licodeta.CodiRubr, licodeta.CodiSubr, IFNULL(DetaSubr,'') DetaSubr, IFNULL(servcome.CateSeco,'') CateSeco,  IFNULL(servcome.CantSeco,'') CantSeco, CAST(licodeta.TotaLcde AS DOUBLE(10,2)) as TotaLico"
  loc_B690CC: LitStr " FROM  licodeta "
  loc_B690CF: ConcatStr
  loc_B690D0: FStStrNoPop var_8C
  loc_B690D3: LitStr " LEFT JOIN subrubro ON subrubro.CodiRamo = licodeta.CodiRamo"
  loc_B690D6: ConcatStr
  loc_B690D7: FStStrNoPop var_90
  loc_B690DA: LitStr " AND subrubro.CodiRubr = licodeta.CodiRubr"
  loc_B690DD: ConcatStr
  loc_B690DE: FStStrNoPop var_94
  loc_B690E1: LitStr " AND subrubro.PeriOrde = "
  loc_B690E4: ConcatStr
  loc_B690E5: FStStrNoPop var_9C
  loc_B690E8: FLdRfVar var_96
  loc_B690EB: FLdPr Me
  loc_B690EE: MemLdRfVar from_stack_1.global_84
  loc_B690F1: NewIfNullPr clsliquidacion
  loc_B690F4: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B690F9: FLdI2 var_96
  loc_B690FC: CStrUI1
  loc_B690FE: FStStrNoPop var_A0
  loc_B69101: ConcatStr
  loc_B69102: FStStrNoPop var_A4
  loc_B69105: LitStr " AND subrubro.CodiSubr = licodeta.CodiSubr"
  loc_B69108: ConcatStr
  loc_B69109: FStStrNoPop var_A8
  loc_B6910C: LitStr " LEFT JOIN servcome ON servcome.CodiCome = licodeta.CodiCome"
  loc_B6910F: ConcatStr
  loc_B69110: FStStrNoPop var_AC
  loc_B69113: LitStr " AND servcome.CodiRamo =  licodeta.CodiRamo"
  loc_B69116: ConcatStr
  loc_B69117: FStStrNoPop var_B0
  loc_B6911A: LitStr " AND servcome.CodiRubr =  licodeta.CodiRubr"
  loc_B6911D: ConcatStr
  loc_B6911E: FStStrNoPop var_B4
  loc_B69121: LitStr " AND servcome.CodiSubr =  licodeta.CodiSubr"
  loc_B69124: ConcatStr
  loc_B69125: FStStrNoPop var_B8
  loc_B69128: LitStr " AND servcome.PrioSeco =  licodeta.NumeLcde"
  loc_B6912B: ConcatStr
  loc_B6912C: FStStrNoPop var_BC
  loc_B6912F: LitStr " WHERE licodeta.CodiSubr<>999 AND PeriLiqu = "
  loc_B69132: ConcatStr
  loc_B69133: FStStrNoPop var_C4
  loc_B69136: FLdRfVar var_BE
  loc_B69139: FLdPr Me
  loc_B6913C: MemLdRfVar from_stack_1.global_84
  loc_B6913F: NewIfNullPr clsliquidacion
  loc_B69142: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B69147: FLdI2 var_BE
  loc_B6914A: CStrUI1
  loc_B6914C: FStStrNoPop var_C8
  loc_B6914F: ConcatStr
  loc_B69150: FStStrNoPop var_CC
  loc_B69153: LitStr " AND CodiTili = "
  loc_B69156: ConcatStr
  loc_B69157: FStStrNoPop var_D4
  loc_B6915A: FLdRfVar var_CE
  loc_B6915D: FLdPr Me
  loc_B69160: MemLdRfVar from_stack_1.global_84
  loc_B69163: NewIfNullPr clsliquidacion
  loc_B69166: from_stack_1 = clsliquidacion.CodiTili
  loc_B6916B: FLdUI1
  loc_B6916F: CStrI2
  loc_B69171: FStStrNoPop var_D8
  loc_B69174: ConcatStr
  loc_B69175: FStStrNoPop var_DC
  loc_B69178: LitStr " AND NumeLiqu = "
  loc_B6917B: ConcatStr
  loc_B6917C: FStStrNoPop var_E4
  loc_B6917F: FLdRfVar var_DE
  loc_B69182: FLdPr Me
  loc_B69185: MemLdRfVar from_stack_1.global_84
  loc_B69188: NewIfNullPr clsliquidacion
  loc_B6918B: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B69190: FLdI2 var_DE
  loc_B69193: CStrUI1
  loc_B69195: FStStrNoPop var_E8
  loc_B69198: ConcatStr
  loc_B69199: FStStrNoPop var_EC
  loc_B6919C: LitStr " AND BimeLiqu = "
  loc_B6919F: ConcatStr
  loc_B691A0: FStStrNoPop var_F4
  loc_B691A3: FLdRfVar var_EE
  loc_B691A6: FLdPr Me
  loc_B691A9: MemLdRfVar from_stack_1.global_88
  loc_B691AC: NewIfNullPr clsliqucome
  loc_B691AF: from_stack_1 = clsliqucome.BimeLiqu
  loc_B691B4: FLdUI1
  loc_B691B8: CStrI2
  loc_B691BA: FStStrNoPop var_F8
  loc_B691BD: ConcatStr
  loc_B691BE: FStStrNoPop var_FC
  loc_B691C1: LitStr " AND CodiConc = '13020201' AND licodeta.TipoVenc = 1 AND licodeta.CodiCome = "
  loc_B691C4: ConcatStr
  loc_B691C5: FStStrNoPop var_100
  loc_B691C8: FLdPr Me
  loc_B691CB: MemLdStr global_100
  loc_B691CE: FLdPr Me
  loc_B691D1: MemLdStr global_96
  loc_B691D4: Ary1LdPr
  loc_B691D5: MemLdStr global_76
  loc_B691D8: ConcatStr
  loc_B691D9: FStStrNoPop var_104
  loc_B691DC: LitStr " ORDER BY TotaLico DESC LIMIT 11"
  loc_B691DF: ConcatStr
  loc_B691E0: FStStrNoPop var_108
  loc_B691E3: FLdPr var_88
  loc_B691E6: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_B691EB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D4 = "": var_D8 = "": var_DC = "": var_E4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B69224: FLdRfVar var_10C
  loc_B69227: FLdPr var_88
  loc_B6922A: from_stack_1 = clsliqucome.RecordCount
  loc_B6922F: ILdRf var_10C
  loc_B69232: LitI4 0
  loc_B69237: GtI4
  loc_B69238: BranchF loc_B69497
  loc_B6923B: LitI2_Byte 0
  loc_B6923D: FLdPr Me
  loc_B69240: MemStI2 global_104
  loc_B69243: FLdPr var_88
  loc_B69246: Call clsliqucome.MoveFirst()
  loc_B6924B: FLdRfVar var_10C
  loc_B6924E: FLdPr var_88
  loc_B69251: from_stack_1 = clsliqucome.RecordCount
  loc_B69256: ILdRf var_10C
  loc_B69259: LitI4 &HA
  loc_B6925E: GtI4
  loc_B6925F: FLdPr Me
  loc_B69262: MemLdStr global_100
  loc_B69265: FLdPr Me
  loc_B69268: MemLdStr global_96
  loc_B6926B: Ary1LdPr
  loc_B6926C: MemStI2 global_100
  loc_B6926F: FLdPr Me
  loc_B69272: MemLdI2 global_104
  loc_B69275: LitI2_Byte 1
  loc_B69277: AddI2
  loc_B69278: FLdPr Me
  loc_B6927B: MemStI2 global_104
  loc_B6927E: LitI4 0
  loc_B69283: FLdPr Me
  loc_B69286: MemLdI2 global_104
  loc_B69289: CI4UI1
  loc_B6928A: FLdPr Me
  loc_B6928D: MemLdStr global_100
  loc_B69290: FLdPr Me
  loc_B69293: MemLdStr global_96
  loc_B69296: Ary1LdPr
  loc_B69297: MemLdRfVar from_stack_1.global_108
  loc_B6929A: RedimPreserve
  loc_B692A4: FLdRfVar var_11C
  loc_B692A7: FLdPr var_88
  loc_B692AA: from_stack_1 = clsliqucome.CodiRubr
  loc_B692AF: LitI2_Byte 0
  loc_B692B1: LitVar_Missing var_144
  loc_B692B4: LitI2_Byte 0
  loc_B692B6: FLdVar var_11C
  loc_B692BA: FLdPr Me
  loc_B692BD: MemLdI2 global_104
  loc_B692C0: CI4UI1
  loc_B692C1: FLdPr Me
  loc_B692C4: MemLdStr global_100
  loc_B692C7: FLdPr Me
  loc_B692CA: MemLdStr global_96
  loc_B692CD: AryLock
  loc_B692D0: Ary1LdPr
  loc_B692D1: MemLdStr global_108
  loc_B692D4: AryLock
  loc_B692D7: Ary1LdPr
  loc_B692D8: MemLdRfVar from_stack_1.global_0
  loc_B692DB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B692E0: AryUnlock
  loc_B692E3: AryUnlock
  loc_B692E6: FFreeVar var_11C = ""
  loc_B692ED: FLdRfVar var_11C
  loc_B692F0: FLdPr var_88
  loc_B692F3: from_stack_1 = clsliqucome.CodiSubr
  loc_B692F8: LitI2_Byte 0
  loc_B692FA: LitVar_Missing var_144
  loc_B692FD: LitI2_Byte 0
  loc_B692FF: FLdVar var_11C
  loc_B69303: FLdPr Me
  loc_B69306: MemLdI2 global_104
  loc_B69309: CI4UI1
  loc_B6930A: FLdPr Me
  loc_B6930D: MemLdStr global_100
  loc_B69310: FLdPr Me
  loc_B69313: MemLdStr global_96
  loc_B69316: AryLock
  loc_B69319: Ary1LdPr
  loc_B6931A: MemLdStr global_108
  loc_B6931D: AryLock
  loc_B69320: Ary1LdPr
  loc_B69321: MemLdRfVar from_stack_1.global_4
  loc_B69324: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B69329: AryUnlock
  loc_B6932C: AryUnlock
  loc_B6932F: FFreeVar var_11C = ""
  loc_B69336: FLdRfVar var_11C
  loc_B69339: FLdPr var_88
  loc_B6933C: from_stack_1 = clsliqucome.DetaSubr
  loc_B69341: LitI2_Byte 0
  loc_B69343: LitVar_Missing var_144
  loc_B69346: LitI2_Byte 0
  loc_B69348: FLdVar var_11C
  loc_B6934C: FLdPr Me
  loc_B6934F: MemLdI2 global_104
  loc_B69352: CI4UI1
  loc_B69353: FLdPr Me
  loc_B69356: MemLdStr global_100
  loc_B69359: FLdPr Me
  loc_B6935C: MemLdStr global_96
  loc_B6935F: AryLock
  loc_B69362: Ary1LdPr
  loc_B69363: MemLdStr global_108
  loc_B69366: AryLock
  loc_B69369: Ary1LdPr
  loc_B6936A: MemLdRfVar from_stack_1.global_8
  loc_B6936D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B69372: AryUnlock
  loc_B69375: AryUnlock
  loc_B69378: FFreeVar var_11C = ""
  loc_B6937F: FLdRfVar var_11C
  loc_B69382: FLdPr var_88
  loc_B69385: from_stack_1 = clsliqucome.CateSeco
  loc_B6938A: LitI2_Byte 0
  loc_B6938C: LitVar_Missing var_144
  loc_B6938F: LitI2_Byte 0
  loc_B69391: FLdVar var_11C
  loc_B69395: FLdPr Me
  loc_B69398: MemLdI2 global_104
  loc_B6939B: CI4UI1
  loc_B6939C: FLdPr Me
  loc_B6939F: MemLdStr global_100
  loc_B693A2: FLdPr Me
  loc_B693A5: MemLdStr global_96
  loc_B693A8: AryLock
  loc_B693AB: Ary1LdPr
  loc_B693AC: MemLdStr global_108
  loc_B693AF: AryLock
  loc_B693B2: Ary1LdPr
  loc_B693B3: MemLdRfVar from_stack_1.global_12
  loc_B693B6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B693BB: AryUnlock
  loc_B693BE: AryUnlock
  loc_B693C1: FFreeVar var_11C = ""
  loc_B693C8: FLdRfVar var_10C
  loc_B693CB: FLdPr var_88
  loc_B693CE: from_stack_1 = clsliqucome.CantSeco
  loc_B693D3: LitI2_Byte 0
  loc_B693D5: LitVar_Missing var_11C
  loc_B693D8: LitI2_Byte 0
  loc_B693DA: ILdRf var_10C
  loc_B693DD: CVarI4
  loc_B693E1: PopAdLdVar
  loc_B693E2: FLdPr Me
  loc_B693E5: MemLdI2 global_104
  loc_B693E8: CI4UI1
  loc_B693E9: FLdPr Me
  loc_B693EC: MemLdStr global_100
  loc_B693EF: FLdPr Me
  loc_B693F2: MemLdStr global_96
  loc_B693F5: AryLock
  loc_B693F8: Ary1LdPr
  loc_B693F9: MemLdStr global_108
  loc_B693FC: AryLock
  loc_B693FF: Ary1LdPr
  loc_B69400: MemLdRfVar from_stack_1.global_16
  loc_B69403: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B69408: AryUnlock
  loc_B6940B: AryUnlock
  loc_B6940E: FFree1Var var_11C = ""
  loc_B69411: FLdRfVar var_15C
  loc_B69414: FLdPr var_88
  loc_B69417: from_stack_1 = clsliqucome.TotaLico
  loc_B6941C: LitI2_Byte 0
  loc_B6941E: LitVar_Missing var_11C
  loc_B69421: LitI2_Byte &HFF
  loc_B69423: FLdFPR8 var_15C
  loc_B69426: CVarR8
  loc_B6942A: PopAdLdVar
  loc_B6942B: FLdPr Me
  loc_B6942E: MemLdI2 global_104
  loc_B69431: CI4UI1
  loc_B69432: FLdPr Me
  loc_B69435: MemLdStr global_100
  loc_B69438: FLdPr Me
  loc_B6943B: MemLdStr global_96
  loc_B6943E: AryLock
  loc_B69441: Ary1LdPr
  loc_B69442: MemLdStr global_108
  loc_B69445: AryLock
  loc_B69448: Ary1LdPr
  loc_B69449: MemLdRfVar from_stack_1.global_20
  loc_B6944C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B69451: AryUnlock
  loc_B69454: AryUnlock
  loc_B69457: FFree1Var var_11C = ""
  loc_B6945A: LitI2_Byte 1
  loc_B6945C: PopTmpLdAd2 var_96
  loc_B6945F: FLdPr var_88
  loc_B69462: Call clsliqucome.Move(from_stack_1v)
  loc_B69467: FLdRfVar var_96
  loc_B6946A: FLdPr var_88
  loc_B6946D: from_stack_1 = clsliqucome.EOF
  loc_B69472: FLdI2 var_96
  loc_B69475: FLdPr Me
  loc_B69478: MemLdI2 global_104
  loc_B6947B: LitI2_Byte &HA
  loc_B6947D: EqI2
  loc_B6947E: FLdPr Me
  loc_B69481: MemLdStr global_100
  loc_B69484: FLdPr Me
  loc_B69487: MemLdStr global_96
  loc_B6948A: Ary1LdPr
  loc_B6948B: MemLdI2 global_100
  loc_B6948E: AndI4
  loc_B6948F: OrI4
  loc_B69490: NotI4
  loc_B69491: BranchT loc_B6926F
  loc_B69494: Branch loc_B694BB
  loc_B69497: LitI4 0
  loc_B6949C: LitI4 0
  loc_B694A1: FLdPr Me
  loc_B694A4: MemLdStr global_100
  loc_B694A7: FLdPr Me
  loc_B694AA: MemLdStr global_96
  loc_B694AD: Ary1LdPr
  loc_B694AE: MemLdRfVar from_stack_1.global_108
  loc_B694B1: RedimPreserve
  loc_B694BB: LitNothing
  loc_B694BD: FStAd var_88 
  loc_B694C1: ExitProcHresult
End Function

Private Function Proc_311_19_BD0F74() 'BD0F74
  'Data Table: 4A35B0
  loc_BD0890: FLdPr Me
  loc_BD0893: MemLdRfVar from_stack_1.global_88
  loc_BD0896: NewIfNullAd
  loc_BD0899: FStAd var_8C 
  loc_BD089D: FLdRfVar var_8E
  loc_BD08A0: FLdPr var_8C
  loc_BD08A3: from_stack_1 = clsliqucome.TipoVenc
  loc_BD08A8: FLdUI1
  loc_BD08AC: CI2UI1
  loc_BD08AE: LitI2_Byte 2
  loc_BD08B0: EqI2
  loc_BD08B1: BranchF loc_BD0B68
  loc_BD08B4: FLdPr Me
  loc_BD08B7: MemLdUI1 global_106
  loc_BD08BB: CI2UI1
  loc_BD08BD: FStI2 var_86
  loc_BD08C0: LitI2_Byte 0
  loc_BD08C2: CUI1I2
  loc_BD08C4: FLdPr Me
  loc_BD08C7: MemStUI1
  loc_BD08CB: LitI2_Byte 0
  loc_BD08CD: FLdPr Me
  loc_BD08D0: MemLdUI1 global_106
  loc_BD08D4: CI4UI1
  loc_BD08D5: FLdPr Me
  loc_BD08D8: MemLdStr global_100
  loc_BD08DB: FLdPr Me
  loc_BD08DE: MemLdStr global_96
  loc_BD08E1: Ary1LdPr
  loc_BD08E2: MemLdStr global_112
  loc_BD08E5: Ary1LdPr
  loc_BD08E6: MemStI2 global_0
  loc_BD08E9: FLdRfVar var_8E
  loc_BD08EC: FLdPr var_8C
  loc_BD08EF: from_stack_1 = clsliqucome.PeriBole
  loc_BD08F4: FLdRfVar var_94
  loc_BD08F7: FLdPr var_8C
  loc_BD08FA: from_stack_1 = clsliqucome.NumeBole
  loc_BD08FF: FLdRfVar var_96
  loc_BD0902: FLdPr var_8C
  loc_BD0905: from_stack_1 = clsliqucome.BimeLiqu
  loc_BD090A: FLdRfVar var_9C
  loc_BD090D: FLdPr var_8C
  loc_BD0910: from_stack_1 = clsliqucome.CodiCome
  loc_BD0915: FLdRfVar var_A4
  loc_BD0918: FLdPr var_8C
  loc_BD091B: from_stack_1 = clsliqucome.TotaBole
  loc_BD0920: LitStr "31/03/2024"
  loc_BD0923: FLdFPR8 var_A4
  loc_BD0926: CStrR8
  loc_BD0928: FStStrNoPop var_B8
  loc_BD092B: LitI2_Byte 2
  loc_BD092D: CUI1I2
  loc_BD092F: ILdRf var_9C
  loc_BD0932: CStrI4
  loc_BD0934: FStStrNoPop var_B4
  loc_BD0937: FLdUI1
  loc_BD093B: CStrI2
  loc_BD093D: FStStrNoPop var_B0
  loc_BD0940: ILdRf var_94
  loc_BD0943: CStrI4
  loc_BD0945: FStStrNoPop var_AC
  loc_BD0948: FLdI2 var_8E
  loc_BD094B: CStrUI1
  loc_BD094D: FStStrNoPop var_A8
  loc_BD0950: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_BD0955: PopTmpLdAdStr var_C0
  loc_BD0958: FLdPr Me
  loc_BD095B: MemLdUI1 global_106
  loc_BD095F: CI4UI1
  loc_BD0960: FLdPr Me
  loc_BD0963: MemLdStr global_100
  loc_BD0966: FLdPr Me
  loc_BD0969: MemLdStr global_96
  loc_BD096C: Ary1LdPr
  loc_BD096D: MemLdStr global_112
  loc_BD0970: Ary1LdPr
  loc_BD0971: MemLdRfVar from_stack_1.global_20
  loc_BD0974: StAryMove
  loc_BD0976: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BD0983: FLdPr Me
  loc_BD0986: MemLdRfVar from_stack_1.global_92
  loc_BD0989: NewIfNullAd
  loc_BD098C: FStAd var_C4 
  loc_BD0990: LitStr "SELECT CAST(sum(if(CodiSubr <> 999,ImpoLcde,0)) AS DOUBLE(10,2)) as ImpoLico,"
  loc_BD0993: LitStr " CAST(sum(if(CodiSubr <> 999,DecaLcde+ExceLcde,0)) AS DOUBLE(10,2)) as DescLico,"
  loc_BD0996: ConcatStr
  loc_BD0997: FStStrNoPop var_A8
  loc_BD099A: LitStr " CAST(sum(if(CodiSubr = 999,ImpoLcde-DecaLcde,0)) AS DOUBLE(10,2)) as CEmision"
  loc_BD099D: ConcatStr
  loc_BD099E: FStStrNoPop var_AC
  loc_BD09A1: LitStr " FROM licodeta"
  loc_BD09A4: ConcatStr
  loc_BD09A5: FStStrNoPop var_B0
  loc_BD09A8: LitStr " WHERE PeriLiqu = "
  loc_BD09AB: ConcatStr
  loc_BD09AC: FStStrNoPop var_B4
  loc_BD09AF: FLdRfVar var_8E
  loc_BD09B2: FLdPr Me
  loc_BD09B5: MemLdRfVar from_stack_1.global_84
  loc_BD09B8: NewIfNullPr clsliquidacion
  loc_BD09BB: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BD09C0: FLdI2 var_8E
  loc_BD09C3: CStrUI1
  loc_BD09C5: FStStrNoPop var_B8
  loc_BD09C8: ConcatStr
  loc_BD09C9: FStStrNoPop var_C8
  loc_BD09CC: LitStr " AND CodiTili = "
  loc_BD09CF: ConcatStr
  loc_BD09D0: FStStrNoPop var_CC
  loc_BD09D3: FLdRfVar var_96
  loc_BD09D6: FLdPr Me
  loc_BD09D9: MemLdRfVar from_stack_1.global_84
  loc_BD09DC: NewIfNullPr clsliquidacion
  loc_BD09DF: from_stack_1 = clsliquidacion.CodiTili
  loc_BD09E4: FLdUI1
  loc_BD09E8: CStrI2
  loc_BD09EA: FStStrNoPop var_D0
  loc_BD09ED: ConcatStr
  loc_BD09EE: FStStrNoPop var_D4
  loc_BD09F1: LitStr " AND NumeLiqu = "
  loc_BD09F4: ConcatStr
  loc_BD09F5: FStStrNoPop var_DC
  loc_BD09F8: FLdRfVar var_D6
  loc_BD09FB: FLdPr Me
  loc_BD09FE: MemLdRfVar from_stack_1.global_84
  loc_BD0A01: NewIfNullPr clsliquidacion
  loc_BD0A04: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BD0A09: FLdI2 var_D6
  loc_BD0A0C: CStrUI1
  loc_BD0A0E: FStStrNoPop var_E0
  loc_BD0A11: ConcatStr
  loc_BD0A12: FStStrNoPop var_E4
  loc_BD0A15: LitStr " AND TipoVenc = 2 AND CodiCome = "
  loc_BD0A18: ConcatStr
  loc_BD0A19: FStStrNoPop var_E8
  loc_BD0A1C: FLdRfVar var_94
  loc_BD0A1F: FLdPr Me
  loc_BD0A22: MemLdRfVar from_stack_1.global_88
  loc_BD0A25: NewIfNullPr clsliqucome
  loc_BD0A28: from_stack_1 = clsliqucome.CodiCome
  loc_BD0A2D: ILdRf var_94
  loc_BD0A30: CStrI4
  loc_BD0A32: FStStrNoPop var_EC
  loc_BD0A35: ConcatStr
  loc_BD0A36: FStStrNoPop var_F0
  loc_BD0A39: FLdPr var_C4
  loc_BD0A3C: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_BD0A41: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_BD0A62: FLdRfVar var_94
  loc_BD0A65: FLdPr var_C4
  loc_BD0A68: from_stack_1 = clsliqucome.RecordCount
  loc_BD0A6D: ILdRf var_94
  loc_BD0A70: LitI4 0
  loc_BD0A75: GtI4
  loc_BD0A76: BranchF loc_BD0B5F
  loc_BD0A79: FLdPr var_C4
  loc_BD0A7C: Call clsliqucome.MoveFirst()
  loc_BD0A81: FLdRfVar var_A4
  loc_BD0A84: FLdPr var_C4
  loc_BD0A87: from_stack_1 = clsliqucome.ImpoLico
  loc_BD0A8C: LitI2_Byte 0
  loc_BD0A8E: LitVar_Missing var_128
  loc_BD0A91: LitI2_Byte &HFF
  loc_BD0A93: FLdFPR8 var_A4
  loc_BD0A96: CVarR8
  loc_BD0A9A: PopAdLdVar
  loc_BD0A9B: FLdPr Me
  loc_BD0A9E: MemLdUI1 global_106
  loc_BD0AA2: CI4UI1
  loc_BD0AA3: FLdPr Me
  loc_BD0AA6: MemLdStr global_100
  loc_BD0AA9: FLdPr Me
  loc_BD0AAC: MemLdStr global_96
  loc_BD0AAF: AryLock
  loc_BD0AB2: Ary1LdPr
  loc_BD0AB3: MemLdStr global_112
  loc_BD0AB6: AryLock
  loc_BD0AB9: Ary1LdPr
  loc_BD0ABA: MemLdRfVar from_stack_1.global_28
  loc_BD0ABD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0AC2: AryUnlock
  loc_BD0AC5: AryUnlock
  loc_BD0AC8: FFree1Var var_128 = ""
  loc_BD0ACB: FLdRfVar var_A4
  loc_BD0ACE: FLdPr var_C4
  loc_BD0AD1: from_stack_1 = clsliqucome.DescLico
  loc_BD0AD6: LitI2_Byte 0
  loc_BD0AD8: LitVar_Missing var_128
  loc_BD0ADB: LitI2_Byte &HFF
  loc_BD0ADD: FLdFPR8 var_A4
  loc_BD0AE0: CVarR8
  loc_BD0AE4: PopAdLdVar
  loc_BD0AE5: FLdPr Me
  loc_BD0AE8: MemLdUI1 global_106
  loc_BD0AEC: CI4UI1
  loc_BD0AED: FLdPr Me
  loc_BD0AF0: MemLdStr global_100
  loc_BD0AF3: FLdPr Me
  loc_BD0AF6: MemLdStr global_96
  loc_BD0AF9: AryLock
  loc_BD0AFC: Ary1LdPr
  loc_BD0AFD: MemLdStr global_112
  loc_BD0B00: AryLock
  loc_BD0B03: Ary1LdPr
  loc_BD0B04: MemLdRfVar from_stack_1.global_32
  loc_BD0B07: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0B0C: AryUnlock
  loc_BD0B0F: AryUnlock
  loc_BD0B12: FFree1Var var_128 = ""
  loc_BD0B15: FLdRfVar var_128
  loc_BD0B18: FLdPr var_C4
  loc_BD0B1B: from_stack_1 = clsliqucome.CEmision
  loc_BD0B20: LitI2_Byte 0
  loc_BD0B22: LitVar_Missing var_138
  loc_BD0B25: LitI2_Byte &HFF
  loc_BD0B27: FLdVar var_128
  loc_BD0B2B: FLdPr Me
  loc_BD0B2E: MemLdUI1 global_106
  loc_BD0B32: CI4UI1
  loc_BD0B33: FLdPr Me
  loc_BD0B36: MemLdStr global_100
  loc_BD0B39: FLdPr Me
  loc_BD0B3C: MemLdStr global_96
  loc_BD0B3F: AryLock
  loc_BD0B42: Ary1LdPr
  loc_BD0B43: MemLdStr global_112
  loc_BD0B46: AryLock
  loc_BD0B49: Ary1LdPr
  loc_BD0B4A: MemLdRfVar from_stack_1.global_40
  loc_BD0B4D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0B52: AryUnlock
  loc_BD0B55: AryUnlock
  loc_BD0B58: FFreeVar var_128 = ""
  loc_BD0B5F: LitNothing
  loc_BD0B61: FStAd var_C4 
  loc_BD0B65: Branch loc_BD0D3A
  loc_BD0B68: FLdPr Me
  loc_BD0B6B: MemLdUI1 global_106
  loc_BD0B6F: CI2UI1
  loc_BD0B71: LitI2_Byte 1
  loc_BD0B73: AddI2
  loc_BD0B74: CUI1I2
  loc_BD0B76: FLdPr Me
  loc_BD0B79: MemStUI1
  loc_BD0B7D: LitI4 0
  loc_BD0B82: FLdPr Me
  loc_BD0B85: MemLdUI1 global_106
  loc_BD0B89: CI4UI1
  loc_BD0B8A: FLdPr Me
  loc_BD0B8D: MemLdStr global_100
  loc_BD0B90: FLdPr Me
  loc_BD0B93: MemLdStr global_96
  loc_BD0B96: Ary1LdPr
  loc_BD0B97: MemLdRfVar from_stack_1.global_112
  loc_BD0B9A: RedimPreserve
  loc_BD0BA4: LitI2_Byte &HFF
  loc_BD0BA6: FLdPr Me
  loc_BD0BA9: MemLdUI1 global_106
  loc_BD0BAD: CI4UI1
  loc_BD0BAE: FLdPr Me
  loc_BD0BB1: MemLdStr global_100
  loc_BD0BB4: FLdPr Me
  loc_BD0BB7: MemLdStr global_96
  loc_BD0BBA: Ary1LdPr
  loc_BD0BBB: MemLdStr global_112
  loc_BD0BBE: Ary1LdPr
  loc_BD0BBF: MemStI2 global_0
  loc_BD0BC2: FLdRfVar var_8E
  loc_BD0BC5: FLdPr var_8C
  loc_BD0BC8: from_stack_1 = clsliqucome.PeriBole
  loc_BD0BCD: FLdRfVar var_94
  loc_BD0BD0: FLdPr var_8C
  loc_BD0BD3: from_stack_1 = clsliqucome.NumeBole
  loc_BD0BD8: FLdRfVar var_96
  loc_BD0BDB: FLdPr var_8C
  loc_BD0BDE: from_stack_1 = clsliqucome.BimeLiqu
  loc_BD0BE3: FLdRfVar var_9C
  loc_BD0BE6: FLdPr var_8C
  loc_BD0BE9: from_stack_1 = clsliqucome.CodiCome
  loc_BD0BEE: FLdRfVar var_A4
  loc_BD0BF1: FLdPr var_8C
  loc_BD0BF4: from_stack_1 = clsliqucome.TotaBole
  loc_BD0BF9: LitStr "31/12/2024"
  loc_BD0BFC: FLdFPR8 var_A4
  loc_BD0BFF: CStrR8
  loc_BD0C01: FStStrNoPop var_B8
  loc_BD0C04: LitI2_Byte 2
  loc_BD0C06: CUI1I2
  loc_BD0C08: ILdRf var_9C
  loc_BD0C0B: CStrI4
  loc_BD0C0D: FStStrNoPop var_B4
  loc_BD0C10: FLdUI1
  loc_BD0C14: CStrI2
  loc_BD0C16: FStStrNoPop var_B0
  loc_BD0C19: ILdRf var_94
  loc_BD0C1C: CStrI4
  loc_BD0C1E: FStStrNoPop var_AC
  loc_BD0C21: FLdI2 var_8E
  loc_BD0C24: CStrUI1
  loc_BD0C26: FStStrNoPop var_A8
  loc_BD0C29: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_BD0C2E: PopTmpLdAdStr var_C0
  loc_BD0C31: FLdPr Me
  loc_BD0C34: MemLdUI1 global_106
  loc_BD0C38: CI4UI1
  loc_BD0C39: FLdPr Me
  loc_BD0C3C: MemLdStr global_100
  loc_BD0C3F: FLdPr Me
  loc_BD0C42: MemLdStr global_96
  loc_BD0C45: Ary1LdPr
  loc_BD0C46: MemLdStr global_112
  loc_BD0C49: Ary1LdPr
  loc_BD0C4A: MemLdRfVar from_stack_1.global_20
  loc_BD0C4D: StAryMove
  loc_BD0C4F: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BD0C5C: FLdRfVar var_A4
  loc_BD0C5F: FLdPr var_8C
  loc_BD0C62: from_stack_1 = clsliqucome.ImpoLico
  loc_BD0C67: LitI2_Byte 0
  loc_BD0C69: LitVar_Missing var_128
  loc_BD0C6C: LitI2_Byte &HFF
  loc_BD0C6E: FLdFPR8 var_A4
  loc_BD0C71: CVarR8
  loc_BD0C75: PopAdLdVar
  loc_BD0C76: FLdPr Me
  loc_BD0C79: MemLdUI1 global_106
  loc_BD0C7D: CI4UI1
  loc_BD0C7E: FLdPr Me
  loc_BD0C81: MemLdStr global_100
  loc_BD0C84: FLdPr Me
  loc_BD0C87: MemLdStr global_96
  loc_BD0C8A: AryLock
  loc_BD0C8D: Ary1LdPr
  loc_BD0C8E: MemLdStr global_112
  loc_BD0C91: AryLock
  loc_BD0C94: Ary1LdPr
  loc_BD0C95: MemLdRfVar from_stack_1.global_28
  loc_BD0C98: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0C9D: AryUnlock
  loc_BD0CA0: AryUnlock
  loc_BD0CA3: FFree1Var var_128 = ""
  loc_BD0CA6: FLdRfVar var_A4
  loc_BD0CA9: FLdPr var_8C
  loc_BD0CAC: from_stack_1 = clsliqucome.DescLico
  loc_BD0CB1: LitI2_Byte 0
  loc_BD0CB3: LitVar_Missing var_128
  loc_BD0CB6: LitI2_Byte &HFF
  loc_BD0CB8: FLdFPR8 var_A4
  loc_BD0CBB: CVarR8
  loc_BD0CBF: PopAdLdVar
  loc_BD0CC0: FLdPr Me
  loc_BD0CC3: MemLdUI1 global_106
  loc_BD0CC7: CI4UI1
  loc_BD0CC8: FLdPr Me
  loc_BD0CCB: MemLdStr global_100
  loc_BD0CCE: FLdPr Me
  loc_BD0CD1: MemLdStr global_96
  loc_BD0CD4: AryLock
  loc_BD0CD7: Ary1LdPr
  loc_BD0CD8: MemLdStr global_112
  loc_BD0CDB: AryLock
  loc_BD0CDE: Ary1LdPr
  loc_BD0CDF: MemLdRfVar from_stack_1.global_32
  loc_BD0CE2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0CE7: AryUnlock
  loc_BD0CEA: AryUnlock
  loc_BD0CED: FFree1Var var_128 = ""
  loc_BD0CF0: FLdRfVar var_128
  loc_BD0CF3: FLdPr var_8C
  loc_BD0CF6: from_stack_1 = clsliqucome.CEmision
  loc_BD0CFB: LitI2_Byte 0
  loc_BD0CFD: LitVar_Missing var_138
  loc_BD0D00: LitI2_Byte &HFF
  loc_BD0D02: FLdVar var_128
  loc_BD0D06: FLdPr Me
  loc_BD0D09: MemLdUI1 global_106
  loc_BD0D0D: CI4UI1
  loc_BD0D0E: FLdPr Me
  loc_BD0D11: MemLdStr global_100
  loc_BD0D14: FLdPr Me
  loc_BD0D17: MemLdStr global_96
  loc_BD0D1A: AryLock
  loc_BD0D1D: Ary1LdPr
  loc_BD0D1E: MemLdStr global_112
  loc_BD0D21: AryLock
  loc_BD0D24: Ary1LdPr
  loc_BD0D25: MemLdRfVar from_stack_1.global_40
  loc_BD0D28: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0D2D: AryUnlock
  loc_BD0D30: AryUnlock
  loc_BD0D33: FFreeVar var_128 = ""
  loc_BD0D3A: FLdRfVar var_8E
  loc_BD0D3D: FLdPr var_8C
  loc_BD0D40: from_stack_1 = clsliqucome.BimeLiqu
  loc_BD0D45: LitI2_Byte 0
  loc_BD0D47: LitVar_Missing var_128
  loc_BD0D4A: LitI2_Byte 0
  loc_BD0D4C: FLdUI1
  loc_BD0D50: CVarUI1
  loc_BD0D54: PopAdLdVar
  loc_BD0D55: FLdPr Me
  loc_BD0D58: MemLdUI1 global_106
  loc_BD0D5C: CI4UI1
  loc_BD0D5D: FLdPr Me
  loc_BD0D60: MemLdStr global_100
  loc_BD0D63: FLdPr Me
  loc_BD0D66: MemLdStr global_96
  loc_BD0D69: AryLock
  loc_BD0D6C: Ary1LdPr
  loc_BD0D6D: MemLdStr global_112
  loc_BD0D70: AryLock
  loc_BD0D73: Ary1LdPr
  loc_BD0D74: MemLdRfVar from_stack_1.global_4
  loc_BD0D77: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0D7C: AryUnlock
  loc_BD0D7F: AryUnlock
  loc_BD0D82: FFree1Var var_128 = ""
  loc_BD0D85: FLdRfVar var_8E
  loc_BD0D88: FLdPr var_8C
  loc_BD0D8B: from_stack_1 = clsliqucome.PeriBole
  loc_BD0D90: LitI2_Byte 0
  loc_BD0D92: LitVar_Missing var_128
  loc_BD0D95: LitI2_Byte 0
  loc_BD0D97: FLdI2 var_8E
  loc_BD0D9A: CVarI2 var_108
  loc_BD0D9D: PopAdLdVar
  loc_BD0D9E: FLdPr Me
  loc_BD0DA1: MemLdUI1 global_106
  loc_BD0DA5: CI4UI1
  loc_BD0DA6: FLdPr Me
  loc_BD0DA9: MemLdStr global_100
  loc_BD0DAC: FLdPr Me
  loc_BD0DAF: MemLdStr global_96
  loc_BD0DB2: AryLock
  loc_BD0DB5: Ary1LdPr
  loc_BD0DB6: MemLdStr global_112
  loc_BD0DB9: AryLock
  loc_BD0DBC: Ary1LdPr
  loc_BD0DBD: MemLdRfVar from_stack_1.global_8
  loc_BD0DC0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0DC5: AryUnlock
  loc_BD0DC8: AryUnlock
  loc_BD0DCB: FFree1Var var_128 = ""
  loc_BD0DCE: FLdRfVar var_94
  loc_BD0DD1: FLdPr var_8C
  loc_BD0DD4: from_stack_1 = clsliqucome.NumeBole
  loc_BD0DD9: LitI2_Byte 0
  loc_BD0DDB: LitVar_Missing var_128
  loc_BD0DDE: LitI2_Byte 0
  loc_BD0DE0: ILdRf var_94
  loc_BD0DE3: CVarI4
  loc_BD0DE7: PopAdLdVar
  loc_BD0DE8: FLdPr Me
  loc_BD0DEB: MemLdUI1 global_106
  loc_BD0DEF: CI4UI1
  loc_BD0DF0: FLdPr Me
  loc_BD0DF3: MemLdStr global_100
  loc_BD0DF6: FLdPr Me
  loc_BD0DF9: MemLdStr global_96
  loc_BD0DFC: AryLock
  loc_BD0DFF: Ary1LdPr
  loc_BD0E00: MemLdStr global_112
  loc_BD0E03: AryLock
  loc_BD0E06: Ary1LdPr
  loc_BD0E07: MemLdRfVar from_stack_1.global_12
  loc_BD0E0A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0E0F: AryUnlock
  loc_BD0E12: AryUnlock
  loc_BD0E15: FFree1Var var_128 = ""
  loc_BD0E18: FLdRfVar var_8E
  loc_BD0E1B: FLdPr var_8C
  loc_BD0E1E: from_stack_1 = clsliqucome.TipoVenc
  loc_BD0E23: LitI2_Byte 0
  loc_BD0E25: LitVar_Missing var_128
  loc_BD0E28: LitI2_Byte 0
  loc_BD0E2A: FLdUI1
  loc_BD0E2E: CVarUI1
  loc_BD0E32: PopAdLdVar
  loc_BD0E33: FLdPr Me
  loc_BD0E36: MemLdUI1 global_106
  loc_BD0E3A: CI4UI1
  loc_BD0E3B: FLdPr Me
  loc_BD0E3E: MemLdStr global_100
  loc_BD0E41: FLdPr Me
  loc_BD0E44: MemLdStr global_96
  loc_BD0E47: AryLock
  loc_BD0E4A: Ary1LdPr
  loc_BD0E4B: MemLdStr global_112
  loc_BD0E4E: AryLock
  loc_BD0E51: Ary1LdPr
  loc_BD0E52: MemLdRfVar from_stack_1.global_24
  loc_BD0E55: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0E5A: AryUnlock
  loc_BD0E5D: AryUnlock
  loc_BD0E60: FFree1Var var_128 = ""
  loc_BD0E63: FLdRfVar var_A8
  loc_BD0E66: FLdPr var_8C
  loc_BD0E69: from_stack_1 = clsliqucome.FeveLico
  loc_BD0E6E: LitI2_Byte 0
  loc_BD0E70: LitVar_Missing var_138
  loc_BD0E73: LitI2_Byte 0
  loc_BD0E75: FLdZeroAd var_A8
  loc_BD0E78: CVarStr var_128
  loc_BD0E7B: PopAdLdVar
  loc_BD0E7C: FLdPr Me
  loc_BD0E7F: MemLdUI1 global_106
  loc_BD0E83: CI4UI1
  loc_BD0E84: FLdPr Me
  loc_BD0E87: MemLdStr global_100
  loc_BD0E8A: FLdPr Me
  loc_BD0E8D: MemLdStr global_96
  loc_BD0E90: AryLock
  loc_BD0E93: Ary1LdPr
  loc_BD0E94: MemLdStr global_112
  loc_BD0E97: AryLock
  loc_BD0E9A: Ary1LdPr
  loc_BD0E9B: MemLdRfVar from_stack_1.global_16
  loc_BD0E9E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0EA3: AryUnlock
  loc_BD0EA6: AryUnlock
  loc_BD0EA9: FFreeVar var_128 = ""
  loc_BD0EB0: FLdRfVar var_128
  loc_BD0EB3: FLdPr var_8C
  loc_BD0EB6: from_stack_1 = clsliqucome.RecaBole
  loc_BD0EBB: LitI2_Byte 0
  loc_BD0EBD: LitVar_Missing var_138
  loc_BD0EC0: LitI2_Byte &HFF
  loc_BD0EC2: FLdVar var_128
  loc_BD0EC6: FLdPr Me
  loc_BD0EC9: MemLdUI1 global_106
  loc_BD0ECD: CI4UI1
  loc_BD0ECE: FLdPr Me
  loc_BD0ED1: MemLdStr global_100
  loc_BD0ED4: FLdPr Me
  loc_BD0ED7: MemLdStr global_96
  loc_BD0EDA: AryLock
  loc_BD0EDD: Ary1LdPr
  loc_BD0EDE: MemLdStr global_112
  loc_BD0EE1: AryLock
  loc_BD0EE4: Ary1LdPr
  loc_BD0EE5: MemLdRfVar from_stack_1.global_36
  loc_BD0EE8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0EED: AryUnlock
  loc_BD0EF0: AryUnlock
  loc_BD0EF3: FFreeVar var_128 = ""
  loc_BD0EFA: FLdRfVar var_A4
  loc_BD0EFD: FLdPr var_8C
  loc_BD0F00: from_stack_1 = clsliqucome.TotaBole
  loc_BD0F05: LitI2_Byte 0
  loc_BD0F07: LitVar_Missing var_128
  loc_BD0F0A: LitI2_Byte &HFF
  loc_BD0F0C: FLdFPR8 var_A4
  loc_BD0F0F: CVarR8
  loc_BD0F13: PopAdLdVar
  loc_BD0F14: FLdPr Me
  loc_BD0F17: MemLdUI1 global_106
  loc_BD0F1B: CI4UI1
  loc_BD0F1C: FLdPr Me
  loc_BD0F1F: MemLdStr global_100
  loc_BD0F22: FLdPr Me
  loc_BD0F25: MemLdStr global_96
  loc_BD0F28: AryLock
  loc_BD0F2B: Ary1LdPr
  loc_BD0F2C: MemLdStr global_112
  loc_BD0F2F: AryLock
  loc_BD0F32: Ary1LdPr
  loc_BD0F33: MemLdRfVar from_stack_1.global_44
  loc_BD0F36: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0F3B: AryUnlock
  loc_BD0F3E: AryUnlock
  loc_BD0F41: FFree1Var var_128 = ""
  loc_BD0F44: LitI2_Byte 1
  loc_BD0F46: PopTmpLdAd2 var_8E
  loc_BD0F49: FLdPr var_8C
  loc_BD0F4C: Call clsliqucome.Move(from_stack_1v)
  loc_BD0F51: FLdPr Me
  loc_BD0F54: MemLdUI1 global_106
  loc_BD0F58: CI2UI1
  loc_BD0F5A: LitI2_Byte 0
  loc_BD0F5C: EqI2
  loc_BD0F5D: BranchF loc_BD0F6C
  loc_BD0F60: FLdI2 var_86
  loc_BD0F63: CUI1I2
  loc_BD0F65: FLdPr Me
  loc_BD0F68: MemStUI1
  loc_BD0F6C: LitNothing
  loc_BD0F6E: FStAd var_8C 
  loc_BD0F72: ExitProcHresult
End Function

Private Function Proc_311_20_C34F64() 'C34F64
  'Data Table: 4A35B0
  loc_C343AC: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C343B1: PopAdLdVar
  loc_C343B2: FLdPr Me
  loc_C343B5: MemLdRfVar from_stack_1.global_60
  loc_C343B8: LdPrVar
  loc_C343BA: LateMemCall
  loc_C343C0: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C343C5: PopAdLdVar
  loc_C343C6: FLdPr Me
  loc_C343C9: MemLdRfVar from_stack_1.global_60
  loc_C343CC: LdPrVar
  loc_C343CE: LateMemCall
  loc_C343D4: LitVarStr var_94, "<head>"
  loc_C343D9: PopAdLdVar
  loc_C343DA: FLdPr Me
  loc_C343DD: MemLdRfVar from_stack_1.global_60
  loc_C343E0: LdPrVar
  loc_C343E2: LateMemCall
  loc_C343E8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C343ED: PopAdLdVar
  loc_C343EE: FLdPr Me
  loc_C343F1: MemLdRfVar from_stack_1.global_60
  loc_C343F4: LdPrVar
  loc_C343F6: LateMemCall
  loc_C343FC: LitStr "<title>"
  loc_C343FF: FLdRfVar var_A8
  loc_C34402: FLdPr Me
  loc_C34405:  = Me.Caption
  loc_C3440A: ILdRf var_A8
  loc_C3440D: ConcatStr
  loc_C3440E: FStStrNoPop var_AC
  loc_C34411: LitStr "</title>"
  loc_C34414: ConcatStr
  loc_C34415: CVarStr var_BC
  loc_C34418: PopAdLdVar
  loc_C34419: FLdPr Me
  loc_C3441C: MemLdRfVar from_stack_1.global_60
  loc_C3441F: LdPrVar
  loc_C34421: LateMemCall
  loc_C34427: FFreeStr var_A8 = ""
  loc_C3442E: FFree1Var var_BC = ""
  loc_C34431: LitVarStr var_94, "<style type=""text/css"">"
  loc_C34436: PopAdLdVar
  loc_C34437: FLdPr Me
  loc_C3443A: MemLdRfVar from_stack_1.global_60
  loc_C3443D: LdPrVar
  loc_C3443F: LateMemCall
  loc_C34445: LitVarStr var_94, "<!--"
  loc_C3444A: PopAdLdVar
  loc_C3444B: FLdPr Me
  loc_C3444E: MemLdRfVar from_stack_1.global_60
  loc_C34451: LdPrVar
  loc_C34453: LateMemCall
  loc_C34459: LitVarStr var_94, ".Encabezado {"
  loc_C3445E: PopAdLdVar
  loc_C3445F: FLdPr Me
  loc_C34462: MemLdRfVar from_stack_1.global_60
  loc_C34465: LdPrVar
  loc_C34467: LateMemCall
  loc_C3446D: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C34472: PopAdLdVar
  loc_C34473: FLdPr Me
  loc_C34476: MemLdRfVar from_stack_1.global_60
  loc_C34479: LdPrVar
  loc_C3447B: LateMemCall
  loc_C34481: LitVarStr var_94, " font-size: 10px;"
  loc_C34486: PopAdLdVar
  loc_C34487: FLdPr Me
  loc_C3448A: MemLdRfVar from_stack_1.global_60
  loc_C3448D: LdPrVar
  loc_C3448F: LateMemCall
  loc_C34495: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C3449A: PopAdLdVar
  loc_C3449B: FLdPr Me
  loc_C3449E: MemLdRfVar from_stack_1.global_60
  loc_C344A1: LdPrVar
  loc_C344A3: LateMemCall
  loc_C344A9: LitVarStr var_94, "}"
  loc_C344AE: PopAdLdVar
  loc_C344AF: FLdPr Me
  loc_C344B2: MemLdRfVar from_stack_1.global_60
  loc_C344B5: LdPrVar
  loc_C344B7: LateMemCall
  loc_C344BD: LitVarStr var_94, ".EncabezadoRubros {"
  loc_C344C2: PopAdLdVar
  loc_C344C3: FLdPr Me
  loc_C344C6: MemLdRfVar from_stack_1.global_60
  loc_C344C9: LdPrVar
  loc_C344CB: LateMemCall
  loc_C344D1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C344D6: PopAdLdVar
  loc_C344D7: FLdPr Me
  loc_C344DA: MemLdRfVar from_stack_1.global_60
  loc_C344DD: LdPrVar
  loc_C344DF: LateMemCall
  loc_C344E5: LitVarStr var_94, " font-size: 9px;"
  loc_C344EA: PopAdLdVar
  loc_C344EB: FLdPr Me
  loc_C344EE: MemLdRfVar from_stack_1.global_60
  loc_C344F1: LdPrVar
  loc_C344F3: LateMemCall
  loc_C344F9: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C344FE: PopAdLdVar
  loc_C344FF: FLdPr Me
  loc_C34502: MemLdRfVar from_stack_1.global_60
  loc_C34505: LdPrVar
  loc_C34507: LateMemCall
  loc_C3450D: LitVarStr var_94, "}"
  loc_C34512: PopAdLdVar
  loc_C34513: FLdPr Me
  loc_C34516: MemLdRfVar from_stack_1.global_60
  loc_C34519: LdPrVar
  loc_C3451B: LateMemCall
  loc_C34521: LitVarStr var_94, ".Normal {"
  loc_C34526: PopAdLdVar
  loc_C34527: FLdPr Me
  loc_C3452A: MemLdRfVar from_stack_1.global_60
  loc_C3452D: LdPrVar
  loc_C3452F: LateMemCall
  loc_C34535: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3453A: PopAdLdVar
  loc_C3453B: FLdPr Me
  loc_C3453E: MemLdRfVar from_stack_1.global_60
  loc_C34541: LdPrVar
  loc_C34543: LateMemCall
  loc_C34549: LitVarStr var_94, " font-size: 10px;"
  loc_C3454E: PopAdLdVar
  loc_C3454F: FLdPr Me
  loc_C34552: MemLdRfVar from_stack_1.global_60
  loc_C34555: LdPrVar
  loc_C34557: LateMemCall
  loc_C3455D: LitVarStr var_94, " vertical-align: top;"
  loc_C34562: PopAdLdVar
  loc_C34563: FLdPr Me
  loc_C34566: MemLdRfVar from_stack_1.global_60
  loc_C34569: LdPrVar
  loc_C3456B: LateMemCall
  loc_C34571: LitVarStr var_94, "}"
  loc_C34576: PopAdLdVar
  loc_C34577: FLdPr Me
  loc_C3457A: MemLdRfVar from_stack_1.global_60
  loc_C3457D: LdPrVar
  loc_C3457F: LateMemCall
  loc_C34585: LitVarStr var_94, ".Rubros {"
  loc_C3458A: PopAdLdVar
  loc_C3458B: FLdPr Me
  loc_C3458E: MemLdRfVar from_stack_1.global_60
  loc_C34591: LdPrVar
  loc_C34593: LateMemCall
  loc_C34599: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3459E: PopAdLdVar
  loc_C3459F: FLdPr Me
  loc_C345A2: MemLdRfVar from_stack_1.global_60
  loc_C345A5: LdPrVar
  loc_C345A7: LateMemCall
  loc_C345AD: LitVarStr var_94, " font-size: 9px;"
  loc_C345B2: PopAdLdVar
  loc_C345B3: FLdPr Me
  loc_C345B6: MemLdRfVar from_stack_1.global_60
  loc_C345B9: LdPrVar
  loc_C345BB: LateMemCall
  loc_C345C1: LitVarStr var_94, " vertical-align: top;"
  loc_C345C6: PopAdLdVar
  loc_C345C7: FLdPr Me
  loc_C345CA: MemLdRfVar from_stack_1.global_60
  loc_C345CD: LdPrVar
  loc_C345CF: LateMemCall
  loc_C345D5: LitVarStr var_94, " padding-left: 4px;"
  loc_C345DA: PopAdLdVar
  loc_C345DB: FLdPr Me
  loc_C345DE: MemLdRfVar from_stack_1.global_60
  loc_C345E1: LdPrVar
  loc_C345E3: LateMemCall
  loc_C345E9: LitVarStr var_94, " padding-right: 4px;"
  loc_C345EE: PopAdLdVar
  loc_C345EF: FLdPr Me
  loc_C345F2: MemLdRfVar from_stack_1.global_60
  loc_C345F5: LdPrVar
  loc_C345F7: LateMemCall
  loc_C345FD: LitVarStr var_94, "}"
  loc_C34602: PopAdLdVar
  loc_C34603: FLdPr Me
  loc_C34606: MemLdRfVar from_stack_1.global_60
  loc_C34609: LdPrVar
  loc_C3460B: LateMemCall
  loc_C34611: LitVarStr var_94, ".DomiPostal {"
  loc_C34616: PopAdLdVar
  loc_C34617: FLdPr Me
  loc_C3461A: MemLdRfVar from_stack_1.global_60
  loc_C3461D: LdPrVar
  loc_C3461F: LateMemCall
  loc_C34625: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C3462A: PopAdLdVar
  loc_C3462B: FLdPr Me
  loc_C3462E: MemLdRfVar from_stack_1.global_60
  loc_C34631: LdPrVar
  loc_C34633: LateMemCall
  loc_C34639: LitVarStr var_94, "  font-size: 14px;"
  loc_C3463E: PopAdLdVar
  loc_C3463F: FLdPr Me
  loc_C34642: MemLdRfVar from_stack_1.global_60
  loc_C34645: LdPrVar
  loc_C34647: LateMemCall
  loc_C3464D: LitVarStr var_94, "  vertical-align: top;"
  loc_C34652: PopAdLdVar
  loc_C34653: FLdPr Me
  loc_C34656: MemLdRfVar from_stack_1.global_60
  loc_C34659: LdPrVar
  loc_C3465B: LateMemCall
  loc_C34661: LitVarStr var_94, "  font-weight: bold;"
  loc_C34666: PopAdLdVar
  loc_C34667: FLdPr Me
  loc_C3466A: MemLdRfVar from_stack_1.global_60
  loc_C3466D: LdPrVar
  loc_C3466F: LateMemCall
  loc_C34675: LitVarStr var_94, "  padding-top: 1px;"
  loc_C3467A: PopAdLdVar
  loc_C3467B: FLdPr Me
  loc_C3467E: MemLdRfVar from_stack_1.global_60
  loc_C34681: LdPrVar
  loc_C34683: LateMemCall
  loc_C34689: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C3468E: PopAdLdVar
  loc_C3468F: FLdPr Me
  loc_C34692: MemLdRfVar from_stack_1.global_60
  loc_C34695: LdPrVar
  loc_C34697: LateMemCall
  loc_C3469D: LitVarStr var_94, "  padding-left: 5px;"
  loc_C346A2: PopAdLdVar
  loc_C346A3: FLdPr Me
  loc_C346A6: MemLdRfVar from_stack_1.global_60
  loc_C346A9: LdPrVar
  loc_C346AB: LateMemCall
  loc_C346B1: LitVarStr var_94, "  padding-right: 5px;"
  loc_C346B6: PopAdLdVar
  loc_C346B7: FLdPr Me
  loc_C346BA: MemLdRfVar from_stack_1.global_60
  loc_C346BD: LdPrVar
  loc_C346BF: LateMemCall
  loc_C346C5: LitVarStr var_94, "}"
  loc_C346CA: PopAdLdVar
  loc_C346CB: FLdPr Me
  loc_C346CE: MemLdRfVar from_stack_1.global_60
  loc_C346D1: LdPrVar
  loc_C346D3: LateMemCall
  loc_C346D9: LitVarStr var_94, ".DomiReal {"
  loc_C346DE: PopAdLdVar
  loc_C346DF: FLdPr Me
  loc_C346E2: MemLdRfVar from_stack_1.global_60
  loc_C346E5: LdPrVar
  loc_C346E7: LateMemCall
  loc_C346ED: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C346F2: PopAdLdVar
  loc_C346F3: FLdPr Me
  loc_C346F6: MemLdRfVar from_stack_1.global_60
  loc_C346F9: LdPrVar
  loc_C346FB: LateMemCall
  loc_C34701: LitVarStr var_94, "  font-size: 14px;"
  loc_C34706: PopAdLdVar
  loc_C34707: FLdPr Me
  loc_C3470A: MemLdRfVar from_stack_1.global_60
  loc_C3470D: LdPrVar
  loc_C3470F: LateMemCall
  loc_C34715: LitVarStr var_94, "  vertical-align: top;"
  loc_C3471A: PopAdLdVar
  loc_C3471B: FLdPr Me
  loc_C3471E: MemLdRfVar from_stack_1.global_60
  loc_C34721: LdPrVar
  loc_C34723: LateMemCall
  loc_C34729: LitVarStr var_94, "  padding-top: 1px;"
  loc_C3472E: PopAdLdVar
  loc_C3472F: FLdPr Me
  loc_C34732: MemLdRfVar from_stack_1.global_60
  loc_C34735: LdPrVar
  loc_C34737: LateMemCall
  loc_C3473D: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C34742: PopAdLdVar
  loc_C34743: FLdPr Me
  loc_C34746: MemLdRfVar from_stack_1.global_60
  loc_C34749: LdPrVar
  loc_C3474B: LateMemCall
  loc_C34751: LitVarStr var_94, "  padding-left: 5px;"
  loc_C34756: PopAdLdVar
  loc_C34757: FLdPr Me
  loc_C3475A: MemLdRfVar from_stack_1.global_60
  loc_C3475D: LdPrVar
  loc_C3475F: LateMemCall
  loc_C34765: LitVarStr var_94, "  padding-right: 5px;"
  loc_C3476A: PopAdLdVar
  loc_C3476B: FLdPr Me
  loc_C3476E: MemLdRfVar from_stack_1.global_60
  loc_C34771: LdPrVar
  loc_C34773: LateMemCall
  loc_C34779: LitVarStr var_94, "}"
  loc_C3477E: PopAdLdVar
  loc_C3477F: FLdPr Me
  loc_C34782: MemLdRfVar from_stack_1.global_60
  loc_C34785: LdPrVar
  loc_C34787: LateMemCall
  loc_C3478D: LitVarStr var_94, ".MargIzq {"
  loc_C34792: PopAdLdVar
  loc_C34793: FLdPr Me
  loc_C34796: MemLdRfVar from_stack_1.global_60
  loc_C34799: LdPrVar
  loc_C3479B: LateMemCall
  loc_C347A1: LitVarStr var_94, "  padding-left:5px"
  loc_C347A6: PopAdLdVar
  loc_C347A7: FLdPr Me
  loc_C347AA: MemLdRfVar from_stack_1.global_60
  loc_C347AD: LdPrVar
  loc_C347AF: LateMemCall
  loc_C347B5: LitVarStr var_94, "}"
  loc_C347BA: PopAdLdVar
  loc_C347BB: FLdPr Me
  loc_C347BE: MemLdRfVar from_stack_1.global_60
  loc_C347C1: LdPrVar
  loc_C347C3: LateMemCall
  loc_C347C9: LitVarStr var_94, ".MargDer {"
  loc_C347CE: PopAdLdVar
  loc_C347CF: FLdPr Me
  loc_C347D2: MemLdRfVar from_stack_1.global_60
  loc_C347D5: LdPrVar
  loc_C347D7: LateMemCall
  loc_C347DD: LitVarStr var_94, "  padding-right:5px"
  loc_C347E2: PopAdLdVar
  loc_C347E3: FLdPr Me
  loc_C347E6: MemLdRfVar from_stack_1.global_60
  loc_C347E9: LdPrVar
  loc_C347EB: LateMemCall
  loc_C347F1: LitVarStr var_94, "}"
  loc_C347F6: PopAdLdVar
  loc_C347F7: FLdPr Me
  loc_C347FA: MemLdRfVar from_stack_1.global_60
  loc_C347FD: LdPrVar
  loc_C347FF: LateMemCall
  loc_C34805: LitVarStr var_94, ".NormalAbajo {"
  loc_C3480A: PopAdLdVar
  loc_C3480B: FLdPr Me
  loc_C3480E: MemLdRfVar from_stack_1.global_60
  loc_C34811: LdPrVar
  loc_C34813: LateMemCall
  loc_C34819: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3481E: PopAdLdVar
  loc_C3481F: FLdPr Me
  loc_C34822: MemLdRfVar from_stack_1.global_60
  loc_C34825: LdPrVar
  loc_C34827: LateMemCall
  loc_C3482D: LitVarStr var_94, " font-size: 11px;"
  loc_C34832: PopAdLdVar
  loc_C34833: FLdPr Me
  loc_C34836: MemLdRfVar from_stack_1.global_60
  loc_C34839: LdPrVar
  loc_C3483B: LateMemCall
  loc_C34841: LitVarStr var_94, " vertical-align:bottom;"
  loc_C34846: PopAdLdVar
  loc_C34847: FLdPr Me
  loc_C3484A: MemLdRfVar from_stack_1.global_60
  loc_C3484D: LdPrVar
  loc_C3484F: LateMemCall
  loc_C34855: LitVarStr var_94, "}"
  loc_C3485A: PopAdLdVar
  loc_C3485B: FLdPr Me
  loc_C3485E: MemLdRfVar from_stack_1.global_60
  loc_C34861: LdPrVar
  loc_C34863: LateMemCall
  loc_C34869: LitVarStr var_94, ".NormalDetalle {"
  loc_C3486E: PopAdLdVar
  loc_C3486F: FLdPr Me
  loc_C34872: MemLdRfVar from_stack_1.global_60
  loc_C34875: LdPrVar
  loc_C34877: LateMemCall
  loc_C3487D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C34882: PopAdLdVar
  loc_C34883: FLdPr Me
  loc_C34886: MemLdRfVar from_stack_1.global_60
  loc_C34889: LdPrVar
  loc_C3488B: LateMemCall
  loc_C34891: LitVarStr var_94, " font-size: 10px;"
  loc_C34896: PopAdLdVar
  loc_C34897: FLdPr Me
  loc_C3489A: MemLdRfVar from_stack_1.global_60
  loc_C3489D: LdPrVar
  loc_C3489F: LateMemCall
  loc_C348A5: LitVarStr var_94, " vertical-align: top;"
  loc_C348AA: PopAdLdVar
  loc_C348AB: FLdPr Me
  loc_C348AE: MemLdRfVar from_stack_1.global_60
  loc_C348B1: LdPrVar
  loc_C348B3: LateMemCall
  loc_C348B9: LitVarStr var_94, "}"
  loc_C348BE: PopAdLdVar
  loc_C348BF: FLdPr Me
  loc_C348C2: MemLdRfVar from_stack_1.global_60
  loc_C348C5: LdPrVar
  loc_C348C7: LateMemCall
  loc_C348CD: LitVarStr var_94, ".NormalBloqueFin {"
  loc_C348D2: PopAdLdVar
  loc_C348D3: FLdPr Me
  loc_C348D6: MemLdRfVar from_stack_1.global_60
  loc_C348D9: LdPrVar
  loc_C348DB: LateMemCall
  loc_C348E1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C348E6: PopAdLdVar
  loc_C348E7: FLdPr Me
  loc_C348EA: MemLdRfVar from_stack_1.global_60
  loc_C348ED: LdPrVar
  loc_C348EF: LateMemCall
  loc_C348F5: LitVarStr var_94, " font-size: 10px;"
  loc_C348FA: PopAdLdVar
  loc_C348FB: FLdPr Me
  loc_C348FE: MemLdRfVar from_stack_1.global_60
  loc_C34901: LdPrVar
  loc_C34903: LateMemCall
  loc_C34909: LitVarStr var_94, " vertical-align: top;"
  loc_C3490E: PopAdLdVar
  loc_C3490F: FLdPr Me
  loc_C34912: MemLdRfVar from_stack_1.global_60
  loc_C34915: LdPrVar
  loc_C34917: LateMemCall
  loc_C3491D: LitVarStr var_94, " padding-right: 1px;"
  loc_C34922: PopAdLdVar
  loc_C34923: FLdPr Me
  loc_C34926: MemLdRfVar from_stack_1.global_60
  loc_C34929: LdPrVar
  loc_C3492B: LateMemCall
  loc_C34931: LitVarStr var_94, "}"
  loc_C34936: PopAdLdVar
  loc_C34937: FLdPr Me
  loc_C3493A: MemLdRfVar from_stack_1.global_60
  loc_C3493D: LdPrVar
  loc_C3493F: LateMemCall
  loc_C34945: LitVarStr var_94, ".NormalBloqueFinGrande {"
  loc_C3494A: PopAdLdVar
  loc_C3494B: FLdPr Me
  loc_C3494E: MemLdRfVar from_stack_1.global_60
  loc_C34951: LdPrVar
  loc_C34953: LateMemCall
  loc_C34959: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3495E: PopAdLdVar
  loc_C3495F: FLdPr Me
  loc_C34962: MemLdRfVar from_stack_1.global_60
  loc_C34965: LdPrVar
  loc_C34967: LateMemCall
  loc_C3496D: LitVarStr var_94, " font-size: 14px;"
  loc_C34972: PopAdLdVar
  loc_C34973: FLdPr Me
  loc_C34976: MemLdRfVar from_stack_1.global_60
  loc_C34979: LdPrVar
  loc_C3497B: LateMemCall
  loc_C34981: LitVarStr var_94, " vertical-align: top;"
  loc_C34986: PopAdLdVar
  loc_C34987: FLdPr Me
  loc_C3498A: MemLdRfVar from_stack_1.global_60
  loc_C3498D: LdPrVar
  loc_C3498F: LateMemCall
  loc_C34995: LitVarStr var_94, "}"
  loc_C3499A: PopAdLdVar
  loc_C3499B: FLdPr Me
  loc_C3499E: MemLdRfVar from_stack_1.global_60
  loc_C349A1: LdPrVar
  loc_C349A3: LateMemCall
  loc_C349A9: LitVarStr var_94, ".NombreMunicipio {"
  loc_C349AE: PopAdLdVar
  loc_C349AF: FLdPr Me
  loc_C349B2: MemLdRfVar from_stack_1.global_60
  loc_C349B5: LdPrVar
  loc_C349B7: LateMemCall
  loc_C349BD: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C349C2: PopAdLdVar
  loc_C349C3: FLdPr Me
  loc_C349C6: MemLdRfVar from_stack_1.global_60
  loc_C349C9: LdPrVar
  loc_C349CB: LateMemCall
  loc_C349D1: LitVarStr var_94, " font-size: 14px;"
  loc_C349D6: PopAdLdVar
  loc_C349D7: FLdPr Me
  loc_C349DA: MemLdRfVar from_stack_1.global_60
  loc_C349DD: LdPrVar
  loc_C349DF: LateMemCall
  loc_C349E5: LitVarStr var_94, " font-weight: bold;"
  loc_C349EA: PopAdLdVar
  loc_C349EB: FLdPr Me
  loc_C349EE: MemLdRfVar from_stack_1.global_60
  loc_C349F1: LdPrVar
  loc_C349F3: LateMemCall
  loc_C349F9: LitVarStr var_94, "}"
  loc_C349FE: PopAdLdVar
  loc_C349FF: FLdPr Me
  loc_C34A02: MemLdRfVar from_stack_1.global_60
  loc_C34A05: LdPrVar
  loc_C34A07: LateMemCall
  loc_C34A0D: LitVarStr var_94, ".DatosMunicipio {"
  loc_C34A12: PopAdLdVar
  loc_C34A13: FLdPr Me
  loc_C34A16: MemLdRfVar from_stack_1.global_60
  loc_C34A19: LdPrVar
  loc_C34A1B: LateMemCall
  loc_C34A21: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C34A26: PopAdLdVar
  loc_C34A27: FLdPr Me
  loc_C34A2A: MemLdRfVar from_stack_1.global_60
  loc_C34A2D: LdPrVar
  loc_C34A2F: LateMemCall
  loc_C34A35: LitVarStr var_94, " font-size: 9px;"
  loc_C34A3A: PopAdLdVar
  loc_C34A3B: FLdPr Me
  loc_C34A3E: MemLdRfVar from_stack_1.global_60
  loc_C34A41: LdPrVar
  loc_C34A43: LateMemCall
  loc_C34A49: LitVarStr var_94, "}"
  loc_C34A4E: PopAdLdVar
  loc_C34A4F: FLdPr Me
  loc_C34A52: MemLdRfVar from_stack_1.global_60
  loc_C34A55: LdPrVar
  loc_C34A57: LateMemCall
  loc_C34A5D: LitVarStr var_94, ".Totales {"
  loc_C34A62: PopAdLdVar
  loc_C34A63: FLdPr Me
  loc_C34A66: MemLdRfVar from_stack_1.global_60
  loc_C34A69: LdPrVar
  loc_C34A6B: LateMemCall
  loc_C34A71: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C34A76: PopAdLdVar
  loc_C34A77: FLdPr Me
  loc_C34A7A: MemLdRfVar from_stack_1.global_60
  loc_C34A7D: LdPrVar
  loc_C34A7F: LateMemCall
  loc_C34A85: LitVarStr var_94, " font-size: 13px;"
  loc_C34A8A: PopAdLdVar
  loc_C34A8B: FLdPr Me
  loc_C34A8E: MemLdRfVar from_stack_1.global_60
  loc_C34A91: LdPrVar
  loc_C34A93: LateMemCall
  loc_C34A99: LitVarStr var_94, " vertical-align: top;"
  loc_C34A9E: PopAdLdVar
  loc_C34A9F: FLdPr Me
  loc_C34AA2: MemLdRfVar from_stack_1.global_60
  loc_C34AA5: LdPrVar
  loc_C34AA7: LateMemCall
  loc_C34AAD: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C34AB2: PopAdLdVar
  loc_C34AB3: FLdPr Me
  loc_C34AB6: MemLdRfVar from_stack_1.global_60
  loc_C34AB9: LdPrVar
  loc_C34ABB: LateMemCall
  loc_C34AC1: LitVarStr var_94, " font-weight: bold;"
  loc_C34AC6: PopAdLdVar
  loc_C34AC7: FLdPr Me
  loc_C34ACA: MemLdRfVar from_stack_1.global_60
  loc_C34ACD: LdPrVar
  loc_C34ACF: LateMemCall
  loc_C34AD5: LitVarStr var_94, " padding-right: 1px;"
  loc_C34ADA: PopAdLdVar
  loc_C34ADB: FLdPr Me
  loc_C34ADE: MemLdRfVar from_stack_1.global_60
  loc_C34AE1: LdPrVar
  loc_C34AE3: LateMemCall
  loc_C34AE9: LitVarStr var_94, "}"
  loc_C34AEE: PopAdLdVar
  loc_C34AEF: FLdPr Me
  loc_C34AF2: MemLdRfVar from_stack_1.global_60
  loc_C34AF5: LdPrVar
  loc_C34AF7: LateMemCall
  loc_C34AFD: LitVarStr var_94, ".Total {"
  loc_C34B02: PopAdLdVar
  loc_C34B03: FLdPr Me
  loc_C34B06: MemLdRfVar from_stack_1.global_60
  loc_C34B09: LdPrVar
  loc_C34B0B: LateMemCall
  loc_C34B11: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C34B16: PopAdLdVar
  loc_C34B17: FLdPr Me
  loc_C34B1A: MemLdRfVar from_stack_1.global_60
  loc_C34B1D: LdPrVar
  loc_C34B1F: LateMemCall
  loc_C34B25: LitVarStr var_94, " font-size: 14px;"
  loc_C34B2A: PopAdLdVar
  loc_C34B2B: FLdPr Me
  loc_C34B2E: MemLdRfVar from_stack_1.global_60
  loc_C34B31: LdPrVar
  loc_C34B33: LateMemCall
  loc_C34B39: LitVarStr var_94, " vertical-align: top;"
  loc_C34B3E: PopAdLdVar
  loc_C34B3F: FLdPr Me
  loc_C34B42: MemLdRfVar from_stack_1.global_60
  loc_C34B45: LdPrVar
  loc_C34B47: LateMemCall
  loc_C34B4D: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C34B52: PopAdLdVar
  loc_C34B53: FLdPr Me
  loc_C34B56: MemLdRfVar from_stack_1.global_60
  loc_C34B59: LdPrVar
  loc_C34B5B: LateMemCall
  loc_C34B61: LitVarStr var_94, " font-weight: bold;"
  loc_C34B66: PopAdLdVar
  loc_C34B67: FLdPr Me
  loc_C34B6A: MemLdRfVar from_stack_1.global_60
  loc_C34B6D: LdPrVar
  loc_C34B6F: LateMemCall
  loc_C34B75: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C34B7A: PopAdLdVar
  loc_C34B7B: FLdPr Me
  loc_C34B7E: MemLdRfVar from_stack_1.global_60
  loc_C34B81: LdPrVar
  loc_C34B83: LateMemCall
  loc_C34B89: LitVarStr var_94, "}"
  loc_C34B8E: PopAdLdVar
  loc_C34B8F: FLdPr Me
  loc_C34B92: MemLdRfVar from_stack_1.global_60
  loc_C34B95: LdPrVar
  loc_C34B97: LateMemCall
  loc_C34B9D: LitVarStr var_94, ".CodBar {"
  loc_C34BA2: PopAdLdVar
  loc_C34BA3: FLdPr Me
  loc_C34BA6: MemLdRfVar from_stack_1.global_60
  loc_C34BA9: LdPrVar
  loc_C34BAB: LateMemCall
  loc_C34BB1: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C34BB6: PopAdLdVar
  loc_C34BB7: FLdPr Me
  loc_C34BBA: MemLdRfVar from_stack_1.global_60
  loc_C34BBD: LdPrVar
  loc_C34BBF: LateMemCall
  loc_C34BC5: LitVarStr var_94, " font-size: 48px;"
  loc_C34BCA: PopAdLdVar
  loc_C34BCB: FLdPr Me
  loc_C34BCE: MemLdRfVar from_stack_1.global_60
  loc_C34BD1: LdPrVar
  loc_C34BD3: LateMemCall
  loc_C34BD9: LitVarStr var_94, " font-style: normal;"
  loc_C34BDE: PopAdLdVar
  loc_C34BDF: FLdPr Me
  loc_C34BE2: MemLdRfVar from_stack_1.global_60
  loc_C34BE5: LdPrVar
  loc_C34BE7: LateMemCall
  loc_C34BED: LitVarStr var_94, " line-height: normal;"
  loc_C34BF2: PopAdLdVar
  loc_C34BF3: FLdPr Me
  loc_C34BF6: MemLdRfVar from_stack_1.global_60
  loc_C34BF9: LdPrVar
  loc_C34BFB: LateMemCall
  loc_C34C01: LitVarStr var_94, " font-weight: normal;"
  loc_C34C06: PopAdLdVar
  loc_C34C07: FLdPr Me
  loc_C34C0A: MemLdRfVar from_stack_1.global_60
  loc_C34C0D: LdPrVar
  loc_C34C0F: LateMemCall
  loc_C34C15: LitVarStr var_94, "}"
  loc_C34C1A: PopAdLdVar
  loc_C34C1B: FLdPr Me
  loc_C34C1E: MemLdRfVar from_stack_1.global_60
  loc_C34C21: LdPrVar
  loc_C34C23: LateMemCall
  loc_C34C29: LitVarStr var_94, ".CodBarChica {"
  loc_C34C2E: PopAdLdVar
  loc_C34C2F: FLdPr Me
  loc_C34C32: MemLdRfVar from_stack_1.global_60
  loc_C34C35: LdPrVar
  loc_C34C37: LateMemCall
  loc_C34C3D: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C34C42: PopAdLdVar
  loc_C34C43: FLdPr Me
  loc_C34C46: MemLdRfVar from_stack_1.global_60
  loc_C34C49: LdPrVar
  loc_C34C4B: LateMemCall
  loc_C34C51: LitVarStr var_94, " font-size: 38px;"
  loc_C34C56: PopAdLdVar
  loc_C34C57: FLdPr Me
  loc_C34C5A: MemLdRfVar from_stack_1.global_60
  loc_C34C5D: LdPrVar
  loc_C34C5F: LateMemCall
  loc_C34C65: LitVarStr var_94, " font-style: normal;"
  loc_C34C6A: PopAdLdVar
  loc_C34C6B: FLdPr Me
  loc_C34C6E: MemLdRfVar from_stack_1.global_60
  loc_C34C71: LdPrVar
  loc_C34C73: LateMemCall
  loc_C34C79: LitVarStr var_94, " line-height: normal;"
  loc_C34C7E: PopAdLdVar
  loc_C34C7F: FLdPr Me
  loc_C34C82: MemLdRfVar from_stack_1.global_60
  loc_C34C85: LdPrVar
  loc_C34C87: LateMemCall
  loc_C34C8D: LitVarStr var_94, " font-weight: normal;"
  loc_C34C92: PopAdLdVar
  loc_C34C93: FLdPr Me
  loc_C34C96: MemLdRfVar from_stack_1.global_60
  loc_C34C99: LdPrVar
  loc_C34C9B: LateMemCall
  loc_C34CA1: LitVarStr var_94, "}"
  loc_C34CA6: PopAdLdVar
  loc_C34CA7: FLdPr Me
  loc_C34CAA: MemLdRfVar from_stack_1.global_60
  loc_C34CAD: LdPrVar
  loc_C34CAF: LateMemCall
  loc_C34CB5: LitVarStr var_94, ".CorreoCelda {"
  loc_C34CBA: PopAdLdVar
  loc_C34CBB: FLdPr Me
  loc_C34CBE: MemLdRfVar from_stack_1.global_60
  loc_C34CC1: LdPrVar
  loc_C34CC3: LateMemCall
  loc_C34CC9: LitVarStr var_94, " border: 1px solid black;"
  loc_C34CCE: PopAdLdVar
  loc_C34CCF: FLdPr Me
  loc_C34CD2: MemLdRfVar from_stack_1.global_60
  loc_C34CD5: LdPrVar
  loc_C34CD7: LateMemCall
  loc_C34CDD: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C34CE2: PopAdLdVar
  loc_C34CE3: FLdPr Me
  loc_C34CE6: MemLdRfVar from_stack_1.global_60
  loc_C34CE9: LdPrVar
  loc_C34CEB: LateMemCall
  loc_C34CF1: LitVarStr var_94, " font-size: 6px;"
  loc_C34CF6: PopAdLdVar
  loc_C34CF7: FLdPr Me
  loc_C34CFA: MemLdRfVar from_stack_1.global_60
  loc_C34CFD: LdPrVar
  loc_C34CFF: LateMemCall
  loc_C34D05: LitVarStr var_94, " text-align:center;"
  loc_C34D0A: PopAdLdVar
  loc_C34D0B: FLdPr Me
  loc_C34D0E: MemLdRfVar from_stack_1.global_60
  loc_C34D11: LdPrVar
  loc_C34D13: LateMemCall
  loc_C34D19: LitVarStr var_94, " vertical-align: middle;"
  loc_C34D1E: PopAdLdVar
  loc_C34D1F: FLdPr Me
  loc_C34D22: MemLdRfVar from_stack_1.global_60
  loc_C34D25: LdPrVar
  loc_C34D27: LateMemCall
  loc_C34D2D: LitVarStr var_94, "}"
  loc_C34D32: PopAdLdVar
  loc_C34D33: FLdPr Me
  loc_C34D36: MemLdRfVar from_stack_1.global_60
  loc_C34D39: LdPrVar
  loc_C34D3B: LateMemCall
  loc_C34D41: LitVarStr var_94, ".CorreoCeldaFinal {"
  loc_C34D46: PopAdLdVar
  loc_C34D47: FLdPr Me
  loc_C34D4A: MemLdRfVar from_stack_1.global_60
  loc_C34D4D: LdPrVar
  loc_C34D4F: LateMemCall
  loc_C34D55: LitVarStr var_94, " border:none;"
  loc_C34D5A: PopAdLdVar
  loc_C34D5B: FLdPr Me
  loc_C34D5E: MemLdRfVar from_stack_1.global_60
  loc_C34D61: LdPrVar
  loc_C34D63: LateMemCall
  loc_C34D69: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C34D6E: PopAdLdVar
  loc_C34D6F: FLdPr Me
  loc_C34D72: MemLdRfVar from_stack_1.global_60
  loc_C34D75: LdPrVar
  loc_C34D77: LateMemCall
  loc_C34D7D: LitVarStr var_94, " font-size: 6px;"
  loc_C34D82: PopAdLdVar
  loc_C34D83: FLdPr Me
  loc_C34D86: MemLdRfVar from_stack_1.global_60
  loc_C34D89: LdPrVar
  loc_C34D8B: LateMemCall
  loc_C34D91: LitVarStr var_94, " text-align:center;"
  loc_C34D96: PopAdLdVar
  loc_C34D97: FLdPr Me
  loc_C34D9A: MemLdRfVar from_stack_1.global_60
  loc_C34D9D: LdPrVar
  loc_C34D9F: LateMemCall
  loc_C34DA5: LitVarStr var_94, " vertical-align: middle;"
  loc_C34DAA: PopAdLdVar
  loc_C34DAB: FLdPr Me
  loc_C34DAE: MemLdRfVar from_stack_1.global_60
  loc_C34DB1: LdPrVar
  loc_C34DB3: LateMemCall
  loc_C34DB9: LitVarStr var_94, "}"
  loc_C34DBE: PopAdLdVar
  loc_C34DBF: FLdPr Me
  loc_C34DC2: MemLdRfVar from_stack_1.global_60
  loc_C34DC5: LdPrVar
  loc_C34DC7: LateMemCall
  loc_C34DCD: LitVarStr var_94, ".CorreoTabla {"
  loc_C34DD2: PopAdLdVar
  loc_C34DD3: FLdPr Me
  loc_C34DD6: MemLdRfVar from_stack_1.global_60
  loc_C34DD9: LdPrVar
  loc_C34DDB: LateMemCall
  loc_C34DE1: LitVarStr var_94, " border:none;"
  loc_C34DE6: PopAdLdVar
  loc_C34DE7: FLdPr Me
  loc_C34DEA: MemLdRfVar from_stack_1.global_60
  loc_C34DED: LdPrVar
  loc_C34DEF: LateMemCall
  loc_C34DF5: LitVarStr var_94, " border-collapse:collapse;"
  loc_C34DFA: PopAdLdVar
  loc_C34DFB: FLdPr Me
  loc_C34DFE: MemLdRfVar from_stack_1.global_60
  loc_C34E01: LdPrVar
  loc_C34E03: LateMemCall
  loc_C34E09: LitVarStr var_94, "}"
  loc_C34E0E: PopAdLdVar
  loc_C34E0F: FLdPr Me
  loc_C34E12: MemLdRfVar from_stack_1.global_60
  loc_C34E15: LdPrVar
  loc_C34E17: LateMemCall
  loc_C34E1D: LitVarStr var_94, ".MissChild {"
  loc_C34E22: PopAdLdVar
  loc_C34E23: FLdPr Me
  loc_C34E26: MemLdRfVar from_stack_1.global_60
  loc_C34E29: LdPrVar
  loc_C34E2B: LateMemCall
  loc_C34E31: LitVarStr var_94, " float:right;"
  loc_C34E36: PopAdLdVar
  loc_C34E37: FLdPr Me
  loc_C34E3A: MemLdRfVar from_stack_1.global_60
  loc_C34E3D: LdPrVar
  loc_C34E3F: LateMemCall
  loc_C34E45: LitVarStr var_94, " clear:right;"
  loc_C34E4A: PopAdLdVar
  loc_C34E4B: FLdPr Me
  loc_C34E4E: MemLdRfVar from_stack_1.global_60
  loc_C34E51: LdPrVar
  loc_C34E53: LateMemCall
  loc_C34E59: LitVarStr var_94, " margin:10px;"
  loc_C34E5E: PopAdLdVar
  loc_C34E5F: FLdPr Me
  loc_C34E62: MemLdRfVar from_stack_1.global_60
  loc_C34E65: LdPrVar
  loc_C34E67: LateMemCall
  loc_C34E6D: LitVarStr var_94, " vertical-align:bottom"
  loc_C34E72: PopAdLdVar
  loc_C34E73: FLdPr Me
  loc_C34E76: MemLdRfVar from_stack_1.global_60
  loc_C34E79: LdPrVar
  loc_C34E7B: LateMemCall
  loc_C34E81: LitVarStr var_94, "}"
  loc_C34E86: PopAdLdVar
  loc_C34E87: FLdPr Me
  loc_C34E8A: MemLdRfVar from_stack_1.global_60
  loc_C34E8D: LdPrVar
  loc_C34E8F: LateMemCall
  loc_C34E95: LitVarStr var_94, ".NoBordeAbajo {"
  loc_C34E9A: PopAdLdVar
  loc_C34E9B: FLdPr Me
  loc_C34E9E: MemLdRfVar from_stack_1.global_60
  loc_C34EA1: LdPrVar
  loc_C34EA3: LateMemCall
  loc_C34EA9: LitVarStr var_94, " border-bottom:none"
  loc_C34EAE: PopAdLdVar
  loc_C34EAF: FLdPr Me
  loc_C34EB2: MemLdRfVar from_stack_1.global_60
  loc_C34EB5: LdPrVar
  loc_C34EB7: LateMemCall
  loc_C34EBD: LitVarStr var_94, "}"
  loc_C34EC2: PopAdLdVar
  loc_C34EC3: FLdPr Me
  loc_C34EC6: MemLdRfVar from_stack_1.global_60
  loc_C34EC9: LdPrVar
  loc_C34ECB: LateMemCall
  loc_C34ED1: LitVarStr var_94, ".NoBordeArriba {"
  loc_C34ED6: PopAdLdVar
  loc_C34ED7: FLdPr Me
  loc_C34EDA: MemLdRfVar from_stack_1.global_60
  loc_C34EDD: LdPrVar
  loc_C34EDF: LateMemCall
  loc_C34EE5: LitVarStr var_94, " border-top:none"
  loc_C34EEA: PopAdLdVar
  loc_C34EEB: FLdPr Me
  loc_C34EEE: MemLdRfVar from_stack_1.global_60
  loc_C34EF1: LdPrVar
  loc_C34EF3: LateMemCall
  loc_C34EF9: LitVarStr var_94, "}"
  loc_C34EFE: PopAdLdVar
  loc_C34EFF: FLdPr Me
  loc_C34F02: MemLdRfVar from_stack_1.global_60
  loc_C34F05: LdPrVar
  loc_C34F07: LateMemCall
  loc_C34F0D: LitVarStr var_94, "-->"
  loc_C34F12: PopAdLdVar
  loc_C34F13: FLdPr Me
  loc_C34F16: MemLdRfVar from_stack_1.global_60
  loc_C34F19: LdPrVar
  loc_C34F1B: LateMemCall
  loc_C34F21: LitVarStr var_94, "</style>"
  loc_C34F26: PopAdLdVar
  loc_C34F27: FLdPr Me
  loc_C34F2A: MemLdRfVar from_stack_1.global_60
  loc_C34F2D: LdPrVar
  loc_C34F2F: LateMemCall
  loc_C34F35: LitI4 0
  loc_C34F3A: FStStrCopy var_AC
  loc_C34F3D: FLdRfVar var_AC
  loc_C34F40: LitI4 0
  loc_C34F45: FStStrCopy var_A8
  loc_C34F48: FLdRfVar var_A8
  loc_C34F4B: LitI2_Byte 0
  loc_C34F4D: PopTmpLdAd2 var_BE
  loc_C34F50: FLdPr Me
  loc_C34F53: MemLdRfVar from_stack_1.global_60
  loc_C34F56: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C34F5B: FFreeStr var_A8 = ""
  loc_C34F62: ExitProcHresult
End Function

Private Function Proc_311_21_BE5FB4() 'BE5FB4
  'Data Table: 4A35B0
  loc_BE57DC: LitVarStr var_94, "<table align=""center"" height=""350"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_BE57E1: PopAdLdVar
  loc_BE57E2: FLdPr Me
  loc_BE57E5: MemLdRfVar from_stack_1.global_60
  loc_BE57E8: LdPrVar
  loc_BE57EA: LateMemCall
  loc_BE57F0: LitVarStr var_94, "  <tr valign=""top""><td height=""350"">"
  loc_BE57F5: PopAdLdVar
  loc_BE57F6: FLdPr Me
  loc_BE57F9: MemLdRfVar from_stack_1.global_60
  loc_BE57FC: LdPrVar
  loc_BE57FE: LateMemCall
  loc_BE5804: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_BE5809: PopAdLdVar
  loc_BE580A: FLdPr Me
  loc_BE580D: MemLdRfVar from_stack_1.global_60
  loc_BE5810: LdPrVar
  loc_BE5812: LateMemCall
  loc_BE5818: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE581D: PopAdLdVar
  loc_BE581E: FLdPr Me
  loc_BE5821: MemLdRfVar from_stack_1.global_60
  loc_BE5824: LdPrVar
  loc_BE5826: LateMemCall
  loc_BE582C: LitStr "        <td colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio MargIzq"" style=""padding-top: 1px;padding-bottom: 1px""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE582F: LitI2_Byte &H5F
  loc_BE5831: CStrUI1
  loc_BE5833: FStStrNoPop var_A8
  loc_BE5836: ConcatStr
  loc_BE5837: FStStrNoPop var_AC
  loc_BE583A: LitStr """ height="""
  loc_BE583D: ConcatStr
  loc_BE583E: FStStrNoPop var_B0
  loc_BE5841: LitI2_Byte &H3C
  loc_BE5843: CStrUI1
  loc_BE5845: FStStrNoPop var_B4
  loc_BE5848: ConcatStr
  loc_BE5849: FStStrNoPop var_B8
  loc_BE584C: LitStr """ align=""left""><span class=""NombreMunicipio"">"
  loc_BE584F: ConcatStr
  loc_BE5850: FStStrNoPop var_BC
  loc_BE5853: LitStr "Municipalidad de Guaymallén"
  loc_BE5856: ConcatStr
  loc_BE5857: FStStrNoPop var_C0
  loc_BE585A: LitStr "</span><br>"
  loc_BE585D: ConcatStr
  loc_BE585E: CVarStr var_D0
  loc_BE5861: PopAdLdVar
  loc_BE5862: FLdPr Me
  loc_BE5865: MemLdRfVar from_stack_1.global_60
  loc_BE5868: LdPrVar
  loc_BE586A: LateMemCall
  loc_BE5870: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BE5881: FFree1Var var_D0 = ""
  loc_BE5884: LitStr "          "
  loc_BE5887: LitStr "Dirección de Rentas"
  loc_BE588A: ConcatStr
  loc_BE588B: FStStrNoPop var_A8
  loc_BE588E: LitStr "<br>"
  loc_BE5891: ConcatStr
  loc_BE5892: CVarStr var_D0
  loc_BE5895: PopAdLdVar
  loc_BE5896: FLdPr Me
  loc_BE5899: MemLdRfVar from_stack_1.global_60
  loc_BE589C: LdPrVar
  loc_BE589E: LateMemCall
  loc_BE58A4: FFree1Str var_A8
  loc_BE58A7: FFree1Var var_D0 = ""
  loc_BE58AA: LitStr "          "
  loc_BE58AD: LitStr "Libertad 720 - Villa Nueva"
  loc_BE58B0: ConcatStr
  loc_BE58B1: FStStrNoPop var_A8
  loc_BE58B4: LitStr "<br>"
  loc_BE58B7: ConcatStr
  loc_BE58B8: CVarStr var_D0
  loc_BE58BB: PopAdLdVar
  loc_BE58BC: FLdPr Me
  loc_BE58BF: MemLdRfVar from_stack_1.global_60
  loc_BE58C2: LdPrVar
  loc_BE58C4: LateMemCall
  loc_BE58CA: FFree1Str var_A8
  loc_BE58CD: FFree1Var var_D0 = ""
  loc_BE58D0: LitStr "          "
  loc_BE58D3: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_BE58D6: ConcatStr
  loc_BE58D7: FStStrNoPop var_A8
  loc_BE58DA: LitStr "<br>"
  loc_BE58DD: ConcatStr
  loc_BE58DE: CVarStr var_D0
  loc_BE58E1: PopAdLdVar
  loc_BE58E2: FLdPr Me
  loc_BE58E5: MemLdRfVar from_stack_1.global_60
  loc_BE58E8: LdPrVar
  loc_BE58EA: LateMemCall
  loc_BE58F0: FFree1Str var_A8
  loc_BE58F3: FFree1Var var_D0 = ""
  loc_BE58F6: LitStr "          "
  loc_BE58F9: LitStr "C.U.I.T.: "
  loc_BE58FC: ConcatStr
  loc_BE58FD: FStStrNoPop var_A8
  loc_BE5900: LitStr "30-99914707-7"
  loc_BE5903: ConcatStr
  loc_BE5904: FStStrNoPop var_AC
  loc_BE5907: LitStr "</td>"
  loc_BE590A: ConcatStr
  loc_BE590B: CVarStr var_D0
  loc_BE590E: PopAdLdVar
  loc_BE590F: FLdPr Me
  loc_BE5912: MemLdRfVar from_stack_1.global_60
  loc_BE5915: LdPrVar
  loc_BE5917: LateMemCall
  loc_BE591D: FFreeStr var_A8 = ""
  loc_BE5924: FFree1Var var_D0 = ""
  loc_BE5927: LitVarStr var_94, "        <td class=""NoBordeAbajo"" width=""200"" height=""31"" align=""center"" valign=""middle"">"
  loc_BE592C: PopAdLdVar
  loc_BE592D: FLdPr Me
  loc_BE5930: MemLdRfVar from_stack_1.global_60
  loc_BE5933: LdPrVar
  loc_BE5935: LateMemCall
  loc_BE593B: LitVarStr var_94, "        <div>&nbsp;</div>"
  loc_BE5940: PopAdLdVar
  loc_BE5941: FLdPr Me
  loc_BE5944: MemLdRfVar from_stack_1.global_60
  loc_BE5947: LdPrVar
  loc_BE5949: LateMemCall
  loc_BE594F: LitVarStr var_94, "        <table width=""42" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""0"" class=""CorreoTabla"" >"
  loc_BE5954: PopAdLdVar
  loc_BE5955: FLdPr Me
  loc_BE5958: MemLdRfVar from_stack_1.global_60
  loc_BE595B: LdPrVar
  loc_BE595D: LateMemCall
  loc_BE5963: LitVarStr var_94, "          <tr>"
  loc_BE5968: PopAdLdVar
  loc_BE5969: FLdPr Me
  loc_BE596C: MemLdRfVar from_stack_1.global_60
  loc_BE596F: LdPrVar
  loc_BE5971: LateMemCall
  loc_BE5977: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-right:none"">C<br>O<br>R<br>R</td>"
  loc_BE597C: PopAdLdVar
  loc_BE597D: FLdPr Me
  loc_BE5980: MemLdRfVar from_stack_1.global_60
  loc_BE5983: LdPrVar
  loc_BE5985: LateMemCall
  loc_BE598B: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-left:none"">O<br>F<br>I<br>C</td>"
  loc_BE5990: PopAdLdVar
  loc_BE5991: FLdPr Me
  loc_BE5994: MemLdRfVar from_stack_1.global_60
  loc_BE5997: LdPrVar
  loc_BE5999: LateMemCall
  loc_BE599F: LitVarStr var_94, "            <td class=""CorreoCelda"">FRANQUEO A PAGAR</td>"
  loc_BE59A4: PopAdLdVar
  loc_BE59A5: FLdPr Me
  loc_BE59A8: MemLdRfVar from_stack_1.global_60
  loc_BE59AB: LdPrVar
  loc_BE59AD: LateMemCall
  loc_BE59B3: LitVarStr var_94, "          </tr>"
  loc_BE59B8: PopAdLdVar
  loc_BE59B9: FLdPr Me
  loc_BE59BC: MemLdRfVar from_stack_1.global_60
  loc_BE59BF: LdPrVar
  loc_BE59C1: LateMemCall
  loc_BE59C7: LitVarStr var_94, "          <tr>"
  loc_BE59CC: PopAdLdVar
  loc_BE59CD: FLdPr Me
  loc_BE59D0: MemLdRfVar from_stack_1.global_60
  loc_BE59D3: LdPrVar
  loc_BE59D5: LateMemCall
  loc_BE59DB: LitVarStr var_94, "            <td class=""CorreoCelda"">CTA CTE N&deg; 17438</td>"
  loc_BE59E0: PopAdLdVar
  loc_BE59E1: FLdPr Me
  loc_BE59E4: MemLdRfVar from_stack_1.global_60
  loc_BE59E7: LdPrVar
  loc_BE59E9: LateMemCall
  loc_BE59EF: LitVarStr var_94, "          </tr>"
  loc_BE59F4: PopAdLdVar
  loc_BE59F5: FLdPr Me
  loc_BE59F8: MemLdRfVar from_stack_1.global_60
  loc_BE59FB: LdPrVar
  loc_BE59FD: LateMemCall
  loc_BE5A03: LitVarStr var_94, "          <tr>"
  loc_BE5A08: PopAdLdVar
  loc_BE5A09: FLdPr Me
  loc_BE5A0C: MemLdRfVar from_stack_1.global_60
  loc_BE5A0F: LdPrVar
  loc_BE5A11: LateMemCall
  loc_BE5A17: LitStr "            <td class=""CorreoCelda"">CUIT: "
  loc_BE5A1A: LitStr "30-99914707-7"
  loc_BE5A1D: ConcatStr
  loc_BE5A1E: FStStrNoPop var_A8
  loc_BE5A21: LitStr "</td>"
  loc_BE5A24: ConcatStr
  loc_BE5A25: CVarStr var_D0
  loc_BE5A28: PopAdLdVar
  loc_BE5A29: FLdPr Me
  loc_BE5A2C: MemLdRfVar from_stack_1.global_60
  loc_BE5A2F: LdPrVar
  loc_BE5A31: LateMemCall
  loc_BE5A37: FFree1Str var_A8
  loc_BE5A3A: FFree1Var var_D0 = ""
  loc_BE5A3D: LitVarStr var_94, "          </tr>"
  loc_BE5A42: PopAdLdVar
  loc_BE5A43: FLdPr Me
  loc_BE5A46: MemLdRfVar from_stack_1.global_60
  loc_BE5A49: LdPrVar
  loc_BE5A4B: LateMemCall
  loc_BE5A51: LitVarStr var_94, "          <tr>"
  loc_BE5A56: PopAdLdVar
  loc_BE5A57: FLdPr Me
  loc_BE5A5A: MemLdRfVar from_stack_1.global_60
  loc_BE5A5D: LdPrVar
  loc_BE5A5F: LateMemCall
  loc_BE5A65: LitVarStr var_94, "            <td colspan=""3"" class=""CorreoCeldaFinal"">Devolver a Admisi&oacute;n Mendoza</td>"
  loc_BE5A6A: PopAdLdVar
  loc_BE5A6B: FLdPr Me
  loc_BE5A6E: MemLdRfVar from_stack_1.global_60
  loc_BE5A71: LdPrVar
  loc_BE5A73: LateMemCall
  loc_BE5A79: LitVarStr var_94, "            </tr>"
  loc_BE5A7E: PopAdLdVar
  loc_BE5A7F: FLdPr Me
  loc_BE5A82: MemLdRfVar from_stack_1.global_60
  loc_BE5A85: LdPrVar
  loc_BE5A87: LateMemCall
  loc_BE5A8D: LitVarStr var_94, "        </table>"
  loc_BE5A92: PopAdLdVar
  loc_BE5A93: FLdPr Me
  loc_BE5A96: MemLdRfVar from_stack_1.global_60
  loc_BE5A99: LdPrVar
  loc_BE5A9B: LateMemCall
  loc_BE5AA1: LitVarStr var_94, "        </td>"
  loc_BE5AA6: PopAdLdVar
  loc_BE5AA7: FLdPr Me
  loc_BE5AAA: MemLdRfVar from_stack_1.global_60
  loc_BE5AAD: LdPrVar
  loc_BE5AAF: LateMemCall
  loc_BE5AB5: LitVarStr var_94, "      </tr>"
  loc_BE5ABA: PopAdLdVar
  loc_BE5ABB: FLdPr Me
  loc_BE5ABE: MemLdRfVar from_stack_1.global_60
  loc_BE5AC1: LdPrVar
  loc_BE5AC3: LateMemCall
  loc_BE5AC9: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE5ACE: PopAdLdVar
  loc_BE5ACF: FLdPr Me
  loc_BE5AD2: MemLdRfVar from_stack_1.global_60
  loc_BE5AD5: LdPrVar
  loc_BE5AD7: LateMemCall
  loc_BE5ADD: LitVarStr var_94, "        <td colspan=""4"" align=""center"" valign=""middle"" class=""NombreMunicipio"">DERECHOS DE COMERCIO</td>"
  loc_BE5AE2: PopAdLdVar
  loc_BE5AE3: FLdPr Me
  loc_BE5AE6: MemLdRfVar from_stack_1.global_60
  loc_BE5AE9: LdPrVar
  loc_BE5AEB: LateMemCall
  loc_BE5AF1: LitVarStr var_94, "        <td width=""24"" align=""right"" class=""Encabezado MargDer""><strong>Orden:</strong></td>"
  loc_BE5AF6: PopAdLdVar
  loc_BE5AF7: FLdPr Me
  loc_BE5AFA: MemLdRfVar from_stack_1.global_60
  loc_BE5AFD: LdPrVar
  loc_BE5AFF: LateMemCall
  loc_BE5B05: FLdPr Me
  loc_BE5B08: MemLdStr global_100
  loc_BE5B0B: FLdPr Me
  loc_BE5B0E: MemLdStr global_96
  loc_BE5B11: AryLock
  loc_BE5B14: Ary1LdRf
  loc_BE5B15: FStR4 var_D8
  loc_BE5B18: LitStr "        <td width=""28"" align=""left"" valign=""top"" class=""Normal MargIzq"">"
  loc_BE5B1B: FMemLdR4 var_D8(84)
  loc_BE5B20: ConcatStr
  loc_BE5B21: FStStrNoPop var_A8
  loc_BE5B24: LitStr "</td>"
  loc_BE5B27: ConcatStr
  loc_BE5B28: CVarStr var_D0
  loc_BE5B2B: PopAdLdVar
  loc_BE5B2C: FLdPr Me
  loc_BE5B2F: MemLdRfVar from_stack_1.global_60
  loc_BE5B32: LdPrVar
  loc_BE5B34: LateMemCall
  loc_BE5B3A: FFree1Str var_A8
  loc_BE5B3D: FFree1Var var_D0 = ""
  loc_BE5B40: LitVarStr var_94, "        <td rowspan=""2"" class=""NoBordeArriba"">"
  loc_BE5B45: PopAdLdVar
  loc_BE5B46: FLdPr Me
  loc_BE5B49: MemLdRfVar from_stack_1.global_60
  loc_BE5B4C: LdPrVar
  loc_BE5B4E: LateMemCall
  loc_BE5B54: LitVarStr var_94, "         <table align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BE5B59: PopAdLdVar
  loc_BE5B5A: FLdPr Me
  loc_BE5B5D: MemLdRfVar from_stack_1.global_60
  loc_BE5B60: LdPrVar
  loc_BE5B62: LateMemCall
  loc_BE5B68: LitStr "          <tr><td valign=""bottom"" align=""center"" class=""CodBarChica"">"
  loc_BE5B6B: LitI4 1
  loc_BE5B70: FMemLdR4 var_D8(104)
  loc_BE5B75: Ary1LdI4
  loc_BE5B76: ConcatStr
  loc_BE5B77: FStStrNoPop var_A8
  loc_BE5B7A: LitStr "</td></tr>"
  loc_BE5B7D: ConcatStr
  loc_BE5B7E: CVarStr var_D0
  loc_BE5B81: PopAdLdVar
  loc_BE5B82: FLdPr Me
  loc_BE5B85: MemLdRfVar from_stack_1.global_60
  loc_BE5B88: LdPrVar
  loc_BE5B8A: LateMemCall
  loc_BE5B90: FFree1Str var_A8
  loc_BE5B93: FFree1Var var_D0 = ""
  loc_BE5B96: LitStr "          <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BE5B99: LitI4 0
  loc_BE5B9E: FMemLdR4 var_D8(104)
  loc_BE5BA3: Ary1LdI4
  loc_BE5BA4: ConcatStr
  loc_BE5BA5: FStStrNoPop var_A8
  loc_BE5BA8: LitStr "</td></tr>"
  loc_BE5BAB: ConcatStr
  loc_BE5BAC: CVarStr var_D0
  loc_BE5BAF: PopAdLdVar
  loc_BE5BB0: FLdPr Me
  loc_BE5BB3: MemLdRfVar from_stack_1.global_60
  loc_BE5BB6: LdPrVar
  loc_BE5BB8: LateMemCall
  loc_BE5BBE: FFree1Str var_A8
  loc_BE5BC1: FFree1Var var_D0 = ""
  loc_BE5BC4: LitVarStr var_94, "        </table></td>"
  loc_BE5BC9: PopAdLdVar
  loc_BE5BCA: FLdPr Me
  loc_BE5BCD: MemLdRfVar from_stack_1.global_60
  loc_BE5BD0: LdPrVar
  loc_BE5BD2: LateMemCall
  loc_BE5BD8: LitVarStr var_94, "      </tr>"
  loc_BE5BDD: PopAdLdVar
  loc_BE5BDE: FLdPr Me
  loc_BE5BE1: MemLdRfVar from_stack_1.global_60
  loc_BE5BE4: LdPrVar
  loc_BE5BE6: LateMemCall
  loc_BE5BEC: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE5BF1: PopAdLdVar
  loc_BE5BF2: FLdPr Me
  loc_BE5BF5: MemLdRfVar from_stack_1.global_60
  loc_BE5BF8: LdPrVar
  loc_BE5BFA: LateMemCall
  loc_BE5C00: LitVarStr var_94, "        <td width=""51"" align=""right"" class=""Encabezado MargDer""><strong>Cuenta:</strong></td>"
  loc_BE5C05: PopAdLdVar
  loc_BE5C06: FLdPr Me
  loc_BE5C09: MemLdRfVar from_stack_1.global_60
  loc_BE5C0C: LdPrVar
  loc_BE5C0E: LateMemCall
  loc_BE5C14: LitStr "        <td width=""40"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE5C17: FMemLdR4 var_D8(76)
  loc_BE5C1C: ConcatStr
  loc_BE5C1D: FStStrNoPop var_A8
  loc_BE5C20: LitStr "</strong></td>"
  loc_BE5C23: ConcatStr
  loc_BE5C24: CVarStr var_D0
  loc_BE5C27: PopAdLdVar
  loc_BE5C28: FLdPr Me
  loc_BE5C2B: MemLdRfVar from_stack_1.global_60
  loc_BE5C2E: LdPrVar
  loc_BE5C30: LateMemCall
  loc_BE5C36: FFree1Str var_A8
  loc_BE5C39: FFree1Var var_D0 = ""
  loc_BE5C3C: LitVarStr var_94, "        <td width=""43"" align=""right"" class=""Encabezado MargDer""><strong>Titular:</strong></td>"
  loc_BE5C41: PopAdLdVar
  loc_BE5C42: FLdPr Me
  loc_BE5C45: MemLdRfVar from_stack_1.global_60
  loc_BE5C48: LdPrVar
  loc_BE5C4A: LateMemCall
  loc_BE5C50: LitStr "        <td height=""18"" colspan=""3"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE5C53: FMemLdR4 var_D8(4)
  loc_BE5C58: ConcatStr
  loc_BE5C59: FStStrNoPop var_A8
  loc_BE5C5C: LitStr "</strong>"
  loc_BE5C5F: ConcatStr
  loc_BE5C60: CVarStr var_D0
  loc_BE5C63: PopAdLdVar
  loc_BE5C64: FLdPr Me
  loc_BE5C67: MemLdRfVar from_stack_1.global_60
  loc_BE5C6A: LdPrVar
  loc_BE5C6C: LateMemCall
  loc_BE5C72: FFree1Str var_A8
  loc_BE5C75: FFree1Var var_D0 = ""
  loc_BE5C78: FMemLdRf 0
  loc_BE5C7D: CVarRef
  loc_BE5C82: FLdRfVar var_D0
  loc_BE5C85: ImpAdCallFPR4  = Trim()
  loc_BE5C8A: FLdRfVar var_D0
  loc_BE5C8D: LitVarStr var_A4, vbNullString
  loc_BE5C92: HardType
  loc_BE5C93: NeVarBool
  loc_BE5C95: FFree1Var var_D0 = ""
  loc_BE5C98: BranchF loc_BE5CC3
  loc_BE5C9B: LitStr "        <br>(Poseedor: "
  loc_BE5C9E: FMemLdR4 var_D8(8)
  loc_BE5CA3: ConcatStr
  loc_BE5CA4: FStStrNoPop var_A8
  loc_BE5CA7: LitStr ")"
  loc_BE5CAA: ConcatStr
  loc_BE5CAB: CVarStr var_D0
  loc_BE5CAE: PopAdLdVar
  loc_BE5CAF: FLdPr Me
  loc_BE5CB2: MemLdRfVar from_stack_1.global_60
  loc_BE5CB5: LdPrVar
  loc_BE5CB7: LateMemCall
  loc_BE5CBD: FFree1Str var_A8
  loc_BE5CC0: FFree1Var var_D0 = ""
  loc_BE5CC3: LitVarStr var_94, "        </td>"
  loc_BE5CC8: PopAdLdVar
  loc_BE5CC9: FLdPr Me
  loc_BE5CCC: MemLdRfVar from_stack_1.global_60
  loc_BE5CCF: LdPrVar
  loc_BE5CD1: LateMemCall
  loc_BE5CD7: LitVarStr var_94, "      </tr>"
  loc_BE5CDC: PopAdLdVar
  loc_BE5CDD: FLdPr Me
  loc_BE5CE0: MemLdRfVar from_stack_1.global_60
  loc_BE5CE3: LdPrVar
  loc_BE5CE5: LateMemCall
  loc_BE5CEB: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE5CF0: PopAdLdVar
  loc_BE5CF1: FLdPr Me
  loc_BE5CF4: MemLdRfVar from_stack_1.global_60
  loc_BE5CF7: LdPrVar
  loc_BE5CF9: LateMemCall
  loc_BE5CFF: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Postal:</strong></td>"
  loc_BE5D04: PopAdLdVar
  loc_BE5D05: FLdPr Me
  loc_BE5D08: MemLdRfVar from_stack_1.global_60
  loc_BE5D0B: LdPrVar
  loc_BE5D0D: LateMemCall
  loc_BE5D13: LitStr "        <td colspan=""6"" class=""DomiPostal"">Calle: "
  loc_BE5D16: FMemLdR4 var_D8(12)
  loc_BE5D1B: ConcatStr
  loc_BE5D1C: FStStrNoPop var_A8
  loc_BE5D1F: LitStr " Nro: "
  loc_BE5D22: ConcatStr
  loc_BE5D23: FStStrNoPop var_AC
  loc_BE5D26: FMemLdR4 var_D8(16)
  loc_BE5D2B: ConcatStr
  loc_BE5D2C: CVarStr var_D0
  loc_BE5D2F: PopAdLdVar
  loc_BE5D30: FLdPr Me
  loc_BE5D33: MemLdRfVar from_stack_1.global_60
  loc_BE5D36: LdPrVar
  loc_BE5D38: LateMemCall
  loc_BE5D3E: FFreeStr var_A8 = ""
  loc_BE5D45: FFree1Var var_D0 = ""
  loc_BE5D48: FMemLdR4 var_D8(20)
  loc_BE5D4D: LitStr vbNullString
  loc_BE5D50: NeStr
  loc_BE5D52: BranchF loc_BE5D73
  loc_BE5D55: LitStr " Barrio: "
  loc_BE5D58: FMemLdR4 var_D8(20)
  loc_BE5D5D: ConcatStr
  loc_BE5D5E: CVarStr var_D0
  loc_BE5D61: PopAdLdVar
  loc_BE5D62: FLdPr Me
  loc_BE5D65: MemLdRfVar from_stack_1.global_60
  loc_BE5D68: LdPrVar
  loc_BE5D6A: LateMemCall
  loc_BE5D70: FFree1Var var_D0 = ""
  loc_BE5D73: FMemLdR4 var_D8(24)
  loc_BE5D78: LitStr vbNullString
  loc_BE5D7B: NeStr
  loc_BE5D7D: BranchF loc_BE5D9E
  loc_BE5D80: LitStr " Mza: "
  loc_BE5D83: FMemLdR4 var_D8(24)
  loc_BE5D88: ConcatStr
  loc_BE5D89: CVarStr var_D0
  loc_BE5D8C: PopAdLdVar
  loc_BE5D8D: FLdPr Me
  loc_BE5D90: MemLdRfVar from_stack_1.global_60
  loc_BE5D93: LdPrVar
  loc_BE5D95: LateMemCall
  loc_BE5D9B: FFree1Var var_D0 = ""
  loc_BE5D9E: FMemLdR4 var_D8(28)
  loc_BE5DA3: LitStr vbNullString
  loc_BE5DA6: NeStr
  loc_BE5DA8: BranchF loc_BE5DC9
  loc_BE5DAB: LitStr " Casa: "
  loc_BE5DAE: FMemLdR4 var_D8(28)
  loc_BE5DB3: ConcatStr
  loc_BE5DB4: CVarStr var_D0
  loc_BE5DB7: PopAdLdVar
  loc_BE5DB8: FLdPr Me
  loc_BE5DBB: MemLdRfVar from_stack_1.global_60
  loc_BE5DBE: LdPrVar
  loc_BE5DC0: LateMemCall
  loc_BE5DC6: FFree1Var var_D0 = ""
  loc_BE5DC9: FMemLdR4 var_D8(32)
  loc_BE5DCE: LitStr vbNullString
  loc_BE5DD1: NeStr
  loc_BE5DD3: BranchF loc_BE5DED
  loc_BE5DD6: FMemLdRf 0
  loc_BE5DDB: CDargRef
  loc_BE5DDF: FLdPr Me
  loc_BE5DE2: MemLdRfVar from_stack_1.global_60
  loc_BE5DE5: LdPrVar
  loc_BE5DE7: LateMemCall
  loc_BE5DED: LitStr "         <br>Loc: "
  loc_BE5DF0: FMemLdR4 var_D8(36)
  loc_BE5DF5: ConcatStr
  loc_BE5DF6: FStStrNoPop var_A8
  loc_BE5DF9: LitStr " CP: "
  loc_BE5DFC: ConcatStr
  loc_BE5DFD: FStStrNoPop var_AC
  loc_BE5E00: FMemLdR4 var_D8(40)
  loc_BE5E05: ConcatStr
  loc_BE5E06: FStStrNoPop var_B0
  loc_BE5E09: LitStr "</td>"
  loc_BE5E0C: ConcatStr
  loc_BE5E0D: CVarStr var_D0
  loc_BE5E10: PopAdLdVar
  loc_BE5E11: FLdPr Me
  loc_BE5E14: MemLdRfVar from_stack_1.global_60
  loc_BE5E17: LdPrVar
  loc_BE5E19: LateMemCall
  loc_BE5E1F: FFreeStr var_A8 = "": var_AC = ""
  loc_BE5E28: FFree1Var var_D0 = ""
  loc_BE5E2B: LitVarStr var_94, "      </tr>"
  loc_BE5E30: PopAdLdVar
  loc_BE5E31: FLdPr Me
  loc_BE5E34: MemLdRfVar from_stack_1.global_60
  loc_BE5E37: LdPrVar
  loc_BE5E39: LateMemCall
  loc_BE5E3F: LitVarStr var_94, "        <tr valign=""top"">"
  loc_BE5E44: PopAdLdVar
  loc_BE5E45: FLdPr Me
  loc_BE5E48: MemLdRfVar from_stack_1.global_60
  loc_BE5E4B: LdPrVar
  loc_BE5E4D: LateMemCall
  loc_BE5E53: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Real:</strong></td>"
  loc_BE5E58: PopAdLdVar
  loc_BE5E59: FLdPr Me
  loc_BE5E5C: MemLdRfVar from_stack_1.global_60
  loc_BE5E5F: LdPrVar
  loc_BE5E61: LateMemCall
  loc_BE5E67: LitStr "        <td colspan=""6"" class=""DomiReal"">Calle: "
  loc_BE5E6A: FMemLdR4 var_D8(44)
  loc_BE5E6F: ConcatStr
  loc_BE5E70: FStStrNoPop var_A8
  loc_BE5E73: LitStr " Nro: "
  loc_BE5E76: ConcatStr
  loc_BE5E77: FStStrNoPop var_AC
  loc_BE5E7A: FMemLdR4 var_D8(48)
  loc_BE5E7F: ConcatStr
  loc_BE5E80: CVarStr var_D0
  loc_BE5E83: PopAdLdVar
  loc_BE5E84: FLdPr Me
  loc_BE5E87: MemLdRfVar from_stack_1.global_60
  loc_BE5E8A: LdPrVar
  loc_BE5E8C: LateMemCall
  loc_BE5E92: FFreeStr var_A8 = ""
  loc_BE5E99: FFree1Var var_D0 = ""
  loc_BE5E9C: FMemLdR4 var_D8(52)
  loc_BE5EA1: LitStr vbNullString
  loc_BE5EA4: NeStr
  loc_BE5EA6: BranchF loc_BE5EC7
  loc_BE5EA9: LitStr " Barrio: "
  loc_BE5EAC: FMemLdR4 var_D8(52)
  loc_BE5EB1: ConcatStr
  loc_BE5EB2: CVarStr var_D0
  loc_BE5EB5: PopAdLdVar
  loc_BE5EB6: FLdPr Me
  loc_BE5EB9: MemLdRfVar from_stack_1.global_60
  loc_BE5EBC: LdPrVar
  loc_BE5EBE: LateMemCall
  loc_BE5EC4: FFree1Var var_D0 = ""
  loc_BE5EC7: FMemLdR4 var_D8(56)
  loc_BE5ECC: LitStr vbNullString
  loc_BE5ECF: NeStr
  loc_BE5ED1: BranchF loc_BE5EF2
  loc_BE5ED4: LitStr " Mza: "
  loc_BE5ED7: FMemLdR4 var_D8(56)
  loc_BE5EDC: ConcatStr
  loc_BE5EDD: CVarStr var_D0
  loc_BE5EE0: PopAdLdVar
  loc_BE5EE1: FLdPr Me
  loc_BE5EE4: MemLdRfVar from_stack_1.global_60
  loc_BE5EE7: LdPrVar
  loc_BE5EE9: LateMemCall
  loc_BE5EEF: FFree1Var var_D0 = ""
  loc_BE5EF2: FMemLdR4 var_D8(60)
  loc_BE5EF7: LitStr vbNullString
  loc_BE5EFA: NeStr
  loc_BE5EFC: BranchF loc_BE5F1D
  loc_BE5EFF: LitStr " Casa: "
  loc_BE5F02: FMemLdR4 var_D8(60)
  loc_BE5F07: ConcatStr
  loc_BE5F08: CVarStr var_D0
  loc_BE5F0B: PopAdLdVar
  loc_BE5F0C: FLdPr Me
  loc_BE5F0F: MemLdRfVar from_stack_1.global_60
  loc_BE5F12: LdPrVar
  loc_BE5F14: LateMemCall
  loc_BE5F1A: FFree1Var var_D0 = ""
  loc_BE5F1D: FMemLdR4 var_D8(64)
  loc_BE5F22: LitStr vbNullString
  loc_BE5F25: NeStr
  loc_BE5F27: BranchF loc_BE5F41
  loc_BE5F2A: FMemLdRf 0
  loc_BE5F2F: CDargRef
  loc_BE5F33: FLdPr Me
  loc_BE5F36: MemLdRfVar from_stack_1.global_60
  loc_BE5F39: LdPrVar
  loc_BE5F3B: LateMemCall
  loc_BE5F41: LitStr "         <br>Loc: "
  loc_BE5F44: FMemLdR4 var_D8(68)
  loc_BE5F49: ConcatStr
  loc_BE5F4A: FStStrNoPop var_A8
  loc_BE5F4D: LitStr " CP: "
  loc_BE5F50: ConcatStr
  loc_BE5F51: FStStrNoPop var_AC
  loc_BE5F54: FMemLdR4 var_D8(72)
  loc_BE5F59: ConcatStr
  loc_BE5F5A: FStStrNoPop var_B0
  loc_BE5F5D: LitStr "</td>"
  loc_BE5F60: ConcatStr
  loc_BE5F61: CVarStr var_D0
  loc_BE5F64: PopAdLdVar
  loc_BE5F65: FLdPr Me
  loc_BE5F68: MemLdRfVar from_stack_1.global_60
  loc_BE5F6B: LdPrVar
  loc_BE5F6D: LateMemCall
  loc_BE5F73: FFreeStr var_A8 = "": var_AC = ""
  loc_BE5F7C: FFree1Var var_D0 = ""
  loc_BE5F7F: LitVarStr var_94, "      </tr>"
  loc_BE5F84: PopAdLdVar
  loc_BE5F85: FLdPr Me
  loc_BE5F88: MemLdRfVar from_stack_1.global_60
  loc_BE5F8B: LdPrVar
  loc_BE5F8D: LateMemCall
  loc_BE5F93: LitVarStr var_94, "    </table>"
  loc_BE5F98: PopAdLdVar
  loc_BE5F99: FLdPr Me
  loc_BE5F9C: MemLdRfVar from_stack_1.global_60
  loc_BE5F9F: LdPrVar
  loc_BE5FA1: LateMemCall
  loc_BE5FA7: LitI4 0
  loc_BE5FAC: FStR4 var_D8
  loc_BE5FAF: AryUnlock
  loc_BE5FB2: ExitProcHresult
End Function

Private Function Proc_311_22_B750AC() 'B750AC
  'Data Table: 4A35B0
  loc_B74BD8: FLdPr Me
  loc_B74BDB: MemLdStr global_100
  loc_B74BDE: FLdPr Me
  loc_B74BE1: MemLdStr global_96
  loc_B74BE4: AryLock
  loc_B74BE7: Ary1LdRf
  loc_B74BE8: FStR4 var_8C
  loc_B74BEB: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B74BF0: PopAdLdVar
  loc_B74BF1: FLdPr Me
  loc_B74BF4: MemLdRfVar from_stack_1.global_60
  loc_B74BF7: LdPrVar
  loc_B74BF9: LateMemCall
  loc_B74BFF: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B74C04: PopAdLdVar
  loc_B74C05: FLdPr Me
  loc_B74C08: MemLdRfVar from_stack_1.global_60
  loc_B74C0B: LdPrVar
  loc_B74C0D: LateMemCall
  loc_B74C13: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B74C18: PopAdLdVar
  loc_B74C19: FLdPr Me
  loc_B74C1C: MemLdRfVar from_stack_1.global_60
  loc_B74C1F: LdPrVar
  loc_B74C21: LateMemCall
  loc_B74C27: FMemLdR4 var_8C(92)
  loc_B74C2C: CR8Str
  loc_B74C2E: LitI2_Byte 0
  loc_B74C30: CR8I2
  loc_B74C31: GtR4
  loc_B74C32: BranchF loc_B74C49
  loc_B74C35: LitVarStr var_9C, "      <p>Seg&uacute;n nuestros registros esta cuenta registra deuda. Existen convenientes planes de pago.<br>Evite cobro por v&iacute;a judicial!!!</p>"
  loc_B74C3A: PopAdLdVar
  loc_B74C3B: FLdPr Me
  loc_B74C3E: MemLdRfVar from_stack_1.global_60
  loc_B74C41: LdPrVar
  loc_B74C43: LateMemCall
  loc_B74C49: LitVarStr var_9C, "      <p><strong>SOLO SU PAGO EN T&Eacute;RMINO NOS PERMITE CUMPLIR</strong><br>"
  loc_B74C4E: PopAdLdVar
  loc_B74C4F: FLdPr Me
  loc_B74C52: MemLdRfVar from_stack_1.global_60
  loc_B74C55: LdPrVar
  loc_B74C57: LateMemCall
  loc_B74C5D: LitStr "        SR. CAJERO:<br><strong>NO COBRAR BOLETO BIMESTRAL DESPU&Eacute;S DEL 31/12/"
  loc_B74C60: FLdRfVar var_AE
  loc_B74C63: FLdPr Me
  loc_B74C66: MemLdRfVar from_stack_1.global_84
  loc_B74C69: NewIfNullPr clsliquidacion
  loc_B74C6C: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B74C71: FLdI2 var_AE
  loc_B74C74: CStrUI1
  loc_B74C76: FStStrNoPop var_B4
  loc_B74C79: ConcatStr
  loc_B74C7A: FStStrNoPop var_B8
  loc_B74C7D: LitStr ".<br>"
  loc_B74C80: ConcatStr
  loc_B74C81: CVarStr var_C8
  loc_B74C84: PopAdLdVar
  loc_B74C85: FLdPr Me
  loc_B74C88: MemLdRfVar from_stack_1.global_60
  loc_B74C8B: LdPrVar
  loc_B74C8D: LateMemCall
  loc_B74C93: FFreeStr var_B4 = ""
  loc_B74C9A: FFree1Var var_C8 = ""
  loc_B74C9D: LitVarStr var_9C, "      <p>Los periodos bimestrales podr&aacute;n pagarse en las Entidades autorizadas hasta la fecha arriba indicada, luego de su vencimiento.<br>"
  loc_B74CA2: PopAdLdVar
  loc_B74CA3: FLdPr Me
  loc_B74CA6: MemLdRfVar from_stack_1.global_60
  loc_B74CA9: LdPrVar
  loc_B74CAB: LateMemCall
  loc_B74CB1: LitVarStr var_9C, "        El recargo por morosidad se liquidar&aacute; en el pr&oacute;ximo periodo.</p>"
  loc_B74CB6: PopAdLdVar
  loc_B74CB7: FLdPr Me
  loc_B74CBA: MemLdRfVar from_stack_1.global_60
  loc_B74CBD: LdPrVar
  loc_B74CBF: LateMemCall
  loc_B74CC5: LitVarStr var_9C, "      <p><strong>SIN TICKET DE CAJA NO ACREDITA PAGO del periodo correspondiente.</strong></p>"
  loc_B74CCA: PopAdLdVar
  loc_B74CCB: FLdPr Me
  loc_B74CCE: MemLdRfVar from_stack_1.global_60
  loc_B74CD1: LdPrVar
  loc_B74CD3: LateMemCall
  loc_B74CD9: LitVarStr var_9C, "    </td>"
  loc_B74CDE: PopAdLdVar
  loc_B74CDF: FLdPr Me
  loc_B74CE2: MemLdRfVar from_stack_1.global_60
  loc_B74CE5: LdPrVar
  loc_B74CE7: LateMemCall
  loc_B74CED: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B74CF2: PopAdLdVar
  loc_B74CF3: FLdPr Me
  loc_B74CF6: MemLdRfVar from_stack_1.global_60
  loc_B74CF9: LdPrVar
  loc_B74CFB: LateMemCall
  loc_B74D01: FMemLdR4 var_8C(108)
  loc_B74D06: LitI2_Byte 1
  loc_B74D08: FnUBound
  loc_B74D0A: LitI4 0
  loc_B74D0F: GtI4
  loc_B74D10: BranchF loc_B74F5F
  loc_B74D13: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""0"" cellspacing=""2"" cellpadding=""0"">"
  loc_B74D18: PopAdLdVar
  loc_B74D19: FLdPr Me
  loc_B74D1C: MemLdRfVar from_stack_1.global_60
  loc_B74D1F: LdPrVar
  loc_B74D21: LateMemCall
  loc_B74D27: LitVarStr var_9C, "       <caption class=""Rubros""><strong>Detalle de Actividades y Rubros</strong></caption>"
  loc_B74D2C: PopAdLdVar
  loc_B74D2D: FLdPr Me
  loc_B74D30: MemLdRfVar from_stack_1.global_60
  loc_B74D33: LdPrVar
  loc_B74D35: LateMemCall
  loc_B74D3B: LitVarStr var_9C, "        <tr class=""EncabezadoRubros"" align=""center"">"
  loc_B74D40: PopAdLdVar
  loc_B74D41: FLdPr Me
  loc_B74D44: MemLdRfVar from_stack_1.global_60
  loc_B74D47: LdPrVar
  loc_B74D49: LateMemCall
  loc_B74D4F: LitVarStr var_9C, "          <td>Rubro</td>"
  loc_B74D54: PopAdLdVar
  loc_B74D55: FLdPr Me
  loc_B74D58: MemLdRfVar from_stack_1.global_60
  loc_B74D5B: LdPrVar
  loc_B74D5D: LateMemCall
  loc_B74D63: LitVarStr var_9C, "          <td>Subrubro</td>"
  loc_B74D68: PopAdLdVar
  loc_B74D69: FLdPr Me
  loc_B74D6C: MemLdRfVar from_stack_1.global_60
  loc_B74D6F: LdPrVar
  loc_B74D71: LateMemCall
  loc_B74D77: LitVarStr var_9C, "          <td>Categor&iacute;a</td>"
  loc_B74D7C: PopAdLdVar
  loc_B74D7D: FLdPr Me
  loc_B74D80: MemLdRfVar from_stack_1.global_60
  loc_B74D83: LdPrVar
  loc_B74D85: LateMemCall
  loc_B74D8B: LitVarStr var_9C, "          <td>Cantidad</td>"
  loc_B74D90: PopAdLdVar
  loc_B74D91: FLdPr Me
  loc_B74D94: MemLdRfVar from_stack_1.global_60
  loc_B74D97: LdPrVar
  loc_B74D99: LateMemCall
  loc_B74D9F: LitVarStr var_9C, "          <td>Importe</td>"
  loc_B74DA4: PopAdLdVar
  loc_B74DA5: FLdPr Me
  loc_B74DA8: MemLdRfVar from_stack_1.global_60
  loc_B74DAB: LdPrVar
  loc_B74DAD: LateMemCall
  loc_B74DB3: LitVarStr var_9C, "        </tr>"
  loc_B74DB8: PopAdLdVar
  loc_B74DB9: FLdPr Me
  loc_B74DBC: MemLdRfVar from_stack_1.global_60
  loc_B74DBF: LdPrVar
  loc_B74DC1: LateMemCall
  loc_B74DC7: LitI2_Byte 1
  loc_B74DC9: FLdPr Me
  loc_B74DCC: MemLdRfVar from_stack_1.global_104
  loc_B74DCF: FMemLdR4 var_8C(108)
  loc_B74DD4: LitI2_Byte 1
  loc_B74DD6: FnUBound
  loc_B74DD8: CI2I4
  loc_B74DD9: ForI2 var_CC
  loc_B74DDF: FLdPr Me
  loc_B74DE2: MemLdI2 global_104
  loc_B74DE5: CI4UI1
  loc_B74DE6: FMemLdR4 var_8C(108)
  loc_B74DEB: AryLock
  loc_B74DEE: Ary1LdRf
  loc_B74DEF: FStR4 var_D4
  loc_B74DF2: LitVarStr var_9C, "        <tr align=""right"">"
  loc_B74DF7: PopAdLdVar
  loc_B74DF8: FLdPr Me
  loc_B74DFB: MemLdRfVar from_stack_1.global_60
  loc_B74DFE: LdPrVar
  loc_B74E00: LateMemCall
  loc_B74E06: LitStr "Rubros"
  loc_B74E09: LitI2_Byte 0
  loc_B74E0B: LitI2_Byte 0
  loc_B74E0D: LitI2_Byte 0
  loc_B74E0F: LitStr "right"
  loc_B74E12: FMemLdR4 var_D4(0)
  loc_B74E17: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74E1C: CVarStr var_C8
  loc_B74E1F: PopAdLdVar
  loc_B74E20: FLdPr Me
  loc_B74E23: MemLdRfVar from_stack_1.global_60
  loc_B74E26: LdPrVar
  loc_B74E28: LateMemCall
  loc_B74E2E: FFree1Var var_C8 = ""
  loc_B74E31: LitStr "Rubros"
  loc_B74E34: LitI2_Byte 0
  loc_B74E36: LitI2_Byte 0
  loc_B74E38: LitI2_Byte 0
  loc_B74E3A: LitStr "right"
  loc_B74E3D: FMemLdR4 var_D4(4)
  loc_B74E42: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74E47: CVarStr var_C8
  loc_B74E4A: PopAdLdVar
  loc_B74E4B: FLdPr Me
  loc_B74E4E: MemLdRfVar from_stack_1.global_60
  loc_B74E51: LdPrVar
  loc_B74E53: LateMemCall
  loc_B74E59: FFree1Var var_C8 = ""
  loc_B74E5C: LitStr "Rubros"
  loc_B74E5F: LitI2_Byte 0
  loc_B74E61: LitI2_Byte 0
  loc_B74E63: LitI2_Byte 0
  loc_B74E65: LitStr "right"
  loc_B74E68: FMemLdR4 var_D4(12)
  loc_B74E6D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74E72: CVarStr var_C8
  loc_B74E75: PopAdLdVar
  loc_B74E76: FLdPr Me
  loc_B74E79: MemLdRfVar from_stack_1.global_60
  loc_B74E7C: LdPrVar
  loc_B74E7E: LateMemCall
  loc_B74E84: FFree1Var var_C8 = ""
  loc_B74E87: LitStr "Rubros"
  loc_B74E8A: LitI2_Byte 0
  loc_B74E8C: LitI2_Byte 0
  loc_B74E8E: LitI2_Byte 0
  loc_B74E90: LitStr "right"
  loc_B74E93: FMemLdR4 var_D4(16)
  loc_B74E98: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74E9D: CVarStr var_C8
  loc_B74EA0: PopAdLdVar
  loc_B74EA1: FLdPr Me
  loc_B74EA4: MemLdRfVar from_stack_1.global_60
  loc_B74EA7: LdPrVar
  loc_B74EA9: LateMemCall
  loc_B74EAF: FFree1Var var_C8 = ""
  loc_B74EB2: LitStr "Rubros"
  loc_B74EB5: LitI2_Byte 0
  loc_B74EB7: LitI2_Byte 0
  loc_B74EB9: LitI2_Byte 0
  loc_B74EBB: LitStr "right"
  loc_B74EBE: FMemLdR4 var_D4(20)
  loc_B74EC3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74EC8: CVarStr var_C8
  loc_B74ECB: PopAdLdVar
  loc_B74ECC: FLdPr Me
  loc_B74ECF: MemLdRfVar from_stack_1.global_60
  loc_B74ED2: LdPrVar
  loc_B74ED4: LateMemCall
  loc_B74EDA: FFree1Var var_C8 = ""
  loc_B74EDD: LitVarStr var_9C, "        </tr>"
  loc_B74EE2: PopAdLdVar
  loc_B74EE3: FLdPr Me
  loc_B74EE6: MemLdRfVar from_stack_1.global_60
  loc_B74EE9: LdPrVar
  loc_B74EEB: LateMemCall
  loc_B74EF1: LitI4 0
  loc_B74EF6: FStR4 var_D4
  loc_B74EF9: AryUnlock
  loc_B74EFC: FLdPr Me
  loc_B74EFF: MemLdRfVar from_stack_1.global_104
  loc_B74F02: NextI2 var_CC, loc_B74DDF
  loc_B74F07: FMemLdI2 var_8C(100)
  loc_B74F0C: BranchF loc_B74F4B
  loc_B74F0F: LitVarStr var_9C, "        <tr align=""right"">"
  loc_B74F14: PopAdLdVar
  loc_B74F15: FLdPr Me
  loc_B74F18: MemLdRfVar from_stack_1.global_60
  loc_B74F1B: LdPrVar
  loc_B74F1D: LateMemCall
  loc_B74F23: LitVarStr var_9C, "          <td colspan=""5"" align=""center"" class=""EncabezadoRubros"">Se muestran sólo los 10 primeros.</td>"
  loc_B74F28: PopAdLdVar
  loc_B74F29: FLdPr Me
  loc_B74F2C: MemLdRfVar from_stack_1.global_60
  loc_B74F2F: LdPrVar
  loc_B74F31: LateMemCall
  loc_B74F37: LitVarStr var_9C, "        </tr>"
  loc_B74F3C: PopAdLdVar
  loc_B74F3D: FLdPr Me
  loc_B74F40: MemLdRfVar from_stack_1.global_60
  loc_B74F43: LdPrVar
  loc_B74F45: LateMemCall
  loc_B74F4B: LitVarStr var_9C, "      </table>"
  loc_B74F50: PopAdLdVar
  loc_B74F51: FLdPr Me
  loc_B74F54: MemLdRfVar from_stack_1.global_60
  loc_B74F57: LdPrVar
  loc_B74F59: LateMemCall
  loc_B74F5F: LitVarStr var_9C, "      <hr>"
  loc_B74F64: PopAdLdVar
  loc_B74F65: FLdPr Me
  loc_B74F68: MemLdRfVar from_stack_1.global_60
  loc_B74F6B: LdPrVar
  loc_B74F6D: LateMemCall
  loc_B74F73: LitStr "      <p>Razón Social: <strong>"
  loc_B74F76: FMemLdR4 var_8C(80)
  loc_B74F7B: ConcatStr
  loc_B74F7C: FStStrNoPop var_B4
  loc_B74F7F: LitStr "</strong></p>"
  loc_B74F82: ConcatStr
  loc_B74F83: CVarStr var_C8
  loc_B74F86: PopAdLdVar
  loc_B74F87: FLdPr Me
  loc_B74F8A: MemLdRfVar from_stack_1.global_60
  loc_B74F8D: LdPrVar
  loc_B74F8F: LateMemCall
  loc_B74F95: FFree1Str var_B4
  loc_B74F98: FFree1Var var_C8 = ""
  loc_B74F9B: LitVarStr var_9C, "      <p>ENTIDADES AUTORIZADAS PARA EL COBRO:<br>"
  loc_B74FA0: PopAdLdVar
  loc_B74FA1: FLdPr Me
  loc_B74FA4: MemLdRfVar from_stack_1.global_60
  loc_B74FA7: LdPrVar
  loc_B74FA9: LateMemCall
  loc_B74FAF: LitVarStr var_9C, "        Bancos: Supervielle/Macro/Credicoop/Nación<br>"
  loc_B74FB4: PopAdLdVar
  loc_B74FB5: FLdPr Me
  loc_B74FB8: MemLdRfVar from_stack_1.global_60
  loc_B74FBB: LdPrVar
  loc_B74FBD: LateMemCall
  loc_B74FC3: LitVarStr var_9C, "        Rapipago - Montemar C&iacute;a. Fiananc. - Pago F&aacute;cil<br>"
  loc_B74FC8: PopAdLdVar
  loc_B74FC9: FLdPr Me
  loc_B74FCC: MemLdRfVar from_stack_1.global_60
  loc_B74FCF: LdPrVar
  loc_B74FD1: LateMemCall
  loc_B74FD7: LitVarStr var_9C, "        Pague en www.pagomiscuentas.com o ingresando a Banelco en pagomiscuentas.com.ar.<br>"
  loc_B74FDC: PopAdLdVar
  loc_B74FDD: FLdPr Me
  loc_B74FE0: MemLdRfVar from_stack_1.global_60
  loc_B74FE3: LdPrVar
  loc_B74FE5: LateMemCall
  loc_B74FEB: LitVarStr var_9C, "        Link Pagos: Pague ingresando a www.linkpagos.com.ar desde un cajero LINK, las 24hs todos los d&iacute;as del a&ntilde;o."
  loc_B74FF0: PopAdLdVar
  loc_B74FF1: FLdPr Me
  loc_B74FF4: MemLdRfVar from_stack_1.global_60
  loc_B74FF7: LdPrVar
  loc_B74FF9: LateMemCall
  loc_B74FFF: LitVarStr var_9C, "        También se puede abonar en E-PAGOS y/o MACRO CLICK ingresando en la pagina web del municipio."
  loc_B75004: PopAdLdVar
  loc_B75005: FLdPr Me
  loc_B75008: MemLdRfVar from_stack_1.global_60
  loc_B7500B: LdPrVar
  loc_B7500D: LateMemCall
  loc_B75013: LitVarStr var_9C, "      </p>"
  loc_B75018: PopAdLdVar
  loc_B75019: FLdPr Me
  loc_B7501C: MemLdRfVar from_stack_1.global_60
  loc_B7501F: LdPrVar
  loc_B75021: LateMemCall
  loc_B75027: LitVarStr var_9C, "    </td>"
  loc_B7502C: PopAdLdVar
  loc_B7502D: FLdPr Me
  loc_B75030: MemLdRfVar from_stack_1.global_60
  loc_B75033: LdPrVar
  loc_B75035: LateMemCall
  loc_B7503B: LitVarStr var_9C, "  </tr>"
  loc_B75040: PopAdLdVar
  loc_B75041: FLdPr Me
  loc_B75044: MemLdRfVar from_stack_1.global_60
  loc_B75047: LdPrVar
  loc_B75049: LateMemCall
  loc_B7504F: LitVarStr var_9C, "  </table>"
  loc_B75054: PopAdLdVar
  loc_B75055: FLdPr Me
  loc_B75058: MemLdRfVar from_stack_1.global_60
  loc_B7505B: LdPrVar
  loc_B7505D: LateMemCall
  loc_B75063: LitVarStr var_9C, "  </td>"
  loc_B75068: PopAdLdVar
  loc_B75069: FLdPr Me
  loc_B7506C: MemLdRfVar from_stack_1.global_60
  loc_B7506F: LdPrVar
  loc_B75071: LateMemCall
  loc_B75077: LitVarStr var_9C, "  </tr>"
  loc_B7507C: PopAdLdVar
  loc_B7507D: FLdPr Me
  loc_B75080: MemLdRfVar from_stack_1.global_60
  loc_B75083: LdPrVar
  loc_B75085: LateMemCall
  loc_B7508B: LitVarStr var_9C, "</table>"
  loc_B75090: PopAdLdVar
  loc_B75091: FLdPr Me
  loc_B75094: MemLdRfVar from_stack_1.global_60
  loc_B75097: LdPrVar
  loc_B75099: LateMemCall
  loc_B7509F: LitI4 0
  loc_B750A4: FStR4 var_8C
  loc_B750A7: AryUnlock
  loc_B750AA: ExitProcHresult
End Function

Private Function Proc_311_23_BAFCE4() 'BAFCE4
  'Data Table: 4A35B0
  loc_BAF670: LitVarStr var_94, "<table align=""center"" height=""500"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_BAF675: PopAdLdVar
  loc_BAF676: FLdPr Me
  loc_BAF679: MemLdRfVar from_stack_1.global_60
  loc_BAF67C: LdPrVar
  loc_BAF67E: LateMemCall
  loc_BAF684: FLdPr Me
  loc_BAF687: MemLdStr global_100
  loc_BAF68A: FLdPr Me
  loc_BAF68D: MemLdStr global_96
  loc_BAF690: AryLock
  loc_BAF693: Ary1LdRf
  loc_BAF694: FStR4 var_AC
  loc_BAF697: LitI2_Byte 0
  loc_BAF699: CUI1I2
  loc_BAF69B: FLdPr Me
  loc_BAF69E: MemLdRfVar from_stack_1.global_106
  loc_BAF6A1: FMemLdR4 var_AC(112)
  loc_BAF6A6: LitI2_Byte 1
  loc_BAF6A8: FnUBound
  loc_BAF6AA: CUI1I4
  loc_BAF6AC: ForUI1 var_B0
  loc_BAF6B2: FLdPr Me
  loc_BAF6B5: MemLdUI1 global_106
  loc_BAF6B9: CI2UI1
  loc_BAF6BB: LitI2_Byte 0
  loc_BAF6BD: EqI2
  loc_BAF6BE: FLdPr Me
  loc_BAF6C1: MemLdUI1 global_106
  loc_BAF6C5: CI4UI1
  loc_BAF6C6: FMemLdR4 var_AC(112)
  loc_BAF6CB: Ary1LdPr
  loc_BAF6CC: MemLdStr global_12
  loc_BAF6CF: LitStr vbNullString
  loc_BAF6D2: EqStr
  loc_BAF6D4: AndI4
  loc_BAF6D5: BranchF loc_BAF6DB
  loc_BAF6D8: Branch loc_BAFCC9
  loc_BAF6DB: LitVarStr var_94, "  <tr>"
  loc_BAF6E0: PopAdLdVar
  loc_BAF6E1: FLdPr Me
  loc_BAF6E4: MemLdRfVar from_stack_1.global_60
  loc_BAF6E7: LdPrVar
  loc_BAF6E9: LateMemCall
  loc_BAF6EF: LitVarStr var_94, "    <td valign=""top"" height=""111"">"
  loc_BAF6F4: PopAdLdVar
  loc_BAF6F5: FLdPr Me
  loc_BAF6F8: MemLdRfVar from_stack_1.global_60
  loc_BAF6FB: LdPrVar
  loc_BAF6FD: LateMemCall
  loc_BAF703: FLdPr Me
  loc_BAF706: MemLdUI1 global_106
  loc_BAF70A: CI4UI1
  loc_BAF70B: FMemLdR4 var_AC(112)
  loc_BAF710: Ary1LdPr
  loc_BAF711: MemLdI2 global_0
  loc_BAF714: BranchF loc_BAF72E
  loc_BAF717: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BAF71C: PopAdLdVar
  loc_BAF71D: FLdPr Me
  loc_BAF720: MemLdRfVar from_stack_1.global_60
  loc_BAF723: LdPrVar
  loc_BAF725: LateMemCall
  loc_BAF72B: Branch loc_BAF756
  loc_BAF72E: LitVarStr var_94, "    <br>"
  loc_BAF733: PopAdLdVar
  loc_BAF734: FLdPr Me
  loc_BAF737: MemLdRfVar from_stack_1.global_60
  loc_BAF73A: LdPrVar
  loc_BAF73C: LateMemCall
  loc_BAF742: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" style=""border:2px solid black"" >"
  loc_BAF747: PopAdLdVar
  loc_BAF748: FLdPr Me
  loc_BAF74B: MemLdRfVar from_stack_1.global_60
  loc_BAF74E: LdPrVar
  loc_BAF750: LateMemCall
  loc_BAF756: FLdPr Me
  loc_BAF759: MemLdUI1 global_106
  loc_BAF75D: CI4UI1
  loc_BAF75E: FMemLdR4 var_AC(112)
  loc_BAF763: AryLock
  loc_BAF766: Ary1LdRf
  loc_BAF767: FStR4 var_B8
  loc_BAF76A: LitVarStr var_94, "      <tr align=""center"">"
  loc_BAF76F: PopAdLdVar
  loc_BAF770: FLdPr Me
  loc_BAF773: MemLdRfVar from_stack_1.global_60
  loc_BAF776: LdPrVar
  loc_BAF778: LateMemCall
  loc_BAF77E: FMemLdI2 var_B8(0)
  loc_BAF783: BranchF loc_BAF7B9
  loc_BAF786: LitStr "        <td width=""46" & Chr(37) & """ colspan=""3"" rowspan=""2"" class=""NombreMunicipio NoBordeAbajo""><strong>"
  loc_BAF789: FMemLdR4 var_B8(4)
  loc_BAF78E: CI4Str
  loc_BAF78F: FLdPr Me
  loc_BAF792: MemLdRfVar from_stack_1.global_128
  loc_BAF795: Ary1LdI4
  loc_BAF796: ConcatStr
  loc_BAF797: FStStrNoPop var_BC
  loc_BAF79A: LitStr " BIMESTRE</strong></td>"
  loc_BAF79D: ConcatStr
  loc_BAF79E: CVarStr var_CC
  loc_BAF7A1: PopAdLdVar
  loc_BAF7A2: FLdPr Me
  loc_BAF7A5: MemLdRfVar from_stack_1.global_60
  loc_BAF7A8: LdPrVar
  loc_BAF7AA: LateMemCall
  loc_BAF7B0: FFree1Str var_BC
  loc_BAF7B3: FFree1Var var_CC = ""
  loc_BAF7B6: Branch loc_BAF7CD
  loc_BAF7B9: LitVarStr var_94, "        <td width=""46" & Chr(37) & """ colspan=""3"" rowspan=""2"" class=""NombreMunicipio NoBordeAbajo""><strong>ANUAL</strong></td>"
  loc_BAF7BE: PopAdLdVar
  loc_BAF7BF: FLdPr Me
  loc_BAF7C2: MemLdRfVar from_stack_1.global_60
  loc_BAF7C5: LdPrVar
  loc_BAF7C7: LateMemCall
  loc_BAF7CD: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">DERECHOS</td>"
  loc_BAF7D2: PopAdLdVar
  loc_BAF7D3: FLdPr Me
  loc_BAF7D6: MemLdRfVar from_stack_1.global_60
  loc_BAF7D9: LdPrVar
  loc_BAF7DB: LateMemCall
  loc_BAF7E1: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">DESCUENTOS</td>"
  loc_BAF7E6: PopAdLdVar
  loc_BAF7E7: FLdPr Me
  loc_BAF7EA: MemLdRfVar from_stack_1.global_60
  loc_BAF7ED: LdPrVar
  loc_BAF7EF: LateMemCall
  loc_BAF7F5: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">RECARGO</td>"
  loc_BAF7FA: PopAdLdVar
  loc_BAF7FB: FLdPr Me
  loc_BAF7FE: MemLdRfVar from_stack_1.global_60
  loc_BAF801: LdPrVar
  loc_BAF803: LateMemCall
  loc_BAF809: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">C. EMISI&Oacute;N</td>"
  loc_BAF80E: PopAdLdVar
  loc_BAF80F: FLdPr Me
  loc_BAF812: MemLdRfVar from_stack_1.global_60
  loc_BAF815: LdPrVar
  loc_BAF817: LateMemCall
  loc_BAF81D: LitVarStr var_94, "        <td class=""Encabezado"">TOTAL A PAGAR</td>"
  loc_BAF822: PopAdLdVar
  loc_BAF823: FLdPr Me
  loc_BAF826: MemLdRfVar from_stack_1.global_60
  loc_BAF829: LdPrVar
  loc_BAF82B: LateMemCall
  loc_BAF831: LitVarStr var_94, "      </tr>"
  loc_BAF836: PopAdLdVar
  loc_BAF837: FLdPr Me
  loc_BAF83A: MemLdRfVar from_stack_1.global_60
  loc_BAF83D: LdPrVar
  loc_BAF83F: LateMemCall
  loc_BAF845: LitVarStr var_94, "      <tr class=""NormalBloqueFin"" valign=""top"" align=""right"">"
  loc_BAF84A: PopAdLdVar
  loc_BAF84B: FLdPr Me
  loc_BAF84E: MemLdRfVar from_stack_1.global_60
  loc_BAF851: LdPrVar
  loc_BAF853: LateMemCall
  loc_BAF859: LitStr vbNullString
  loc_BAF85C: LitI2_Byte 0
  loc_BAF85E: LitI2_Byte 0
  loc_BAF860: LitI2_Byte 0
  loc_BAF862: LitI4 0
  loc_BAF867: FMemLdR4 var_B8(28)
  loc_BAF86C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF871: CVarStr var_CC
  loc_BAF874: PopAdLdVar
  loc_BAF875: FLdPr Me
  loc_BAF878: MemLdRfVar from_stack_1.global_60
  loc_BAF87B: LdPrVar
  loc_BAF87D: LateMemCall
  loc_BAF883: FFree1Var var_CC = ""
  loc_BAF886: LitStr vbNullString
  loc_BAF889: LitI2_Byte 0
  loc_BAF88B: LitI2_Byte 0
  loc_BAF88D: LitI2_Byte 0
  loc_BAF88F: LitI4 0
  loc_BAF894: FMemLdR4 var_B8(32)
  loc_BAF899: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF89E: CVarStr var_CC
  loc_BAF8A1: PopAdLdVar
  loc_BAF8A2: FLdPr Me
  loc_BAF8A5: MemLdRfVar from_stack_1.global_60
  loc_BAF8A8: LdPrVar
  loc_BAF8AA: LateMemCall
  loc_BAF8B0: FFree1Var var_CC = ""
  loc_BAF8B3: LitStr vbNullString
  loc_BAF8B6: LitI2_Byte 0
  loc_BAF8B8: LitI2_Byte 0
  loc_BAF8BA: LitI2_Byte 0
  loc_BAF8BC: LitI4 0
  loc_BAF8C1: FMemLdR4 var_B8(36)
  loc_BAF8C6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF8CB: CVarStr var_CC
  loc_BAF8CE: PopAdLdVar
  loc_BAF8CF: FLdPr Me
  loc_BAF8D2: MemLdRfVar from_stack_1.global_60
  loc_BAF8D5: LdPrVar
  loc_BAF8D7: LateMemCall
  loc_BAF8DD: FFree1Var var_CC = ""
  loc_BAF8E0: LitStr vbNullString
  loc_BAF8E3: LitI2_Byte 0
  loc_BAF8E5: LitI2_Byte 0
  loc_BAF8E7: LitI2_Byte 0
  loc_BAF8E9: LitI4 0
  loc_BAF8EE: FMemLdR4 var_B8(40)
  loc_BAF8F3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF8F8: CVarStr var_CC
  loc_BAF8FB: PopAdLdVar
  loc_BAF8FC: FLdPr Me
  loc_BAF8FF: MemLdRfVar from_stack_1.global_60
  loc_BAF902: LdPrVar
  loc_BAF904: LateMemCall
  loc_BAF90A: FFree1Var var_CC = ""
  loc_BAF90D: LitStr "Totales"
  loc_BAF910: LitI2_Byte 0
  loc_BAF912: LitI2_Byte 0
  loc_BAF914: LitI2_Byte 0
  loc_BAF916: LitI4 0
  loc_BAF91B: FMemLdR4 var_B8(44)
  loc_BAF920: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF925: CVarStr var_CC
  loc_BAF928: PopAdLdVar
  loc_BAF929: FLdPr Me
  loc_BAF92C: MemLdRfVar from_stack_1.global_60
  loc_BAF92F: LdPrVar
  loc_BAF931: LateMemCall
  loc_BAF937: FFree1Var var_CC = ""
  loc_BAF93A: LitVarStr var_94, "      </tr>"
  loc_BAF93F: PopAdLdVar
  loc_BAF940: FLdPr Me
  loc_BAF943: MemLdRfVar from_stack_1.global_60
  loc_BAF946: LdPrVar
  loc_BAF948: LateMemCall
  loc_BAF94E: LitVarStr var_94, "      <tr align=""left"">"
  loc_BAF953: PopAdLdVar
  loc_BAF954: FLdPr Me
  loc_BAF957: MemLdRfVar from_stack_1.global_60
  loc_BAF95A: LdPrVar
  loc_BAF95C: LateMemCall
  loc_BAF962: LitVarStr var_94, "          <td height=""42"" colspan=""3"" align=""center"" class=""Normal NoBordeArriba"" style=""border-right:none; border-bottom:none"">"
  loc_BAF967: PopAdLdVar
  loc_BAF968: FLdPr Me
  loc_BAF96B: MemLdRfVar from_stack_1.global_60
  loc_BAF96E: LdPrVar
  loc_BAF970: LateMemCall
  loc_BAF976: LitStr "                  <strong class=""NombreMunicipio"">"
  loc_BAF979: FLdRfVar var_CE
  loc_BAF97C: FLdPr Me
  loc_BAF97F: MemLdRfVar from_stack_1.global_84
  loc_BAF982: NewIfNullPr clsliquidacion
  loc_BAF985: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BAF98A: FLdI2 var_CE
  loc_BAF98D: CStrUI1
  loc_BAF98F: FStStrNoPop var_BC
  loc_BAF992: ConcatStr
  loc_BAF993: FStStrNoPop var_D4
  loc_BAF996: LitStr "</strong>"
  loc_BAF999: ConcatStr
  loc_BAF99A: CVarStr var_CC
  loc_BAF99D: PopAdLdVar
  loc_BAF99E: FLdPr Me
  loc_BAF9A1: MemLdRfVar from_stack_1.global_60
  loc_BAF9A4: LdPrVar
  loc_BAF9A6: LateMemCall
  loc_BAF9AC: FFreeStr var_BC = ""
  loc_BAF9B3: FFree1Var var_CC = ""
  loc_BAF9B6: LitVarStr var_94, "            </td>"
  loc_BAF9BB: PopAdLdVar
  loc_BAF9BC: FLdPr Me
  loc_BAF9BF: MemLdRfVar from_stack_1.global_60
  loc_BAF9C2: LdPrVar
  loc_BAF9C4: LateMemCall
  loc_BAF9CA: LitVarStr var_94, "          <td align=""center"" colspan=""9"" rowspan=""2"" class=""Normal"" style=""border-left:none"">"
  loc_BAF9CF: PopAdLdVar
  loc_BAF9D0: FLdPr Me
  loc_BAF9D3: MemLdRfVar from_stack_1.global_60
  loc_BAF9D6: LdPrVar
  loc_BAF9D8: LateMemCall
  loc_BAF9DE: LitVarStr var_94, "            <table align=""center"">"
  loc_BAF9E3: PopAdLdVar
  loc_BAF9E4: FLdPr Me
  loc_BAF9E7: MemLdRfVar from_stack_1.global_60
  loc_BAF9EA: LdPrVar
  loc_BAF9EC: LateMemCall
  loc_BAF9F2: LitStr "              <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_BAF9F5: LitI4 1
  loc_BAF9FA: FMemLdR4 var_B8(20)
  loc_BAF9FF: Ary1LdI4
  loc_BAFA00: ConcatStr
  loc_BAFA01: FStStrNoPop var_BC
  loc_BAFA04: LitStr "</td></tr>"
  loc_BAFA07: ConcatStr
  loc_BAFA08: CVarStr var_CC
  loc_BAFA0B: PopAdLdVar
  loc_BAFA0C: FLdPr Me
  loc_BAFA0F: MemLdRfVar from_stack_1.global_60
  loc_BAFA12: LdPrVar
  loc_BAFA14: LateMemCall
  loc_BAFA1A: FFree1Str var_BC
  loc_BAFA1D: FFree1Var var_CC = ""
  loc_BAFA20: LitStr "              <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BAFA23: LitI4 0
  loc_BAFA28: FMemLdR4 var_B8(20)
  loc_BAFA2D: Ary1LdI4
  loc_BAFA2E: ConcatStr
  loc_BAFA2F: FStStrNoPop var_BC
  loc_BAFA32: LitStr "</td></tr>"
  loc_BAFA35: ConcatStr
  loc_BAFA36: CVarStr var_CC
  loc_BAFA39: PopAdLdVar
  loc_BAFA3A: FLdPr Me
  loc_BAFA3D: MemLdRfVar from_stack_1.global_60
  loc_BAFA40: LdPrVar
  loc_BAFA42: LateMemCall
  loc_BAFA48: FFree1Str var_BC
  loc_BAFA4B: FFree1Var var_CC = ""
  loc_BAFA4E: LitVarStr var_94, "            </table>"
  loc_BAFA53: PopAdLdVar
  loc_BAFA54: FLdPr Me
  loc_BAFA57: MemLdRfVar from_stack_1.global_60
  loc_BAFA5A: LdPrVar
  loc_BAFA5C: LateMemCall
  loc_BAFA62: LitVarStr var_94, "          </td>"
  loc_BAFA67: PopAdLdVar
  loc_BAFA68: FLdPr Me
  loc_BAFA6B: MemLdRfVar from_stack_1.global_60
  loc_BAFA6E: LdPrVar
  loc_BAFA70: LateMemCall
  loc_BAFA76: LitVarStr var_94, "      </tr>"
  loc_BAFA7B: PopAdLdVar
  loc_BAFA7C: FLdPr Me
  loc_BAFA7F: MemLdRfVar from_stack_1.global_60
  loc_BAFA82: LdPrVar
  loc_BAFA84: LateMemCall
  loc_BAFA8A: LitVarStr var_94, "      <tr align=""left"">"
  loc_BAFA8F: PopAdLdVar
  loc_BAFA90: FLdPr Me
  loc_BAFA93: MemLdRfVar from_stack_1.global_60
  loc_BAFA96: LdPrVar
  loc_BAFA98: LateMemCall
  loc_BAFA9E: LitVarStr var_94, "        <td style=""border-right:none; border-top:none"" colspan=""3"" class=""Normal"" valign=""bottom"">"
  loc_BAFAA3: PopAdLdVar
  loc_BAFAA4: FLdPr Me
  loc_BAFAA7: MemLdRfVar from_stack_1.global_60
  loc_BAFAAA: LdPrVar
  loc_BAFAAC: LateMemCall
  loc_BAFAB2: LitVarStr var_94, "          <table border=""1"" cellpadding=""0"" cellspacing=""0"" width=""100" & Chr(37) & """>"
  loc_BAFAB7: PopAdLdVar
  loc_BAFAB8: FLdPr Me
  loc_BAFABB: MemLdRfVar from_stack_1.global_60
  loc_BAFABE: LdPrVar
  loc_BAFAC0: LateMemCall
  loc_BAFAC6: LitVarStr var_94, "              <tr align=""center"" class=""Encabezado"">"
  loc_BAFACB: PopAdLdVar
  loc_BAFACC: FLdPr Me
  loc_BAFACF: MemLdRfVar from_stack_1.global_60
  loc_BAFAD2: LdPrVar
  loc_BAFAD4: LateMemCall
  loc_BAFADA: FMemLdI2 var_B8(0)
  loc_BAFADF: BranchF loc_BAFBB1
  loc_BAFAE2: LitVarStr var_94, "                <td>PERIODO</td>"
  loc_BAFAE7: PopAdLdVar
  loc_BAFAE8: FLdPr Me
  loc_BAFAEB: MemLdRfVar from_stack_1.global_60
  loc_BAFAEE: LdPrVar
  loc_BAFAF0: LateMemCall
  loc_BAFAF6: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BAFAFB: PopAdLdVar
  loc_BAFAFC: FLdPr Me
  loc_BAFAFF: MemLdRfVar from_stack_1.global_60
  loc_BAFB02: LdPrVar
  loc_BAFB04: LateMemCall
  loc_BAFB0A: LitVarStr var_94, "              </tr>"
  loc_BAFB0F: PopAdLdVar
  loc_BAFB10: FLdPr Me
  loc_BAFB13: MemLdRfVar from_stack_1.global_60
  loc_BAFB16: LdPrVar
  loc_BAFB18: LateMemCall
  loc_BAFB1E: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BAFB23: PopAdLdVar
  loc_BAFB24: FLdPr Me
  loc_BAFB27: MemLdRfVar from_stack_1.global_60
  loc_BAFB2A: LdPrVar
  loc_BAFB2C: LateMemCall
  loc_BAFB32: LitStr "                <td>"
  loc_BAFB35: FMemLdR4 var_B8(4)
  loc_BAFB3A: ConcatStr
  loc_BAFB3B: FStStrNoPop var_BC
  loc_BAFB3E: LitStr "/"
  loc_BAFB41: ConcatStr
  loc_BAFB42: FStStrNoPop var_D4
  loc_BAFB45: FLdRfVar var_CE
  loc_BAFB48: FLdPr Me
  loc_BAFB4B: MemLdRfVar from_stack_1.global_84
  loc_BAFB4E: NewIfNullPr clsliquidacion
  loc_BAFB51: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BAFB56: FLdI2 var_CE
  loc_BAFB59: CStrUI1
  loc_BAFB5B: FStStrNoPop var_D8
  loc_BAFB5E: ConcatStr
  loc_BAFB5F: FStStrNoPop var_DC
  loc_BAFB62: LitStr "</td>"
  loc_BAFB65: ConcatStr
  loc_BAFB66: CVarStr var_CC
  loc_BAFB69: PopAdLdVar
  loc_BAFB6A: FLdPr Me
  loc_BAFB6D: MemLdRfVar from_stack_1.global_60
  loc_BAFB70: LdPrVar
  loc_BAFB72: LateMemCall
  loc_BAFB78: FFreeStr var_BC = "": var_D4 = "": var_D8 = ""
  loc_BAFB83: FFree1Var var_CC = ""
  loc_BAFB86: LitStr "                <td>"
  loc_BAFB89: FMemLdR4 var_B8(16)
  loc_BAFB8E: ConcatStr
  loc_BAFB8F: FStStrNoPop var_BC
  loc_BAFB92: LitStr "</td>"
  loc_BAFB95: ConcatStr
  loc_BAFB96: CVarStr var_CC
  loc_BAFB99: PopAdLdVar
  loc_BAFB9A: FLdPr Me
  loc_BAFB9D: MemLdRfVar from_stack_1.global_60
  loc_BAFBA0: LdPrVar
  loc_BAFBA2: LateMemCall
  loc_BAFBA8: FFree1Str var_BC
  loc_BAFBAB: FFree1Var var_CC = ""
  loc_BAFBAE: Branch loc_BAFC15
  loc_BAFBB1: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BAFBB6: PopAdLdVar
  loc_BAFBB7: FLdPr Me
  loc_BAFBBA: MemLdRfVar from_stack_1.global_60
  loc_BAFBBD: LdPrVar
  loc_BAFBBF: LateMemCall
  loc_BAFBC5: LitVarStr var_94, "              </tr>"
  loc_BAFBCA: PopAdLdVar
  loc_BAFBCB: FLdPr Me
  loc_BAFBCE: MemLdRfVar from_stack_1.global_60
  loc_BAFBD1: LdPrVar
  loc_BAFBD3: LateMemCall
  loc_BAFBD9: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BAFBDE: PopAdLdVar
  loc_BAFBDF: FLdPr Me
  loc_BAFBE2: MemLdRfVar from_stack_1.global_60
  loc_BAFBE5: LdPrVar
  loc_BAFBE7: LateMemCall
  loc_BAFBED: LitStr "                <td>"
  loc_BAFBF0: FMemLdR4 var_B8(16)
  loc_BAFBF5: ConcatStr
  loc_BAFBF6: FStStrNoPop var_BC
  loc_BAFBF9: LitStr "</td>"
  loc_BAFBFC: ConcatStr
  loc_BAFBFD: CVarStr var_CC
  loc_BAFC00: PopAdLdVar
  loc_BAFC01: FLdPr Me
  loc_BAFC04: MemLdRfVar from_stack_1.global_60
  loc_BAFC07: LdPrVar
  loc_BAFC09: LateMemCall
  loc_BAFC0F: FFree1Str var_BC
  loc_BAFC12: FFree1Var var_CC = ""
  loc_BAFC15: LitVarStr var_94, "              </tr>"
  loc_BAFC1A: PopAdLdVar
  loc_BAFC1B: FLdPr Me
  loc_BAFC1E: MemLdRfVar from_stack_1.global_60
  loc_BAFC21: LdPrVar
  loc_BAFC23: LateMemCall
  loc_BAFC29: LitVarStr var_94, "          </table>"
  loc_BAFC2E: PopAdLdVar
  loc_BAFC2F: FLdPr Me
  loc_BAFC32: MemLdRfVar from_stack_1.global_60
  loc_BAFC35: LdPrVar
  loc_BAFC37: LateMemCall
  loc_BAFC3D: LitVarStr var_94, "        </td>"
  loc_BAFC42: PopAdLdVar
  loc_BAFC43: FLdPr Me
  loc_BAFC46: MemLdRfVar from_stack_1.global_60
  loc_BAFC49: LdPrVar
  loc_BAFC4B: LateMemCall
  loc_BAFC51: LitVarStr var_94, "      </tr>"
  loc_BAFC56: PopAdLdVar
  loc_BAFC57: FLdPr Me
  loc_BAFC5A: MemLdRfVar from_stack_1.global_60
  loc_BAFC5D: LdPrVar
  loc_BAFC5F: LateMemCall
  loc_BAFC65: LitVarStr var_94, "    </table>"
  loc_BAFC6A: PopAdLdVar
  loc_BAFC6B: FLdPr Me
  loc_BAFC6E: MemLdRfVar from_stack_1.global_60
  loc_BAFC71: LdPrVar
  loc_BAFC73: LateMemCall
  loc_BAFC79: FMemLdI2 var_B8(0)
  loc_BAFC7E: NotI4
  loc_BAFC7F: BranchF loc_BAFC96
  loc_BAFC82: LitVarStr var_94, "    <br>"
  loc_BAFC87: PopAdLdVar
  loc_BAFC88: FLdPr Me
  loc_BAFC8B: MemLdRfVar from_stack_1.global_60
  loc_BAFC8E: LdPrVar
  loc_BAFC90: LateMemCall
  loc_BAFC96: LitVarStr var_94, "  </td>"
  loc_BAFC9B: PopAdLdVar
  loc_BAFC9C: FLdPr Me
  loc_BAFC9F: MemLdRfVar from_stack_1.global_60
  loc_BAFCA2: LdPrVar
  loc_BAFCA4: LateMemCall
  loc_BAFCAA: LitVarStr var_94, "  </tr>"
  loc_BAFCAF: PopAdLdVar
  loc_BAFCB0: FLdPr Me
  loc_BAFCB3: MemLdRfVar from_stack_1.global_60
  loc_BAFCB6: LdPrVar
  loc_BAFCB8: LateMemCall
  loc_BAFCBE: LitI4 0
  loc_BAFCC3: FStR4 var_B8
  loc_BAFCC6: AryUnlock
  loc_BAFCC9: FLdPr Me
  loc_BAFCCC: MemLdRfVar from_stack_1.global_106
  loc_BAFCCF: NextUI1
  loc_BAFCD5: LitI4 0
  loc_BAFCDA: FStR4 var_AC
  loc_BAFCDD: AryUnlock
  loc_BAFCE0: ExitProcHresult
  loc_BAFCE1: LitI2 844
End Function

Private Function Proc_311_24_B063D8() 'B063D8
  'Data Table: 4A35B0
  loc_B061D0: FLdPr Me
  loc_B061D3: MemLdStr global_100
  loc_B061D6: FLdPr Me
  loc_B061D9: MemLdStr global_96
  loc_B061DC: AryLock
  loc_B061DF: Ary1LdRf
  loc_B061E0: FStR4 var_8C
  loc_B061E3: LitVarStr var_9C, "  <tr><td><br></td></tr>"
  loc_B061E8: PopAdLdVar
  loc_B061E9: FLdPr Me
  loc_B061EC: MemLdRfVar from_stack_1.global_60
  loc_B061EF: LdPrVar
  loc_B061F1: LateMemCall
  loc_B061F7: LitVarStr var_9C, "  <tr>"
  loc_B061FC: PopAdLdVar
  loc_B061FD: FLdPr Me
  loc_B06200: MemLdRfVar from_stack_1.global_60
  loc_B06203: LdPrVar
  loc_B06205: LateMemCall
  loc_B0620B: LitVarStr var_9C, "    <td valign=""bottom"">"
  loc_B06210: PopAdLdVar
  loc_B06211: FLdPr Me
  loc_B06214: MemLdRfVar from_stack_1.global_60
  loc_B06217: LdPrVar
  loc_B06219: LateMemCall
  loc_B0621F: LitVarStr var_9C, "     <table align=""center"" height=""100" & Chr(37) & """ width=""99" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0""><tr>"
  loc_B06224: PopAdLdVar
  loc_B06225: FLdPr Me
  loc_B06228: MemLdRfVar from_stack_1.global_60
  loc_B0622B: LdPrVar
  loc_B0622D: LateMemCall
  loc_B06233: LitVarStr var_9C, "        <td height=""100" & Chr(37) & """ class=""NormalAbajo MargIzq"">"
  loc_B06238: PopAdLdVar
  loc_B06239: FLdPr Me
  loc_B0623C: MemLdRfVar from_stack_1.global_60
  loc_B0623F: LdPrVar
  loc_B06241: LateMemCall
  loc_B06247: LitVarStr var_9C, "        <img src=""l6.jpg"" width=""184"" height=""92"" class=""MissChild"">"
  loc_B0624C: PopAdLdVar
  loc_B0624D: FLdPr Me
  loc_B06250: MemLdRfVar from_stack_1.global_60
  loc_B06253: LdPrVar
  loc_B06255: LateMemCall
  loc_B0625B: LitVarStr var_9C, "        <strong>ESTIMADO COMERCIANTE</strong>: RECUERDE QUE EL PAGO DE LAS TASAS MUNICIPALES ES CONDICIÓN INDISPENSABLE PARA EL DESARROLLO NORMAL DE CUALQUIER ACTIVIDAD.<br>"
  loc_B06260: PopAdLdVar
  loc_B06261: FLdPr Me
  loc_B06264: MemLdRfVar from_stack_1.global_60
  loc_B06267: LdPrVar
  loc_B06269: LateMemCall
  loc_B0626F: LitVarStr var_9C, "        CONTAMOS CON SU COMPROMISO PARA SACAR ADELANTE JUNTOS EL DEPARTAMENTO.<br><br>"
  loc_B06274: PopAdLdVar
  loc_B06275: FLdPr Me
  loc_B06278: MemLdRfVar from_stack_1.global_60
  loc_B0627B: LdPrVar
  loc_B0627D: LateMemCall
  loc_B06283: LitVarStr var_9C, "        <strong>Sr. VECINO DE GUAYMALL&Eacute;N</strong>: Este Boleto incluye la opci&oacute;n  de los bimestres 5 y 6 del presente ejercicio.<br><br>"
  loc_B06288: PopAdLdVar
  loc_B06289: FLdPr Me
  loc_B0628C: MemLdRfVar from_stack_1.global_60
  loc_B0628F: LdPrVar
  loc_B06291: LateMemCall
  loc_B06297: LitVarStr var_9C, "0"
  loc_B0629C: FStVarCopyObj var_BC
  loc_B0629F: FLdRfVar var_BC
  loc_B062A2: LitI4 6
  loc_B062A7: FLdRfVar var_CC
  loc_B062AA: ImpAdCallFPR4  = String(, )
  loc_B062AF: LitVarStr var_EC, "        C&oacute;digo pagomiscuentas.com: <strong>2"
  loc_B062B4: LitI4 1
  loc_B062B9: LitI4 1
  loc_B062BE: FLdRfVar var_CC
  loc_B062C1: FMemLdRf unk_4A3525
  loc_B062C6: CVarRef
  loc_B062CB: FLdRfVar var_DC
  loc_B062CE: ImpAdCallFPR4  = Format(, )
  loc_B062D3: FLdRfVar var_DC
  loc_B062D6: ConcatVar var_FC
  loc_B062DA: LitVarStr var_10C, "</strong><br>"
  loc_B062DF: ConcatVar var_11C
  loc_B062E3: PopAdLdVar
  loc_B062E4: FLdPr Me
  loc_B062E7: MemLdRfVar from_stack_1.global_60
  loc_B062EA: LdPrVar
  loc_B062EC: LateMemCall
  loc_B062F2: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B062FF: LitVarStr var_9C, "0"
  loc_B06304: FStVarCopyObj var_BC
  loc_B06307: FLdRfVar var_BC
  loc_B0630A: LitI4 &HC
  loc_B0630F: FLdRfVar var_CC
  loc_B06312: ImpAdCallFPR4  = String(, )
  loc_B06317: LitVarStr var_EC, "        C&oacute;digo RED LINK: <strong>2"
  loc_B0631C: LitI4 1
  loc_B06321: LitI4 1
  loc_B06326: FLdRfVar var_CC
  loc_B06329: FMemLdRf unk_4A3525
  loc_B0632E: CVarRef
  loc_B06333: FLdRfVar var_DC
  loc_B06336: ImpAdCallFPR4  = Format(, )
  loc_B0633B: FLdRfVar var_DC
  loc_B0633E: ConcatVar var_FC
  loc_B06342: LitVarStr var_10C, "</strong><br><br>"
  loc_B06347: ConcatVar var_11C
  loc_B0634B: PopAdLdVar
  loc_B0634C: FLdPr Me
  loc_B0634F: MemLdRfVar from_stack_1.global_60
  loc_B06352: LdPrVar
  loc_B06354: LateMemCall
  loc_B0635A: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B06367: LitVarStr var_9C, "        <strong>&iexcl;Apoye a SU MUNICIPIO pagando en t&eacute;rmino!</strong>"
  loc_B0636C: PopAdLdVar
  loc_B0636D: FLdPr Me
  loc_B06370: MemLdRfVar from_stack_1.global_60
  loc_B06373: LdPrVar
  loc_B06375: LateMemCall
  loc_B0637B: LitVarStr var_9C, "      </td></tr></table>"
  loc_B06380: PopAdLdVar
  loc_B06381: FLdPr Me
  loc_B06384: MemLdRfVar from_stack_1.global_60
  loc_B06387: LdPrVar
  loc_B06389: LateMemCall
  loc_B0638F: LitVarStr var_9C, "    </td>"
  loc_B06394: PopAdLdVar
  loc_B06395: FLdPr Me
  loc_B06398: MemLdRfVar from_stack_1.global_60
  loc_B0639B: LdPrVar
  loc_B0639D: LateMemCall
  loc_B063A3: LitVarStr var_9C, "  </tr>"
  loc_B063A8: PopAdLdVar
  loc_B063A9: FLdPr Me
  loc_B063AC: MemLdRfVar from_stack_1.global_60
  loc_B063AF: LdPrVar
  loc_B063B1: LateMemCall
  loc_B063B7: LitVarStr var_9C, "</table>"
  loc_B063BC: PopAdLdVar
  loc_B063BD: FLdPr Me
  loc_B063C0: MemLdRfVar from_stack_1.global_60
  loc_B063C3: LdPrVar
  loc_B063C5: LateMemCall
  loc_B063CB: LitI4 0
  loc_B063D0: FStR4 var_8C
  loc_B063D3: AryUnlock
  loc_B063D6: ExitProcHresult
End Function

Private Function Proc_311_25_9F362C() '9F362C
  'Data Table: 4A35B0
  loc_9F3600: LitVarStr var_94, "</body>"
  loc_9F3605: PopAdLdVar
  loc_9F3606: FLdPr Me
  loc_9F3609: MemLdRfVar from_stack_1.global_60
  loc_9F360C: LdPrVar
  loc_9F360E: LateMemCall
  loc_9F3614: LitVarStr var_94, "</html>"
  loc_9F3619: PopAdLdVar
  loc_9F361A: FLdPr Me
  loc_9F361D: MemLdRfVar from_stack_1.global_60
  loc_9F3620: LdPrVar
  loc_9F3622: LateMemCall
  loc_9F3628: ExitProcHresult
End Function
