VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{65E121D4-0C60-11D2-A9FC0000F8754DA1}#2.0#0"; "C:\WINDOWS\SysWOW64\mschrt20.ocx"
Begin VB.Form rptPlazoRecepcionaOrdenPago
  Caption = "Plazo desde la Recepción a la Orden de Pago"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptPlazoRecepcionaOrdenPago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6120
  ClientHeight = 4335
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4080
    Width = 6120
    Height = 255
    TabIndex = 25
    OleObjectBlob = "rptPlazoRecepcionaOrdenPago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5160
    Top = 3120
    Width = 735
    Height = 615
    TabIndex = 23
    Cancel = -1  'True
    Picture = "rptPlazoRecepcionaOrdenPago.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptPlazoRecepcionaOrdenPago.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2880
    Width = 1815
    Height = 1095
    TabIndex = 21
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2880
    Width = 3015
    Height = 1095
    TabIndex = 18
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5895
    Height = 2775
    TabIndex = 0
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 840
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 2280
      Top = 1800
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptPlazoRecepcionaOrdenPago.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2040
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptPlazoRecepcionaOrdenPago.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2040
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptPlazoRecepcionaOrdenPago.frx":123C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
      CausesValidation = 0   'False
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 840
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptPlazoRecepcionaOrdenPago.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 840
      Top = 1320
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptPlazoRecepcionaOrdenPago.frx":1806
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 840
      Top = 1800
      Width = 1335
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptPlazoRecepcionaOrdenPago.frx":188E
    End
    Begin MSMask.MaskEdBox PlazoMsk
      Left = 840
      Top = 2280
      Width = 495
      Height = 285
      TabIndex = 15
      OleObjectBlob = "rptPlazoRecepcionaOrdenPago.frx":18EE
    End
    Begin VB.Label Label6
      Caption = "Periodo:"
      Left = 120
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "días"
      Left = 1440
      Top = 2280
      Width = 315
      Height = 195
      TabIndex = 16
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Plazo:"
      Left = 315
      Top = 2280
      Width = 435
      Height = 195
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 135
      Top = 1800
      Width = 615
      Height = 315
      TabIndex = 10
    End
    Begin VB.Label CodiPartLbl
      Left = 2760
      Top = 1800
      Width = 2895
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 285
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 240
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5280
    Top = 3480
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 24
    OleObjectBlob = "rptPlazoRecepcionaOrdenPago.frx":1954
  End
  Begin MSChart20Lib.MSChart Graf1
    Left = 6480
    Top = 0
    Width = 3855
    Height = 3015
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
    OleObjectBlob = "rptPlazoRecepcionaOrdenPago.frx":1A08
  End
  Begin VB.Image img1
    Left = 10440
    Top = 240
    Width = 735
    Height = 3135
    Visible = 0   'False
  End
End

Attribute VB_Name = "rptPlazoRecepcionaOrdenPago"

Public bGenerado As Boolean

Private Type UDT_1_005FAF6C
  bStruc(32) As Byte ' String fields: 7
End Type


Private Sub cmdCodiPart_Click() '9F72D4
  'Data Table: 4AA380
  loc_9F71A0: LitNothing
  loc_9F71A2: CastAd
  loc_9F71A5: FStAdFuncNoPop
  loc_9F71A8: ImpAdLdRf MemVar_C3D724
  loc_9F71AB: NewIfNullPr bscPartida
  loc_9F71AE: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F71B3: FFree1Ad var_88
  loc_9F71B6: LitVar_Missing var_A8
  loc_9F71B9: PopAdLdVar
  loc_9F71BA: LitVarI4
  loc_9F71C2: PopAdLdVar
  loc_9F71C3: ImpAdLdRf MemVar_C3D724
  loc_9F71C6: NewIfNullPr bscPartida
  loc_9F71C9: bscPartida.Show from_stack_1, from_stack_2
  loc_9F71CE: FLdRfVar var_AC
  loc_9F71D1: FLdRfVar var_88
  loc_9F71D4: ImpAdLdRf MemVar_C3D724
  loc_9F71D7: NewIfNullPr bscPartida
  loc_9F71DA: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F71DF: FLdPr var_88
  loc_9F71E2: from_stack_1 = clsbase.RecordCount
  loc_9F71E7: ILdRf var_AC
  loc_9F71EA: LitI4 0
  loc_9F71EF: GtI4
  loc_9F71F0: FFree1Ad var_88
  loc_9F71F3: BranchF loc_9F72CE
  loc_9F71F6: FLdRfVar var_C8
  loc_9F71F9: FLdRfVar var_B8
  loc_9F71FC: LitVarStr var_98, "CodiPart"
  loc_9F7201: PopAdLdVar
  loc_9F7202: FLdRfVar var_B4
  loc_9F7205: FLdRfVar var_B0
  loc_9F7208: FLdRfVar var_88
  loc_9F720B: ImpAdLdRf MemVar_C3D724
  loc_9F720E: NewIfNullPr bscPartida
  loc_9F7211: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F7216: FLdPr var_88
  loc_9F7219: from_stack_1v = clsbase.RsFrmGet()
  loc_9F721E: FLdPr var_B0
  loc_9F7221:  = Me.Fields
  loc_9F7226: FLdPr var_B4
  loc_9F7229: from_stack_2 = Me.Item(from_stack_1)
  loc_9F722E: FLdPr var_B8
  loc_9F7231:  = Me.Value
  loc_9F7236: FLdRfVar var_C8
  loc_9F7239: CStrVarTmp
  loc_9F723A: CVarStr var_D8
  loc_9F723D: PopAdLdVar
  loc_9F723E: FLdPr Me
  loc_9F7241: VCallAd Control_ID_CodiPartMsk
  loc_9F7244: FStAdFunc var_DC
  loc_9F7247: FLdPr var_DC
  loc_9F724A: LateIdSt
  loc_9F724F: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F725C: FFreeVar var_C8 = ""
  loc_9F7263: FLdRfVar var_C8
  loc_9F7266: FLdRfVar var_B8
  loc_9F7269: LitVarStr var_98, "DetaPart"
  loc_9F726E: PopAdLdVar
  loc_9F726F: FLdRfVar var_B4
  loc_9F7272: FLdRfVar var_B0
  loc_9F7275: FLdRfVar var_88
  loc_9F7278: ImpAdLdRf MemVar_C3D724
  loc_9F727B: NewIfNullPr bscPartida
  loc_9F727E: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F7283: FLdPr var_88
  loc_9F7286: from_stack_1v = clsbase.RsFrmGet()
  loc_9F728B: FLdPr var_B0
  loc_9F728E:  = Me.Fields
  loc_9F7293: FLdPr var_B4
  loc_9F7296: from_stack_2 = Me.Item(from_stack_1)
  loc_9F729B: FLdPr var_B8
  loc_9F729E:  = Me.Value
  loc_9F72A3: FLdRfVar var_C8
  loc_9F72A6: CStrVarTmp
  loc_9F72A7: FStStrNoPop var_E0
  loc_9F72AA: FLdPr Me
  loc_9F72AD: VCallAd Control_ID_CodiPartLbl
  loc_9F72B0: FStAdFunc var_DC
  loc_9F72B3: FLdPr var_DC
  loc_9F72B6: Me.Caption = from_stack_1
  loc_9F72BB: FFree1Str var_E0
  loc_9F72BE: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F72CB: FFree1Var var_C8 = ""
  loc_9F72CE: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9F72D3: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97BA04
  'Data Table: 4AA380
  loc_97B9D4: LitVarStr var_94, "Cerrando..."
  loc_97B9D9: PopAdLdVar
  loc_97B9DA: FLdPr Me
  loc_97B9DD: VCallAd Control_ID_statusBar
  loc_97B9E0: FStAdFunc var_A8
  loc_97B9E3: FLdPr var_A8
  loc_97B9E6: LateIdSt
  loc_97B9EB: FFree1Ad var_A8
  loc_97B9EE: ILdRf Me
  loc_97B9F1: FStAdNoPop
  loc_97B9F5: ImpAdLdRf MemVar_C44F9C
  loc_97B9F8: NewIfNullPr Me
  loc_97B9FB: Me.Global.Unload from_stack_1
  loc_97BA00: FFree1Ad var_A8
  loc_97BA03: ExitProcHresult
End Sub

Private Sub Form_Load() '9DA070
  'Data Table: 4AA380
  loc_9D9F80: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9D9F85: PopAdLdVar
  loc_9D9F86: FLdPr Me
  loc_9D9F89: VCallAd Control_ID_CodiPartMsk
  loc_9D9F8C: FStAdFunc var_A8
  loc_9D9F8F: FLdPr var_A8
  loc_9D9F92: LateIdSt
  loc_9D9F97: FFree1Ad var_A8
  loc_9D9F9A: LitI2_Byte &HFF
  loc_9D9F9C: ImpAdStI2 MemVar_C3D840
  loc_9D9F9F: ILdRf Me
  loc_9D9FA2: CastAd
  loc_9D9FA5: FStAdFunc var_A8
  loc_9D9FA8: FLdRfVar var_A8
  loc_9D9FAB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D9FB0: FFree1Ad var_A8
  loc_9D9FB3: FLdRfVar var_AC
  loc_9D9FB6: NewIfNullAd
  loc_9D9FB9: FStAd var_B0 
  loc_9D9FBD: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D9FC0: FLdPr var_B0
  loc_9D9FC3: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D9FC8: FLdRfVar var_B4
  loc_9D9FCB: FLdPr var_B0
  loc_9D9FCE: from_stack_1 = clsperiodo.RecordCount
  loc_9D9FD3: ILdRf var_B4
  loc_9D9FD6: LitI4 0
  loc_9D9FDB: GtI4
  loc_9D9FDC: BranchF loc_9DA063
  loc_9D9FDF: FLdPr var_B0
  loc_9D9FE2: Call clsperiodo.MoveFirst()
  loc_9D9FE7: FLdRfVar var_B6
  loc_9D9FEA: FLdPr var_B0
  loc_9D9FED: from_stack_1 = clsperiodo.EOF
  loc_9D9FF2: FLdI2 var_B6
  loc_9D9FF5: NotI4
  loc_9D9FF6: BranchF loc_9DA063
  loc_9D9FF9: LitVar_Missing var_A4
  loc_9D9FFC: PopAdLdVar
  loc_9D9FFD: FLdRfVar var_D0
  loc_9DA000: FLdRfVar var_C0
  loc_9DA003: LitVarStr var_94, "PeriInfo"
  loc_9DA008: PopAdLdVar
  loc_9DA009: FLdRfVar var_BC
  loc_9DA00C: FLdRfVar var_A8
  loc_9DA00F: FLdPr var_B0
  loc_9DA012: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9DA017: FLdPr var_A8
  loc_9DA01A:  = Me.Fields
  loc_9DA01F: FLdPr var_BC
  loc_9DA022: from_stack_2 = Me.Item(from_stack_1)
  loc_9DA027: FLdPr var_C0
  loc_9DA02A:  = Me.Value
  loc_9DA02F: FLdRfVar var_D0
  loc_9DA032: CStrVarTmp
  loc_9DA033: FStStrNoPop var_D4
  loc_9DA036: FLdPr Me
  loc_9DA039: VCallAd Control_ID_cboPeriodo
  loc_9DA03C: FStAdFunc var_D8
  loc_9DA03F: FLdPr var_D8
  loc_9DA042: Me.AddItem from_stack_1, from_stack_2
  loc_9DA047: FFree1Str var_D4
  loc_9DA04A: FFreeAd var_A8 = "": var_BC = "": var_C0 = ""
  loc_9DA055: FFree1Var var_D0 = ""
  loc_9DA058: FLdPr var_B0
  loc_9DA05B: Call clsperiodo.MoveSiguiente()
  loc_9DA060: Branch loc_9D9FE7
  loc_9DA063: LitNothing
  loc_9DA065: FStAd var_B0 
  loc_9DA069: Call cmdNueva_Click()
  loc_9DA06E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9663EC
  'Data Table: 4AA380
  loc_9663D4: FLdPr Me
  loc_9663D7: VCallAd Control_ID_wbbReporte
  loc_9663DA: FStAdFunc var_88
  loc_9663DD: FLdRfVar var_88
  loc_9663E0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9663E5: FFree1Ad var_88
  loc_9663E8: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '9509B8
  'Data Table: 4AA380
  loc_9509A4: FLdPr Me
  loc_9509A7: VCallAd Control_ID_CodiPartMsk
  loc_9509AA: CVarAd
  loc_9509AE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9509B3: FFree1Var var_94 = ""
  loc_9509B6: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A0DDE0
  'Data Table: 4AA380
  loc_A0DC90: FLdRfVar var_88
  loc_A0DC93: NewIfNullAd
  loc_A0DC96: FStAd var_8C 
  loc_A0DC9A: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A0DC9D: FLdRfVar var_94
  loc_A0DCA0: FLdPr Me
  loc_A0DCA3: VCallAd Control_ID_cboPeriodo
  loc_A0DCA6: FStAdFunc var_90
  loc_A0DCA9: FLdPr var_90
  loc_A0DCAC:  = Me.Text
  loc_A0DCB1: ILdRf var_94
  loc_A0DCB4: ConcatStr
  loc_A0DCB5: FStStrNoPop var_98
  loc_A0DCB8: LitStr " AND CodiPart LIKE '"
  loc_A0DCBB: ConcatStr
  loc_A0DCBC: FStStrNoPop var_B0
  loc_A0DCBF: FLdPr Me
  loc_A0DCC2: VCallAd Control_ID_CodiPartMsk
  loc_A0DCC5: FStAdFunc var_9C
  loc_A0DCC8: FLdPr var_9C
  loc_A0DCCB: LateIdLdVar var_AC DispID_22 0
  loc_A0DCD2: CStrVarTmp
  loc_A0DCD3: FStStrNoPop var_B4
  loc_A0DCD6: ConcatStr
  loc_A0DCD7: FStStrNoPop var_B8
  loc_A0DCDA: LitStr Chr(37) & "'"
  loc_A0DCDD: ConcatStr
  loc_A0DCDE: FStStrNoPop var_BC
  loc_A0DCE1: FLdPr var_8C
  loc_A0DCE4: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0DCE9: FFreeStr var_94 = "": var_98 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A0DCF8: FFreeAd var_90 = ""
  loc_A0DCFF: FFree1Var var_AC = ""
  loc_A0DD02: FLdRfVar var_C0
  loc_A0DD05: FLdPr var_8C
  loc_A0DD08: from_stack_1 = clspartida.RecordCount
  loc_A0DD0D: ILdRf var_C0
  loc_A0DD10: FStR4 var_C4
  loc_A0DD13: ILdRf var_C4
  loc_A0DD16: LitI4 0
  loc_A0DD1B: EqI4
  loc_A0DD1C: BranchF loc_A0DD39
  loc_A0DD1F: LitStr "0 registros encontrados"
  loc_A0DD22: FLdPr Me
  loc_A0DD25: VCallAd Control_ID_CodiPartLbl
  loc_A0DD28: FStAdFunc var_90
  loc_A0DD2B: FLdPr var_90
  loc_A0DD2E: Me.Caption = from_stack_1
  loc_A0DD33: FFree1Ad var_90
  loc_A0DD36: Branch loc_A0DDD8
  loc_A0DD39: ILdRf var_C4
  loc_A0DD3C: LitI4 1
  loc_A0DD41: EqI4
  loc_A0DD42: BranchF loc_A0DDA3
  loc_A0DD45: FLdRfVar var_AC
  loc_A0DD48: FLdRfVar var_D8
  loc_A0DD4B: LitVarStr var_D4, "DetaPart"
  loc_A0DD50: PopAdLdVar
  loc_A0DD51: FLdRfVar var_9C
  loc_A0DD54: FLdRfVar var_90
  loc_A0DD57: FLdPr var_8C
  loc_A0DD5A: from_stack_1v = clspartida.RsFrmGet()
  loc_A0DD5F: FLdPr var_90
  loc_A0DD62:  = Me.Fields
  loc_A0DD67: FLdPr var_9C
  loc_A0DD6A: from_stack_2 = Me.Item(from_stack_1)
  loc_A0DD6F: FLdPr var_D8
  loc_A0DD72:  = Me.Value
  loc_A0DD77: FLdRfVar var_AC
  loc_A0DD7A: CStrVarTmp
  loc_A0DD7B: FStStrNoPop var_94
  loc_A0DD7E: FLdPr Me
  loc_A0DD81: VCallAd Control_ID_CodiPartLbl
  loc_A0DD84: FStAdFunc var_DC
  loc_A0DD87: FLdPr var_DC
  loc_A0DD8A: Me.Caption = from_stack_1
  loc_A0DD8F: FFree1Str var_94
  loc_A0DD92: FFreeAd var_90 = "": var_9C = "": var_D8 = ""
  loc_A0DD9D: FFree1Var var_AC = ""
  loc_A0DDA0: Branch loc_A0DDD8
  loc_A0DDA3: FLdRfVar var_C0
  loc_A0DDA6: FLdPr var_8C
  loc_A0DDA9: from_stack_1 = clspartida.RecordCount
  loc_A0DDAE: ILdRf var_C0
  loc_A0DDB1: CStrI4
  loc_A0DDB3: FStStrNoPop var_94
  loc_A0DDB6: LitStr " partidas encontradas"
  loc_A0DDB9: ConcatStr
  loc_A0DDBA: FStStrNoPop var_98
  loc_A0DDBD: FLdPr Me
  loc_A0DDC0: VCallAd Control_ID_CodiPartLbl
  loc_A0DDC3: FStAdFunc var_90
  loc_A0DDC6: FLdPr var_90
  loc_A0DDC9: Me.Caption = from_stack_1
  loc_A0DDCE: FFreeStr var_94 = ""
  loc_A0DDD5: FFree1Ad var_90
  loc_A0DDD8: LitNothing
  loc_A0DDDA: FStAd var_8C 
  loc_A0DDDE: ExitProcHresult
End Sub

Private Sub PlazoMsk_UnknownEvent_0 '94D490
  'Data Table: 4AA380
  loc_94D47C: FLdPr Me
  loc_94D47F: VCallAd Control_ID_PlazoMsk
  loc_94D482: CVarAd
  loc_94D486: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D48B: FFree1Var var_94 = ""
  loc_94D48E: ExitProcHresult
End Sub

Private Sub PlazoMsk_UnknownEvent_8 '9A7C60
  'Data Table: 4AA380
  loc_9A7BE4: FLdPr Me
  loc_9A7BE7: VCallAd Control_ID_PlazoMsk
  loc_9A7BEA: FStAdFunc var_88
  loc_9A7BED: FLdPr var_88
  loc_9A7BF0: LateIdLdVar var_98 DispID_0 0
  loc_9A7BF7: PopAd
  loc_9A7BF9: LitI2_Byte 0
  loc_9A7BFB: LitI2_Byte 0
  loc_9A7BFD: FLdRfVar var_98
  loc_9A7C00: CStrVarTmp
  loc_9A7C01: FStStrNoPop var_9C
  loc_9A7C04: LitStr "Plazo"
  loc_9A7C07: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A7C0C: FStStrNoPop var_A0
  loc_9A7C0F: FLdPr Me
  loc_9A7C12: MemStStrCopy
  loc_9A7C16: FFreeStr var_9C = ""
  loc_9A7C1D: FFree1Ad var_88
  loc_9A7C20: FFree1Var var_98 = ""
  loc_9A7C23: FLdPr Me
  loc_9A7C26: VCallAd Control_ID_PlazoMsk
  loc_9A7C29: FStAdFunc var_AC
  loc_9A7C2C: LitNothing
  loc_9A7C2E: CastAd
  loc_9A7C31: FStAdFunc var_A8
  loc_9A7C34: FLdRfVar var_A8
  loc_9A7C37: FLdZeroAd var_AC
  loc_9A7C3A: FStAdFuncNoPop
  loc_9A7C3D: CastAd
  loc_9A7C40: FStAdFunc var_A4
  loc_9A7C43: FLdRfVar var_A4
  loc_9A7C46: FLdPr Me
  loc_9A7C49: MemLdRfVar from_stack_1.global_100
  loc_9A7C4C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A7C51: IStI2 Cancel
  loc_9A7C54: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A7C5F: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '966354
  'Data Table: 4AA380
  loc_96633C: ILdRf Me
  loc_96633F: CastAd
  loc_966342: FStAdFunc var_88
  loc_966345: FLdRfVar var_88
  loc_966348: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_96634D: FFree1Ad var_88
  loc_966350: ExitProcHresult
  loc_966351: ImpAdStFPR4 MemVar_4AA8F8
End Sub

Private Sub cmdCalDesde_Click() '98436C
  'Data Table: 4AA380
  loc_984330: LitVar_Missing var_A4
  loc_984333: PopAdLdVar
  loc_984334: LitVarI4
  loc_98433C: PopAdLdVar
  loc_98433D: ImpAdLdRf MemVar_C3D9A8
  loc_984340: NewIfNullPr frmCalendario
  loc_984343: frmCalendario.Show from_stack_1, from_stack_2
  loc_984348: ImpAdLdRf MemVar_C3D038
  loc_98434B: CDargRef
  loc_98434F: FLdPr Me
  loc_984352: VCallAd Control_ID_mskDesde
  loc_984355: FStAdFunc var_A8
  loc_984358: FLdPr var_A8
  loc_98435B: LateIdSt
  loc_984360: FFree1Ad var_A8
  loc_984363: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_984368: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '9843DC
  'Data Table: 4AA380
  loc_9843A0: LitVar_Missing var_A4
  loc_9843A3: PopAdLdVar
  loc_9843A4: LitVarI4
  loc_9843AC: PopAdLdVar
  loc_9843AD: ImpAdLdRf MemVar_C3D9A8
  loc_9843B0: NewIfNullPr frmCalendario
  loc_9843B3: frmCalendario.Show from_stack_1, from_stack_2
  loc_9843B8: ImpAdLdRf MemVar_C3D038
  loc_9843BB: CDargRef
  loc_9843BF: FLdPr Me
  loc_9843C2: VCallAd Control_ID_mskHasta
  loc_9843C5: FStAdFunc var_A8
  loc_9843C8: FLdPr var_A8
  loc_9843CB: LateIdSt
  loc_9843D0: FFree1Ad var_A8
  loc_9843D3: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9843D8: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D2D5C
  'Data Table: 4AA380
  loc_9D2C74: FLdRfVar var_8C
  loc_9D2C77: FLdPr Me
  loc_9D2C7A: VCallAd Control_ID_cboPeriodo
  loc_9D2C7D: FStAdFunc var_88
  loc_9D2C80: FLdPr var_88
  loc_9D2C83:  = Me.Text
  loc_9D2C88: LitI2_Byte 1
  loc_9D2C8A: LitI2_Byte 1
  loc_9D2C8C: ILdRf var_8C
  loc_9D2C8F: CI2Str
  loc_9D2C91: FLdRfVar var_9C
  loc_9D2C94: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2C99: FLdRfVar var_9C
  loc_9D2C9C: CStrVarTmp
  loc_9D2C9D: CVarStr var_AC
  loc_9D2CA0: PopAdLdVar
  loc_9D2CA1: FLdPr Me
  loc_9D2CA4: VCallAd Control_ID_mskDesde
  loc_9D2CA7: FStAdFunc var_C0
  loc_9D2CAA: FLdPr var_C0
  loc_9D2CAD: LateIdSt
  loc_9D2CB2: FFree1Str var_8C
  loc_9D2CB5: FFreeAd var_88 = ""
  loc_9D2CBC: FFreeVar var_9C = ""
  loc_9D2CC3: FLdRfVar var_8C
  loc_9D2CC6: FLdPr Me
  loc_9D2CC9: VCallAd Control_ID_cboPeriodo
  loc_9D2CCC: FStAdFunc var_88
  loc_9D2CCF: FLdPr var_88
  loc_9D2CD2:  = Me.Text
  loc_9D2CD7: ILdRf var_8C
  loc_9D2CDA: CI2Str
  loc_9D2CDC: ImpAdLdI2 MemVar_C3D064
  loc_9D2CDF: LtI2
  loc_9D2CE0: FFree1Str var_8C
  loc_9D2CE3: FFree1Ad var_88
  loc_9D2CE6: BranchF loc_9D2D3B
  loc_9D2CE9: FLdRfVar var_8C
  loc_9D2CEC: FLdPr Me
  loc_9D2CEF: VCallAd Control_ID_cboPeriodo
  loc_9D2CF2: FStAdFunc var_88
  loc_9D2CF5: FLdPr var_88
  loc_9D2CF8:  = Me.Text
  loc_9D2CFD: LitI2_Byte &H1F
  loc_9D2CFF: LitI2_Byte &HC
  loc_9D2D01: ILdRf var_8C
  loc_9D2D04: CI2Str
  loc_9D2D06: FLdRfVar var_9C
  loc_9D2D09: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2D0E: FLdRfVar var_9C
  loc_9D2D11: CStrVarTmp
  loc_9D2D12: CVarStr var_AC
  loc_9D2D15: PopAdLdVar
  loc_9D2D16: FLdPr Me
  loc_9D2D19: VCallAd Control_ID_mskHasta
  loc_9D2D1C: FStAdFunc var_C0
  loc_9D2D1F: FLdPr var_C0
  loc_9D2D22: LateIdSt
  loc_9D2D27: FFree1Str var_8C
  loc_9D2D2A: FFreeAd var_88 = ""
  loc_9D2D31: FFreeVar var_9C = ""
  loc_9D2D38: Branch loc_9D2D5B
  loc_9D2D3B: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D2D3E: CStrDate
  loc_9D2D40: CVarStr var_9C
  loc_9D2D43: PopAdLdVar
  loc_9D2D44: FLdPr Me
  loc_9D2D47: VCallAd Control_ID_mskHasta
  loc_9D2D4A: FStAdFunc var_88
  loc_9D2D4D: FLdPr var_88
  loc_9D2D50: LateIdSt
  loc_9D2D55: FFree1Ad var_88
  loc_9D2D58: FFree1Var var_9C = ""
  loc_9D2D5B: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98C674
  'Data Table: 4AA380
  loc_98C63C: FLdPr Me
  loc_98C63F: VCallAd Control_ID_statusBar
  loc_98C642: FStAdFunc var_88
  loc_98C645: FLdPr var_88
  loc_98C648: LateIdLdVar var_98 DispID_1 0
  loc_98C64F: CStrVarTmp
  loc_98C650: CVarStr var_A8
  loc_98C653: PopAdLdVar
  loc_98C654: FLdPr Me
  loc_98C657: VCallAd Control_ID_statusBar
  loc_98C65A: FStAdFunc var_BC
  loc_98C65D: FLdPr var_BC
  loc_98C660: LateIdSt
  loc_98C665: FFreeAd var_88 = ""
  loc_98C66C: FFreeVar var_98 = ""
  loc_98C673: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A9014
  'Data Table: 4AA380
  loc_9A8F80: LitI2_Byte 0
  loc_9A8F82: FLdPr Me
  loc_9A8F85: MemStI2 bGenerado
  loc_9A8F88: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A8F8D: ImpAdLdI2 MemVar_C3D064
  loc_9A8F90: CStrUI1
  loc_9A8F92: FStStrNoPop var_88
  loc_9A8F95: FLdPr Me
  loc_9A8F98: VCallAd Control_ID_cboPeriodo
  loc_9A8F9B: FStAdFunc var_8C
  loc_9A8F9E: FLdPr var_8C
  loc_9A8FA1: Me.Text = from_stack_1
  loc_9A8FA6: FFree1Str var_88
  loc_9A8FA9: FFree1Ad var_8C
  loc_9A8FAC: LitVarStr var_9C, vbNullString
  loc_9A8FB1: PopAdLdVar
  loc_9A8FB2: FLdPr Me
  loc_9A8FB5: VCallAd Control_ID_CodiPartMsk
  loc_9A8FB8: FStAdFunc var_8C
  loc_9A8FBB: FLdPr var_8C
  loc_9A8FBE: LateIdSt
  loc_9A8FC3: FFree1Ad var_8C
  loc_9A8FC6: LitStr vbNullString
  loc_9A8FC9: FLdPr Me
  loc_9A8FCC: VCallAd Control_ID_CodiPartLbl
  loc_9A8FCF: FStAdFunc var_8C
  loc_9A8FD2: FLdPr var_8C
  loc_9A8FD5: Me.Caption = from_stack_1
  loc_9A8FDA: FFree1Ad var_8C
  loc_9A8FDD: LitVarStr var_9C, "10"
  loc_9A8FE2: PopAdLdVar
  loc_9A8FE3: FLdPr Me
  loc_9A8FE6: VCallAd Control_ID_PlazoMsk
  loc_9A8FE9: FStAdFunc var_8C
  loc_9A8FEC: FLdPr var_8C
  loc_9A8FEF: LateIdSt
  loc_9A8FF4: FFree1Ad var_8C
  loc_9A8FF7: Call HabilitarCriterio()
  loc_9A8FFC: ILdRf Me
  loc_9A8FFF: CastAd
  loc_9A9002: FStAdFunc var_8C
  loc_9A9005: FLdRfVar var_8C
  loc_9A9008: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A900D: FFree1Ad var_8C
  loc_9A9010: ExitProcHresult
  loc_9A9011: NeCyR8
End Sub

Private Sub cmdPdf_Click() '9663A0
  'Data Table: 4AA380
  loc_966388: LitI2_Byte 0
  loc_96638A: ILdRf Me
  loc_96638D: CastAd
  loc_966390: FStAdFunc var_88
  loc_966393: FLdRfVar var_88
  loc_966396: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96639B: FFree1Ad var_88
  loc_96639E: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '950730
  'Data Table: 4AA380
  loc_95071C: FLdPr Me
  loc_95071F: VCallAd Control_ID_mskDesde
  loc_950722: CVarAd
  loc_950726: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95072B: FFree1Var var_94 = ""
  loc_95072E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9AC96C
  'Data Table: 4AA380
  loc_9AC8DC: FLdPr Me
  loc_9AC8DF: VCallAd Control_ID_mskDesde
  loc_9AC8E2: FStAdFunc var_88
  loc_9AC8E5: FLdPr var_88
  loc_9AC8E8: LateIdLdVar var_98 DispID_15 0
  loc_9AC8EF: PopAd
  loc_9AC8F1: LitI2_Byte &HFF
  loc_9AC8F3: PopTmpLdAd2 var_A2
  loc_9AC8F6: LitNothing
  loc_9AC8F8: CastAd
  loc_9AC8FB: FStAdFunc var_A0
  loc_9AC8FE: FLdRfVar var_A0
  loc_9AC901: LitStr "01/01/2018"
  loc_9AC904: LitI2_Byte 0
  loc_9AC906: LitI2_Byte 0
  loc_9AC908: FLdRfVar var_98
  loc_9AC90B: CStrVarTmp
  loc_9AC90C: FStStrNoPop var_9C
  loc_9AC90F: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AC914: FStStrNoPop var_A8
  loc_9AC917: FLdPr Me
  loc_9AC91A: MemStStrCopy
  loc_9AC91E: FFreeStr var_9C = ""
  loc_9AC925: FFreeAd var_88 = ""
  loc_9AC92C: FFree1Var var_98 = ""
  loc_9AC92F: FLdPr Me
  loc_9AC932: VCallAd Control_ID_mskDesde
  loc_9AC935: FStAdFunc var_B0
  loc_9AC938: LitNothing
  loc_9AC93A: CastAd
  loc_9AC93D: FStAdFunc var_AC
  loc_9AC940: FLdRfVar var_AC
  loc_9AC943: FLdZeroAd var_B0
  loc_9AC946: FStAdFuncNoPop
  loc_9AC949: CastAd
  loc_9AC94C: FStAdFunc var_A0
  loc_9AC94F: FLdRfVar var_A0
  loc_9AC952: FLdPr Me
  loc_9AC955: MemLdRfVar from_stack_1.global_100
  loc_9AC958: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AC95D: IStI2 arg_C
  loc_9AC960: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AC96B: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '9DE3C4
  'Data Table: 4AA380
  loc_9DE2DC: FLdPr Me
  loc_9DE2DF: VCallAd Control_ID_mskDesde
  loc_9DE2E2: FStAdFunc var_88
  loc_9DE2E5: FLdPr var_88
  loc_9DE2E8: LateIdLdVar var_98 DispID_15 0
  loc_9DE2EF: CStrVarTmp
  loc_9DE2F0: CVarStr var_A8
  loc_9DE2F3: FLdRfVar var_B8
  loc_9DE2F6: ImpAdCallFPR4  = Day()
  loc_9DE2FB: FLdRfVar var_B8
  loc_9DE2FE: LitVarI2 var_C8, 1
  loc_9DE303: HardType
  loc_9DE304: EqVarBool
  loc_9DE306: FFree1Ad var_88
  loc_9DE309: FFreeVar var_98 = "": var_A8 = ""
  loc_9DE312: BranchF loc_9DE3AE
  loc_9DE315: FLdPr Me
  loc_9DE318: VCallAd Control_ID_mskDesde
  loc_9DE31B: FStAdFunc var_88
  loc_9DE31E: FLdPr var_88
  loc_9DE321: LateIdLdVar var_98 DispID_15 0
  loc_9DE328: CStrVarTmp
  loc_9DE329: CVarStr var_A8
  loc_9DE32C: FLdRfVar var_B8
  loc_9DE32F: ImpAdCallFPR4  = Year()
  loc_9DE334: FLdPr Me
  loc_9DE337: VCallAd Control_ID_mskDesde
  loc_9DE33A: FStAdFunc var_DC
  loc_9DE33D: FLdPr var_DC
  loc_9DE340: LateIdLdVar var_D8 DispID_15 0
  loc_9DE347: CStrVarTmp
  loc_9DE348: CVarStr var_EC
  loc_9DE34B: FLdRfVar var_FC
  loc_9DE34E: ImpAdCallFPR4  = Month()
  loc_9DE353: LitI2_Byte 1
  loc_9DE355: FLdRfVar var_FC
  loc_9DE358: LitVarI2 var_C8, 1
  loc_9DE35D: AddVar var_10C
  loc_9DE361: CI2Var
  loc_9DE362: FLdRfVar var_B8
  loc_9DE365: CI2Var
  loc_9DE366: FLdRfVar var_11C
  loc_9DE369: ImpAdCallFPR4  = DateSerial(, , )
  loc_9DE36E: FLdRfVar var_11C
  loc_9DE371: LitVarI2 var_12C, 1
  loc_9DE376: SubVar var_13C
  loc_9DE37A: CStrVarTmp
  loc_9DE37B: CVarStr var_14C
  loc_9DE37E: PopAdLdVar
  loc_9DE37F: FLdPr Me
  loc_9DE382: VCallAd Control_ID_mskHasta
  loc_9DE385: FStAdFunc var_160
  loc_9DE388: FLdPr var_160
  loc_9DE38B: LateIdSt
  loc_9DE390: FFreeAd var_88 = "": var_DC = ""
  loc_9DE399: FFreeVar var_98 = "": var_A8 = "": var_D8 = "": var_EC = "": var_FC = "": var_B8 = "": var_10C = "": var_11C = ""
  loc_9DE3AE: FLdPr Me
  loc_9DE3B1: VCallAd Control_ID_mskHasta
  loc_9DE3B4: CVarAd
  loc_9DE3B8: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9DE3BD: FFree1Var var_98 = ""
  loc_9DE3C0: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9AD808
  'Data Table: 4AA380
  loc_9AD778: FLdPr Me
  loc_9AD77B: VCallAd Control_ID_mskHasta
  loc_9AD77E: FStAdFunc var_88
  loc_9AD781: FLdPr var_88
  loc_9AD784: LateIdLdVar var_98 DispID_15 0
  loc_9AD78B: PopAd
  loc_9AD78D: LitI2_Byte &HFF
  loc_9AD78F: PopTmpLdAd2 var_A2
  loc_9AD792: LitNothing
  loc_9AD794: CastAd
  loc_9AD797: FStAdFunc var_A0
  loc_9AD79A: FLdRfVar var_A0
  loc_9AD79D: LitStr "01/01/2018"
  loc_9AD7A0: LitI2_Byte 0
  loc_9AD7A2: LitI2_Byte 0
  loc_9AD7A4: FLdRfVar var_98
  loc_9AD7A7: CStrVarTmp
  loc_9AD7A8: FStStrNoPop var_9C
  loc_9AD7AB: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AD7B0: FStStrNoPop var_A8
  loc_9AD7B3: FLdPr Me
  loc_9AD7B6: MemStStrCopy
  loc_9AD7BA: FFreeStr var_9C = ""
  loc_9AD7C1: FFreeAd var_88 = ""
  loc_9AD7C8: FFree1Var var_98 = ""
  loc_9AD7CB: FLdPr Me
  loc_9AD7CE: VCallAd Control_ID_mskHasta
  loc_9AD7D1: FStAdFunc var_B0
  loc_9AD7D4: LitNothing
  loc_9AD7D6: CastAd
  loc_9AD7D9: FStAdFunc var_AC
  loc_9AD7DC: FLdRfVar var_AC
  loc_9AD7DF: FLdZeroAd var_B0
  loc_9AD7E2: FStAdFuncNoPop
  loc_9AD7E5: CastAd
  loc_9AD7E8: FStAdFunc var_A0
  loc_9AD7EB: FLdRfVar var_A0
  loc_9AD7EE: FLdPr Me
  loc_9AD7F1: MemLdRfVar from_stack_1.global_100
  loc_9AD7F4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AD7F9: IStI2 arg_C
  loc_9AD7FC: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AD807: ExitProcHresult
End Function

Private Sub cmdPrevia_Click() '966308
  'Data Table: 4AA380
  loc_9662F0: ILdRf Me
  loc_9662F3: CastAd
  loc_9662F6: FStAdFunc var_88
  loc_9662F9: FLdRfVar var_88
  loc_9662FC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_966301: FFree1Ad var_88
  loc_966304: ExitProcHresult
  loc_966305: FFreeAd var_FFFFFFF8 = ""
End Sub

Public Function bGeneradoGet() '4AB734
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4AB743
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9BD864
  'Data Table: 4AA380
  loc_9BD7C0: LitI4 0
  loc_9BD7C5: LitI4 7
  loc_9BD7CA: FLdRfVar var_88
  loc_9BD7CD: Redim
  loc_9BD7D7: FLdPr Me
  loc_9BD7DA: VCallAd Control_ID_cboPeriodo
  loc_9BD7DD: CVarAd
  loc_9BD7E1: ParmAry1St
  loc_9BD7E7: FLdPr Me
  loc_9BD7EA: VCallAd Control_ID_mskDesde
  loc_9BD7ED: CVarAd
  loc_9BD7F1: ParmAry1St
  loc_9BD7F7: FLdPr Me
  loc_9BD7FA: VCallAd Control_ID_cmdCalDesde
  loc_9BD7FD: CVarAd
  loc_9BD801: ParmAry1St
  loc_9BD807: FLdPr Me
  loc_9BD80A: VCallAd Control_ID_mskHasta
  loc_9BD80D: CVarAd
  loc_9BD811: ParmAry1St
  loc_9BD817: FLdPr Me
  loc_9BD81A: VCallAd Control_ID_cmdCalHasta
  loc_9BD81D: CVarAd
  loc_9BD821: ParmAry1St
  loc_9BD827: FLdPr Me
  loc_9BD82A: VCallAd Control_ID_CodiPartMsk
  loc_9BD82D: CVarAd
  loc_9BD831: ParmAry1St
  loc_9BD837: FLdPr Me
  loc_9BD83A: VCallAd Control_ID_cmdCodiPart
  loc_9BD83D: CVarAd
  loc_9BD841: ParmAry1St
  loc_9BD847: FLdPr Me
  loc_9BD84A: VCallAd Control_ID_PlazoMsk
  loc_9BD84D: CVarAd
  loc_9BD851: ParmAry1St
  loc_9BD857: FLdRfVar var_88
  loc_9BD85A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9BD85F: FLdRfVar var_88
  loc_9BD862: Erase
  loc_9BD863: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AED018
  'Data Table: 4AA380
  loc_AEC940: FLdPr Me
  loc_AEC943: MemLdI2 bGenerado
  loc_AEC946: BranchF loc_AEC94A
  loc_AEC949: ExitProcHresult
  loc_AEC94A: LitVarStr var_98, "Generando reporte..."
  loc_AEC94F: PopAdLdVar
  loc_AEC950: FLdPr Me
  loc_AEC953: VCallAd Control_ID_statusBar
  loc_AEC956: FStAdFunc var_AC
  loc_AEC959: FLdPr var_AC
  loc_AEC95C: LateIdSt
  loc_AEC961: FFree1Ad var_AC
  loc_AEC964: LitI4 &HB
  loc_AEC969: CI2I4
  loc_AEC96A: FLdPr Me
  loc_AEC96D: Me.MousePointer = from_stack_1
  loc_AEC972: LitI2_Byte 0
  loc_AEC974: PopTmpLdAd2 var_AE
  loc_AEC977: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_AEC97C: LitI2_Byte 0
  loc_AEC97E: PopTmpLdAd2 var_AE
  loc_AEC981: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AEC986: LitI2_Byte 0
  loc_AEC988: PopTmpLdAd2 var_AE
  loc_AEC98B: Call CodiPartMsk_UnknownEvent_8()
  loc_AEC990: LitI2_Byte 0
  loc_AEC992: PopTmpLdAd2 var_AE
  loc_AEC995: Call PlazoMsk_UnknownEvent_8()
  loc_AEC99A: FLdPr Me
  loc_AEC99D: VCallAd Control_ID_PlazoMsk
  loc_AEC9A0: FStAdFunc var_AC
  loc_AEC9A3: FLdPr var_AC
  loc_AEC9A6: LateIdLdVar var_C0 DispID_0 0
  loc_AEC9AD: CStrVarTmp
  loc_AEC9AE: FStStrNoPop var_C4
  loc_AEC9B1: CI2Str
  loc_AEC9B3: FLdPr Me
  loc_AEC9B6: MemStI2 global_104
  loc_AEC9B9: FFree1Str var_C4
  loc_AEC9BC: FFree1Ad var_AC
  loc_AEC9BF: FFree1Var var_C0 = ""
  loc_AEC9C2: FLdPr Me
  loc_AEC9C5: VCallAd Control_ID_CodiPartMsk
  loc_AEC9C8: FStAdFunc var_AC
  loc_AEC9CB: FLdPr var_AC
  loc_AEC9CE: LateIdLdVar var_C0 DispID_22 0
  loc_AEC9D5: CStrVarTmp
  loc_AEC9D6: FStStrNoPop var_C4
  loc_AEC9D9: LitStr vbNullString
  loc_AEC9DC: NeStr
  loc_AEC9DE: FFree1Str var_C4
  loc_AEC9E1: FFree1Ad var_AC
  loc_AEC9E4: FFree1Var var_C0 = ""
  loc_AEC9E7: BranchF loc_AECA1C
  loc_AEC9EA: LitStr " AND i.CodiPart LIKE '"
  loc_AEC9ED: FLdPr Me
  loc_AEC9F0: VCallAd Control_ID_CodiPartMsk
  loc_AEC9F3: FStAdFunc var_AC
  loc_AEC9F6: FLdPr var_AC
  loc_AEC9F9: LateIdLdVar var_C0 DispID_22 0
  loc_AECA00: CStrVarTmp
  loc_AECA01: FStStrNoPop var_C4
  loc_AECA04: ConcatStr
  loc_AECA05: FStStrNoPop var_C8
  loc_AECA08: LitStr Chr(37) & "'"
  loc_AECA0B: ConcatStr
  loc_AECA0C: FStStr var_88
  loc_AECA0F: FFreeStr var_C4 = ""
  loc_AECA16: FFree1Ad var_AC
  loc_AECA19: FFree1Var var_C0 = ""
  loc_AECA1C: FLdPr Me
  loc_AECA1F: MemLdRfVar from_stack_1.global_56
  loc_AECA22: NewIfNullAd
  loc_AECA25: FStAd var_CC 
  loc_AECA29: FLdPr Me
  loc_AECA2C: VCallAd Control_ID_mskDesde
  loc_AECA2F: FStAdFunc var_E8
  loc_AECA32: FLdPr var_E8
  loc_AECA35: LateIdLdVar var_C0 DispID_15 0
  loc_AECA3C: PopAd
  loc_AECA3E: FLdPr Me
  loc_AECA41: VCallAd Control_ID_mskHasta
  loc_AECA44: FStAdFunc var_118
  loc_AECA47: FLdPr var_118
  loc_AECA4A: LateIdLdVar var_128 DispID_15 0
  loc_AECA51: PopAd
  loc_AECA53: LitStr "SELECT r.CodiOrco, r.CodiRece, FechRece, o.NumeOrpa, CAST(IFNULL(FechOrpa,Curdate()) AS DATE) AS FechOrpa, Datediff(IFNULL(FechOrpa,Curdate()),FechRece) AS Dias, r.ExpeImpu"
  loc_AECA56: LitStr " FROM recepcion r"
  loc_AECA59: ConcatStr
  loc_AECA5A: FStStrNoPop var_C4
  loc_AECA5D: LitStr " INNER JOIN imputacion i ON i.periinfo = r.periinfo AND i.codiorco = r.codiorco AND i.CodiRece = r.codirece"
  loc_AECA60: ConcatStr
  loc_AECA61: FStStrNoPop var_C8
  loc_AECA64: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = i.PeriInfo AND o.NumeOrpa = i.NumeOrpa AND o.FeanOrpa IS NULL"
  loc_AECA67: ConcatStr
  loc_AECA68: FStStrNoPop var_D0
  loc_AECA6B: LitStr " WHERE r.PeriInfo = "
  loc_AECA6E: ConcatStr
  loc_AECA6F: FStStrNoPop var_D8
  loc_AECA72: FLdRfVar var_D4
  loc_AECA75: FLdPr Me
  loc_AECA78: VCallAd Control_ID_cboPeriodo
  loc_AECA7B: FStAdFunc var_AC
  loc_AECA7E: FLdPr var_AC
  loc_AECA81:  = Me.Text
  loc_AECA86: ILdRf var_D4
  loc_AECA89: ConcatStr
  loc_AECA8A: FStStrNoPop var_DC
  loc_AECA8D: LitStr " AND FeanRece IS NULL"
  loc_AECA90: ConcatStr
  loc_AECA91: FStStrNoPop var_E0
  loc_AECA94: ILdRf var_88
  loc_AECA97: ConcatStr
  loc_AECA98: FStStrNoPop var_E4
  loc_AECA9B: LitStr " AND FechRece BETWEEN "
  loc_AECA9E: ConcatStr
  loc_AECA9F: FStStrNoPop var_10C
  loc_AECAA2: LitI4 1
  loc_AECAA7: LitI4 1
  loc_AECAAC: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_AECAB1: FStVarCopyObj var_108
  loc_AECAB4: FLdRfVar var_108
  loc_AECAB7: FLdRfVar var_C0
  loc_AECABA: CStrVarTmp
  loc_AECABB: CVarStr var_F8
  loc_AECABE: ImpAdCallI2 Format$(, )
  loc_AECAC3: FStStrNoPop var_110
  loc_AECAC6: ConcatStr
  loc_AECAC7: FStStrNoPop var_114
  loc_AECACA: LitStr " AND "
  loc_AECACD: ConcatStr
  loc_AECACE: FStStrNoPop var_14C
  loc_AECAD1: LitI4 1
  loc_AECAD6: LitI4 1
  loc_AECADB: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_AECAE0: FStVarCopyObj var_148
  loc_AECAE3: FLdRfVar var_148
  loc_AECAE6: FLdRfVar var_128
  loc_AECAE9: CStrVarTmp
  loc_AECAEA: CVarStr var_138
  loc_AECAED: ImpAdCallI2 Format$(, )
  loc_AECAF2: FStStrNoPop var_150
  loc_AECAF5: ConcatStr
  loc_AECAF6: FStStrNoPop var_154
  loc_AECAF9: LitStr " GROUP BY CodiOrco, CodiRece, NumeOrpa"
  loc_AECAFC: ConcatStr
  loc_AECAFD: FStStrNoPop var_158
  loc_AECB00: LitStr " ORDER BY CodiOrco, CodiRece, NumeOrpa;"
  loc_AECB03: ConcatStr
  loc_AECB04: FStStrNoPop var_15C
  loc_AECB07: FLdPr var_CC
  loc_AECB0A: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_AECB0F: FFreeStr var_C4 = "": var_C8 = "": var_D0 = "": var_D8 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_10C = "": var_110 = "": var_114 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_AECB32: FFreeAd var_AC = "": var_E8 = ""
  loc_AECB3B: FFreeVar var_C0 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = ""
  loc_AECB4A: FLdRfVar var_160
  loc_AECB4D: FLdPr var_CC
  loc_AECB50: from_stack_1 = clsrecepcion.RecordCount
  loc_AECB55: ILdRf var_160
  loc_AECB58: LitI4 0
  loc_AECB5D: EqI4
  loc_AECB5E: BranchF loc_AECB71
  loc_AECB61: LitI4 0
  loc_AECB66: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AECB69: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AECB6E: Branch loc_AECFEE
  loc_AECB71: LitI2_Byte 0
  loc_AECB73: CStrUI1
  loc_AECB75: FStStrNoPop var_C4
  loc_AECB78: FLdPr Me
  loc_AECB7B: MemStStrCopy
  loc_AECB7F: FFree1Str var_C4
  loc_AECB82: LitI2_Byte 0
  loc_AECB84: CStrUI1
  loc_AECB86: FStStrNoPop var_C4
  loc_AECB89: FLdPr Me
  loc_AECB8C: MemStStrCopy
  loc_AECB90: FFree1Str var_C4
  loc_AECB93: FLdRfVar var_160
  loc_AECB96: FLdPr var_CC
  loc_AECB99: from_stack_1 = clsrecepcion.RecordCount
  loc_AECB9E: ILdRf var_160
  loc_AECBA1: CStrI4
  loc_AECBA3: FStStrNoPop var_C4
  loc_AECBA6: FLdPr Me
  loc_AECBA9: MemStStrCopy
  loc_AECBAD: FFree1Str var_C4
  loc_AECBB0: LitI4 1
  loc_AECBB5: FLdRfVar var_160
  loc_AECBB8: FLdPr var_CC
  loc_AECBBB: from_stack_1 = clsrecepcion.RecordCount
  loc_AECBC0: ILdRf var_160
  loc_AECBC3: FLdPr Me
  loc_AECBC6: MemLdRfVar from_stack_1.global_80
  loc_AECBC9: Redim
  loc_AECBD3: FLdPr var_CC
  loc_AECBD6: Call clsrecepcion.MoveFirst()
  loc_AECBDB: LitI4 1
  loc_AECBE0: FLdPr Me
  loc_AECBE3: MemLdRfVar from_stack_1.global_96
  loc_AECBE6: FLdPr Me
  loc_AECBE9: MemLdStr global_80
  loc_AECBEC: LitI2_Byte 1
  loc_AECBEE: FnUBound
  loc_AECBF0: ForI4 var_168
  loc_AECBF6: FLdRfVar var_118
  loc_AECBF9: LitVarStr var_98, "CodiOrco"
  loc_AECBFE: PopAdLdVar
  loc_AECBFF: FLdRfVar var_E8
  loc_AECC02: FLdRfVar var_AC
  loc_AECC05: FLdPr var_CC
  loc_AECC08: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_AECC0D: FLdPr var_AC
  loc_AECC10:  = Me.Fields
  loc_AECC15: FLdPr var_E8
  loc_AECC18: from_stack_2 = Me.Item(from_stack_1)
  loc_AECC1D: LitI2_Byte 0
  loc_AECC1F: LitVar_Missing var_F8
  loc_AECC22: LitI2_Byte 0
  loc_AECC24: FLdZeroAd var_118
  loc_AECC27: CVarAd
  loc_AECC2B: PopAdLdVar
  loc_AECC2C: FLdPr Me
  loc_AECC2F: MemLdStr global_96
  loc_AECC32: FLdPr Me
  loc_AECC35: MemLdStr global_80
  loc_AECC38: AryLock
  loc_AECC3B: Ary1LdPr
  loc_AECC3C: MemLdRfVar from_stack_1.global_0
  loc_AECC3F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AECC44: AryUnlock
  loc_AECC47: FFreeAd var_AC = ""
  loc_AECC4E: FFreeVar var_C0 = ""
  loc_AECC55: FLdRfVar var_118
  loc_AECC58: LitVarStr var_98, "CodiRece"
  loc_AECC5D: PopAdLdVar
  loc_AECC5E: FLdRfVar var_E8
  loc_AECC61: FLdRfVar var_AC
  loc_AECC64: FLdPr var_CC
  loc_AECC67: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_AECC6C: FLdPr var_AC
  loc_AECC6F:  = Me.Fields
  loc_AECC74: FLdPr var_E8
  loc_AECC77: from_stack_2 = Me.Item(from_stack_1)
  loc_AECC7C: LitI2_Byte 0
  loc_AECC7E: LitVar_Missing var_F8
  loc_AECC81: LitI2_Byte 0
  loc_AECC83: FLdZeroAd var_118
  loc_AECC86: CVarAd
  loc_AECC8A: PopAdLdVar
  loc_AECC8B: FLdPr Me
  loc_AECC8E: MemLdStr global_96
  loc_AECC91: FLdPr Me
  loc_AECC94: MemLdStr global_80
  loc_AECC97: AryLock
  loc_AECC9A: Ary1LdPr
  loc_AECC9B: MemLdRfVar from_stack_1.global_4
  loc_AECC9E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AECCA3: AryUnlock
  loc_AECCA6: FFreeAd var_AC = ""
  loc_AECCAD: FFreeVar var_C0 = ""
  loc_AECCB4: FLdRfVar var_118
  loc_AECCB7: LitVarStr var_98, "FechRece"
  loc_AECCBC: PopAdLdVar
  loc_AECCBD: FLdRfVar var_E8
  loc_AECCC0: FLdRfVar var_AC
  loc_AECCC3: FLdPr var_CC
  loc_AECCC6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_AECCCB: FLdPr var_AC
  loc_AECCCE:  = Me.Fields
  loc_AECCD3: FLdPr var_E8
  loc_AECCD6: from_stack_2 = Me.Item(from_stack_1)
  loc_AECCDB: LitI2_Byte 0
  loc_AECCDD: LitVar_Missing var_F8
  loc_AECCE0: LitI2_Byte 0
  loc_AECCE2: FLdZeroAd var_118
  loc_AECCE5: CVarAd
  loc_AECCE9: PopAdLdVar
  loc_AECCEA: FLdPr Me
  loc_AECCED: MemLdStr global_96
  loc_AECCF0: FLdPr Me
  loc_AECCF3: MemLdStr global_80
  loc_AECCF6: AryLock
  loc_AECCF9: Ary1LdPr
  loc_AECCFA: MemLdRfVar from_stack_1.global_8
  loc_AECCFD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AECD02: AryUnlock
  loc_AECD05: FFreeAd var_AC = ""
  loc_AECD0C: FFreeVar var_C0 = ""
  loc_AECD13: FLdRfVar var_118
  loc_AECD16: LitVarStr var_98, "NumeOrpa"
  loc_AECD1B: PopAdLdVar
  loc_AECD1C: FLdRfVar var_E8
  loc_AECD1F: FLdRfVar var_AC
  loc_AECD22: FLdPr var_CC
  loc_AECD25: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_AECD2A: FLdPr var_AC
  loc_AECD2D:  = Me.Fields
  loc_AECD32: FLdPr var_E8
  loc_AECD35: from_stack_2 = Me.Item(from_stack_1)
  loc_AECD3A: LitI2_Byte 0
  loc_AECD3C: LitVar_Missing var_F8
  loc_AECD3F: LitI2_Byte 0
  loc_AECD41: FLdZeroAd var_118
  loc_AECD44: CVarAd
  loc_AECD48: PopAdLdVar
  loc_AECD49: FLdPr Me
  loc_AECD4C: MemLdStr global_96
  loc_AECD4F: FLdPr Me
  loc_AECD52: MemLdStr global_80
  loc_AECD55: AryLock
  loc_AECD58: Ary1LdPr
  loc_AECD59: MemLdRfVar from_stack_1.global_12
  loc_AECD5C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AECD61: AryUnlock
  loc_AECD64: FFreeAd var_AC = ""
  loc_AECD6B: FFreeVar var_C0 = ""
  loc_AECD72: FLdRfVar var_118
  loc_AECD75: LitVarStr var_98, "FechOrpa"
  loc_AECD7A: PopAdLdVar
  loc_AECD7B: FLdRfVar var_E8
  loc_AECD7E: FLdRfVar var_AC
  loc_AECD81: FLdPr var_CC
  loc_AECD84: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_AECD89: FLdPr var_AC
  loc_AECD8C:  = Me.Fields
  loc_AECD91: FLdPr var_E8
  loc_AECD94: from_stack_2 = Me.Item(from_stack_1)
  loc_AECD99: LitI2_Byte 0
  loc_AECD9B: LitVar_Missing var_F8
  loc_AECD9E: LitI2_Byte 0
  loc_AECDA0: FLdZeroAd var_118
  loc_AECDA3: CVarAd
  loc_AECDA7: PopAdLdVar
  loc_AECDA8: FLdPr Me
  loc_AECDAB: MemLdStr global_96
  loc_AECDAE: FLdPr Me
  loc_AECDB1: MemLdStr global_80
  loc_AECDB4: AryLock
  loc_AECDB7: Ary1LdPr
  loc_AECDB8: MemLdRfVar from_stack_1.global_16
  loc_AECDBB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AECDC0: AryUnlock
  loc_AECDC3: FFreeAd var_AC = ""
  loc_AECDCA: FFreeVar var_C0 = ""
  loc_AECDD1: FLdRfVar var_118
  loc_AECDD4: LitVarStr var_98, "ExpeImpu"
  loc_AECDD9: PopAdLdVar
  loc_AECDDA: FLdRfVar var_E8
  loc_AECDDD: FLdRfVar var_AC
  loc_AECDE0: FLdPr var_CC
  loc_AECDE3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_AECDE8: FLdPr var_AC
  loc_AECDEB:  = Me.Fields
  loc_AECDF0: FLdPr var_E8
  loc_AECDF3: from_stack_2 = Me.Item(from_stack_1)
  loc_AECDF8: LitI2_Byte 0
  loc_AECDFA: LitVar_Missing var_F8
  loc_AECDFD: LitI2_Byte 0
  loc_AECDFF: FLdZeroAd var_118
  loc_AECE02: CVarAd
  loc_AECE06: PopAdLdVar
  loc_AECE07: FLdPr Me
  loc_AECE0A: MemLdStr global_96
  loc_AECE0D: FLdPr Me
  loc_AECE10: MemLdStr global_80
  loc_AECE13: AryLock
  loc_AECE16: Ary1LdPr
  loc_AECE17: MemLdRfVar from_stack_1.global_20
  loc_AECE1A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AECE1F: AryUnlock
  loc_AECE22: FFreeAd var_AC = ""
  loc_AECE29: FFreeVar var_C0 = ""
  loc_AECE30: FLdRfVar var_118
  loc_AECE33: LitVarStr var_98, "Dias"
  loc_AECE38: PopAdLdVar
  loc_AECE39: FLdRfVar var_E8
  loc_AECE3C: FLdRfVar var_AC
  loc_AECE3F: FLdPr var_CC
  loc_AECE42: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_AECE47: FLdPr var_AC
  loc_AECE4A:  = Me.Fields
  loc_AECE4F: FLdPr var_E8
  loc_AECE52: from_stack_2 = Me.Item(from_stack_1)
  loc_AECE57: LitI2_Byte 0
  loc_AECE59: LitVar_Missing var_F8
  loc_AECE5C: LitI2_Byte 0
  loc_AECE5E: FLdZeroAd var_118
  loc_AECE61: CVarAd
  loc_AECE65: PopAdLdVar
  loc_AECE66: FLdPr Me
  loc_AECE69: MemLdStr global_96
  loc_AECE6C: FLdPr Me
  loc_AECE6F: MemLdStr global_80
  loc_AECE72: AryLock
  loc_AECE75: Ary1LdPr
  loc_AECE76: MemLdRfVar from_stack_1.global_24
  loc_AECE79: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AECE7E: AryUnlock
  loc_AECE81: FFreeAd var_AC = ""
  loc_AECE88: FFreeVar var_C0 = ""
  loc_AECE8F: FLdRfVar var_C0
  loc_AECE92: FLdRfVar var_118
  loc_AECE95: LitVarStr var_98, "Dias"
  loc_AECE9A: PopAdLdVar
  loc_AECE9B: FLdRfVar var_E8
  loc_AECE9E: FLdRfVar var_AC
  loc_AECEA1: FLdPr var_CC
  loc_AECEA4: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_AECEA9: FLdPr var_AC
  loc_AECEAC:  = Me.Fields
  loc_AECEB1: FLdPr var_E8
  loc_AECEB4: from_stack_2 = Me.Item(from_stack_1)
  loc_AECEB9: FLdPr var_118
  loc_AECEBC:  = Me.Value
  loc_AECEC1: FLdRfVar var_C0
  loc_AECEC4: FLdPr Me
  loc_AECEC7: MemLdI2 global_104
  loc_AECECA: CVarI2 var_A8
  loc_AECECD: HardType
  loc_AECECE: GtVar var_F8
  loc_AECED2: NotVar var_108
  loc_AECED6: CBoolVar
  loc_AECED8: FLdPr Me
  loc_AECEDB: MemLdStr global_96
  loc_AECEDE: FLdPr Me
  loc_AECEE1: MemLdStr global_80
  loc_AECEE4: Ary1LdPr
  loc_AECEE5: MemStI2 global_28
  loc_AECEE8: FFreeAd var_AC = "": var_E8 = ""
  loc_AECEF1: FFree1Var var_C0 = ""
  loc_AECEF4: FLdPr Me
  loc_AECEF7: MemLdStr global_96
  loc_AECEFA: FLdPr Me
  loc_AECEFD: MemLdStr global_80
  loc_AECF00: Ary1LdPr
  loc_AECF01: MemLdI2 global_28
  loc_AECF04: BranchF loc_AECF25
  loc_AECF07: FLdPr Me
  loc_AECF0A: MemLdStr global_84
  loc_AECF0D: CR8Str
  loc_AECF0F: LitI2_Byte 1
  loc_AECF11: CR8I2
  loc_AECF12: AddR8
  loc_AECF13: CStrR8
  loc_AECF15: FStStrNoPop var_C4
  loc_AECF18: FLdPr Me
  loc_AECF1B: MemStStrCopy
  loc_AECF1F: FFree1Str var_C4
  loc_AECF22: Branch loc_AECF40
  loc_AECF25: FLdPr Me
  loc_AECF28: MemLdStr global_88
  loc_AECF2B: CR8Str
  loc_AECF2D: LitI2_Byte 1
  loc_AECF2F: CR8I2
  loc_AECF30: AddR8
  loc_AECF31: CStrR8
  loc_AECF33: FStStrNoPop var_C4
  loc_AECF36: FLdPr Me
  loc_AECF39: MemStStrCopy
  loc_AECF3D: FFree1Str var_C4
  loc_AECF40: FLdPr var_CC
  loc_AECF43: Call clsrecepcion.MoveSiguiente()
  loc_AECF48: FLdPr Me
  loc_AECF4B: MemLdRfVar from_stack_1.global_96
  loc_AECF4E: NextI4 var_168, loc_AECBF6
  loc_AECF53: LitNothing
  loc_AECF55: FStAd var_CC 
  loc_AECF59: FLdPrThis
  loc_AECF5A: VCallAd Control_ID_Graf1
  loc_AECF5D: FStAdFunc var_170
  loc_AECF60: LitVarI2 var_98, 1
  loc_AECF65: PopAdLdVar
  loc_AECF66: FLdPr var_170
  loc_AECF69: LateIdSt
  loc_AECF6E: FLdPr Me
  loc_AECF71: MemLdRfVar from_stack_1.global_84
  loc_AECF74: CDargRef
  loc_AECF78: FLdPr var_170
  loc_AECF7B: LateIdSt
  loc_AECF80: LitVarI2 var_98, 2
  loc_AECF85: PopAdLdVar
  loc_AECF86: FLdPr var_170
  loc_AECF89: LateIdSt
  loc_AECF8E: FLdPr Me
  loc_AECF91: MemLdRfVar from_stack_1.global_88
  loc_AECF94: CDargRef
  loc_AECF98: FLdPr var_170
  loc_AECF9B: LateIdSt
  loc_AECFA0: FLdPr var_170
  loc_AECFA3: LateIdCall
  loc_AECFAB: LitNothing
  loc_AECFAD: FStAd var_170 
  loc_AECFB1: FLdPrThis
  loc_AECFB2: VCallAd Control_ID_Graf1
  loc_AECFB5: FStAdFunc var_118
  loc_AECFB8: FLdPr Me
  loc_AECFBB: VCallAd Control_ID_img1
  loc_AECFBE: FStAdFunc var_174
  loc_AECFC1: LitStr "graf1.bmp"
  loc_AECFC4: FLdZeroAd var_174
  loc_AECFC7: FStAdFunc var_E8
  loc_AECFCA: FLdRfVar var_E8
  loc_AECFCD: FLdZeroAd var_118
  loc_AECFD0: FStAdFunc var_AC
  loc_AECFD3: FLdRfVar var_AC
  loc_AECFD6: ImpAdCallFPR4 Proc_261_53_9C4984(, , )
  loc_AECFDB: FFreeAd var_AC = "": var_E8 = "": var_118 = ""
  loc_AECFE6: LitI2_Byte &HFF
  loc_AECFE8: FLdPr Me
  loc_AECFEB: MemStI2 bGenerado
  loc_AECFEE: LitI4 0
  loc_AECFF3: CI2I4
  loc_AECFF4: FLdPr Me
  loc_AECFF7: Me.MousePointer = from_stack_1
  loc_AECFFC: LitVarStr var_98, vbNullString
  loc_AED001: PopAdLdVar
  loc_AED002: FLdPr Me
  loc_AED005: VCallAd Control_ID_statusBar
  loc_AED008: FStAdFunc var_AC
  loc_AED00B: FLdPr var_AC
  loc_AED00E: LateIdSt
  loc_AED013: FFree1Ad var_AC
  loc_AED016: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'ABCEF0
  'Data Table: 4AA380
  loc_ABC944: FLdRfVar var_88
  loc_ABC947: LitI2_Byte 0
  loc_ABC949: LitI2_Byte &HFF
  loc_ABC94B: ImpAdLdI4 MemVar_C3D83C
  loc_ABC94E: FLdPr Me
  loc_ABC951: MemLdRfVar from_stack_1.global_60
  loc_ABC954: NewIfNullPr IFileSystem3
  loc_ABC957: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ABC95C: ILdRf var_88
  loc_ABC95F: FLdPr Me
  loc_ABC962: MemStVarAd
  loc_ABC966: FFree1Ad var_88
  loc_ABC969: Call Proc_215_25_AEE700()
  loc_ABC96E: LitI4 1
  loc_ABC973: FLdPr Me
  loc_ABC976: MemLdRfVar from_stack_1.global_96
  loc_ABC979: FLdPr Me
  loc_ABC97C: MemLdStr global_80
  loc_ABC97F: LitI2_Byte 1
  loc_ABC981: FnUBound
  loc_ABC983: ForI4 var_90
  loc_ABC989: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ABC98E: PopAdLdVar
  loc_ABC98F: FLdPr Me
  loc_ABC992: MemLdRfVar from_stack_1.global_64
  loc_ABC995: LdPrVar
  loc_ABC997: LateMemCall
  loc_ABC99D: FLdPr Me
  loc_ABC9A0: MemLdStr global_96
  loc_ABC9A3: FLdPr Me
  loc_ABC9A6: MemLdStr global_80
  loc_ABC9A9: AryLock
  loc_ABC9AC: Ary1LdRf
  loc_ABC9AD: FStR4 var_B8
  loc_ABC9B0: LitI4 0
  loc_ABC9B5: LitI4 0
  loc_ABC9BA: LitI2_Byte 0
  loc_ABC9BC: LitStr "right"
  loc_ABC9BF: FMemLdR4 var_B8(0)
  loc_ABC9C4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABC9C9: CVarStr var_C8
  loc_ABC9CC: PopAdLdVar
  loc_ABC9CD: FLdPr Me
  loc_ABC9D0: MemLdRfVar from_stack_1.global_64
  loc_ABC9D3: LdPrVar
  loc_ABC9D5: LateMemCall
  loc_ABC9DB: FFree1Var var_C8 = ""
  loc_ABC9DE: LitI4 0
  loc_ABC9E3: LitI4 0
  loc_ABC9E8: LitI2_Byte 0
  loc_ABC9EA: LitStr "right"
  loc_ABC9ED: FMemLdR4 var_B8(4)
  loc_ABC9F2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABC9F7: CVarStr var_C8
  loc_ABC9FA: PopAdLdVar
  loc_ABC9FB: FLdPr Me
  loc_ABC9FE: MemLdRfVar from_stack_1.global_64
  loc_ABCA01: LdPrVar
  loc_ABCA03: LateMemCall
  loc_ABCA09: FFree1Var var_C8 = ""
  loc_ABCA0C: LitI4 0
  loc_ABCA11: LitI4 0
  loc_ABCA16: LitI2_Byte 0
  loc_ABCA18: LitStr "center"
  loc_ABCA1B: FMemLdR4 var_B8(8)
  loc_ABCA20: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABCA25: CVarStr var_C8
  loc_ABCA28: PopAdLdVar
  loc_ABCA29: FLdPr Me
  loc_ABCA2C: MemLdRfVar from_stack_1.global_64
  loc_ABCA2F: LdPrVar
  loc_ABCA31: LateMemCall
  loc_ABCA37: FFree1Var var_C8 = ""
  loc_ABCA3A: LitI4 0
  loc_ABCA3F: LitI4 0
  loc_ABCA44: LitI2_Byte 0
  loc_ABCA46: LitStr "right"
  loc_ABCA49: FMemLdR4 var_B8(12)
  loc_ABCA4E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABCA53: CVarStr var_C8
  loc_ABCA56: PopAdLdVar
  loc_ABCA57: FLdPr Me
  loc_ABCA5A: MemLdRfVar from_stack_1.global_64
  loc_ABCA5D: LdPrVar
  loc_ABCA5F: LateMemCall
  loc_ABCA65: FFree1Var var_C8 = ""
  loc_ABCA68: LitI4 0
  loc_ABCA6D: LitI4 0
  loc_ABCA72: LitI2_Byte 0
  loc_ABCA74: LitStr "center"
  loc_ABCA77: FMemLdR4 var_B8(16)
  loc_ABCA7C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABCA81: CVarStr var_C8
  loc_ABCA84: PopAdLdVar
  loc_ABCA85: FLdPr Me
  loc_ABCA88: MemLdRfVar from_stack_1.global_64
  loc_ABCA8B: LdPrVar
  loc_ABCA8D: LateMemCall
  loc_ABCA93: FFree1Var var_C8 = ""
  loc_ABCA96: LitI4 0
  loc_ABCA9B: LitI4 0
  loc_ABCAA0: LitI2_Byte 0
  loc_ABCAA2: LitStr "left"
  loc_ABCAA5: FMemLdR4 var_B8(20)
  loc_ABCAAA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABCAAF: CVarStr var_C8
  loc_ABCAB2: PopAdLdVar
  loc_ABCAB3: FLdPr Me
  loc_ABCAB6: MemLdRfVar from_stack_1.global_64
  loc_ABCAB9: LdPrVar
  loc_ABCABB: LateMemCall
  loc_ABCAC1: FFree1Var var_C8 = ""
  loc_ABCAC4: LitI4 0
  loc_ABCAC9: LitI4 0
  loc_ABCACE: LitI2_Byte 0
  loc_ABCAD0: LitStr "right"
  loc_ABCAD3: FMemLdR4 var_B8(24)
  loc_ABCAD8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABCADD: CVarStr var_C8
  loc_ABCAE0: PopAdLdVar
  loc_ABCAE1: FLdPr Me
  loc_ABCAE4: MemLdRfVar from_stack_1.global_64
  loc_ABCAE7: LdPrVar
  loc_ABCAE9: LateMemCall
  loc_ABCAEF: FFree1Var var_C8 = ""
  loc_ABCAF2: LitVarStr var_108, "    <td class=""Tilde"" align=""center"">"
  loc_ABCAF7: LitVarStr var_D8, "<span style=""color:#FF0000"">&yacute;</span>"
  loc_ABCAFC: FStVarCopyObj var_E8
  loc_ABCAFF: FLdRfVar var_E8
  loc_ABCB02: LitVarStr var_B0, "&thorn;"
  loc_ABCB07: FStVarCopyObj var_C8
  loc_ABCB0A: FLdRfVar var_C8
  loc_ABCB0D: FMemLdRf 0
  loc_ABCB12: CVarRef
  loc_ABCB17: FLdRfVar var_F8
  loc_ABCB1A: ImpAdCallFPR4  = IIf(, , )
  loc_ABCB1F: FLdRfVar var_F8
  loc_ABCB22: ConcatVar var_118
  loc_ABCB26: LitVarStr var_128, "</td>"
  loc_ABCB2B: ConcatVar var_138
  loc_ABCB2F: PopAdLdVar
  loc_ABCB30: FLdPr Me
  loc_ABCB33: MemLdRfVar from_stack_1.global_64
  loc_ABCB36: LdPrVar
  loc_ABCB38: LateMemCall
  loc_ABCB3E: FFreeVar var_C8 = "": var_E8 = "": var_F8 = "": var_118 = ""
  loc_ABCB4B: LitI4 0
  loc_ABCB50: FStR4 var_B8
  loc_ABCB53: AryUnlock
  loc_ABCB56: LitVarStr var_A0, "     </tr>"
  loc_ABCB5B: PopAdLdVar
  loc_ABCB5C: FLdPr Me
  loc_ABCB5F: MemLdRfVar from_stack_1.global_64
  loc_ABCB62: LdPrVar
  loc_ABCB64: LateMemCall
  loc_ABCB6A: FLdPr Me
  loc_ABCB6D: MemLdRfVar from_stack_1.global_96
  loc_ABCB70: NextI4 var_90, loc_ABC989
  loc_ABCB75: LitVarStr var_A0, "</table>"
  loc_ABCB7A: PopAdLdVar
  loc_ABCB7B: FLdPr Me
  loc_ABCB7E: MemLdRfVar from_stack_1.global_64
  loc_ABCB81: LdPrVar
  loc_ABCB83: LateMemCall
  loc_ABCB89: LitVarStr var_A0, "<table align=""center"" border=""0"" class=""Normal"" cellpadding=""1"" cellspacing=""1"">"
  loc_ABCB8E: PopAdLdVar
  loc_ABCB8F: FLdPr Me
  loc_ABCB92: MemLdRfVar from_stack_1.global_64
  loc_ABCB95: LdPrVar
  loc_ABCB97: LateMemCall
  loc_ABCB9D: LitVarStr var_A0, " <tr valign=""middle"" align=""right"">"
  loc_ABCBA2: PopAdLdVar
  loc_ABCBA3: FLdPr Me
  loc_ABCBA6: MemLdRfVar from_stack_1.global_64
  loc_ABCBA9: LdPrVar
  loc_ABCBAB: LateMemCall
  loc_ABCBB1: LitVarStr var_A0, "   <td><table align=""left"" border""0"" cellpadding=""1"" cellspacing=""1"">"
  loc_ABCBB6: PopAdLdVar
  loc_ABCBB7: FLdPr Me
  loc_ABCBBA: MemLdRfVar from_stack_1.global_64
  loc_ABCBBD: LdPrVar
  loc_ABCBBF: LateMemCall
  loc_ABCBC5: LitVarStr var_A0, "    <tr valign=""top"" align=""left"">"
  loc_ABCBCA: PopAdLdVar
  loc_ABCBCB: FLdPr Me
  loc_ABCBCE: MemLdRfVar from_stack_1.global_64
  loc_ABCBD1: LdPrVar
  loc_ABCBD3: LateMemCall
  loc_ABCBD9: LitStr "      <td colspan=""3"">Plazo:&nbsp;"
  loc_ABCBDC: FLdPr Me
  loc_ABCBDF: MemLdI2 global_104
  loc_ABCBE2: CStrUI1
  loc_ABCBE4: FStStrNoPop var_14C
  loc_ABCBE7: ConcatStr
  loc_ABCBE8: FStStrNoPop var_150
  loc_ABCBEB: LitStr "&nbsp;d&iacute;as</td>"
  loc_ABCBEE: ConcatStr
  loc_ABCBEF: CVarStr var_C8
  loc_ABCBF2: PopAdLdVar
  loc_ABCBF3: FLdPr Me
  loc_ABCBF6: MemLdRfVar from_stack_1.global_64
  loc_ABCBF9: LdPrVar
  loc_ABCBFB: LateMemCall
  loc_ABCC01: FFreeStr var_14C = ""
  loc_ABCC08: FFree1Var var_C8 = ""
  loc_ABCC0B: LitVarStr var_A0, "    </tr>"
  loc_ABCC10: PopAdLdVar
  loc_ABCC11: FLdPr Me
  loc_ABCC14: MemLdRfVar from_stack_1.global_64
  loc_ABCC17: LdPrVar
  loc_ABCC19: LateMemCall
  loc_ABCC1F: LitVarStr var_A0, "    <tr valign=""top"">"
  loc_ABCC24: PopAdLdVar
  loc_ABCC25: FLdPr Me
  loc_ABCC28: MemLdRfVar from_stack_1.global_64
  loc_ABCC2B: LdPrVar
  loc_ABCC2D: LateMemCall
  loc_ABCC33: LitVarStr var_A0, "      <td colspan=""3""><hr></td>"
  loc_ABCC38: PopAdLdVar
  loc_ABCC39: FLdPr Me
  loc_ABCC3C: MemLdRfVar from_stack_1.global_64
  loc_ABCC3F: LdPrVar
  loc_ABCC41: LateMemCall
  loc_ABCC47: LitVarStr var_A0, "    </tr>"
  loc_ABCC4C: PopAdLdVar
  loc_ABCC4D: FLdPr Me
  loc_ABCC50: MemLdRfVar from_stack_1.global_64
  loc_ABCC53: LdPrVar
  loc_ABCC55: LateMemCall
  loc_ABCC5B: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_ABCC60: PopAdLdVar
  loc_ABCC61: FLdPr Me
  loc_ABCC64: MemLdRfVar from_stack_1.global_64
  loc_ABCC67: LdPrVar
  loc_ABCC69: LateMemCall
  loc_ABCC6F: LitVarStr var_A0, "      <td>Total antes del plazo:&nbsp;</td>"
  loc_ABCC74: PopAdLdVar
  loc_ABCC75: FLdPr Me
  loc_ABCC78: MemLdRfVar from_stack_1.global_64
  loc_ABCC7B: LdPrVar
  loc_ABCC7D: LateMemCall
  loc_ABCC83: LitStr "      <td>"
  loc_ABCC86: FLdPr Me
  loc_ABCC89: MemLdStr global_84
  loc_ABCC8C: ConcatStr
  loc_ABCC8D: FStStrNoPop var_14C
  loc_ABCC90: LitStr "</td>"
  loc_ABCC93: ConcatStr
  loc_ABCC94: CVarStr var_C8
  loc_ABCC97: PopAdLdVar
  loc_ABCC98: FLdPr Me
  loc_ABCC9B: MemLdRfVar from_stack_1.global_64
  loc_ABCC9E: LdPrVar
  loc_ABCCA0: LateMemCall
  loc_ABCCA6: FFree1Str var_14C
  loc_ABCCA9: FFree1Var var_C8 = ""
  loc_ABCCAC: LitStr "      <td>"
  loc_ABCCAF: LitI4 1
  loc_ABCCB4: LitI4 1
  loc_ABCCB9: LitVarStr var_B0, "(##0" & Chr(37) & ")"
  loc_ABCCBE: FStVarCopyObj var_E8
  loc_ABCCC1: FLdRfVar var_E8
  loc_ABCCC4: FLdPr Me
  loc_ABCCC7: MemLdStr global_84
  loc_ABCCCA: CI4Str
  loc_ABCCCB: CR8I4
  loc_ABCCCC: FLdPr Me
  loc_ABCCCF: MemLdStr global_92
  loc_ABCCD2: CI4Str
  loc_ABCCD3: CR8I4
  loc_ABCCD4: DivR8
  loc_ABCCD5: CVarR8
  loc_ABCCD9: ImpAdCallI2 Format$(, )
  loc_ABCCDE: FStStrNoPop var_14C
  loc_ABCCE1: ConcatStr
  loc_ABCCE2: FStStrNoPop var_150
  loc_ABCCE5: LitStr "</td>"
  loc_ABCCE8: ConcatStr
  loc_ABCCE9: CVarStr var_F8
  loc_ABCCEC: PopAdLdVar
  loc_ABCCED: FLdPr Me
  loc_ABCCF0: MemLdRfVar from_stack_1.global_64
  loc_ABCCF3: LdPrVar
  loc_ABCCF5: LateMemCall
  loc_ABCCFB: FFreeStr var_14C = ""
  loc_ABCD02: FFreeVar var_C8 = "": var_E8 = ""
  loc_ABCD0B: LitVarStr var_A0, "    </tr>"
  loc_ABCD10: PopAdLdVar
  loc_ABCD11: FLdPr Me
  loc_ABCD14: MemLdRfVar from_stack_1.global_64
  loc_ABCD17: LdPrVar
  loc_ABCD19: LateMemCall
  loc_ABCD1F: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_ABCD24: PopAdLdVar
  loc_ABCD25: FLdPr Me
  loc_ABCD28: MemLdRfVar from_stack_1.global_64
  loc_ABCD2B: LdPrVar
  loc_ABCD2D: LateMemCall
  loc_ABCD33: LitVarStr var_A0, "      <td>Total despu&eacute;s del plazo:&nbsp;</td>"
  loc_ABCD38: PopAdLdVar
  loc_ABCD39: FLdPr Me
  loc_ABCD3C: MemLdRfVar from_stack_1.global_64
  loc_ABCD3F: LdPrVar
  loc_ABCD41: LateMemCall
  loc_ABCD47: LitStr "      <td>"
  loc_ABCD4A: FLdPr Me
  loc_ABCD4D: MemLdStr global_88
  loc_ABCD50: ConcatStr
  loc_ABCD51: FStStrNoPop var_14C
  loc_ABCD54: LitStr "</td>"
  loc_ABCD57: ConcatStr
  loc_ABCD58: CVarStr var_C8
  loc_ABCD5B: PopAdLdVar
  loc_ABCD5C: FLdPr Me
  loc_ABCD5F: MemLdRfVar from_stack_1.global_64
  loc_ABCD62: LdPrVar
  loc_ABCD64: LateMemCall
  loc_ABCD6A: FFree1Str var_14C
  loc_ABCD6D: FFree1Var var_C8 = ""
  loc_ABCD70: LitStr "      <td>"
  loc_ABCD73: LitI4 1
  loc_ABCD78: LitI4 1
  loc_ABCD7D: LitVarStr var_B0, "(##0" & Chr(37) & ")"
  loc_ABCD82: FStVarCopyObj var_E8
  loc_ABCD85: FLdRfVar var_E8
  loc_ABCD88: FLdPr Me
  loc_ABCD8B: MemLdStr global_88
  loc_ABCD8E: CI4Str
  loc_ABCD8F: CR8I4
  loc_ABCD90: FLdPr Me
  loc_ABCD93: MemLdStr global_92
  loc_ABCD96: CI4Str
  loc_ABCD97: CR8I4
  loc_ABCD98: DivR8
  loc_ABCD99: CVarR8
  loc_ABCD9D: ImpAdCallI2 Format$(, )
  loc_ABCDA2: FStStrNoPop var_14C
  loc_ABCDA5: ConcatStr
  loc_ABCDA6: FStStrNoPop var_150
  loc_ABCDA9: LitStr "</td>"
  loc_ABCDAC: ConcatStr
  loc_ABCDAD: CVarStr var_F8
  loc_ABCDB0: PopAdLdVar
  loc_ABCDB1: FLdPr Me
  loc_ABCDB4: MemLdRfVar from_stack_1.global_64
  loc_ABCDB7: LdPrVar
  loc_ABCDB9: LateMemCall
  loc_ABCDBF: FFreeStr var_14C = ""
  loc_ABCDC6: FFreeVar var_C8 = "": var_E8 = ""
  loc_ABCDCF: LitVarStr var_A0, "    </tr>"
  loc_ABCDD4: PopAdLdVar
  loc_ABCDD5: FLdPr Me
  loc_ABCDD8: MemLdRfVar from_stack_1.global_64
  loc_ABCDDB: LdPrVar
  loc_ABCDDD: LateMemCall
  loc_ABCDE3: LitVarStr var_A0, "    <tr valign=""top"">"
  loc_ABCDE8: PopAdLdVar
  loc_ABCDE9: FLdPr Me
  loc_ABCDEC: MemLdRfVar from_stack_1.global_64
  loc_ABCDEF: LdPrVar
  loc_ABCDF1: LateMemCall
  loc_ABCDF7: LitVarStr var_A0, "      <td colspan=""2""><hr></td>"
  loc_ABCDFC: PopAdLdVar
  loc_ABCDFD: FLdPr Me
  loc_ABCE00: MemLdRfVar from_stack_1.global_64
  loc_ABCE03: LdPrVar
  loc_ABCE05: LateMemCall
  loc_ABCE0B: LitVarStr var_A0, "    </tr>"
  loc_ABCE10: PopAdLdVar
  loc_ABCE11: FLdPr Me
  loc_ABCE14: MemLdRfVar from_stack_1.global_64
  loc_ABCE17: LdPrVar
  loc_ABCE19: LateMemCall
  loc_ABCE1F: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_ABCE24: PopAdLdVar
  loc_ABCE25: FLdPr Me
  loc_ABCE28: MemLdRfVar from_stack_1.global_64
  loc_ABCE2B: LdPrVar
  loc_ABCE2D: LateMemCall
  loc_ABCE33: LitVarStr var_A0, "      <td>Total:&nbsp;</td>"
  loc_ABCE38: PopAdLdVar
  loc_ABCE39: FLdPr Me
  loc_ABCE3C: MemLdRfVar from_stack_1.global_64
  loc_ABCE3F: LdPrVar
  loc_ABCE41: LateMemCall
  loc_ABCE47: LitStr "      <td>"
  loc_ABCE4A: FLdPr Me
  loc_ABCE4D: MemLdStr global_92
  loc_ABCE50: ConcatStr
  loc_ABCE51: FStStrNoPop var_14C
  loc_ABCE54: LitStr "</td>"
  loc_ABCE57: ConcatStr
  loc_ABCE58: CVarStr var_C8
  loc_ABCE5B: PopAdLdVar
  loc_ABCE5C: FLdPr Me
  loc_ABCE5F: MemLdRfVar from_stack_1.global_64
  loc_ABCE62: LdPrVar
  loc_ABCE64: LateMemCall
  loc_ABCE6A: FFree1Str var_14C
  loc_ABCE6D: FFree1Var var_C8 = ""
  loc_ABCE70: LitVarStr var_A0, "    </tr>"
  loc_ABCE75: PopAdLdVar
  loc_ABCE76: FLdPr Me
  loc_ABCE79: MemLdRfVar from_stack_1.global_64
  loc_ABCE7C: LdPrVar
  loc_ABCE7E: LateMemCall
  loc_ABCE84: LitVarStr var_A0, "   </table></td>"
  loc_ABCE89: PopAdLdVar
  loc_ABCE8A: FLdPr Me
  loc_ABCE8D: MemLdRfVar from_stack_1.global_64
  loc_ABCE90: LdPrVar
  loc_ABCE92: LateMemCall
  loc_ABCE98: LitVarStr var_A0, "   <td><img src=""graf1.bmp""></td>"
  loc_ABCE9D: PopAdLdVar
  loc_ABCE9E: FLdPr Me
  loc_ABCEA1: MemLdRfVar from_stack_1.global_64
  loc_ABCEA4: LdPrVar
  loc_ABCEA6: LateMemCall
  loc_ABCEAC: LitVarStr var_A0, " </tr>"
  loc_ABCEB1: PopAdLdVar
  loc_ABCEB2: FLdPr Me
  loc_ABCEB5: MemLdRfVar from_stack_1.global_64
  loc_ABCEB8: LdPrVar
  loc_ABCEBA: LateMemCall
  loc_ABCEC0: LitVarStr var_A0, "</table>"
  loc_ABCEC5: PopAdLdVar
  loc_ABCEC6: FLdPr Me
  loc_ABCEC9: MemLdRfVar from_stack_1.global_64
  loc_ABCECC: LdPrVar
  loc_ABCECE: LateMemCall
  loc_ABCED4: Call Proc_215_26_972D6C()
  loc_ABCED9: FLdPr Me
  loc_ABCEDC: MemLdRfVar from_stack_1.global_64
  loc_ABCEDF: LdPrVar
  loc_ABCEE1: LateMemCall
  loc_ABCEE7: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ABCEEC: ExitProcHresult
  loc_ABCEED: DivR8
  loc_ABCEEE: IStDarg Me03
End Sub

Private Function Proc_215_25_AEE700() 'AEE700
  'Data Table: 4AA380
  loc_AEDFC4: LitVarStr var_94, "<html>"
  loc_AEDFC9: PopAdLdVar
  loc_AEDFCA: FLdPr Me
  loc_AEDFCD: MemLdRfVar from_stack_1.global_64
  loc_AEDFD0: LdPrVar
  loc_AEDFD2: LateMemCall
  loc_AEDFD8: LitVarStr var_94, "<head>"
  loc_AEDFDD: PopAdLdVar
  loc_AEDFDE: FLdPr Me
  loc_AEDFE1: MemLdRfVar from_stack_1.global_64
  loc_AEDFE4: LdPrVar
  loc_AEDFE6: LateMemCall
  loc_AEDFEC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AEDFF1: PopAdLdVar
  loc_AEDFF2: FLdPr Me
  loc_AEDFF5: MemLdRfVar from_stack_1.global_64
  loc_AEDFF8: LdPrVar
  loc_AEDFFA: LateMemCall
  loc_AEE000: LitStr "<title>"
  loc_AEE003: FLdRfVar var_A8
  loc_AEE006: FLdPr Me
  loc_AEE009:  = Me.Caption
  loc_AEE00E: ILdRf var_A8
  loc_AEE011: ConcatStr
  loc_AEE012: FStStrNoPop var_AC
  loc_AEE015: LitStr "</title>"
  loc_AEE018: ConcatStr
  loc_AEE019: CVarStr var_BC
  loc_AEE01C: PopAdLdVar
  loc_AEE01D: FLdPr Me
  loc_AEE020: MemLdRfVar from_stack_1.global_64
  loc_AEE023: LdPrVar
  loc_AEE025: LateMemCall
  loc_AEE02B: FFreeStr var_A8 = ""
  loc_AEE032: FFree1Var var_BC = ""
  loc_AEE035: LitVarStr var_94, "<style type=""text/css"">"
  loc_AEE03A: PopAdLdVar
  loc_AEE03B: FLdPr Me
  loc_AEE03E: MemLdRfVar from_stack_1.global_64
  loc_AEE041: LdPrVar
  loc_AEE043: LateMemCall
  loc_AEE049: LitVarStr var_94, ".Titulo1 {"
  loc_AEE04E: PopAdLdVar
  loc_AEE04F: FLdPr Me
  loc_AEE052: MemLdRfVar from_stack_1.global_64
  loc_AEE055: LdPrVar
  loc_AEE057: LateMemCall
  loc_AEE05D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AEE062: PopAdLdVar
  loc_AEE063: FLdPr Me
  loc_AEE066: MemLdRfVar from_stack_1.global_64
  loc_AEE069: LdPrVar
  loc_AEE06B: LateMemCall
  loc_AEE071: LitVarStr var_94, " font-size: 18px;"
  loc_AEE076: PopAdLdVar
  loc_AEE077: FLdPr Me
  loc_AEE07A: MemLdRfVar from_stack_1.global_64
  loc_AEE07D: LdPrVar
  loc_AEE07F: LateMemCall
  loc_AEE085: LitVarStr var_94, " font-weight: bold;"
  loc_AEE08A: PopAdLdVar
  loc_AEE08B: FLdPr Me
  loc_AEE08E: MemLdRfVar from_stack_1.global_64
  loc_AEE091: LdPrVar
  loc_AEE093: LateMemCall
  loc_AEE099: LitVarStr var_94, "}"
  loc_AEE09E: PopAdLdVar
  loc_AEE09F: FLdPr Me
  loc_AEE0A2: MemLdRfVar from_stack_1.global_64
  loc_AEE0A5: LdPrVar
  loc_AEE0A7: LateMemCall
  loc_AEE0AD: LitVarStr var_94, ".Titulo2 {"
  loc_AEE0B2: PopAdLdVar
  loc_AEE0B3: FLdPr Me
  loc_AEE0B6: MemLdRfVar from_stack_1.global_64
  loc_AEE0B9: LdPrVar
  loc_AEE0BB: LateMemCall
  loc_AEE0C1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AEE0C6: PopAdLdVar
  loc_AEE0C7: FLdPr Me
  loc_AEE0CA: MemLdRfVar from_stack_1.global_64
  loc_AEE0CD: LdPrVar
  loc_AEE0CF: LateMemCall
  loc_AEE0D5: LitVarStr var_94, " font-size: 14px;"
  loc_AEE0DA: PopAdLdVar
  loc_AEE0DB: FLdPr Me
  loc_AEE0DE: MemLdRfVar from_stack_1.global_64
  loc_AEE0E1: LdPrVar
  loc_AEE0E3: LateMemCall
  loc_AEE0E9: LitVarStr var_94, " font-weight: bold;"
  loc_AEE0EE: PopAdLdVar
  loc_AEE0EF: FLdPr Me
  loc_AEE0F2: MemLdRfVar from_stack_1.global_64
  loc_AEE0F5: LdPrVar
  loc_AEE0F7: LateMemCall
  loc_AEE0FD: LitVarStr var_94, "}"
  loc_AEE102: PopAdLdVar
  loc_AEE103: FLdPr Me
  loc_AEE106: MemLdRfVar from_stack_1.global_64
  loc_AEE109: LdPrVar
  loc_AEE10B: LateMemCall
  loc_AEE111: LitVarStr var_94, ".Normal {"
  loc_AEE116: PopAdLdVar
  loc_AEE117: FLdPr Me
  loc_AEE11A: MemLdRfVar from_stack_1.global_64
  loc_AEE11D: LdPrVar
  loc_AEE11F: LateMemCall
  loc_AEE125: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AEE12A: PopAdLdVar
  loc_AEE12B: FLdPr Me
  loc_AEE12E: MemLdRfVar from_stack_1.global_64
  loc_AEE131: LdPrVar
  loc_AEE133: LateMemCall
  loc_AEE139: LitVarStr var_94, " font-size: 14px;"
  loc_AEE13E: PopAdLdVar
  loc_AEE13F: FLdPr Me
  loc_AEE142: MemLdRfVar from_stack_1.global_64
  loc_AEE145: LdPrVar
  loc_AEE147: LateMemCall
  loc_AEE14D: LitVarStr var_94, " font-style: normal;"
  loc_AEE152: PopAdLdVar
  loc_AEE153: FLdPr Me
  loc_AEE156: MemLdRfVar from_stack_1.global_64
  loc_AEE159: LdPrVar
  loc_AEE15B: LateMemCall
  loc_AEE161: LitVarStr var_94, " font-weight: normal;"
  loc_AEE166: PopAdLdVar
  loc_AEE167: FLdPr Me
  loc_AEE16A: MemLdRfVar from_stack_1.global_64
  loc_AEE16D: LdPrVar
  loc_AEE16F: LateMemCall
  loc_AEE175: LitVarStr var_94, " font-variant: normal;"
  loc_AEE17A: PopAdLdVar
  loc_AEE17B: FLdPr Me
  loc_AEE17E: MemLdRfVar from_stack_1.global_64
  loc_AEE181: LdPrVar
  loc_AEE183: LateMemCall
  loc_AEE189: LitVarStr var_94, "}"
  loc_AEE18E: PopAdLdVar
  loc_AEE18F: FLdPr Me
  loc_AEE192: MemLdRfVar from_stack_1.global_64
  loc_AEE195: LdPrVar
  loc_AEE197: LateMemCall
  loc_AEE19D: LitVarStr var_94, ".Encabezado {"
  loc_AEE1A2: PopAdLdVar
  loc_AEE1A3: FLdPr Me
  loc_AEE1A6: MemLdRfVar from_stack_1.global_64
  loc_AEE1A9: LdPrVar
  loc_AEE1AB: LateMemCall
  loc_AEE1B1: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AEE1B6: PopAdLdVar
  loc_AEE1B7: FLdPr Me
  loc_AEE1BA: MemLdRfVar from_stack_1.global_64
  loc_AEE1BD: LdPrVar
  loc_AEE1BF: LateMemCall
  loc_AEE1C5: LitVarStr var_94, " font-size: 13px;"
  loc_AEE1CA: PopAdLdVar
  loc_AEE1CB: FLdPr Me
  loc_AEE1CE: MemLdRfVar from_stack_1.global_64
  loc_AEE1D1: LdPrVar
  loc_AEE1D3: LateMemCall
  loc_AEE1D9: LitVarStr var_94, " font-weight: bold;"
  loc_AEE1DE: PopAdLdVar
  loc_AEE1DF: FLdPr Me
  loc_AEE1E2: MemLdRfVar from_stack_1.global_64
  loc_AEE1E5: LdPrVar
  loc_AEE1E7: LateMemCall
  loc_AEE1ED: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AEE1F2: PopAdLdVar
  loc_AEE1F3: FLdPr Me
  loc_AEE1F6: MemLdRfVar from_stack_1.global_64
  loc_AEE1F9: LdPrVar
  loc_AEE1FB: LateMemCall
  loc_AEE201: LitVarStr var_94, "}"
  loc_AEE206: PopAdLdVar
  loc_AEE207: FLdPr Me
  loc_AEE20A: MemLdRfVar from_stack_1.global_64
  loc_AEE20D: LdPrVar
  loc_AEE20F: LateMemCall
  loc_AEE215: LitVarStr var_94, ".LineaDato {"
  loc_AEE21A: PopAdLdVar
  loc_AEE21B: FLdPr Me
  loc_AEE21E: MemLdRfVar from_stack_1.global_64
  loc_AEE221: LdPrVar
  loc_AEE223: LateMemCall
  loc_AEE229: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AEE22E: PopAdLdVar
  loc_AEE22F: FLdPr Me
  loc_AEE232: MemLdRfVar from_stack_1.global_64
  loc_AEE235: LdPrVar
  loc_AEE237: LateMemCall
  loc_AEE23D: LitVarStr var_94, " font-size: 10px;"
  loc_AEE242: PopAdLdVar
  loc_AEE243: FLdPr Me
  loc_AEE246: MemLdRfVar from_stack_1.global_64
  loc_AEE249: LdPrVar
  loc_AEE24B: LateMemCall
  loc_AEE251: LitVarStr var_94, "}"
  loc_AEE256: PopAdLdVar
  loc_AEE257: FLdPr Me
  loc_AEE25A: MemLdRfVar from_stack_1.global_64
  loc_AEE25D: LdPrVar
  loc_AEE25F: LateMemCall
  loc_AEE265: LitVarStr var_94, ".Totales {"
  loc_AEE26A: PopAdLdVar
  loc_AEE26B: FLdPr Me
  loc_AEE26E: MemLdRfVar from_stack_1.global_64
  loc_AEE271: LdPrVar
  loc_AEE273: LateMemCall
  loc_AEE279: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AEE27E: PopAdLdVar
  loc_AEE27F: FLdPr Me
  loc_AEE282: MemLdRfVar from_stack_1.global_64
  loc_AEE285: LdPrVar
  loc_AEE287: LateMemCall
  loc_AEE28D: LitVarStr var_94, " font-size: 12px;"
  loc_AEE292: PopAdLdVar
  loc_AEE293: FLdPr Me
  loc_AEE296: MemLdRfVar from_stack_1.global_64
  loc_AEE299: LdPrVar
  loc_AEE29B: LateMemCall
  loc_AEE2A1: LitVarStr var_94, " font-weight: bold;"
  loc_AEE2A6: PopAdLdVar
  loc_AEE2A7: FLdPr Me
  loc_AEE2AA: MemLdRfVar from_stack_1.global_64
  loc_AEE2AD: LdPrVar
  loc_AEE2AF: LateMemCall
  loc_AEE2B5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AEE2BA: PopAdLdVar
  loc_AEE2BB: FLdPr Me
  loc_AEE2BE: MemLdRfVar from_stack_1.global_64
  loc_AEE2C1: LdPrVar
  loc_AEE2C3: LateMemCall
  loc_AEE2C9: LitVarStr var_94, "}"
  loc_AEE2CE: PopAdLdVar
  loc_AEE2CF: FLdPr Me
  loc_AEE2D2: MemLdRfVar from_stack_1.global_64
  loc_AEE2D5: LdPrVar
  loc_AEE2D7: LateMemCall
  loc_AEE2DD: LitVarStr var_94, ".Tilde {"
  loc_AEE2E2: PopAdLdVar
  loc_AEE2E3: FLdPr Me
  loc_AEE2E6: MemLdRfVar from_stack_1.global_64
  loc_AEE2E9: LdPrVar
  loc_AEE2EB: LateMemCall
  loc_AEE2F1: LitVarStr var_94, " font-family: Wingdings;"
  loc_AEE2F6: PopAdLdVar
  loc_AEE2F7: FLdPr Me
  loc_AEE2FA: MemLdRfVar from_stack_1.global_64
  loc_AEE2FD: LdPrVar
  loc_AEE2FF: LateMemCall
  loc_AEE305: LitVarStr var_94, " font-size: 16px;"
  loc_AEE30A: PopAdLdVar
  loc_AEE30B: FLdPr Me
  loc_AEE30E: MemLdRfVar from_stack_1.global_64
  loc_AEE311: LdPrVar
  loc_AEE313: LateMemCall
  loc_AEE319: LitVarStr var_94, "}"
  loc_AEE31E: PopAdLdVar
  loc_AEE31F: FLdPr Me
  loc_AEE322: MemLdRfVar from_stack_1.global_64
  loc_AEE325: LdPrVar
  loc_AEE327: LateMemCall
  loc_AEE32D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AEE332: PopAdLdVar
  loc_AEE333: FLdPr Me
  loc_AEE336: MemLdRfVar from_stack_1.global_64
  loc_AEE339: LdPrVar
  loc_AEE33B: LateMemCall
  loc_AEE341: LitVarStr var_94, "</style>"
  loc_AEE346: PopAdLdVar
  loc_AEE347: FLdPr Me
  loc_AEE34A: MemLdRfVar from_stack_1.global_64
  loc_AEE34D: LdPrVar
  loc_AEE34F: LateMemCall
  loc_AEE355: LitI4 0
  loc_AEE35A: FStStrCopy var_AC
  loc_AEE35D: FLdRfVar var_AC
  loc_AEE360: LitI4 0
  loc_AEE365: FStStrCopy var_A8
  loc_AEE368: FLdRfVar var_A8
  loc_AEE36B: LitI2_Byte 0
  loc_AEE36D: PopTmpLdAd2 var_BE
  loc_AEE370: FLdPr Me
  loc_AEE373: MemLdRfVar from_stack_1.global_64
  loc_AEE376: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AEE37B: FFreeStr var_A8 = ""
  loc_AEE382: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AEE387: PopAdLdVar
  loc_AEE388: FLdPr Me
  loc_AEE38B: MemLdRfVar from_stack_1.global_64
  loc_AEE38E: LdPrVar
  loc_AEE390: LateMemCall
  loc_AEE396: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AEE39B: PopAdLdVar
  loc_AEE39C: FLdPr Me
  loc_AEE39F: MemLdRfVar from_stack_1.global_64
  loc_AEE3A2: LdPrVar
  loc_AEE3A4: LateMemCall
  loc_AEE3AA: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AEE3AF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AEE3B4: FStVarCopyObj var_BC
  loc_AEE3B7: FLdRfVar var_BC
  loc_AEE3BA: FLdRfVar var_D0
  loc_AEE3BD: ImpAdCallFPR4  = Ucase()
  loc_AEE3C2: FLdRfVar var_D0
  loc_AEE3C5: ConcatVar var_E0
  loc_AEE3C9: LitVarStr var_F0, "</p>"
  loc_AEE3CE: ConcatVar var_100
  loc_AEE3D2: PopAdLdVar
  loc_AEE3D3: FLdPr Me
  loc_AEE3D6: MemLdRfVar from_stack_1.global_64
  loc_AEE3D9: LdPrVar
  loc_AEE3DB: LateMemCall
  loc_AEE3E1: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AEE3EC: LitStr "    <p align=""center"">"
  loc_AEE3EF: FLdRfVar var_A8
  loc_AEE3F2: FLdPr Me
  loc_AEE3F5:  = Me.Caption
  loc_AEE3FA: ILdRf var_A8
  loc_AEE3FD: ConcatStr
  loc_AEE3FE: FStStrNoPop var_AC
  loc_AEE401: LitStr "</p></th>"
  loc_AEE404: ConcatStr
  loc_AEE405: CVarStr var_BC
  loc_AEE408: PopAdLdVar
  loc_AEE409: FLdPr Me
  loc_AEE40C: MemLdRfVar from_stack_1.global_64
  loc_AEE40F: LdPrVar
  loc_AEE411: LateMemCall
  loc_AEE417: FFreeStr var_A8 = ""
  loc_AEE41E: FFree1Var var_BC = ""
  loc_AEE421: LitVarStr var_94, "  </tr>"
  loc_AEE426: PopAdLdVar
  loc_AEE427: FLdPr Me
  loc_AEE42A: MemLdRfVar from_stack_1.global_64
  loc_AEE42D: LdPrVar
  loc_AEE42F: LateMemCall
  loc_AEE435: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AEE43A: PopAdLdVar
  loc_AEE43B: FLdPr Me
  loc_AEE43E: MemLdRfVar from_stack_1.global_64
  loc_AEE441: LdPrVar
  loc_AEE443: LateMemCall
  loc_AEE449: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_AEE44E: PopAdLdVar
  loc_AEE44F: FLdPr Me
  loc_AEE452: MemLdRfVar from_stack_1.global_64
  loc_AEE455: LdPrVar
  loc_AEE457: LateMemCall
  loc_AEE45D: LitStr "         Periodo: "
  loc_AEE460: FLdRfVar var_A8
  loc_AEE463: FLdPr Me
  loc_AEE466: VCallAd Control_ID_cboPeriodo
  loc_AEE469: FStAdFunc var_114
  loc_AEE46C: FLdPr var_114
  loc_AEE46F:  = Me.Text
  loc_AEE474: ILdRf var_A8
  loc_AEE477: ConcatStr
  loc_AEE478: FStStrNoPop var_AC
  loc_AEE47B: LitStr "<br>"
  loc_AEE47E: ConcatStr
  loc_AEE47F: CVarStr var_BC
  loc_AEE482: PopAdLdVar
  loc_AEE483: FLdPr Me
  loc_AEE486: MemLdRfVar from_stack_1.global_64
  loc_AEE489: LdPrVar
  loc_AEE48B: LateMemCall
  loc_AEE491: FFreeStr var_A8 = ""
  loc_AEE498: FFree1Ad var_114
  loc_AEE49B: FFree1Var var_BC = ""
  loc_AEE49E: LitStr "         Desde: "
  loc_AEE4A1: FLdPr Me
  loc_AEE4A4: VCallAd Control_ID_mskDesde
  loc_AEE4A7: FStAdFunc var_114
  loc_AEE4AA: FLdPr var_114
  loc_AEE4AD: LateIdLdVar var_BC DispID_15 0
  loc_AEE4B4: CStrVarTmp
  loc_AEE4B5: FStStrNoPop var_A8
  loc_AEE4B8: ConcatStr
  loc_AEE4B9: FStStrNoPop var_AC
  loc_AEE4BC: LitStr "<br>"
  loc_AEE4BF: ConcatStr
  loc_AEE4C0: CVarStr var_D0
  loc_AEE4C3: PopAdLdVar
  loc_AEE4C4: FLdPr Me
  loc_AEE4C7: MemLdRfVar from_stack_1.global_64
  loc_AEE4CA: LdPrVar
  loc_AEE4CC: LateMemCall
  loc_AEE4D2: FFreeStr var_A8 = ""
  loc_AEE4D9: FFree1Ad var_114
  loc_AEE4DC: FFreeVar var_BC = ""
  loc_AEE4E3: LitStr "         Hasta: "
  loc_AEE4E6: FLdPr Me
  loc_AEE4E9: VCallAd Control_ID_mskHasta
  loc_AEE4EC: FStAdFunc var_114
  loc_AEE4EF: FLdPr var_114
  loc_AEE4F2: LateIdLdVar var_BC DispID_15 0
  loc_AEE4F9: CStrVarTmp
  loc_AEE4FA: FStStrNoPop var_A8
  loc_AEE4FD: ConcatStr
  loc_AEE4FE: FStStrNoPop var_AC
  loc_AEE501: LitStr "<br>"
  loc_AEE504: ConcatStr
  loc_AEE505: CVarStr var_D0
  loc_AEE508: PopAdLdVar
  loc_AEE509: FLdPr Me
  loc_AEE50C: MemLdRfVar from_stack_1.global_64
  loc_AEE50F: LdPrVar
  loc_AEE511: LateMemCall
  loc_AEE517: FFreeStr var_A8 = ""
  loc_AEE51E: FFree1Ad var_114
  loc_AEE521: FFreeVar var_BC = ""
  loc_AEE528: FLdPr Me
  loc_AEE52B: VCallAd Control_ID_CodiPartMsk
  loc_AEE52E: FStAdFunc var_114
  loc_AEE531: FLdPr var_114
  loc_AEE534: LateIdLdVar var_BC DispID_22 0
  loc_AEE53B: CStrVarTmp
  loc_AEE53C: FStStrNoPop var_A8
  loc_AEE53F: LitStr vbNullString
  loc_AEE542: NeStr
  loc_AEE544: FFree1Str var_A8
  loc_AEE547: FFree1Ad var_114
  loc_AEE54A: FFree1Var var_BC = ""
  loc_AEE54D: BranchF loc_AEE595
  loc_AEE550: LitStr "         Partida: "
  loc_AEE553: FLdPr Me
  loc_AEE556: VCallAd Control_ID_CodiPartMsk
  loc_AEE559: FStAdFunc var_114
  loc_AEE55C: FLdPr var_114
  loc_AEE55F: LateIdLdVar var_BC DispID_22 0
  loc_AEE566: CStrVarTmp
  loc_AEE567: FStStrNoPop var_A8
  loc_AEE56A: ConcatStr
  loc_AEE56B: FStStrNoPop var_AC
  loc_AEE56E: LitStr "...<br>"
  loc_AEE571: ConcatStr
  loc_AEE572: CVarStr var_D0
  loc_AEE575: PopAdLdVar
  loc_AEE576: FLdPr Me
  loc_AEE579: MemLdRfVar from_stack_1.global_64
  loc_AEE57C: LdPrVar
  loc_AEE57E: LateMemCall
  loc_AEE584: FFreeStr var_A8 = ""
  loc_AEE58B: FFree1Ad var_114
  loc_AEE58E: FFreeVar var_BC = ""
  loc_AEE595: LitStr "         Plazo: "
  loc_AEE598: FLdPr Me
  loc_AEE59B: MemLdI2 global_104
  loc_AEE59E: CStrUI1
  loc_AEE5A0: FStStrNoPop var_A8
  loc_AEE5A3: ConcatStr
  loc_AEE5A4: CVarStr var_BC
  loc_AEE5A7: PopAdLdVar
  loc_AEE5A8: FLdPr Me
  loc_AEE5AB: MemLdRfVar from_stack_1.global_64
  loc_AEE5AE: LdPrVar
  loc_AEE5B0: LateMemCall
  loc_AEE5B6: FFree1Str var_A8
  loc_AEE5B9: FFree1Var var_BC = ""
  loc_AEE5BC: LitVarStr var_94, "   </th>"
  loc_AEE5C1: PopAdLdVar
  loc_AEE5C2: FLdPr Me
  loc_AEE5C5: MemLdRfVar from_stack_1.global_64
  loc_AEE5C8: LdPrVar
  loc_AEE5CA: LateMemCall
  loc_AEE5D0: LitVarStr var_94, "  </tr>"
  loc_AEE5D5: PopAdLdVar
  loc_AEE5D6: FLdPr Me
  loc_AEE5D9: MemLdRfVar from_stack_1.global_64
  loc_AEE5DC: LdPrVar
  loc_AEE5DE: LateMemCall
  loc_AEE5E4: LitVarStr var_94, "</table>"
  loc_AEE5E9: PopAdLdVar
  loc_AEE5EA: FLdPr Me
  loc_AEE5ED: MemLdRfVar from_stack_1.global_64
  loc_AEE5F0: LdPrVar
  loc_AEE5F2: LateMemCall
  loc_AEE5F8: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEE5FD: PopAdLdVar
  loc_AEE5FE: FLdPr Me
  loc_AEE601: MemLdRfVar from_stack_1.global_64
  loc_AEE604: LdPrVar
  loc_AEE606: LateMemCall
  loc_AEE60C: LitVarStr var_94, "  <THEAD>"
  loc_AEE611: PopAdLdVar
  loc_AEE612: FLdPr Me
  loc_AEE615: MemLdRfVar from_stack_1.global_64
  loc_AEE618: LdPrVar
  loc_AEE61A: LateMemCall
  loc_AEE620: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AEE625: PopAdLdVar
  loc_AEE626: FLdPr Me
  loc_AEE629: MemLdRfVar from_stack_1.global_64
  loc_AEE62C: LdPrVar
  loc_AEE62E: LateMemCall
  loc_AEE634: LitVarStr var_94, "    <th>Orden de Compra</th>"
  loc_AEE639: PopAdLdVar
  loc_AEE63A: FLdPr Me
  loc_AEE63D: MemLdRfVar from_stack_1.global_64
  loc_AEE640: LdPrVar
  loc_AEE642: LateMemCall
  loc_AEE648: LitVarStr var_94, "    <th>Recepci&oacute;n</th>"
  loc_AEE64D: PopAdLdVar
  loc_AEE64E: FLdPr Me
  loc_AEE651: MemLdRfVar from_stack_1.global_64
  loc_AEE654: LdPrVar
  loc_AEE656: LateMemCall
  loc_AEE65C: LitVarStr var_94, "    <th>Fecha de Recepci&oacute;n</th>"
  loc_AEE661: PopAdLdVar
  loc_AEE662: FLdPr Me
  loc_AEE665: MemLdRfVar from_stack_1.global_64
  loc_AEE668: LdPrVar
  loc_AEE66A: LateMemCall
  loc_AEE670: LitVarStr var_94, "    <th>Orden de Pago</th>"
  loc_AEE675: PopAdLdVar
  loc_AEE676: FLdPr Me
  loc_AEE679: MemLdRfVar from_stack_1.global_64
  loc_AEE67C: LdPrVar
  loc_AEE67E: LateMemCall
  loc_AEE684: LitVarStr var_94, "    <th>Fecha de Orden de Pago</th>"
  loc_AEE689: PopAdLdVar
  loc_AEE68A: FLdPr Me
  loc_AEE68D: MemLdRfVar from_stack_1.global_64
  loc_AEE690: LdPrVar
  loc_AEE692: LateMemCall
  loc_AEE698: LitVarStr var_94, "    <th>Expediente</th>"
  loc_AEE69D: PopAdLdVar
  loc_AEE69E: FLdPr Me
  loc_AEE6A1: MemLdRfVar from_stack_1.global_64
  loc_AEE6A4: LdPrVar
  loc_AEE6A6: LateMemCall
  loc_AEE6AC: LitVarStr var_94, "    <th>D&iacute;as</th>"
  loc_AEE6B1: PopAdLdVar
  loc_AEE6B2: FLdPr Me
  loc_AEE6B5: MemLdRfVar from_stack_1.global_64
  loc_AEE6B8: LdPrVar
  loc_AEE6BA: LateMemCall
  loc_AEE6C0: LitVarStr var_94, "    <th>Cumpli&oacute;</th>"
  loc_AEE6C5: PopAdLdVar
  loc_AEE6C6: FLdPr Me
  loc_AEE6C9: MemLdRfVar from_stack_1.global_64
  loc_AEE6CC: LdPrVar
  loc_AEE6CE: LateMemCall
  loc_AEE6D4: LitVarStr var_94, "  </tr>"
  loc_AEE6D9: PopAdLdVar
  loc_AEE6DA: FLdPr Me
  loc_AEE6DD: MemLdRfVar from_stack_1.global_64
  loc_AEE6E0: LdPrVar
  loc_AEE6E2: LateMemCall
  loc_AEE6E8: LitVarStr var_94, "  </THEAD>"
  loc_AEE6ED: PopAdLdVar
  loc_AEE6EE: FLdPr Me
  loc_AEE6F1: MemLdRfVar from_stack_1.global_64
  loc_AEE6F4: LdPrVar
  loc_AEE6F6: LateMemCall
  loc_AEE6FC: ExitProcHresult
  loc_AEE6FD: CI4UI1
End Function

Private Function Proc_215_26_972D6C() '972D6C
  'Data Table: 4AA380
  loc_972D40: LitVarStr var_94, "</body>"
  loc_972D45: PopAdLdVar
  loc_972D46: FLdPr Me
  loc_972D49: MemLdRfVar from_stack_1.global_64
  loc_972D4C: LdPrVar
  loc_972D4E: LateMemCall
  loc_972D54: LitVarStr var_94, "</html>"
  loc_972D59: PopAdLdVar
  loc_972D5A: FLdPr Me
  loc_972D5D: MemLdRfVar from_stack_1.global_64
  loc_972D60: LdPrVar
  loc_972D62: LateMemCall
  loc_972D68: ExitProcHresult
End Function
