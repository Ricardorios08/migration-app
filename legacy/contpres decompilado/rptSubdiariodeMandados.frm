VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodeMandados
  Caption = "Subdiario de Mandados a Pagar"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodeMandados.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6195
  ClientHeight = 2970
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2715
    Width = 6195
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptSubdiariodeMandados.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptSubdiariodeMandados.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodeMandados.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
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
    Top = 1560
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
    Width = 5895
    Height = 1455
    TabIndex = 0
    Begin VB.CommandButton cmdCalHasta
      Left = 2520
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptSubdiariodeMandados.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodeMandados.frx":1142
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 480
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1320
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptSubdiariodeMandados.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiariodeMandados.frx":170C
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 720
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 720
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 2160
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptSubdiariodeMandados.frx":1794
  End
End

Attribute VB_Name = "rptSubdiariodeMandados"

Public bGenerado As Boolean

Private Type UDT_1_005A7200
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_2_006195A8
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B60C
  'Data Table: 44E538
  loc_98B5D4: FLdPr Me
  loc_98B5D7: VCallAd Control_ID_statusBar
  loc_98B5DA: FStAdFunc var_88
  loc_98B5DD: FLdPr var_88
  loc_98B5E0: LateIdLdVar var_98 DispID_1 0
  loc_98B5E7: CStrVarTmp
  loc_98B5E8: CVarStr var_A8
  loc_98B5EB: PopAdLdVar
  loc_98B5EC: FLdPr Me
  loc_98B5EF: VCallAd Control_ID_statusBar
  loc_98B5F2: FStAdFunc var_BC
  loc_98B5F5: FLdPr var_BC
  loc_98B5F8: LateIdSt
  loc_98B5FD: FFreeAd var_88 = ""
  loc_98B604: FFreeVar var_98 = ""
  loc_98B60B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '957FEC
  'Data Table: 44E538
  loc_957FD4: LitI2_Byte 0
  loc_957FD6: ILdRf Me
  loc_957FD9: CastAd
  loc_957FDC: FStAdFunc var_88
  loc_957FDF: FLdRfVar var_88
  loc_957FE2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_957FE7: FFree1Ad var_88
  loc_957FEA: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '962120
  'Data Table: 44E538
  loc_962108: ILdRf Me
  loc_96210B: CastAd
  loc_96210E: FStAdFunc var_88
  loc_962111: FLdRfVar var_88
  loc_962114: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_962119: FFree1Ad var_88
  loc_96211C: ExitProcHresult
  loc_96211D: FnLenStr
  loc_96211E: ImpAdLdPr unk_44A539
End Sub

Private Sub cmdSalir_Click() '97A424
  'Data Table: 44E538
  loc_97A3F4: LitVarStr var_94, "Cerrando..."
  loc_97A3F9: PopAdLdVar
  loc_97A3FA: FLdPr Me
  loc_97A3FD: VCallAd Control_ID_statusBar
  loc_97A400: FStAdFunc var_A8
  loc_97A403: FLdPr var_A8
  loc_97A406: LateIdSt
  loc_97A40B: FFree1Ad var_A8
  loc_97A40E: ILdRf Me
  loc_97A411: FStAdNoPop
  loc_97A415: ImpAdLdRf MemVar_C44F9C
  loc_97A418: NewIfNullPr Me
  loc_97A41B: Me.Global.Unload from_stack_1
  loc_97A420: FFree1Ad var_A8
  loc_97A423: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BD37C
  'Data Table: 44E538
  loc_9BD2CC: LitI2_Byte 0
  loc_9BD2CE: FLdPr Me
  loc_9BD2D1: MemStI2 bGenerado
  loc_9BD2D4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BD2D9: LitI2_Byte 0
  loc_9BD2DB: PopTmpLdAd2 var_86
  loc_9BD2DE: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BD2E3: CVarDate var_A8
  loc_9BD2E7: FLdRfVar var_B8
  loc_9BD2EA: ImpAdCallFPR4  = Year()
  loc_9BD2EF: LitI2_Byte 0
  loc_9BD2F1: PopTmpLdAd2 var_BA
  loc_9BD2F4: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BD2F9: CVarDate var_DC
  loc_9BD2FD: FLdRfVar var_EC
  loc_9BD300: ImpAdCallFPR4  = Month()
  loc_9BD305: LitI2_Byte 1
  loc_9BD307: FLdRfVar var_EC
  loc_9BD30A: CI2Var
  loc_9BD30B: FLdRfVar var_B8
  loc_9BD30E: CI2Var
  loc_9BD30F: FLdRfVar var_FC
  loc_9BD312: ImpAdCallFPR4  = DateSerial(, , )
  loc_9BD317: FLdRfVar var_FC
  loc_9BD31A: CStrVarTmp
  loc_9BD31B: CVarStr var_10C
  loc_9BD31E: PopAdLdVar
  loc_9BD31F: FLdPr Me
  loc_9BD322: VCallAd Control_ID_mskDesde
  loc_9BD325: FStAdFunc var_120
  loc_9BD328: FLdPr var_120
  loc_9BD32B: LateIdSt
  loc_9BD330: FFree1Ad var_120
  loc_9BD333: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9BD342: ImpAdLdFPR8 MemVar_C3D04C
  loc_9BD345: CStrDate
  loc_9BD347: CVarStr var_A8
  loc_9BD34A: PopAdLdVar
  loc_9BD34B: FLdPr Me
  loc_9BD34E: VCallAd Control_ID_mskHasta
  loc_9BD351: FStAdFunc var_120
  loc_9BD354: FLdPr var_120
  loc_9BD357: LateIdSt
  loc_9BD35C: FFree1Ad var_120
  loc_9BD35F: FFree1Var var_A8 = ""
  loc_9BD362: Call HabilitarCriterio()
  loc_9BD367: ILdRf Me
  loc_9BD36A: CastAd
  loc_9BD36D: FStAdFunc var_120
  loc_9BD370: FLdRfVar var_120
  loc_9BD373: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BD378: FFree1Ad var_120
  loc_9BD37B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9583C8
  'Data Table: 44E538
  loc_9583B0: ILdRf Me
  loc_9583B3: CastAd
  loc_9583B6: FStAdFunc var_88
  loc_9583B9: FLdRfVar var_88
  loc_9583BC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9583C1: FFree1Ad var_88
  loc_9583C4: ExitProcHresult
  loc_9583C5: FLdPrThis
  loc_9583C6: FLdPrThis
End Sub

Private Sub mskDesde_UnknownEvent_0 '94DFD0
  'Data Table: 44E538
  loc_94DFBC: FLdPr Me
  loc_94DFBF: VCallAd Control_ID_mskDesde
  loc_94DFC2: CVarAd
  loc_94DFC6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DFCB: FFree1Var var_94 = ""
  loc_94DFCE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C3CC8
  'Data Table: 44E538
  loc_9C3C04: FLdPr Me
  loc_9C3C07: VCallAd Control_ID_mskDesde
  loc_9C3C0A: FStAdFunc var_88
  loc_9C3C0D: FLdPr var_88
  loc_9C3C10: LateIdLdVar var_98 DispID_22 0
  loc_9C3C17: CStrVarTmp
  loc_9C3C18: FStStrNoPop var_9C
  loc_9C3C1B: LitStr vbNullString
  loc_9C3C1E: NeStr
  loc_9C3C20: FFree1Str var_9C
  loc_9C3C23: FFree1Ad var_88
  loc_9C3C26: FFree1Var var_98 = ""
  loc_9C3C29: BranchF loc_9C3CC4
  loc_9C3C2C: FLdPr Me
  loc_9C3C2F: VCallAd Control_ID_mskDesde
  loc_9C3C32: FStAdFunc var_88
  loc_9C3C35: FLdPr var_88
  loc_9C3C38: LateIdLdVar var_98 DispID_15 0
  loc_9C3C3F: PopAd
  loc_9C3C41: FLdPr Me
  loc_9C3C44: VCallAd Control_ID_mskDesde
  loc_9C3C47: FStAdFunc var_AC
  loc_9C3C4A: LitI2_Byte &HFF
  loc_9C3C4C: PopTmpLdAd2 var_A2
  loc_9C3C4F: FLdZeroAd var_AC
  loc_9C3C52: FStAdFunc var_A0
  loc_9C3C55: FLdRfVar var_A0
  loc_9C3C58: LitStr vbNullString
  loc_9C3C5B: LitI2_Byte 0
  loc_9C3C5D: LitI2_Byte 0
  loc_9C3C5F: FLdRfVar var_98
  loc_9C3C62: CStrVarTmp
  loc_9C3C63: FStStrNoPop var_9C
  loc_9C3C66: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C3C6B: FStStrNoPop var_A8
  loc_9C3C6E: FLdPr Me
  loc_9C3C71: MemStStrCopy
  loc_9C3C75: FFreeStr var_9C = ""
  loc_9C3C7C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C3C85: FFree1Var var_98 = ""
  loc_9C3C88: FLdPr Me
  loc_9C3C8B: VCallAd Control_ID_mskDesde
  loc_9C3C8E: FStAdFunc var_B0
  loc_9C3C91: LitNothing
  loc_9C3C93: CastAd
  loc_9C3C96: FStAdFunc var_AC
  loc_9C3C99: FLdRfVar var_AC
  loc_9C3C9C: FLdZeroAd var_B0
  loc_9C3C9F: FStAdFuncNoPop
  loc_9C3CA2: CastAd
  loc_9C3CA5: FStAdFunc var_A0
  loc_9C3CA8: FLdRfVar var_A0
  loc_9C3CAB: FLdPr Me
  loc_9C3CAE: MemLdRfVar from_stack_1.global_100
  loc_9C3CB1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C3CB6: IStI2 arg_C
  loc_9C3CB9: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C3CC4: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '94E1C8
  'Data Table: 44E538
  loc_94E1B4: FLdPr Me
  loc_94E1B7: VCallAd Control_ID_mskHasta
  loc_94E1BA: CVarAd
  loc_94E1BE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E1C3: FFree1Var var_94 = ""
  loc_94E1C6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B2214
  'Data Table: 44E538
  loc_9B2178: FLdPr Me
  loc_9B217B: VCallAd Control_ID_mskHasta
  loc_9B217E: FStAdFunc var_88
  loc_9B2181: FLdPr var_88
  loc_9B2184: LateIdLdVar var_98 DispID_15 0
  loc_9B218B: PopAd
  loc_9B218D: FLdPr Me
  loc_9B2190: VCallAd Control_ID_mskHasta
  loc_9B2193: FStAdFunc var_AC
  loc_9B2196: LitI2_Byte &HFF
  loc_9B2198: PopTmpLdAd2 var_A2
  loc_9B219B: FLdZeroAd var_AC
  loc_9B219E: FStAdFunc var_A0
  loc_9B21A1: FLdRfVar var_A0
  loc_9B21A4: LitStr vbNullString
  loc_9B21A7: LitI2_Byte 0
  loc_9B21A9: LitI2_Byte 0
  loc_9B21AB: FLdRfVar var_98
  loc_9B21AE: CStrVarTmp
  loc_9B21AF: FStStrNoPop var_9C
  loc_9B21B2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B21B7: FStStrNoPop var_A8
  loc_9B21BA: FLdPr Me
  loc_9B21BD: MemStStrCopy
  loc_9B21C1: FFreeStr var_9C = ""
  loc_9B21C8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B21D1: FFree1Var var_98 = ""
  loc_9B21D4: FLdPr Me
  loc_9B21D7: VCallAd Control_ID_mskHasta
  loc_9B21DA: FStAdFunc var_B0
  loc_9B21DD: LitNothing
  loc_9B21DF: CastAd
  loc_9B21E2: FStAdFunc var_AC
  loc_9B21E5: FLdRfVar var_AC
  loc_9B21E8: FLdZeroAd var_B0
  loc_9B21EB: FStAdFuncNoPop
  loc_9B21EE: CastAd
  loc_9B21F1: FStAdFunc var_A0
  loc_9B21F4: FLdRfVar var_A0
  loc_9B21F7: FLdPr Me
  loc_9B21FA: MemLdRfVar from_stack_1.global_100
  loc_9B21FD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B2202: IStI2 arg_C
  loc_9B2205: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2210: ExitProcHresult
End Function

Private Sub cmdCalHasta_Click() '97CFF0
  'Data Table: 44E538
  loc_97CFBC: LitVar_Missing var_A4
  loc_97CFBF: PopAdLdVar
  loc_97CFC0: LitVarI4
  loc_97CFC8: PopAdLdVar
  loc_97CFC9: ImpAdLdRf MemVar_C3D9A8
  loc_97CFCC: NewIfNullPr frmCalendario
  loc_97CFCF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CFD4: ImpAdLdRf MemVar_C3D038
  loc_97CFD7: CDargRef
  loc_97CFDB: FLdPr Me
  loc_97CFDE: VCallAd Control_ID_mskHasta
  loc_97CFE1: FStAdFunc var_A8
  loc_97CFE4: FLdPr var_A8
  loc_97CFE7: LateIdSt
  loc_97CFEC: FFree1Ad var_A8
  loc_97CFEF: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97D4D0
  'Data Table: 44E538
  loc_97D49C: LitVar_Missing var_A4
  loc_97D49F: PopAdLdVar
  loc_97D4A0: LitVarI4
  loc_97D4A8: PopAdLdVar
  loc_97D4A9: ImpAdLdRf MemVar_C3D9A8
  loc_97D4AC: NewIfNullPr frmCalendario
  loc_97D4AF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D4B4: ImpAdLdRf MemVar_C3D038
  loc_97D4B7: CDargRef
  loc_97D4BB: FLdPr Me
  loc_97D4BE: VCallAd Control_ID_mskDesde
  loc_97D4C1: FStAdFunc var_A8
  loc_97D4C4: FLdPr var_A8
  loc_97D4C7: LateIdSt
  loc_97D4CC: FFree1Ad var_A8
  loc_97D4CF: ExitProcHresult
End Sub

Private Sub Form_Load() '96BED8
  'Data Table: 44E538
  loc_96BEB8: LitI2_Byte &HFF
  loc_96BEBA: ImpAdStI2 MemVar_C3D840
  loc_96BEBD: ILdRf Me
  loc_96BEC0: CastAd
  loc_96BEC3: FStAdFunc var_88
  loc_96BEC6: FLdRfVar var_88
  loc_96BEC9: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96BECE: FFree1Ad var_88
  loc_96BED1: Call cmdNueva_Click()
  loc_96BED6: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '957834
  'Data Table: 44E538
  loc_95781C: FLdPr Me
  loc_95781F: VCallAd Control_ID_wbbReporte
  loc_957822: FStAdFunc var_88
  loc_957825: FLdRfVar var_88
  loc_957828: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95782D: FFree1Ad var_88
  loc_957830: ExitProcHresult
End Sub

Public Function bGeneradoGet() '44F1C4
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44F1D3
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A1DDC
  'Data Table: 44E538
  loc_9A1D78: LitI4 0
  loc_9A1D7D: LitI4 3
  loc_9A1D82: FLdRfVar var_88
  loc_9A1D85: Redim
  loc_9A1D8F: FLdPr Me
  loc_9A1D92: VCallAd Control_ID_mskDesde
  loc_9A1D95: CVarAd
  loc_9A1D99: ParmAry1St
  loc_9A1D9F: FLdPr Me
  loc_9A1DA2: VCallAd Control_ID_cmdCalDesde
  loc_9A1DA5: CVarAd
  loc_9A1DA9: ParmAry1St
  loc_9A1DAF: FLdPr Me
  loc_9A1DB2: VCallAd Control_ID_mskHasta
  loc_9A1DB5: CVarAd
  loc_9A1DB9: ParmAry1St
  loc_9A1DBF: FLdPr Me
  loc_9A1DC2: VCallAd Control_ID_cmdCalHasta
  loc_9A1DC5: CVarAd
  loc_9A1DC9: ParmAry1St
  loc_9A1DCF: FLdRfVar var_88
  loc_9A1DD2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1DD7: FLdRfVar var_88
  loc_9A1DDA: Erase
  loc_9A1DDB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B0A7F0
  'Data Table: 44E538
  loc_B09FF4: LitStr vbNullString
  loc_B09FF7: FLdPr Me
  loc_B09FFA: MemStStrCopy
  loc_B09FFE: LitI2_Byte 0
  loc_B0A000: PopTmpLdAd2 var_8E
  loc_B0A003: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B0A008: FLdPr Me
  loc_B0A00B: MemLdStr global_100
  loc_B0A00E: LitStr vbNullString
  loc_B0A011: NeStr
  loc_B0A013: BranchF loc_B0A019
  loc_B0A016: Branch loc_B0A7C4
  loc_B0A019: LitI2_Byte 0
  loc_B0A01B: PopTmpLdAd2 var_8E
  loc_B0A01E: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B0A023: FLdPr Me
  loc_B0A026: MemLdStr global_100
  loc_B0A029: LitStr vbNullString
  loc_B0A02C: NeStr
  loc_B0A02E: BranchF loc_B0A034
  loc_B0A031: Branch loc_B0A7C4
  loc_B0A034: FLdPr Me
  loc_B0A037: MemLdI2 bGenerado
  loc_B0A03A: BranchF loc_B0A03E
  loc_B0A03D: ExitProcHresult
  loc_B0A03E: LitVarStr var_A0, "Generando reporte..."
  loc_B0A043: PopAdLdVar
  loc_B0A044: FLdPr Me
  loc_B0A047: VCallAd Control_ID_statusBar
  loc_B0A04A: FStAdFunc var_B4
  loc_B0A04D: FLdPr var_B4
  loc_B0A050: LateIdSt
  loc_B0A055: FFree1Ad var_B4
  loc_B0A058: LitI4 &HB
  loc_B0A05D: CI2I4
  loc_B0A05E: FLdPr Me
  loc_B0A061: Me.MousePointer = from_stack_1
  loc_B0A066: FLdPr Me
  loc_B0A069: VCallAd Control_ID_mskDesde
  loc_B0A06C: FStAdFunc var_B4
  loc_B0A06F: FLdPr var_B4
  loc_B0A072: LateIdLdVar var_C4 DispID_22 0
  loc_B0A079: CStrVarTmp
  loc_B0A07A: FStStrNoPop var_C8
  loc_B0A07D: LitStr vbNullString
  loc_B0A080: NeStr
  loc_B0A082: FFree1Str var_C8
  loc_B0A085: FFree1Ad var_B4
  loc_B0A088: FFree1Var var_C4 = ""
  loc_B0A08B: BranchF loc_B0A0DD
  loc_B0A08E: FLdPr Me
  loc_B0A091: VCallAd Control_ID_mskDesde
  loc_B0A094: FStAdFunc var_B4
  loc_B0A097: FLdPr var_B4
  loc_B0A09A: LateIdLdVar var_C4 DispID_15 0
  loc_B0A0A1: PopAd
  loc_B0A0A3: LitStr " AND FechCaja >= "
  loc_B0A0A6: LitI4 1
  loc_B0A0AB: LitI4 1
  loc_B0A0B0: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_B0A0B5: FStVarCopyObj var_E8
  loc_B0A0B8: FLdRfVar var_E8
  loc_B0A0BB: FLdRfVar var_C4
  loc_B0A0BE: CStrVarTmp
  loc_B0A0BF: CVarStr var_D8
  loc_B0A0C2: ImpAdCallI2 Format$(, )
  loc_B0A0C7: FStStrNoPop var_C8
  loc_B0A0CA: ConcatStr
  loc_B0A0CB: FStStr var_88
  loc_B0A0CE: FFree1Str var_C8
  loc_B0A0D1: FFree1Ad var_B4
  loc_B0A0D4: FFreeVar var_C4 = "": var_D8 = ""
  loc_B0A0DD: FLdPr Me
  loc_B0A0E0: VCallAd Control_ID_mskHasta
  loc_B0A0E3: FStAdFunc var_B4
  loc_B0A0E6: FLdPr var_B4
  loc_B0A0E9: LateIdLdVar var_C4 DispID_22 0
  loc_B0A0F0: CStrVarTmp
  loc_B0A0F1: FStStrNoPop var_C8
  loc_B0A0F4: LitStr vbNullString
  loc_B0A0F7: NeStr
  loc_B0A0F9: FFree1Str var_C8
  loc_B0A0FC: FFree1Ad var_B4
  loc_B0A0FF: FFree1Var var_C4 = ""
  loc_B0A102: BranchF loc_B0A154
  loc_B0A105: FLdPr Me
  loc_B0A108: VCallAd Control_ID_mskHasta
  loc_B0A10B: FStAdFunc var_B4
  loc_B0A10E: FLdPr var_B4
  loc_B0A111: LateIdLdVar var_C4 DispID_15 0
  loc_B0A118: PopAd
  loc_B0A11A: LitStr " AND FechCaja <= "
  loc_B0A11D: LitI4 1
  loc_B0A122: LitI4 1
  loc_B0A127: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_B0A12C: FStVarCopyObj var_E8
  loc_B0A12F: FLdRfVar var_E8
  loc_B0A132: FLdRfVar var_C4
  loc_B0A135: CStrVarTmp
  loc_B0A136: CVarStr var_D8
  loc_B0A139: ImpAdCallI2 Format$(, )
  loc_B0A13E: FStStrNoPop var_C8
  loc_B0A141: ConcatStr
  loc_B0A142: FStStr var_8C
  loc_B0A145: FFree1Str var_C8
  loc_B0A148: FFree1Ad var_B4
  loc_B0A14B: FFreeVar var_C4 = "": var_D8 = ""
  loc_B0A154: FLdPr Me
  loc_B0A157: MemLdRfVar from_stack_1.global_56
  loc_B0A15A: NewIfNullAd
  loc_B0A15D: FStAd var_EC 
  loc_B0A161: LitStr "SELECT DISTINCT cajamapa.CodiCuco, DetaCuco"
  loc_B0A164: LitStr " FROM cajamapa"
  loc_B0A167: ConcatStr
  loc_B0A168: FStStrNoPop var_C8
  loc_B0A16B: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = cajamapa.PeriInfo AND infogov.cuentacontable.CodiCuco = cajamapa.CodiCuco"
  loc_B0A16E: ConcatStr
  loc_B0A16F: FStStrNoPop var_F0
  loc_B0A172: LitStr " WHERE TRUE "
  loc_B0A175: ConcatStr
  loc_B0A176: FStStrNoPop var_F4
  loc_B0A179: ILdRf var_88
  loc_B0A17C: ConcatStr
  loc_B0A17D: FStStrNoPop var_F8
  loc_B0A180: ILdRf var_8C
  loc_B0A183: ConcatStr
  loc_B0A184: FStStrNoPop var_FC
  loc_B0A187: LitStr " ORDER BY CodiCuco"
  loc_B0A18A: ConcatStr
  loc_B0A18B: FStStrNoPop var_100
  loc_B0A18E: FLdPr var_EC
  loc_B0A191: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0A196: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B0A1A5: FLdRfVar var_104
  loc_B0A1A8: FLdPr var_EC
  loc_B0A1AB: from_stack_1 = clsbase.RecordCount
  loc_B0A1B0: ILdRf var_104
  loc_B0A1B3: LitI4 0
  loc_B0A1B8: EqI4
  loc_B0A1B9: BranchF loc_B0A1CC
  loc_B0A1BC: LitI4 0
  loc_B0A1C1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B0A1C4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0A1C9: Branch loc_B0A7C4
  loc_B0A1CC: LitI2_Byte 0
  loc_B0A1CE: CStrUI1
  loc_B0A1D0: FStStrNoPop var_C8
  loc_B0A1D3: FLdPr Me
  loc_B0A1D6: MemStStrCopy
  loc_B0A1DA: FFree1Str var_C8
  loc_B0A1DD: LitI2_Byte 0
  loc_B0A1DF: CStrUI1
  loc_B0A1E1: FStStrNoPop var_C8
  loc_B0A1E4: FLdPr Me
  loc_B0A1E7: MemStStrCopy
  loc_B0A1EB: FFree1Str var_C8
  loc_B0A1EE: LitI4 1
  loc_B0A1F3: FLdRfVar var_104
  loc_B0A1F6: FLdPr Me
  loc_B0A1F9: MemLdRfVar from_stack_1.global_56
  loc_B0A1FC: NewIfNullPr clsbase
  loc_B0A1FF: from_stack_1 = clsbase.RecordCount
  loc_B0A204: ILdRf var_104
  loc_B0A207: FLdPr Me
  loc_B0A20A: MemLdRfVar from_stack_1.global_80
  loc_B0A20D: Redim
  loc_B0A217: FLdPr var_EC
  loc_B0A21A: Call clsbase.MoveFirst()
  loc_B0A21F: LitI2_Byte 1
  loc_B0A221: FLdPr Me
  loc_B0A224: MemLdRfVar from_stack_1.global_92
  loc_B0A227: FLdPr Me
  loc_B0A22A: MemLdStr global_80
  loc_B0A22D: LitI2_Byte 1
  loc_B0A22F: FnUBound
  loc_B0A231: CI2I4
  loc_B0A232: ForI2 var_108
  loc_B0A238: FLdRfVar var_110
  loc_B0A23B: LitVarStr var_A0, "CodiCuco"
  loc_B0A240: PopAdLdVar
  loc_B0A241: FLdRfVar var_10C
  loc_B0A244: FLdRfVar var_B4
  loc_B0A247: FLdPr var_EC
  loc_B0A24A: from_stack_1v = clsbase.RsFrmGet()
  loc_B0A24F: FLdPr var_B4
  loc_B0A252:  = Me.Fields
  loc_B0A257: FLdPr var_10C
  loc_B0A25A: from_stack_2 = Me.Item(from_stack_1)
  loc_B0A25F: LitI2_Byte 0
  loc_B0A261: LitVar_Missing var_D8
  loc_B0A264: LitI2_Byte 0
  loc_B0A266: FLdZeroAd var_110
  loc_B0A269: CVarAd
  loc_B0A26D: PopAdLdVar
  loc_B0A26E: FLdPr Me
  loc_B0A271: MemLdI2 global_92
  loc_B0A274: CI4UI1
  loc_B0A275: FLdPr Me
  loc_B0A278: MemLdStr global_80
  loc_B0A27B: AryLock
  loc_B0A27E: Ary1LdPr
  loc_B0A27F: MemLdRfVar from_stack_1.global_0
  loc_B0A282: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A287: AryUnlock
  loc_B0A28A: FFreeAd var_B4 = ""
  loc_B0A291: FFreeVar var_C4 = ""
  loc_B0A298: FLdRfVar var_110
  loc_B0A29B: LitVarStr var_A0, "DetaCuco"
  loc_B0A2A0: PopAdLdVar
  loc_B0A2A1: FLdRfVar var_10C
  loc_B0A2A4: FLdRfVar var_B4
  loc_B0A2A7: FLdPr var_EC
  loc_B0A2AA: from_stack_1v = clsbase.RsFrmGet()
  loc_B0A2AF: FLdPr var_B4
  loc_B0A2B2:  = Me.Fields
  loc_B0A2B7: FLdPr var_10C
  loc_B0A2BA: from_stack_2 = Me.Item(from_stack_1)
  loc_B0A2BF: LitI2_Byte 0
  loc_B0A2C1: LitVar_Missing var_D8
  loc_B0A2C4: LitI2_Byte 0
  loc_B0A2C6: FLdZeroAd var_110
  loc_B0A2C9: CVarAd
  loc_B0A2CD: PopAdLdVar
  loc_B0A2CE: FLdPr Me
  loc_B0A2D1: MemLdI2 global_92
  loc_B0A2D4: CI4UI1
  loc_B0A2D5: FLdPr Me
  loc_B0A2D8: MemLdStr global_80
  loc_B0A2DB: AryLock
  loc_B0A2DE: Ary1LdPr
  loc_B0A2DF: MemLdRfVar from_stack_1.global_4
  loc_B0A2E2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A2E7: AryUnlock
  loc_B0A2EA: FFreeAd var_B4 = ""
  loc_B0A2F1: FFreeVar var_C4 = ""
  loc_B0A2F8: FLdPr var_EC
  loc_B0A2FB: Call clsbase.MoveSiguiente()
  loc_B0A300: FLdPr Me
  loc_B0A303: MemLdRfVar from_stack_1.global_92
  loc_B0A306: NextI2 var_108, loc_B0A238
  loc_B0A30B: LitI2_Byte 1
  loc_B0A30D: FLdPr Me
  loc_B0A310: MemLdRfVar from_stack_1.global_92
  loc_B0A313: FLdPr Me
  loc_B0A316: MemLdStr global_80
  loc_B0A319: LitI2_Byte 1
  loc_B0A31B: FnUBound
  loc_B0A31D: CI2I4
  loc_B0A31E: ForI2 var_118
  loc_B0A324: LitStr "SELECT FechCaja, ExpeImpu, cajamapa.CodiPart, cajamapa.CodiOrga, cajamapa.NumeImpu, ImpoCamp as DebeCaja, ImpoCamp as HabeCaja"
  loc_B0A327: LitStr " FROM cajamapa"
  loc_B0A32A: ConcatStr
  loc_B0A32B: FStStrNoPop var_C8
  loc_B0A32E: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = cajamapa.PeriInfo AND imputacion.CodiPart = cajamapa.CodiPart AND imputacion.CodiOrga = cajamapa.CodiOrga AND imputacion.NumeImpu = cajamapa.NumeImpu"
  loc_B0A331: ConcatStr
  loc_B0A332: FStStrNoPop var_F0
  loc_B0A335: LitStr " WHERE CodiCuco = '"
  loc_B0A338: ConcatStr
  loc_B0A339: FStStrNoPop var_F4
  loc_B0A33C: FLdPr Me
  loc_B0A33F: MemLdI2 global_92
  loc_B0A342: CI4UI1
  loc_B0A343: FLdPr Me
  loc_B0A346: MemLdStr global_80
  loc_B0A349: Ary1LdPr
  loc_B0A34A: MemLdStr global_0
  loc_B0A34D: ConcatStr
  loc_B0A34E: FStStrNoPop var_F8
  loc_B0A351: LitStr "'"
  loc_B0A354: ConcatStr
  loc_B0A355: FStStrNoPop var_FC
  loc_B0A358: ILdRf var_88
  loc_B0A35B: ConcatStr
  loc_B0A35C: FStStrNoPop var_100
  loc_B0A35F: ILdRf var_8C
  loc_B0A362: ConcatStr
  loc_B0A363: FStStrNoPop var_11C
  loc_B0A366: LitStr " ORDER BY FechCaja, ExpeImpu, cajamapa.CodiPart, cajamapa.CodiOrga, cajamapa.NumeImpu"
  loc_B0A369: ConcatStr
  loc_B0A36A: FStStrNoPop var_120
  loc_B0A36D: FLdPr var_EC
  loc_B0A370: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0A375: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_11C = ""
  loc_B0A388: FLdRfVar var_104
  loc_B0A38B: FLdPr var_EC
  loc_B0A38E: from_stack_1 = clsbase.RecordCount
  loc_B0A393: ILdRf var_104
  loc_B0A396: LitI4 0
  loc_B0A39B: GtI4
  loc_B0A39C: BranchF loc_B0A74D
  loc_B0A39F: FLdRfVar var_104
  loc_B0A3A2: FLdPr var_EC
  loc_B0A3A5: from_stack_1 = clsbase.RecordCount
  loc_B0A3AA: LitI4 1
  loc_B0A3AF: ILdRf var_104
  loc_B0A3B2: FLdPr Me
  loc_B0A3B5: MemLdI2 global_92
  loc_B0A3B8: CI4UI1
  loc_B0A3B9: FLdPr Me
  loc_B0A3BC: MemLdStr global_80
  loc_B0A3BF: Ary1LdPr
  loc_B0A3C0: MemLdRfVar from_stack_1.global_8
  loc_B0A3C3: Redim
  loc_B0A3CD: FLdPr var_EC
  loc_B0A3D0: Call clsbase.MoveFirst()
  loc_B0A3D5: LitI2_Byte 1
  loc_B0A3D7: FLdPr Me
  loc_B0A3DA: MemLdRfVar from_stack_1.global_94
  loc_B0A3DD: FLdPr Me
  loc_B0A3E0: MemLdI2 global_92
  loc_B0A3E3: CI4UI1
  loc_B0A3E4: FLdPr Me
  loc_B0A3E7: MemLdStr global_80
  loc_B0A3EA: Ary1LdPr
  loc_B0A3EB: MemLdStr global_8
  loc_B0A3EE: LitI2_Byte 1
  loc_B0A3F0: FnUBound
  loc_B0A3F2: CI2I4
  loc_B0A3F3: ForI2 var_124
  loc_B0A3F9: FLdRfVar var_110
  loc_B0A3FC: LitVarStr var_A0, "FechCaja"
  loc_B0A401: PopAdLdVar
  loc_B0A402: FLdRfVar var_10C
  loc_B0A405: FLdRfVar var_B4
  loc_B0A408: FLdPr var_EC
  loc_B0A40B: from_stack_1v = clsbase.RsFrmGet()
  loc_B0A410: FLdPr var_B4
  loc_B0A413:  = Me.Fields
  loc_B0A418: FLdPr var_10C
  loc_B0A41B: from_stack_2 = Me.Item(from_stack_1)
  loc_B0A420: LitI2_Byte 0
  loc_B0A422: LitVar_Missing var_D8
  loc_B0A425: LitI2_Byte 0
  loc_B0A427: FLdZeroAd var_110
  loc_B0A42A: CVarAd
  loc_B0A42E: PopAdLdVar
  loc_B0A42F: FLdPr Me
  loc_B0A432: MemLdI2 global_94
  loc_B0A435: CI4UI1
  loc_B0A436: FLdPr Me
  loc_B0A439: MemLdI2 global_92
  loc_B0A43C: CI4UI1
  loc_B0A43D: FLdPr Me
  loc_B0A440: MemLdStr global_80
  loc_B0A443: AryLock
  loc_B0A446: Ary1LdPr
  loc_B0A447: MemLdStr global_8
  loc_B0A44A: AryLock
  loc_B0A44D: Ary1LdPr
  loc_B0A44E: MemLdRfVar from_stack_1.global_0
  loc_B0A451: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A456: AryUnlock
  loc_B0A459: AryUnlock
  loc_B0A45C: FFreeAd var_B4 = ""
  loc_B0A463: FFreeVar var_C4 = ""
  loc_B0A46A: FLdRfVar var_110
  loc_B0A46D: LitVarStr var_A0, "ExpeImpu"
  loc_B0A472: PopAdLdVar
  loc_B0A473: FLdRfVar var_10C
  loc_B0A476: FLdRfVar var_B4
  loc_B0A479: FLdPr var_EC
  loc_B0A47C: from_stack_1v = clsbase.RsFrmGet()
  loc_B0A481: FLdPr var_B4
  loc_B0A484:  = Me.Fields
  loc_B0A489: FLdPr var_10C
  loc_B0A48C: from_stack_2 = Me.Item(from_stack_1)
  loc_B0A491: LitI2_Byte 0
  loc_B0A493: LitVar_Missing var_D8
  loc_B0A496: LitI2_Byte 0
  loc_B0A498: FLdZeroAd var_110
  loc_B0A49B: CVarAd
  loc_B0A49F: PopAdLdVar
  loc_B0A4A0: FLdPr Me
  loc_B0A4A3: MemLdI2 global_94
  loc_B0A4A6: CI4UI1
  loc_B0A4A7: FLdPr Me
  loc_B0A4AA: MemLdI2 global_92
  loc_B0A4AD: CI4UI1
  loc_B0A4AE: FLdPr Me
  loc_B0A4B1: MemLdStr global_80
  loc_B0A4B4: AryLock
  loc_B0A4B7: Ary1LdPr
  loc_B0A4B8: MemLdStr global_8
  loc_B0A4BB: AryLock
  loc_B0A4BE: Ary1LdPr
  loc_B0A4BF: MemLdRfVar from_stack_1.global_4
  loc_B0A4C2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A4C7: AryUnlock
  loc_B0A4CA: AryUnlock
  loc_B0A4CD: FFreeAd var_B4 = ""
  loc_B0A4D4: FFreeVar var_C4 = ""
  loc_B0A4DB: FLdRfVar var_110
  loc_B0A4DE: LitVarStr var_A0, "CodiPart"
  loc_B0A4E3: PopAdLdVar
  loc_B0A4E4: FLdRfVar var_10C
  loc_B0A4E7: FLdRfVar var_B4
  loc_B0A4EA: FLdPr var_EC
  loc_B0A4ED: from_stack_1v = clsbase.RsFrmGet()
  loc_B0A4F2: FLdPr var_B4
  loc_B0A4F5:  = Me.Fields
  loc_B0A4FA: FLdPr var_10C
  loc_B0A4FD: from_stack_2 = Me.Item(from_stack_1)
  loc_B0A502: LitI2_Byte 0
  loc_B0A504: LitVar_Missing var_D8
  loc_B0A507: LitI2_Byte 0
  loc_B0A509: FLdZeroAd var_110
  loc_B0A50C: CVarAd
  loc_B0A510: PopAdLdVar
  loc_B0A511: FLdPr Me
  loc_B0A514: MemLdI2 global_94
  loc_B0A517: CI4UI1
  loc_B0A518: FLdPr Me
  loc_B0A51B: MemLdI2 global_92
  loc_B0A51E: CI4UI1
  loc_B0A51F: FLdPr Me
  loc_B0A522: MemLdStr global_80
  loc_B0A525: AryLock
  loc_B0A528: Ary1LdPr
  loc_B0A529: MemLdStr global_8
  loc_B0A52C: AryLock
  loc_B0A52F: Ary1LdPr
  loc_B0A530: MemLdRfVar from_stack_1.global_8
  loc_B0A533: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A538: AryUnlock
  loc_B0A53B: AryUnlock
  loc_B0A53E: FFreeAd var_B4 = ""
  loc_B0A545: FFreeVar var_C4 = ""
  loc_B0A54C: FLdRfVar var_110
  loc_B0A54F: LitVarStr var_A0, "CodiOrga"
  loc_B0A554: PopAdLdVar
  loc_B0A555: FLdRfVar var_10C
  loc_B0A558: FLdRfVar var_B4
  loc_B0A55B: FLdPr var_EC
  loc_B0A55E: from_stack_1v = clsbase.RsFrmGet()
  loc_B0A563: FLdPr var_B4
  loc_B0A566:  = Me.Fields
  loc_B0A56B: FLdPr var_10C
  loc_B0A56E: from_stack_2 = Me.Item(from_stack_1)
  loc_B0A573: LitI2_Byte 0
  loc_B0A575: LitVar_Missing var_D8
  loc_B0A578: LitI2_Byte 0
  loc_B0A57A: FLdZeroAd var_110
  loc_B0A57D: CVarAd
  loc_B0A581: PopAdLdVar
  loc_B0A582: FLdPr Me
  loc_B0A585: MemLdI2 global_94
  loc_B0A588: CI4UI1
  loc_B0A589: FLdPr Me
  loc_B0A58C: MemLdI2 global_92
  loc_B0A58F: CI4UI1
  loc_B0A590: FLdPr Me
  loc_B0A593: MemLdStr global_80
  loc_B0A596: AryLock
  loc_B0A599: Ary1LdPr
  loc_B0A59A: MemLdStr global_8
  loc_B0A59D: AryLock
  loc_B0A5A0: Ary1LdPr
  loc_B0A5A1: MemLdRfVar from_stack_1.global_12
  loc_B0A5A4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A5A9: AryUnlock
  loc_B0A5AC: AryUnlock
  loc_B0A5AF: FFreeAd var_B4 = ""
  loc_B0A5B6: FFreeVar var_C4 = ""
  loc_B0A5BD: FLdRfVar var_110
  loc_B0A5C0: LitVarStr var_A0, "NumeImpu"
  loc_B0A5C5: PopAdLdVar
  loc_B0A5C6: FLdRfVar var_10C
  loc_B0A5C9: FLdRfVar var_B4
  loc_B0A5CC: FLdPr var_EC
  loc_B0A5CF: from_stack_1v = clsbase.RsFrmGet()
  loc_B0A5D4: FLdPr var_B4
  loc_B0A5D7:  = Me.Fields
  loc_B0A5DC: FLdPr var_10C
  loc_B0A5DF: from_stack_2 = Me.Item(from_stack_1)
  loc_B0A5E4: LitI2_Byte 0
  loc_B0A5E6: LitVar_Missing var_D8
  loc_B0A5E9: LitI2_Byte 0
  loc_B0A5EB: FLdZeroAd var_110
  loc_B0A5EE: CVarAd
  loc_B0A5F2: PopAdLdVar
  loc_B0A5F3: FLdPr Me
  loc_B0A5F6: MemLdI2 global_94
  loc_B0A5F9: CI4UI1
  loc_B0A5FA: FLdPr Me
  loc_B0A5FD: MemLdI2 global_92
  loc_B0A600: CI4UI1
  loc_B0A601: FLdPr Me
  loc_B0A604: MemLdStr global_80
  loc_B0A607: AryLock
  loc_B0A60A: Ary1LdPr
  loc_B0A60B: MemLdStr global_8
  loc_B0A60E: AryLock
  loc_B0A611: Ary1LdPr
  loc_B0A612: MemLdRfVar from_stack_1.global_16
  loc_B0A615: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A61A: AryUnlock
  loc_B0A61D: AryUnlock
  loc_B0A620: FFreeAd var_B4 = ""
  loc_B0A627: FFreeVar var_C4 = ""
  loc_B0A62E: FLdRfVar var_110
  loc_B0A631: LitVarStr var_A0, "DebeCaja"
  loc_B0A636: PopAdLdVar
  loc_B0A637: FLdRfVar var_10C
  loc_B0A63A: FLdRfVar var_B4
  loc_B0A63D: FLdPr var_EC
  loc_B0A640: from_stack_1v = clsbase.RsFrmGet()
  loc_B0A645: FLdPr var_B4
  loc_B0A648:  = Me.Fields
  loc_B0A64D: FLdPr var_10C
  loc_B0A650: from_stack_2 = Me.Item(from_stack_1)
  loc_B0A655: LitI2_Byte 0
  loc_B0A657: FLdPr Me
  loc_B0A65A: MemLdI2 global_92
  loc_B0A65D: CI4UI1
  loc_B0A65E: FLdPr Me
  loc_B0A661: MemLdStr global_80
  loc_B0A664: AryLock
  loc_B0A667: Ary1LdPr
  loc_B0A668: MemLdRfVar from_stack_1.global_12
  loc_B0A66B: CVarRef
  loc_B0A670: LitI2_Byte &HFF
  loc_B0A672: FLdZeroAd var_110
  loc_B0A675: CVarAd
  loc_B0A679: PopAdLdVar
  loc_B0A67A: FLdPr Me
  loc_B0A67D: MemLdI2 global_94
  loc_B0A680: CI4UI1
  loc_B0A681: FLdPr Me
  loc_B0A684: MemLdI2 global_92
  loc_B0A687: CI4UI1
  loc_B0A688: FLdPr Me
  loc_B0A68B: MemLdStr global_80
  loc_B0A68E: AryLock
  loc_B0A691: Ary1LdPr
  loc_B0A692: MemLdStr global_8
  loc_B0A695: AryLock
  loc_B0A698: Ary1LdPr
  loc_B0A699: MemLdRfVar from_stack_1.global_20
  loc_B0A69C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A6A1: AryUnlock
  loc_B0A6A4: AryUnlock
  loc_B0A6A7: AryUnlock
  loc_B0A6AA: FFreeAd var_B4 = ""
  loc_B0A6B1: FFree1Var var_C4 = ""
  loc_B0A6B4: FLdRfVar var_110
  loc_B0A6B7: LitVarStr var_A0, "HabeCaja"
  loc_B0A6BC: PopAdLdVar
  loc_B0A6BD: FLdRfVar var_10C
  loc_B0A6C0: FLdRfVar var_B4
  loc_B0A6C3: FLdPr var_EC
  loc_B0A6C6: from_stack_1v = clsbase.RsFrmGet()
  loc_B0A6CB: FLdPr var_B4
  loc_B0A6CE:  = Me.Fields
  loc_B0A6D3: FLdPr var_10C
  loc_B0A6D6: from_stack_2 = Me.Item(from_stack_1)
  loc_B0A6DB: LitI2_Byte 0
  loc_B0A6DD: FLdPr Me
  loc_B0A6E0: MemLdI2 global_92
  loc_B0A6E3: CI4UI1
  loc_B0A6E4: FLdPr Me
  loc_B0A6E7: MemLdStr global_80
  loc_B0A6EA: AryLock
  loc_B0A6ED: Ary1LdPr
  loc_B0A6EE: MemLdRfVar from_stack_1.global_16
  loc_B0A6F1: CVarRef
  loc_B0A6F6: LitI2_Byte &HFF
  loc_B0A6F8: FLdZeroAd var_110
  loc_B0A6FB: CVarAd
  loc_B0A6FF: PopAdLdVar
  loc_B0A700: FLdPr Me
  loc_B0A703: MemLdI2 global_94
  loc_B0A706: CI4UI1
  loc_B0A707: FLdPr Me
  loc_B0A70A: MemLdI2 global_92
  loc_B0A70D: CI4UI1
  loc_B0A70E: FLdPr Me
  loc_B0A711: MemLdStr global_80
  loc_B0A714: AryLock
  loc_B0A717: Ary1LdPr
  loc_B0A718: MemLdStr global_8
  loc_B0A71B: AryLock
  loc_B0A71E: Ary1LdPr
  loc_B0A71F: MemLdRfVar from_stack_1.global_24
  loc_B0A722: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A727: AryUnlock
  loc_B0A72A: AryUnlock
  loc_B0A72D: AryUnlock
  loc_B0A730: FFreeAd var_B4 = ""
  loc_B0A737: FFree1Var var_C4 = ""
  loc_B0A73A: FLdPr var_EC
  loc_B0A73D: Call clsbase.MoveSiguiente()
  loc_B0A742: FLdPr Me
  loc_B0A745: MemLdRfVar from_stack_1.global_94
  loc_B0A748: NextI2 var_124, loc_B0A3F9
  loc_B0A74D: LitI2_Byte 0
  loc_B0A74F: FLdPr Me
  loc_B0A752: MemLdRfVar from_stack_1.global_84
  loc_B0A755: CVarRef
  loc_B0A75A: LitI2_Byte &HFF
  loc_B0A75C: FLdPr Me
  loc_B0A75F: MemLdI2 global_92
  loc_B0A762: CI4UI1
  loc_B0A763: FLdPr Me
  loc_B0A766: MemLdStr global_80
  loc_B0A769: Ary1LdPr
  loc_B0A76A: MemLdStr global_12
  loc_B0A76D: CVarStr var_A0
  loc_B0A770: PopAdLdVar
  loc_B0A771: FLdPr Me
  loc_B0A774: MemLdRfVar from_stack_1.global_96
  loc_B0A777: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A77C: LitI2_Byte 0
  loc_B0A77E: FLdPr Me
  loc_B0A781: MemLdRfVar from_stack_1.global_88
  loc_B0A784: CVarRef
  loc_B0A789: LitI2_Byte &HFF
  loc_B0A78B: FLdPr Me
  loc_B0A78E: MemLdI2 global_92
  loc_B0A791: CI4UI1
  loc_B0A792: FLdPr Me
  loc_B0A795: MemLdStr global_80
  loc_B0A798: Ary1LdPr
  loc_B0A799: MemLdStr global_16
  loc_B0A79C: CVarStr var_A0
  loc_B0A79F: PopAdLdVar
  loc_B0A7A0: FLdPr Me
  loc_B0A7A3: MemLdRfVar from_stack_1.global_96
  loc_B0A7A6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0A7AB: FLdPr Me
  loc_B0A7AE: MemLdRfVar from_stack_1.global_92
  loc_B0A7B1: NextI2 var_118, loc_B0A324
  loc_B0A7B6: LitNothing
  loc_B0A7B8: FStAd var_EC 
  loc_B0A7BC: LitI2_Byte &HFF
  loc_B0A7BE: FLdPr Me
  loc_B0A7C1: MemStI2 bGenerado
  loc_B0A7C4: LitI4 0
  loc_B0A7C9: CI2I4
  loc_B0A7CA: FLdPr Me
  loc_B0A7CD: Me.MousePointer = from_stack_1
  loc_B0A7D2: LitVarStr var_A0, vbNullString
  loc_B0A7D7: PopAdLdVar
  loc_B0A7D8: FLdPr Me
  loc_B0A7DB: VCallAd Control_ID_statusBar
  loc_B0A7DE: FStAdFunc var_B4
  loc_B0A7E1: FLdPr var_B4
  loc_B0A7E4: LateIdSt
  loc_B0A7E9: FFree1Ad var_B4
  loc_B0A7EC: ExitProcHresult
  loc_B0A7ED: AryLock
End Sub

Public Sub GeneraHTML() 'AE4B90
  'Data Table: 44E538
  loc_AE44E8: FLdRfVar var_88
  loc_AE44EB: LitI2_Byte 0
  loc_AE44ED: LitI2_Byte &HFF
  loc_AE44EF: ImpAdLdI4 MemVar_C3D83C
  loc_AE44F2: FLdPr Me
  loc_AE44F5: MemLdRfVar from_stack_1.global_60
  loc_AE44F8: NewIfNullPr IFileSystem3
  loc_AE44FB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE4500: ILdRf var_88
  loc_AE4503: FLdPr Me
  loc_AE4506: MemStVarAd
  loc_AE450A: FFree1Ad var_88
  loc_AE450D: Call Proc_245_19_AD27B8()
  loc_AE4512: LitI2_Byte 1
  loc_AE4514: FLdPr Me
  loc_AE4517: MemLdRfVar from_stack_1.global_92
  loc_AE451A: FLdPr Me
  loc_AE451D: MemLdStr global_80
  loc_AE4520: LitI2_Byte 1
  loc_AE4522: FnUBound
  loc_AE4524: CI2I4
  loc_AE4525: ForI2 var_8C
  loc_AE452B: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE4530: PopAdLdVar
  loc_AE4531: FLdPr Me
  loc_AE4534: MemLdRfVar from_stack_1.global_64
  loc_AE4537: LdPrVar
  loc_AE4539: LateMemCall
  loc_AE453F: LitStr "    <td rowspan="""
  loc_AE4542: FLdPr Me
  loc_AE4545: MemLdI2 global_92
  loc_AE4548: CI4UI1
  loc_AE4549: FLdPr Me
  loc_AE454C: MemLdStr global_80
  loc_AE454F: Ary1LdPr
  loc_AE4550: MemLdStr global_8
  loc_AE4553: LitI2_Byte 1
  loc_AE4555: FnUBound
  loc_AE4557: LitI4 1
  loc_AE455C: AddI4
  loc_AE455D: CStrI4
  loc_AE455F: FStStrNoPop var_B0
  loc_AE4562: ConcatStr
  loc_AE4563: FStStrNoPop var_B4
  loc_AE4566: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_AE4569: ConcatStr
  loc_AE456A: FStStrNoPop var_B8
  loc_AE456D: FLdPr Me
  loc_AE4570: MemLdI2 global_92
  loc_AE4573: CI4UI1
  loc_AE4574: FLdPr Me
  loc_AE4577: MemLdStr global_80
  loc_AE457A: Ary1LdPr
  loc_AE457B: MemLdStr global_0
  loc_AE457E: ConcatStr
  loc_AE457F: FStStrNoPop var_BC
  loc_AE4582: LitStr "<br>"
  loc_AE4585: ConcatStr
  loc_AE4586: FStStrNoPop var_C0
  loc_AE4589: FLdPr Me
  loc_AE458C: MemLdI2 global_92
  loc_AE458F: CI4UI1
  loc_AE4590: FLdPr Me
  loc_AE4593: MemLdStr global_80
  loc_AE4596: Ary1LdPr
  loc_AE4597: MemLdStr global_4
  loc_AE459A: ConcatStr
  loc_AE459B: FStStrNoPop var_C4
  loc_AE459E: LitStr "</td>"
  loc_AE45A1: ConcatStr
  loc_AE45A2: CVarStr var_D4
  loc_AE45A5: PopAdLdVar
  loc_AE45A6: FLdPr Me
  loc_AE45A9: MemLdRfVar from_stack_1.global_64
  loc_AE45AC: LdPrVar
  loc_AE45AE: LateMemCall
  loc_AE45B4: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AE45C3: FFree1Var var_D4 = ""
  loc_AE45C6: LitI2_Byte 1
  loc_AE45C8: FLdPr Me
  loc_AE45CB: MemLdRfVar from_stack_1.global_94
  loc_AE45CE: FLdPr Me
  loc_AE45D1: MemLdI2 global_92
  loc_AE45D4: CI4UI1
  loc_AE45D5: FLdPr Me
  loc_AE45D8: MemLdStr global_80
  loc_AE45DB: Ary1LdPr
  loc_AE45DC: MemLdStr global_8
  loc_AE45DF: LitI2_Byte 1
  loc_AE45E1: FnUBound
  loc_AE45E3: CI2I4
  loc_AE45E4: ForI2 var_D8
  loc_AE45EA: FLdPr Me
  loc_AE45ED: MemLdI2 global_94
  loc_AE45F0: CI4UI1
  loc_AE45F1: FLdPr Me
  loc_AE45F4: MemLdI2 global_92
  loc_AE45F7: CI4UI1
  loc_AE45F8: FLdPr Me
  loc_AE45FB: MemLdStr global_80
  loc_AE45FE: AryLock
  loc_AE4601: Ary1LdPr
  loc_AE4602: MemLdStr global_8
  loc_AE4605: AryLock
  loc_AE4608: Ary1LdRf
  loc_AE4609: FStR4 var_E4
  loc_AE460C: FLdPr Me
  loc_AE460F: MemLdI2 global_94
  loc_AE4612: LitI2_Byte 1
  loc_AE4614: NeI2
  loc_AE4615: BranchF loc_AE462C
  loc_AE4618: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE461D: PopAdLdVar
  loc_AE461E: FLdPr Me
  loc_AE4621: MemLdRfVar from_stack_1.global_64
  loc_AE4624: LdPrVar
  loc_AE4626: LateMemCall
  loc_AE462C: LitI4 0
  loc_AE4631: LitI4 0
  loc_AE4636: LitI2_Byte 0
  loc_AE4638: LitStr "center"
  loc_AE463B: FMemLdR4 var_E4(0)
  loc_AE4640: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4645: CVarStr var_D4
  loc_AE4648: PopAdLdVar
  loc_AE4649: FLdPr Me
  loc_AE464C: MemLdRfVar from_stack_1.global_64
  loc_AE464F: LdPrVar
  loc_AE4651: LateMemCall
  loc_AE4657: FFree1Var var_D4 = ""
  loc_AE465A: LitI4 0
  loc_AE465F: LitI4 0
  loc_AE4664: LitI2_Byte 0
  loc_AE4666: LitStr "left"
  loc_AE4669: FMemLdR4 var_E4(4)
  loc_AE466E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4673: CVarStr var_D4
  loc_AE4676: PopAdLdVar
  loc_AE4677: FLdPr Me
  loc_AE467A: MemLdRfVar from_stack_1.global_64
  loc_AE467D: LdPrVar
  loc_AE467F: LateMemCall
  loc_AE4685: FFree1Var var_D4 = ""
  loc_AE4688: LitI4 0
  loc_AE468D: LitI4 0
  loc_AE4692: LitI2_Byte 0
  loc_AE4694: LitStr "left"
  loc_AE4697: FMemLdR4 var_E4(8)
  loc_AE469C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE46A1: CVarStr var_D4
  loc_AE46A4: PopAdLdVar
  loc_AE46A5: FLdPr Me
  loc_AE46A8: MemLdRfVar from_stack_1.global_64
  loc_AE46AB: LdPrVar
  loc_AE46AD: LateMemCall
  loc_AE46B3: FFree1Var var_D4 = ""
  loc_AE46B6: LitI4 0
  loc_AE46BB: LitI4 0
  loc_AE46C0: LitI2_Byte 0
  loc_AE46C2: LitStr "left"
  loc_AE46C5: FMemLdR4 var_E4(12)
  loc_AE46CA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE46CF: CVarStr var_D4
  loc_AE46D2: PopAdLdVar
  loc_AE46D3: FLdPr Me
  loc_AE46D6: MemLdRfVar from_stack_1.global_64
  loc_AE46D9: LdPrVar
  loc_AE46DB: LateMemCall
  loc_AE46E1: FFree1Var var_D4 = ""
  loc_AE46E4: LitI4 0
  loc_AE46E9: LitI4 0
  loc_AE46EE: LitI2_Byte 0
  loc_AE46F0: LitStr "right"
  loc_AE46F3: FMemLdR4 var_E4(16)
  loc_AE46F8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE46FD: CVarStr var_D4
  loc_AE4700: PopAdLdVar
  loc_AE4701: FLdPr Me
  loc_AE4704: MemLdRfVar from_stack_1.global_64
  loc_AE4707: LdPrVar
  loc_AE4709: LateMemCall
  loc_AE470F: FFree1Var var_D4 = ""
  loc_AE4712: LitI4 0
  loc_AE4717: LitI4 0
  loc_AE471C: LitI2_Byte 0
  loc_AE471E: LitStr "right"
  loc_AE4721: FMemLdR4 var_E4(20)
  loc_AE4726: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE472B: CVarStr var_D4
  loc_AE472E: PopAdLdVar
  loc_AE472F: FLdPr Me
  loc_AE4732: MemLdRfVar from_stack_1.global_64
  loc_AE4735: LdPrVar
  loc_AE4737: LateMemCall
  loc_AE473D: FFree1Var var_D4 = ""
  loc_AE4740: LitI4 0
  loc_AE4745: LitI4 0
  loc_AE474A: LitI2_Byte 0
  loc_AE474C: LitStr "right"
  loc_AE474F: FMemLdR4 var_E4(24)
  loc_AE4754: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4759: CVarStr var_D4
  loc_AE475C: PopAdLdVar
  loc_AE475D: FLdPr Me
  loc_AE4760: MemLdRfVar from_stack_1.global_64
  loc_AE4763: LdPrVar
  loc_AE4765: LateMemCall
  loc_AE476B: FFree1Var var_D4 = ""
  loc_AE476E: LitVarStr var_9C, "  </tr>"
  loc_AE4773: PopAdLdVar
  loc_AE4774: FLdPr Me
  loc_AE4777: MemLdRfVar from_stack_1.global_64
  loc_AE477A: LdPrVar
  loc_AE477C: LateMemCall
  loc_AE4782: LitI4 0
  loc_AE4787: FStR4 var_E4
  loc_AE478A: AryUnlock
  loc_AE478D: AryUnlock
  loc_AE4790: FLdPr Me
  loc_AE4793: MemLdRfVar from_stack_1.global_94
  loc_AE4796: NextI2 var_D8, loc_AE45EA
  loc_AE479B: LitVarStr var_9C, "  <tr>"
  loc_AE47A0: PopAdLdVar
  loc_AE47A1: FLdPr Me
  loc_AE47A4: MemLdRfVar from_stack_1.global_64
  loc_AE47A7: LdPrVar
  loc_AE47A9: LateMemCall
  loc_AE47AF: LitVarStr var_9C, "    <th colspan=""4"" align=""left"">&nbsp;</th>"
  loc_AE47B4: PopAdLdVar
  loc_AE47B5: FLdPr Me
  loc_AE47B8: MemLdRfVar from_stack_1.global_64
  loc_AE47BB: LdPrVar
  loc_AE47BD: LateMemCall
  loc_AE47C3: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_AE47C8: PopAdLdVar
  loc_AE47C9: FLdPr Me
  loc_AE47CC: MemLdRfVar from_stack_1.global_64
  loc_AE47CF: LdPrVar
  loc_AE47D1: LateMemCall
  loc_AE47D7: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE47DA: FLdPr Me
  loc_AE47DD: MemLdI2 global_92
  loc_AE47E0: CI4UI1
  loc_AE47E1: FLdPr Me
  loc_AE47E4: MemLdStr global_80
  loc_AE47E7: Ary1LdPr
  loc_AE47E8: MemLdStr global_12
  loc_AE47EB: ConcatStr
  loc_AE47EC: FStStrNoPop var_B0
  loc_AE47EF: LitStr "</td>"
  loc_AE47F2: ConcatStr
  loc_AE47F3: CVarStr var_D4
  loc_AE47F6: PopAdLdVar
  loc_AE47F7: FLdPr Me
  loc_AE47FA: MemLdRfVar from_stack_1.global_64
  loc_AE47FD: LdPrVar
  loc_AE47FF: LateMemCall
  loc_AE4805: FFree1Str var_B0
  loc_AE4808: FFree1Var var_D4 = ""
  loc_AE480B: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE480E: FLdPr Me
  loc_AE4811: MemLdI2 global_92
  loc_AE4814: CI4UI1
  loc_AE4815: FLdPr Me
  loc_AE4818: MemLdStr global_80
  loc_AE481B: Ary1LdPr
  loc_AE481C: MemLdStr global_16
  loc_AE481F: ConcatStr
  loc_AE4820: FStStrNoPop var_B0
  loc_AE4823: LitStr "</td>"
  loc_AE4826: ConcatStr
  loc_AE4827: CVarStr var_D4
  loc_AE482A: PopAdLdVar
  loc_AE482B: FLdPr Me
  loc_AE482E: MemLdRfVar from_stack_1.global_64
  loc_AE4831: LdPrVar
  loc_AE4833: LateMemCall
  loc_AE4839: FFree1Str var_B0
  loc_AE483C: FFree1Var var_D4 = ""
  loc_AE483F: LitVarStr var_9C, "  </tr>"
  loc_AE4844: PopAdLdVar
  loc_AE4845: FLdPr Me
  loc_AE4848: MemLdRfVar from_stack_1.global_64
  loc_AE484B: LdPrVar
  loc_AE484D: LateMemCall
  loc_AE4853: FLdPr Me
  loc_AE4856: MemLdRfVar from_stack_1.global_92
  loc_AE4859: NextI2 var_8C, loc_AE452B
  loc_AE485E: LitVarStr var_9C, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AE4863: PopAdLdVar
  loc_AE4864: FLdPr Me
  loc_AE4867: MemLdRfVar from_stack_1.global_64
  loc_AE486A: LdPrVar
  loc_AE486C: LateMemCall
  loc_AE4872: LitVarStr var_9C, "  <tr>"
  loc_AE4877: PopAdLdVar
  loc_AE4878: FLdPr Me
  loc_AE487B: MemLdRfVar from_stack_1.global_64
  loc_AE487E: LdPrVar
  loc_AE4880: LateMemCall
  loc_AE4886: LitVarStr var_9C, "    <td colspan=""5"" align=""left"">&nbsp;</th>"
  loc_AE488B: PopAdLdVar
  loc_AE488C: FLdPr Me
  loc_AE488F: MemLdRfVar from_stack_1.global_64
  loc_AE4892: LdPrVar
  loc_AE4894: LateMemCall
  loc_AE489A: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AE489F: PopAdLdVar
  loc_AE48A0: FLdPr Me
  loc_AE48A3: MemLdRfVar from_stack_1.global_64
  loc_AE48A6: LdPrVar
  loc_AE48A8: LateMemCall
  loc_AE48AE: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE48B1: FLdPr Me
  loc_AE48B4: MemLdStr global_84
  loc_AE48B7: ConcatStr
  loc_AE48B8: FStStrNoPop var_B0
  loc_AE48BB: LitStr "</td>"
  loc_AE48BE: ConcatStr
  loc_AE48BF: CVarStr var_D4
  loc_AE48C2: PopAdLdVar
  loc_AE48C3: FLdPr Me
  loc_AE48C6: MemLdRfVar from_stack_1.global_64
  loc_AE48C9: LdPrVar
  loc_AE48CB: LateMemCall
  loc_AE48D1: FFree1Str var_B0
  loc_AE48D4: FFree1Var var_D4 = ""
  loc_AE48D7: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE48DA: FLdPr Me
  loc_AE48DD: MemLdStr global_88
  loc_AE48E0: ConcatStr
  loc_AE48E1: FStStrNoPop var_B0
  loc_AE48E4: LitStr "</td>"
  loc_AE48E7: ConcatStr
  loc_AE48E8: CVarStr var_D4
  loc_AE48EB: PopAdLdVar
  loc_AE48EC: FLdPr Me
  loc_AE48EF: MemLdRfVar from_stack_1.global_64
  loc_AE48F2: LdPrVar
  loc_AE48F4: LateMemCall
  loc_AE48FA: FFree1Str var_B0
  loc_AE48FD: FFree1Var var_D4 = ""
  loc_AE4900: LitVarStr var_9C, "  </tr>"
  loc_AE4905: PopAdLdVar
  loc_AE4906: FLdPr Me
  loc_AE4909: MemLdRfVar from_stack_1.global_64
  loc_AE490C: LdPrVar
  loc_AE490E: LateMemCall
  loc_AE4914: LitVarStr var_9C, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AE4919: PopAdLdVar
  loc_AE491A: FLdPr Me
  loc_AE491D: MemLdRfVar from_stack_1.global_64
  loc_AE4920: LdPrVar
  loc_AE4922: LateMemCall
  loc_AE4928: FLdPr Me
  loc_AE492B: MemLdStr global_88
  loc_AE492E: CR8Str
  loc_AE4930: FLdPr Me
  loc_AE4933: MemLdStr global_84
  loc_AE4936: CR8Str
  loc_AE4938: SubR4
  loc_AE4939: CR8R8
  loc_AE493A: LitI2_Byte 0
  loc_AE493C: CR8I2
  loc_AE493D: GtR4
  loc_AE493E: BranchF loc_AE4984
  loc_AE4941: LitI2_Byte 0
  loc_AE4943: LitVar_Missing var_D4
  loc_AE4946: LitI2_Byte &HFF
  loc_AE4948: FLdPr Me
  loc_AE494B: MemLdStr global_88
  loc_AE494E: CR8Str
  loc_AE4950: FLdPr Me
  loc_AE4953: MemLdStr global_84
  loc_AE4956: CR8Str
  loc_AE4958: SubR4
  loc_AE4959: CVarR8
  loc_AE495D: PopAdLdVar
  loc_AE495E: FLdRfVar var_EC
  loc_AE4961: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE4966: FFree1Var var_D4 = ""
  loc_AE4969: LitI2_Byte 0
  loc_AE496B: LitVar_Missing var_D4
  loc_AE496E: LitI2_Byte &HFF
  loc_AE4970: LitVarStr var_9C, "0"
  loc_AE4975: PopAdLdVar
  loc_AE4976: FLdRfVar var_F0
  loc_AE4979: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE497E: FFree1Var var_D4 = ""
  loc_AE4981: Branch loc_AE49C4
  loc_AE4984: LitI2_Byte 0
  loc_AE4986: LitVar_Missing var_D4
  loc_AE4989: LitI2_Byte &HFF
  loc_AE498B: FLdPr Me
  loc_AE498E: MemLdStr global_84
  loc_AE4991: CR8Str
  loc_AE4993: FLdPr Me
  loc_AE4996: MemLdStr global_88
  loc_AE4999: CR8Str
  loc_AE499B: SubR4
  loc_AE499C: CVarR8
  loc_AE49A0: PopAdLdVar
  loc_AE49A1: FLdRfVar var_F0
  loc_AE49A4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE49A9: FFree1Var var_D4 = ""
  loc_AE49AC: LitI2_Byte 0
  loc_AE49AE: LitVar_Missing var_D4
  loc_AE49B1: LitI2_Byte &HFF
  loc_AE49B3: LitVarStr var_9C, "0"
  loc_AE49B8: PopAdLdVar
  loc_AE49B9: FLdRfVar var_EC
  loc_AE49BC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE49C1: FFree1Var var_D4 = ""
  loc_AE49C4: LitStr "SELECT ProvPaco, DetaCuco"
  loc_AE49C7: LitStr " FROM paraconta"
  loc_AE49CA: ConcatStr
  loc_AE49CB: FStStrNoPop var_B0
  loc_AE49CE: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = ProvPaco"
  loc_AE49D1: ConcatStr
  loc_AE49D2: FStStrNoPop var_B4
  loc_AE49D5: LitStr " WHERE paraconta.PeriInfo = "
  loc_AE49D8: ConcatStr
  loc_AE49D9: CVarStr var_120
  loc_AE49DC: FLdPr Me
  loc_AE49DF: VCallAd Control_ID_mskDesde
  loc_AE49E2: FStAdFunc var_88
  loc_AE49E5: FLdPr var_88
  loc_AE49E8: LateIdLdVar var_D4 DispID_15 0
  loc_AE49EF: CStrVarTmp
  loc_AE49F0: CVarStr var_100
  loc_AE49F3: FLdRfVar var_110
  loc_AE49F6: ImpAdCallFPR4  = Year()
  loc_AE49FB: FLdRfVar var_110
  loc_AE49FE: ConcatVar var_130
  loc_AE4A02: CStrVarVal var_B8
  loc_AE4A06: FLdRfVar var_E8
  loc_AE4A09: NewIfNullPr clsparaconta
  loc_AE4A0C: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_AE4A11: FFreeStr var_B0 = "": var_B4 = ""
  loc_AE4A1A: FFree1Ad var_88
  loc_AE4A1D: FFreeVar var_D4 = "": var_100 = "": var_120 = "": var_110 = ""
  loc_AE4A2A: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_AE4A2F: PopAdLdVar
  loc_AE4A30: FLdPr Me
  loc_AE4A33: MemLdRfVar from_stack_1.global_64
  loc_AE4A36: LdPrVar
  loc_AE4A38: LateMemCall
  loc_AE4A3E: LitVarStr var_AC, "    <td class=""Titulo2"" colspan=""5"" align=""left"">"
  loc_AE4A43: FLdRfVar var_D4
  loc_AE4A46: FLdRfVar var_138
  loc_AE4A49: LitVarStr var_9C, "ProvPaco"
  loc_AE4A4E: PopAdLdVar
  loc_AE4A4F: FLdRfVar var_134
  loc_AE4A52: FLdRfVar var_88
  loc_AE4A55: FLdRfVar var_E8
  loc_AE4A58: NewIfNullPr clsparaconta
  loc_AE4A5B: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AE4A60: FLdPr var_88
  loc_AE4A63:  = Me.Fields
  loc_AE4A68: FLdPr var_134
  loc_AE4A6B: from_stack_2 = Me.Item(from_stack_1)
  loc_AE4A70: FLdPr var_138
  loc_AE4A73:  = Me.Value
  loc_AE4A78: FLdRfVar var_D4
  loc_AE4A7B: ConcatVar var_100
  loc_AE4A7F: LitVarStr var_148, " - "
  loc_AE4A84: ConcatVar var_110
  loc_AE4A88: FLdRfVar var_120
  loc_AE4A8B: FLdRfVar var_164
  loc_AE4A8E: LitVarStr var_160, "DetaCuco"
  loc_AE4A93: PopAdLdVar
  loc_AE4A94: FLdRfVar var_150
  loc_AE4A97: FLdRfVar var_14C
  loc_AE4A9A: FLdRfVar var_E8
  loc_AE4A9D: NewIfNullPr clsparaconta
  loc_AE4AA0: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AE4AA5: FLdPr var_14C
  loc_AE4AA8:  = Me.Fields
  loc_AE4AAD: FLdPr var_150
  loc_AE4AB0: from_stack_2 = Me.Item(from_stack_1)
  loc_AE4AB5: FLdPr var_164
  loc_AE4AB8:  = Me.Value
  loc_AE4ABD: FLdRfVar var_120
  loc_AE4AC0: ConcatVar var_130
  loc_AE4AC4: LitVarStr var_174, "</th>"
  loc_AE4AC9: ConcatVar var_184
  loc_AE4ACD: PopAdLdVar
  loc_AE4ACE: FLdPr Me
  loc_AE4AD1: MemLdRfVar from_stack_1.global_64
  loc_AE4AD4: LdPrVar
  loc_AE4AD6: LateMemCall
  loc_AE4ADC: FFreeAd var_88 = "": var_134 = "": var_138 = "": var_14C = "": var_150 = ""
  loc_AE4AEB: FFreeVar var_D4 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = ""
  loc_AE4AFA: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AE4AFF: PopAdLdVar
  loc_AE4B00: FLdPr Me
  loc_AE4B03: MemLdRfVar from_stack_1.global_64
  loc_AE4B06: LdPrVar
  loc_AE4B08: LateMemCall
  loc_AE4B0E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE4B11: ILdRf var_EC
  loc_AE4B14: ConcatStr
  loc_AE4B15: FStStrNoPop var_B0
  loc_AE4B18: LitStr "</td>"
  loc_AE4B1B: ConcatStr
  loc_AE4B1C: CVarStr var_D4
  loc_AE4B1F: PopAdLdVar
  loc_AE4B20: FLdPr Me
  loc_AE4B23: MemLdRfVar from_stack_1.global_64
  loc_AE4B26: LdPrVar
  loc_AE4B28: LateMemCall
  loc_AE4B2E: FFree1Str var_B0
  loc_AE4B31: FFree1Var var_D4 = ""
  loc_AE4B34: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE4B37: ILdRf var_F0
  loc_AE4B3A: ConcatStr
  loc_AE4B3B: FStStrNoPop var_B0
  loc_AE4B3E: LitStr "</td>"
  loc_AE4B41: ConcatStr
  loc_AE4B42: CVarStr var_D4
  loc_AE4B45: PopAdLdVar
  loc_AE4B46: FLdPr Me
  loc_AE4B49: MemLdRfVar from_stack_1.global_64
  loc_AE4B4C: LdPrVar
  loc_AE4B4E: LateMemCall
  loc_AE4B54: FFree1Str var_B0
  loc_AE4B57: FFree1Var var_D4 = ""
  loc_AE4B5A: LitVarStr var_9C, "  </tr>"
  loc_AE4B5F: PopAdLdVar
  loc_AE4B60: FLdPr Me
  loc_AE4B63: MemLdRfVar from_stack_1.global_64
  loc_AE4B66: LdPrVar
  loc_AE4B68: LateMemCall
  loc_AE4B6E: LitNothing
  loc_AE4B70: CastAd
  loc_AE4B73: FStAdFunc var_E8
  loc_AE4B76: Call Proc_245_20_982A10()
  loc_AE4B7B: FLdPr Me
  loc_AE4B7E: MemLdRfVar from_stack_1.global_64
  loc_AE4B81: LdPrVar
  loc_AE4B83: LateMemCall
  loc_AE4B89: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AE4B8E: ExitProcHresult
End Sub

Private Function Proc_245_19_AD27B8() 'AD27B8
  'Data Table: 44E538
  loc_AD2154: LitVarStr var_94, "<html>"
  loc_AD2159: PopAdLdVar
  loc_AD215A: FLdPr Me
  loc_AD215D: MemLdRfVar from_stack_1.global_64
  loc_AD2160: LdPrVar
  loc_AD2162: LateMemCall
  loc_AD2168: LitVarStr var_94, "<head>"
  loc_AD216D: PopAdLdVar
  loc_AD216E: FLdPr Me
  loc_AD2171: MemLdRfVar from_stack_1.global_64
  loc_AD2174: LdPrVar
  loc_AD2176: LateMemCall
  loc_AD217C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AD2181: PopAdLdVar
  loc_AD2182: FLdPr Me
  loc_AD2185: MemLdRfVar from_stack_1.global_64
  loc_AD2188: LdPrVar
  loc_AD218A: LateMemCall
  loc_AD2190: LitStr "<title>"
  loc_AD2193: FLdRfVar var_A8
  loc_AD2196: FLdPr Me
  loc_AD2199:  = Me.Caption
  loc_AD219E: ILdRf var_A8
  loc_AD21A1: ConcatStr
  loc_AD21A2: FStStrNoPop var_AC
  loc_AD21A5: LitStr "</title>"
  loc_AD21A8: ConcatStr
  loc_AD21A9: CVarStr var_BC
  loc_AD21AC: PopAdLdVar
  loc_AD21AD: FLdPr Me
  loc_AD21B0: MemLdRfVar from_stack_1.global_64
  loc_AD21B3: LdPrVar
  loc_AD21B5: LateMemCall
  loc_AD21BB: FFreeStr var_A8 = ""
  loc_AD21C2: FFree1Var var_BC = ""
  loc_AD21C5: LitVarStr var_94, "<style type=""text/css"">"
  loc_AD21CA: PopAdLdVar
  loc_AD21CB: FLdPr Me
  loc_AD21CE: MemLdRfVar from_stack_1.global_64
  loc_AD21D1: LdPrVar
  loc_AD21D3: LateMemCall
  loc_AD21D9: LitVarStr var_94, ".Titulo1 {"
  loc_AD21DE: PopAdLdVar
  loc_AD21DF: FLdPr Me
  loc_AD21E2: MemLdRfVar from_stack_1.global_64
  loc_AD21E5: LdPrVar
  loc_AD21E7: LateMemCall
  loc_AD21ED: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD21F2: PopAdLdVar
  loc_AD21F3: FLdPr Me
  loc_AD21F6: MemLdRfVar from_stack_1.global_64
  loc_AD21F9: LdPrVar
  loc_AD21FB: LateMemCall
  loc_AD2201: LitVarStr var_94, " font-size: 18px;"
  loc_AD2206: PopAdLdVar
  loc_AD2207: FLdPr Me
  loc_AD220A: MemLdRfVar from_stack_1.global_64
  loc_AD220D: LdPrVar
  loc_AD220F: LateMemCall
  loc_AD2215: LitVarStr var_94, " font-weight: bold;"
  loc_AD221A: PopAdLdVar
  loc_AD221B: FLdPr Me
  loc_AD221E: MemLdRfVar from_stack_1.global_64
  loc_AD2221: LdPrVar
  loc_AD2223: LateMemCall
  loc_AD2229: LitVarStr var_94, "}"
  loc_AD222E: PopAdLdVar
  loc_AD222F: FLdPr Me
  loc_AD2232: MemLdRfVar from_stack_1.global_64
  loc_AD2235: LdPrVar
  loc_AD2237: LateMemCall
  loc_AD223D: LitVarStr var_94, ".Titulo2 {"
  loc_AD2242: PopAdLdVar
  loc_AD2243: FLdPr Me
  loc_AD2246: MemLdRfVar from_stack_1.global_64
  loc_AD2249: LdPrVar
  loc_AD224B: LateMemCall
  loc_AD2251: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD2256: PopAdLdVar
  loc_AD2257: FLdPr Me
  loc_AD225A: MemLdRfVar from_stack_1.global_64
  loc_AD225D: LdPrVar
  loc_AD225F: LateMemCall
  loc_AD2265: LitVarStr var_94, " font-size: 14px;"
  loc_AD226A: PopAdLdVar
  loc_AD226B: FLdPr Me
  loc_AD226E: MemLdRfVar from_stack_1.global_64
  loc_AD2271: LdPrVar
  loc_AD2273: LateMemCall
  loc_AD2279: LitVarStr var_94, " font-weight: bold;"
  loc_AD227E: PopAdLdVar
  loc_AD227F: FLdPr Me
  loc_AD2282: MemLdRfVar from_stack_1.global_64
  loc_AD2285: LdPrVar
  loc_AD2287: LateMemCall
  loc_AD228D: LitVarStr var_94, "}"
  loc_AD2292: PopAdLdVar
  loc_AD2293: FLdPr Me
  loc_AD2296: MemLdRfVar from_stack_1.global_64
  loc_AD2299: LdPrVar
  loc_AD229B: LateMemCall
  loc_AD22A1: LitVarStr var_94, ".Normal {"
  loc_AD22A6: PopAdLdVar
  loc_AD22A7: FLdPr Me
  loc_AD22AA: MemLdRfVar from_stack_1.global_64
  loc_AD22AD: LdPrVar
  loc_AD22AF: LateMemCall
  loc_AD22B5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD22BA: PopAdLdVar
  loc_AD22BB: FLdPr Me
  loc_AD22BE: MemLdRfVar from_stack_1.global_64
  loc_AD22C1: LdPrVar
  loc_AD22C3: LateMemCall
  loc_AD22C9: LitVarStr var_94, " font-size: 14px;"
  loc_AD22CE: PopAdLdVar
  loc_AD22CF: FLdPr Me
  loc_AD22D2: MemLdRfVar from_stack_1.global_64
  loc_AD22D5: LdPrVar
  loc_AD22D7: LateMemCall
  loc_AD22DD: LitVarStr var_94, " font-style: normal;"
  loc_AD22E2: PopAdLdVar
  loc_AD22E3: FLdPr Me
  loc_AD22E6: MemLdRfVar from_stack_1.global_64
  loc_AD22E9: LdPrVar
  loc_AD22EB: LateMemCall
  loc_AD22F1: LitVarStr var_94, " font-weight: normal;"
  loc_AD22F6: PopAdLdVar
  loc_AD22F7: FLdPr Me
  loc_AD22FA: MemLdRfVar from_stack_1.global_64
  loc_AD22FD: LdPrVar
  loc_AD22FF: LateMemCall
  loc_AD2305: LitVarStr var_94, " font-variant: normal;"
  loc_AD230A: PopAdLdVar
  loc_AD230B: FLdPr Me
  loc_AD230E: MemLdRfVar from_stack_1.global_64
  loc_AD2311: LdPrVar
  loc_AD2313: LateMemCall
  loc_AD2319: LitVarStr var_94, "}"
  loc_AD231E: PopAdLdVar
  loc_AD231F: FLdPr Me
  loc_AD2322: MemLdRfVar from_stack_1.global_64
  loc_AD2325: LdPrVar
  loc_AD2327: LateMemCall
  loc_AD232D: LitVarStr var_94, ".Encabezado {"
  loc_AD2332: PopAdLdVar
  loc_AD2333: FLdPr Me
  loc_AD2336: MemLdRfVar from_stack_1.global_64
  loc_AD2339: LdPrVar
  loc_AD233B: LateMemCall
  loc_AD2341: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AD2346: PopAdLdVar
  loc_AD2347: FLdPr Me
  loc_AD234A: MemLdRfVar from_stack_1.global_64
  loc_AD234D: LdPrVar
  loc_AD234F: LateMemCall
  loc_AD2355: LitVarStr var_94, " font-size: 13px;"
  loc_AD235A: PopAdLdVar
  loc_AD235B: FLdPr Me
  loc_AD235E: MemLdRfVar from_stack_1.global_64
  loc_AD2361: LdPrVar
  loc_AD2363: LateMemCall
  loc_AD2369: LitVarStr var_94, " font-weight: bold;"
  loc_AD236E: PopAdLdVar
  loc_AD236F: FLdPr Me
  loc_AD2372: MemLdRfVar from_stack_1.global_64
  loc_AD2375: LdPrVar
  loc_AD2377: LateMemCall
  loc_AD237D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AD2382: PopAdLdVar
  loc_AD2383: FLdPr Me
  loc_AD2386: MemLdRfVar from_stack_1.global_64
  loc_AD2389: LdPrVar
  loc_AD238B: LateMemCall
  loc_AD2391: LitVarStr var_94, "}"
  loc_AD2396: PopAdLdVar
  loc_AD2397: FLdPr Me
  loc_AD239A: MemLdRfVar from_stack_1.global_64
  loc_AD239D: LdPrVar
  loc_AD239F: LateMemCall
  loc_AD23A5: LitVarStr var_94, ".LineaDato {"
  loc_AD23AA: PopAdLdVar
  loc_AD23AB: FLdPr Me
  loc_AD23AE: MemLdRfVar from_stack_1.global_64
  loc_AD23B1: LdPrVar
  loc_AD23B3: LateMemCall
  loc_AD23B9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD23BE: PopAdLdVar
  loc_AD23BF: FLdPr Me
  loc_AD23C2: MemLdRfVar from_stack_1.global_64
  loc_AD23C5: LdPrVar
  loc_AD23C7: LateMemCall
  loc_AD23CD: LitVarStr var_94, " font-size: 10px;"
  loc_AD23D2: PopAdLdVar
  loc_AD23D3: FLdPr Me
  loc_AD23D6: MemLdRfVar from_stack_1.global_64
  loc_AD23D9: LdPrVar
  loc_AD23DB: LateMemCall
  loc_AD23E1: LitVarStr var_94, "}"
  loc_AD23E6: PopAdLdVar
  loc_AD23E7: FLdPr Me
  loc_AD23EA: MemLdRfVar from_stack_1.global_64
  loc_AD23ED: LdPrVar
  loc_AD23EF: LateMemCall
  loc_AD23F5: LitVarStr var_94, ".Totales {"
  loc_AD23FA: PopAdLdVar
  loc_AD23FB: FLdPr Me
  loc_AD23FE: MemLdRfVar from_stack_1.global_64
  loc_AD2401: LdPrVar
  loc_AD2403: LateMemCall
  loc_AD2409: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD240E: PopAdLdVar
  loc_AD240F: FLdPr Me
  loc_AD2412: MemLdRfVar from_stack_1.global_64
  loc_AD2415: LdPrVar
  loc_AD2417: LateMemCall
  loc_AD241D: LitVarStr var_94, " font-size: 12px;"
  loc_AD2422: PopAdLdVar
  loc_AD2423: FLdPr Me
  loc_AD2426: MemLdRfVar from_stack_1.global_64
  loc_AD2429: LdPrVar
  loc_AD242B: LateMemCall
  loc_AD2431: LitVarStr var_94, " font-weight: bold;"
  loc_AD2436: PopAdLdVar
  loc_AD2437: FLdPr Me
  loc_AD243A: MemLdRfVar from_stack_1.global_64
  loc_AD243D: LdPrVar
  loc_AD243F: LateMemCall
  loc_AD2445: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AD244A: PopAdLdVar
  loc_AD244B: FLdPr Me
  loc_AD244E: MemLdRfVar from_stack_1.global_64
  loc_AD2451: LdPrVar
  loc_AD2453: LateMemCall
  loc_AD2459: LitVarStr var_94, "}"
  loc_AD245E: PopAdLdVar
  loc_AD245F: FLdPr Me
  loc_AD2462: MemLdRfVar from_stack_1.global_64
  loc_AD2465: LdPrVar
  loc_AD2467: LateMemCall
  loc_AD246D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AD2472: PopAdLdVar
  loc_AD2473: FLdPr Me
  loc_AD2476: MemLdRfVar from_stack_1.global_64
  loc_AD2479: LdPrVar
  loc_AD247B: LateMemCall
  loc_AD2481: LitVarStr var_94, "</style>"
  loc_AD2486: PopAdLdVar
  loc_AD2487: FLdPr Me
  loc_AD248A: MemLdRfVar from_stack_1.global_64
  loc_AD248D: LdPrVar
  loc_AD248F: LateMemCall
  loc_AD2495: LitI4 0
  loc_AD249A: FStStrCopy var_AC
  loc_AD249D: FLdRfVar var_AC
  loc_AD24A0: LitI4 0
  loc_AD24A5: FStStrCopy var_A8
  loc_AD24A8: FLdRfVar var_A8
  loc_AD24AB: LitI2_Byte 0
  loc_AD24AD: PopTmpLdAd2 var_BE
  loc_AD24B0: FLdPr Me
  loc_AD24B3: MemLdRfVar from_stack_1.global_64
  loc_AD24B6: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AD24BB: FFreeStr var_A8 = ""
  loc_AD24C2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AD24C7: PopAdLdVar
  loc_AD24C8: FLdPr Me
  loc_AD24CB: MemLdRfVar from_stack_1.global_64
  loc_AD24CE: LdPrVar
  loc_AD24D0: LateMemCall
  loc_AD24D6: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AD24DB: PopAdLdVar
  loc_AD24DC: FLdPr Me
  loc_AD24DF: MemLdRfVar from_stack_1.global_64
  loc_AD24E2: LdPrVar
  loc_AD24E4: LateMemCall
  loc_AD24EA: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AD24EF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AD24F4: FStVarCopyObj var_BC
  loc_AD24F7: FLdRfVar var_BC
  loc_AD24FA: FLdRfVar var_D0
  loc_AD24FD: ImpAdCallFPR4  = Ucase()
  loc_AD2502: FLdRfVar var_D0
  loc_AD2505: ConcatVar var_E0
  loc_AD2509: LitVarStr var_F0, "</p>"
  loc_AD250E: ConcatVar var_100
  loc_AD2512: PopAdLdVar
  loc_AD2513: FLdPr Me
  loc_AD2516: MemLdRfVar from_stack_1.global_64
  loc_AD2519: LdPrVar
  loc_AD251B: LateMemCall
  loc_AD2521: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AD252C: LitStr "    <p align=""center"">"
  loc_AD252F: FLdRfVar var_A8
  loc_AD2532: FLdPr Me
  loc_AD2535:  = Me.Caption
  loc_AD253A: ILdRf var_A8
  loc_AD253D: ConcatStr
  loc_AD253E: FStStrNoPop var_AC
  loc_AD2541: LitStr "</p></th>"
  loc_AD2544: ConcatStr
  loc_AD2545: CVarStr var_BC
  loc_AD2548: PopAdLdVar
  loc_AD2549: FLdPr Me
  loc_AD254C: MemLdRfVar from_stack_1.global_64
  loc_AD254F: LdPrVar
  loc_AD2551: LateMemCall
  loc_AD2557: FFreeStr var_A8 = ""
  loc_AD255E: FFree1Var var_BC = ""
  loc_AD2561: LitVarStr var_94, "  </tr>"
  loc_AD2566: PopAdLdVar
  loc_AD2567: FLdPr Me
  loc_AD256A: MemLdRfVar from_stack_1.global_64
  loc_AD256D: LdPrVar
  loc_AD256F: LateMemCall
  loc_AD2575: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AD257A: PopAdLdVar
  loc_AD257B: FLdPr Me
  loc_AD257E: MemLdRfVar from_stack_1.global_64
  loc_AD2581: LdPrVar
  loc_AD2583: LateMemCall
  loc_AD2589: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_AD258E: PopAdLdVar
  loc_AD258F: FLdPr Me
  loc_AD2592: MemLdRfVar from_stack_1.global_64
  loc_AD2595: LdPrVar
  loc_AD2597: LateMemCall
  loc_AD259D: FLdPr Me
  loc_AD25A0: VCallAd Control_ID_mskDesde
  loc_AD25A3: FStAdFunc var_114
  loc_AD25A6: FLdPr var_114
  loc_AD25A9: LateIdLdVar var_BC DispID_22 0
  loc_AD25B0: CStrVarTmp
  loc_AD25B1: FStStrNoPop var_A8
  loc_AD25B4: LitStr vbNullString
  loc_AD25B7: NeStr
  loc_AD25B9: FFree1Str var_A8
  loc_AD25BC: FFree1Ad var_114
  loc_AD25BF: FFree1Var var_BC = ""
  loc_AD25C2: BranchF loc_AD260A
  loc_AD25C5: LitStr "         Desde: <span class=""Normal"">"
  loc_AD25C8: FLdPr Me
  loc_AD25CB: VCallAd Control_ID_mskDesde
  loc_AD25CE: FStAdFunc var_114
  loc_AD25D1: FLdPr var_114
  loc_AD25D4: LateIdLdVar var_BC DispID_15 0
  loc_AD25DB: CStrVarTmp
  loc_AD25DC: FStStrNoPop var_A8
  loc_AD25DF: ConcatStr
  loc_AD25E0: FStStrNoPop var_AC
  loc_AD25E3: LitStr "</span><br>"
  loc_AD25E6: ConcatStr
  loc_AD25E7: CVarStr var_D0
  loc_AD25EA: PopAdLdVar
  loc_AD25EB: FLdPr Me
  loc_AD25EE: MemLdRfVar from_stack_1.global_64
  loc_AD25F1: LdPrVar
  loc_AD25F3: LateMemCall
  loc_AD25F9: FFreeStr var_A8 = ""
  loc_AD2600: FFree1Ad var_114
  loc_AD2603: FFreeVar var_BC = ""
  loc_AD260A: FLdPr Me
  loc_AD260D: VCallAd Control_ID_mskHasta
  loc_AD2610: FStAdFunc var_114
  loc_AD2613: FLdPr var_114
  loc_AD2616: LateIdLdVar var_BC DispID_22 0
  loc_AD261D: CStrVarTmp
  loc_AD261E: FStStrNoPop var_A8
  loc_AD2621: LitStr vbNullString
  loc_AD2624: NeStr
  loc_AD2626: FFree1Str var_A8
  loc_AD2629: FFree1Ad var_114
  loc_AD262C: FFree1Var var_BC = ""
  loc_AD262F: BranchF loc_AD2677
  loc_AD2632: LitStr "         Hasta: <span class=""Normal"">"
  loc_AD2635: FLdPr Me
  loc_AD2638: VCallAd Control_ID_mskHasta
  loc_AD263B: FStAdFunc var_114
  loc_AD263E: FLdPr var_114
  loc_AD2641: LateIdLdVar var_BC DispID_15 0
  loc_AD2648: CStrVarTmp
  loc_AD2649: FStStrNoPop var_A8
  loc_AD264C: ConcatStr
  loc_AD264D: FStStrNoPop var_AC
  loc_AD2650: LitStr "</span>"
  loc_AD2653: ConcatStr
  loc_AD2654: CVarStr var_D0
  loc_AD2657: PopAdLdVar
  loc_AD2658: FLdPr Me
  loc_AD265B: MemLdRfVar from_stack_1.global_64
  loc_AD265E: LdPrVar
  loc_AD2660: LateMemCall
  loc_AD2666: FFreeStr var_A8 = ""
  loc_AD266D: FFree1Ad var_114
  loc_AD2670: FFreeVar var_BC = ""
  loc_AD2677: LitVarStr var_94, "   </th>"
  loc_AD267C: PopAdLdVar
  loc_AD267D: FLdPr Me
  loc_AD2680: MemLdRfVar from_stack_1.global_64
  loc_AD2683: LdPrVar
  loc_AD2685: LateMemCall
  loc_AD268B: LitVarStr var_94, "  </tr>"
  loc_AD2690: PopAdLdVar
  loc_AD2691: FLdPr Me
  loc_AD2694: MemLdRfVar from_stack_1.global_64
  loc_AD2697: LdPrVar
  loc_AD2699: LateMemCall
  loc_AD269F: LitVarStr var_94, "</table>"
  loc_AD26A4: PopAdLdVar
  loc_AD26A5: FLdPr Me
  loc_AD26A8: MemLdRfVar from_stack_1.global_64
  loc_AD26AB: LdPrVar
  loc_AD26AD: LateMemCall
  loc_AD26B3: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AD26B8: PopAdLdVar
  loc_AD26B9: FLdPr Me
  loc_AD26BC: MemLdRfVar from_stack_1.global_64
  loc_AD26BF: LdPrVar
  loc_AD26C1: LateMemCall
  loc_AD26C7: LitVarStr var_94, "  <THEAD>"
  loc_AD26CC: PopAdLdVar
  loc_AD26CD: FLdPr Me
  loc_AD26D0: MemLdRfVar from_stack_1.global_64
  loc_AD26D3: LdPrVar
  loc_AD26D5: LateMemCall
  loc_AD26DB: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AD26E0: PopAdLdVar
  loc_AD26E1: FLdPr Me
  loc_AD26E4: MemLdRfVar from_stack_1.global_64
  loc_AD26E7: LdPrVar
  loc_AD26E9: LateMemCall
  loc_AD26EF: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_AD26F4: PopAdLdVar
  loc_AD26F5: FLdPr Me
  loc_AD26F8: MemLdRfVar from_stack_1.global_64
  loc_AD26FB: LdPrVar
  loc_AD26FD: LateMemCall
  loc_AD2703: LitVarStr var_94, "    <th>Fecha</th>"
  loc_AD2708: PopAdLdVar
  loc_AD2709: FLdPr Me
  loc_AD270C: MemLdRfVar from_stack_1.global_64
  loc_AD270F: LdPrVar
  loc_AD2711: LateMemCall
  loc_AD2717: LitVarStr var_94, "    <th>Expediente</th>"
  loc_AD271C: PopAdLdVar
  loc_AD271D: FLdPr Me
  loc_AD2720: MemLdRfVar from_stack_1.global_64
  loc_AD2723: LdPrVar
  loc_AD2725: LateMemCall
  loc_AD272B: LitVarStr var_94, "    <th>Partida</th>"
  loc_AD2730: PopAdLdVar
  loc_AD2731: FLdPr Me
  loc_AD2734: MemLdRfVar from_stack_1.global_64
  loc_AD2737: LdPrVar
  loc_AD2739: LateMemCall
  loc_AD273F: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_AD2744: PopAdLdVar
  loc_AD2745: FLdPr Me
  loc_AD2748: MemLdRfVar from_stack_1.global_64
  loc_AD274B: LdPrVar
  loc_AD274D: LateMemCall
  loc_AD2753: LitVarStr var_94, "    <th>Imputaci&oacute;n</th>"
  loc_AD2758: PopAdLdVar
  loc_AD2759: FLdPr Me
  loc_AD275C: MemLdRfVar from_stack_1.global_64
  loc_AD275F: LdPrVar
  loc_AD2761: LateMemCall
  loc_AD2767: LitVarStr var_94, "    <th>D E B E</th>"
  loc_AD276C: PopAdLdVar
  loc_AD276D: FLdPr Me
  loc_AD2770: MemLdRfVar from_stack_1.global_64
  loc_AD2773: LdPrVar
  loc_AD2775: LateMemCall
  loc_AD277B: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_AD2780: PopAdLdVar
  loc_AD2781: FLdPr Me
  loc_AD2784: MemLdRfVar from_stack_1.global_64
  loc_AD2787: LdPrVar
  loc_AD2789: LateMemCall
  loc_AD278F: LitVarStr var_94, "  </tr>"
  loc_AD2794: PopAdLdVar
  loc_AD2795: FLdPr Me
  loc_AD2798: MemLdRfVar from_stack_1.global_64
  loc_AD279B: LdPrVar
  loc_AD279D: LateMemCall
  loc_AD27A3: LitVarStr var_94, "  </THEAD>"
  loc_AD27A8: PopAdLdVar
  loc_AD27A9: FLdPr Me
  loc_AD27AC: MemLdRfVar from_stack_1.global_64
  loc_AD27AF: LdPrVar
  loc_AD27B1: LateMemCall
  loc_AD27B7: ExitProcHresult
End Function

Private Function Proc_245_20_982A10() '982A10
  'Data Table: 44E538
  loc_9829D0: LitVarStr var_94, "</table>"
  loc_9829D5: PopAdLdVar
  loc_9829D6: FLdPr Me
  loc_9829D9: MemLdRfVar from_stack_1.global_64
  loc_9829DC: LdPrVar
  loc_9829DE: LateMemCall
  loc_9829E4: LitVarStr var_94, "</body>"
  loc_9829E9: PopAdLdVar
  loc_9829EA: FLdPr Me
  loc_9829ED: MemLdRfVar from_stack_1.global_64
  loc_9829F0: LdPrVar
  loc_9829F2: LateMemCall
  loc_9829F8: LitVarStr var_94, "</html>"
  loc_9829FD: PopAdLdVar
  loc_9829FE: FLdPr Me
  loc_982A01: MemLdRfVar from_stack_1.global_64
  loc_982A04: LdPrVar
  loc_982A06: LateMemCall
  loc_982A0C: ExitProcHresult
End Function
