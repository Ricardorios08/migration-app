VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodelManualdeCuentas
  Caption = "Listado del Manual de Cuentas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodelManualdeCuentas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7080
  ClientHeight = 3495
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3240
    Width = 7080
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptListadodelManualdeCuentas.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5640
    Top = 2280
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptListadodelManualdeCuentas.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodelManualdeCuentas.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2040
    Width = 1815
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 3015
    Height = 1095
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6855
    Height = 1935
    TabIndex = 0
    Begin VB.CommandButton cmdCodiCuco
      Left = 3240
      Top = 1080
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptListadodelManualdeCuentas.frx":0C00
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 600
      Width = 1095
      Height = 315
      TabIndex = 3
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5160
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox mskCodiCuco
      Left = 1560
      Top = 1080
      Width = 1575
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptListadodelManualdeCuentas.frx":0CFA
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 195
      Top = 1080
      Width = 1230
      Height = 195
      TabIndex = 4
    End
    Begin VB.Label lblDetaCuco
      Left = 3720
      Top = 1080
      Width = 2895
      Height = 375
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 840
      Top = 600
      Width = 585
      Height = 195
      TabIndex = 2
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5760
    Top = 2520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptListadodelManualdeCuentas.frx":0D7A
  End
End

Attribute VB_Name = "rptListadodelManualdeCuentas"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00595938
  bStruc(32) As Byte ' String fields: 8
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988B64
  'Data Table: 440EB0
  loc_988B2C: FLdPr Me
  loc_988B2F: VCallAd Control_ID_statusBar
  loc_988B32: FStAdFunc var_88
  loc_988B35: FLdPr var_88
  loc_988B38: LateIdLdVar var_98 DispID_1 0
  loc_988B3F: CStrVarTmp
  loc_988B40: CVarStr var_A8
  loc_988B43: PopAdLdVar
  loc_988B44: FLdPr Me
  loc_988B47: VCallAd Control_ID_statusBar
  loc_988B4A: FStAdFunc var_BC
  loc_988B4D: FLdPr var_BC
  loc_988B50: LateIdSt
  loc_988B55: FFreeAd var_88 = ""
  loc_988B5C: FFreeVar var_98 = ""
  loc_988B63: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '955F90
  'Data Table: 440EB0
  loc_955F78: LitI2_Byte 0
  loc_955F7A: ILdRf Me
  loc_955F7D: CastAd
  loc_955F80: FStAdFunc var_88
  loc_955F83: FLdRfVar var_88
  loc_955F86: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_955F8B: FFree1Ad var_88
  loc_955F8E: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95CA24
  'Data Table: 440EB0
  loc_95CA0C: ILdRf Me
  loc_95CA0F: CastAd
  loc_95CA12: FStAdFunc var_88
  loc_95CA15: FLdRfVar var_88
  loc_95CA18: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95CA1D: FFree1Ad var_88
  loc_95CA20: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A5B4
  'Data Table: 440EB0
  loc_97A584: LitVarStr var_94, "Cerrando..."
  loc_97A589: PopAdLdVar
  loc_97A58A: FLdPr Me
  loc_97A58D: VCallAd Control_ID_statusBar
  loc_97A590: FStAdFunc var_A8
  loc_97A593: FLdPr var_A8
  loc_97A596: LateIdSt
  loc_97A59B: FFree1Ad var_A8
  loc_97A59E: ILdRf Me
  loc_97A5A1: FStAdNoPop
  loc_97A5A5: ImpAdLdRf MemVar_C44F9C
  loc_97A5A8: NewIfNullPr Me
  loc_97A5AB: Me.Global.Unload from_stack_1
  loc_97A5B0: FFree1Ad var_A8
  loc_97A5B3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A1710
  'Data Table: 440EB0
  loc_9A1698: LitI2_Byte 0
  loc_9A169A: FLdPr Me
  loc_9A169D: MemStI2 bGenerado
  loc_9A16A0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A16A5: ImpAdLdI2 MemVar_C3D064
  loc_9A16A8: CStrUI1
  loc_9A16AA: FStStrNoPop var_88
  loc_9A16AD: FLdPr Me
  loc_9A16B0: VCallAd Control_ID_cboPeriodo
  loc_9A16B3: FStAdFunc var_8C
  loc_9A16B6: FLdPr var_8C
  loc_9A16B9: Me.Text = from_stack_1
  loc_9A16BE: FFree1Str var_88
  loc_9A16C1: FFree1Ad var_8C
  loc_9A16C4: LitVarStr var_9C, vbNullString
  loc_9A16C9: PopAdLdVar
  loc_9A16CA: FLdPr Me
  loc_9A16CD: VCallAd Control_ID_mskCodiCuco
  loc_9A16D0: FStAdFunc var_8C
  loc_9A16D3: FLdPr var_8C
  loc_9A16D6: LateIdSt
  loc_9A16DB: FFree1Ad var_8C
  loc_9A16DE: LitStr vbNullString
  loc_9A16E1: FLdPr Me
  loc_9A16E4: VCallAd Control_ID_lblDetaCuco
  loc_9A16E7: FStAdFunc var_8C
  loc_9A16EA: FLdPr var_8C
  loc_9A16ED: Me.Caption = from_stack_1
  loc_9A16F2: FFree1Ad var_8C
  loc_9A16F5: Call HabilitarCriterio()
  loc_9A16FA: ILdRf Me
  loc_9A16FD: CastAd
  loc_9A1700: FStAdFunc var_8C
  loc_9A1703: FLdRfVar var_8C
  loc_9A1706: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A170B: FFree1Ad var_8C
  loc_9A170E: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95CE00
  'Data Table: 440EB0
  loc_95CDE8: ILdRf Me
  loc_95CDEB: CastAd
  loc_95CDEE: FStAdFunc var_88
  loc_95CDF1: FLdRfVar var_88
  loc_95CDF4: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95CDF9: FFree1Ad var_88
  loc_95CDFC: ExitProcHresult
End Sub

Private Sub mskCodiCuco_UnknownEvent_1 'A0ED3C
  'Data Table: 440EB0
  loc_A0EBE4: LitStr "SELECT DetaCuco FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_A0EBE7: FLdRfVar var_8C
  loc_A0EBEA: FLdPr Me
  loc_A0EBED: VCallAd Control_ID_cboPeriodo
  loc_A0EBF0: FStAdFunc var_88
  loc_A0EBF3: FLdPr var_88
  loc_A0EBF6:  = Me.Text
  loc_A0EBFB: ILdRf var_8C
  loc_A0EBFE: ConcatStr
  loc_A0EBFF: FStStrNoPop var_90
  loc_A0EC02: LitStr " AND CodiCuco LIKE '"
  loc_A0EC05: ConcatStr
  loc_A0EC06: FStStrNoPop var_A8
  loc_A0EC09: FLdPr Me
  loc_A0EC0C: VCallAd Control_ID_mskCodiCuco
  loc_A0EC0F: FStAdFunc var_94
  loc_A0EC12: FLdPr var_94
  loc_A0EC15: LateIdLdVar var_A4 DispID_20 0
  loc_A0EC1C: CStrVarTmp
  loc_A0EC1D: FStStrNoPop var_AC
  loc_A0EC20: ConcatStr
  loc_A0EC21: FStStrNoPop var_B0
  loc_A0EC24: LitStr Chr(37) & "'"
  loc_A0EC27: ConcatStr
  loc_A0EC28: FStStrNoPop var_B4
  loc_A0EC2B: FLdPr Me
  loc_A0EC2E: MemLdRfVar from_stack_1.global_76
  loc_A0EC31: NewIfNullPr clscuentacontable
  loc_A0EC34: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A0EC39: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0EC48: FFreeAd var_88 = ""
  loc_A0EC4F: FFree1Var var_A4 = ""
  loc_A0EC52: FLdRfVar var_B8
  loc_A0EC55: FLdPr Me
  loc_A0EC58: MemLdRfVar from_stack_1.global_76
  loc_A0EC5B: NewIfNullPr clscuentacontable
  loc_A0EC5E: from_stack_1 = clscuentacontable.RecordCount
  loc_A0EC63: ILdRf var_B8
  loc_A0EC66: FStR4 var_BC
  loc_A0EC69: ILdRf var_BC
  loc_A0EC6C: LitI4 0
  loc_A0EC71: EqI4
  loc_A0EC72: BranchF loc_A0EC8F
  loc_A0EC75: LitStr "0 registros encontrados"
  loc_A0EC78: FLdPr Me
  loc_A0EC7B: VCallAd Control_ID_lblDetaCuco
  loc_A0EC7E: FStAdFunc var_88
  loc_A0EC81: FLdPr var_88
  loc_A0EC84: Me.Caption = from_stack_1
  loc_A0EC89: FFree1Ad var_88
  loc_A0EC8C: Branch loc_A0ED3A
  loc_A0EC8F: ILdRf var_BC
  loc_A0EC92: LitI4 1
  loc_A0EC97: EqI4
  loc_A0EC98: BranchF loc_A0ECFF
  loc_A0EC9B: FLdRfVar var_A4
  loc_A0EC9E: FLdRfVar var_D0
  loc_A0ECA1: LitVarStr var_CC, "DetaCuco"
  loc_A0ECA6: PopAdLdVar
  loc_A0ECA7: FLdRfVar var_94
  loc_A0ECAA: FLdRfVar var_88
  loc_A0ECAD: FLdPr Me
  loc_A0ECB0: MemLdRfVar from_stack_1.global_76
  loc_A0ECB3: NewIfNullPr clscuentacontable
  loc_A0ECB6: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A0ECBB: FLdPr var_88
  loc_A0ECBE:  = Me.Fields
  loc_A0ECC3: FLdPr var_94
  loc_A0ECC6: from_stack_2 = Me.Item(from_stack_1)
  loc_A0ECCB: FLdPr var_D0
  loc_A0ECCE:  = Me.Value
  loc_A0ECD3: FLdRfVar var_A4
  loc_A0ECD6: CStrVarTmp
  loc_A0ECD7: FStStrNoPop var_8C
  loc_A0ECDA: FLdPr Me
  loc_A0ECDD: VCallAd Control_ID_lblDetaCuco
  loc_A0ECE0: FStAdFunc var_D4
  loc_A0ECE3: FLdPr var_D4
  loc_A0ECE6: Me.Caption = from_stack_1
  loc_A0ECEB: FFree1Str var_8C
  loc_A0ECEE: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0ECF9: FFree1Var var_A4 = ""
  loc_A0ECFC: Branch loc_A0ED3A
  loc_A0ECFF: FLdRfVar var_B8
  loc_A0ED02: FLdPr Me
  loc_A0ED05: MemLdRfVar from_stack_1.global_76
  loc_A0ED08: NewIfNullPr clscuentacontable
  loc_A0ED0B: from_stack_1 = clscuentacontable.RecordCount
  loc_A0ED10: ILdRf var_B8
  loc_A0ED13: CStrI4
  loc_A0ED15: FStStrNoPop var_8C
  loc_A0ED18: LitStr " cuentas encontradas"
  loc_A0ED1B: ConcatStr
  loc_A0ED1C: FStStrNoPop var_90
  loc_A0ED1F: FLdPr Me
  loc_A0ED22: VCallAd Control_ID_lblDetaCuco
  loc_A0ED25: FStAdFunc var_88
  loc_A0ED28: FLdPr var_88
  loc_A0ED2B: Me.Caption = from_stack_1
  loc_A0ED30: FFreeStr var_8C = ""
  loc_A0ED37: FFree1Ad var_88
  loc_A0ED3A: ExitProcHresult
End Sub

Private Sub cmdCodiCuco_Click() '9FDF40
  'Data Table: 440EB0
  loc_9FDDFC: FLdRfVar var_8C
  loc_9FDDFF: FLdPr Me
  loc_9FDE02: VCallAd Control_ID_cboPeriodo
  loc_9FDE05: FStAdFunc var_88
  loc_9FDE08: FLdPr var_88
  loc_9FDE0B:  = Me.Text
  loc_9FDE10: ILdRf var_8C
  loc_9FDE13: CI2Str
  loc_9FDE15: ImpAdLdRf MemVar_C3D6C0
  loc_9FDE18: NewIfNullPr bscCuentaContable
  loc_9FDE1B: Call bscCuentaContable.iPeriInfoPut(from_stack_1v)
  loc_9FDE20: FFree1Str var_8C
  loc_9FDE23: FFree1Ad var_88
  loc_9FDE26: LitVar_Missing var_AC
  loc_9FDE29: PopAdLdVar
  loc_9FDE2A: LitVarI4
  loc_9FDE32: PopAdLdVar
  loc_9FDE33: ImpAdLdRf MemVar_C3D6C0
  loc_9FDE36: NewIfNullPr bscCuentaContable
  loc_9FDE39: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9FDE3E: FLdRfVar var_B0
  loc_9FDE41: FLdRfVar var_88
  loc_9FDE44: ImpAdLdRf MemVar_C3D6C0
  loc_9FDE47: NewIfNullPr bscCuentaContable
  loc_9FDE4A: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FDE4F: FLdPr var_88
  loc_9FDE52: from_stack_1 = clsbase.RecordCount
  loc_9FDE57: ILdRf var_B0
  loc_9FDE5A: LitI4 0
  loc_9FDE5F: GtI4
  loc_9FDE60: FFree1Ad var_88
  loc_9FDE63: BranchF loc_9FDF3E
  loc_9FDE66: FLdRfVar var_CC
  loc_9FDE69: FLdRfVar var_BC
  loc_9FDE6C: LitVarStr var_9C, "CodiCuco"
  loc_9FDE71: PopAdLdVar
  loc_9FDE72: FLdRfVar var_B8
  loc_9FDE75: FLdRfVar var_B4
  loc_9FDE78: FLdRfVar var_88
  loc_9FDE7B: ImpAdLdRf MemVar_C3D6C0
  loc_9FDE7E: NewIfNullPr bscCuentaContable
  loc_9FDE81: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FDE86: FLdPr var_88
  loc_9FDE89: from_stack_1v = clsbase.RsFrmGet()
  loc_9FDE8E: FLdPr var_B4
  loc_9FDE91:  = Me.Fields
  loc_9FDE96: FLdPr var_B8
  loc_9FDE99: from_stack_2 = Me.Item(from_stack_1)
  loc_9FDE9E: FLdPr var_BC
  loc_9FDEA1:  = Me.Value
  loc_9FDEA6: FLdRfVar var_CC
  loc_9FDEA9: CStrVarTmp
  loc_9FDEAA: CVarStr var_DC
  loc_9FDEAD: PopAdLdVar
  loc_9FDEAE: FLdPr Me
  loc_9FDEB1: VCallAd Control_ID_mskCodiCuco
  loc_9FDEB4: FStAdFunc var_E0
  loc_9FDEB7: FLdPr var_E0
  loc_9FDEBA: LateIdSt
  loc_9FDEBF: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9FDECC: FFreeVar var_CC = ""
  loc_9FDED3: FLdRfVar var_CC
  loc_9FDED6: FLdRfVar var_BC
  loc_9FDED9: LitVarStr var_9C, "DetaCuco"
  loc_9FDEDE: PopAdLdVar
  loc_9FDEDF: FLdRfVar var_B8
  loc_9FDEE2: FLdRfVar var_B4
  loc_9FDEE5: FLdRfVar var_88
  loc_9FDEE8: ImpAdLdRf MemVar_C3D6C0
  loc_9FDEEB: NewIfNullPr bscCuentaContable
  loc_9FDEEE: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FDEF3: FLdPr var_88
  loc_9FDEF6: from_stack_1v = clsbase.RsFrmGet()
  loc_9FDEFB: FLdPr var_B4
  loc_9FDEFE:  = Me.Fields
  loc_9FDF03: FLdPr var_B8
  loc_9FDF06: from_stack_2 = Me.Item(from_stack_1)
  loc_9FDF0B: FLdPr var_BC
  loc_9FDF0E:  = Me.Value
  loc_9FDF13: FLdRfVar var_CC
  loc_9FDF16: CStrVarTmp
  loc_9FDF17: FStStrNoPop var_8C
  loc_9FDF1A: FLdPr Me
  loc_9FDF1D: VCallAd Control_ID_lblDetaCuco
  loc_9FDF20: FStAdFunc var_E0
  loc_9FDF23: FLdPr var_E0
  loc_9FDF26: Me.Caption = from_stack_1
  loc_9FDF2B: FFree1Str var_8C
  loc_9FDF2E: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9FDF3B: FFree1Var var_CC = ""
  loc_9FDF3E: ExitProcHresult
End Sub

Private Sub Form_Load() '9D6184
  'Data Table: 440EB0
  loc_9D6098: LitI2_Byte &HFF
  loc_9D609A: ImpAdStI2 MemVar_C3D840
  loc_9D609D: ILdRf Me
  loc_9D60A0: CastAd
  loc_9D60A3: FStAdFunc var_88
  loc_9D60A6: FLdRfVar var_88
  loc_9D60A9: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D60AE: FFree1Ad var_88
  loc_9D60B1: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D60B4: FLdPr Me
  loc_9D60B7: MemLdRfVar from_stack_1.global_72
  loc_9D60BA: NewIfNullPr clsperiodo
  loc_9D60BD: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D60C2: FLdRfVar var_8C
  loc_9D60C5: FLdPr Me
  loc_9D60C8: MemLdRfVar from_stack_1.global_72
  loc_9D60CB: NewIfNullPr clsperiodo
  loc_9D60CE: from_stack_1 = clsperiodo.RecordCount
  loc_9D60D3: ILdRf var_8C
  loc_9D60D6: LitI4 0
  loc_9D60DB: GtI4
  loc_9D60DC: BranchF loc_9D617B
  loc_9D60DF: FLdPr Me
  loc_9D60E2: MemLdRfVar from_stack_1.global_72
  loc_9D60E5: NewIfNullPr clsperiodo
  loc_9D60E8: Call clsperiodo.MoveFirst()
  loc_9D60ED: FLdRfVar var_8E
  loc_9D60F0: FLdPr Me
  loc_9D60F3: MemLdRfVar from_stack_1.global_72
  loc_9D60F6: NewIfNullPr clsperiodo
  loc_9D60F9: from_stack_1 = clsperiodo.EOF
  loc_9D60FE: FLdI2 var_8E
  loc_9D6101: NotI4
  loc_9D6102: BranchF loc_9D617B
  loc_9D6105: LitVar_Missing var_CC
  loc_9D6108: PopAdLdVar
  loc_9D6109: FLdRfVar var_B8
  loc_9D610C: FLdRfVar var_A8
  loc_9D610F: LitVarStr var_A4, "PeriInfo"
  loc_9D6114: PopAdLdVar
  loc_9D6115: FLdRfVar var_94
  loc_9D6118: FLdRfVar var_88
  loc_9D611B: FLdPr Me
  loc_9D611E: MemLdRfVar from_stack_1.global_72
  loc_9D6121: NewIfNullPr clsperiodo
  loc_9D6124: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D6129: FLdPr var_88
  loc_9D612C:  = Me.Fields
  loc_9D6131: FLdPr var_94
  loc_9D6134: from_stack_2 = Me.Item(from_stack_1)
  loc_9D6139: FLdPr var_A8
  loc_9D613C:  = Me.Value
  loc_9D6141: FLdRfVar var_B8
  loc_9D6144: CStrVarTmp
  loc_9D6145: FStStrNoPop var_BC
  loc_9D6148: FLdPr Me
  loc_9D614B: VCallAd Control_ID_cboPeriodo
  loc_9D614E: FStAdFunc var_D0
  loc_9D6151: FLdPr var_D0
  loc_9D6154: Me.AddItem from_stack_1, from_stack_2
  loc_9D6159: FFree1Str var_BC
  loc_9D615C: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D6167: FFree1Var var_B8 = ""
  loc_9D616A: FLdPr Me
  loc_9D616D: MemLdRfVar from_stack_1.global_72
  loc_9D6170: NewIfNullPr clsperiodo
  loc_9D6173: Call clsperiodo.MoveSiguiente()
  loc_9D6178: Branch loc_9D60ED
  loc_9D617B: Call cmdNueva_Click()
  loc_9D6180: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95BA1C
  'Data Table: 440EB0
  loc_95BA04: FLdPr Me
  loc_95BA07: VCallAd Control_ID_wbbReporte
  loc_95BA0A: FStAdFunc var_88
  loc_95BA0D: FLdRfVar var_88
  loc_95BA10: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95BA15: FFree1Ad var_88
  loc_95BA18: ExitProcHresult
End Sub

Public Function htmFileGet() '441A90
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '441A9F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '441AAE
  htmFile = Value
End Sub

Public Function bGeneradoGet() '441ABD
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '441ACC
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '99667C
  'Data Table: 440EB0
  loc_996628: LitI4 0
  loc_99662D: LitI4 2
  loc_996632: FLdRfVar var_88
  loc_996635: Redim
  loc_99663F: FLdPr Me
  loc_996642: VCallAd Control_ID_cboPeriodo
  loc_996645: CVarAd
  loc_996649: ParmAry1St
  loc_99664F: FLdPr Me
  loc_996652: VCallAd Control_ID_mskCodiCuco
  loc_996655: CVarAd
  loc_996659: ParmAry1St
  loc_99665F: FLdPr Me
  loc_996662: VCallAd Control_ID_cmdCodiCuco
  loc_996665: CVarAd
  loc_996669: ParmAry1St
  loc_99666F: FLdRfVar var_88
  loc_996672: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_996677: FLdRfVar var_88
  loc_99667A: Erase
  loc_99667B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AD061C
  'Data Table: 440EB0
  loc_AD0000: OnErrorGoto loc_AD05B6
  loc_AD0003: FLdPr Me
  loc_AD0006: MemLdI2 bGenerado
  loc_AD0009: BranchF loc_AD000D
  loc_AD000C: ExitProcHresult
  loc_AD000D: LitVarStr var_A0, "Generando reporte..."
  loc_AD0012: PopAdLdVar
  loc_AD0013: FLdPr Me
  loc_AD0016: VCallAd Control_ID_statusBar
  loc_AD0019: FStAdFunc var_B4
  loc_AD001C: FLdPr var_B4
  loc_AD001F: LateIdSt
  loc_AD0024: FFree1Ad var_B4
  loc_AD0027: LitI4 &HB
  loc_AD002C: CI2I4
  loc_AD002D: FLdPr Me
  loc_AD0030: Me.MousePointer = from_stack_1
  loc_AD0035: Call mskCodiCuco_UnknownEvent_1()
  loc_AD003A: FLdPr Me
  loc_AD003D: VCallAd Control_ID_mskCodiCuco
  loc_AD0040: FStAdFunc var_B4
  loc_AD0043: FLdPr var_B4
  loc_AD0046: LateIdLdVar var_C4 DispID_20 0
  loc_AD004D: CStrVarTmp
  loc_AD004E: FStStrNoPop var_C8
  loc_AD0051: LitStr vbNullString
  loc_AD0054: NeStr
  loc_AD0056: FFree1Str var_C8
  loc_AD0059: FFree1Ad var_B4
  loc_AD005C: FFree1Var var_C4 = ""
  loc_AD005F: BranchF loc_AD0094
  loc_AD0062: LitStr " AND CodiCuco LIKE '"
  loc_AD0065: FLdPr Me
  loc_AD0068: VCallAd Control_ID_mskCodiCuco
  loc_AD006B: FStAdFunc var_B4
  loc_AD006E: FLdPr var_B4
  loc_AD0071: LateIdLdVar var_C4 DispID_20 0
  loc_AD0078: CStrVarTmp
  loc_AD0079: FStStrNoPop var_C8
  loc_AD007C: ConcatStr
  loc_AD007D: FStStrNoPop var_CC
  loc_AD0080: LitStr Chr(37) & "'"
  loc_AD0083: ConcatStr
  loc_AD0084: FStStr var_88
  loc_AD0087: FFreeStr var_C8 = ""
  loc_AD008E: FFree1Ad var_B4
  loc_AD0091: FFree1Var var_C4 = ""
  loc_AD0094: LitStr "SELECT CodiCuco, DetaCuco, IF(ImpuCuco=0,'No','Si') ImpuCuco, DetaTicu, IF(DebeCuco='','&nbsp;',DebeCuco) DebeCuco,"
  loc_AD0097: LitStr " IF(HabeCuco='','&nbsp;',HabeCuco) HabeCuco, IF(SaldCuco='','&nbsp;',SaldCuco) SaldCuco, IF(DescCuco='' OR DescCuco IS NULL,'&nbsp;',DescCuco) DescCuco"
  loc_AD009A: ConcatStr
  loc_AD009B: FStStrNoPop var_C8
  loc_AD009E: LitStr " FROM infogov.cuentacontable"
  loc_AD00A1: ConcatStr
  loc_AD00A2: FStStrNoPop var_CC
  loc_AD00A5: LitStr " LEFT JOIN tipocuco ON tipocuco.CodiTicu = infogov.cuentacontable.CodiTicu"
  loc_AD00A8: ConcatStr
  loc_AD00A9: FStStrNoPop var_D0
  loc_AD00AC: LitStr " WHERE PeriInfo = "
  loc_AD00AF: ConcatStr
  loc_AD00B0: FStStrNoPop var_D8
  loc_AD00B3: FLdRfVar var_D4
  loc_AD00B6: FLdPr Me
  loc_AD00B9: VCallAd Control_ID_cboPeriodo
  loc_AD00BC: FStAdFunc var_B4
  loc_AD00BF: FLdPr var_B4
  loc_AD00C2:  = Me.Text
  loc_AD00C7: ILdRf var_D4
  loc_AD00CA: ConcatStr
  loc_AD00CB: FStStrNoPop var_DC
  loc_AD00CE: ILdRf var_88
  loc_AD00D1: ConcatStr
  loc_AD00D2: FStStrNoPop var_E0
  loc_AD00D5: LitStr " ORDER BY CodiCuco"
  loc_AD00D8: ConcatStr
  loc_AD00D9: FStStrNoPop var_E4
  loc_AD00DC: FLdPr Me
  loc_AD00DF: MemLdRfVar from_stack_1.global_76
  loc_AD00E2: NewIfNullPr clscuentacontable
  loc_AD00E5: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_AD00EA: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D8 = "": var_D4 = "": var_DC = "": var_E0 = ""
  loc_AD00FD: FFree1Ad var_B4
  loc_AD0100: FLdRfVar var_E8
  loc_AD0103: FLdPr Me
  loc_AD0106: MemLdRfVar from_stack_1.global_76
  loc_AD0109: NewIfNullPr clscuentacontable
  loc_AD010C: from_stack_1 = clscuentacontable.RecordCount
  loc_AD0111: ILdRf var_E8
  loc_AD0114: LitI4 0
  loc_AD0119: EqI4
  loc_AD011A: BranchF loc_AD012D
  loc_AD011D: LitI4 0
  loc_AD0122: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AD0125: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD012A: Branch loc_AD058D
  loc_AD012D: FLdPr Me
  loc_AD0130: MemLdRfVar from_stack_1.global_76
  loc_AD0133: NewIfNullAd
  loc_AD0136: FStAd var_EC 
  loc_AD013A: LitI4 1
  loc_AD013F: FLdRfVar var_E8
  loc_AD0142: FLdPr var_EC
  loc_AD0145: from_stack_1 = clscuentacontable.RecordCount
  loc_AD014A: ILdRf var_E8
  loc_AD014D: FLdPr Me
  loc_AD0150: MemLdRfVar from_stack_1.global_84
  loc_AD0153: Redim
  loc_AD015D: FLdPr var_EC
  loc_AD0160: Call clscuentacontable.MoveFirst()
  loc_AD0165: LitI2_Byte 1
  loc_AD0167: FLdPr Me
  loc_AD016A: MemLdRfVar from_stack_1.global_88
  loc_AD016D: FLdRfVar var_E8
  loc_AD0170: FLdPr var_EC
  loc_AD0173: from_stack_1 = clscuentacontable.RecordCount
  loc_AD0178: ILdRf var_E8
  loc_AD017B: CI2I4
  loc_AD017C: ForI2 var_F0
  loc_AD0182: FLdRfVar var_F8
  loc_AD0185: LitVarStr var_A0, "CodiCuco"
  loc_AD018A: PopAdLdVar
  loc_AD018B: FLdRfVar var_F4
  loc_AD018E: FLdRfVar var_B4
  loc_AD0191: FLdPr var_EC
  loc_AD0194: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_AD0199: FLdPr var_B4
  loc_AD019C:  = Me.Fields
  loc_AD01A1: FLdPr var_F4
  loc_AD01A4: from_stack_2 = Me.Item(from_stack_1)
  loc_AD01A9: LitI2_Byte 0
  loc_AD01AB: LitVar_Missing var_10C
  loc_AD01AE: LitI2_Byte 0
  loc_AD01B0: FLdZeroAd var_F8
  loc_AD01B3: CVarAd
  loc_AD01B7: PopAdLdVar
  loc_AD01B8: FLdPr Me
  loc_AD01BB: MemLdI2 global_88
  loc_AD01BE: CI4UI1
  loc_AD01BF: FLdPr Me
  loc_AD01C2: MemLdStr global_84
  loc_AD01C5: AryLock
  loc_AD01C8: Ary1LdPr
  loc_AD01C9: MemLdRfVar from_stack_1.global_0
  loc_AD01CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD01D1: AryUnlock
  loc_AD01D4: FFreeAd var_B4 = ""
  loc_AD01DB: FFreeVar var_C4 = ""
  loc_AD01E2: FLdRfVar var_F8
  loc_AD01E5: LitVarStr var_A0, "DetaCuco"
  loc_AD01EA: PopAdLdVar
  loc_AD01EB: FLdRfVar var_F4
  loc_AD01EE: FLdRfVar var_B4
  loc_AD01F1: FLdPr var_EC
  loc_AD01F4: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_AD01F9: FLdPr var_B4
  loc_AD01FC:  = Me.Fields
  loc_AD0201: FLdPr var_F4
  loc_AD0204: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0209: LitI2_Byte 0
  loc_AD020B: LitVar_Missing var_10C
  loc_AD020E: LitI2_Byte 0
  loc_AD0210: FLdZeroAd var_F8
  loc_AD0213: CVarAd
  loc_AD0217: PopAdLdVar
  loc_AD0218: FLdPr Me
  loc_AD021B: MemLdI2 global_88
  loc_AD021E: CI4UI1
  loc_AD021F: FLdPr Me
  loc_AD0222: MemLdStr global_84
  loc_AD0225: AryLock
  loc_AD0228: Ary1LdPr
  loc_AD0229: MemLdRfVar from_stack_1.global_4
  loc_AD022C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD0231: AryUnlock
  loc_AD0234: FFreeAd var_B4 = ""
  loc_AD023B: FFreeVar var_C4 = ""
  loc_AD0242: FLdRfVar var_F8
  loc_AD0245: LitVarStr var_A0, "ImpuCuco"
  loc_AD024A: PopAdLdVar
  loc_AD024B: FLdRfVar var_F4
  loc_AD024E: FLdRfVar var_B4
  loc_AD0251: FLdPr var_EC
  loc_AD0254: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_AD0259: FLdPr var_B4
  loc_AD025C:  = Me.Fields
  loc_AD0261: FLdPr var_F4
  loc_AD0264: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0269: LitI2_Byte 0
  loc_AD026B: LitVar_Missing var_10C
  loc_AD026E: LitI2_Byte 0
  loc_AD0270: FLdZeroAd var_F8
  loc_AD0273: CVarAd
  loc_AD0277: PopAdLdVar
  loc_AD0278: FLdPr Me
  loc_AD027B: MemLdI2 global_88
  loc_AD027E: CI4UI1
  loc_AD027F: FLdPr Me
  loc_AD0282: MemLdStr global_84
  loc_AD0285: AryLock
  loc_AD0288: Ary1LdPr
  loc_AD0289: MemLdRfVar from_stack_1.global_8
  loc_AD028C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD0291: AryUnlock
  loc_AD0294: FFreeAd var_B4 = ""
  loc_AD029B: FFreeVar var_C4 = ""
  loc_AD02A2: FLdRfVar var_F8
  loc_AD02A5: LitVarStr var_A0, "DetaTicu"
  loc_AD02AA: PopAdLdVar
  loc_AD02AB: FLdRfVar var_F4
  loc_AD02AE: FLdRfVar var_B4
  loc_AD02B1: FLdPr var_EC
  loc_AD02B4: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_AD02B9: FLdPr var_B4
  loc_AD02BC:  = Me.Fields
  loc_AD02C1: FLdPr var_F4
  loc_AD02C4: from_stack_2 = Me.Item(from_stack_1)
  loc_AD02C9: LitI2_Byte 0
  loc_AD02CB: LitVar_Missing var_10C
  loc_AD02CE: LitI2_Byte 0
  loc_AD02D0: FLdZeroAd var_F8
  loc_AD02D3: CVarAd
  loc_AD02D7: PopAdLdVar
  loc_AD02D8: FLdPr Me
  loc_AD02DB: MemLdI2 global_88
  loc_AD02DE: CI4UI1
  loc_AD02DF: FLdPr Me
  loc_AD02E2: MemLdStr global_84
  loc_AD02E5: AryLock
  loc_AD02E8: Ary1LdPr
  loc_AD02E9: MemLdRfVar from_stack_1.global_12
  loc_AD02EC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD02F1: AryUnlock
  loc_AD02F4: FFreeAd var_B4 = ""
  loc_AD02FB: FFreeVar var_C4 = ""
  loc_AD0302: FLdRfVar var_F8
  loc_AD0305: LitVarStr var_A0, "DebeCuco"
  loc_AD030A: PopAdLdVar
  loc_AD030B: FLdRfVar var_F4
  loc_AD030E: FLdRfVar var_B4
  loc_AD0311: FLdPr var_EC
  loc_AD0314: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_AD0319: FLdPr var_B4
  loc_AD031C:  = Me.Fields
  loc_AD0321: FLdPr var_F4
  loc_AD0324: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0329: LitI2_Byte 0
  loc_AD032B: LitVar_Missing var_10C
  loc_AD032E: LitI2_Byte 0
  loc_AD0330: FLdZeroAd var_F8
  loc_AD0333: CVarAd
  loc_AD0337: PopAdLdVar
  loc_AD0338: FLdPr Me
  loc_AD033B: MemLdI2 global_88
  loc_AD033E: CI4UI1
  loc_AD033F: FLdPr Me
  loc_AD0342: MemLdStr global_84
  loc_AD0345: AryLock
  loc_AD0348: Ary1LdPr
  loc_AD0349: MemLdRfVar from_stack_1.global_16
  loc_AD034C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD0351: AryUnlock
  loc_AD0354: FFreeAd var_B4 = ""
  loc_AD035B: FFreeVar var_C4 = ""
  loc_AD0362: FLdRfVar var_F8
  loc_AD0365: LitVarStr var_A0, "HabeCuco"
  loc_AD036A: PopAdLdVar
  loc_AD036B: FLdRfVar var_F4
  loc_AD036E: FLdRfVar var_B4
  loc_AD0371: FLdPr var_EC
  loc_AD0374: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_AD0379: FLdPr var_B4
  loc_AD037C:  = Me.Fields
  loc_AD0381: FLdPr var_F4
  loc_AD0384: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0389: LitI2_Byte 0
  loc_AD038B: LitVar_Missing var_10C
  loc_AD038E: LitI2_Byte 0
  loc_AD0390: FLdZeroAd var_F8
  loc_AD0393: CVarAd
  loc_AD0397: PopAdLdVar
  loc_AD0398: FLdPr Me
  loc_AD039B: MemLdI2 global_88
  loc_AD039E: CI4UI1
  loc_AD039F: FLdPr Me
  loc_AD03A2: MemLdStr global_84
  loc_AD03A5: AryLock
  loc_AD03A8: Ary1LdPr
  loc_AD03A9: MemLdRfVar from_stack_1.global_20
  loc_AD03AC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD03B1: AryUnlock
  loc_AD03B4: FFreeAd var_B4 = ""
  loc_AD03BB: FFreeVar var_C4 = ""
  loc_AD03C2: FLdRfVar var_F8
  loc_AD03C5: LitVarStr var_A0, "SaldCuco"
  loc_AD03CA: PopAdLdVar
  loc_AD03CB: FLdRfVar var_F4
  loc_AD03CE: FLdRfVar var_B4
  loc_AD03D1: FLdPr var_EC
  loc_AD03D4: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_AD03D9: FLdPr var_B4
  loc_AD03DC:  = Me.Fields
  loc_AD03E1: FLdPr var_F4
  loc_AD03E4: from_stack_2 = Me.Item(from_stack_1)
  loc_AD03E9: LitI2_Byte 0
  loc_AD03EB: LitVar_Missing var_10C
  loc_AD03EE: LitI2_Byte 0
  loc_AD03F0: FLdZeroAd var_F8
  loc_AD03F3: CVarAd
  loc_AD03F7: PopAdLdVar
  loc_AD03F8: FLdPr Me
  loc_AD03FB: MemLdI2 global_88
  loc_AD03FE: CI4UI1
  loc_AD03FF: FLdPr Me
  loc_AD0402: MemLdStr global_84
  loc_AD0405: AryLock
  loc_AD0408: Ary1LdPr
  loc_AD0409: MemLdRfVar from_stack_1.global_24
  loc_AD040C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD0411: AryUnlock
  loc_AD0414: FFreeAd var_B4 = ""
  loc_AD041B: FFreeVar var_C4 = ""
  loc_AD0422: FLdRfVar var_C4
  loc_AD0425: FLdRfVar var_F8
  loc_AD0428: LitVarStr var_A0, "DescCuco"
  loc_AD042D: PopAdLdVar
  loc_AD042E: FLdRfVar var_F4
  loc_AD0431: FLdRfVar var_B4
  loc_AD0434: FLdPr var_EC
  loc_AD0437: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_AD043C: FLdPr var_B4
  loc_AD043F:  = Me.Fields
  loc_AD0444: FLdPr var_F4
  loc_AD0447: from_stack_2 = Me.Item(from_stack_1)
  loc_AD044C: FLdPr var_F8
  loc_AD044F:  = Me.Value
  loc_AD0454: LitI4 0
  loc_AD0459: LitI4 -1
  loc_AD045E: LitVarStr var_B0, vbCrLf
  loc_AD0463: FStVarCopyObj var_10C
  loc_AD0466: FLdRfVar var_10C
  loc_AD0469: FLdRfVar var_C4
  loc_AD046C: CStrVarTmp
  loc_AD046D: FStStrNoPop var_C8
  loc_AD0470: FLdRfVar var_11C
  loc_AD0473: ImpAdCallFPR4  = Split(, , , )
  loc_AD0478: FLdRfVar var_11C
  loc_AD047B: StAryVar
  loc_AD047F: PopTmpLdAdStr var_E8
  loc_AD0482: FLdRfVar var_90
  loc_AD0485: StAryCopy
  loc_AD0487: FFree1Str var_C8
  loc_AD048A: FFreeAd var_B4 = "": var_F4 = ""
  loc_AD0493: FFreeVar var_C4 = "": var_10C = ""
  loc_AD049C: LitI2_Byte 0
  loc_AD049E: FLdRfVar var_8A
  loc_AD04A1: ILdRf var_90
  loc_AD04A4: LitI2_Byte 1
  loc_AD04A6: FnUBound
  loc_AD04A8: CI2I4
  loc_AD04A9: ForI2 var_120
  loc_AD04AF: FLdPr Me
  loc_AD04B2: MemLdI2 global_88
  loc_AD04B5: CI4UI1
  loc_AD04B6: FLdPr Me
  loc_AD04B9: MemLdStr global_84
  loc_AD04BC: Ary1LdPr
  loc_AD04BD: MemLdStr global_28
  loc_AD04C0: FLdI2 var_8A
  loc_AD04C3: CI4UI1
  loc_AD04C4: ILdRf var_90
  loc_AD04C7: Ary1LdI4
  loc_AD04C8: ConcatStr
  loc_AD04C9: CVarStr var_140
  loc_AD04CC: LitVarStr var_130, vbNullString
  loc_AD04D1: FStVarCopyObj var_10C
  loc_AD04D4: FLdRfVar var_10C
  loc_AD04D7: LitVarStr var_B0, "<br>"
  loc_AD04DC: FStVarCopyObj var_C4
  loc_AD04DF: FLdRfVar var_C4
  loc_AD04E2: FLdI2 var_8A
  loc_AD04E5: CI4UI1
  loc_AD04E6: ILdRf var_90
  loc_AD04E9: LitI2_Byte 1
  loc_AD04EB: FnUBound
  loc_AD04ED: LtI4
  loc_AD04EE: CVarBoolI2 var_A0
  loc_AD04F2: FLdRfVar var_11C
  loc_AD04F5: ImpAdCallFPR4  = IIf(, , )
  loc_AD04FA: FLdRfVar var_11C
  loc_AD04FD: ConcatVar var_150
  loc_AD0501: CStrVarTmp
  loc_AD0502: FStStrNoPop var_C8
  loc_AD0505: FLdPr Me
  loc_AD0508: MemLdI2 global_88
  loc_AD050B: CI4UI1
  loc_AD050C: FLdPr Me
  loc_AD050F: MemLdStr global_84
  loc_AD0512: Ary1LdPr
  loc_AD0513: MemStStrCopy
  loc_AD0517: FFree1Str var_C8
  loc_AD051A: FFreeVar var_A0 = "": var_C4 = "": var_10C = "": var_140 = "": var_11C = ""
  loc_AD0529: FLdRfVar var_8A
  loc_AD052C: NextI2 var_120, loc_AD04AF
  loc_AD0531: LitI2_Byte 0
  loc_AD0533: LitVar_Missing var_C4
  loc_AD0536: LitI2_Byte 0
  loc_AD0538: FLdPr Me
  loc_AD053B: MemLdI2 global_88
  loc_AD053E: CI4UI1
  loc_AD053F: FLdPr Me
  loc_AD0542: MemLdStr global_84
  loc_AD0545: Ary1LdPr
  loc_AD0546: MemLdStr global_28
  loc_AD0549: CVarStr var_A0
  loc_AD054C: PopAdLdVar
  loc_AD054D: FLdPr Me
  loc_AD0550: MemLdI2 global_88
  loc_AD0553: CI4UI1
  loc_AD0554: FLdPr Me
  loc_AD0557: MemLdStr global_84
  loc_AD055A: AryLock
  loc_AD055D: Ary1LdPr
  loc_AD055E: MemLdRfVar from_stack_1.global_28
  loc_AD0561: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD0566: AryUnlock
  loc_AD0569: FFree1Var var_C4 = ""
  loc_AD056C: FLdPr var_EC
  loc_AD056F: Call clscuentacontable.MoveSiguiente()
  loc_AD0574: FLdPr Me
  loc_AD0577: MemLdRfVar from_stack_1.global_88
  loc_AD057A: NextI2 var_F0, loc_AD0182
  loc_AD057F: LitNothing
  loc_AD0581: FStAd var_EC 
  loc_AD0585: LitI2_Byte &HFF
  loc_AD0587: FLdPr Me
  loc_AD058A: MemStI2 bGenerado
  loc_AD058D: LitI4 0
  loc_AD0592: CI2I4
  loc_AD0593: FLdPr Me
  loc_AD0596: Me.MousePointer = from_stack_1
  loc_AD059B: LitVarStr var_A0, vbNullString
  loc_AD05A0: PopAdLdVar
  loc_AD05A1: FLdPr Me
  loc_AD05A4: VCallAd Control_ID_statusBar
  loc_AD05A7: FStAdFunc var_B4
  loc_AD05AA: FLdPr var_B4
  loc_AD05AD: LateIdSt
  loc_AD05B2: FFree1Ad var_B4
  loc_AD05B5: ExitProcHresult
  loc_AD05B6: LitI4 0
  loc_AD05BB: LitStr "Error "
  loc_AD05BE: FLdRfVar var_E8
  loc_AD05C1: ImpAdCallI2 Err 'rtcErrObj
  loc_AD05C6: FStAdFunc var_B4
  loc_AD05C9: FLdPr var_B4
  loc_AD05CC:  = Err.Number
  loc_AD05D1: ILdRf var_E8
  loc_AD05D4: CStrI4
  loc_AD05D6: FStStrNoPop var_C8
  loc_AD05D9: ConcatStr
  loc_AD05DA: FStStrNoPop var_CC
  loc_AD05DD: LitStr ": "
  loc_AD05E0: ConcatStr
  loc_AD05E1: FStStrNoPop var_D4
  loc_AD05E4: FLdRfVar var_D0
  loc_AD05E7: ImpAdCallI2 Err 'rtcErrObj
  loc_AD05EC: FStAdFunc var_F4
  loc_AD05EF: FLdPr var_F4
  loc_AD05F2:  = Err.Description
  loc_AD05F7: ILdRf var_D0
  loc_AD05FA: ConcatStr
  loc_AD05FB: FStStrNoPop var_D8
  loc_AD05FE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD0603: FFreeStr var_C8 = "": var_CC = "": var_D4 = "": var_D0 = ""
  loc_AD0610: FFreeAd var_B4 = ""
  loc_AD0617: ExitProcHresult
  loc_AD0618: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A63ABC
  'Data Table: 440EB0
  loc_A63774: FLdRfVar var_88
  loc_A63777: LitI2_Byte 0
  loc_A63779: LitI2_Byte &HFF
  loc_A6377B: ImpAdLdI4 MemVar_C3D83C
  loc_A6377E: FLdPr Me
  loc_A63781: MemLdRfVar from_stack_1.global_80
  loc_A63784: NewIfNullPr IFileSystem3
  loc_A63787: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A6378C: ILdRf var_88
  loc_A6378F: FLdPr Me
  loc_A63792: MemStVarAd
  loc_A63796: FFree1Ad var_88
  loc_A63799: Call Proc_196_18_A82DBC()
  loc_A6379E: LitI2_Byte 1
  loc_A637A0: FLdPr Me
  loc_A637A3: MemLdRfVar from_stack_1.global_88
  loc_A637A6: FLdPr Me
  loc_A637A9: MemLdStr global_84
  loc_A637AC: LitI2_Byte 1
  loc_A637AE: FnUBound
  loc_A637B0: CI2I4
  loc_A637B1: ForI2 var_8C
  loc_A637B7: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A637BC: PopAdLdVar
  loc_A637BD: FLdPr Me
  loc_A637C0: MemLdRfVar from_stack_1.htmFile
  loc_A637C3: LdPrVar
  loc_A637C5: LateMemCall
  loc_A637CB: FLdPr Me
  loc_A637CE: MemLdI2 global_88
  loc_A637D1: CI4UI1
  loc_A637D2: FLdPr Me
  loc_A637D5: MemLdStr global_84
  loc_A637D8: AryLock
  loc_A637DB: Ary1LdRf
  loc_A637DC: FStR4 var_B4
  loc_A637DF: LitI4 9
  loc_A637E4: FLdPr Me
  loc_A637E7: MemLdI2 global_88
  loc_A637EA: CI4UI1
  loc_A637EB: FLdPr Me
  loc_A637EE: MemLdStr global_84
  loc_A637F1: AryLock
  loc_A637F4: Ary1LdPr
  loc_A637F5: MemLdRfVar from_stack_1.global_0
  loc_A637F8: CVarRef
  loc_A637FD: FLdRfVar var_C8
  loc_A63800: ImpAdCallFPR4  = Right(, )
  loc_A63805: AryUnlock
  loc_A63808: FLdRfVar var_C8
  loc_A6380B: LitVarStr var_AC, "000000000"
  loc_A63810: HardType
  loc_A63811: EqVarBool
  loc_A63813: FFree1Var var_C8 = ""
  loc_A63816: BranchF loc_A63934
  loc_A63819: LitStr "    <td align=""center""><strong><em>"
  loc_A6381C: FMemLdR4 var_B4(0)
  loc_A63821: ConcatStr
  loc_A63822: FStStrNoPop var_DC
  loc_A63825: LitStr "</em></strong></td>"
  loc_A63828: ConcatStr
  loc_A63829: CVarStr var_C8
  loc_A6382C: PopAdLdVar
  loc_A6382D: FLdPr Me
  loc_A63830: MemLdRfVar from_stack_1.htmFile
  loc_A63833: LdPrVar
  loc_A63835: LateMemCall
  loc_A6383B: FFree1Str var_DC
  loc_A6383E: FFree1Var var_C8 = ""
  loc_A63841: LitStr "    <td align=""justify""><strong><em>"
  loc_A63844: FMemLdR4 var_B4(4)
  loc_A63849: ConcatStr
  loc_A6384A: FStStrNoPop var_DC
  loc_A6384D: LitStr "</em></strong></td>"
  loc_A63850: ConcatStr
  loc_A63851: CVarStr var_C8
  loc_A63854: PopAdLdVar
  loc_A63855: FLdPr Me
  loc_A63858: MemLdRfVar from_stack_1.htmFile
  loc_A6385B: LdPrVar
  loc_A6385D: LateMemCall
  loc_A63863: FFree1Str var_DC
  loc_A63866: FFree1Var var_C8 = ""
  loc_A63869: LitStr "    <td align=""center""><strong><em>"
  loc_A6386C: FMemLdR4 var_B4(8)
  loc_A63871: ConcatStr
  loc_A63872: FStStrNoPop var_DC
  loc_A63875: LitStr "</em></strong></td>"
  loc_A63878: ConcatStr
  loc_A63879: CVarStr var_C8
  loc_A6387C: PopAdLdVar
  loc_A6387D: FLdPr Me
  loc_A63880: MemLdRfVar from_stack_1.htmFile
  loc_A63883: LdPrVar
  loc_A63885: LateMemCall
  loc_A6388B: FFree1Str var_DC
  loc_A6388E: FFree1Var var_C8 = ""
  loc_A63891: LitStr "    <td align=""justify""><strong><em>"
  loc_A63894: FMemLdR4 var_B4(16)
  loc_A63899: ConcatStr
  loc_A6389A: FStStrNoPop var_DC
  loc_A6389D: LitStr "</em></strong></td>"
  loc_A638A0: ConcatStr
  loc_A638A1: CVarStr var_C8
  loc_A638A4: PopAdLdVar
  loc_A638A5: FLdPr Me
  loc_A638A8: MemLdRfVar from_stack_1.htmFile
  loc_A638AB: LdPrVar
  loc_A638AD: LateMemCall
  loc_A638B3: FFree1Str var_DC
  loc_A638B6: FFree1Var var_C8 = ""
  loc_A638B9: LitStr "    <td align=""justify""><strong><em>"
  loc_A638BC: FMemLdR4 var_B4(20)
  loc_A638C1: ConcatStr
  loc_A638C2: FStStrNoPop var_DC
  loc_A638C5: LitStr "</em></strong></td>"
  loc_A638C8: ConcatStr
  loc_A638C9: CVarStr var_C8
  loc_A638CC: PopAdLdVar
  loc_A638CD: FLdPr Me
  loc_A638D0: MemLdRfVar from_stack_1.htmFile
  loc_A638D3: LdPrVar
  loc_A638D5: LateMemCall
  loc_A638DB: FFree1Str var_DC
  loc_A638DE: FFree1Var var_C8 = ""
  loc_A638E1: LitStr "    <td align=""justify""><strong><em>"
  loc_A638E4: FMemLdR4 var_B4(24)
  loc_A638E9: ConcatStr
  loc_A638EA: FStStrNoPop var_DC
  loc_A638ED: LitStr "</em></strong></td>"
  loc_A638F0: ConcatStr
  loc_A638F1: CVarStr var_C8
  loc_A638F4: PopAdLdVar
  loc_A638F5: FLdPr Me
  loc_A638F8: MemLdRfVar from_stack_1.htmFile
  loc_A638FB: LdPrVar
  loc_A638FD: LateMemCall
  loc_A63903: FFree1Str var_DC
  loc_A63906: FFree1Var var_C8 = ""
  loc_A63909: LitStr "    <td align=""justify""><strong><em>"
  loc_A6390C: FMemLdR4 var_B4(28)
  loc_A63911: ConcatStr
  loc_A63912: FStStrNoPop var_DC
  loc_A63915: LitStr "</em></strong></td>"
  loc_A63918: ConcatStr
  loc_A63919: CVarStr var_C8
  loc_A6391C: PopAdLdVar
  loc_A6391D: FLdPr Me
  loc_A63920: MemLdRfVar from_stack_1.htmFile
  loc_A63923: LdPrVar
  loc_A63925: LateMemCall
  loc_A6392B: FFree1Str var_DC
  loc_A6392E: FFree1Var var_C8 = ""
  loc_A63931: Branch loc_A63A76
  loc_A63934: LitI4 0
  loc_A63939: LitI4 0
  loc_A6393E: LitI2_Byte 0
  loc_A63940: LitStr "center"
  loc_A63943: FMemLdR4 var_B4(0)
  loc_A63948: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6394D: CVarStr var_C8
  loc_A63950: PopAdLdVar
  loc_A63951: FLdPr Me
  loc_A63954: MemLdRfVar from_stack_1.htmFile
  loc_A63957: LdPrVar
  loc_A63959: LateMemCall
  loc_A6395F: FFree1Var var_C8 = ""
  loc_A63962: LitI4 0
  loc_A63967: LitI4 0
  loc_A6396C: LitI2_Byte 0
  loc_A6396E: LitStr "justify"
  loc_A63971: FMemLdR4 var_B4(4)
  loc_A63976: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6397B: CVarStr var_C8
  loc_A6397E: PopAdLdVar
  loc_A6397F: FLdPr Me
  loc_A63982: MemLdRfVar from_stack_1.htmFile
  loc_A63985: LdPrVar
  loc_A63987: LateMemCall
  loc_A6398D: FFree1Var var_C8 = ""
  loc_A63990: LitI4 0
  loc_A63995: LitI4 0
  loc_A6399A: LitI2_Byte 0
  loc_A6399C: LitStr "center"
  loc_A6399F: FMemLdR4 var_B4(8)
  loc_A639A4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A639A9: CVarStr var_C8
  loc_A639AC: PopAdLdVar
  loc_A639AD: FLdPr Me
  loc_A639B0: MemLdRfVar from_stack_1.htmFile
  loc_A639B3: LdPrVar
  loc_A639B5: LateMemCall
  loc_A639BB: FFree1Var var_C8 = ""
  loc_A639BE: LitI4 0
  loc_A639C3: LitI4 0
  loc_A639C8: LitI2_Byte 0
  loc_A639CA: LitStr "justify"
  loc_A639CD: FMemLdR4 var_B4(16)
  loc_A639D2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A639D7: CVarStr var_C8
  loc_A639DA: PopAdLdVar
  loc_A639DB: FLdPr Me
  loc_A639DE: MemLdRfVar from_stack_1.htmFile
  loc_A639E1: LdPrVar
  loc_A639E3: LateMemCall
  loc_A639E9: FFree1Var var_C8 = ""
  loc_A639EC: LitI4 0
  loc_A639F1: LitI4 0
  loc_A639F6: LitI2_Byte 0
  loc_A639F8: LitStr "justify"
  loc_A639FB: FMemLdR4 var_B4(20)
  loc_A63A00: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A63A05: CVarStr var_C8
  loc_A63A08: PopAdLdVar
  loc_A63A09: FLdPr Me
  loc_A63A0C: MemLdRfVar from_stack_1.htmFile
  loc_A63A0F: LdPrVar
  loc_A63A11: LateMemCall
  loc_A63A17: FFree1Var var_C8 = ""
  loc_A63A1A: LitI4 0
  loc_A63A1F: LitI4 0
  loc_A63A24: LitI2_Byte 0
  loc_A63A26: LitStr "justify"
  loc_A63A29: FMemLdR4 var_B4(24)
  loc_A63A2E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A63A33: CVarStr var_C8
  loc_A63A36: PopAdLdVar
  loc_A63A37: FLdPr Me
  loc_A63A3A: MemLdRfVar from_stack_1.htmFile
  loc_A63A3D: LdPrVar
  loc_A63A3F: LateMemCall
  loc_A63A45: FFree1Var var_C8 = ""
  loc_A63A48: LitI4 0
  loc_A63A4D: LitI4 0
  loc_A63A52: LitI2_Byte 0
  loc_A63A54: LitStr "justify"
  loc_A63A57: FMemLdR4 var_B4(28)
  loc_A63A5C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A63A61: CVarStr var_C8
  loc_A63A64: PopAdLdVar
  loc_A63A65: FLdPr Me
  loc_A63A68: MemLdRfVar from_stack_1.htmFile
  loc_A63A6B: LdPrVar
  loc_A63A6D: LateMemCall
  loc_A63A73: FFree1Var var_C8 = ""
  loc_A63A76: LitI4 0
  loc_A63A7B: FStR4 var_B4
  loc_A63A7E: AryUnlock
  loc_A63A81: LitVarStr var_9C, "     </tr>"
  loc_A63A86: PopAdLdVar
  loc_A63A87: FLdPr Me
  loc_A63A8A: MemLdRfVar from_stack_1.htmFile
  loc_A63A8D: LdPrVar
  loc_A63A8F: LateMemCall
  loc_A63A95: FLdPr Me
  loc_A63A98: MemLdRfVar from_stack_1.global_88
  loc_A63A9B: NextI2 var_8C, loc_A637B7
  loc_A63AA0: Call Proc_196_19_982D20()
  loc_A63AA5: FLdPr Me
  loc_A63AA8: MemLdRfVar from_stack_1.htmFile
  loc_A63AAB: LdPrVar
  loc_A63AAD: LateMemCall
  loc_A63AB3: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A63AB8: ExitProcHresult
  loc_A63AB9: LeR8
  loc_A63ABA: MulR8
End Sub

Private Function Proc_196_18_A82DBC() 'A82DBC
  'Data Table: 440EB0
  loc_A829B0: FLdPr Me
  loc_A829B3: VCallAd Control_ID_mskCodiCuco
  loc_A829B6: FStAdFunc var_8C
  loc_A829B9: FLdPr var_8C
  loc_A829BC: LateIdLdVar var_9C DispID_20 0
  loc_A829C3: CStrVarTmp
  loc_A829C4: FStStrNoPop var_A0
  loc_A829C7: FnLenStr
  loc_A829C8: FStR4 var_A4
  loc_A829CB: FFree1Str var_A0
  loc_A829CE: FFree1Ad var_8C
  loc_A829D1: FFree1Var var_9C = ""
  loc_A829D4: ILdRf var_A4
  loc_A829D7: LitI4 0
  loc_A829DC: EqI4
  loc_A829DD: BranchF loc_A829E9
  loc_A829E0: LitStr "Todas"
  loc_A829E3: FStStrCopy var_88
  loc_A829E6: Branch loc_A82A82
  loc_A829E9: ILdRf var_A4
  loc_A829EC: LitI4 &HA
  loc_A829F1: LtI4
  loc_A829F2: BranchF loc_A82A2A
  loc_A829F5: LitStr "Comenzando con '"
  loc_A829F8: FLdPr Me
  loc_A829FB: VCallAd Control_ID_mskCodiCuco
  loc_A829FE: FStAdFunc var_8C
  loc_A82A01: FLdPr var_8C
  loc_A82A04: LateIdLdVar var_9C DispID_20 0
  loc_A82A0B: CStrVarTmp
  loc_A82A0C: FStStrNoPop var_A0
  loc_A82A0F: ConcatStr
  loc_A82A10: FStStrNoPop var_A8
  loc_A82A13: LitStr "'"
  loc_A82A16: ConcatStr
  loc_A82A17: FStStr var_88
  loc_A82A1A: FFreeStr var_A0 = ""
  loc_A82A21: FFree1Ad var_8C
  loc_A82A24: FFree1Var var_9C = ""
  loc_A82A27: Branch loc_A82A82
  loc_A82A2A: ILdRf var_A4
  loc_A82A2D: LitI4 &HA
  loc_A82A32: EqI4
  loc_A82A33: BranchF loc_A82A82
  loc_A82A36: FLdPr Me
  loc_A82A39: VCallAd Control_ID_mskCodiCuco
  loc_A82A3C: FStAdFunc var_8C
  loc_A82A3F: FLdPr var_8C
  loc_A82A42: LateIdLdVar var_9C DispID_0 0
  loc_A82A49: CStrVarTmp
  loc_A82A4A: FStStrNoPop var_A0
  loc_A82A4D: LitStr " - "
  loc_A82A50: ConcatStr
  loc_A82A51: FStStrNoPop var_B0
  loc_A82A54: FLdRfVar var_A8
  loc_A82A57: FLdPr Me
  loc_A82A5A: VCallAd Control_ID_lblDetaCuco
  loc_A82A5D: FStAdFunc var_AC
  loc_A82A60: FLdPr var_AC
  loc_A82A63:  = Me.Caption
  loc_A82A68: ILdRf var_A8
  loc_A82A6B: ConcatStr
  loc_A82A6C: FStStr var_88
  loc_A82A6F: FFreeStr var_A0 = "": var_B0 = ""
  loc_A82A78: FFreeAd var_8C = ""
  loc_A82A7F: FFree1Var var_9C = ""
  loc_A82A82: LitVarStr var_C0, "<html>"
  loc_A82A87: PopAdLdVar
  loc_A82A88: FLdPr Me
  loc_A82A8B: MemLdRfVar from_stack_1.htmFile
  loc_A82A8E: LdPrVar
  loc_A82A90: LateMemCall
  loc_A82A96: LitVarStr var_C0, "<head>"
  loc_A82A9B: PopAdLdVar
  loc_A82A9C: FLdPr Me
  loc_A82A9F: MemLdRfVar from_stack_1.htmFile
  loc_A82AA2: LdPrVar
  loc_A82AA4: LateMemCall
  loc_A82AAA: LitVarStr var_C0, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A82AAF: PopAdLdVar
  loc_A82AB0: FLdPr Me
  loc_A82AB3: MemLdRfVar from_stack_1.htmFile
  loc_A82AB6: LdPrVar
  loc_A82AB8: LateMemCall
  loc_A82ABE: LitStr "<title>"
  loc_A82AC1: FLdRfVar var_A0
  loc_A82AC4: FLdPr Me
  loc_A82AC7:  = Me.Caption
  loc_A82ACC: ILdRf var_A0
  loc_A82ACF: ConcatStr
  loc_A82AD0: FStStrNoPop var_A8
  loc_A82AD3: LitStr "</title>"
  loc_A82AD6: ConcatStr
  loc_A82AD7: CVarStr var_9C
  loc_A82ADA: PopAdLdVar
  loc_A82ADB: FLdPr Me
  loc_A82ADE: MemLdRfVar from_stack_1.htmFile
  loc_A82AE1: LdPrVar
  loc_A82AE3: LateMemCall
  loc_A82AE9: FFreeStr var_A0 = ""
  loc_A82AF0: FFree1Var var_9C = ""
  loc_A82AF3: LitStr vbNullString
  loc_A82AF6: ILdRf Me
  loc_A82AF9: CastAd
  loc_A82AFC: FStAdFunc var_8C
  loc_A82AFF: FLdRfVar var_8C
  loc_A82B02: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A82B07: FFree1Ad var_8C
  loc_A82B0A: LitI4 0
  loc_A82B0F: FStStrCopy var_A8
  loc_A82B12: FLdRfVar var_A8
  loc_A82B15: LitI4 0
  loc_A82B1A: FStStrCopy var_A0
  loc_A82B1D: FLdRfVar var_A0
  loc_A82B20: LitI2_Byte &HFF
  loc_A82B22: PopTmpLdAd2 var_D2
  loc_A82B25: FLdPr Me
  loc_A82B28: MemLdRfVar from_stack_1.htmFile
  loc_A82B2B: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A82B30: FFreeStr var_A0 = ""
  loc_A82B37: LitVarStr var_C0, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A82B3C: PopAdLdVar
  loc_A82B3D: FLdPr Me
  loc_A82B40: MemLdRfVar from_stack_1.htmFile
  loc_A82B43: LdPrVar
  loc_A82B45: LateMemCall
  loc_A82B4B: LitVarStr var_C0, "  <tr valign=""baseline"">"
  loc_A82B50: PopAdLdVar
  loc_A82B51: FLdPr Me
  loc_A82B54: MemLdRfVar from_stack_1.htmFile
  loc_A82B57: LdPrVar
  loc_A82B59: LateMemCall
  loc_A82B5F: LitVarStr var_D0, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A82B64: LitVarStr var_C0, "Municipalidad de Guaymallén"
  loc_A82B69: FStVarCopyObj var_9C
  loc_A82B6C: FLdRfVar var_9C
  loc_A82B6F: FLdRfVar var_E4
  loc_A82B72: ImpAdCallFPR4  = Ucase()
  loc_A82B77: FLdRfVar var_E4
  loc_A82B7A: ConcatVar var_F4
  loc_A82B7E: LitVarStr var_104, "</p>"
  loc_A82B83: ConcatVar var_114
  loc_A82B87: PopAdLdVar
  loc_A82B88: FLdPr Me
  loc_A82B8B: MemLdRfVar from_stack_1.htmFile
  loc_A82B8E: LdPrVar
  loc_A82B90: LateMemCall
  loc_A82B96: FFreeVar var_9C = "": var_E4 = "": var_F4 = ""
  loc_A82BA1: LitStr "    <p>"
  loc_A82BA4: FLdRfVar var_A0
  loc_A82BA7: FLdPr Me
  loc_A82BAA:  = Me.Caption
  loc_A82BAF: ILdRf var_A0
  loc_A82BB2: ConcatStr
  loc_A82BB3: FStStrNoPop var_A8
  loc_A82BB6: LitStr "</p></th>"
  loc_A82BB9: ConcatStr
  loc_A82BBA: CVarStr var_9C
  loc_A82BBD: PopAdLdVar
  loc_A82BBE: FLdPr Me
  loc_A82BC1: MemLdRfVar from_stack_1.htmFile
  loc_A82BC4: LdPrVar
  loc_A82BC6: LateMemCall
  loc_A82BCC: FFreeStr var_A0 = ""
  loc_A82BD3: FFree1Var var_9C = ""
  loc_A82BD6: LitVarStr var_C0, "  </tr>"
  loc_A82BDB: PopAdLdVar
  loc_A82BDC: FLdPr Me
  loc_A82BDF: MemLdRfVar from_stack_1.htmFile
  loc_A82BE2: LdPrVar
  loc_A82BE4: LateMemCall
  loc_A82BEA: LitVarStr var_C0, "  <tr>"
  loc_A82BEF: PopAdLdVar
  loc_A82BF0: FLdPr Me
  loc_A82BF3: MemLdRfVar from_stack_1.htmFile
  loc_A82BF6: LdPrVar
  loc_A82BF8: LateMemCall
  loc_A82BFE: LitVarStr var_C0, "    <th><hr></th>"
  loc_A82C03: PopAdLdVar
  loc_A82C04: FLdPr Me
  loc_A82C07: MemLdRfVar from_stack_1.htmFile
  loc_A82C0A: LdPrVar
  loc_A82C0C: LateMemCall
  loc_A82C12: LitVarStr var_C0, "  </tr>"
  loc_A82C17: PopAdLdVar
  loc_A82C18: FLdPr Me
  loc_A82C1B: MemLdRfVar from_stack_1.htmFile
  loc_A82C1E: LdPrVar
  loc_A82C20: LateMemCall
  loc_A82C26: LitVarStr var_C0, "  <tr valign=""baseline"">"
  loc_A82C2B: PopAdLdVar
  loc_A82C2C: FLdPr Me
  loc_A82C2F: MemLdRfVar from_stack_1.htmFile
  loc_A82C32: LdPrVar
  loc_A82C34: LateMemCall
  loc_A82C3A: LitStr "    <th align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A82C3D: FLdRfVar var_A0
  loc_A82C40: FLdPr Me
  loc_A82C43: VCallAd Control_ID_cboPeriodo
  loc_A82C46: FStAdFunc var_8C
  loc_A82C49: FLdPr var_8C
  loc_A82C4C:  = Me.Text
  loc_A82C51: ILdRf var_A0
  loc_A82C54: ConcatStr
  loc_A82C55: FStStrNoPop var_A8
  loc_A82C58: LitStr "</span><br>"
  loc_A82C5B: ConcatStr
  loc_A82C5C: CVarStr var_9C
  loc_A82C5F: PopAdLdVar
  loc_A82C60: FLdPr Me
  loc_A82C63: MemLdRfVar from_stack_1.htmFile
  loc_A82C66: LdPrVar
  loc_A82C68: LateMemCall
  loc_A82C6E: FFreeStr var_A0 = ""
  loc_A82C75: FFree1Ad var_8C
  loc_A82C78: FFree1Var var_9C = ""
  loc_A82C7B: LitStr "    Cuenta contable: <span class=""Normal"">"
  loc_A82C7E: ILdRf var_88
  loc_A82C81: ConcatStr
  loc_A82C82: FStStrNoPop var_A0
  loc_A82C85: LitStr "</span> </th>"
  loc_A82C88: ConcatStr
  loc_A82C89: CVarStr var_9C
  loc_A82C8C: PopAdLdVar
  loc_A82C8D: FLdPr Me
  loc_A82C90: MemLdRfVar from_stack_1.htmFile
  loc_A82C93: LdPrVar
  loc_A82C95: LateMemCall
  loc_A82C9B: FFree1Str var_A0
  loc_A82C9E: FFree1Var var_9C = ""
  loc_A82CA1: LitVarStr var_C0, "  </tr>"
  loc_A82CA6: PopAdLdVar
  loc_A82CA7: FLdPr Me
  loc_A82CAA: MemLdRfVar from_stack_1.htmFile
  loc_A82CAD: LdPrVar
  loc_A82CAF: LateMemCall
  loc_A82CB5: LitVarStr var_C0, "</table>"
  loc_A82CBA: PopAdLdVar
  loc_A82CBB: FLdPr Me
  loc_A82CBE: MemLdRfVar from_stack_1.htmFile
  loc_A82CC1: LdPrVar
  loc_A82CC3: LateMemCall
  loc_A82CC9: LitVarStr var_C0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A82CCE: PopAdLdVar
  loc_A82CCF: FLdPr Me
  loc_A82CD2: MemLdRfVar from_stack_1.htmFile
  loc_A82CD5: LdPrVar
  loc_A82CD7: LateMemCall
  loc_A82CDD: LitVarStr var_C0, "  <THEAD>"
  loc_A82CE2: PopAdLdVar
  loc_A82CE3: FLdPr Me
  loc_A82CE6: MemLdRfVar from_stack_1.htmFile
  loc_A82CE9: LdPrVar
  loc_A82CEB: LateMemCall
  loc_A82CF1: LitVarStr var_C0, "  <tr align=""center"" class=""Encabezado"">"
  loc_A82CF6: PopAdLdVar
  loc_A82CF7: FLdPr Me
  loc_A82CFA: MemLdRfVar from_stack_1.htmFile
  loc_A82CFD: LdPrVar
  loc_A82CFF: LateMemCall
  loc_A82D05: LitVarStr var_C0, "    <th>Cuenta contable</th>"
  loc_A82D0A: PopAdLdVar
  loc_A82D0B: FLdPr Me
  loc_A82D0E: MemLdRfVar from_stack_1.htmFile
  loc_A82D11: LdPrVar
  loc_A82D13: LateMemCall
  loc_A82D19: LitVarStr var_C0, "    <th>Detalle</th>"
  loc_A82D1E: PopAdLdVar
  loc_A82D1F: FLdPr Me
  loc_A82D22: MemLdRfVar from_stack_1.htmFile
  loc_A82D25: LdPrVar
  loc_A82D27: LateMemCall
  loc_A82D2D: LitVarStr var_C0, "    <th>Imp.</th>"
  loc_A82D32: PopAdLdVar
  loc_A82D33: FLdPr Me
  loc_A82D36: MemLdRfVar from_stack_1.htmFile
  loc_A82D39: LdPrVar
  loc_A82D3B: LateMemCall
  loc_A82D41: LitVarStr var_C0, "    <th>Se Debita</th>"
  loc_A82D46: PopAdLdVar
  loc_A82D47: FLdPr Me
  loc_A82D4A: MemLdRfVar from_stack_1.htmFile
  loc_A82D4D: LdPrVar
  loc_A82D4F: LateMemCall
  loc_A82D55: LitVarStr var_C0, "    <th>Se Acredita</th>"
  loc_A82D5A: PopAdLdVar
  loc_A82D5B: FLdPr Me
  loc_A82D5E: MemLdRfVar from_stack_1.htmFile
  loc_A82D61: LdPrVar
  loc_A82D63: LateMemCall
  loc_A82D69: LitVarStr var_C0, "    <th>Saldo</th>"
  loc_A82D6E: PopAdLdVar
  loc_A82D6F: FLdPr Me
  loc_A82D72: MemLdRfVar from_stack_1.htmFile
  loc_A82D75: LdPrVar
  loc_A82D77: LateMemCall
  loc_A82D7D: LitVarStr var_C0, "    <th>Descripción</th>"
  loc_A82D82: PopAdLdVar
  loc_A82D83: FLdPr Me
  loc_A82D86: MemLdRfVar from_stack_1.htmFile
  loc_A82D89: LdPrVar
  loc_A82D8B: LateMemCall
  loc_A82D91: LitVarStr var_C0, "  </tr>"
  loc_A82D96: PopAdLdVar
  loc_A82D97: FLdPr Me
  loc_A82D9A: MemLdRfVar from_stack_1.htmFile
  loc_A82D9D: LdPrVar
  loc_A82D9F: LateMemCall
  loc_A82DA5: LitVarStr var_C0, "  </THEAD>"
  loc_A82DAA: PopAdLdVar
  loc_A82DAB: FLdPr Me
  loc_A82DAE: MemLdRfVar from_stack_1.htmFile
  loc_A82DB1: LdPrVar
  loc_A82DB3: LateMemCall
  loc_A82DB9: ExitProcHresult
End Function

Private Function Proc_196_19_982D20() '982D20
  'Data Table: 440EB0
  loc_982CE0: LitVarStr var_94, "</table>"
  loc_982CE5: PopAdLdVar
  loc_982CE6: FLdPr Me
  loc_982CE9: MemLdRfVar from_stack_1.htmFile
  loc_982CEC: LdPrVar
  loc_982CEE: LateMemCall
  loc_982CF4: LitVarStr var_94, "</body>"
  loc_982CF9: PopAdLdVar
  loc_982CFA: FLdPr Me
  loc_982CFD: MemLdRfVar from_stack_1.htmFile
  loc_982D00: LdPrVar
  loc_982D02: LateMemCall
  loc_982D08: LitVarStr var_94, "</html>"
  loc_982D0D: PopAdLdVar
  loc_982D0E: FLdPr Me
  loc_982D11: MemLdRfVar from_stack_1.htmFile
  loc_982D14: LdPrVar
  loc_982D16: LateMemCall
  loc_982D1C: ExitProcHresult
End Function
