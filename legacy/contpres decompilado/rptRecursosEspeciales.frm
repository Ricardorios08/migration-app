VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptRecursosEspeciales
  Caption = "Recursos Especiales"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptRecursosEspeciales.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8190
  ClientHeight = 3255
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3000
    Width = 8190
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptRecursosEspeciales.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 2040
    Width = 735
    Height = 615
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptRecursosEspeciales.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptRecursosEspeciales.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1800
    Width = 1815
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1800
    Width = 3015
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7935
    Height = 1695
    TabIndex = 8
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 0
    End
    Begin VB.CommandButton CodiCucoCmd
      Left = 3240
      Top = 960
      Width = 375
      Height = 375
      TabIndex = 2
      Picture = "rptRecursosEspeciales.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 1560
      Top = 960
      Width = 1575
      Height = 315
      TabIndex = 1
      OleObjectBlob = "rptRecursosEspeciales.frx":0CFA
    End
    Begin VB.Label Label4
      Caption = "Periodo:"
      Left = 840
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 9
    End
    Begin VB.Label DetaCucoLbl
      Left = 3720
      Top = 960
      Width = 4095
      Height = 375
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label1
      Caption = "Cuenta Contable:"
      Left = 180
      Top = 960
      Width = 1230
      Height = 195
      TabIndex = 10
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 2280
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptRecursosEspeciales.frx":0D5A
  End
End

Attribute VB_Name = "rptRecursosEspeciales"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_005A4644
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B15C
  'Data Table: 442A74
  loc_98B124: FLdPr Me
  loc_98B127: VCallAd Control_ID_statusBar
  loc_98B12A: FStAdFunc var_88
  loc_98B12D: FLdPr var_88
  loc_98B130: LateIdLdVar var_98 DispID_1 0
  loc_98B137: CStrVarTmp
  loc_98B138: CVarStr var_A8
  loc_98B13B: PopAdLdVar
  loc_98B13C: FLdPr Me
  loc_98B13F: VCallAd Control_ID_statusBar
  loc_98B142: FStAdFunc var_BC
  loc_98B145: FLdPr var_BC
  loc_98B148: LateIdSt
  loc_98B14D: FFreeAd var_88 = ""
  loc_98B154: FFreeVar var_98 = ""
  loc_98B15B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '961080
  'Data Table: 442A74
  loc_961068: LitI2_Byte 0
  loc_96106A: ILdRf Me
  loc_96106D: CastAd
  loc_961070: FStAdFunc var_88
  loc_961073: FLdRfVar var_88
  loc_961076: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96107B: FFree1Ad var_88
  loc_96107E: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '960A90
  'Data Table: 442A74
  loc_960A78: ILdRf Me
  loc_960A7B: CastAd
  loc_960A7E: FStAdFunc var_88
  loc_960A81: FLdRfVar var_88
  loc_960A84: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_960A89: FFree1Ad var_88
  loc_960A8C: ExitProcHresult
End Sub

Private Sub CodiCucoCmd_Click() '9E956C
  'Data Table: 442A74
  loc_9E9450: LitVar_Missing var_A4
  loc_9E9453: PopAdLdVar
  loc_9E9454: LitVarI4
  loc_9E945C: PopAdLdVar
  loc_9E945D: ImpAdLdRf MemVar_C3D6C0
  loc_9E9460: NewIfNullPr bscCuentaContable
  loc_9E9463: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9E9468: FLdRfVar var_AC
  loc_9E946B: FLdRfVar var_A8
  loc_9E946E: ImpAdLdRf MemVar_C3D6C0
  loc_9E9471: NewIfNullPr bscCuentaContable
  loc_9E9474: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9E9479: FLdPr var_A8
  loc_9E947C: from_stack_1 = clsbase.RecordCount
  loc_9E9481: ILdRf var_AC
  loc_9E9484: LitI4 0
  loc_9E9489: GtI4
  loc_9E948A: FFree1Ad var_A8
  loc_9E948D: BranchF loc_9E9568
  loc_9E9490: FLdRfVar var_C8
  loc_9E9493: FLdRfVar var_B8
  loc_9E9496: LitVarStr var_94, "CodiCuco"
  loc_9E949B: PopAdLdVar
  loc_9E949C: FLdRfVar var_B4
  loc_9E949F: FLdRfVar var_B0
  loc_9E94A2: FLdRfVar var_A8
  loc_9E94A5: ImpAdLdRf MemVar_C3D6C0
  loc_9E94A8: NewIfNullPr bscCuentaContable
  loc_9E94AB: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9E94B0: FLdPr var_A8
  loc_9E94B3: from_stack_1v = clsbase.RsFrmGet()
  loc_9E94B8: FLdPr var_B0
  loc_9E94BB:  = Me.Fields
  loc_9E94C0: FLdPr var_B4
  loc_9E94C3: from_stack_2 = Me.Item(from_stack_1)
  loc_9E94C8: FLdPr var_B8
  loc_9E94CB:  = Me.Value
  loc_9E94D0: FLdRfVar var_C8
  loc_9E94D3: CStrVarTmp
  loc_9E94D4: CVarStr var_D8
  loc_9E94D7: PopAdLdVar
  loc_9E94D8: FLdPr Me
  loc_9E94DB: VCallAd Control_ID_CodiCucoMsk
  loc_9E94DE: FStAdFunc var_DC
  loc_9E94E1: FLdPr var_DC
  loc_9E94E4: LateIdSt
  loc_9E94E9: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9E94F6: FFreeVar var_C8 = ""
  loc_9E94FD: FLdRfVar var_C8
  loc_9E9500: FLdRfVar var_B8
  loc_9E9503: LitVarStr var_94, "DetaCuco"
  loc_9E9508: PopAdLdVar
  loc_9E9509: FLdRfVar var_B4
  loc_9E950C: FLdRfVar var_B0
  loc_9E950F: FLdRfVar var_A8
  loc_9E9512: ImpAdLdRf MemVar_C3D6C0
  loc_9E9515: NewIfNullPr bscCuentaContable
  loc_9E9518: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9E951D: FLdPr var_A8
  loc_9E9520: from_stack_1v = clsbase.RsFrmGet()
  loc_9E9525: FLdPr var_B0
  loc_9E9528:  = Me.Fields
  loc_9E952D: FLdPr var_B4
  loc_9E9530: from_stack_2 = Me.Item(from_stack_1)
  loc_9E9535: FLdPr var_B8
  loc_9E9538:  = Me.Value
  loc_9E953D: FLdRfVar var_C8
  loc_9E9540: CStrVarTmp
  loc_9E9541: FStStrNoPop var_E0
  loc_9E9544: FLdPr Me
  loc_9E9547: VCallAd Control_ID_DetaCucoLbl
  loc_9E954A: FStAdFunc var_DC
  loc_9E954D: FLdPr var_DC
  loc_9E9550: Me.Caption = from_stack_1
  loc_9E9555: FFree1Str var_E0
  loc_9E9558: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9E9565: FFree1Var var_C8 = ""
  loc_9E9568: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B428
  'Data Table: 442A74
  loc_97B3F8: LitVarStr var_94, "Cerrando..."
  loc_97B3FD: PopAdLdVar
  loc_97B3FE: FLdPr Me
  loc_97B401: VCallAd Control_ID_statusBar
  loc_97B404: FStAdFunc var_A8
  loc_97B407: FLdPr var_A8
  loc_97B40A: LateIdSt
  loc_97B40F: FFree1Ad var_A8
  loc_97B412: ILdRf Me
  loc_97B415: FStAdNoPop
  loc_97B419: ImpAdLdRf MemVar_C44F9C
  loc_97B41C: NewIfNullPr Me
  loc_97B41F: Me.Global.Unload from_stack_1
  loc_97B424: FFree1Ad var_A8
  loc_97B427: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A19D0
  'Data Table: 442A74
  loc_9A1958: LitI2_Byte 0
  loc_9A195A: FLdPr Me
  loc_9A195D: MemStI2 bGenerado
  loc_9A1960: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A1965: ImpAdLdI2 MemVar_C3D064
  loc_9A1968: CStrUI1
  loc_9A196A: FStStrNoPop var_88
  loc_9A196D: FLdPr Me
  loc_9A1970: VCallAd Control_ID_cboPeriodo
  loc_9A1973: FStAdFunc var_8C
  loc_9A1976: FLdPr var_8C
  loc_9A1979: Me.Text = from_stack_1
  loc_9A197E: FFree1Str var_88
  loc_9A1981: FFree1Ad var_8C
  loc_9A1984: LitVarStr var_9C, vbNullString
  loc_9A1989: PopAdLdVar
  loc_9A198A: FLdPr Me
  loc_9A198D: VCallAd Control_ID_CodiCucoMsk
  loc_9A1990: FStAdFunc var_8C
  loc_9A1993: FLdPr var_8C
  loc_9A1996: LateIdSt
  loc_9A199B: FFree1Ad var_8C
  loc_9A199E: LitStr vbNullString
  loc_9A19A1: FLdPr Me
  loc_9A19A4: VCallAd Control_ID_DetaCucoLbl
  loc_9A19A7: FStAdFunc var_8C
  loc_9A19AA: FLdPr var_8C
  loc_9A19AD: Me.Caption = from_stack_1
  loc_9A19B2: FFree1Ad var_8C
  loc_9A19B5: Call HabilitarCriterio()
  loc_9A19BA: ILdRf Me
  loc_9A19BD: CastAd
  loc_9A19C0: FStAdFunc var_8C
  loc_9A19C3: FLdRfVar var_8C
  loc_9A19C6: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A19CB: FFree1Ad var_8C
  loc_9A19CE: ExitProcHresult
  loc_9A19CF: CI4UI1
End Sub

Private Sub cmdPrevia_Click() '9609F8
  'Data Table: 442A74
  loc_9609E0: ILdRf Me
  loc_9609E3: CastAd
  loc_9609E6: FStAdFunc var_88
  loc_9609E9: FLdRfVar var_88
  loc_9609EC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9609F1: FFree1Ad var_88
  loc_9609F4: ExitProcHresult
End Sub

Private Sub CodiCucoMsk_UnknownEvent_0 '94C0E0
  'Data Table: 442A74
  loc_94C0CC: FLdPr Me
  loc_94C0CF: VCallAd Control_ID_CodiCucoMsk
  loc_94C0D2: CVarAd
  loc_94C0D6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C0DB: FFree1Var var_94 = ""
  loc_94C0DE: ExitProcHresult
End Sub

Private Sub CodiCucoMsk_UnknownEvent_8 'A09DF4
  'Data Table: 442A74
  loc_A09CA8: LitStr "SELECT DetaCuco FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_A09CAB: FLdRfVar var_90
  loc_A09CAE: FLdPr Me
  loc_A09CB1: VCallAd Control_ID_cboPeriodo
  loc_A09CB4: FStAdFunc var_8C
  loc_A09CB7: FLdPr var_8C
  loc_A09CBA:  = Me.Text
  loc_A09CBF: ILdRf var_90
  loc_A09CC2: ConcatStr
  loc_A09CC3: FStStrNoPop var_94
  loc_A09CC6: LitStr " AND CodiCuco LIKE '"
  loc_A09CC9: ConcatStr
  loc_A09CCA: FStStrNoPop var_AC
  loc_A09CCD: FLdPr Me
  loc_A09CD0: VCallAd Control_ID_CodiCucoMsk
  loc_A09CD3: FStAdFunc var_98
  loc_A09CD6: FLdPr var_98
  loc_A09CD9: LateIdLdVar var_A8 DispID_22 0
  loc_A09CE0: CStrVarTmp
  loc_A09CE1: FStStrNoPop var_B0
  loc_A09CE4: ConcatStr
  loc_A09CE5: FStStrNoPop var_B4
  loc_A09CE8: LitStr Chr(37) & "'"
  loc_A09CEB: ConcatStr
  loc_A09CEC: FStStrNoPop var_B8
  loc_A09CEF: FLdRfVar var_88
  loc_A09CF2: NewIfNullPr clscuentacontable
  loc_A09CF5: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A09CFA: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A09D09: FFreeAd var_8C = ""
  loc_A09D10: FFree1Var var_A8 = ""
  loc_A09D13: FLdRfVar var_BC
  loc_A09D16: FLdRfVar var_88
  loc_A09D19: NewIfNullPr clscuentacontable
  loc_A09D1C: from_stack_1 = clscuentacontable.RecordCount
  loc_A09D21: ILdRf var_BC
  loc_A09D24: FStR4 var_C0
  loc_A09D27: ILdRf var_C0
  loc_A09D2A: LitI4 0
  loc_A09D2F: EqI4
  loc_A09D30: BranchF loc_A09D4D
  loc_A09D33: LitStr "0 registros encontrados"
  loc_A09D36: FLdPr Me
  loc_A09D39: VCallAd Control_ID_DetaCucoLbl
  loc_A09D3C: FStAdFunc var_8C
  loc_A09D3F: FLdPr var_8C
  loc_A09D42: Me.Caption = from_stack_1
  loc_A09D47: FFree1Ad var_8C
  loc_A09D4A: Branch loc_A09DF2
  loc_A09D4D: ILdRf var_C0
  loc_A09D50: LitI4 1
  loc_A09D55: EqI4
  loc_A09D56: BranchF loc_A09DBA
  loc_A09D59: FLdRfVar var_A8
  loc_A09D5C: FLdRfVar var_D4
  loc_A09D5F: LitVarStr var_D0, "DetaCuco"
  loc_A09D64: PopAdLdVar
  loc_A09D65: FLdRfVar var_98
  loc_A09D68: FLdRfVar var_8C
  loc_A09D6B: FLdRfVar var_88
  loc_A09D6E: NewIfNullPr clscuentacontable
  loc_A09D71: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A09D76: FLdPr var_8C
  loc_A09D79:  = Me.Fields
  loc_A09D7E: FLdPr var_98
  loc_A09D81: from_stack_2 = Me.Item(from_stack_1)
  loc_A09D86: FLdPr var_D4
  loc_A09D89:  = Me.Value
  loc_A09D8E: FLdRfVar var_A8
  loc_A09D91: CStrVarTmp
  loc_A09D92: FStStrNoPop var_90
  loc_A09D95: FLdPr Me
  loc_A09D98: VCallAd Control_ID_DetaCucoLbl
  loc_A09D9B: FStAdFunc var_D8
  loc_A09D9E: FLdPr var_D8
  loc_A09DA1: Me.Caption = from_stack_1
  loc_A09DA6: FFree1Str var_90
  loc_A09DA9: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A09DB4: FFree1Var var_A8 = ""
  loc_A09DB7: Branch loc_A09DF2
  loc_A09DBA: FLdRfVar var_BC
  loc_A09DBD: FLdRfVar var_88
  loc_A09DC0: NewIfNullPr clscuentacontable
  loc_A09DC3: from_stack_1 = clscuentacontable.RecordCount
  loc_A09DC8: ILdRf var_BC
  loc_A09DCB: CStrI4
  loc_A09DCD: FStStrNoPop var_90
  loc_A09DD0: LitStr " cuentas contables encontradas"
  loc_A09DD3: ConcatStr
  loc_A09DD4: FStStrNoPop var_94
  loc_A09DD7: FLdPr Me
  loc_A09DDA: VCallAd Control_ID_DetaCucoLbl
  loc_A09DDD: FStAdFunc var_8C
  loc_A09DE0: FLdPr var_8C
  loc_A09DE3: Me.Caption = from_stack_1
  loc_A09DE8: FFreeStr var_90 = ""
  loc_A09DEF: FFree1Ad var_8C
  loc_A09DF2: ExitProcHresult
End Sub

Private Sub Form_Load() '9DAF74
  'Data Table: 442A74
  loc_9DAE80: LitVarStr var_94, "#.#.##.##.##.##"
  loc_9DAE85: PopAdLdVar
  loc_9DAE86: FLdPr Me
  loc_9DAE89: VCallAd Control_ID_CodiCucoMsk
  loc_9DAE8C: FStAdFunc var_A8
  loc_9DAE8F: FLdPr var_A8
  loc_9DAE92: LateIdSt
  loc_9DAE97: FFree1Ad var_A8
  loc_9DAE9A: LitI2_Byte &HFF
  loc_9DAE9C: ImpAdStI2 MemVar_C3D840
  loc_9DAE9F: ILdRf Me
  loc_9DAEA2: CastAd
  loc_9DAEA5: FStAdFunc var_A8
  loc_9DAEA8: FLdRfVar var_A8
  loc_9DAEAB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9DAEB0: FFree1Ad var_A8
  loc_9DAEB3: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9DAEB6: FLdRfVar var_AC
  loc_9DAEB9: NewIfNullPr clsperiodo
  loc_9DAEBC: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9DAEC1: FLdRfVar var_B0
  loc_9DAEC4: FLdRfVar var_AC
  loc_9DAEC7: NewIfNullPr clsperiodo
  loc_9DAECA: from_stack_1 = clsperiodo.RecordCount
  loc_9DAECF: ILdRf var_B0
  loc_9DAED2: LitI4 0
  loc_9DAED7: GtI4
  loc_9DAED8: BranchF loc_9DAF6B
  loc_9DAEDB: FLdRfVar var_AC
  loc_9DAEDE: NewIfNullPr clsperiodo
  loc_9DAEE1: Call clsperiodo.MoveFirst()
  loc_9DAEE6: FLdRfVar var_B2
  loc_9DAEE9: FLdRfVar var_AC
  loc_9DAEEC: NewIfNullPr clsperiodo
  loc_9DAEEF: from_stack_1 = clsperiodo.EOF
  loc_9DAEF4: FLdI2 var_B2
  loc_9DAEF7: NotI4
  loc_9DAEF8: BranchF loc_9DAF6B
  loc_9DAEFB: LitVar_Missing var_A4
  loc_9DAEFE: PopAdLdVar
  loc_9DAEFF: FLdRfVar var_CC
  loc_9DAF02: FLdRfVar var_BC
  loc_9DAF05: LitVarStr var_94, "PeriInfo"
  loc_9DAF0A: PopAdLdVar
  loc_9DAF0B: FLdRfVar var_B8
  loc_9DAF0E: FLdRfVar var_A8
  loc_9DAF11: FLdRfVar var_AC
  loc_9DAF14: NewIfNullPr clsperiodo
  loc_9DAF17: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9DAF1C: FLdPr var_A8
  loc_9DAF1F:  = Me.Fields
  loc_9DAF24: FLdPr var_B8
  loc_9DAF27: from_stack_2 = Me.Item(from_stack_1)
  loc_9DAF2C: FLdPr var_BC
  loc_9DAF2F:  = Me.Value
  loc_9DAF34: FLdRfVar var_CC
  loc_9DAF37: CStrVarTmp
  loc_9DAF38: FStStrNoPop var_D0
  loc_9DAF3B: FLdPr Me
  loc_9DAF3E: VCallAd Control_ID_cboPeriodo
  loc_9DAF41: FStAdFunc var_D4
  loc_9DAF44: FLdPr var_D4
  loc_9DAF47: Me.AddItem from_stack_1, from_stack_2
  loc_9DAF4C: FFree1Str var_D0
  loc_9DAF4F: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9DAF5A: FFree1Var var_CC = ""
  loc_9DAF5D: FLdRfVar var_AC
  loc_9DAF60: NewIfNullPr clsperiodo
  loc_9DAF63: Call clsperiodo.MoveSiguiente()
  loc_9DAF68: Branch loc_9DAEE6
  loc_9DAF6B: Call cmdNueva_Click()
  loc_9DAF70: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '960798
  'Data Table: 442A74
  loc_960780: FLdPr Me
  loc_960783: VCallAd Control_ID_wbbReporte
  loc_960786: FStAdFunc var_88
  loc_960789: FLdRfVar var_88
  loc_96078C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_960791: FFree1Ad var_88
  loc_960794: ExitProcHresult
End Sub

Public Function htmFileGet() '44363C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '44364B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '44365A
  htmFile = Value
End Sub

Public Function bGeneradoGet() '443669
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '443678
  bGenerado = Value
End Sub

Public Sub GeneraHTML() 'A45B60
  'Data Table: 442A74
  loc_A458FC: FLdRfVar var_88
  loc_A458FF: LitI2_Byte 0
  loc_A45901: LitI2_Byte &HFF
  loc_A45903: ImpAdLdI4 MemVar_C3D83C
  loc_A45906: FLdPr Me
  loc_A45909: MemLdRfVar from_stack_1.global_76
  loc_A4590C: NewIfNullPr IFileSystem3
  loc_A4590F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A45914: ILdRf var_88
  loc_A45917: FLdPr Me
  loc_A4591A: MemStVarAd
  loc_A4591E: FFree1Ad var_88
  loc_A45921: Call Proc_222_19_A73188()
  loc_A45926: LitI2_Byte 1
  loc_A45928: FLdPr Me
  loc_A4592B: MemLdRfVar from_stack_1.global_84
  loc_A4592E: FLdPr Me
  loc_A45931: MemLdStr global_80
  loc_A45934: LitI2_Byte 1
  loc_A45936: FnUBound
  loc_A45938: CI2I4
  loc_A45939: ForI2 var_8C
  loc_A4593F: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A45944: PopAdLdVar
  loc_A45945: FLdPr Me
  loc_A45948: MemLdRfVar from_stack_1.htmFile
  loc_A4594B: LdPrVar
  loc_A4594D: LateMemCall
  loc_A45953: LitStr "<th rowspan="""
  loc_A45956: FLdPr Me
  loc_A45959: MemLdI2 global_84
  loc_A4595C: CI4UI1
  loc_A4595D: FLdPr Me
  loc_A45960: MemLdStr global_80
  loc_A45963: Ary1LdPr
  loc_A45964: MemLdStr global_12
  loc_A45967: ConcatStr
  loc_A45968: FStStrNoPop var_B0
  loc_A4596B: LitStr """ align=""left"" valign=""top"">"
  loc_A4596E: ConcatStr
  loc_A4596F: CVarStr var_F4
  loc_A45972: FLdPr Me
  loc_A45975: MemLdI2 global_84
  loc_A45978: CI4UI1
  loc_A45979: FLdPr Me
  loc_A4597C: MemLdStr global_80
  loc_A4597F: AryLock
  loc_A45982: Ary1LdPr
  loc_A45983: MemLdRfVar from_stack_1.global_0
  loc_A45986: CVarRef
  loc_A4598B: LitVarStr var_AC, "&nbsp;"
  loc_A45990: FStVarCopyObj var_C0
  loc_A45993: FLdRfVar var_C0
  loc_A45996: FLdPr Me
  loc_A45999: MemLdI2 global_84
  loc_A4599C: CI4UI1
  loc_A4599D: FLdPr Me
  loc_A459A0: MemLdStr global_80
  loc_A459A3: Ary1LdPr
  loc_A459A4: MemLdStr global_0
  loc_A459A7: LitStr vbNullString
  loc_A459AA: EqStr
  loc_A459AC: CVarBoolI2 var_9C
  loc_A459B0: FLdRfVar var_E4
  loc_A459B3: ImpAdCallFPR4  = IIf(, , )
  loc_A459B8: AryUnlock
  loc_A459BB: FLdRfVar var_E4
  loc_A459BE: ConcatVar var_104
  loc_A459C2: LitVarStr var_114, "<br>"
  loc_A459C7: ConcatVar var_124
  loc_A459CB: FLdPr Me
  loc_A459CE: MemLdI2 global_84
  loc_A459D1: CI4UI1
  loc_A459D2: FLdPr Me
  loc_A459D5: MemLdStr global_80
  loc_A459D8: Ary1LdPr
  loc_A459D9: MemLdStr global_4
  loc_A459DC: CVarStr var_134
  loc_A459DF: ConcatVar var_144
  loc_A459E3: LitVarStr var_154, "</th>"
  loc_A459E8: ConcatVar var_164
  loc_A459EC: PopAdLdVar
  loc_A459ED: FLdPr Me
  loc_A459F0: MemLdRfVar from_stack_1.htmFile
  loc_A459F3: LdPrVar
  loc_A459F5: LateMemCall
  loc_A459FB: FFree1Str var_B0
  loc_A459FE: FFreeVar var_9C = "": var_C0 = "": var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = ""
  loc_A45A11: LitI2_Byte 1
  loc_A45A13: FLdPr Me
  loc_A45A16: MemLdRfVar from_stack_1.global_86
  loc_A45A19: FLdPr Me
  loc_A45A1C: MemLdI2 global_84
  loc_A45A1F: CI4UI1
  loc_A45A20: FLdPr Me
  loc_A45A23: MemLdStr global_80
  loc_A45A26: Ary1LdPr
  loc_A45A27: MemLdStr global_8
  loc_A45A2A: LitI2_Byte 1
  loc_A45A2C: FnUBound
  loc_A45A2E: CI2I4
  loc_A45A2F: ForI2 var_178
  loc_A45A35: FLdPr Me
  loc_A45A38: MemLdI2 global_86
  loc_A45A3B: LitI2_Byte 1
  loc_A45A3D: GtI2
  loc_A45A3E: BranchF loc_A45A55
  loc_A45A41: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A45A46: PopAdLdVar
  loc_A45A47: FLdPr Me
  loc_A45A4A: MemLdRfVar from_stack_1.htmFile
  loc_A45A4D: LdPrVar
  loc_A45A4F: LateMemCall
  loc_A45A55: LitVarStr var_114, "<th align=""left"" valign=""top"">"
  loc_A45A5A: FLdPr Me
  loc_A45A5D: MemLdI2 global_86
  loc_A45A60: CI4UI1
  loc_A45A61: FLdPr Me
  loc_A45A64: MemLdI2 global_84
  loc_A45A67: CI4UI1
  loc_A45A68: FLdPr Me
  loc_A45A6B: MemLdStr global_80
  loc_A45A6E: AryLock
  loc_A45A71: Ary1LdPr
  loc_A45A72: MemLdStr global_8
  loc_A45A75: AryLock
  loc_A45A78: Ary1LdPr
  loc_A45A79: MemLdRfVar from_stack_1.global_0
  loc_A45A7C: CVarRef
  loc_A45A81: LitVarStr var_AC, "&nbsp;"
  loc_A45A86: FStVarCopyObj var_C0
  loc_A45A89: FLdRfVar var_C0
  loc_A45A8C: FLdPr Me
  loc_A45A8F: MemLdI2 global_86
  loc_A45A92: CI4UI1
  loc_A45A93: FLdPr Me
  loc_A45A96: MemLdI2 global_84
  loc_A45A99: CI4UI1
  loc_A45A9A: FLdPr Me
  loc_A45A9D: MemLdStr global_80
  loc_A45AA0: Ary1LdPr
  loc_A45AA1: MemLdStr global_8
  loc_A45AA4: Ary1LdPr
  loc_A45AA5: MemLdStr global_0
  loc_A45AA8: LitStr vbNullString
  loc_A45AAB: EqStr
  loc_A45AAD: CVarBoolI2 var_9C
  loc_A45AB1: FLdRfVar var_E4
  loc_A45AB4: ImpAdCallFPR4  = IIf(, , )
  loc_A45AB9: AryUnlock
  loc_A45ABC: AryUnlock
  loc_A45ABF: FLdRfVar var_E4
  loc_A45AC2: ConcatVar var_F4
  loc_A45AC6: LitVarStr var_134, "<br>"
  loc_A45ACB: ConcatVar var_104
  loc_A45ACF: FLdPr Me
  loc_A45AD2: MemLdI2 global_86
  loc_A45AD5: CI4UI1
  loc_A45AD6: FLdPr Me
  loc_A45AD9: MemLdI2 global_84
  loc_A45ADC: CI4UI1
  loc_A45ADD: FLdPr Me
  loc_A45AE0: MemLdStr global_80
  loc_A45AE3: Ary1LdPr
  loc_A45AE4: MemLdStr global_8
  loc_A45AE7: Ary1LdPr
  loc_A45AE8: MemLdStr global_4
  loc_A45AEB: CVarStr var_154
  loc_A45AEE: ConcatVar var_124
  loc_A45AF2: LitVarStr var_174, "</th>"
  loc_A45AF7: ConcatVar var_144
  loc_A45AFB: PopAdLdVar
  loc_A45AFC: FLdPr Me
  loc_A45AFF: MemLdRfVar from_stack_1.htmFile
  loc_A45B02: LdPrVar
  loc_A45B04: LateMemCall
  loc_A45B0A: FFreeVar var_9C = "": var_C0 = "": var_E4 = "": var_F4 = "": var_104 = "": var_124 = ""
  loc_A45B1B: LitVarStr var_9C, "     </tr>"
  loc_A45B20: PopAdLdVar
  loc_A45B21: FLdPr Me
  loc_A45B24: MemLdRfVar from_stack_1.htmFile
  loc_A45B27: LdPrVar
  loc_A45B29: LateMemCall
  loc_A45B2F: FLdPr Me
  loc_A45B32: MemLdRfVar from_stack_1.global_86
  loc_A45B35: NextI2 var_178, loc_A45A35
  loc_A45B3A: FLdPr Me
  loc_A45B3D: MemLdRfVar from_stack_1.global_84
  loc_A45B40: NextI2 var_8C, loc_A4593F
  loc_A45B45: Call Proc_222_20_982460()
  loc_A45B4A: FLdPr Me
  loc_A45B4D: MemLdRfVar from_stack_1.htmFile
  loc_A45B50: LdPrVar
  loc_A45B52: LateMemCall
  loc_A45B58: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A45B5D: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A55C6C
  'Data Table: 442A74
  loc_A559C4: FLdPr Me
  loc_A559C7: MemLdI2 bGenerado
  loc_A559CA: BranchF loc_A559CE
  loc_A559CD: ExitProcHresult
  loc_A559CE: LitVarStr var_98, "Generando reporte..."
  loc_A559D3: PopAdLdVar
  loc_A559D4: FLdPr Me
  loc_A559D7: VCallAd Control_ID_statusBar
  loc_A559DA: FStAdFunc var_AC
  loc_A559DD: FLdPr var_AC
  loc_A559E0: LateIdSt
  loc_A559E5: FFree1Ad var_AC
  loc_A559E8: LitI4 &HB
  loc_A559ED: CI2I4
  loc_A559EE: FLdPr Me
  loc_A559F1: Me.MousePointer = from_stack_1
  loc_A559F6: FLdPr Me
  loc_A559F9: VCallAd Control_ID_CodiCucoMsk
  loc_A559FC: FStAdFunc var_AC
  loc_A559FF: FLdPr var_AC
  loc_A55A02: LateIdLdVar var_BC DispID_22 0
  loc_A55A09: PopAd
  loc_A55A0B: FLdPr Me
  loc_A55A0E: VCallAd Control_ID_CodiCucoMsk
  loc_A55A11: FStAdFunc var_C4
  loc_A55A14: FLdPr var_C4
  loc_A55A17: LateIdLdVar var_D4 DispID_22 0
  loc_A55A1E: PopAd
  loc_A55A20: LitVarStr var_A8, vbNullString
  loc_A55A25: FStVarCopyObj var_FC
  loc_A55A28: FLdRfVar var_FC
  loc_A55A2B: LitStr " AND recuespe.CodiCuco LIKE '"
  loc_A55A2E: FLdRfVar var_D4
  loc_A55A31: CStrVarTmp
  loc_A55A32: FStStrNoPop var_D8
  loc_A55A35: ConcatStr
  loc_A55A36: FStStrNoPop var_DC
  loc_A55A39: LitStr Chr(37) & "'"
  loc_A55A3C: ConcatStr
  loc_A55A3D: CVarStr var_EC
  loc_A55A40: FLdRfVar var_BC
  loc_A55A43: CStrVarTmp
  loc_A55A44: FStStrNoPop var_C0
  loc_A55A47: LitStr vbNullString
  loc_A55A4A: NeStr
  loc_A55A4C: CVarBoolI2 var_98
  loc_A55A50: FLdRfVar var_10C
  loc_A55A53: ImpAdCallFPR4  = IIf(, , )
  loc_A55A58: FLdRfVar var_10C
  loc_A55A5B: CStrVarTmp
  loc_A55A5C: FStStr var_88
  loc_A55A5F: FFreeStr var_C0 = "": var_D8 = ""
  loc_A55A68: FFreeAd var_AC = ""
  loc_A55A6F: FFreeVar var_BC = "": var_D4 = "": var_98 = "": var_EC = "": var_FC = ""
  loc_A55A7E: FLdPr Me
  loc_A55A81: MemLdRfVar from_stack_1.global_72
  loc_A55A84: NewIfNullAd
  loc_A55A87: FStAd var_110 
  loc_A55A8B: LitStr "SELECT recuespe.*, DetaCuco, DetaPart"
  loc_A55A8E: LitStr " , (SELECT Count(Distinct(CodiPart)) FROM recuespe tmp WHERE tmp.PeriInfo = recuespe.PeriInfo AND tmp.CodiCuco = recuespe.CodiCuco) RowSpan"
  loc_A55A91: ConcatStr
  loc_A55A92: FStStrNoPop var_C0
  loc_A55A95: LitStr " FROM recuespe"
  loc_A55A98: ConcatStr
  loc_A55A99: FStStrNoPop var_D8
  loc_A55A9C: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = recuespe.PeriInfo AND cc.CodiCuco = recuespe.CodiCuco"
  loc_A55A9F: ConcatStr
  loc_A55AA0: FStStrNoPop var_DC
  loc_A55AA3: LitStr " INNER JOIN partida ON partida.PeriInfo = recuespe.PeriInfo AND partida.CodiPart = recuespe.CodiPart"
  loc_A55AA6: ConcatStr
  loc_A55AA7: FStStrNoPop var_114
  loc_A55AAA: LitStr " WHERE recuespe.PeriInfo = "
  loc_A55AAD: ConcatStr
  loc_A55AAE: FStStrNoPop var_11C
  loc_A55AB1: FLdRfVar var_118
  loc_A55AB4: FLdPr Me
  loc_A55AB7: VCallAd Control_ID_cboPeriodo
  loc_A55ABA: FStAdFunc var_AC
  loc_A55ABD: FLdPr var_AC
  loc_A55AC0:  = Me.Text
  loc_A55AC5: ILdRf var_118
  loc_A55AC8: ConcatStr
  loc_A55AC9: FStStrNoPop var_120
  loc_A55ACC: ILdRf var_88
  loc_A55ACF: ConcatStr
  loc_A55AD0: FStStrNoPop var_124
  loc_A55AD3: LitStr " ORDER BY CodiCuco"
  loc_A55AD6: ConcatStr
  loc_A55AD7: FStStrNoPop var_128
  loc_A55ADA: FLdPr var_110
  loc_A55ADD: Call clsbase.RedefineRS(from_stack_1v)
  loc_A55AE2: FFreeStr var_C0 = "": var_D8 = "": var_DC = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = ""
  loc_A55AF7: FFree1Ad var_AC
  loc_A55AFA: FLdRfVar var_12C
  loc_A55AFD: FLdPr var_110
  loc_A55B00: from_stack_1 = clsbase.RecordCount
  loc_A55B05: ILdRf var_12C
  loc_A55B08: LitI4 0
  loc_A55B0D: EqI4
  loc_A55B0E: BranchF loc_A55B21
  loc_A55B11: LitI4 0
  loc_A55B16: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A55B19: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A55B1E: Branch loc_A55C41
  loc_A55B21: LitI2_Byte 0
  loc_A55B23: FLdPr Me
  loc_A55B26: MemStI2 global_84
  loc_A55B29: LitI4 0
  loc_A55B2E: LitI4 1
  loc_A55B33: FLdPr Me
  loc_A55B36: MemLdRfVar from_stack_1.global_80
  loc_A55B39: Redim
  loc_A55B43: FLdPr var_110
  loc_A55B46: Call clsbase.MoveFirst()
  loc_A55B4B: Call Proc_222_21_A0023C()
  loc_A55B50: FLdRfVar var_12E
  loc_A55B53: FLdPr var_110
  loc_A55B56: from_stack_1 = clsbase.EOF
  loc_A55B5B: FLdI2 var_12E
  loc_A55B5E: NotI4
  loc_A55B5F: BranchF loc_A55C33
  loc_A55B62: FLdRfVar var_BC
  loc_A55B65: FLdRfVar var_134
  loc_A55B68: LitVarStr var_98, "CodiCuco"
  loc_A55B6D: PopAdLdVar
  loc_A55B6E: FLdRfVar var_C4
  loc_A55B71: FLdRfVar var_AC
  loc_A55B74: FLdPr var_110
  loc_A55B77: from_stack_1v = clsbase.RsFrmGet()
  loc_A55B7C: FLdPr var_AC
  loc_A55B7F:  = Me.Fields
  loc_A55B84: FLdPr var_C4
  loc_A55B87: from_stack_2 = Me.Item(from_stack_1)
  loc_A55B8C: FLdPr var_134
  loc_A55B8F:  = Me.Value
  loc_A55B94: FLdRfVar var_BC
  loc_A55B97: FLdPr Me
  loc_A55B9A: MemLdI2 global_84
  loc_A55B9D: CI4UI1
  loc_A55B9E: FLdPr Me
  loc_A55BA1: MemLdStr global_80
  loc_A55BA4: Ary1LdPr
  loc_A55BA5: MemLdStr global_0
  loc_A55BA8: CVarStr var_A8
  loc_A55BAB: HardType
  loc_A55BAC: NeVarBool
  loc_A55BAE: FFreeAd var_AC = "": var_C4 = ""
  loc_A55BB7: FFree1Var var_BC = ""
  loc_A55BBA: BranchF loc_A55BC5
  loc_A55BBD: Call Proc_222_21_A0023C()
  loc_A55BC2: Branch loc_A55C30
  loc_A55BC5: FLdRfVar var_BC
  loc_A55BC8: FLdRfVar var_134
  loc_A55BCB: LitVarStr var_98, "CodiPart"
  loc_A55BD0: PopAdLdVar
  loc_A55BD1: FLdRfVar var_C4
  loc_A55BD4: FLdRfVar var_AC
  loc_A55BD7: FLdPr var_110
  loc_A55BDA: from_stack_1v = clsbase.RsFrmGet()
  loc_A55BDF: FLdPr var_AC
  loc_A55BE2:  = Me.Fields
  loc_A55BE7: FLdPr var_C4
  loc_A55BEA: from_stack_2 = Me.Item(from_stack_1)
  loc_A55BEF: FLdPr var_134
  loc_A55BF2:  = Me.Value
  loc_A55BF7: FLdRfVar var_BC
  loc_A55BFA: FLdPr Me
  loc_A55BFD: MemLdI2 global_86
  loc_A55C00: CI4UI1
  loc_A55C01: FLdPr Me
  loc_A55C04: MemLdI2 global_84
  loc_A55C07: CI4UI1
  loc_A55C08: FLdPr Me
  loc_A55C0B: MemLdStr global_80
  loc_A55C0E: Ary1LdPr
  loc_A55C0F: MemLdStr global_8
  loc_A55C12: Ary1LdPr
  loc_A55C13: MemLdStr global_0
  loc_A55C16: CVarStr var_A8
  loc_A55C19: HardType
  loc_A55C1A: NeVarBool
  loc_A55C1C: FFreeAd var_AC = "": var_C4 = ""
  loc_A55C25: FFree1Var var_BC = ""
  loc_A55C28: BranchF loc_A55C30
  loc_A55C2B: Call Proc_222_22_9E9848()
  loc_A55C30: Branch loc_A55B50
  loc_A55C33: LitNothing
  loc_A55C35: FStAd var_110 
  loc_A55C39: LitI2_Byte &HFF
  loc_A55C3B: FLdPr Me
  loc_A55C3E: MemStI2 bGenerado
  loc_A55C41: LitI4 0
  loc_A55C46: CI2I4
  loc_A55C47: FLdPr Me
  loc_A55C4A: Me.MousePointer = from_stack_1
  loc_A55C4F: LitVarStr var_98, vbNullString
  loc_A55C54: PopAdLdVar
  loc_A55C55: FLdPr Me
  loc_A55C58: VCallAd Control_ID_statusBar
  loc_A55C5B: FStAdFunc var_AC
  loc_A55C5E: FLdPr var_AC
  loc_A55C61: LateIdSt
  loc_A55C66: FFree1Ad var_AC
  loc_A55C69: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '9A1A6C
  'Data Table: 442A74
  loc_9A1A08: LitI4 0
  loc_9A1A0D: LitI4 3
  loc_9A1A12: FLdRfVar var_88
  loc_9A1A15: Redim
  loc_9A1A1F: FLdPr Me
  loc_9A1A22: VCallAd Control_ID_cboPeriodo
  loc_9A1A25: CVarAd
  loc_9A1A29: ParmAry1St
  loc_9A1A2F: FLdPr Me
  loc_9A1A32: VCallAd Control_ID_CodiCucoMsk
  loc_9A1A35: CVarAd
  loc_9A1A39: ParmAry1St
  loc_9A1A3F: FLdPr Me
  loc_9A1A42: VCallAd Control_ID_CodiCucoCmd
  loc_9A1A45: CVarAd
  loc_9A1A49: ParmAry1St
  loc_9A1A4F: FLdPr Me
  loc_9A1A52: VCallAd Control_ID_DetaCucoLbl
  loc_9A1A55: CVarAd
  loc_9A1A59: ParmAry1St
  loc_9A1A5F: FLdRfVar var_88
  loc_9A1A62: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1A67: FLdRfVar var_88
  loc_9A1A6A: Erase
  loc_9A1A6B: ExitProcHresult
End Sub

Private Function Proc_222_19_A73188() 'A73188
  'Data Table: 442A74
  loc_A72DE0: LitVarStr var_94, "<html>"
  loc_A72DE5: PopAdLdVar
  loc_A72DE6: FLdPr Me
  loc_A72DE9: MemLdRfVar from_stack_1.htmFile
  loc_A72DEC: LdPrVar
  loc_A72DEE: LateMemCall
  loc_A72DF4: LitVarStr var_94, "<head>"
  loc_A72DF9: PopAdLdVar
  loc_A72DFA: FLdPr Me
  loc_A72DFD: MemLdRfVar from_stack_1.htmFile
  loc_A72E00: LdPrVar
  loc_A72E02: LateMemCall
  loc_A72E08: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A72E0D: PopAdLdVar
  loc_A72E0E: FLdPr Me
  loc_A72E11: MemLdRfVar from_stack_1.htmFile
  loc_A72E14: LdPrVar
  loc_A72E16: LateMemCall
  loc_A72E1C: LitStr "<title>"
  loc_A72E1F: FLdRfVar var_A8
  loc_A72E22: FLdPr Me
  loc_A72E25:  = Me.Caption
  loc_A72E2A: ILdRf var_A8
  loc_A72E2D: ConcatStr
  loc_A72E2E: FStStrNoPop var_AC
  loc_A72E31: LitStr "</title>"
  loc_A72E34: ConcatStr
  loc_A72E35: CVarStr var_BC
  loc_A72E38: PopAdLdVar
  loc_A72E39: FLdPr Me
  loc_A72E3C: MemLdRfVar from_stack_1.htmFile
  loc_A72E3F: LdPrVar
  loc_A72E41: LateMemCall
  loc_A72E47: FFreeStr var_A8 = ""
  loc_A72E4E: FFree1Var var_BC = ""
  loc_A72E51: LitStr vbNullString
  loc_A72E54: ILdRf Me
  loc_A72E57: CastAd
  loc_A72E5A: FStAdFunc var_C0
  loc_A72E5D: FLdRfVar var_C0
  loc_A72E60: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A72E65: FFree1Ad var_C0
  loc_A72E68: LitI4 0
  loc_A72E6D: FStStrCopy var_AC
  loc_A72E70: FLdRfVar var_AC
  loc_A72E73: LitI4 0
  loc_A72E78: FStStrCopy var_A8
  loc_A72E7B: FLdRfVar var_A8
  loc_A72E7E: LitI2_Byte 0
  loc_A72E80: PopTmpLdAd2 var_C2
  loc_A72E83: FLdPr Me
  loc_A72E86: MemLdRfVar from_stack_1.htmFile
  loc_A72E89: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A72E8E: FFreeStr var_A8 = ""
  loc_A72E95: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A72E9A: PopAdLdVar
  loc_A72E9B: FLdPr Me
  loc_A72E9E: MemLdRfVar from_stack_1.htmFile
  loc_A72EA1: LdPrVar
  loc_A72EA3: LateMemCall
  loc_A72EA9: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A72EAE: PopAdLdVar
  loc_A72EAF: FLdPr Me
  loc_A72EB2: MemLdRfVar from_stack_1.htmFile
  loc_A72EB5: LdPrVar
  loc_A72EB7: LateMemCall
  loc_A72EBD: LitVarStr var_A4, "    <th colspan=""3"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><p>"
  loc_A72EC2: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A72EC7: FStVarCopyObj var_BC
  loc_A72ECA: FLdRfVar var_BC
  loc_A72ECD: FLdRfVar var_D4
  loc_A72ED0: ImpAdCallFPR4  = Ucase()
  loc_A72ED5: FLdRfVar var_D4
  loc_A72ED8: ConcatVar var_E4
  loc_A72EDC: LitVarStr var_F4, "</p>"
  loc_A72EE1: ConcatVar var_104
  loc_A72EE5: PopAdLdVar
  loc_A72EE6: FLdPr Me
  loc_A72EE9: MemLdRfVar from_stack_1.htmFile
  loc_A72EEC: LdPrVar
  loc_A72EEE: LateMemCall
  loc_A72EF4: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A72EFF: LitStr "  <p>"
  loc_A72F02: FLdRfVar var_A8
  loc_A72F05: FLdPr Me
  loc_A72F08:  = Me.Caption
  loc_A72F0D: ILdRf var_A8
  loc_A72F10: ConcatStr
  loc_A72F11: FStStrNoPop var_AC
  loc_A72F14: LitStr "</p></th>"
  loc_A72F17: ConcatStr
  loc_A72F18: CVarStr var_BC
  loc_A72F1B: PopAdLdVar
  loc_A72F1C: FLdPr Me
  loc_A72F1F: MemLdRfVar from_stack_1.htmFile
  loc_A72F22: LdPrVar
  loc_A72F24: LateMemCall
  loc_A72F2A: FFreeStr var_A8 = ""
  loc_A72F31: FFree1Var var_BC = ""
  loc_A72F34: LitVarStr var_94, "  </tr>"
  loc_A72F39: PopAdLdVar
  loc_A72F3A: FLdPr Me
  loc_A72F3D: MemLdRfVar from_stack_1.htmFile
  loc_A72F40: LdPrVar
  loc_A72F42: LateMemCall
  loc_A72F48: LitVarStr var_94, "  <tr><th colspan=""3""><hr></th></tr>"
  loc_A72F4D: PopAdLdVar
  loc_A72F4E: FLdPr Me
  loc_A72F51: MemLdRfVar from_stack_1.htmFile
  loc_A72F54: LdPrVar
  loc_A72F56: LateMemCall
  loc_A72F5C: LitVarStr var_94, "  <tr align=""left"">"
  loc_A72F61: PopAdLdVar
  loc_A72F62: FLdPr Me
  loc_A72F65: MemLdRfVar from_stack_1.htmFile
  loc_A72F68: LdPrVar
  loc_A72F6A: LateMemCall
  loc_A72F70: LitVarStr var_94, "    <th colspan=""3"">"
  loc_A72F75: PopAdLdVar
  loc_A72F76: FLdPr Me
  loc_A72F79: MemLdRfVar from_stack_1.htmFile
  loc_A72F7C: LdPrVar
  loc_A72F7E: LateMemCall
  loc_A72F84: LitStr "    Ejercicio: "
  loc_A72F87: FLdRfVar var_A8
  loc_A72F8A: FLdPr Me
  loc_A72F8D: VCallAd Control_ID_cboPeriodo
  loc_A72F90: FStAdFunc var_C0
  loc_A72F93: FLdPr var_C0
  loc_A72F96:  = Me.Text
  loc_A72F9B: ILdRf var_A8
  loc_A72F9E: ConcatStr
  loc_A72F9F: CVarStr var_BC
  loc_A72FA2: PopAdLdVar
  loc_A72FA3: FLdPr Me
  loc_A72FA6: MemLdRfVar from_stack_1.htmFile
  loc_A72FA9: LdPrVar
  loc_A72FAB: LateMemCall
  loc_A72FB1: FFree1Str var_A8
  loc_A72FB4: FFree1Ad var_C0
  loc_A72FB7: FFree1Var var_BC = ""
  loc_A72FBA: FLdPr Me
  loc_A72FBD: VCallAd Control_ID_CodiCucoMsk
  loc_A72FC0: FStAdFunc var_C0
  loc_A72FC3: FLdPr var_C0
  loc_A72FC6: LateIdLdVar var_BC DispID_0 0
  loc_A72FCD: CStrVarTmp
  loc_A72FCE: FStStrNoPop var_A8
  loc_A72FD1: LitStr vbNullString
  loc_A72FD4: NeStr
  loc_A72FD6: FFree1Str var_A8
  loc_A72FD9: FFree1Ad var_C0
  loc_A72FDC: FFree1Var var_BC = ""
  loc_A72FDF: BranchF loc_A730A9
  loc_A72FE2: FLdPr Me
  loc_A72FE5: VCallAd Control_ID_CodiCucoMsk
  loc_A72FE8: FStAdFunc var_124
  loc_A72FEB: FLdPr var_124
  loc_A72FEE: LateIdLdVar var_D4 DispID_22 0
  loc_A72FF5: PopAd
  loc_A72FF7: LitStr "      <br><strong>Cuenta Contable:</strong> "
  loc_A72FFA: FLdPr Me
  loc_A72FFD: VCallAd Control_ID_CodiCucoMsk
  loc_A73000: FStAdFunc var_C0
  loc_A73003: FLdPr var_C0
  loc_A73006: LateIdLdVar var_BC DispID_22 0
  loc_A7300D: CStrVarTmp
  loc_A7300E: FStStrNoPop var_A8
  loc_A73011: ConcatStr
  loc_A73012: FStStrNoPop var_AC
  loc_A73015: LitStr " - "
  loc_A73018: ConcatStr
  loc_A73019: FStStrNoPop var_120
  loc_A7301C: FLdRfVar var_11C
  loc_A7301F: FLdPr Me
  loc_A73022: VCallAd Control_ID_DetaCucoLbl
  loc_A73025: FStAdFunc var_118
  loc_A73028: FLdPr var_118
  loc_A7302B:  = Me.Caption
  loc_A73030: ILdRf var_11C
  loc_A73033: ConcatStr
  loc_A73034: CVarStr var_148
  loc_A73037: LitVarStr var_F4, vbNullString
  loc_A7303C: FStVarCopyObj var_104
  loc_A7303F: FLdRfVar var_104
  loc_A73042: LitVarStr var_A4, "..."
  loc_A73047: FStVarCopyObj var_E4
  loc_A7304A: FLdRfVar var_E4
  loc_A7304D: FLdRfVar var_D4
  loc_A73050: CStrVarTmp
  loc_A73051: FStStrNoPop var_128
  loc_A73054: FnLenStr
  loc_A73055: LitI4 &HA
  loc_A7305A: LtI4
  loc_A7305B: CVarBoolI2 var_94
  loc_A7305F: FLdRfVar var_138
  loc_A73062: ImpAdCallFPR4  = IIf(, , )
  loc_A73067: FLdRfVar var_138
  loc_A7306A: ConcatVar var_158
  loc_A7306E: PopAdLdVar
  loc_A7306F: FLdPr Me
  loc_A73072: MemLdRfVar from_stack_1.htmFile
  loc_A73075: LdPrVar
  loc_A73077: LateMemCall
  loc_A7307D: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_A7308A: FFreeAd var_C0 = "": var_118 = ""
  loc_A73093: FFreeVar var_BC = "": var_D4 = "": var_94 = "": var_E4 = "": var_104 = "": var_148 = "": var_138 = ""
  loc_A730A6: Branch loc_A730BD
  loc_A730A9: LitVarStr var_94, "   &nbsp;"
  loc_A730AE: PopAdLdVar
  loc_A730AF: FLdPr Me
  loc_A730B2: MemLdRfVar from_stack_1.htmFile
  loc_A730B5: LdPrVar
  loc_A730B7: LateMemCall
  loc_A730BD: LitVarStr var_94, "    </th>"
  loc_A730C2: PopAdLdVar
  loc_A730C3: FLdPr Me
  loc_A730C6: MemLdRfVar from_stack_1.htmFile
  loc_A730C9: LdPrVar
  loc_A730CB: LateMemCall
  loc_A730D1: LitVarStr var_94, "  </tr>"
  loc_A730D6: PopAdLdVar
  loc_A730D7: FLdPr Me
  loc_A730DA: MemLdRfVar from_stack_1.htmFile
  loc_A730DD: LdPrVar
  loc_A730DF: LateMemCall
  loc_A730E5: LitVarStr var_94, "</table>"
  loc_A730EA: PopAdLdVar
  loc_A730EB: FLdPr Me
  loc_A730EE: MemLdRfVar from_stack_1.htmFile
  loc_A730F1: LdPrVar
  loc_A730F3: LateMemCall
  loc_A730F9: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A730FE: PopAdLdVar
  loc_A730FF: FLdPr Me
  loc_A73102: MemLdRfVar from_stack_1.htmFile
  loc_A73105: LdPrVar
  loc_A73107: LateMemCall
  loc_A7310D: LitVarStr var_94, "  <THEAD>"
  loc_A73112: PopAdLdVar
  loc_A73113: FLdPr Me
  loc_A73116: MemLdRfVar from_stack_1.htmFile
  loc_A73119: LdPrVar
  loc_A7311B: LateMemCall
  loc_A73121: LitVarStr var_94, " <tr align=""center"" valign=""top"" class=""Encabezado"">"
  loc_A73126: PopAdLdVar
  loc_A73127: FLdPr Me
  loc_A7312A: MemLdRfVar from_stack_1.htmFile
  loc_A7312D: LdPrVar
  loc_A7312F: LateMemCall
  loc_A73135: LitVarStr var_94, "   <th>Cuenta Contable</th>"
  loc_A7313A: PopAdLdVar
  loc_A7313B: FLdPr Me
  loc_A7313E: MemLdRfVar from_stack_1.htmFile
  loc_A73141: LdPrVar
  loc_A73143: LateMemCall
  loc_A73149: LitVarStr var_94, "   <th>Partida</th>"
  loc_A7314E: PopAdLdVar
  loc_A7314F: FLdPr Me
  loc_A73152: MemLdRfVar from_stack_1.htmFile
  loc_A73155: LdPrVar
  loc_A73157: LateMemCall
  loc_A7315D: LitVarStr var_94, "  </tr>"
  loc_A73162: PopAdLdVar
  loc_A73163: FLdPr Me
  loc_A73166: MemLdRfVar from_stack_1.htmFile
  loc_A73169: LdPrVar
  loc_A7316B: LateMemCall
  loc_A73171: LitVarStr var_94, "  </THEAD>"
  loc_A73176: PopAdLdVar
  loc_A73177: FLdPr Me
  loc_A7317A: MemLdRfVar from_stack_1.htmFile
  loc_A7317D: LdPrVar
  loc_A7317F: LateMemCall
  loc_A73185: ExitProcHresult
End Function

Private Function Proc_222_20_982460() '982460
  'Data Table: 442A74
  loc_982420: LitVarStr var_94, "</table>"
  loc_982425: PopAdLdVar
  loc_982426: FLdPr Me
  loc_982429: MemLdRfVar from_stack_1.htmFile
  loc_98242C: LdPrVar
  loc_98242E: LateMemCall
  loc_982434: LitVarStr var_94, "</body>"
  loc_982439: PopAdLdVar
  loc_98243A: FLdPr Me
  loc_98243D: MemLdRfVar from_stack_1.htmFile
  loc_982440: LdPrVar
  loc_982442: LateMemCall
  loc_982448: LitVarStr var_94, "</html>"
  loc_98244D: PopAdLdVar
  loc_98244E: FLdPr Me
  loc_982451: MemLdRfVar from_stack_1.htmFile
  loc_982454: LdPrVar
  loc_982456: LateMemCall
  loc_98245C: ExitProcHresult
End Function

Private Function Proc_222_21_A0023C() 'A0023C
  'Data Table: 442A74
  loc_A000E8: FLdPr Me
  loc_A000EB: MemLdI2 global_84
  loc_A000EE: LitI2_Byte 1
  loc_A000F0: AddI2
  loc_A000F1: FLdPr Me
  loc_A000F4: MemStI2 global_84
  loc_A000F7: LitI2_Byte 0
  loc_A000F9: FLdPr Me
  loc_A000FC: MemStI2 global_86
  loc_A000FF: LitI4 0
  loc_A00104: FLdPr Me
  loc_A00107: MemLdI2 global_84
  loc_A0010A: CI4UI1
  loc_A0010B: FLdPr Me
  loc_A0010E: MemLdRfVar from_stack_1.global_80
  loc_A00111: RedimPreserve
  loc_A0011B: FLdPr Me
  loc_A0011E: MemLdI2 global_84
  loc_A00121: CI4UI1
  loc_A00122: FLdPr Me
  loc_A00125: MemLdStr global_80
  loc_A00128: AryLock
  loc_A0012B: Ary1LdRf
  loc_A0012C: FStR4 var_8C
  loc_A0012F: FLdRfVar var_A8
  loc_A00132: LitVarStr var_A4, "CodiCuco"
  loc_A00137: PopAdLdVar
  loc_A00138: FLdRfVar var_94
  loc_A0013B: FLdRfVar var_90
  loc_A0013E: FLdPr Me
  loc_A00141: MemLdRfVar from_stack_1.global_72
  loc_A00144: NewIfNullPr clsbase
  loc_A00147: from_stack_1v = clsbase.RsFrmGet()
  loc_A0014C: FLdPr var_90
  loc_A0014F:  = Me.Fields
  loc_A00154: FLdPr var_94
  loc_A00157: from_stack_2 = Me.Item(from_stack_1)
  loc_A0015C: LitI2_Byte 0
  loc_A0015E: LitVar_Missing var_D8
  loc_A00161: LitI2_Byte 0
  loc_A00163: FLdZeroAd var_A8
  loc_A00166: CVarAd
  loc_A0016A: PopAdLdVar
  loc_A0016B: FMemLdRf 0
  loc_A00170: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A00175: FFreeAd var_90 = ""
  loc_A0017C: FFreeVar var_B8 = ""
  loc_A00183: FLdRfVar var_A8
  loc_A00186: LitVarStr var_A4, "DetaCuco"
  loc_A0018B: PopAdLdVar
  loc_A0018C: FLdRfVar var_94
  loc_A0018F: FLdRfVar var_90
  loc_A00192: FLdPr Me
  loc_A00195: MemLdRfVar from_stack_1.global_72
  loc_A00198: NewIfNullPr clsbase
  loc_A0019B: from_stack_1v = clsbase.RsFrmGet()
  loc_A001A0: FLdPr var_90
  loc_A001A3:  = Me.Fields
  loc_A001A8: FLdPr var_94
  loc_A001AB: from_stack_2 = Me.Item(from_stack_1)
  loc_A001B0: LitI2_Byte 0
  loc_A001B2: LitVar_Missing var_D8
  loc_A001B5: LitI2_Byte 0
  loc_A001B7: FLdZeroAd var_A8
  loc_A001BA: CVarAd
  loc_A001BE: PopAdLdVar
  loc_A001BF: FMemLdRf 0
  loc_A001C4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A001C9: FFreeAd var_90 = ""
  loc_A001D0: FFreeVar var_B8 = ""
  loc_A001D7: FLdRfVar var_A8
  loc_A001DA: LitVarStr var_A4, "RowSpan"
  loc_A001DF: PopAdLdVar
  loc_A001E0: FLdRfVar var_94
  loc_A001E3: FLdRfVar var_90
  loc_A001E6: FLdPr Me
  loc_A001E9: MemLdRfVar from_stack_1.global_72
  loc_A001EC: NewIfNullPr clsbase
  loc_A001EF: from_stack_1v = clsbase.RsFrmGet()
  loc_A001F4: FLdPr var_90
  loc_A001F7:  = Me.Fields
  loc_A001FC: FLdPr var_94
  loc_A001FF: from_stack_2 = Me.Item(from_stack_1)
  loc_A00204: LitI2_Byte 0
  loc_A00206: LitVar_Missing var_D8
  loc_A00209: LitI2_Byte 0
  loc_A0020B: FLdZeroAd var_A8
  loc_A0020E: CVarAd
  loc_A00212: PopAdLdVar
  loc_A00213: FMemLdRf 0
  loc_A00218: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0021D: FFreeAd var_90 = ""
  loc_A00224: FFreeVar var_B8 = ""
  loc_A0022B: LitI4 0
  loc_A00230: FStR4 var_8C
  loc_A00233: AryUnlock
  loc_A00236: Call Proc_222_22_9E9848()
  loc_A0023B: ExitProcHresult
End Function

Private Function Proc_222_22_9E9848() '9E9848
  'Data Table: 442A74
  loc_9E9728: FLdPr Me
  loc_9E972B: MemLdI2 global_86
  loc_9E972E: LitI2_Byte 1
  loc_9E9730: AddI2
  loc_9E9731: FLdPr Me
  loc_9E9734: MemStI2 global_86
  loc_9E9737: LitI4 0
  loc_9E973C: FLdPr Me
  loc_9E973F: MemLdI2 global_86
  loc_9E9742: CI4UI1
  loc_9E9743: FLdPr Me
  loc_9E9746: MemLdI2 global_84
  loc_9E9749: CI4UI1
  loc_9E974A: FLdPr Me
  loc_9E974D: MemLdStr global_80
  loc_9E9750: Ary1LdPr
  loc_9E9751: MemLdRfVar from_stack_1.global_8
  loc_9E9754: RedimPreserve
  loc_9E975E: FLdPr Me
  loc_9E9761: MemLdI2 global_86
  loc_9E9764: CI4UI1
  loc_9E9765: FLdPr Me
  loc_9E9768: MemLdI2 global_84
  loc_9E976B: CI4UI1
  loc_9E976C: FLdPr Me
  loc_9E976F: MemLdStr global_80
  loc_9E9772: AryLock
  loc_9E9775: Ary1LdPr
  loc_9E9776: MemLdStr global_8
  loc_9E9779: AryLock
  loc_9E977C: Ary1LdRf
  loc_9E977D: FStR4 var_90
  loc_9E9780: FLdRfVar var_AC
  loc_9E9783: LitVarStr var_A8, "CodiPart"
  loc_9E9788: PopAdLdVar
  loc_9E9789: FLdRfVar var_98
  loc_9E978C: FLdRfVar var_94
  loc_9E978F: FLdPr Me
  loc_9E9792: MemLdRfVar from_stack_1.global_72
  loc_9E9795: NewIfNullPr clsbase
  loc_9E9798: from_stack_1v = clsbase.RsFrmGet()
  loc_9E979D: FLdPr var_94
  loc_9E97A0:  = Me.Fields
  loc_9E97A5: FLdPr var_98
  loc_9E97A8: from_stack_2 = Me.Item(from_stack_1)
  loc_9E97AD: LitI2_Byte 0
  loc_9E97AF: LitVar_Missing var_DC
  loc_9E97B2: LitI2_Byte 0
  loc_9E97B4: FLdZeroAd var_AC
  loc_9E97B7: CVarAd
  loc_9E97BB: PopAdLdVar
  loc_9E97BC: FMemLdRf 0
  loc_9E97C1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E97C6: FFreeAd var_94 = ""
  loc_9E97CD: FFreeVar var_BC = ""
  loc_9E97D4: FLdRfVar var_AC
  loc_9E97D7: LitVarStr var_A8, "DetaPart"
  loc_9E97DC: PopAdLdVar
  loc_9E97DD: FLdRfVar var_98
  loc_9E97E0: FLdRfVar var_94
  loc_9E97E3: FLdPr Me
  loc_9E97E6: MemLdRfVar from_stack_1.global_72
  loc_9E97E9: NewIfNullPr clsbase
  loc_9E97EC: from_stack_1v = clsbase.RsFrmGet()
  loc_9E97F1: FLdPr var_94
  loc_9E97F4:  = Me.Fields
  loc_9E97F9: FLdPr var_98
  loc_9E97FC: from_stack_2 = Me.Item(from_stack_1)
  loc_9E9801: LitI2_Byte 0
  loc_9E9803: LitVar_Missing var_DC
  loc_9E9806: LitI2_Byte 0
  loc_9E9808: FLdZeroAd var_AC
  loc_9E980B: CVarAd
  loc_9E980F: PopAdLdVar
  loc_9E9810: FMemLdRf 0
  loc_9E9815: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E981A: FFreeAd var_94 = ""
  loc_9E9821: FFreeVar var_BC = ""
  loc_9E9828: LitI4 0
  loc_9E982D: FStR4 var_90
  loc_9E9830: AryUnlock
  loc_9E9833: AryUnlock
  loc_9E9836: FLdPr Me
  loc_9E9839: MemLdRfVar from_stack_1.global_72
  loc_9E983C: NewIfNullPr clsbase
  loc_9E983F: Call clsbase.MoveSiguiente()
  loc_9E9844: ExitProcHresult
End Function
