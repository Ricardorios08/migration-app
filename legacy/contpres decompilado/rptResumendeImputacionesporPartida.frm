VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeImputacionesporPartida
  Caption = "Resumen de Imputaciones por Partida"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeImputacionesporPartida.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8865
  ClientHeight = 4590
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4335
    Width = 8865
    Height = 255
    TabIndex = 24
    OleObjectBlob = "rptResumendeImputacionesporPartida.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7920
    Top = 3240
    Width = 735
    Height = 615
    TabIndex = 22
    Cancel = -1  'True
    Picture = "rptResumendeImputacionesporPartida.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeImputacionesporPartida.frx":0B9C
    Left = 5160
    Top = 480
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3000
    Width = 4455
    Height = 1095
    TabIndex = 18
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 21
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3000
    Width = 3015
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 2895
    TabIndex = 0
    Begin VB.CheckBox chkSoloTitulos
      Caption = "Solo Títulos"
      Left = 1440
      Top = 2280
      Width = 1215
      Height = 375
      TabIndex = 14
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 2880
      Top = 1800
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptResumendeImputacionesporPartida.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdDesde
      Left = 2610
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptResumendeImputacionesporPartida.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdHasta
      Left = 2610
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptResumendeImputacionesporPartida.frx":123C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1455
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1455
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptResumendeImputacionesporPartida.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1455
      Top = 1320
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptResumendeImputacionesporPartida.frx":1806
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1455
      Top = 1800
      Width = 1335
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptResumendeImputacionesporPartida.frx":188E
    End
    Begin VB.Label CodiPartLbl
      Left = 3360
      Top = 1800
      Width = 5055
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 780
      Top = 1800
      Width = 540
      Height = 195
      TabIndex = 10
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 810
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 855
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 735
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      Alignment = 1 'Right Justify
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 3480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 23
    OleObjectBlob = "rptResumendeImputacionesporPartida.frx":18EE
  End
End

Attribute VB_Name = "rptResumendeImputacionesporPartida"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_006082F0
  bStruc(52) As Byte ' String fields: 12
End Type


Private Sub cmdDesde_Click() '97FCA0
  'Data Table: 4A221C
  loc_97FC6C: LitVar_Missing var_A4
  loc_97FC6F: PopAdLdVar
  loc_97FC70: LitVarI4
  loc_97FC78: PopAdLdVar
  loc_97FC79: ImpAdLdRf MemVar_C3D9A8
  loc_97FC7C: NewIfNullPr frmCalendario
  loc_97FC7F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97FC84: ImpAdLdRf MemVar_C3D038
  loc_97FC87: CDargRef
  loc_97FC8B: FLdPr Me
  loc_97FC8E: VCallAd Control_ID_mskDesde
  loc_97FC91: FStAdFunc var_A8
  loc_97FC94: FLdPr var_A8
  loc_97FC97: LateIdSt
  loc_97FC9C: FFree1Ad var_A8
  loc_97FC9F: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '95FEFC
  'Data Table: 4A221C
  loc_95FEE4: ILdRf Me
  loc_95FEE7: CastAd
  loc_95FEEA: FStAdFunc var_88
  loc_95FEED: FLdRfVar var_88
  loc_95FEF0: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_95FEF5: FFree1Ad var_88
  loc_95FEF8: ExitProcHresult
  loc_95FEF9: ExitProc
  loc_95FEFA: FStStrNoPop var_5C00
End Sub

Private Sub cmdHasta_Click() '97FBD0
  'Data Table: 4A221C
  loc_97FB9C: LitVar_Missing var_A4
  loc_97FB9F: PopAdLdVar
  loc_97FBA0: LitVarI4
  loc_97FBA8: PopAdLdVar
  loc_97FBA9: ImpAdLdRf MemVar_C3D9A8
  loc_97FBAC: NewIfNullPr frmCalendario
  loc_97FBAF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97FBB4: ImpAdLdRf MemVar_C3D038
  loc_97FBB7: CDargRef
  loc_97FBBB: FLdPr Me
  loc_97FBBE: VCallAd Control_ID_mskHasta
  loc_97FBC1: FStAdFunc var_A8
  loc_97FBC4: FLdPr var_A8
  loc_97FBC7: LateIdSt
  loc_97FBCC: FFree1Ad var_A8
  loc_97FBCF: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B94C
  'Data Table: 4A221C
  loc_96B930: LitI2_Byte &HFF
  loc_96B932: LitI2_Byte 0
  loc_96B934: ILdRf Me
  loc_96B937: CastAd
  loc_96B93A: FStAdFunc var_88
  loc_96B93D: FLdRfVar var_88
  loc_96B940: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B945: FFree1Ad var_88
  loc_96B948: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9D2E8C
  'Data Table: 4A221C
  loc_9D2DA0: LitI2_Byte 0
  loc_9D2DA2: FLdPr Me
  loc_9D2DA5: MemStI2 bGenerado
  loc_9D2DA8: LitI2_Byte &HFF
  loc_9D2DAA: FLdPr Me
  loc_9D2DAD: MemStI2 bLogos
  loc_9D2DB0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D2DB5: ImpAdLdI2 MemVar_C3D064
  loc_9D2DB8: CStrUI1
  loc_9D2DBA: FStStrNoPop var_88
  loc_9D2DBD: FLdPr Me
  loc_9D2DC0: VCallAd Control_ID_cboPeriodo
  loc_9D2DC3: FStAdFunc var_8C
  loc_9D2DC6: FLdPr var_8C
  loc_9D2DC9: Me.Text = from_stack_1
  loc_9D2DCE: FFree1Str var_88
  loc_9D2DD1: FFree1Ad var_8C
  loc_9D2DD4: LitI2_Byte 1
  loc_9D2DD6: LitI2_Byte 1
  loc_9D2DD8: ImpAdLdI2 MemVar_C3D064
  loc_9D2DDB: FLdRfVar var_9C
  loc_9D2DDE: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2DE3: FLdRfVar var_9C
  loc_9D2DE6: CStrVarTmp
  loc_9D2DE7: CVarStr var_AC
  loc_9D2DEA: PopAdLdVar
  loc_9D2DEB: FLdPr Me
  loc_9D2DEE: VCallAd Control_ID_mskDesde
  loc_9D2DF1: FStAdFunc var_8C
  loc_9D2DF4: FLdPr var_8C
  loc_9D2DF7: LateIdSt
  loc_9D2DFC: FFree1Ad var_8C
  loc_9D2DFF: FFreeVar var_9C = ""
  loc_9D2E06: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D2E09: CStrDate
  loc_9D2E0B: CVarStr var_9C
  loc_9D2E0E: PopAdLdVar
  loc_9D2E0F: FLdPr Me
  loc_9D2E12: VCallAd Control_ID_mskHasta
  loc_9D2E15: FStAdFunc var_8C
  loc_9D2E18: FLdPr var_8C
  loc_9D2E1B: LateIdSt
  loc_9D2E20: FFree1Ad var_8C
  loc_9D2E23: FFree1Var var_9C = ""
  loc_9D2E26: LitVarStr var_BC, vbNullString
  loc_9D2E2B: PopAdLdVar
  loc_9D2E2C: FLdPr Me
  loc_9D2E2F: VCallAd Control_ID_CodiPartMsk
  loc_9D2E32: FStAdFunc var_8C
  loc_9D2E35: FLdPr var_8C
  loc_9D2E38: LateIdSt
  loc_9D2E3D: FFree1Ad var_8C
  loc_9D2E40: LitStr vbNullString
  loc_9D2E43: FLdPr Me
  loc_9D2E46: VCallAd Control_ID_CodiPartLbl
  loc_9D2E49: FStAdFunc var_8C
  loc_9D2E4C: FLdPr var_8C
  loc_9D2E4F: Me.Caption = from_stack_1
  loc_9D2E54: FFree1Ad var_8C
  loc_9D2E57: LitI4 0
  loc_9D2E5C: CI2I4
  loc_9D2E5D: FLdPr Me
  loc_9D2E60: VCallAd Control_ID_chkSoloTitulos
  loc_9D2E63: FStAdFunc var_8C
  loc_9D2E66: FLdPr var_8C
  loc_9D2E69: Me.Value = from_stack_1
  loc_9D2E6E: FFree1Ad var_8C
  loc_9D2E71: Call HabilitarCriterio()
  loc_9D2E76: ILdRf Me
  loc_9D2E79: CastAd
  loc_9D2E7C: FStAdFunc var_8C
  loc_9D2E7F: FLdRfVar var_8C
  loc_9D2E82: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D2E87: FFree1Ad var_8C
  loc_9D2E8A: ExitProcHresult
End Sub

Private Sub cmdCodiPart_Click() 'A0B068
  'Data Table: 4A221C
  loc_A0AF0C: FLdRfVar var_8C
  loc_A0AF0F: FLdPr Me
  loc_A0AF12: VCallAd Control_ID_cboPeriodo
  loc_A0AF15: FStAdFunc var_88
  loc_A0AF18: FLdPr var_88
  loc_A0AF1B:  = Me.Text
  loc_A0AF20: ILdRf var_8C
  loc_A0AF23: CI2Str
  loc_A0AF25: ImpAdLdRf MemVar_C3D724
  loc_A0AF28: NewIfNullPr bscPartida
  loc_A0AF2B: Call bscPartida.iPeriInfoPut(from_stack_1v)
  loc_A0AF30: FFree1Str var_8C
  loc_A0AF33: FFree1Ad var_88
  loc_A0AF36: LitNothing
  loc_A0AF38: CastAd
  loc_A0AF3B: FStAdFuncNoPop
  loc_A0AF3E: ImpAdLdRf MemVar_C3D724
  loc_A0AF41: NewIfNullPr bscPartida
  loc_A0AF44: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_A0AF49: FFree1Ad var_88
  loc_A0AF4C: LitVar_Missing var_AC
  loc_A0AF4F: PopAdLdVar
  loc_A0AF50: LitVarI4
  loc_A0AF58: PopAdLdVar
  loc_A0AF59: ImpAdLdRf MemVar_C3D724
  loc_A0AF5C: NewIfNullPr bscPartida
  loc_A0AF5F: bscPartida.Show from_stack_1, from_stack_2
  loc_A0AF64: FLdRfVar var_B0
  loc_A0AF67: FLdRfVar var_88
  loc_A0AF6A: ImpAdLdRf MemVar_C3D724
  loc_A0AF6D: NewIfNullPr bscPartida
  loc_A0AF70: from_stack_1v = bscPartida.global_4332396Get()
  loc_A0AF75: FLdPr var_88
  loc_A0AF78: from_stack_1 = clsbase.RecordCount
  loc_A0AF7D: ILdRf var_B0
  loc_A0AF80: LitI4 0
  loc_A0AF85: GtI4
  loc_A0AF86: FFree1Ad var_88
  loc_A0AF89: BranchF loc_A0B064
  loc_A0AF8C: FLdRfVar var_CC
  loc_A0AF8F: FLdRfVar var_BC
  loc_A0AF92: LitVarStr var_9C, "CodiPart"
  loc_A0AF97: PopAdLdVar
  loc_A0AF98: FLdRfVar var_B8
  loc_A0AF9B: FLdRfVar var_B4
  loc_A0AF9E: FLdRfVar var_88
  loc_A0AFA1: ImpAdLdRf MemVar_C3D724
  loc_A0AFA4: NewIfNullPr bscPartida
  loc_A0AFA7: from_stack_1v = bscPartida.global_4332396Get()
  loc_A0AFAC: FLdPr var_88
  loc_A0AFAF: from_stack_1v = clsbase.RsFrmGet()
  loc_A0AFB4: FLdPr var_B4
  loc_A0AFB7:  = Me.Fields
  loc_A0AFBC: FLdPr var_B8
  loc_A0AFBF: from_stack_2 = Me.Item(from_stack_1)
  loc_A0AFC4: FLdPr var_BC
  loc_A0AFC7:  = Me.Value
  loc_A0AFCC: FLdRfVar var_CC
  loc_A0AFCF: CStrVarTmp
  loc_A0AFD0: CVarStr var_DC
  loc_A0AFD3: PopAdLdVar
  loc_A0AFD4: FLdPr Me
  loc_A0AFD7: VCallAd Control_ID_CodiPartMsk
  loc_A0AFDA: FStAdFunc var_E0
  loc_A0AFDD: FLdPr var_E0
  loc_A0AFE0: LateIdSt
  loc_A0AFE5: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A0AFF2: FFreeVar var_CC = ""
  loc_A0AFF9: FLdRfVar var_CC
  loc_A0AFFC: FLdRfVar var_BC
  loc_A0AFFF: LitVarStr var_9C, "DetaPart"
  loc_A0B004: PopAdLdVar
  loc_A0B005: FLdRfVar var_B8
  loc_A0B008: FLdRfVar var_B4
  loc_A0B00B: FLdRfVar var_88
  loc_A0B00E: ImpAdLdRf MemVar_C3D724
  loc_A0B011: NewIfNullPr bscPartida
  loc_A0B014: from_stack_1v = bscPartida.global_4332396Get()
  loc_A0B019: FLdPr var_88
  loc_A0B01C: from_stack_1v = clsbase.RsFrmGet()
  loc_A0B021: FLdPr var_B4
  loc_A0B024:  = Me.Fields
  loc_A0B029: FLdPr var_B8
  loc_A0B02C: from_stack_2 = Me.Item(from_stack_1)
  loc_A0B031: FLdPr var_BC
  loc_A0B034:  = Me.Value
  loc_A0B039: FLdRfVar var_CC
  loc_A0B03C: CStrVarTmp
  loc_A0B03D: FStStrNoPop var_8C
  loc_A0B040: FLdPr Me
  loc_A0B043: VCallAd Control_ID_CodiPartLbl
  loc_A0B046: FStAdFunc var_E0
  loc_A0B049: FLdPr var_E0
  loc_A0B04C: Me.Caption = from_stack_1
  loc_A0B051: FFree1Str var_8C
  loc_A0B054: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A0B061: FFree1Var var_CC = ""
  loc_A0B064: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BC9C
  'Data Table: 4A221C
  loc_98BC64: FLdPr Me
  loc_98BC67: VCallAd Control_ID_statusBar
  loc_98BC6A: FStAdFunc var_88
  loc_98BC6D: FLdPr var_88
  loc_98BC70: LateIdLdVar var_98 DispID_1 0
  loc_98BC77: CStrVarTmp
  loc_98BC78: CVarStr var_A8
  loc_98BC7B: PopAdLdVar
  loc_98BC7C: FLdPr Me
  loc_98BC7F: VCallAd Control_ID_statusBar
  loc_98BC82: FStAdFunc var_BC
  loc_98BC85: FLdPr var_BC
  loc_98BC88: LateIdSt
  loc_98BC8D: FFreeAd var_88 = ""
  loc_98BC94: FFreeVar var_98 = ""
  loc_98BC9B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95FF94
  'Data Table: 4A221C
  loc_95FF7C: ILdRf Me
  loc_95FF7F: CastAd
  loc_95FF82: FStAdFunc var_88
  loc_95FF85: FLdRfVar var_88
  loc_95FF88: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95FF8D: FFree1Ad var_88
  loc_95FF90: ExitProcHresult
End Sub

Private Sub Form_Load(arg_20) '9D9CB4
  'Data Table: 4A221C
  loc_9D9BC0: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9D9BC5: PopAdLdVar
  loc_9D9BC6: FLdPr Me
  loc_9D9BC9: VCallAd Control_ID_CodiPartMsk
  loc_9D9BCC: FStAdFunc var_A8
  loc_9D9BCF: FLdPr var_A8
  loc_9D9BD2: LateIdSt
  loc_9D9BD7: FFree1Ad var_A8
  loc_9D9BDA: LitI2_Byte &HFF
  loc_9D9BDC: ImpAdStI2 MemVar_C3D840
  loc_9D9BDF: ILdRf Me
  loc_9D9BE2: CastAd
  loc_9D9BE5: FStAdFunc var_A8
  loc_9D9BE8: FLdRfVar var_A8
  loc_9D9BEB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D9BF0: FFree1Ad var_A8
  loc_9D9BF3: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D9BF6: FLdRfVar var_AC
  loc_9D9BF9: NewIfNullPr clsperiodo
  loc_9D9BFC: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D9C01: FLdRfVar var_B0
  loc_9D9C04: FLdRfVar var_AC
  loc_9D9C07: NewIfNullPr clsperiodo
  loc_9D9C0A: from_stack_1 = clsperiodo.RecordCount
  loc_9D9C0F: ILdRf var_B0
  loc_9D9C12: LitI4 0
  loc_9D9C17: GtI4
  loc_9D9C18: BranchF loc_9D9CAB
  loc_9D9C1B: FLdRfVar var_AC
  loc_9D9C1E: NewIfNullPr clsperiodo
  loc_9D9C21: Call clsperiodo.MoveFirst()
  loc_9D9C26: FLdRfVar var_B2
  loc_9D9C29: FLdRfVar var_AC
  loc_9D9C2C: NewIfNullPr clsperiodo
  loc_9D9C2F: from_stack_1 = clsperiodo.EOF
  loc_9D9C34: FLdI2 var_B2
  loc_9D9C37: NotI4
  loc_9D9C38: BranchF loc_9D9CAB
  loc_9D9C3B: LitVar_Missing var_A4
  loc_9D9C3E: PopAdLdVar
  loc_9D9C3F: FLdRfVar var_CC
  loc_9D9C42: FLdRfVar var_BC
  loc_9D9C45: LitVarStr var_94, "PeriInfo"
  loc_9D9C4A: PopAdLdVar
  loc_9D9C4B: FLdRfVar var_B8
  loc_9D9C4E: FLdRfVar var_A8
  loc_9D9C51: FLdRfVar var_AC
  loc_9D9C54: NewIfNullPr clsperiodo
  loc_9D9C57: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D9C5C: FLdPr var_A8
  loc_9D9C5F:  = Me.Fields
  loc_9D9C64: FLdPr var_B8
  loc_9D9C67: from_stack_2 = Me.Item(from_stack_1)
  loc_9D9C6C: FLdPr var_BC
  loc_9D9C6F:  = Me.Value
  loc_9D9C74: FLdRfVar var_CC
  loc_9D9C77: CStrVarTmp
  loc_9D9C78: FStStrNoPop var_D0
  loc_9D9C7B: FLdPr Me
  loc_9D9C7E: VCallAd Control_ID_cboPeriodo
  loc_9D9C81: FStAdFunc var_D4
  loc_9D9C84: FLdPr var_D4
  loc_9D9C87: Me.AddItem from_stack_1, from_stack_2
  loc_9D9C8C: FFree1Str var_D0
  loc_9D9C8F: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9D9C9A: FFree1Var var_CC = ""
  loc_9D9C9D: FLdRfVar var_AC
  loc_9D9CA0: NewIfNullPr clsperiodo
  loc_9D9CA3: Call clsperiodo.MoveSiguiente()
  loc_9D9CA8: Branch loc_9D9C26
  loc_9D9CAB: Call cmdNueva_Click()
  loc_9D9CB0: ExitProcHresult
  loc_9D9CB1: FStStrNoPop arg_20
End Sub

Private Sub Form_Unload(Cancel As Integer) '95F7DC
  'Data Table: 4A221C
  loc_95F7C4: FLdPr Me
  loc_95F7C7: VCallAd Control_ID_wbbReporte
  loc_95F7CA: FStAdFunc var_88
  loc_95F7CD: FLdRfVar var_88
  loc_95F7D0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95F7D5: FFree1Ad var_88
  loc_95F7D8: ExitProcHresult
  loc_95F7D9: CVarI2 arg_1BFF
End Sub

Private Sub cmdSalir_Click() '976E3C
  'Data Table: 4A221C
  loc_976E0C: LitVarStr var_94, "Cerrando..."
  loc_976E11: PopAdLdVar
  loc_976E12: FLdPr Me
  loc_976E15: VCallAd Control_ID_statusBar
  loc_976E18: FStAdFunc var_A8
  loc_976E1B: FLdPr var_A8
  loc_976E1E: LateIdSt
  loc_976E23: FFree1Ad var_A8
  loc_976E26: ILdRf Me
  loc_976E29: FStAdNoPop
  loc_976E2D: ImpAdLdRf MemVar_C44F9C
  loc_976E30: NewIfNullPr Me
  loc_976E33: Me.Global.Unload from_stack_1
  loc_976E38: FFree1Ad var_A8
  loc_976E3B: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '953160
  'Data Table: 4A221C
  loc_95314C: FLdPr Me
  loc_95314F: VCallAd Control_ID_CodiPartMsk
  loc_953152: CVarAd
  loc_953156: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95315B: FFree1Var var_94 = ""
  loc_95315E: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A0A9A8
  'Data Table: 4A221C
  loc_A0A85C: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A0A85F: FLdRfVar var_90
  loc_A0A862: FLdPr Me
  loc_A0A865: VCallAd Control_ID_cboPeriodo
  loc_A0A868: FStAdFunc var_8C
  loc_A0A86B: FLdPr var_8C
  loc_A0A86E:  = Me.Text
  loc_A0A873: ILdRf var_90
  loc_A0A876: ConcatStr
  loc_A0A877: FStStrNoPop var_94
  loc_A0A87A: LitStr " AND CodiPart LIKE '"
  loc_A0A87D: ConcatStr
  loc_A0A87E: FStStrNoPop var_AC
  loc_A0A881: FLdPr Me
  loc_A0A884: VCallAd Control_ID_CodiPartMsk
  loc_A0A887: FStAdFunc var_98
  loc_A0A88A: FLdPr var_98
  loc_A0A88D: LateIdLdVar var_A8 DispID_22 0
  loc_A0A894: CStrVarTmp
  loc_A0A895: FStStrNoPop var_B0
  loc_A0A898: ConcatStr
  loc_A0A899: FStStrNoPop var_B4
  loc_A0A89C: LitStr Chr(37) & "'"
  loc_A0A89F: ConcatStr
  loc_A0A8A0: FStStrNoPop var_B8
  loc_A0A8A3: FLdRfVar var_88
  loc_A0A8A6: NewIfNullPr clspartida
  loc_A0A8A9: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0A8AE: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A0A8BD: FFreeAd var_8C = ""
  loc_A0A8C4: FFree1Var var_A8 = ""
  loc_A0A8C7: FLdRfVar var_BC
  loc_A0A8CA: FLdRfVar var_88
  loc_A0A8CD: NewIfNullPr clspartida
  loc_A0A8D0: from_stack_1 = clspartida.RecordCount
  loc_A0A8D5: ILdRf var_BC
  loc_A0A8D8: FStR4 var_C0
  loc_A0A8DB: ILdRf var_C0
  loc_A0A8DE: LitI4 0
  loc_A0A8E3: EqI4
  loc_A0A8E4: BranchF loc_A0A901
  loc_A0A8E7: LitStr "0 registros encontrados"
  loc_A0A8EA: FLdPr Me
  loc_A0A8ED: VCallAd Control_ID_CodiPartLbl
  loc_A0A8F0: FStAdFunc var_8C
  loc_A0A8F3: FLdPr var_8C
  loc_A0A8F6: Me.Caption = from_stack_1
  loc_A0A8FB: FFree1Ad var_8C
  loc_A0A8FE: Branch loc_A0A9A6
  loc_A0A901: ILdRf var_C0
  loc_A0A904: LitI4 1
  loc_A0A909: EqI4
  loc_A0A90A: BranchF loc_A0A96E
  loc_A0A90D: FLdRfVar var_A8
  loc_A0A910: FLdRfVar var_D4
  loc_A0A913: LitVarStr var_D0, "DetaPart"
  loc_A0A918: PopAdLdVar
  loc_A0A919: FLdRfVar var_98
  loc_A0A91C: FLdRfVar var_8C
  loc_A0A91F: FLdRfVar var_88
  loc_A0A922: NewIfNullPr clspartida
  loc_A0A925: from_stack_1v = clspartida.RsFrmGet()
  loc_A0A92A: FLdPr var_8C
  loc_A0A92D:  = Me.Fields
  loc_A0A932: FLdPr var_98
  loc_A0A935: from_stack_2 = Me.Item(from_stack_1)
  loc_A0A93A: FLdPr var_D4
  loc_A0A93D:  = Me.Value
  loc_A0A942: FLdRfVar var_A8
  loc_A0A945: CStrVarTmp
  loc_A0A946: FStStrNoPop var_90
  loc_A0A949: FLdPr Me
  loc_A0A94C: VCallAd Control_ID_CodiPartLbl
  loc_A0A94F: FStAdFunc var_D8
  loc_A0A952: FLdPr var_D8
  loc_A0A955: Me.Caption = from_stack_1
  loc_A0A95A: FFree1Str var_90
  loc_A0A95D: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A0A968: FFree1Var var_A8 = ""
  loc_A0A96B: Branch loc_A0A9A6
  loc_A0A96E: FLdRfVar var_BC
  loc_A0A971: FLdRfVar var_88
  loc_A0A974: NewIfNullPr clspartida
  loc_A0A977: from_stack_1 = clspartida.RecordCount
  loc_A0A97C: ILdRf var_BC
  loc_A0A97F: CStrI4
  loc_A0A981: FStStrNoPop var_90
  loc_A0A984: LitStr " partidas encontradas"
  loc_A0A987: ConcatStr
  loc_A0A988: FStStrNoPop var_94
  loc_A0A98B: FLdPr Me
  loc_A0A98E: VCallAd Control_ID_CodiPartLbl
  loc_A0A991: FStAdFunc var_8C
  loc_A0A994: FLdPr var_8C
  loc_A0A997: Me.Caption = from_stack_1
  loc_A0A99C: FFreeStr var_90 = ""
  loc_A0A9A3: FFree1Ad var_8C
  loc_A0A9A6: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95FE64
  'Data Table: 4A221C
  loc_95FE4C: LitI2_Byte 0
  loc_95FE4E: ILdRf Me
  loc_95FE51: CastAd
  loc_95FE54: FStAdFunc var_88
  loc_95FE57: FLdRfVar var_88
  loc_95FE5A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95FE5F: FFree1Ad var_88
  loc_95FE62: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '951DB0
  'Data Table: 4A221C
  loc_951D9C: FLdPr Me
  loc_951D9F: VCallAd Control_ID_mskDesde
  loc_951DA2: CVarAd
  loc_951DA6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951DAB: FFree1Var var_94 = ""
  loc_951DAE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B099C
  'Data Table: 4A221C
  loc_9B0900: FLdPr Me
  loc_9B0903: VCallAd Control_ID_mskDesde
  loc_9B0906: FStAdFunc var_88
  loc_9B0909: FLdPr var_88
  loc_9B090C: LateIdLdVar var_98 DispID_15 0
  loc_9B0913: PopAd
  loc_9B0915: FLdPr Me
  loc_9B0918: VCallAd Control_ID_mskDesde
  loc_9B091B: FStAdFunc var_AC
  loc_9B091E: LitI2_Byte &HFF
  loc_9B0920: PopTmpLdAd2 var_A2
  loc_9B0923: FLdZeroAd var_AC
  loc_9B0926: FStAdFunc var_A0
  loc_9B0929: FLdRfVar var_A0
  loc_9B092C: LitStr vbNullString
  loc_9B092F: LitI2_Byte 0
  loc_9B0931: LitI2_Byte 0
  loc_9B0933: FLdRfVar var_98
  loc_9B0936: CStrVarTmp
  loc_9B0937: FStStrNoPop var_9C
  loc_9B093A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B093F: FStStrNoPop var_A8
  loc_9B0942: FLdPr Me
  loc_9B0945: MemStStrCopy
  loc_9B0949: FFreeStr var_9C = ""
  loc_9B0950: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0959: FFree1Var var_98 = ""
  loc_9B095C: FLdPr Me
  loc_9B095F: VCallAd Control_ID_mskDesde
  loc_9B0962: FStAdFunc var_B0
  loc_9B0965: LitNothing
  loc_9B0967: CastAd
  loc_9B096A: FStAdFunc var_AC
  loc_9B096D: FLdRfVar var_AC
  loc_9B0970: FLdZeroAd var_B0
  loc_9B0973: FStAdFuncNoPop
  loc_9B0976: CastAd
  loc_9B0979: FStAdFunc var_A0
  loc_9B097C: FLdRfVar var_A0
  loc_9B097F: FLdPr Me
  loc_9B0982: MemLdRfVar from_stack_1.global_92
  loc_9B0985: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B098A: IStI2 arg_C
  loc_9B098D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0998: ExitProcHresult
  loc_9B0999: AddCy
  loc_9B099A: Ary1LdI2
End Function

Private Sub cboPeriodo_Click() '9D3914
  'Data Table: 4A221C
  loc_9D382C: FLdRfVar var_8C
  loc_9D382F: FLdPr Me
  loc_9D3832: VCallAd Control_ID_cboPeriodo
  loc_9D3835: FStAdFunc var_88
  loc_9D3838: FLdPr var_88
  loc_9D383B:  = Me.Text
  loc_9D3840: LitI2_Byte 1
  loc_9D3842: LitI2_Byte 1
  loc_9D3844: ILdRf var_8C
  loc_9D3847: CI2Str
  loc_9D3849: FLdRfVar var_9C
  loc_9D384C: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D3851: FLdRfVar var_9C
  loc_9D3854: CStrVarTmp
  loc_9D3855: CVarStr var_AC
  loc_9D3858: PopAdLdVar
  loc_9D3859: FLdPr Me
  loc_9D385C: VCallAd Control_ID_mskDesde
  loc_9D385F: FStAdFunc var_C0
  loc_9D3862: FLdPr var_C0
  loc_9D3865: LateIdSt
  loc_9D386A: FFree1Str var_8C
  loc_9D386D: FFreeAd var_88 = ""
  loc_9D3874: FFreeVar var_9C = ""
  loc_9D387B: FLdRfVar var_8C
  loc_9D387E: FLdPr Me
  loc_9D3881: VCallAd Control_ID_cboPeriodo
  loc_9D3884: FStAdFunc var_88
  loc_9D3887: FLdPr var_88
  loc_9D388A:  = Me.Text
  loc_9D388F: ILdRf var_8C
  loc_9D3892: CI2Str
  loc_9D3894: ImpAdLdI2 MemVar_C3D064
  loc_9D3897: LtI2
  loc_9D3898: FFree1Str var_8C
  loc_9D389B: FFree1Ad var_88
  loc_9D389E: BranchF loc_9D38F3
  loc_9D38A1: FLdRfVar var_8C
  loc_9D38A4: FLdPr Me
  loc_9D38A7: VCallAd Control_ID_cboPeriodo
  loc_9D38AA: FStAdFunc var_88
  loc_9D38AD: FLdPr var_88
  loc_9D38B0:  = Me.Text
  loc_9D38B5: LitI2_Byte &H1F
  loc_9D38B7: LitI2_Byte &HC
  loc_9D38B9: ILdRf var_8C
  loc_9D38BC: CI2Str
  loc_9D38BE: FLdRfVar var_9C
  loc_9D38C1: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D38C6: FLdRfVar var_9C
  loc_9D38C9: CStrVarTmp
  loc_9D38CA: CVarStr var_AC
  loc_9D38CD: PopAdLdVar
  loc_9D38CE: FLdPr Me
  loc_9D38D1: VCallAd Control_ID_mskHasta
  loc_9D38D4: FStAdFunc var_C0
  loc_9D38D7: FLdPr var_C0
  loc_9D38DA: LateIdSt
  loc_9D38DF: FFree1Str var_8C
  loc_9D38E2: FFreeAd var_88 = ""
  loc_9D38E9: FFreeVar var_9C = ""
  loc_9D38F0: Branch loc_9D3913
  loc_9D38F3: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D38F6: CStrDate
  loc_9D38F8: CVarStr var_9C
  loc_9D38FB: PopAdLdVar
  loc_9D38FC: FLdPr Me
  loc_9D38FF: VCallAd Control_ID_mskHasta
  loc_9D3902: FStAdFunc var_88
  loc_9D3905: FLdPr var_88
  loc_9D3908: LateIdSt
  loc_9D390D: FFree1Ad var_88
  loc_9D3910: FFree1Var var_9C = ""
  loc_9D3913: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '94EA80
  'Data Table: 4A221C
  loc_94EA6C: FLdPr Me
  loc_94EA6F: VCallAd Control_ID_mskHasta
  loc_94EA72: CVarAd
  loc_94EA76: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EA7B: FFree1Var var_94 = ""
  loc_94EA7E: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B0F0C
  'Data Table: 4A221C
  loc_9B0E70: FLdPr Me
  loc_9B0E73: VCallAd Control_ID_mskHasta
  loc_9B0E76: FStAdFunc var_88
  loc_9B0E79: FLdPr var_88
  loc_9B0E7C: LateIdLdVar var_98 DispID_15 0
  loc_9B0E83: PopAd
  loc_9B0E85: FLdPr Me
  loc_9B0E88: VCallAd Control_ID_mskHasta
  loc_9B0E8B: FStAdFunc var_AC
  loc_9B0E8E: LitI2_Byte &HFF
  loc_9B0E90: PopTmpLdAd2 var_A2
  loc_9B0E93: FLdZeroAd var_AC
  loc_9B0E96: FStAdFunc var_A0
  loc_9B0E99: FLdRfVar var_A0
  loc_9B0E9C: LitStr vbNullString
  loc_9B0E9F: LitI2_Byte 0
  loc_9B0EA1: LitI2_Byte 0
  loc_9B0EA3: FLdRfVar var_98
  loc_9B0EA6: CStrVarTmp
  loc_9B0EA7: FStStrNoPop var_9C
  loc_9B0EAA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0EAF: FStStrNoPop var_A8
  loc_9B0EB2: FLdPr Me
  loc_9B0EB5: MemStStrCopy
  loc_9B0EB9: FFreeStr var_9C = ""
  loc_9B0EC0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0EC9: FFree1Var var_98 = ""
  loc_9B0ECC: FLdPr Me
  loc_9B0ECF: VCallAd Control_ID_mskHasta
  loc_9B0ED2: FStAdFunc var_B0
  loc_9B0ED5: LitNothing
  loc_9B0ED7: CastAd
  loc_9B0EDA: FStAdFunc var_AC
  loc_9B0EDD: FLdRfVar var_AC
  loc_9B0EE0: FLdZeroAd var_B0
  loc_9B0EE3: FStAdFuncNoPop
  loc_9B0EE6: CastAd
  loc_9B0EE9: FStAdFunc var_A0
  loc_9B0EEC: FLdRfVar var_A0
  loc_9B0EEF: FLdPr Me
  loc_9B0EF2: MemLdRfVar from_stack_1.global_92
  loc_9B0EF5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0EFA: IStI2 arg_C
  loc_9B0EFD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0F08: ExitProcHresult
  loc_9B0F09: MemStI2 global_938
End Function

Private Sub cmdPrevia_Click() '95FFE0
  'Data Table: 4A221C
  loc_95FFC8: ILdRf Me
  loc_95FFCB: CastAd
  loc_95FFCE: FStAdFunc var_88
  loc_95FFD1: FLdRfVar var_88
  loc_95FFD4: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95FFD9: FFree1Ad var_88
  loc_95FFDC: ExitProcHresult
End Sub

Public Function htmFileGet() '4A3454
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4A3463
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4A3472
  htmFile = Value
End Sub

Public Function bLogosGet() '4A3481
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4A3490
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4A349F
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A34AE
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9BE764
  'Data Table: 4A221C
  loc_9BE6C0: LitI4 0
  loc_9BE6C5: LitI4 7
  loc_9BE6CA: FLdRfVar var_88
  loc_9BE6CD: Redim
  loc_9BE6D7: FLdPr Me
  loc_9BE6DA: VCallAd Control_ID_cboPeriodo
  loc_9BE6DD: CVarAd
  loc_9BE6E1: ParmAry1St
  loc_9BE6E7: FLdPr Me
  loc_9BE6EA: VCallAd Control_ID_mskDesde
  loc_9BE6ED: CVarAd
  loc_9BE6F1: ParmAry1St
  loc_9BE6F7: FLdPr Me
  loc_9BE6FA: VCallAd Control_ID_cmdDesde
  loc_9BE6FD: CVarAd
  loc_9BE701: ParmAry1St
  loc_9BE707: FLdPr Me
  loc_9BE70A: VCallAd Control_ID_mskHasta
  loc_9BE70D: CVarAd
  loc_9BE711: ParmAry1St
  loc_9BE717: FLdPr Me
  loc_9BE71A: VCallAd Control_ID_cmdHasta
  loc_9BE71D: CVarAd
  loc_9BE721: ParmAry1St
  loc_9BE727: FLdPr Me
  loc_9BE72A: VCallAd Control_ID_CodiPartMsk
  loc_9BE72D: CVarAd
  loc_9BE731: ParmAry1St
  loc_9BE737: FLdPr Me
  loc_9BE73A: VCallAd Control_ID_cmdCodiPart
  loc_9BE73D: CVarAd
  loc_9BE741: ParmAry1St
  loc_9BE747: FLdPr Me
  loc_9BE74A: VCallAd Control_ID_chkSoloTitulos
  loc_9BE74D: CVarAd
  loc_9BE751: ParmAry1St
  loc_9BE757: FLdRfVar var_88
  loc_9BE75A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9BE75F: FLdRfVar var_88
  loc_9BE762: Erase
  loc_9BE763: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BB2A94
  'Data Table: 4A221C
  loc_BB1AA0: FLdPr Me
  loc_BB1AA3: MemLdI2 bGenerado
  loc_BB1AA6: BranchF loc_BB1AAA
  loc_BB1AA9: ExitProcHresult
  loc_BB1AAA: LitVarStr var_94, "Generando reporte..."
  loc_BB1AAF: PopAdLdVar
  loc_BB1AB0: FLdPr Me
  loc_BB1AB3: VCallAd Control_ID_statusBar
  loc_BB1AB6: FStAdFunc var_A8
  loc_BB1AB9: FLdPr var_A8
  loc_BB1ABC: LateIdSt
  loc_BB1AC1: FFree1Ad var_A8
  loc_BB1AC4: LitI4 &HB
  loc_BB1AC9: CI2I4
  loc_BB1ACA: FLdPr Me
  loc_BB1ACD: Me.MousePointer = from_stack_1
  loc_BB1AD2: LitI2_Byte 0
  loc_BB1AD4: PopTmpLdAd2 var_AA
  loc_BB1AD7: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BB1ADC: FLdPr Me
  loc_BB1ADF: MemLdStr global_92
  loc_BB1AE2: LitStr vbNullString
  loc_BB1AE5: NeStr
  loc_BB1AE7: BranchF loc_BB1AED
  loc_BB1AEA: Branch loc_BB2A6D
  loc_BB1AED: LitI2_Byte 0
  loc_BB1AEF: PopTmpLdAd2 var_AA
  loc_BB1AF2: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BB1AF7: FLdPr Me
  loc_BB1AFA: MemLdStr global_92
  loc_BB1AFD: LitStr vbNullString
  loc_BB1B00: NeStr
  loc_BB1B02: BranchF loc_BB1B08
  loc_BB1B05: Branch loc_BB2A6D
  loc_BB1B08: LitI2_Byte 0
  loc_BB1B0A: PopTmpLdAd2 var_AA
  loc_BB1B0D: Call CodiPartMsk_UnknownEvent_8()
  loc_BB1B12: FLdPr Me
  loc_BB1B15: MemLdRfVar from_stack_1.global_72
  loc_BB1B18: NewIfNullAd
  loc_BB1B1B: FStAd var_B0 
  loc_BB1B1F: LitStr "DROP TEMPORARY TABLE IF EXISTS itmp;"
  loc_BB1B22: LitStr " CREATE TEMPORARY TABLE tmp` ("
  loc_BB1B25: ConcatStr
  loc_BB1B26: FStStrNoPop var_B4
  loc_BB1B29: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_BB1B2C: ConcatStr
  loc_BB1B2D: FStStrNoPop var_B8
  loc_BB1B30: LitStr " odiPart` varchar(9) NOT NULL default '',"
  loc_BB1B33: ConcatStr
  loc_BB1B34: FStStrNoPop var_BC
  loc_BB1B37: LitStr " antReg` int(8) NOT NULL default '0',"
  loc_BB1B3A: ConcatStr
  loc_BB1B3B: FStStrNoPop var_C0
  loc_BB1B3E: LitStr " otaAuto` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1B41: ConcatStr
  loc_BB1B42: FStStrNoPop var_C4
  loc_BB1B45: LitStr " revImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1B48: ConcatStr
  loc_BB1B49: FStStrNoPop var_C8
  loc_BB1B4C: LitStr " efiImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1B4F: ConcatStr
  loc_BB1B50: FStStrNoPop var_CC
  loc_BB1B53: LitStr " eveImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1B56: ConcatStr
  loc_BB1B57: FStStrNoPop var_D0
  loc_BB1B5A: LitStr " apaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1B5D: ConcatStr
  loc_BB1B5E: FStStrNoPop var_D4
  loc_BB1B61: LitStr " agaImpu` decimal(14,2) NOT NULL default '0.00'"
  loc_BB1B64: ConcatStr
  loc_BB1B65: FStStrNoPop var_D8
  loc_BB1B68: LitStr " ) ENGINE=MyISAM;"
  loc_BB1B6B: ConcatStr
  loc_BB1B6C: FStStrNoPop var_DC
  loc_BB1B6F: FLdPr var_B0
  loc_BB1B72: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB1B77: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_BB1B90: LitStr "DROP TEMPORARY TABLE IF EXISTS final;"
  loc_BB1B93: LitStr " CREATE TEMPORARY TABLE inal` ("
  loc_BB1B96: ConcatStr
  loc_BB1B97: FStStrNoPop var_B4
  loc_BB1B9A: LitStr " sTit` TINYINT(1) UNSIGNED NOT NULL,"
  loc_BB1B9D: ConcatStr
  loc_BB1B9E: FStStrNoPop var_B8
  loc_BB1BA1: LitStr " odiPart` varchar(9) NOT NULL default '',"
  loc_BB1BA4: ConcatStr
  loc_BB1BA5: FStStrNoPop var_BC
  loc_BB1BA8: LitStr " antReg` int(8) NOT NULL default '0',"
  loc_BB1BAB: ConcatStr
  loc_BB1BAC: FStStrNoPop var_C0
  loc_BB1BAF: LitStr " otaAuto` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1BB2: ConcatStr
  loc_BB1BB3: FStStrNoPop var_C4
  loc_BB1BB6: LitStr " revImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1BB9: ConcatStr
  loc_BB1BBA: FStStrNoPop var_C8
  loc_BB1BBD: LitStr " aldCred` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1BC0: ConcatStr
  loc_BB1BC1: FStStrNoPop var_CC
  loc_BB1BC4: LitStr " efiImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1BC7: ConcatStr
  loc_BB1BC8: FStStrNoPop var_D0
  loc_BB1BCB: LitStr " eveImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1BCE: ConcatStr
  loc_BB1BCF: FStStrNoPop var_D4
  loc_BB1BD2: LitStr " eapImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1BD5: ConcatStr
  loc_BB1BD6: FStStrNoPop var_D8
  loc_BB1BD9: LitStr " apaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1BDC: ConcatStr
  loc_BB1BDD: FStStrNoPop var_DC
  loc_BB1BE0: LitStr " agaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1BE3: ConcatStr
  loc_BB1BE4: FStStrNoPop var_E0
  loc_BB1BE7: LitStr " hmasRea` decimal(14,2) NOT NULL default '0.00',"
  loc_BB1BEA: ConcatStr
  loc_BB1BEB: FStStrNoPop var_E4
  loc_BB1BEE: LitStr " PRIMARY KEY  (odiPart`)"
  loc_BB1BF1: ConcatStr
  loc_BB1BF2: FStStrNoPop var_E8
  loc_BB1BF5: LitStr " ) ENGINE=MyISAM;"
  loc_BB1BF8: ConcatStr
  loc_BB1BF9: FStStrNoPop var_EC
  loc_BB1BFC: FLdPr var_B0
  loc_BB1BFF: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB1C04: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_BB1C25: FLdPr Me
  loc_BB1C28: VCallAd Control_ID_mskDesde
  loc_BB1C2B: FStAdFunc var_104
  loc_BB1C2E: FLdPr var_104
  loc_BB1C31: LateIdLdVar var_114 DispID_15 0
  loc_BB1C38: PopAd
  loc_BB1C3A: FLdPr Me
  loc_BB1C3D: VCallAd Control_ID_mskHasta
  loc_BB1C40: FStAdFunc var_138
  loc_BB1C43: FLdPr var_138
  loc_BB1C46: LateIdLdVar var_148 DispID_15 0
  loc_BB1C4D: PopAd
  loc_BB1C4F: LitStr "INSERT INTO itmp"
  loc_BB1C52: LitStr " SELECT a.PeriInfo, CodiPart, 0, Sum(AutoAuto)+Sum(AumeAuto)-Sum(DismAuto), 0, 0, 0, 0, 0"
  loc_BB1C55: ConcatStr
  loc_BB1C56: FStStrNoPop var_B4
  loc_BB1C59: LitStr " FROM autorizado a"
  loc_BB1C5C: ConcatStr
  loc_BB1C5D: FStStrNoPop var_B8
  loc_BB1C60: LitStr " INNER JOIN paraconta p ON p.PeriInfo = a.PeriInfo"
  loc_BB1C63: ConcatStr
  loc_BB1C64: FStStrNoPop var_BC
  loc_BB1C67: LitStr " WHERE a.PeriInfo = "
  loc_BB1C6A: ConcatStr
  loc_BB1C6B: FStStrNoPop var_C4
  loc_BB1C6E: FLdRfVar var_C0
  loc_BB1C71: FLdPr Me
  loc_BB1C74: VCallAd Control_ID_cboPeriodo
  loc_BB1C77: FStAdFunc var_A8
  loc_BB1C7A: FLdPr var_A8
  loc_BB1C7D:  = Me.Text
  loc_BB1C82: ILdRf var_C0
  loc_BB1C85: ConcatStr
  loc_BB1C86: FStStrNoPop var_C8
  loc_BB1C89: LitStr " AND Left(CodiPart,1) != PaexPaco AND CodiPart like '"
  loc_BB1C8C: ConcatStr
  loc_BB1C8D: FStStrNoPop var_CC
  loc_BB1C90: FLdPr Me
  loc_BB1C93: VCallAd Control_ID_CodiPartMsk
  loc_BB1C96: FStAdFunc var_F0
  loc_BB1C99: FLdPr var_F0
  loc_BB1C9C: LateIdLdVar var_100 DispID_22 0
  loc_BB1CA3: CStrVarTmp
  loc_BB1CA4: FStStrNoPop var_D0
  loc_BB1CA7: ConcatStr
  loc_BB1CA8: FStStrNoPop var_D4
  loc_BB1CAB: LitStr Chr(37) & "'"
  loc_BB1CAE: ConcatStr
  loc_BB1CAF: FStStrNoPop var_D8
  loc_BB1CB2: LitStr " AND FechAuto BETWEEN "
  loc_BB1CB5: ConcatStr
  loc_BB1CB6: FStStrNoPop var_DC
  loc_BB1CB9: LitI4 1
  loc_BB1CBE: LitI4 1
  loc_BB1CC3: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_BB1CC8: FStVarCopyObj var_134
  loc_BB1CCB: FLdRfVar var_134
  loc_BB1CCE: FLdRfVar var_114
  loc_BB1CD1: CStrVarTmp
  loc_BB1CD2: CVarStr var_124
  loc_BB1CD5: ImpAdCallI2 Format$(, )
  loc_BB1CDA: FStStrNoPop var_E0
  loc_BB1CDD: ConcatStr
  loc_BB1CDE: FStStrNoPop var_E4
  loc_BB1CE1: LitStr " AND "
  loc_BB1CE4: ConcatStr
  loc_BB1CE5: FStStrNoPop var_E8
  loc_BB1CE8: LitI4 1
  loc_BB1CED: LitI4 1
  loc_BB1CF2: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BB1CF7: FStVarCopyObj var_168
  loc_BB1CFA: FLdRfVar var_168
  loc_BB1CFD: FLdRfVar var_148
  loc_BB1D00: CStrVarTmp
  loc_BB1D01: CVarStr var_158
  loc_BB1D04: ImpAdCallI2 Format$(, )
  loc_BB1D09: FStStrNoPop var_EC
  loc_BB1D0C: ConcatStr
  loc_BB1D0D: FStStrNoPop var_16C
  loc_BB1D10: LitStr " GROUP BY PeriInfo, CodiPart;"
  loc_BB1D13: ConcatStr
  loc_BB1D14: FStStrNoPop var_170
  loc_BB1D17: FLdPr var_B0
  loc_BB1D1A: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB1D1F: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_16C = ""
  loc_BB1D44: FFreeAd var_A8 = "": var_F0 = "": var_104 = ""
  loc_BB1D4F: FFreeVar var_100 = "": var_114 = "": var_124 = "": var_134 = "": var_148 = "": var_158 = ""
  loc_BB1D60: FLdPr Me
  loc_BB1D63: VCallAd Control_ID_mskDesde
  loc_BB1D66: FStAdFunc var_104
  loc_BB1D69: FLdPr var_104
  loc_BB1D6C: LateIdLdVar var_114 DispID_15 0
  loc_BB1D73: PopAd
  loc_BB1D75: FLdPr Me
  loc_BB1D78: VCallAd Control_ID_mskHasta
  loc_BB1D7B: FStAdFunc var_138
  loc_BB1D7E: FLdPr var_138
  loc_BB1D81: LateIdLdVar var_148 DispID_15 0
  loc_BB1D88: PopAd
  loc_BB1D8A: LitStr "INSERT INTO itmp"
  loc_BB1D8D: LitStr " SELECT i.PeriInfo, CodiPart, Count(i.PeriInfo), 0, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BB1D90: ConcatStr
  loc_BB1D91: FStStrNoPop var_B4
  loc_BB1D94: LitStr " FROM imputacion i"
  loc_BB1D97: ConcatStr
  loc_BB1D98: FStStrNoPop var_B8
  loc_BB1D9B: LitStr " INNER JOIN paraconta p ON p.PeriInfo = i.PeriInfo"
  loc_BB1D9E: ConcatStr
  loc_BB1D9F: FStStrNoPop var_BC
  loc_BB1DA2: LitStr " WHERE i.PeriInfo = "
  loc_BB1DA5: ConcatStr
  loc_BB1DA6: FStStrNoPop var_C4
  loc_BB1DA9: FLdRfVar var_C0
  loc_BB1DAC: FLdPr Me
  loc_BB1DAF: VCallAd Control_ID_cboPeriodo
  loc_BB1DB2: FStAdFunc var_A8
  loc_BB1DB5: FLdPr var_A8
  loc_BB1DB8:  = Me.Text
  loc_BB1DBD: ILdRf var_C0
  loc_BB1DC0: ConcatStr
  loc_BB1DC1: FStStrNoPop var_C8
  loc_BB1DC4: LitStr " AND Left(CodiPart,1) != PaexPaco AND CodiPart Like '"
  loc_BB1DC7: ConcatStr
  loc_BB1DC8: FStStrNoPop var_CC
  loc_BB1DCB: FLdPr Me
  loc_BB1DCE: VCallAd Control_ID_CodiPartMsk
  loc_BB1DD1: FStAdFunc var_F0
  loc_BB1DD4: FLdPr var_F0
  loc_BB1DD7: LateIdLdVar var_100 DispID_22 0
  loc_BB1DDE: CStrVarTmp
  loc_BB1DDF: FStStrNoPop var_D0
  loc_BB1DE2: ConcatStr
  loc_BB1DE3: FStStrNoPop var_D4
  loc_BB1DE6: LitStr Chr(37) & "'"
  loc_BB1DE9: ConcatStr
  loc_BB1DEA: FStStrNoPop var_D8
  loc_BB1DED: LitStr " AND FechImpu BETWEEN "
  loc_BB1DF0: ConcatStr
  loc_BB1DF1: FStStrNoPop var_DC
  loc_BB1DF4: LitI4 1
  loc_BB1DF9: LitI4 1
  loc_BB1DFE: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_BB1E03: FStVarCopyObj var_134
  loc_BB1E06: FLdRfVar var_134
  loc_BB1E09: FLdRfVar var_114
  loc_BB1E0C: CStrVarTmp
  loc_BB1E0D: CVarStr var_124
  loc_BB1E10: ImpAdCallI2 Format$(, )
  loc_BB1E15: FStStrNoPop var_E0
  loc_BB1E18: ConcatStr
  loc_BB1E19: FStStrNoPop var_E4
  loc_BB1E1C: LitStr " AND "
  loc_BB1E1F: ConcatStr
  loc_BB1E20: FStStrNoPop var_E8
  loc_BB1E23: LitI4 1
  loc_BB1E28: LitI4 1
  loc_BB1E2D: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BB1E32: FStVarCopyObj var_168
  loc_BB1E35: FLdRfVar var_168
  loc_BB1E38: FLdRfVar var_148
  loc_BB1E3B: CStrVarTmp
  loc_BB1E3C: CVarStr var_158
  loc_BB1E3F: ImpAdCallI2 Format$(, )
  loc_BB1E44: FStStrNoPop var_EC
  loc_BB1E47: ConcatStr
  loc_BB1E48: FStStrNoPop var_16C
  loc_BB1E4B: LitStr " GROUP BY PeriInfo, CodiPart;"
  loc_BB1E4E: ConcatStr
  loc_BB1E4F: FStStrNoPop var_170
  loc_BB1E52: FLdPr var_B0
  loc_BB1E55: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB1E5A: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_16C = ""
  loc_BB1E7F: FFreeAd var_A8 = "": var_F0 = "": var_104 = ""
  loc_BB1E8A: FFreeVar var_100 = "": var_114 = "": var_124 = "": var_134 = "": var_148 = "": var_158 = ""
  loc_BB1E9B: LitStr "REPLACE INTO final"
  loc_BB1E9E: LitStr " SELECT 1, Rpad(Left(CodiPart,PartNiv1Page),PartCadiPage,'0'), Sum(CantReg), Sum(TotaAuto), Sum(PrevImpu), Sum(TotaAuto)-Sum(PrevImpu) SaldCred, Sum(DefiImpu), Sum(DeveImpu), Sum(DefiImpu)-Sum(DeveImpu) ReapImpu, Sum(MapaImpu), Sum(PagaImpu), Sum(TotaAuto)-Sum(DeveImpu)"
  loc_BB1EA1: ConcatStr
  loc_BB1EA2: FStStrNoPop var_B4
  loc_BB1EA5: LitStr " FROM itmp"
  loc_BB1EA8: ConcatStr
  loc_BB1EA9: FStStrNoPop var_B8
  loc_BB1EAC: LitStr " INNER JOIN paragene pg ON pg.PeriInfo = itmp.PeriInfo"
  loc_BB1EAF: ConcatStr
  loc_BB1EB0: FStStrNoPop var_BC
  loc_BB1EB3: LitStr " GROUP BY Left(CodiPart,1);"
  loc_BB1EB6: ConcatStr
  loc_BB1EB7: FStStrNoPop var_C0
  loc_BB1EBA: LitStr " REPLACE INTO final"
  loc_BB1EBD: ConcatStr
  loc_BB1EBE: FStStrNoPop var_C4
  loc_BB1EC1: LitStr " SELECT 2, Rpad(Left(CodiPart,PartNiv2Page),PartCadiPage,'0'), Sum(CantReg), Sum(TotaAuto), Sum(PrevImpu), Sum(TotaAuto)-Sum(PrevImpu) SaldCred, Sum(DefiImpu), Sum(DeveImpu), Sum(DefiImpu)-Sum(DeveImpu) ReapImpu, Sum(MapaImpu), Sum(PagaImpu), Sum(TotaAuto)-Sum(DeveImpu)"
  loc_BB1EC4: ConcatStr
  loc_BB1EC5: FStStrNoPop var_C8
  loc_BB1EC8: LitStr " FROM itmp"
  loc_BB1ECB: ConcatStr
  loc_BB1ECC: FStStrNoPop var_CC
  loc_BB1ECF: LitStr " INNER JOIN paragene pg ON pg.PeriInfo = itmp.PeriInfo"
  loc_BB1ED2: ConcatStr
  loc_BB1ED3: FStStrNoPop var_D0
  loc_BB1ED6: LitStr " GROUP BY Left(CodiPart,PartNiv2Page);"
  loc_BB1ED9: ConcatStr
  loc_BB1EDA: FStStrNoPop var_D4
  loc_BB1EDD: LitStr " REPLACE INTO final"
  loc_BB1EE0: ConcatStr
  loc_BB1EE1: FStStrNoPop var_D8
  loc_BB1EE4: LitStr " SELECT 3, Rpad(Left(CodiPart,PartNiv3Page),PartCadiPage,'0'), Sum(CantReg), Sum(TotaAuto), Sum(PrevImpu), Sum(TotaAuto)-Sum(PrevImpu) SaldCred, Sum(DefiImpu), Sum(DeveImpu), Sum(DefiImpu)-Sum(DeveImpu) ReapImpu, Sum(MapaImpu), Sum(PagaImpu), Sum(TotaAuto)-Sum(DeveImpu)"
  loc_BB1EE7: ConcatStr
  loc_BB1EE8: FStStrNoPop var_DC
  loc_BB1EEB: LitStr " FROM itmp"
  loc_BB1EEE: ConcatStr
  loc_BB1EEF: FStStrNoPop var_E0
  loc_BB1EF2: LitStr " INNER JOIN paragene pg ON pg.PeriInfo = itmp.PeriInfo"
  loc_BB1EF5: ConcatStr
  loc_BB1EF6: FStStrNoPop var_E4
  loc_BB1EF9: LitStr " GROUP BY Left(CodiPart,PartNiv3Page);"
  loc_BB1EFC: ConcatStr
  loc_BB1EFD: FStStrNoPop var_E8
  loc_BB1F00: LitStr " REPLACE INTO final"
  loc_BB1F03: ConcatStr
  loc_BB1F04: FStStrNoPop var_EC
  loc_BB1F07: LitStr " SELECT 4, Rpad(Left(CodiPart,PartNiv4Page),PartCadiPage,'0'), Sum(CantReg), Sum(TotaAuto), Sum(PrevImpu), Sum(TotaAuto)-Sum(PrevImpu) SaldCred, Sum(DefiImpu), Sum(DeveImpu), Sum(DefiImpu)-Sum(DeveImpu) ReapImpu, Sum(MapaImpu), Sum(PagaImpu), Sum(TotaAuto)-Sum(DeveImpu)"
  loc_BB1F0A: ConcatStr
  loc_BB1F0B: FStStrNoPop var_16C
  loc_BB1F0E: LitStr " FROM itmp"
  loc_BB1F11: ConcatStr
  loc_BB1F12: FStStrNoPop var_170
  loc_BB1F15: LitStr " INNER JOIN paragene pg ON pg.PeriInfo = itmp.PeriInfo"
  loc_BB1F18: ConcatStr
  loc_BB1F19: FStStrNoPop var_174
  loc_BB1F1C: LitStr " GROUP BY Left(CodiPart,PartNiv4Page);"
  loc_BB1F1F: ConcatStr
  loc_BB1F20: FStStrNoPop var_178
  loc_BB1F23: FLdPr var_B0
  loc_BB1F26: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB1F2B: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_16C = "": var_170 = "": var_174 = ""
  loc_BB1F54: LitStr "REPLACE INTO final"
  loc_BB1F57: LitStr " SELECT 5, Rpad(Left(CodiPart,PartNiv5Page),PartCadiPage,'0'), Sum(CantReg), Sum(TotaAuto), Sum(PrevImpu), Sum(TotaAuto)-Sum(PrevImpu) SaldCred, Sum(DefiImpu), Sum(DeveImpu), Sum(DefiImpu)-Sum(DeveImpu) ReapImpu, Sum(MapaImpu), Sum(PagaImpu), Sum(TotaAuto)-Sum(DeveImpu)"
  loc_BB1F5A: ConcatStr
  loc_BB1F5B: FStStrNoPop var_B4
  loc_BB1F5E: LitStr " FROM itmp"
  loc_BB1F61: ConcatStr
  loc_BB1F62: FStStrNoPop var_B8
  loc_BB1F65: LitStr " INNER JOIN paragene pg ON pg.PeriInfo = itmp.PeriInfo"
  loc_BB1F68: ConcatStr
  loc_BB1F69: FStStrNoPop var_BC
  loc_BB1F6C: LitStr " GROUP BY Left(CodiPart,PartNiv5Page);"
  loc_BB1F6F: ConcatStr
  loc_BB1F70: FStStrNoPop var_C0
  loc_BB1F73: LitStr " REPLACE INTO final"
  loc_BB1F76: ConcatStr
  loc_BB1F77: FStStrNoPop var_C4
  loc_BB1F7A: LitStr " SELECT 6, CodiPart, Sum(CantReg), Sum(TotaAuto), Sum(PrevImpu), Sum(TotaAuto)-Sum(PrevImpu) SaldCred, Sum(DefiImpu), Sum(DeveImpu), Sum(DefiImpu)-Sum(DeveImpu) ReapImpu, Sum(MapaImpu), Sum(PagaImpu), Sum(TotaAuto)-Sum(DeveImpu)"
  loc_BB1F7D: ConcatStr
  loc_BB1F7E: FStStrNoPop var_C8
  loc_BB1F81: LitStr " FROM itmp"
  loc_BB1F84: ConcatStr
  loc_BB1F85: FStStrNoPop var_CC
  loc_BB1F88: LitStr " INNER JOIN paragene pg ON pg.PeriInfo = itmp.PeriInfo"
  loc_BB1F8B: ConcatStr
  loc_BB1F8C: FStStrNoPop var_D0
  loc_BB1F8F: LitStr " GROUP BY CodiPart;"
  loc_BB1F92: ConcatStr
  loc_BB1F93: FStStrNoPop var_D4
  loc_BB1F96: FLdPr var_B0
  loc_BB1F99: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB1F9E: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BB1FB3: FLdRfVar var_AA
  loc_BB1FB6: FLdPr Me
  loc_BB1FB9: VCallAd Control_ID_chkSoloTitulos
  loc_BB1FBC: FStAdFunc var_F0
  loc_BB1FBF: FLdPr var_F0
  loc_BB1FC2:  = Me.Value
  loc_BB1FC7: LitStr "SELECT final.*, EsTit, DetaPart"
  loc_BB1FCA: LitStr " FROM final"
  loc_BB1FCD: ConcatStr
  loc_BB1FCE: FStStrNoPop var_B4
  loc_BB1FD1: LitStr " INNER JOIN partida ON partida.PeriInfo = "
  loc_BB1FD4: ConcatStr
  loc_BB1FD5: FStStrNoPop var_BC
  loc_BB1FD8: FLdRfVar var_B8
  loc_BB1FDB: FLdPr Me
  loc_BB1FDE: VCallAd Control_ID_cboPeriodo
  loc_BB1FE1: FStAdFunc var_A8
  loc_BB1FE4: FLdPr var_A8
  loc_BB1FE7:  = Me.Text
  loc_BB1FEC: ILdRf var_B8
  loc_BB1FEF: ConcatStr
  loc_BB1FF0: FStStrNoPop var_C0
  loc_BB1FF3: LitStr " AND partida.CodiPart = final.CodiPart"
  loc_BB1FF6: ConcatStr
  loc_BB1FF7: CVarStr var_134
  loc_BB1FFA: LitVarStr var_188, " WHERE EsTit <= 3 "
  loc_BB1FFF: FStVarCopyObj var_114
  loc_BB2002: FLdRfVar var_114
  loc_BB2005: LitVarStr var_A4, vbNullString
  loc_BB200A: FStVarCopyObj var_100
  loc_BB200D: FLdRfVar var_100
  loc_BB2010: FLdI2 var_AA
  loc_BB2013: CI4UI1
  loc_BB2014: LitI4 0
  loc_BB2019: EqI4
  loc_BB201A: CVarBoolI2 var_94
  loc_BB201E: FLdRfVar var_124
  loc_BB2021: ImpAdCallFPR4  = IIf(, , )
  loc_BB2026: FLdRfVar var_124
  loc_BB2029: ConcatVar var_148
  loc_BB202D: LitVarStr var_198, " ORDER BY CodiPart;"
  loc_BB2032: ConcatVar var_158
  loc_BB2036: CStrVarVal var_C4
  loc_BB203A: FLdPr var_B0
  loc_BB203D: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB2042: FFreeStr var_B4 = "": var_BC = "": var_B8 = "": var_C0 = ""
  loc_BB204F: FFreeAd var_A8 = ""
  loc_BB2056: FFreeVar var_94 = "": var_100 = "": var_114 = "": var_134 = "": var_124 = "": var_148 = ""
  loc_BB2067: FLdRfVar var_19C
  loc_BB206A: FLdPr var_B0
  loc_BB206D: from_stack_1 = clsbase.RecordCount
  loc_BB2072: ILdRf var_19C
  loc_BB2075: LitI4 1
  loc_BB207A: LtI4
  loc_BB207B: BranchF loc_BB208E
  loc_BB207E: LitI4 0
  loc_BB2083: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BB2086: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB208B: Branch loc_BB2A6D
  loc_BB208E: LitI4 0
  loc_BB2093: FLdRfVar var_19C
  loc_BB2096: FLdPr var_B0
  loc_BB2099: from_stack_1 = clsbase.RecordCount
  loc_BB209E: ILdRf var_19C
  loc_BB20A1: FLdPr Me
  loc_BB20A4: MemLdRfVar from_stack_1.global_80
  loc_BB20A7: Redim
  loc_BB20B1: LitI4 0
  loc_BB20B6: LitI4 1
  loc_BB20BB: FLdPr Me
  loc_BB20BE: MemLdRfVar from_stack_1.global_88
  loc_BB20C1: Redim
  loc_BB20CB: FLdPr var_B0
  loc_BB20CE: Call clsbase.MoveFirst()
  loc_BB20D3: LitI2_Byte 1
  loc_BB20D5: FLdPr Me
  loc_BB20D8: MemLdRfVar from_stack_1.global_84
  loc_BB20DB: FLdPr Me
  loc_BB20DE: MemLdStr global_80
  loc_BB20E1: LitI2_Byte 1
  loc_BB20E3: FnUBound
  loc_BB20E5: CI2I4
  loc_BB20E6: ForI2 var_1A0
  loc_BB20EC: FLdRfVar var_100
  loc_BB20EF: FLdRfVar var_104
  loc_BB20F2: LitVarStr var_94, "EsTit"
  loc_BB20F7: PopAdLdVar
  loc_BB20F8: FLdRfVar var_F0
  loc_BB20FB: FLdRfVar var_A8
  loc_BB20FE: FLdPr var_B0
  loc_BB2101: from_stack_1v = clsbase.RsFrmGet()
  loc_BB2106: FLdPr var_A8
  loc_BB2109:  = Me.Fields
  loc_BB210E: FLdPr var_F0
  loc_BB2111: from_stack_2 = Me.Item(from_stack_1)
  loc_BB2116: FLdPr var_104
  loc_BB2119:  = Me.Value
  loc_BB211E: FLdRfVar var_100
  loc_BB2121: CI2Var
  loc_BB2122: FLdPr Me
  loc_BB2125: MemLdI2 global_84
  loc_BB2128: CI4UI1
  loc_BB2129: FLdPr Me
  loc_BB212C: MemLdStr global_80
  loc_BB212F: Ary1LdPr
  loc_BB2130: MemStI2 global_0
  loc_BB2133: FFreeAd var_A8 = "": var_F0 = ""
  loc_BB213C: FFree1Var var_100 = ""
  loc_BB213F: FLdRfVar var_104
  loc_BB2142: LitVarStr var_94, "CodiPart"
  loc_BB2147: PopAdLdVar
  loc_BB2148: FLdRfVar var_F0
  loc_BB214B: FLdRfVar var_A8
  loc_BB214E: FLdPr var_B0
  loc_BB2151: from_stack_1v = clsbase.RsFrmGet()
  loc_BB2156: FLdPr var_A8
  loc_BB2159:  = Me.Fields
  loc_BB215E: FLdPr var_F0
  loc_BB2161: from_stack_2 = Me.Item(from_stack_1)
  loc_BB2166: LitI2_Byte 0
  loc_BB2168: LitVar_Missing var_114
  loc_BB216B: LitI2_Byte 0
  loc_BB216D: FLdZeroAd var_104
  loc_BB2170: CVarAd
  loc_BB2174: PopAdLdVar
  loc_BB2175: FLdPr Me
  loc_BB2178: MemLdI2 global_84
  loc_BB217B: CI4UI1
  loc_BB217C: FLdPr Me
  loc_BB217F: MemLdStr global_80
  loc_BB2182: AryLock
  loc_BB2185: Ary1LdPr
  loc_BB2186: MemLdRfVar from_stack_1.global_4
  loc_BB2189: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB218E: AryUnlock
  loc_BB2191: FFreeAd var_A8 = ""
  loc_BB2198: FFreeVar var_100 = ""
  loc_BB219F: FLdRfVar var_104
  loc_BB21A2: LitVarStr var_94, "DetaPart"
  loc_BB21A7: PopAdLdVar
  loc_BB21A8: FLdRfVar var_F0
  loc_BB21AB: FLdRfVar var_A8
  loc_BB21AE: FLdPr var_B0
  loc_BB21B1: from_stack_1v = clsbase.RsFrmGet()
  loc_BB21B6: FLdPr var_A8
  loc_BB21B9:  = Me.Fields
  loc_BB21BE: FLdPr var_F0
  loc_BB21C1: from_stack_2 = Me.Item(from_stack_1)
  loc_BB21C6: LitI2_Byte 0
  loc_BB21C8: LitVar_Missing var_114
  loc_BB21CB: LitI2_Byte 0
  loc_BB21CD: FLdZeroAd var_104
  loc_BB21D0: CVarAd
  loc_BB21D4: PopAdLdVar
  loc_BB21D5: FLdPr Me
  loc_BB21D8: MemLdI2 global_84
  loc_BB21DB: CI4UI1
  loc_BB21DC: FLdPr Me
  loc_BB21DF: MemLdStr global_80
  loc_BB21E2: AryLock
  loc_BB21E5: Ary1LdPr
  loc_BB21E6: MemLdRfVar from_stack_1.global_8
  loc_BB21E9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB21EE: AryUnlock
  loc_BB21F1: FFreeAd var_A8 = ""
  loc_BB21F8: FFreeVar var_100 = ""
  loc_BB21FF: FLdPr Me
  loc_BB2202: MemLdI2 global_84
  loc_BB2205: CI4UI1
  loc_BB2206: FLdPr Me
  loc_BB2209: MemLdStr global_80
  loc_BB220C: Ary1LdPr
  loc_BB220D: MemLdI2 global_0
  loc_BB2210: LitI2_Byte 1
  loc_BB2212: EqI2
  loc_BB2213: BranchF loc_BB2684
  loc_BB2216: FLdRfVar var_104
  loc_BB2219: LitVarStr var_94, "CantReg"
  loc_BB221E: PopAdLdVar
  loc_BB221F: FLdRfVar var_F0
  loc_BB2222: FLdRfVar var_A8
  loc_BB2225: FLdPr var_B0
  loc_BB2228: from_stack_1v = clsbase.RsFrmGet()
  loc_BB222D: FLdPr var_A8
  loc_BB2230:  = Me.Fields
  loc_BB2235: FLdPr var_F0
  loc_BB2238: from_stack_2 = Me.Item(from_stack_1)
  loc_BB223D: LitI2_Byte 0
  loc_BB223F: LitVar_Missing var_114
  loc_BB2242: LitI2_Byte 0
  loc_BB2244: FLdZeroAd var_104
  loc_BB2247: CVarAd
  loc_BB224B: PopAdLdVar
  loc_BB224C: FLdPr Me
  loc_BB224F: MemLdI2 global_84
  loc_BB2252: CI4UI1
  loc_BB2253: FLdPr Me
  loc_BB2256: MemLdStr global_80
  loc_BB2259: AryLock
  loc_BB225C: Ary1LdPr
  loc_BB225D: MemLdRfVar from_stack_1.global_12
  loc_BB2260: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2265: AryUnlock
  loc_BB2268: FFreeAd var_A8 = ""
  loc_BB226F: FFreeVar var_100 = ""
  loc_BB2276: FLdRfVar var_104
  loc_BB2279: LitVarStr var_94, "TotaAuto"
  loc_BB227E: PopAdLdVar
  loc_BB227F: FLdRfVar var_F0
  loc_BB2282: FLdRfVar var_A8
  loc_BB2285: FLdPr var_B0
  loc_BB2288: from_stack_1v = clsbase.RsFrmGet()
  loc_BB228D: FLdPr var_A8
  loc_BB2290:  = Me.Fields
  loc_BB2295: FLdPr var_F0
  loc_BB2298: from_stack_2 = Me.Item(from_stack_1)
  loc_BB229D: LitI2_Byte 0
  loc_BB229F: LitI4 1
  loc_BB22A4: FLdPr Me
  loc_BB22A7: MemLdStr global_88
  loc_BB22AA: AryLock
  loc_BB22AD: Ary1LdPr
  loc_BB22AE: MemLdRfVar from_stack_1.global_16
  loc_BB22B1: CVarRef
  loc_BB22B6: LitI2_Byte &HFF
  loc_BB22B8: FLdZeroAd var_104
  loc_BB22BB: CVarAd
  loc_BB22BF: PopAdLdVar
  loc_BB22C0: FLdPr Me
  loc_BB22C3: MemLdI2 global_84
  loc_BB22C6: CI4UI1
  loc_BB22C7: FLdPr Me
  loc_BB22CA: MemLdStr global_80
  loc_BB22CD: AryLock
  loc_BB22D0: Ary1LdPr
  loc_BB22D1: MemLdRfVar from_stack_1.global_16
  loc_BB22D4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB22D9: AryUnlock
  loc_BB22DC: AryUnlock
  loc_BB22DF: FFreeAd var_A8 = ""
  loc_BB22E6: FFree1Var var_100 = ""
  loc_BB22E9: FLdRfVar var_104
  loc_BB22EC: LitVarStr var_94, "PrevImpu"
  loc_BB22F1: PopAdLdVar
  loc_BB22F2: FLdRfVar var_F0
  loc_BB22F5: FLdRfVar var_A8
  loc_BB22F8: FLdPr var_B0
  loc_BB22FB: from_stack_1v = clsbase.RsFrmGet()
  loc_BB2300: FLdPr var_A8
  loc_BB2303:  = Me.Fields
  loc_BB2308: FLdPr var_F0
  loc_BB230B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB2310: LitI2_Byte 0
  loc_BB2312: LitI4 1
  loc_BB2317: FLdPr Me
  loc_BB231A: MemLdStr global_88
  loc_BB231D: AryLock
  loc_BB2320: Ary1LdPr
  loc_BB2321: MemLdRfVar from_stack_1.global_20
  loc_BB2324: CVarRef
  loc_BB2329: LitI2_Byte &HFF
  loc_BB232B: FLdZeroAd var_104
  loc_BB232E: CVarAd
  loc_BB2332: PopAdLdVar
  loc_BB2333: FLdPr Me
  loc_BB2336: MemLdI2 global_84
  loc_BB2339: CI4UI1
  loc_BB233A: FLdPr Me
  loc_BB233D: MemLdStr global_80
  loc_BB2340: AryLock
  loc_BB2343: Ary1LdPr
  loc_BB2344: MemLdRfVar from_stack_1.global_20
  loc_BB2347: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB234C: AryUnlock
  loc_BB234F: AryUnlock
  loc_BB2352: FFreeAd var_A8 = ""
  loc_BB2359: FFree1Var var_100 = ""
  loc_BB235C: FLdRfVar var_104
  loc_BB235F: LitVarStr var_94, "SaldCred"
  loc_BB2364: PopAdLdVar
  loc_BB2365: FLdRfVar var_F0
  loc_BB2368: FLdRfVar var_A8
  loc_BB236B: FLdPr var_B0
  loc_BB236E: from_stack_1v = clsbase.RsFrmGet()
  loc_BB2373: FLdPr var_A8
  loc_BB2376:  = Me.Fields
  loc_BB237B: FLdPr var_F0
  loc_BB237E: from_stack_2 = Me.Item(from_stack_1)
  loc_BB2383: LitI2_Byte 0
  loc_BB2385: LitI4 1
  loc_BB238A: FLdPr Me
  loc_BB238D: MemLdStr global_88
  loc_BB2390: AryLock
  loc_BB2393: Ary1LdPr
  loc_BB2394: MemLdRfVar from_stack_1.global_24
  loc_BB2397: CVarRef
  loc_BB239C: LitI2_Byte &HFF
  loc_BB239E: FLdZeroAd var_104
  loc_BB23A1: CVarAd
  loc_BB23A5: PopAdLdVar
  loc_BB23A6: FLdPr Me
  loc_BB23A9: MemLdI2 global_84
  loc_BB23AC: CI4UI1
  loc_BB23AD: FLdPr Me
  loc_BB23B0: MemLdStr global_80
  loc_BB23B3: AryLock
  loc_BB23B6: Ary1LdPr
  loc_BB23B7: MemLdRfVar from_stack_1.global_24
  loc_BB23BA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB23BF: AryUnlock
  loc_BB23C2: AryUnlock
  loc_BB23C5: FFreeAd var_A8 = ""
  loc_BB23CC: FFree1Var var_100 = ""
  loc_BB23CF: FLdRfVar var_104
  loc_BB23D2: LitVarStr var_94, "DefiImpu"
  loc_BB23D7: PopAdLdVar
  loc_BB23D8: FLdRfVar var_F0
  loc_BB23DB: FLdRfVar var_A8
  loc_BB23DE: FLdPr var_B0
  loc_BB23E1: from_stack_1v = clsbase.RsFrmGet()
  loc_BB23E6: FLdPr var_A8
  loc_BB23E9:  = Me.Fields
  loc_BB23EE: FLdPr var_F0
  loc_BB23F1: from_stack_2 = Me.Item(from_stack_1)
  loc_BB23F6: LitI2_Byte 0
  loc_BB23F8: LitI4 1
  loc_BB23FD: FLdPr Me
  loc_BB2400: MemLdStr global_88
  loc_BB2403: AryLock
  loc_BB2406: Ary1LdPr
  loc_BB2407: MemLdRfVar from_stack_1.global_28
  loc_BB240A: CVarRef
  loc_BB240F: LitI2_Byte &HFF
  loc_BB2411: FLdZeroAd var_104
  loc_BB2414: CVarAd
  loc_BB2418: PopAdLdVar
  loc_BB2419: FLdPr Me
  loc_BB241C: MemLdI2 global_84
  loc_BB241F: CI4UI1
  loc_BB2420: FLdPr Me
  loc_BB2423: MemLdStr global_80
  loc_BB2426: AryLock
  loc_BB2429: Ary1LdPr
  loc_BB242A: MemLdRfVar from_stack_1.global_28
  loc_BB242D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2432: AryUnlock
  loc_BB2435: AryUnlock
  loc_BB2438: FFreeAd var_A8 = ""
  loc_BB243F: FFree1Var var_100 = ""
  loc_BB2442: FLdRfVar var_104
  loc_BB2445: LitVarStr var_94, "DeveImpu"
  loc_BB244A: PopAdLdVar
  loc_BB244B: FLdRfVar var_F0
  loc_BB244E: FLdRfVar var_A8
  loc_BB2451: FLdPr var_B0
  loc_BB2454: from_stack_1v = clsbase.RsFrmGet()
  loc_BB2459: FLdPr var_A8
  loc_BB245C:  = Me.Fields
  loc_BB2461: FLdPr var_F0
  loc_BB2464: from_stack_2 = Me.Item(from_stack_1)
  loc_BB2469: LitI2_Byte 0
  loc_BB246B: LitI4 1
  loc_BB2470: FLdPr Me
  loc_BB2473: MemLdStr global_88
  loc_BB2476: AryLock
  loc_BB2479: Ary1LdPr
  loc_BB247A: MemLdRfVar from_stack_1.global_32
  loc_BB247D: CVarRef
  loc_BB2482: LitI2_Byte &HFF
  loc_BB2484: FLdZeroAd var_104
  loc_BB2487: CVarAd
  loc_BB248B: PopAdLdVar
  loc_BB248C: FLdPr Me
  loc_BB248F: MemLdI2 global_84
  loc_BB2492: CI4UI1
  loc_BB2493: FLdPr Me
  loc_BB2496: MemLdStr global_80
  loc_BB2499: AryLock
  loc_BB249C: Ary1LdPr
  loc_BB249D: MemLdRfVar from_stack_1.global_32
  loc_BB24A0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB24A5: AryUnlock
  loc_BB24A8: AryUnlock
  loc_BB24AB: FFreeAd var_A8 = ""
  loc_BB24B2: FFree1Var var_100 = ""
  loc_BB24B5: FLdRfVar var_104
  loc_BB24B8: LitVarStr var_94, "ReapImpu"
  loc_BB24BD: PopAdLdVar
  loc_BB24BE: FLdRfVar var_F0
  loc_BB24C1: FLdRfVar var_A8
  loc_BB24C4: FLdPr var_B0
  loc_BB24C7: from_stack_1v = clsbase.RsFrmGet()
  loc_BB24CC: FLdPr var_A8
  loc_BB24CF:  = Me.Fields
  loc_BB24D4: FLdPr var_F0
  loc_BB24D7: from_stack_2 = Me.Item(from_stack_1)
  loc_BB24DC: LitI2_Byte 0
  loc_BB24DE: LitI4 1
  loc_BB24E3: FLdPr Me
  loc_BB24E6: MemLdStr global_88
  loc_BB24E9: AryLock
  loc_BB24EC: Ary1LdPr
  loc_BB24ED: MemLdRfVar from_stack_1.global_36
  loc_BB24F0: CVarRef
  loc_BB24F5: LitI2_Byte &HFF
  loc_BB24F7: FLdZeroAd var_104
  loc_BB24FA: CVarAd
  loc_BB24FE: PopAdLdVar
  loc_BB24FF: FLdPr Me
  loc_BB2502: MemLdI2 global_84
  loc_BB2505: CI4UI1
  loc_BB2506: FLdPr Me
  loc_BB2509: MemLdStr global_80
  loc_BB250C: AryLock
  loc_BB250F: Ary1LdPr
  loc_BB2510: MemLdRfVar from_stack_1.global_36
  loc_BB2513: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2518: AryUnlock
  loc_BB251B: AryUnlock
  loc_BB251E: FFreeAd var_A8 = ""
  loc_BB2525: FFree1Var var_100 = ""
  loc_BB2528: FLdRfVar var_104
  loc_BB252B: LitVarStr var_94, "MapaImpu"
  loc_BB2530: PopAdLdVar
  loc_BB2531: FLdRfVar var_F0
  loc_BB2534: FLdRfVar var_A8
  loc_BB2537: FLdPr var_B0
  loc_BB253A: from_stack_1v = clsbase.RsFrmGet()
  loc_BB253F: FLdPr var_A8
  loc_BB2542:  = Me.Fields
  loc_BB2547: FLdPr var_F0
  loc_BB254A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB254F: LitI2_Byte 0
  loc_BB2551: LitI4 1
  loc_BB2556: FLdPr Me
  loc_BB2559: MemLdStr global_88
  loc_BB255C: AryLock
  loc_BB255F: Ary1LdPr
  loc_BB2560: MemLdRfVar from_stack_1.global_40
  loc_BB2563: CVarRef
  loc_BB2568: LitI2_Byte &HFF
  loc_BB256A: FLdZeroAd var_104
  loc_BB256D: CVarAd
  loc_BB2571: PopAdLdVar
  loc_BB2572: FLdPr Me
  loc_BB2575: MemLdI2 global_84
  loc_BB2578: CI4UI1
  loc_BB2579: FLdPr Me
  loc_BB257C: MemLdStr global_80
  loc_BB257F: AryLock
  loc_BB2582: Ary1LdPr
  loc_BB2583: MemLdRfVar from_stack_1.global_40
  loc_BB2586: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB258B: AryUnlock
  loc_BB258E: AryUnlock
  loc_BB2591: FFreeAd var_A8 = ""
  loc_BB2598: FFree1Var var_100 = ""
  loc_BB259B: FLdRfVar var_104
  loc_BB259E: LitVarStr var_94, "PagaImpu"
  loc_BB25A3: PopAdLdVar
  loc_BB25A4: FLdRfVar var_F0
  loc_BB25A7: FLdRfVar var_A8
  loc_BB25AA: FLdPr var_B0
  loc_BB25AD: from_stack_1v = clsbase.RsFrmGet()
  loc_BB25B2: FLdPr var_A8
  loc_BB25B5:  = Me.Fields
  loc_BB25BA: FLdPr var_F0
  loc_BB25BD: from_stack_2 = Me.Item(from_stack_1)
  loc_BB25C2: LitI2_Byte 0
  loc_BB25C4: LitI4 1
  loc_BB25C9: FLdPr Me
  loc_BB25CC: MemLdStr global_88
  loc_BB25CF: AryLock
  loc_BB25D2: Ary1LdPr
  loc_BB25D3: MemLdRfVar from_stack_1.global_44
  loc_BB25D6: CVarRef
  loc_BB25DB: LitI2_Byte &HFF
  loc_BB25DD: FLdZeroAd var_104
  loc_BB25E0: CVarAd
  loc_BB25E4: PopAdLdVar
  loc_BB25E5: FLdPr Me
  loc_BB25E8: MemLdI2 global_84
  loc_BB25EB: CI4UI1
  loc_BB25EC: FLdPr Me
  loc_BB25EF: MemLdStr global_80
  loc_BB25F2: AryLock
  loc_BB25F5: Ary1LdPr
  loc_BB25F6: MemLdRfVar from_stack_1.global_44
  loc_BB25F9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB25FE: AryUnlock
  loc_BB2601: AryUnlock
  loc_BB2604: FFreeAd var_A8 = ""
  loc_BB260B: FFree1Var var_100 = ""
  loc_BB260E: FLdRfVar var_104
  loc_BB2611: LitVarStr var_94, "AhmasRea"
  loc_BB2616: PopAdLdVar
  loc_BB2617: FLdRfVar var_F0
  loc_BB261A: FLdRfVar var_A8
  loc_BB261D: FLdPr var_B0
  loc_BB2620: from_stack_1v = clsbase.RsFrmGet()
  loc_BB2625: FLdPr var_A8
  loc_BB2628:  = Me.Fields
  loc_BB262D: FLdPr var_F0
  loc_BB2630: from_stack_2 = Me.Item(from_stack_1)
  loc_BB2635: LitI2_Byte 0
  loc_BB2637: LitI4 1
  loc_BB263C: FLdPr Me
  loc_BB263F: MemLdStr global_88
  loc_BB2642: AryLock
  loc_BB2645: Ary1LdPr
  loc_BB2646: MemLdRfVar from_stack_1.global_48
  loc_BB2649: CVarRef
  loc_BB264E: LitI2_Byte &HFF
  loc_BB2650: FLdZeroAd var_104
  loc_BB2653: CVarAd
  loc_BB2657: PopAdLdVar
  loc_BB2658: FLdPr Me
  loc_BB265B: MemLdI2 global_84
  loc_BB265E: CI4UI1
  loc_BB265F: FLdPr Me
  loc_BB2662: MemLdStr global_80
  loc_BB2665: AryLock
  loc_BB2668: Ary1LdPr
  loc_BB2669: MemLdRfVar from_stack_1.global_48
  loc_BB266C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2671: AryUnlock
  loc_BB2674: AryUnlock
  loc_BB2677: FFreeAd var_A8 = ""
  loc_BB267E: FFree1Var var_100 = ""
  loc_BB2681: Branch loc_BB2A44
  loc_BB2684: FLdRfVar var_104
  loc_BB2687: LitVarStr var_94, "CantReg"
  loc_BB268C: PopAdLdVar
  loc_BB268D: FLdRfVar var_F0
  loc_BB2690: FLdRfVar var_A8
  loc_BB2693: FLdPr var_B0
  loc_BB2696: from_stack_1v = clsbase.RsFrmGet()
  loc_BB269B: FLdPr var_A8
  loc_BB269E:  = Me.Fields
  loc_BB26A3: FLdPr var_F0
  loc_BB26A6: from_stack_2 = Me.Item(from_stack_1)
  loc_BB26AB: LitI2_Byte 0
  loc_BB26AD: LitVar_Missing var_114
  loc_BB26B0: LitI2_Byte 0
  loc_BB26B2: FLdZeroAd var_104
  loc_BB26B5: CVarAd
  loc_BB26B9: PopAdLdVar
  loc_BB26BA: FLdPr Me
  loc_BB26BD: MemLdI2 global_84
  loc_BB26C0: CI4UI1
  loc_BB26C1: FLdPr Me
  loc_BB26C4: MemLdStr global_80
  loc_BB26C7: AryLock
  loc_BB26CA: Ary1LdPr
  loc_BB26CB: MemLdRfVar from_stack_1.global_12
  loc_BB26CE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB26D3: AryUnlock
  loc_BB26D6: FFreeAd var_A8 = ""
  loc_BB26DD: FFreeVar var_100 = ""
  loc_BB26E4: FLdRfVar var_104
  loc_BB26E7: LitVarStr var_94, "TotaAuto"
  loc_BB26EC: PopAdLdVar
  loc_BB26ED: FLdRfVar var_F0
  loc_BB26F0: FLdRfVar var_A8
  loc_BB26F3: FLdPr var_B0
  loc_BB26F6: from_stack_1v = clsbase.RsFrmGet()
  loc_BB26FB: FLdPr var_A8
  loc_BB26FE:  = Me.Fields
  loc_BB2703: FLdPr var_F0
  loc_BB2706: from_stack_2 = Me.Item(from_stack_1)
  loc_BB270B: LitI2_Byte 0
  loc_BB270D: LitVar_Missing var_114
  loc_BB2710: LitI2_Byte &HFF
  loc_BB2712: FLdZeroAd var_104
  loc_BB2715: CVarAd
  loc_BB2719: PopAdLdVar
  loc_BB271A: FLdPr Me
  loc_BB271D: MemLdI2 global_84
  loc_BB2720: CI4UI1
  loc_BB2721: FLdPr Me
  loc_BB2724: MemLdStr global_80
  loc_BB2727: AryLock
  loc_BB272A: Ary1LdPr
  loc_BB272B: MemLdRfVar from_stack_1.global_16
  loc_BB272E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2733: AryUnlock
  loc_BB2736: FFreeAd var_A8 = ""
  loc_BB273D: FFreeVar var_100 = ""
  loc_BB2744: FLdRfVar var_104
  loc_BB2747: LitVarStr var_94, "PrevImpu"
  loc_BB274C: PopAdLdVar
  loc_BB274D: FLdRfVar var_F0
  loc_BB2750: FLdRfVar var_A8
  loc_BB2753: FLdPr var_B0
  loc_BB2756: from_stack_1v = clsbase.RsFrmGet()
  loc_BB275B: FLdPr var_A8
  loc_BB275E:  = Me.Fields
  loc_BB2763: FLdPr var_F0
  loc_BB2766: from_stack_2 = Me.Item(from_stack_1)
  loc_BB276B: LitI2_Byte 0
  loc_BB276D: LitVar_Missing var_114
  loc_BB2770: LitI2_Byte &HFF
  loc_BB2772: FLdZeroAd var_104
  loc_BB2775: CVarAd
  loc_BB2779: PopAdLdVar
  loc_BB277A: FLdPr Me
  loc_BB277D: MemLdI2 global_84
  loc_BB2780: CI4UI1
  loc_BB2781: FLdPr Me
  loc_BB2784: MemLdStr global_80
  loc_BB2787: AryLock
  loc_BB278A: Ary1LdPr
  loc_BB278B: MemLdRfVar from_stack_1.global_20
  loc_BB278E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2793: AryUnlock
  loc_BB2796: FFreeAd var_A8 = ""
  loc_BB279D: FFreeVar var_100 = ""
  loc_BB27A4: FLdRfVar var_104
  loc_BB27A7: LitVarStr var_94, "SaldCred"
  loc_BB27AC: PopAdLdVar
  loc_BB27AD: FLdRfVar var_F0
  loc_BB27B0: FLdRfVar var_A8
  loc_BB27B3: FLdPr var_B0
  loc_BB27B6: from_stack_1v = clsbase.RsFrmGet()
  loc_BB27BB: FLdPr var_A8
  loc_BB27BE:  = Me.Fields
  loc_BB27C3: FLdPr var_F0
  loc_BB27C6: from_stack_2 = Me.Item(from_stack_1)
  loc_BB27CB: LitI2_Byte 0
  loc_BB27CD: LitVar_Missing var_114
  loc_BB27D0: LitI2_Byte &HFF
  loc_BB27D2: FLdZeroAd var_104
  loc_BB27D5: CVarAd
  loc_BB27D9: PopAdLdVar
  loc_BB27DA: FLdPr Me
  loc_BB27DD: MemLdI2 global_84
  loc_BB27E0: CI4UI1
  loc_BB27E1: FLdPr Me
  loc_BB27E4: MemLdStr global_80
  loc_BB27E7: AryLock
  loc_BB27EA: Ary1LdPr
  loc_BB27EB: MemLdRfVar from_stack_1.global_24
  loc_BB27EE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB27F3: AryUnlock
  loc_BB27F6: FFreeAd var_A8 = ""
  loc_BB27FD: FFreeVar var_100 = ""
  loc_BB2804: FLdRfVar var_104
  loc_BB2807: LitVarStr var_94, "DefiImpu"
  loc_BB280C: PopAdLdVar
  loc_BB280D: FLdRfVar var_F0
  loc_BB2810: FLdRfVar var_A8
  loc_BB2813: FLdPr var_B0
  loc_BB2816: from_stack_1v = clsbase.RsFrmGet()
  loc_BB281B: FLdPr var_A8
  loc_BB281E:  = Me.Fields
  loc_BB2823: FLdPr var_F0
  loc_BB2826: from_stack_2 = Me.Item(from_stack_1)
  loc_BB282B: LitI2_Byte 0
  loc_BB282D: LitVar_Missing var_114
  loc_BB2830: LitI2_Byte &HFF
  loc_BB2832: FLdZeroAd var_104
  loc_BB2835: CVarAd
  loc_BB2839: PopAdLdVar
  loc_BB283A: FLdPr Me
  loc_BB283D: MemLdI2 global_84
  loc_BB2840: CI4UI1
  loc_BB2841: FLdPr Me
  loc_BB2844: MemLdStr global_80
  loc_BB2847: AryLock
  loc_BB284A: Ary1LdPr
  loc_BB284B: MemLdRfVar from_stack_1.global_28
  loc_BB284E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2853: AryUnlock
  loc_BB2856: FFreeAd var_A8 = ""
  loc_BB285D: FFreeVar var_100 = ""
  loc_BB2864: FLdRfVar var_104
  loc_BB2867: LitVarStr var_94, "DeveImpu"
  loc_BB286C: PopAdLdVar
  loc_BB286D: FLdRfVar var_F0
  loc_BB2870: FLdRfVar var_A8
  loc_BB2873: FLdPr var_B0
  loc_BB2876: from_stack_1v = clsbase.RsFrmGet()
  loc_BB287B: FLdPr var_A8
  loc_BB287E:  = Me.Fields
  loc_BB2883: FLdPr var_F0
  loc_BB2886: from_stack_2 = Me.Item(from_stack_1)
  loc_BB288B: LitI2_Byte 0
  loc_BB288D: LitVar_Missing var_114
  loc_BB2890: LitI2_Byte &HFF
  loc_BB2892: FLdZeroAd var_104
  loc_BB2895: CVarAd
  loc_BB2899: PopAdLdVar
  loc_BB289A: FLdPr Me
  loc_BB289D: MemLdI2 global_84
  loc_BB28A0: CI4UI1
  loc_BB28A1: FLdPr Me
  loc_BB28A4: MemLdStr global_80
  loc_BB28A7: AryLock
  loc_BB28AA: Ary1LdPr
  loc_BB28AB: MemLdRfVar from_stack_1.global_32
  loc_BB28AE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB28B3: AryUnlock
  loc_BB28B6: FFreeAd var_A8 = ""
  loc_BB28BD: FFreeVar var_100 = ""
  loc_BB28C4: FLdRfVar var_104
  loc_BB28C7: LitVarStr var_94, "ReapImpu"
  loc_BB28CC: PopAdLdVar
  loc_BB28CD: FLdRfVar var_F0
  loc_BB28D0: FLdRfVar var_A8
  loc_BB28D3: FLdPr var_B0
  loc_BB28D6: from_stack_1v = clsbase.RsFrmGet()
  loc_BB28DB: FLdPr var_A8
  loc_BB28DE:  = Me.Fields
  loc_BB28E3: FLdPr var_F0
  loc_BB28E6: from_stack_2 = Me.Item(from_stack_1)
  loc_BB28EB: LitI2_Byte 0
  loc_BB28ED: LitVar_Missing var_114
  loc_BB28F0: LitI2_Byte &HFF
  loc_BB28F2: FLdZeroAd var_104
  loc_BB28F5: CVarAd
  loc_BB28F9: PopAdLdVar
  loc_BB28FA: FLdPr Me
  loc_BB28FD: MemLdI2 global_84
  loc_BB2900: CI4UI1
  loc_BB2901: FLdPr Me
  loc_BB2904: MemLdStr global_80
  loc_BB2907: AryLock
  loc_BB290A: Ary1LdPr
  loc_BB290B: MemLdRfVar from_stack_1.global_36
  loc_BB290E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2913: AryUnlock
  loc_BB2916: FFreeAd var_A8 = ""
  loc_BB291D: FFreeVar var_100 = ""
  loc_BB2924: FLdRfVar var_104
  loc_BB2927: LitVarStr var_94, "MapaImpu"
  loc_BB292C: PopAdLdVar
  loc_BB292D: FLdRfVar var_F0
  loc_BB2930: FLdRfVar var_A8
  loc_BB2933: FLdPr var_B0
  loc_BB2936: from_stack_1v = clsbase.RsFrmGet()
  loc_BB293B: FLdPr var_A8
  loc_BB293E:  = Me.Fields
  loc_BB2943: FLdPr var_F0
  loc_BB2946: from_stack_2 = Me.Item(from_stack_1)
  loc_BB294B: LitI2_Byte 0
  loc_BB294D: LitVar_Missing var_114
  loc_BB2950: LitI2_Byte &HFF
  loc_BB2952: FLdZeroAd var_104
  loc_BB2955: CVarAd
  loc_BB2959: PopAdLdVar
  loc_BB295A: FLdPr Me
  loc_BB295D: MemLdI2 global_84
  loc_BB2960: CI4UI1
  loc_BB2961: FLdPr Me
  loc_BB2964: MemLdStr global_80
  loc_BB2967: AryLock
  loc_BB296A: Ary1LdPr
  loc_BB296B: MemLdRfVar from_stack_1.global_40
  loc_BB296E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2973: AryUnlock
  loc_BB2976: FFreeAd var_A8 = ""
  loc_BB297D: FFreeVar var_100 = ""
  loc_BB2984: FLdRfVar var_104
  loc_BB2987: LitVarStr var_94, "PagaImpu"
  loc_BB298C: PopAdLdVar
  loc_BB298D: FLdRfVar var_F0
  loc_BB2990: FLdRfVar var_A8
  loc_BB2993: FLdPr var_B0
  loc_BB2996: from_stack_1v = clsbase.RsFrmGet()
  loc_BB299B: FLdPr var_A8
  loc_BB299E:  = Me.Fields
  loc_BB29A3: FLdPr var_F0
  loc_BB29A6: from_stack_2 = Me.Item(from_stack_1)
  loc_BB29AB: LitI2_Byte 0
  loc_BB29AD: LitVar_Missing var_114
  loc_BB29B0: LitI2_Byte &HFF
  loc_BB29B2: FLdZeroAd var_104
  loc_BB29B5: CVarAd
  loc_BB29B9: PopAdLdVar
  loc_BB29BA: FLdPr Me
  loc_BB29BD: MemLdI2 global_84
  loc_BB29C0: CI4UI1
  loc_BB29C1: FLdPr Me
  loc_BB29C4: MemLdStr global_80
  loc_BB29C7: AryLock
  loc_BB29CA: Ary1LdPr
  loc_BB29CB: MemLdRfVar from_stack_1.global_44
  loc_BB29CE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB29D3: AryUnlock
  loc_BB29D6: FFreeAd var_A8 = ""
  loc_BB29DD: FFreeVar var_100 = ""
  loc_BB29E4: FLdRfVar var_104
  loc_BB29E7: LitVarStr var_94, "AhmasRea"
  loc_BB29EC: PopAdLdVar
  loc_BB29ED: FLdRfVar var_F0
  loc_BB29F0: FLdRfVar var_A8
  loc_BB29F3: FLdPr var_B0
  loc_BB29F6: from_stack_1v = clsbase.RsFrmGet()
  loc_BB29FB: FLdPr var_A8
  loc_BB29FE:  = Me.Fields
  loc_BB2A03: FLdPr var_F0
  loc_BB2A06: from_stack_2 = Me.Item(from_stack_1)
  loc_BB2A0B: LitI2_Byte 0
  loc_BB2A0D: LitVar_Missing var_114
  loc_BB2A10: LitI2_Byte &HFF
  loc_BB2A12: FLdZeroAd var_104
  loc_BB2A15: CVarAd
  loc_BB2A19: PopAdLdVar
  loc_BB2A1A: FLdPr Me
  loc_BB2A1D: MemLdI2 global_84
  loc_BB2A20: CI4UI1
  loc_BB2A21: FLdPr Me
  loc_BB2A24: MemLdStr global_80
  loc_BB2A27: AryLock
  loc_BB2A2A: Ary1LdPr
  loc_BB2A2B: MemLdRfVar from_stack_1.global_48
  loc_BB2A2E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB2A33: AryUnlock
  loc_BB2A36: FFreeAd var_A8 = ""
  loc_BB2A3D: FFreeVar var_100 = ""
  loc_BB2A44: LitI4 1
  loc_BB2A49: PopTmpLdAdStr var_19C
  loc_BB2A4C: FLdPr var_B0
  loc_BB2A4F: Call clsbase.Mover(from_stack_1v)
  loc_BB2A54: FLdPr Me
  loc_BB2A57: MemLdRfVar from_stack_1.global_84
  loc_BB2A5A: NextI2 var_1A0, loc_BB20EC
  loc_BB2A5F: LitNothing
  loc_BB2A61: FStAd var_B0 
  loc_BB2A65: LitI2_Byte &HFF
  loc_BB2A67: FLdPr Me
  loc_BB2A6A: MemStI2 bGenerado
  loc_BB2A6D: LitI2_Byte 0
  loc_BB2A6F: FLdPr Me
  loc_BB2A72: Me.MousePointer = from_stack_1
  loc_BB2A77: LitVarStr var_94, vbNullString
  loc_BB2A7C: PopAdLdVar
  loc_BB2A7D: FLdPr Me
  loc_BB2A80: VCallAd Control_ID_statusBar
  loc_BB2A83: FStAdFunc var_A8
  loc_BB2A86: FLdPr var_A8
  loc_BB2A89: LateIdSt
  loc_BB2A8E: FFree1Ad var_A8
  loc_BB2A91: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AD8D98
  'Data Table: 4A221C
  loc_AD870C: FLdRfVar var_88
  loc_AD870F: LitI2_Byte 0
  loc_AD8711: LitI2_Byte &HFF
  loc_AD8713: ImpAdLdI4 MemVar_C3D83C
  loc_AD8716: FLdPr Me
  loc_AD8719: MemLdRfVar from_stack_1.global_76
  loc_AD871C: NewIfNullPr IFileSystem3
  loc_AD871F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AD8724: ILdRf var_88
  loc_AD8727: FLdPr Me
  loc_AD872A: MemStVarAd
  loc_AD872E: FFree1Ad var_88
  loc_AD8731: Call Proc_232_31_A96744()
  loc_AD8736: LitI2_Byte 1
  loc_AD8738: FLdPr Me
  loc_AD873B: MemLdRfVar from_stack_1.global_84
  loc_AD873E: FLdPr Me
  loc_AD8741: MemLdStr global_80
  loc_AD8744: LitI2_Byte 1
  loc_AD8746: FnUBound
  loc_AD8748: CI2I4
  loc_AD8749: ForI2 var_8C
  loc_AD874F: FLdPr Me
  loc_AD8752: MemLdI2 global_84
  loc_AD8755: CI4UI1
  loc_AD8756: FLdPr Me
  loc_AD8759: MemLdStr global_80
  loc_AD875C: AryLock
  loc_AD875F: Ary1LdRf
  loc_AD8760: FStR4 var_94
  loc_AD8763: FMemLdI2 var_94(0)
  loc_AD8768: FStI2 var_96
  loc_AD876B: FLdI2 var_96
  loc_AD876E: LitI2_Byte 1
  loc_AD8770: EqI2
  loc_AD8771: BranchF loc_AD878B
  loc_AD8774: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_AD8779: PopAdLdVar
  loc_AD877A: FLdPr Me
  loc_AD877D: MemLdRfVar from_stack_1.htmFile
  loc_AD8780: LdPrVar
  loc_AD8782: LateMemCall
  loc_AD8788: Branch loc_AD881F
  loc_AD878B: FLdI2 var_96
  loc_AD878E: LitI2_Byte 2
  loc_AD8790: EqI2
  loc_AD8791: BranchF loc_AD87AB
  loc_AD8794: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales2"" nowrap>"
  loc_AD8799: PopAdLdVar
  loc_AD879A: FLdPr Me
  loc_AD879D: MemLdRfVar from_stack_1.htmFile
  loc_AD87A0: LdPrVar
  loc_AD87A2: LateMemCall
  loc_AD87A8: Branch loc_AD881F
  loc_AD87AB: FLdI2 var_96
  loc_AD87AE: LitI2_Byte 3
  loc_AD87B0: EqI2
  loc_AD87B1: BranchF loc_AD87CB
  loc_AD87B4: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales3"" nowrap>"
  loc_AD87B9: PopAdLdVar
  loc_AD87BA: FLdPr Me
  loc_AD87BD: MemLdRfVar from_stack_1.htmFile
  loc_AD87C0: LdPrVar
  loc_AD87C2: LateMemCall
  loc_AD87C8: Branch loc_AD881F
  loc_AD87CB: FLdI2 var_96
  loc_AD87CE: LitI2_Byte 4
  loc_AD87D0: EqI2
  loc_AD87D1: BranchF loc_AD87EB
  loc_AD87D4: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales4"" nowrap>"
  loc_AD87D9: PopAdLdVar
  loc_AD87DA: FLdPr Me
  loc_AD87DD: MemLdRfVar from_stack_1.htmFile
  loc_AD87E0: LdPrVar
  loc_AD87E2: LateMemCall
  loc_AD87E8: Branch loc_AD881F
  loc_AD87EB: FLdI2 var_96
  loc_AD87EE: LitI2_Byte 5
  loc_AD87F0: EqI2
  loc_AD87F1: BranchF loc_AD880B
  loc_AD87F4: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales5"" nowrap>"
  loc_AD87F9: PopAdLdVar
  loc_AD87FA: FLdPr Me
  loc_AD87FD: MemLdRfVar from_stack_1.htmFile
  loc_AD8800: LdPrVar
  loc_AD8802: LateMemCall
  loc_AD8808: Branch loc_AD881F
  loc_AD880B: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AD8810: PopAdLdVar
  loc_AD8811: FLdPr Me
  loc_AD8814: MemLdRfVar from_stack_1.htmFile
  loc_AD8817: LdPrVar
  loc_AD8819: LateMemCall
  loc_AD881F: LitI4 0
  loc_AD8824: LitI4 0
  loc_AD8829: LitI2_Byte 0
  loc_AD882B: LitStr "left"
  loc_AD882E: FMemLdR4 var_94(4)
  loc_AD8833: LitStr " - "
  loc_AD8836: ConcatStr
  loc_AD8837: FStStrNoPop var_BC
  loc_AD883A: FMemLdR4 var_94(8)
  loc_AD883F: ConcatStr
  loc_AD8840: FStStrNoPop var_C0
  loc_AD8843: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8848: CVarStr var_D0
  loc_AD884B: PopAdLdVar
  loc_AD884C: FLdPr Me
  loc_AD884F: MemLdRfVar from_stack_1.htmFile
  loc_AD8852: LdPrVar
  loc_AD8854: LateMemCall
  loc_AD885A: FFreeStr var_BC = ""
  loc_AD8861: FFree1Var var_D0 = ""
  loc_AD8864: LitI4 0
  loc_AD8869: LitI4 0
  loc_AD886E: LitI2_Byte 0
  loc_AD8870: LitStr "right"
  loc_AD8873: FMemLdR4 var_94(16)
  loc_AD8878: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD887D: CVarStr var_D0
  loc_AD8880: PopAdLdVar
  loc_AD8881: FLdPr Me
  loc_AD8884: MemLdRfVar from_stack_1.htmFile
  loc_AD8887: LdPrVar
  loc_AD8889: LateMemCall
  loc_AD888F: FFree1Var var_D0 = ""
  loc_AD8892: LitI4 0
  loc_AD8897: LitI4 0
  loc_AD889C: LitI2_Byte 0
  loc_AD889E: LitStr "right"
  loc_AD88A1: FMemLdR4 var_94(20)
  loc_AD88A6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD88AB: CVarStr var_D0
  loc_AD88AE: PopAdLdVar
  loc_AD88AF: FLdPr Me
  loc_AD88B2: MemLdRfVar from_stack_1.htmFile
  loc_AD88B5: LdPrVar
  loc_AD88B7: LateMemCall
  loc_AD88BD: FFree1Var var_D0 = ""
  loc_AD88C0: LitI4 0
  loc_AD88C5: LitI4 0
  loc_AD88CA: LitI2_Byte 0
  loc_AD88CC: LitStr "right"
  loc_AD88CF: FMemLdR4 var_94(24)
  loc_AD88D4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD88D9: CVarStr var_D0
  loc_AD88DC: PopAdLdVar
  loc_AD88DD: FLdPr Me
  loc_AD88E0: MemLdRfVar from_stack_1.htmFile
  loc_AD88E3: LdPrVar
  loc_AD88E5: LateMemCall
  loc_AD88EB: FFree1Var var_D0 = ""
  loc_AD88EE: LitI4 0
  loc_AD88F3: LitI4 0
  loc_AD88F8: LitI2_Byte 0
  loc_AD88FA: LitStr "right"
  loc_AD88FD: FMemLdR4 var_94(28)
  loc_AD8902: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8907: CVarStr var_D0
  loc_AD890A: PopAdLdVar
  loc_AD890B: FLdPr Me
  loc_AD890E: MemLdRfVar from_stack_1.htmFile
  loc_AD8911: LdPrVar
  loc_AD8913: LateMemCall
  loc_AD8919: FFree1Var var_D0 = ""
  loc_AD891C: LitI4 0
  loc_AD8921: LitI4 0
  loc_AD8926: LitI2_Byte 0
  loc_AD8928: LitStr "right"
  loc_AD892B: FMemLdR4 var_94(32)
  loc_AD8930: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8935: CVarStr var_D0
  loc_AD8938: PopAdLdVar
  loc_AD8939: FLdPr Me
  loc_AD893C: MemLdRfVar from_stack_1.htmFile
  loc_AD893F: LdPrVar
  loc_AD8941: LateMemCall
  loc_AD8947: FFree1Var var_D0 = ""
  loc_AD894A: LitI4 0
  loc_AD894F: LitI4 0
  loc_AD8954: LitI2_Byte 0
  loc_AD8956: LitStr "right"
  loc_AD8959: FMemLdR4 var_94(36)
  loc_AD895E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8963: CVarStr var_D0
  loc_AD8966: PopAdLdVar
  loc_AD8967: FLdPr Me
  loc_AD896A: MemLdRfVar from_stack_1.htmFile
  loc_AD896D: LdPrVar
  loc_AD896F: LateMemCall
  loc_AD8975: FFree1Var var_D0 = ""
  loc_AD8978: LitI4 0
  loc_AD897D: LitI4 0
  loc_AD8982: LitI2_Byte 0
  loc_AD8984: LitStr "right"
  loc_AD8987: FMemLdR4 var_94(40)
  loc_AD898C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8991: CVarStr var_D0
  loc_AD8994: PopAdLdVar
  loc_AD8995: FLdPr Me
  loc_AD8998: MemLdRfVar from_stack_1.htmFile
  loc_AD899B: LdPrVar
  loc_AD899D: LateMemCall
  loc_AD89A3: FFree1Var var_D0 = ""
  loc_AD89A6: LitI4 0
  loc_AD89AB: LitI4 0
  loc_AD89B0: LitI2_Byte 0
  loc_AD89B2: LitStr "right"
  loc_AD89B5: FMemLdR4 var_94(44)
  loc_AD89BA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD89BF: CVarStr var_D0
  loc_AD89C2: PopAdLdVar
  loc_AD89C3: FLdPr Me
  loc_AD89C6: MemLdRfVar from_stack_1.htmFile
  loc_AD89C9: LdPrVar
  loc_AD89CB: LateMemCall
  loc_AD89D1: FFree1Var var_D0 = ""
  loc_AD89D4: LitI4 0
  loc_AD89D9: LitI4 0
  loc_AD89DE: LitI2_Byte 0
  loc_AD89E0: LitStr "right"
  loc_AD89E3: FMemLdR4 var_94(48)
  loc_AD89E8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD89ED: CVarStr var_D0
  loc_AD89F0: PopAdLdVar
  loc_AD89F1: FLdPr Me
  loc_AD89F4: MemLdRfVar from_stack_1.htmFile
  loc_AD89F7: LdPrVar
  loc_AD89F9: LateMemCall
  loc_AD89FF: FFree1Var var_D0 = ""
  loc_AD8A02: LitVarStr var_A8, "     </tr>"
  loc_AD8A07: PopAdLdVar
  loc_AD8A08: FLdPr Me
  loc_AD8A0B: MemLdRfVar from_stack_1.htmFile
  loc_AD8A0E: LdPrVar
  loc_AD8A10: LateMemCall
  loc_AD8A16: LitI4 0
  loc_AD8A1B: FStR4 var_94
  loc_AD8A1E: AryUnlock
  loc_AD8A21: FLdPr Me
  loc_AD8A24: MemLdRfVar from_stack_1.global_84
  loc_AD8A27: NextI2 var_8C, loc_AD874F
  loc_AD8A2C: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_AD8A31: PopAdLdVar
  loc_AD8A32: FLdPr Me
  loc_AD8A35: MemLdRfVar from_stack_1.htmFile
  loc_AD8A38: LdPrVar
  loc_AD8A3A: LateMemCall
  loc_AD8A40: LitI4 1
  loc_AD8A45: FLdPr Me
  loc_AD8A48: MemLdStr global_88
  loc_AD8A4B: AryLock
  loc_AD8A4E: Ary1LdRf
  loc_AD8A4F: FStR4 var_D8
  loc_AD8A52: LitI4 0
  loc_AD8A57: LitI4 0
  loc_AD8A5C: LitI2_Byte 0
  loc_AD8A5E: LitStr "right"
  loc_AD8A61: LitStr "TOTALES"
  loc_AD8A64: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8A69: CVarStr var_D0
  loc_AD8A6C: PopAdLdVar
  loc_AD8A6D: FLdPr Me
  loc_AD8A70: MemLdRfVar from_stack_1.htmFile
  loc_AD8A73: LdPrVar
  loc_AD8A75: LateMemCall
  loc_AD8A7B: FFree1Var var_D0 = ""
  loc_AD8A7E: LitI4 0
  loc_AD8A83: LitI4 0
  loc_AD8A88: LitI2_Byte 0
  loc_AD8A8A: LitStr "right"
  loc_AD8A8D: FMemLdR4 var_D8(16)
  loc_AD8A92: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8A97: CVarStr var_D0
  loc_AD8A9A: PopAdLdVar
  loc_AD8A9B: FLdPr Me
  loc_AD8A9E: MemLdRfVar from_stack_1.htmFile
  loc_AD8AA1: LdPrVar
  loc_AD8AA3: LateMemCall
  loc_AD8AA9: FFree1Var var_D0 = ""
  loc_AD8AAC: LitI4 0
  loc_AD8AB1: LitI4 0
  loc_AD8AB6: LitI2_Byte 0
  loc_AD8AB8: LitStr "right"
  loc_AD8ABB: FMemLdR4 var_D8(20)
  loc_AD8AC0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8AC5: CVarStr var_D0
  loc_AD8AC8: PopAdLdVar
  loc_AD8AC9: FLdPr Me
  loc_AD8ACC: MemLdRfVar from_stack_1.htmFile
  loc_AD8ACF: LdPrVar
  loc_AD8AD1: LateMemCall
  loc_AD8AD7: FFree1Var var_D0 = ""
  loc_AD8ADA: LitI4 0
  loc_AD8ADF: LitI4 0
  loc_AD8AE4: LitI2_Byte 0
  loc_AD8AE6: LitStr "right"
  loc_AD8AE9: FMemLdR4 var_D8(24)
  loc_AD8AEE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8AF3: CVarStr var_D0
  loc_AD8AF6: PopAdLdVar
  loc_AD8AF7: FLdPr Me
  loc_AD8AFA: MemLdRfVar from_stack_1.htmFile
  loc_AD8AFD: LdPrVar
  loc_AD8AFF: LateMemCall
  loc_AD8B05: FFree1Var var_D0 = ""
  loc_AD8B08: LitI4 0
  loc_AD8B0D: LitI4 0
  loc_AD8B12: LitI2_Byte 0
  loc_AD8B14: LitStr "right"
  loc_AD8B17: FMemLdR4 var_D8(28)
  loc_AD8B1C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8B21: CVarStr var_D0
  loc_AD8B24: PopAdLdVar
  loc_AD8B25: FLdPr Me
  loc_AD8B28: MemLdRfVar from_stack_1.htmFile
  loc_AD8B2B: LdPrVar
  loc_AD8B2D: LateMemCall
  loc_AD8B33: FFree1Var var_D0 = ""
  loc_AD8B36: LitI4 0
  loc_AD8B3B: LitI4 0
  loc_AD8B40: LitI2_Byte 0
  loc_AD8B42: LitStr "right"
  loc_AD8B45: FMemLdR4 var_D8(32)
  loc_AD8B4A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8B4F: CVarStr var_D0
  loc_AD8B52: PopAdLdVar
  loc_AD8B53: FLdPr Me
  loc_AD8B56: MemLdRfVar from_stack_1.htmFile
  loc_AD8B59: LdPrVar
  loc_AD8B5B: LateMemCall
  loc_AD8B61: FFree1Var var_D0 = ""
  loc_AD8B64: LitI4 0
  loc_AD8B69: LitI4 0
  loc_AD8B6E: LitI2_Byte 0
  loc_AD8B70: LitStr "right"
  loc_AD8B73: FMemLdR4 var_D8(36)
  loc_AD8B78: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8B7D: CVarStr var_D0
  loc_AD8B80: PopAdLdVar
  loc_AD8B81: FLdPr Me
  loc_AD8B84: MemLdRfVar from_stack_1.htmFile
  loc_AD8B87: LdPrVar
  loc_AD8B89: LateMemCall
  loc_AD8B8F: FFree1Var var_D0 = ""
  loc_AD8B92: LitI4 0
  loc_AD8B97: LitI4 0
  loc_AD8B9C: LitI2_Byte 0
  loc_AD8B9E: LitStr "right"
  loc_AD8BA1: FMemLdR4 var_D8(40)
  loc_AD8BA6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8BAB: CVarStr var_D0
  loc_AD8BAE: PopAdLdVar
  loc_AD8BAF: FLdPr Me
  loc_AD8BB2: MemLdRfVar from_stack_1.htmFile
  loc_AD8BB5: LdPrVar
  loc_AD8BB7: LateMemCall
  loc_AD8BBD: FFree1Var var_D0 = ""
  loc_AD8BC0: LitI4 0
  loc_AD8BC5: LitI4 0
  loc_AD8BCA: LitI2_Byte 0
  loc_AD8BCC: LitStr "right"
  loc_AD8BCF: FMemLdR4 var_D8(44)
  loc_AD8BD4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8BD9: CVarStr var_D0
  loc_AD8BDC: PopAdLdVar
  loc_AD8BDD: FLdPr Me
  loc_AD8BE0: MemLdRfVar from_stack_1.htmFile
  loc_AD8BE3: LdPrVar
  loc_AD8BE5: LateMemCall
  loc_AD8BEB: FFree1Var var_D0 = ""
  loc_AD8BEE: LitI4 0
  loc_AD8BF3: LitI4 0
  loc_AD8BF8: LitI2_Byte 0
  loc_AD8BFA: LitStr "right"
  loc_AD8BFD: FMemLdR4 var_D8(48)
  loc_AD8C02: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8C07: CVarStr var_D0
  loc_AD8C0A: PopAdLdVar
  loc_AD8C0B: FLdPr Me
  loc_AD8C0E: MemLdRfVar from_stack_1.htmFile
  loc_AD8C11: LdPrVar
  loc_AD8C13: LateMemCall
  loc_AD8C19: FFree1Var var_D0 = ""
  loc_AD8C1C: LitI4 0
  loc_AD8C21: FStR4 var_D8
  loc_AD8C24: AryUnlock
  loc_AD8C27: LitVarStr var_A8, "     </tr>"
  loc_AD8C2C: PopAdLdVar
  loc_AD8C2D: FLdPr Me
  loc_AD8C30: MemLdRfVar from_stack_1.htmFile
  loc_AD8C33: LdPrVar
  loc_AD8C35: LateMemCall
  loc_AD8C3B: LitVarStr var_A8, "</table>"
  loc_AD8C40: PopAdLdVar
  loc_AD8C41: FLdPr Me
  loc_AD8C44: MemLdRfVar from_stack_1.htmFile
  loc_AD8C47: LdPrVar
  loc_AD8C49: LateMemCall
  loc_AD8C4F: LitVarStr var_A8, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AD8C54: PopAdLdVar
  loc_AD8C55: FLdPr Me
  loc_AD8C58: MemLdRfVar from_stack_1.htmFile
  loc_AD8C5B: LdPrVar
  loc_AD8C5D: LateMemCall
  loc_AD8C63: LitVarStr var_A8, "  <tr align=""center"" class=""Encabezado"">"
  loc_AD8C68: PopAdLdVar
  loc_AD8C69: FLdPr Me
  loc_AD8C6C: MemLdRfVar from_stack_1.htmFile
  loc_AD8C6F: LdPrVar
  loc_AD8C71: LateMemCall
  loc_AD8C77: LitVarStr var_A8, "    <th colspan=""2"">CANTIDAD DE REGISTROS</th>"
  loc_AD8C7C: PopAdLdVar
  loc_AD8C7D: FLdPr Me
  loc_AD8C80: MemLdRfVar from_stack_1.htmFile
  loc_AD8C83: LdPrVar
  loc_AD8C85: LateMemCall
  loc_AD8C8B: LitVarStr var_A8, "  </tr>"
  loc_AD8C90: PopAdLdVar
  loc_AD8C91: FLdPr Me
  loc_AD8C94: MemLdRfVar from_stack_1.htmFile
  loc_AD8C97: LdPrVar
  loc_AD8C99: LateMemCall
  loc_AD8C9F: LitI2_Byte 1
  loc_AD8CA1: FLdPr Me
  loc_AD8CA4: MemLdRfVar from_stack_1.global_84
  loc_AD8CA7: FLdPr Me
  loc_AD8CAA: MemLdStr global_80
  loc_AD8CAD: LitI2_Byte 1
  loc_AD8CAF: FnUBound
  loc_AD8CB1: CI2I4
  loc_AD8CB2: ForI2 var_DC
  loc_AD8CB8: FLdPr Me
  loc_AD8CBB: MemLdI2 global_84
  loc_AD8CBE: CI4UI1
  loc_AD8CBF: FLdPr Me
  loc_AD8CC2: MemLdStr global_80
  loc_AD8CC5: AryLock
  loc_AD8CC8: Ary1LdRf
  loc_AD8CC9: FStR4 var_E4
  loc_AD8CCC: LitVarStr var_A8, "<tr valign=""top"" class=""Totales"" nowrap>"
  loc_AD8CD1: PopAdLdVar
  loc_AD8CD2: FLdPr Me
  loc_AD8CD5: MemLdRfVar from_stack_1.htmFile
  loc_AD8CD8: LdPrVar
  loc_AD8CDA: LateMemCall
  loc_AD8CE0: LitI4 0
  loc_AD8CE5: LitI4 0
  loc_AD8CEA: LitI2_Byte 0
  loc_AD8CEC: LitStr "left"
  loc_AD8CEF: FMemLdR4 var_E4(4)
  loc_AD8CF4: LitStr " - "
  loc_AD8CF7: ConcatStr
  loc_AD8CF8: FStStrNoPop var_BC
  loc_AD8CFB: FMemLdR4 var_E4(8)
  loc_AD8D00: ConcatStr
  loc_AD8D01: FStStrNoPop var_C0
  loc_AD8D04: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8D09: CVarStr var_D0
  loc_AD8D0C: PopAdLdVar
  loc_AD8D0D: FLdPr Me
  loc_AD8D10: MemLdRfVar from_stack_1.htmFile
  loc_AD8D13: LdPrVar
  loc_AD8D15: LateMemCall
  loc_AD8D1B: FFreeStr var_BC = ""
  loc_AD8D22: FFree1Var var_D0 = ""
  loc_AD8D25: LitI4 0
  loc_AD8D2A: LitI4 0
  loc_AD8D2F: LitI2_Byte 0
  loc_AD8D31: LitStr "right"
  loc_AD8D34: FMemLdR4 var_E4(12)
  loc_AD8D39: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8D3E: CVarStr var_D0
  loc_AD8D41: PopAdLdVar
  loc_AD8D42: FLdPr Me
  loc_AD8D45: MemLdRfVar from_stack_1.htmFile
  loc_AD8D48: LdPrVar
  loc_AD8D4A: LateMemCall
  loc_AD8D50: FFree1Var var_D0 = ""
  loc_AD8D53: LitVarStr var_A8, "     </tr>"
  loc_AD8D58: PopAdLdVar
  loc_AD8D59: FLdPr Me
  loc_AD8D5C: MemLdRfVar from_stack_1.htmFile
  loc_AD8D5F: LdPrVar
  loc_AD8D61: LateMemCall
  loc_AD8D67: LitI4 0
  loc_AD8D6C: FStR4 var_E4
  loc_AD8D6F: AryUnlock
  loc_AD8D72: FLdPr Me
  loc_AD8D75: MemLdRfVar from_stack_1.global_84
  loc_AD8D78: NextI2 var_DC, loc_AD8CB8
  loc_AD8D7D: Call Proc_232_32_981430()
  loc_AD8D82: FLdPr Me
  loc_AD8D85: MemLdRfVar from_stack_1.htmFile
  loc_AD8D88: LdPrVar
  loc_AD8D8A: LateMemCall
  loc_AD8D90: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AD8D95: ExitProcHresult
  loc_AD8D96: FLdPr var_5C00
End Sub

Public Sub GeneraXLS() '951F64
  'Data Table: 4A221C
  loc_951F4C: LitI2_Byte 0
  loc_951F4E: FLdPr Me
  loc_951F51: MemStI2 bLogos
  loc_951F54: Call GeneraHTML()
  loc_951F59: LitI2_Byte &HFF
  loc_951F5B: FLdPr Me
  loc_951F5E: MemStI2 bLogos
  loc_951F61: ExitProcHresult
End Sub

Private Function Proc_232_31_A96744() 'A96744
  'Data Table: 4A221C
  loc_A962A8: LitVarStr var_94, "<html>"
  loc_A962AD: PopAdLdVar
  loc_A962AE: FLdPr Me
  loc_A962B1: MemLdRfVar from_stack_1.htmFile
  loc_A962B4: LdPrVar
  loc_A962B6: LateMemCall
  loc_A962BC: LitVarStr var_94, "<head>"
  loc_A962C1: PopAdLdVar
  loc_A962C2: FLdPr Me
  loc_A962C5: MemLdRfVar from_stack_1.htmFile
  loc_A962C8: LdPrVar
  loc_A962CA: LateMemCall
  loc_A962D0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A962D5: PopAdLdVar
  loc_A962D6: FLdPr Me
  loc_A962D9: MemLdRfVar from_stack_1.htmFile
  loc_A962DC: LdPrVar
  loc_A962DE: LateMemCall
  loc_A962E4: LitStr "<title>"
  loc_A962E7: FLdRfVar var_A8
  loc_A962EA: FLdPr Me
  loc_A962ED:  = Me.Caption
  loc_A962F2: ILdRf var_A8
  loc_A962F5: ConcatStr
  loc_A962F6: FStStrNoPop var_AC
  loc_A962F9: LitStr " - "
  loc_A962FC: ConcatStr
  loc_A962FD: FStStrNoPop var_B0
  loc_A96300: LitStr "Municipalidad de Guaymallén"
  loc_A96303: ConcatStr
  loc_A96304: FStStrNoPop var_B4
  loc_A96307: LitStr "</title>"
  loc_A9630A: ConcatStr
  loc_A9630B: CVarStr var_C4
  loc_A9630E: PopAdLdVar
  loc_A9630F: FLdPr Me
  loc_A96312: MemLdRfVar from_stack_1.htmFile
  loc_A96315: LdPrVar
  loc_A96317: LateMemCall
  loc_A9631D: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A96328: FFree1Var var_C4 = ""
  loc_A9632B: LitStr vbNullString
  loc_A9632E: ILdRf Me
  loc_A96331: CastAd
  loc_A96334: FStAdFunc var_C8
  loc_A96337: FLdRfVar var_C8
  loc_A9633A: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A9633F: FFree1Ad var_C8
  loc_A96342: LitI4 0
  loc_A96347: FStStrCopy var_AC
  loc_A9634A: FLdRfVar var_AC
  loc_A9634D: LitI4 0
  loc_A96352: FStStrCopy var_A8
  loc_A96355: FLdRfVar var_A8
  loc_A96358: LitI2_Byte &HFF
  loc_A9635A: PopTmpLdAd2 var_CA
  loc_A9635D: FLdPr Me
  loc_A96360: MemLdRfVar from_stack_1.htmFile
  loc_A96363: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A96368: FFreeStr var_A8 = ""
  loc_A9636F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A96374: PopAdLdVar
  loc_A96375: FLdPr Me
  loc_A96378: MemLdRfVar from_stack_1.htmFile
  loc_A9637B: LdPrVar
  loc_A9637D: LateMemCall
  loc_A96383: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_A96388: PopAdLdVar
  loc_A96389: FLdPr Me
  loc_A9638C: MemLdRfVar from_stack_1.htmFile
  loc_A9638F: LdPrVar
  loc_A96391: LateMemCall
  loc_A96397: LitVarStr var_94, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A9639C: PopAdLdVar
  loc_A9639D: FLdPr Me
  loc_A963A0: MemLdRfVar from_stack_1.htmFile
  loc_A963A3: LdPrVar
  loc_A963A5: LateMemCall
  loc_A963AB: FLdPr Me
  loc_A963AE: MemLdI2 bLogos
  loc_A963B1: BranchF loc_A963F6
  loc_A963B4: LitVarStr var_A4, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A963B9: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A963BE: FStVarCopyObj var_C4
  loc_A963C1: FLdRfVar var_C4
  loc_A963C4: FLdRfVar var_DC
  loc_A963C7: ImpAdCallFPR4  = Ucase()
  loc_A963CC: FLdRfVar var_DC
  loc_A963CF: ConcatVar var_EC
  loc_A963D3: LitVarStr var_FC, "</p>"
  loc_A963D8: ConcatVar var_10C
  loc_A963DC: PopAdLdVar
  loc_A963DD: FLdPr Me
  loc_A963E0: MemLdRfVar from_stack_1.htmFile
  loc_A963E3: LdPrVar
  loc_A963E5: LateMemCall
  loc_A963EB: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A963F6: LitStr "    <p>"
  loc_A963F9: FLdRfVar var_A8
  loc_A963FC: FLdPr Me
  loc_A963FF:  = Me.Caption
  loc_A96404: ILdRf var_A8
  loc_A96407: ConcatStr
  loc_A96408: FStStrNoPop var_AC
  loc_A9640B: LitStr "</p></th>"
  loc_A9640E: ConcatStr
  loc_A9640F: CVarStr var_C4
  loc_A96412: PopAdLdVar
  loc_A96413: FLdPr Me
  loc_A96416: MemLdRfVar from_stack_1.htmFile
  loc_A96419: LdPrVar
  loc_A9641B: LateMemCall
  loc_A96421: FFreeStr var_A8 = ""
  loc_A96428: FFree1Var var_C4 = ""
  loc_A9642B: LitVarStr var_94, "  </tr>"
  loc_A96430: PopAdLdVar
  loc_A96431: FLdPr Me
  loc_A96434: MemLdRfVar from_stack_1.htmFile
  loc_A96437: LdPrVar
  loc_A96439: LateMemCall
  loc_A9643F: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A96444: PopAdLdVar
  loc_A96445: FLdPr Me
  loc_A96448: MemLdRfVar from_stack_1.htmFile
  loc_A9644B: LdPrVar
  loc_A9644D: LateMemCall
  loc_A96453: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A96458: PopAdLdVar
  loc_A96459: FLdPr Me
  loc_A9645C: MemLdRfVar from_stack_1.htmFile
  loc_A9645F: LdPrVar
  loc_A96461: LateMemCall
  loc_A96467: LitVarStr var_94, "    <th align=""left"">"
  loc_A9646C: PopAdLdVar
  loc_A9646D: FLdPr Me
  loc_A96470: MemLdRfVar from_stack_1.htmFile
  loc_A96473: LdPrVar
  loc_A96475: LateMemCall
  loc_A9647B: LitStr "     Periodo: <span class=""Normal"">"
  loc_A9647E: FLdRfVar var_A8
  loc_A96481: FLdPr Me
  loc_A96484: VCallAd Control_ID_cboPeriodo
  loc_A96487: FStAdFunc var_C8
  loc_A9648A: FLdPr var_C8
  loc_A9648D:  = Me.Text
  loc_A96492: ILdRf var_A8
  loc_A96495: ConcatStr
  loc_A96496: FStStrNoPop var_AC
  loc_A96499: LitStr "</span><br>"
  loc_A9649C: ConcatStr
  loc_A9649D: CVarStr var_C4
  loc_A964A0: PopAdLdVar
  loc_A964A1: FLdPr Me
  loc_A964A4: MemLdRfVar from_stack_1.htmFile
  loc_A964A7: LdPrVar
  loc_A964A9: LateMemCall
  loc_A964AF: FFreeStr var_A8 = ""
  loc_A964B6: FFree1Ad var_C8
  loc_A964B9: FFree1Var var_C4 = ""
  loc_A964BC: FLdPr Me
  loc_A964BF: VCallAd Control_ID_CodiPartMsk
  loc_A964C2: FStAdFunc var_C8
  loc_A964C5: FLdPr var_C8
  loc_A964C8: LateIdLdVar var_C4 DispID_22 0
  loc_A964CF: CStrVarTmp
  loc_A964D0: FStStrNoPop var_A8
  loc_A964D3: LitStr vbNullString
  loc_A964D6: NeStr
  loc_A964D8: FFree1Str var_A8
  loc_A964DB: FFree1Ad var_C8
  loc_A964DE: FFree1Var var_C4 = ""
  loc_A964E1: BranchF loc_A96529
  loc_A964E4: LitStr "     Partidas que comienzan con: <span class=""Normal"">"
  loc_A964E7: FLdPr Me
  loc_A964EA: VCallAd Control_ID_CodiPartMsk
  loc_A964ED: FStAdFunc var_C8
  loc_A964F0: FLdPr var_C8
  loc_A964F3: LateIdLdVar var_C4 DispID_22 0
  loc_A964FA: CStrVarTmp
  loc_A964FB: FStStrNoPop var_A8
  loc_A964FE: ConcatStr
  loc_A964FF: FStStrNoPop var_AC
  loc_A96502: LitStr "...</span>"
  loc_A96505: ConcatStr
  loc_A96506: CVarStr var_DC
  loc_A96509: PopAdLdVar
  loc_A9650A: FLdPr Me
  loc_A9650D: MemLdRfVar from_stack_1.htmFile
  loc_A96510: LdPrVar
  loc_A96512: LateMemCall
  loc_A96518: FFreeStr var_A8 = ""
  loc_A9651F: FFree1Ad var_C8
  loc_A96522: FFreeVar var_C4 = ""
  loc_A96529: LitVarStr var_94, "    </th>"
  loc_A9652E: PopAdLdVar
  loc_A9652F: FLdPr Me
  loc_A96532: MemLdRfVar from_stack_1.htmFile
  loc_A96535: LdPrVar
  loc_A96537: LateMemCall
  loc_A9653D: LitVarStr var_94, "    <th align=""right"">"
  loc_A96542: PopAdLdVar
  loc_A96543: FLdPr Me
  loc_A96546: MemLdRfVar from_stack_1.htmFile
  loc_A96549: LdPrVar
  loc_A9654B: LateMemCall
  loc_A96551: LitStr "     Desde: <span class=""Normal"">"
  loc_A96554: FLdPr Me
  loc_A96557: VCallAd Control_ID_mskDesde
  loc_A9655A: FStAdFunc var_C8
  loc_A9655D: FLdPr var_C8
  loc_A96560: LateIdLdVar var_C4 DispID_15 0
  loc_A96567: CStrVarTmp
  loc_A96568: FStStrNoPop var_A8
  loc_A9656B: ConcatStr
  loc_A9656C: FStStrNoPop var_AC
  loc_A9656F: LitStr "</span><br>"
  loc_A96572: ConcatStr
  loc_A96573: CVarStr var_DC
  loc_A96576: PopAdLdVar
  loc_A96577: FLdPr Me
  loc_A9657A: MemLdRfVar from_stack_1.htmFile
  loc_A9657D: LdPrVar
  loc_A9657F: LateMemCall
  loc_A96585: FFreeStr var_A8 = ""
  loc_A9658C: FFree1Ad var_C8
  loc_A9658F: FFreeVar var_C4 = ""
  loc_A96596: LitStr "     Hasta: <span class=""Normal"">"
  loc_A96599: FLdPr Me
  loc_A9659C: VCallAd Control_ID_mskHasta
  loc_A9659F: FStAdFunc var_C8
  loc_A965A2: FLdPr var_C8
  loc_A965A5: LateIdLdVar var_C4 DispID_15 0
  loc_A965AC: CStrVarTmp
  loc_A965AD: FStStrNoPop var_A8
  loc_A965B0: ConcatStr
  loc_A965B1: FStStrNoPop var_AC
  loc_A965B4: LitStr "</span>"
  loc_A965B7: ConcatStr
  loc_A965B8: CVarStr var_DC
  loc_A965BB: PopAdLdVar
  loc_A965BC: FLdPr Me
  loc_A965BF: MemLdRfVar from_stack_1.htmFile
  loc_A965C2: LdPrVar
  loc_A965C4: LateMemCall
  loc_A965CA: FFreeStr var_A8 = ""
  loc_A965D1: FFree1Ad var_C8
  loc_A965D4: FFreeVar var_C4 = ""
  loc_A965DB: LitVarStr var_94, "    </th>"
  loc_A965E0: PopAdLdVar
  loc_A965E1: FLdPr Me
  loc_A965E4: MemLdRfVar from_stack_1.htmFile
  loc_A965E7: LdPrVar
  loc_A965E9: LateMemCall
  loc_A965EF: LitVarStr var_94, "  </tr>"
  loc_A965F4: PopAdLdVar
  loc_A965F5: FLdPr Me
  loc_A965F8: MemLdRfVar from_stack_1.htmFile
  loc_A965FB: LdPrVar
  loc_A965FD: LateMemCall
  loc_A96603: LitVarStr var_94, "</table>"
  loc_A96608: PopAdLdVar
  loc_A96609: FLdPr Me
  loc_A9660C: MemLdRfVar from_stack_1.htmFile
  loc_A9660F: LdPrVar
  loc_A96611: LateMemCall
  loc_A96617: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A9661C: PopAdLdVar
  loc_A9661D: FLdPr Me
  loc_A96620: MemLdRfVar from_stack_1.htmFile
  loc_A96623: LdPrVar
  loc_A96625: LateMemCall
  loc_A9662B: LitVarStr var_94, "  <THEAD>"
  loc_A96630: PopAdLdVar
  loc_A96631: FLdPr Me
  loc_A96634: MemLdRfVar from_stack_1.htmFile
  loc_A96637: LdPrVar
  loc_A96639: LateMemCall
  loc_A9663F: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A96644: PopAdLdVar
  loc_A96645: FLdPr Me
  loc_A96648: MemLdRfVar from_stack_1.htmFile
  loc_A9664B: LdPrVar
  loc_A9664D: LateMemCall
  loc_A96653: LitVarStr var_94, "    <th>Partida</th>"
  loc_A96658: PopAdLdVar
  loc_A96659: FLdPr Me
  loc_A9665C: MemLdRfVar from_stack_1.htmFile
  loc_A9665F: LdPrVar
  loc_A96661: LateMemCall
  loc_A96667: LitVarStr var_94, "    <th>Autorizado</th>"
  loc_A9666C: PopAdLdVar
  loc_A9666D: FLdPr Me
  loc_A96670: MemLdRfVar from_stack_1.htmFile
  loc_A96673: LdPrVar
  loc_A96675: LateMemCall
  loc_A9667B: LitVarStr var_94, "    <th>Preventiva</th>"
  loc_A96680: PopAdLdVar
  loc_A96681: FLdPr Me
  loc_A96684: MemLdRfVar from_stack_1.htmFile
  loc_A96687: LdPrVar
  loc_A96689: LateMemCall
  loc_A9668F: LitVarStr var_94, "    <th>Saldo Crédito<br>(Aut.-Prev.)</th>"
  loc_A96694: PopAdLdVar
  loc_A96695: FLdPr Me
  loc_A96698: MemLdRfVar from_stack_1.htmFile
  loc_A9669B: LdPrVar
  loc_A9669D: LateMemCall
  loc_A966A3: LitVarStr var_94, "    <th>Definitiva</th>"
  loc_A966A8: PopAdLdVar
  loc_A966A9: FLdPr Me
  loc_A966AC: MemLdRfVar from_stack_1.htmFile
  loc_A966AF: LdPrVar
  loc_A966B1: LateMemCall
  loc_A966B7: LitVarStr var_94, "    <th>Devengado</th>"
  loc_A966BC: PopAdLdVar
  loc_A966BD: FLdPr Me
  loc_A966C0: MemLdRfVar from_stack_1.htmFile
  loc_A966C3: LdPrVar
  loc_A966C5: LateMemCall
  loc_A966CB: LitVarStr var_94, "    <th>Reapropiación</th>"
  loc_A966D0: PopAdLdVar
  loc_A966D1: FLdPr Me
  loc_A966D4: MemLdRfVar from_stack_1.htmFile
  loc_A966D7: LdPrVar
  loc_A966D9: LateMemCall
  loc_A966DF: LitVarStr var_94, "    <th>Mandado a Pagar</th>"
  loc_A966E4: PopAdLdVar
  loc_A966E5: FLdPr Me
  loc_A966E8: MemLdRfVar from_stack_1.htmFile
  loc_A966EB: LdPrVar
  loc_A966ED: LateMemCall
  loc_A966F3: LitVarStr var_94, "    <th>Pagado</th>"
  loc_A966F8: PopAdLdVar
  loc_A966F9: FLdPr Me
  loc_A966FC: MemLdRfVar from_stack_1.htmFile
  loc_A966FF: LdPrVar
  loc_A96701: LateMemCall
  loc_A96707: LitVarStr var_94, "    <th>Ahorro+<br>Reapropiación</th>"
  loc_A9670C: PopAdLdVar
  loc_A9670D: FLdPr Me
  loc_A96710: MemLdRfVar from_stack_1.htmFile
  loc_A96713: LdPrVar
  loc_A96715: LateMemCall
  loc_A9671B: LitVarStr var_94, "  </tr>"
  loc_A96720: PopAdLdVar
  loc_A96721: FLdPr Me
  loc_A96724: MemLdRfVar from_stack_1.htmFile
  loc_A96727: LdPrVar
  loc_A96729: LateMemCall
  loc_A9672F: LitVarStr var_94, "  </THEAD>"
  loc_A96734: PopAdLdVar
  loc_A96735: FLdPr Me
  loc_A96738: MemLdRfVar from_stack_1.htmFile
  loc_A9673B: LdPrVar
  loc_A9673D: LateMemCall
  loc_A96743: ExitProcHresult
End Function

Private Function Proc_232_32_981430() '981430
  'Data Table: 4A221C
  loc_9813F0: LitVarStr var_94, "</table>"
  loc_9813F5: PopAdLdVar
  loc_9813F6: FLdPr Me
  loc_9813F9: MemLdRfVar from_stack_1.htmFile
  loc_9813FC: LdPrVar
  loc_9813FE: LateMemCall
  loc_981404: LitVarStr var_94, "</body>"
  loc_981409: PopAdLdVar
  loc_98140A: FLdPr Me
  loc_98140D: MemLdRfVar from_stack_1.htmFile
  loc_981410: LdPrVar
  loc_981412: LateMemCall
  loc_981418: LitVarStr var_94, "</html>"
  loc_98141D: PopAdLdVar
  loc_98141E: FLdPr Me
  loc_981421: MemLdRfVar from_stack_1.htmFile
  loc_981424: LdPrVar
  loc_981426: LateMemCall
  loc_98142C: ExitProcHresult
  loc_98142D: FLdPr var_7600
End Function
