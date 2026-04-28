VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{65E121D4-0C60-11D2-A9FC0000F8754DA1}#2.0#0"; "C:\WINDOWS\SysWOW64\mschrt20.ocx"
Begin VB.Form rptPlazosLicitacion
  Caption = "Días desde la Nota de Pedido hasta la Apertura"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptPlazosLicitacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6120
  ClientHeight = 3735
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3480
    Width = 6120
    Height = 255
    TabIndex = 18
    OleObjectBlob = "rptPlazosLicitacion.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5160
    Top = 2520
    Width = 735
    Height = 615
    TabIndex = 16
    Cancel = -1  'True
    Picture = "rptPlazosLicitacion.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptPlazosLicitacion.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2280
    Width = 1815
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2280
    Width = 3015
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5895
    Height = 2175
    TabIndex = 0
    Begin VB.ComboBox CodiTicoCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1440
      Top = 480
      Width = 2535
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2640
      Top = 1440
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptPlazosLicitacion.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2640
      Top = 960
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptPlazosLicitacion.frx":1142
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 480
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1440
      Top = 960
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptPlazosLicitacion.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1440
      Top = 1440
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptPlazosLicitacion.frx":170C
    End
    Begin VB.Label Label6
      Caption = "Tipo de Compra:"
      Left = 180
      Top = 480
      Width = 1170
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 885
      Top = 1440
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 840
      Top = 960
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5280
    Top = 2880
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 17
    OleObjectBlob = "rptPlazosLicitacion.frx":1794
  End
  Begin MSChart20Lib.MSChart Graf1
    Left = 6240
    Top = 120
    Width = 3855
    Height = 3015
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptPlazosLicitacion.frx":1848
  End
  Begin VB.Image img1
    Left = 10440
    Top = 240
    Width = 735
    Height = 3135
    Visible = 0   'False
  End
End

Attribute VB_Name = "rptPlazosLicitacion"

Public bGenerado As Boolean

Private Type UDT_1_005FCBCC
  bStruc(20) As Byte ' String fields: 4
End Type


Private Sub cmdCalHasta_Click() '98452C
  'Data Table: 472B14
  loc_9844F0: LitVar_Missing var_A4
  loc_9844F3: PopAdLdVar
  loc_9844F4: LitVarI4
  loc_9844FC: PopAdLdVar
  loc_9844FD: ImpAdLdRf MemVar_C3D9A8
  loc_984500: NewIfNullPr frmCalendario
  loc_984503: frmCalendario.Show from_stack_1, from_stack_2
  loc_984508: ImpAdLdRf MemVar_C3D038
  loc_98450B: CDargRef
  loc_98450F: FLdPr Me
  loc_984512: VCallAd Control_ID_mskHasta
  loc_984515: FStAdFunc var_A8
  loc_984518: FLdPr var_A8
  loc_98451B: LateIdSt
  loc_984520: FFree1Ad var_A8
  loc_984523: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_984528: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '98444C
  'Data Table: 472B14
  loc_984410: LitVar_Missing var_A4
  loc_984413: PopAdLdVar
  loc_984414: LitVarI4
  loc_98441C: PopAdLdVar
  loc_98441D: ImpAdLdRf MemVar_C3D9A8
  loc_984420: NewIfNullPr frmCalendario
  loc_984423: frmCalendario.Show from_stack_1, from_stack_2
  loc_984428: ImpAdLdRf MemVar_C3D038
  loc_98442B: CDargRef
  loc_98442F: FLdPr Me
  loc_984432: VCallAd Control_ID_mskDesde
  loc_984435: FStAdFunc var_A8
  loc_984438: FLdPr var_A8
  loc_98443B: LateIdSt
  loc_984440: FFree1Ad var_A8
  loc_984443: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_984448: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '96677C
  'Data Table: 472B14
  loc_966764: ILdRf Me
  loc_966767: CastAd
  loc_96676A: FStAdFunc var_88
  loc_96676D: FLdRfVar var_88
  loc_966770: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_966775: FFree1Ad var_88
  loc_966778: ExitProcHresult
End Sub

Private Sub Form_Load() '9AF328
  'Data Table: 472B14
  loc_9AF27C: LitI2_Byte &HFF
  loc_9AF27E: ImpAdStI2 MemVar_C3D840
  loc_9AF281: ILdRf Me
  loc_9AF284: CastAd
  loc_9AF287: FStAdFunc var_88
  loc_9AF28A: FLdRfVar var_88
  loc_9AF28D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9AF292: FFree1Ad var_88
  loc_9AF295: FLdPr Me
  loc_9AF298: VCallAd Control_ID_CodiTicoCbo
  loc_9AF29B: FStAdFunc var_8C
  loc_9AF29E: LitVar_Missing var_9C
  loc_9AF2A1: PopAdLdVar
  loc_9AF2A2: LitStr "Contratación Directa"
  loc_9AF2A5: FLdPr var_8C
  loc_9AF2A8: Me.AddItem from_stack_1, from_stack_2
  loc_9AF2AD: LitI4 2
  loc_9AF2B2: FLdRfVar var_9E
  loc_9AF2B5: FLdPr var_8C
  loc_9AF2B8:  = Me.NewIndex
  loc_9AF2BD: FLdI2 var_9E
  loc_9AF2C0: FLdPr var_8C
  loc_9AF2C3: Me.ItemData = from_stack_1
  loc_9AF2C8: LitVar_Missing var_9C
  loc_9AF2CB: PopAdLdVar
  loc_9AF2CC: LitStr "Licitación Privada"
  loc_9AF2CF: FLdPr var_8C
  loc_9AF2D2: Me.AddItem from_stack_1, from_stack_2
  loc_9AF2D7: LitI4 3
  loc_9AF2DC: FLdRfVar var_9E
  loc_9AF2DF: FLdPr var_8C
  loc_9AF2E2:  = Me.NewIndex
  loc_9AF2E7: FLdI2 var_9E
  loc_9AF2EA: FLdPr var_8C
  loc_9AF2ED: Me.ItemData = from_stack_1
  loc_9AF2F2: LitVar_Missing var_9C
  loc_9AF2F5: PopAdLdVar
  loc_9AF2F6: LitStr "Licitación Pública"
  loc_9AF2F9: FLdPr var_8C
  loc_9AF2FC: Me.AddItem from_stack_1, from_stack_2
  loc_9AF301: LitI4 4
  loc_9AF306: FLdRfVar var_9E
  loc_9AF309: FLdPr var_8C
  loc_9AF30C:  = Me.NewIndex
  loc_9AF311: FLdI2 var_9E
  loc_9AF314: FLdPr var_8C
  loc_9AF317: Me.ItemData = from_stack_1
  loc_9AF31C: LitNothing
  loc_9AF31E: FStAd var_8C 
  loc_9AF322: Call cmdNueva_Click()
  loc_9AF327: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '966AC0
  'Data Table: 472B14
  loc_966AA8: FLdPr Me
  loc_966AAB: VCallAd Control_ID_wbbReporte
  loc_966AAE: FStAdFunc var_88
  loc_966AB1: FLdRfVar var_88
  loc_966AB4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_966AB9: FFree1Ad var_88
  loc_966ABC: ExitProcHresult
  loc_966ABD: FLdR8 arg_23
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98C494
  'Data Table: 472B14
  loc_98C45C: FLdPr Me
  loc_98C45F: VCallAd Control_ID_statusBar
  loc_98C462: FStAdFunc var_88
  loc_98C465: FLdPr var_88
  loc_98C468: LateIdLdVar var_98 DispID_1 0
  loc_98C46F: CStrVarTmp
  loc_98C470: CVarStr var_A8
  loc_98C473: PopAdLdVar
  loc_98C474: FLdPr Me
  loc_98C477: VCallAd Control_ID_statusBar
  loc_98C47A: FStAdFunc var_BC
  loc_98C47D: FLdPr var_BC
  loc_98C480: LateIdSt
  loc_98C485: FFreeAd var_88 = ""
  loc_98C48C: FFreeVar var_98 = ""
  loc_98C493: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9668AC
  'Data Table: 472B14
  loc_966894: ILdRf Me
  loc_966897: CastAd
  loc_96689A: FStAdFunc var_88
  loc_96689D: FLdRfVar var_88
  loc_9668A0: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9668A5: FFree1Ad var_88
  loc_9668A8: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94D3B8
  'Data Table: 472B14
  loc_94D3A4: FLdPr Me
  loc_94D3A7: VCallAd Control_ID_mskDesde
  loc_94D3AA: CVarAd
  loc_94D3AE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D3B3: FFree1Var var_94 = ""
  loc_94D3B6: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9ADB78
  'Data Table: 472B14
  loc_9ADAE8: FLdPr Me
  loc_9ADAEB: VCallAd Control_ID_mskDesde
  loc_9ADAEE: FStAdFunc var_88
  loc_9ADAF1: FLdPr var_88
  loc_9ADAF4: LateIdLdVar var_98 DispID_15 0
  loc_9ADAFB: PopAd
  loc_9ADAFD: LitI2_Byte &HFF
  loc_9ADAFF: PopTmpLdAd2 var_A2
  loc_9ADB02: LitNothing
  loc_9ADB04: CastAd
  loc_9ADB07: FStAdFunc var_A0
  loc_9ADB0A: FLdRfVar var_A0
  loc_9ADB0D: LitStr "01/01/2018"
  loc_9ADB10: LitI2_Byte 0
  loc_9ADB12: LitI2_Byte 0
  loc_9ADB14: FLdRfVar var_98
  loc_9ADB17: CStrVarTmp
  loc_9ADB18: FStStrNoPop var_9C
  loc_9ADB1B: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9ADB20: FStStrNoPop var_A8
  loc_9ADB23: FLdPr Me
  loc_9ADB26: MemStStrCopy
  loc_9ADB2A: FFreeStr var_9C = ""
  loc_9ADB31: FFreeAd var_88 = ""
  loc_9ADB38: FFree1Var var_98 = ""
  loc_9ADB3B: FLdPr Me
  loc_9ADB3E: VCallAd Control_ID_mskDesde
  loc_9ADB41: FStAdFunc var_B0
  loc_9ADB44: LitNothing
  loc_9ADB46: CastAd
  loc_9ADB49: FStAdFunc var_AC
  loc_9ADB4C: FLdRfVar var_AC
  loc_9ADB4F: FLdZeroAd var_B0
  loc_9ADB52: FStAdFuncNoPop
  loc_9ADB55: CastAd
  loc_9ADB58: FStAdFunc var_A0
  loc_9ADB5B: FLdRfVar var_A0
  loc_9ADB5E: FLdPr Me
  loc_9ADB61: MemLdRfVar from_stack_1.global_104
  loc_9ADB64: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9ADB69: IStI2 arg_C
  loc_9ADB6C: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9ADB77: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '9DF354
  'Data Table: 472B14
  loc_9DF26C: FLdPr Me
  loc_9DF26F: VCallAd Control_ID_mskDesde
  loc_9DF272: FStAdFunc var_88
  loc_9DF275: FLdPr var_88
  loc_9DF278: LateIdLdVar var_98 DispID_15 0
  loc_9DF27F: CStrVarTmp
  loc_9DF280: CVarStr var_A8
  loc_9DF283: FLdRfVar var_B8
  loc_9DF286: ImpAdCallFPR4  = Day()
  loc_9DF28B: FLdRfVar var_B8
  loc_9DF28E: LitVarI2 var_C8, 1
  loc_9DF293: HardType
  loc_9DF294: EqVarBool
  loc_9DF296: FFree1Ad var_88
  loc_9DF299: FFreeVar var_98 = "": var_A8 = ""
  loc_9DF2A2: BranchF loc_9DF33E
  loc_9DF2A5: FLdPr Me
  loc_9DF2A8: VCallAd Control_ID_mskDesde
  loc_9DF2AB: FStAdFunc var_88
  loc_9DF2AE: FLdPr var_88
  loc_9DF2B1: LateIdLdVar var_98 DispID_15 0
  loc_9DF2B8: CStrVarTmp
  loc_9DF2B9: CVarStr var_A8
  loc_9DF2BC: FLdRfVar var_B8
  loc_9DF2BF: ImpAdCallFPR4  = Year()
  loc_9DF2C4: FLdPr Me
  loc_9DF2C7: VCallAd Control_ID_mskDesde
  loc_9DF2CA: FStAdFunc var_DC
  loc_9DF2CD: FLdPr var_DC
  loc_9DF2D0: LateIdLdVar var_D8 DispID_15 0
  loc_9DF2D7: CStrVarTmp
  loc_9DF2D8: CVarStr var_EC
  loc_9DF2DB: FLdRfVar var_FC
  loc_9DF2DE: ImpAdCallFPR4  = Month()
  loc_9DF2E3: LitI2_Byte 1
  loc_9DF2E5: FLdRfVar var_FC
  loc_9DF2E8: LitVarI2 var_C8, 1
  loc_9DF2ED: AddVar var_10C
  loc_9DF2F1: CI2Var
  loc_9DF2F2: FLdRfVar var_B8
  loc_9DF2F5: CI2Var
  loc_9DF2F6: FLdRfVar var_11C
  loc_9DF2F9: ImpAdCallFPR4  = DateSerial(, , )
  loc_9DF2FE: FLdRfVar var_11C
  loc_9DF301: LitVarI2 var_12C, 1
  loc_9DF306: SubVar var_13C
  loc_9DF30A: CStrVarTmp
  loc_9DF30B: CVarStr var_14C
  loc_9DF30E: PopAdLdVar
  loc_9DF30F: FLdPr Me
  loc_9DF312: VCallAd Control_ID_mskHasta
  loc_9DF315: FStAdFunc var_160
  loc_9DF318: FLdPr var_160
  loc_9DF31B: LateIdSt
  loc_9DF320: FFreeAd var_88 = "": var_DC = ""
  loc_9DF329: FFreeVar var_98 = "": var_A8 = "": var_D8 = "": var_EC = "": var_FC = "": var_B8 = "": var_10C = "": var_11C = ""
  loc_9DF33E: FLdPr Me
  loc_9DF341: VCallAd Control_ID_mskHasta
  loc_9DF344: CVarAd
  loc_9DF348: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9DF34D: FFree1Var var_98 = ""
  loc_9DF350: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9AD04C
  'Data Table: 472B14
  loc_9ACFBC: FLdPr Me
  loc_9ACFBF: VCallAd Control_ID_mskHasta
  loc_9ACFC2: FStAdFunc var_88
  loc_9ACFC5: FLdPr var_88
  loc_9ACFC8: LateIdLdVar var_98 DispID_15 0
  loc_9ACFCF: PopAd
  loc_9ACFD1: LitI2_Byte &HFF
  loc_9ACFD3: PopTmpLdAd2 var_A2
  loc_9ACFD6: LitNothing
  loc_9ACFD8: CastAd
  loc_9ACFDB: FStAdFunc var_A0
  loc_9ACFDE: FLdRfVar var_A0
  loc_9ACFE1: LitStr "01/01/2018"
  loc_9ACFE4: LitI2_Byte 0
  loc_9ACFE6: LitI2_Byte 0
  loc_9ACFE8: FLdRfVar var_98
  loc_9ACFEB: CStrVarTmp
  loc_9ACFEC: FStStrNoPop var_9C
  loc_9ACFEF: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9ACFF4: FStStrNoPop var_A8
  loc_9ACFF7: FLdPr Me
  loc_9ACFFA: MemStStrCopy
  loc_9ACFFE: FFreeStr var_9C = ""
  loc_9AD005: FFreeAd var_88 = ""
  loc_9AD00C: FFree1Var var_98 = ""
  loc_9AD00F: FLdPr Me
  loc_9AD012: VCallAd Control_ID_mskHasta
  loc_9AD015: FStAdFunc var_B0
  loc_9AD018: LitNothing
  loc_9AD01A: CastAd
  loc_9AD01D: FStAdFunc var_AC
  loc_9AD020: FLdRfVar var_AC
  loc_9AD023: FLdZeroAd var_B0
  loc_9AD026: FStAdFuncNoPop
  loc_9AD029: CastAd
  loc_9AD02C: FStAdFunc var_A0
  loc_9AD02F: FLdRfVar var_A0
  loc_9AD032: FLdPr Me
  loc_9AD035: MemLdRfVar from_stack_1.global_104
  loc_9AD038: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AD03D: IStI2 arg_C
  loc_9AD040: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AD04B: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '966A74
  'Data Table: 472B14
  loc_966A5C: LitI2_Byte 0
  loc_966A5E: ILdRf Me
  loc_966A61: CastAd
  loc_966A64: FStAdFunc var_88
  loc_966A67: FLdRfVar var_88
  loc_966A6A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_966A6F: FFree1Ad var_88
  loc_966A72: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '977F08
  'Data Table: 472B14
  loc_977ED8: LitVarStr var_94, "Cerrando..."
  loc_977EDD: PopAdLdVar
  loc_977EDE: FLdPr Me
  loc_977EE1: VCallAd Control_ID_statusBar
  loc_977EE4: FStAdFunc var_A8
  loc_977EE7: FLdPr var_A8
  loc_977EEA: LateIdSt
  loc_977EEF: FFree1Ad var_A8
  loc_977EF2: ILdRf Me
  loc_977EF5: FStAdNoPop
  loc_977EF9: ImpAdLdRf MemVar_C44F9C
  loc_977EFC: NewIfNullPr Me
  loc_977EFF: Me.Global.Unload from_stack_1
  loc_977F04: FFree1Ad var_A8
  loc_977F07: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C6890
  'Data Table: 472B14
  loc_9C67C8: LitI2_Byte 0
  loc_9C67CA: FLdPr Me
  loc_9C67CD: MemStI2 bGenerado
  loc_9C67D0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C67D5: LitI2_Byte 0
  loc_9C67D7: FLdPr Me
  loc_9C67DA: VCallAd Control_ID_CodiTicoCbo
  loc_9C67DD: FStAdFunc var_88
  loc_9C67E0: FLdPr var_88
  loc_9C67E3: Me.ListIndex = from_stack_1
  loc_9C67E8: FFree1Ad var_88
  loc_9C67EB: LitI2_Byte 0
  loc_9C67ED: PopTmpLdAd2 var_8A
  loc_9C67F0: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9C67F5: CVarDate var_AC
  loc_9C67F9: FLdRfVar var_BC
  loc_9C67FC: ImpAdCallFPR4  = Year()
  loc_9C6801: LitI2_Byte 0
  loc_9C6803: PopTmpLdAd2 var_BE
  loc_9C6806: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9C680B: CVarDate var_E0
  loc_9C680F: FLdRfVar var_F0
  loc_9C6812: ImpAdCallFPR4  = Month()
  loc_9C6817: LitI2_Byte 1
  loc_9C6819: FLdRfVar var_F0
  loc_9C681C: CI2Var
  loc_9C681D: FLdRfVar var_BC
  loc_9C6820: CI2Var
  loc_9C6821: FLdRfVar var_100
  loc_9C6824: ImpAdCallFPR4  = DateSerial(, , )
  loc_9C6829: FLdRfVar var_100
  loc_9C682C: CStrVarTmp
  loc_9C682D: CVarStr var_110
  loc_9C6830: PopAdLdVar
  loc_9C6831: FLdPr Me
  loc_9C6834: VCallAd Control_ID_mskDesde
  loc_9C6837: FStAdFunc var_88
  loc_9C683A: FLdPr var_88
  loc_9C683D: LateIdSt
  loc_9C6842: FFree1Ad var_88
  loc_9C6845: FFreeVar var_AC = "": var_E0 = "": var_BC = "": var_F0 = "": var_100 = ""
  loc_9C6854: ImpAdLdFPR8 MemVar_C3D04C
  loc_9C6857: CStrDate
  loc_9C6859: CVarStr var_AC
  loc_9C685C: PopAdLdVar
  loc_9C685D: FLdPr Me
  loc_9C6860: VCallAd Control_ID_mskHasta
  loc_9C6863: FStAdFunc var_88
  loc_9C6866: FLdPr var_88
  loc_9C6869: LateIdSt
  loc_9C686E: FFree1Ad var_88
  loc_9C6871: FFree1Var var_AC = ""
  loc_9C6874: Call HabilitarCriterio()
  loc_9C6879: ILdRf Me
  loc_9C687C: CastAd
  loc_9C687F: FStAdFunc var_88
  loc_9C6882: FLdRfVar var_88
  loc_9C6885: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C688A: FFree1Ad var_88
  loc_9C688D: ExitProcHresult
End Sub

Public Function bGeneradoGet() '473A48
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '473A57
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A5D58
  'Data Table: 472B14
  loc_9A5CE4: LitI4 0
  loc_9A5CE9: LitI4 4
  loc_9A5CEE: FLdRfVar var_88
  loc_9A5CF1: Redim
  loc_9A5CFB: FLdPr Me
  loc_9A5CFE: VCallAd Control_ID_CodiTicoCbo
  loc_9A5D01: CVarAd
  loc_9A5D05: ParmAry1St
  loc_9A5D0B: FLdPr Me
  loc_9A5D0E: VCallAd Control_ID_mskDesde
  loc_9A5D11: CVarAd
  loc_9A5D15: ParmAry1St
  loc_9A5D1B: FLdPr Me
  loc_9A5D1E: VCallAd Control_ID_cmdCalDesde
  loc_9A5D21: CVarAd
  loc_9A5D25: ParmAry1St
  loc_9A5D2B: FLdPr Me
  loc_9A5D2E: VCallAd Control_ID_mskHasta
  loc_9A5D31: CVarAd
  loc_9A5D35: ParmAry1St
  loc_9A5D3B: FLdPr Me
  loc_9A5D3E: VCallAd Control_ID_cmdCalHasta
  loc_9A5D41: CVarAd
  loc_9A5D45: ParmAry1St
  loc_9A5D4B: FLdRfVar var_88
  loc_9A5D4E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A5D53: FLdRfVar var_88
  loc_9A5D56: Erase
  loc_9A5D57: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AC058C
  'Data Table: 472B14
  loc_ABFFF8: FLdPr Me
  loc_ABFFFB: MemLdI2 bGenerado
  loc_ABFFFE: BranchF loc_AC0002
  loc_AC0001: ExitProcHresult
  loc_AC0002: LitVarStr var_94, "Generando reporte..."
  loc_AC0007: PopAdLdVar
  loc_AC0008: FLdPr Me
  loc_AC000B: VCallAd Control_ID_statusBar
  loc_AC000E: FStAdFunc var_A8
  loc_AC0011: FLdPr var_A8
  loc_AC0014: LateIdSt
  loc_AC0019: FFree1Ad var_A8
  loc_AC001C: LitI4 &HB
  loc_AC0021: CI2I4
  loc_AC0022: FLdPr Me
  loc_AC0025: Me.MousePointer = from_stack_1
  loc_AC002A: FLdPr Me
  loc_AC002D: MemLdRfVar from_stack_1.global_56
  loc_AC0030: NewIfNullAd
  loc_AC0033: FStAd var_AC 
  loc_AC0037: FLdRfVar var_AE
  loc_AC003A: FLdPr Me
  loc_AC003D: VCallAd Control_ID_CodiTicoCbo
  loc_AC0040: FStAdFunc var_A8
  loc_AC0043: FLdPr var_A8
  loc_AC0046:  = Me.ListIndex
  loc_AC004B: FLdPr Me
  loc_AC004E: VCallAd Control_ID_mskDesde
  loc_AC0051: FStAdFunc var_CC
  loc_AC0054: FLdPr var_CC
  loc_AC0057: LateIdLdVar var_DC DispID_15 0
  loc_AC005E: PopAd
  loc_AC0060: FLdPr Me
  loc_AC0063: VCallAd Control_ID_mskHasta
  loc_AC0066: FStAdFunc var_110
  loc_AC0069: FLdPr var_110
  loc_AC006C: LateIdLdVar var_120 DispID_15 0
  loc_AC0073: PopAd
  loc_AC0075: LitStr "SELECT CodiNope, ifnull(FeleNope,FeliNope) as FeliNope, FechNope, datediff(ifnull(FeleNope,FeliNope),FechNope) as Dias"
  loc_AC0078: LitStr " FROM notapedido WHERE CodiTico = "
  loc_AC007B: ConcatStr
  loc_AC007C: FStStrNoPop var_BC
  loc_AC007F: FLdRfVar var_B8
  loc_AC0082: FLdI2 var_AE
  loc_AC0085: FLdPr Me
  loc_AC0088: VCallAd Control_ID_CodiTicoCbo
  loc_AC008B: FStAdFunc var_B4
  loc_AC008E: FLdPr var_B4
  loc_AC0091:  = Me.ItemData
  loc_AC0096: ILdRf var_B8
  loc_AC0099: CStrI4
  loc_AC009B: FStStrNoPop var_C0
  loc_AC009E: ConcatStr
  loc_AC009F: FStStrNoPop var_C4
  loc_AC00A2: LitStr " AND (FeliNope > '0000-00-00' OR FeleNope > '0000-00-00')"
  loc_AC00A5: ConcatStr
  loc_AC00A6: FStStrNoPop var_C8
  loc_AC00A9: LitStr " AND ifnull(FeleNope,FeliNope) >= '"
  loc_AC00AC: ConcatStr
  loc_AC00AD: FStStrNoPop var_100
  loc_AC00B0: LitI4 1
  loc_AC00B5: LitI4 1
  loc_AC00BA: LitVarStr var_94, "yyyy-mm-dd"
  loc_AC00BF: FStVarCopyObj var_FC
  loc_AC00C2: FLdRfVar var_FC
  loc_AC00C5: FLdRfVar var_DC
  loc_AC00C8: CStrVarTmp
  loc_AC00C9: CVarStr var_EC
  loc_AC00CC: ImpAdCallI2 Format$(, )
  loc_AC00D1: FStStrNoPop var_104
  loc_AC00D4: ConcatStr
  loc_AC00D5: FStStrNoPop var_108
  loc_AC00D8: LitStr "'"
  loc_AC00DB: ConcatStr
  loc_AC00DC: FStStrNoPop var_10C
  loc_AC00DF: LitStr " AND ifnull(FeleNope,FeliNope) <= '"
  loc_AC00E2: ConcatStr
  loc_AC00E3: FStStrNoPop var_144
  loc_AC00E6: LitI4 1
  loc_AC00EB: LitI4 1
  loc_AC00F0: LitVarStr var_A4, "yyyy-mm-dd"
  loc_AC00F5: FStVarCopyObj var_140
  loc_AC00F8: FLdRfVar var_140
  loc_AC00FB: FLdRfVar var_120
  loc_AC00FE: CStrVarTmp
  loc_AC00FF: CVarStr var_130
  loc_AC0102: ImpAdCallI2 Format$(, )
  loc_AC0107: FStStrNoPop var_148
  loc_AC010A: ConcatStr
  loc_AC010B: FStStrNoPop var_14C
  loc_AC010E: LitStr "'"
  loc_AC0111: ConcatStr
  loc_AC0112: FStStrNoPop var_150
  loc_AC0115: LitStr " ORDER BY CodiNope"
  loc_AC0118: ConcatStr
  loc_AC0119: FStStrNoPop var_154
  loc_AC011C: FLdPr var_AC
  loc_AC011F: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_AC0124: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_AC0141: FFreeAd var_A8 = "": var_B4 = "": var_CC = ""
  loc_AC014C: FFreeVar var_DC = "": var_EC = "": var_FC = "": var_120 = "": var_130 = ""
  loc_AC015B: FLdRfVar var_B8
  loc_AC015E: FLdPr var_AC
  loc_AC0161: from_stack_1 = clsnotapedido.RecordCount
  loc_AC0166: ILdRf var_B8
  loc_AC0169: LitI4 0
  loc_AC016E: EqI4
  loc_AC016F: BranchF loc_AC0182
  loc_AC0172: LitI4 0
  loc_AC0177: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AC017A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AC017F: Branch loc_AC0561
  loc_AC0182: FLdRfVar var_B8
  loc_AC0185: FLdRfVar var_AE
  loc_AC0188: FLdPr Me
  loc_AC018B: VCallAd Control_ID_CodiTicoCbo
  loc_AC018E: FStAdFunc var_A8
  loc_AC0191: FLdPr var_A8
  loc_AC0194:  = Me.ListIndex
  loc_AC0199: FLdI2 var_AE
  loc_AC019C: FLdPr Me
  loc_AC019F: VCallAd Control_ID_CodiTicoCbo
  loc_AC01A2: FStAdFunc var_B4
  loc_AC01A5: FLdPr var_B4
  loc_AC01A8:  = Me.ItemData
  loc_AC01AD: ILdRf var_B8
  loc_AC01B0: FStR4 var_158
  loc_AC01B3: FFreeAd var_A8 = ""
  loc_AC01BA: ILdRf var_158
  loc_AC01BD: LitI4 2
  loc_AC01C2: EqI4
  loc_AC01C3: BranchF loc_AC01D1
  loc_AC01C6: LitI2_Byte &HF
  loc_AC01C8: FLdPr Me
  loc_AC01CB: MemStI2 global_100
  loc_AC01CE: Branch loc_AC01FC
  loc_AC01D1: ILdRf var_158
  loc_AC01D4: LitI4 3
  loc_AC01D9: EqI4
  loc_AC01DA: BranchF loc_AC01E8
  loc_AC01DD: LitI2_Byte &H1E
  loc_AC01DF: FLdPr Me
  loc_AC01E2: MemStI2 global_100
  loc_AC01E5: Branch loc_AC01FC
  loc_AC01E8: ILdRf var_158
  loc_AC01EB: LitI4 4
  loc_AC01F0: EqI4
  loc_AC01F1: BranchF loc_AC01FC
  loc_AC01F4: LitI2_Byte &H28
  loc_AC01F6: FLdPr Me
  loc_AC01F9: MemStI2 global_100
  loc_AC01FC: LitI2_Byte 0
  loc_AC01FE: CStrUI1
  loc_AC0200: FStStrNoPop var_BC
  loc_AC0203: FLdPr Me
  loc_AC0206: MemStStrCopy
  loc_AC020A: FFree1Str var_BC
  loc_AC020D: LitI2_Byte 0
  loc_AC020F: CStrUI1
  loc_AC0211: FStStrNoPop var_BC
  loc_AC0214: FLdPr Me
  loc_AC0217: MemStStrCopy
  loc_AC021B: FFree1Str var_BC
  loc_AC021E: FLdRfVar var_B8
  loc_AC0221: FLdPr var_AC
  loc_AC0224: from_stack_1 = clsnotapedido.RecordCount
  loc_AC0229: ILdRf var_B8
  loc_AC022C: CStrI4
  loc_AC022E: FStStrNoPop var_BC
  loc_AC0231: FLdPr Me
  loc_AC0234: MemStStrCopy
  loc_AC0238: FFree1Str var_BC
  loc_AC023B: LitI4 1
  loc_AC0240: FLdRfVar var_B8
  loc_AC0243: FLdPr var_AC
  loc_AC0246: from_stack_1 = clsnotapedido.RecordCount
  loc_AC024B: ILdRf var_B8
  loc_AC024E: FLdPr Me
  loc_AC0251: MemLdRfVar from_stack_1.global_80
  loc_AC0254: Redim
  loc_AC025E: FLdPr var_AC
  loc_AC0261: Call clsnotapedido.MoveFirst()
  loc_AC0266: LitI4 1
  loc_AC026B: FLdPr Me
  loc_AC026E: MemLdRfVar from_stack_1.global_96
  loc_AC0271: FLdPr Me
  loc_AC0274: MemLdStr global_80
  loc_AC0277: LitI2_Byte 1
  loc_AC0279: FnUBound
  loc_AC027B: ForI4 var_160
  loc_AC0281: FLdRfVar var_CC
  loc_AC0284: LitVarStr var_94, "CodiNope"
  loc_AC0289: PopAdLdVar
  loc_AC028A: FLdRfVar var_B4
  loc_AC028D: FLdRfVar var_A8
  loc_AC0290: FLdPr var_AC
  loc_AC0293: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AC0298: FLdPr var_A8
  loc_AC029B:  = Me.Fields
  loc_AC02A0: FLdPr var_B4
  loc_AC02A3: from_stack_2 = Me.Item(from_stack_1)
  loc_AC02A8: LitI2_Byte 0
  loc_AC02AA: LitVar_Missing var_EC
  loc_AC02AD: LitI2_Byte 0
  loc_AC02AF: FLdZeroAd var_CC
  loc_AC02B2: CVarAd
  loc_AC02B6: PopAdLdVar
  loc_AC02B7: FLdPr Me
  loc_AC02BA: MemLdStr global_96
  loc_AC02BD: FLdPr Me
  loc_AC02C0: MemLdStr global_80
  loc_AC02C3: AryLock
  loc_AC02C6: Ary1LdPr
  loc_AC02C7: MemLdRfVar from_stack_1.global_0
  loc_AC02CA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AC02CF: AryUnlock
  loc_AC02D2: FFreeAd var_A8 = ""
  loc_AC02D9: FFreeVar var_DC = ""
  loc_AC02E0: FLdRfVar var_CC
  loc_AC02E3: LitVarStr var_94, "FeliNope"
  loc_AC02E8: PopAdLdVar
  loc_AC02E9: FLdRfVar var_B4
  loc_AC02EC: FLdRfVar var_A8
  loc_AC02EF: FLdPr var_AC
  loc_AC02F2: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AC02F7: FLdPr var_A8
  loc_AC02FA:  = Me.Fields
  loc_AC02FF: FLdPr var_B4
  loc_AC0302: from_stack_2 = Me.Item(from_stack_1)
  loc_AC0307: LitI2_Byte 0
  loc_AC0309: LitVar_Missing var_EC
  loc_AC030C: LitI2_Byte 0
  loc_AC030E: FLdZeroAd var_CC
  loc_AC0311: CVarAd
  loc_AC0315: PopAdLdVar
  loc_AC0316: FLdPr Me
  loc_AC0319: MemLdStr global_96
  loc_AC031C: FLdPr Me
  loc_AC031F: MemLdStr global_80
  loc_AC0322: AryLock
  loc_AC0325: Ary1LdPr
  loc_AC0326: MemLdRfVar from_stack_1.global_4
  loc_AC0329: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AC032E: AryUnlock
  loc_AC0331: FFreeAd var_A8 = ""
  loc_AC0338: FFreeVar var_DC = ""
  loc_AC033F: FLdRfVar var_CC
  loc_AC0342: LitVarStr var_94, "FechNope"
  loc_AC0347: PopAdLdVar
  loc_AC0348: FLdRfVar var_B4
  loc_AC034B: FLdRfVar var_A8
  loc_AC034E: FLdPr var_AC
  loc_AC0351: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AC0356: FLdPr var_A8
  loc_AC0359:  = Me.Fields
  loc_AC035E: FLdPr var_B4
  loc_AC0361: from_stack_2 = Me.Item(from_stack_1)
  loc_AC0366: LitI2_Byte 0
  loc_AC0368: LitVar_Missing var_EC
  loc_AC036B: LitI2_Byte 0
  loc_AC036D: FLdZeroAd var_CC
  loc_AC0370: CVarAd
  loc_AC0374: PopAdLdVar
  loc_AC0375: FLdPr Me
  loc_AC0378: MemLdStr global_96
  loc_AC037B: FLdPr Me
  loc_AC037E: MemLdStr global_80
  loc_AC0381: AryLock
  loc_AC0384: Ary1LdPr
  loc_AC0385: MemLdRfVar from_stack_1.global_8
  loc_AC0388: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AC038D: AryUnlock
  loc_AC0390: FFreeAd var_A8 = ""
  loc_AC0397: FFreeVar var_DC = ""
  loc_AC039E: FLdRfVar var_CC
  loc_AC03A1: LitVarStr var_94, "Dias"
  loc_AC03A6: PopAdLdVar
  loc_AC03A7: FLdRfVar var_B4
  loc_AC03AA: FLdRfVar var_A8
  loc_AC03AD: FLdPr var_AC
  loc_AC03B0: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AC03B5: FLdPr var_A8
  loc_AC03B8:  = Me.Fields
  loc_AC03BD: FLdPr var_B4
  loc_AC03C0: from_stack_2 = Me.Item(from_stack_1)
  loc_AC03C5: LitI2_Byte 0
  loc_AC03C7: LitVar_Missing var_EC
  loc_AC03CA: LitI2_Byte 0
  loc_AC03CC: FLdZeroAd var_CC
  loc_AC03CF: CVarAd
  loc_AC03D3: PopAdLdVar
  loc_AC03D4: FLdPr Me
  loc_AC03D7: MemLdStr global_96
  loc_AC03DA: FLdPr Me
  loc_AC03DD: MemLdStr global_80
  loc_AC03E0: AryLock
  loc_AC03E3: Ary1LdPr
  loc_AC03E4: MemLdRfVar from_stack_1.global_12
  loc_AC03E7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AC03EC: AryUnlock
  loc_AC03EF: FFreeAd var_A8 = ""
  loc_AC03F6: FFreeVar var_DC = ""
  loc_AC03FD: FLdRfVar var_DC
  loc_AC0400: FLdRfVar var_CC
  loc_AC0403: LitVarStr var_94, "Dias"
  loc_AC0408: PopAdLdVar
  loc_AC0409: FLdRfVar var_B4
  loc_AC040C: FLdRfVar var_A8
  loc_AC040F: FLdPr var_AC
  loc_AC0412: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AC0417: FLdPr var_A8
  loc_AC041A:  = Me.Fields
  loc_AC041F: FLdPr var_B4
  loc_AC0422: from_stack_2 = Me.Item(from_stack_1)
  loc_AC0427: FLdPr var_CC
  loc_AC042A:  = Me.Value
  loc_AC042F: FLdRfVar var_DC
  loc_AC0432: FLdPr Me
  loc_AC0435: MemLdI2 global_100
  loc_AC0438: CVarI2 var_A4
  loc_AC043B: HardType
  loc_AC043C: GtVar var_EC
  loc_AC0440: NotVar var_FC
  loc_AC0444: CBoolVar
  loc_AC0446: FLdPr Me
  loc_AC0449: MemLdStr global_96
  loc_AC044C: FLdPr Me
  loc_AC044F: MemLdStr global_80
  loc_AC0452: Ary1LdPr
  loc_AC0453: MemStI2 global_16
  loc_AC0456: FFreeAd var_A8 = "": var_B4 = ""
  loc_AC045F: FFree1Var var_DC = ""
  loc_AC0462: FLdPr Me
  loc_AC0465: MemLdStr global_96
  loc_AC0468: FLdPr Me
  loc_AC046B: MemLdStr global_80
  loc_AC046E: Ary1LdPr
  loc_AC046F: MemLdI2 global_16
  loc_AC0472: BranchF loc_AC0493
  loc_AC0475: FLdPr Me
  loc_AC0478: MemLdStr global_84
  loc_AC047B: CR8Str
  loc_AC047D: LitI2_Byte 1
  loc_AC047F: CR8I2
  loc_AC0480: AddR8
  loc_AC0481: CStrR8
  loc_AC0483: FStStrNoPop var_BC
  loc_AC0486: FLdPr Me
  loc_AC0489: MemStStrCopy
  loc_AC048D: FFree1Str var_BC
  loc_AC0490: Branch loc_AC04AE
  loc_AC0493: FLdPr Me
  loc_AC0496: MemLdStr global_88
  loc_AC0499: CR8Str
  loc_AC049B: LitI2_Byte 1
  loc_AC049D: CR8I2
  loc_AC049E: AddR8
  loc_AC049F: CStrR8
  loc_AC04A1: FStStrNoPop var_BC
  loc_AC04A4: FLdPr Me
  loc_AC04A7: MemStStrCopy
  loc_AC04AB: FFree1Str var_BC
  loc_AC04AE: LitI2_Byte 1
  loc_AC04B0: PopTmpLdAd2 var_AE
  loc_AC04B3: FLdPr var_AC
  loc_AC04B6: Call clsnotapedido.Move(from_stack_1v)
  loc_AC04BB: FLdPr Me
  loc_AC04BE: MemLdRfVar from_stack_1.global_96
  loc_AC04C1: NextI4 var_160, loc_AC0281
  loc_AC04C6: LitNothing
  loc_AC04C8: FStAd var_AC 
  loc_AC04CC: FLdPrThis
  loc_AC04CD: VCallAd Control_ID_Graf1
  loc_AC04D0: FStAdFunc var_168
  loc_AC04D3: LitVarI2 var_94, 1
  loc_AC04D8: PopAdLdVar
  loc_AC04D9: FLdPr var_168
  loc_AC04DC: LateIdSt
  loc_AC04E1: FLdPr Me
  loc_AC04E4: MemLdRfVar from_stack_1.global_84
  loc_AC04E7: CDargRef
  loc_AC04EB: FLdPr var_168
  loc_AC04EE: LateIdSt
  loc_AC04F3: LitVarI2 var_94, 2
  loc_AC04F8: PopAdLdVar
  loc_AC04F9: FLdPr var_168
  loc_AC04FC: LateIdSt
  loc_AC0501: FLdPr Me
  loc_AC0504: MemLdRfVar from_stack_1.global_88
  loc_AC0507: CDargRef
  loc_AC050B: FLdPr var_168
  loc_AC050E: LateIdSt
  loc_AC0513: FLdPr var_168
  loc_AC0516: LateIdCall
  loc_AC051E: LitNothing
  loc_AC0520: FStAd var_168 
  loc_AC0524: FLdPrThis
  loc_AC0525: VCallAd Control_ID_Graf1
  loc_AC0528: FStAdFunc var_CC
  loc_AC052B: FLdPr Me
  loc_AC052E: VCallAd Control_ID_img1
  loc_AC0531: FStAdFunc var_110
  loc_AC0534: LitStr "graf1.bmp"
  loc_AC0537: FLdZeroAd var_110
  loc_AC053A: FStAdFunc var_B4
  loc_AC053D: FLdRfVar var_B4
  loc_AC0540: FLdZeroAd var_CC
  loc_AC0543: FStAdFunc var_A8
  loc_AC0546: FLdRfVar var_A8
  loc_AC0549: ImpAdCallFPR4 Proc_261_53_9C4984(, , )
  loc_AC054E: FFreeAd var_A8 = "": var_B4 = "": var_CC = ""
  loc_AC0559: LitI2_Byte &HFF
  loc_AC055B: FLdPr Me
  loc_AC055E: MemStI2 bGenerado
  loc_AC0561: LitI4 0
  loc_AC0566: CI2I4
  loc_AC0567: FLdPr Me
  loc_AC056A: Me.MousePointer = from_stack_1
  loc_AC056F: LitVarStr var_94, vbNullString
  loc_AC0574: PopAdLdVar
  loc_AC0575: FLdPr Me
  loc_AC0578: VCallAd Control_ID_statusBar
  loc_AC057B: FStAdFunc var_A8
  loc_AC057E: FLdPr var_A8
  loc_AC0581: LateIdSt
  loc_AC0586: FFree1Ad var_A8
  loc_AC0589: ExitProcHresult
  loc_AC058A: LeI4
End Sub

Public Sub GeneraHTML() 'A93FF8
  'Data Table: 472B14
  loc_A93B6C: FLdRfVar var_88
  loc_A93B6F: LitI2_Byte 0
  loc_A93B71: LitI2_Byte &HFF
  loc_A93B73: ImpAdLdI4 MemVar_C3D83C
  loc_A93B76: FLdPr Me
  loc_A93B79: MemLdRfVar from_stack_1.global_60
  loc_A93B7C: NewIfNullPr IFileSystem3
  loc_A93B7F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A93B84: ILdRf var_88
  loc_A93B87: FLdPr Me
  loc_A93B8A: MemStVarAd
  loc_A93B8E: FFree1Ad var_88
  loc_A93B91: Call Proc_216_19_AD3524()
  loc_A93B96: LitI4 1
  loc_A93B9B: FLdPr Me
  loc_A93B9E: MemLdRfVar from_stack_1.global_96
  loc_A93BA1: FLdPr Me
  loc_A93BA4: MemLdStr global_80
  loc_A93BA7: LitI2_Byte 1
  loc_A93BA9: FnUBound
  loc_A93BAB: ForI4 var_90
  loc_A93BB1: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A93BB6: PopAdLdVar
  loc_A93BB7: FLdPr Me
  loc_A93BBA: MemLdRfVar from_stack_1.global_64
  loc_A93BBD: LdPrVar
  loc_A93BBF: LateMemCall
  loc_A93BC5: FLdPr Me
  loc_A93BC8: MemLdStr global_96
  loc_A93BCB: FLdPr Me
  loc_A93BCE: MemLdStr global_80
  loc_A93BD1: AryLock
  loc_A93BD4: Ary1LdRf
  loc_A93BD5: FStR4 var_B8
  loc_A93BD8: LitI4 0
  loc_A93BDD: LitI4 0
  loc_A93BE2: LitI2_Byte 0
  loc_A93BE4: LitStr "right"
  loc_A93BE7: FMemLdR4 var_B8(0)
  loc_A93BEC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A93BF1: CVarStr var_C8
  loc_A93BF4: PopAdLdVar
  loc_A93BF5: FLdPr Me
  loc_A93BF8: MemLdRfVar from_stack_1.global_64
  loc_A93BFB: LdPrVar
  loc_A93BFD: LateMemCall
  loc_A93C03: FFree1Var var_C8 = ""
  loc_A93C06: LitI4 0
  loc_A93C0B: LitI4 0
  loc_A93C10: LitI2_Byte 0
  loc_A93C12: LitStr "center"
  loc_A93C15: FMemLdR4 var_B8(4)
  loc_A93C1A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A93C1F: CVarStr var_C8
  loc_A93C22: PopAdLdVar
  loc_A93C23: FLdPr Me
  loc_A93C26: MemLdRfVar from_stack_1.global_64
  loc_A93C29: LdPrVar
  loc_A93C2B: LateMemCall
  loc_A93C31: FFree1Var var_C8 = ""
  loc_A93C34: LitI4 0
  loc_A93C39: LitI4 0
  loc_A93C3E: LitI2_Byte 0
  loc_A93C40: LitStr "center"
  loc_A93C43: FMemLdR4 var_B8(8)
  loc_A93C48: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A93C4D: CVarStr var_C8
  loc_A93C50: PopAdLdVar
  loc_A93C51: FLdPr Me
  loc_A93C54: MemLdRfVar from_stack_1.global_64
  loc_A93C57: LdPrVar
  loc_A93C59: LateMemCall
  loc_A93C5F: FFree1Var var_C8 = ""
  loc_A93C62: LitI4 0
  loc_A93C67: LitI4 0
  loc_A93C6C: LitI2_Byte 0
  loc_A93C6E: LitStr "right"
  loc_A93C71: FMemLdR4 var_B8(12)
  loc_A93C76: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A93C7B: CVarStr var_C8
  loc_A93C7E: PopAdLdVar
  loc_A93C7F: FLdPr Me
  loc_A93C82: MemLdRfVar from_stack_1.global_64
  loc_A93C85: LdPrVar
  loc_A93C87: LateMemCall
  loc_A93C8D: FFree1Var var_C8 = ""
  loc_A93C90: LitVarStr var_108, "    <td class=""Tilde"" align=""center"">"
  loc_A93C95: LitVarStr var_D8, "<span style=""color:#FF0000"">&yacute;</span>"
  loc_A93C9A: FStVarCopyObj var_E8
  loc_A93C9D: FLdRfVar var_E8
  loc_A93CA0: LitVarStr var_B0, "&thorn;"
  loc_A93CA5: FStVarCopyObj var_C8
  loc_A93CA8: FLdRfVar var_C8
  loc_A93CAB: FMemLdRf 0
  loc_A93CB0: CVarRef
  loc_A93CB5: FLdRfVar var_F8
  loc_A93CB8: ImpAdCallFPR4  = IIf(, , )
  loc_A93CBD: FLdRfVar var_F8
  loc_A93CC0: ConcatVar var_118
  loc_A93CC4: LitVarStr var_128, "</td>"
  loc_A93CC9: ConcatVar var_138
  loc_A93CCD: PopAdLdVar
  loc_A93CCE: FLdPr Me
  loc_A93CD1: MemLdRfVar from_stack_1.global_64
  loc_A93CD4: LdPrVar
  loc_A93CD6: LateMemCall
  loc_A93CDC: FFreeVar var_C8 = "": var_E8 = "": var_F8 = "": var_118 = ""
  loc_A93CE9: LitI4 0
  loc_A93CEE: FStR4 var_B8
  loc_A93CF1: AryUnlock
  loc_A93CF4: LitVarStr var_A0, "     </tr>"
  loc_A93CF9: PopAdLdVar
  loc_A93CFA: FLdPr Me
  loc_A93CFD: MemLdRfVar from_stack_1.global_64
  loc_A93D00: LdPrVar
  loc_A93D02: LateMemCall
  loc_A93D08: FLdPr Me
  loc_A93D0B: MemLdRfVar from_stack_1.global_96
  loc_A93D0E: NextI4 var_90, loc_A93BB1
  loc_A93D13: LitVarStr var_A0, "</table>"
  loc_A93D18: PopAdLdVar
  loc_A93D19: FLdPr Me
  loc_A93D1C: MemLdRfVar from_stack_1.global_64
  loc_A93D1F: LdPrVar
  loc_A93D21: LateMemCall
  loc_A93D27: LitVarStr var_A0, "<table align=""center"" border=""0"" class=""Normal"" cellpadding=""1"" cellspacing=""1"">"
  loc_A93D2C: PopAdLdVar
  loc_A93D2D: FLdPr Me
  loc_A93D30: MemLdRfVar from_stack_1.global_64
  loc_A93D33: LdPrVar
  loc_A93D35: LateMemCall
  loc_A93D3B: LitVarStr var_A0, " <tr valign=""middle"" align=""right"">"
  loc_A93D40: PopAdLdVar
  loc_A93D41: FLdPr Me
  loc_A93D44: MemLdRfVar from_stack_1.global_64
  loc_A93D47: LdPrVar
  loc_A93D49: LateMemCall
  loc_A93D4F: LitVarStr var_A0, "   <td><table align=""left"" border""0"" cellpadding=""1"" cellspacing=""1"">"
  loc_A93D54: PopAdLdVar
  loc_A93D55: FLdPr Me
  loc_A93D58: MemLdRfVar from_stack_1.global_64
  loc_A93D5B: LdPrVar
  loc_A93D5D: LateMemCall
  loc_A93D63: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_A93D68: PopAdLdVar
  loc_A93D69: FLdPr Me
  loc_A93D6C: MemLdRfVar from_stack_1.global_64
  loc_A93D6F: LdPrVar
  loc_A93D71: LateMemCall
  loc_A93D77: LitVarStr var_A0, "      <td>Total antes del plazo:&nbsp;</td>"
  loc_A93D7C: PopAdLdVar
  loc_A93D7D: FLdPr Me
  loc_A93D80: MemLdRfVar from_stack_1.global_64
  loc_A93D83: LdPrVar
  loc_A93D85: LateMemCall
  loc_A93D8B: LitStr "      <td>"
  loc_A93D8E: FLdPr Me
  loc_A93D91: MemLdStr global_84
  loc_A93D94: ConcatStr
  loc_A93D95: FStStrNoPop var_14C
  loc_A93D98: LitStr "</td>"
  loc_A93D9B: ConcatStr
  loc_A93D9C: CVarStr var_C8
  loc_A93D9F: PopAdLdVar
  loc_A93DA0: FLdPr Me
  loc_A93DA3: MemLdRfVar from_stack_1.global_64
  loc_A93DA6: LdPrVar
  loc_A93DA8: LateMemCall
  loc_A93DAE: FFree1Str var_14C
  loc_A93DB1: FFree1Var var_C8 = ""
  loc_A93DB4: LitStr "      <td>"
  loc_A93DB7: LitI4 1
  loc_A93DBC: LitI4 1
  loc_A93DC1: LitVarStr var_B0, "(##0" & Chr(37) & ")"
  loc_A93DC6: FStVarCopyObj var_E8
  loc_A93DC9: FLdRfVar var_E8
  loc_A93DCC: FLdPr Me
  loc_A93DCF: MemLdStr global_84
  loc_A93DD2: CI4Str
  loc_A93DD3: CR8I4
  loc_A93DD4: FLdPr Me
  loc_A93DD7: MemLdStr global_92
  loc_A93DDA: CI4Str
  loc_A93DDB: CR8I4
  loc_A93DDC: DivR8
  loc_A93DDD: CVarR8
  loc_A93DE1: ImpAdCallI2 Format$(, )
  loc_A93DE6: FStStrNoPop var_14C
  loc_A93DE9: ConcatStr
  loc_A93DEA: FStStrNoPop var_150
  loc_A93DED: LitStr "</td>"
  loc_A93DF0: ConcatStr
  loc_A93DF1: CVarStr var_F8
  loc_A93DF4: PopAdLdVar
  loc_A93DF5: FLdPr Me
  loc_A93DF8: MemLdRfVar from_stack_1.global_64
  loc_A93DFB: LdPrVar
  loc_A93DFD: LateMemCall
  loc_A93E03: FFreeStr var_14C = ""
  loc_A93E0A: FFreeVar var_C8 = "": var_E8 = ""
  loc_A93E13: LitVarStr var_A0, "    </tr>"
  loc_A93E18: PopAdLdVar
  loc_A93E19: FLdPr Me
  loc_A93E1C: MemLdRfVar from_stack_1.global_64
  loc_A93E1F: LdPrVar
  loc_A93E21: LateMemCall
  loc_A93E27: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_A93E2C: PopAdLdVar
  loc_A93E2D: FLdPr Me
  loc_A93E30: MemLdRfVar from_stack_1.global_64
  loc_A93E33: LdPrVar
  loc_A93E35: LateMemCall
  loc_A93E3B: LitVarStr var_A0, "      <td>Total despu&eacute;s del plazo:&nbsp;</td>"
  loc_A93E40: PopAdLdVar
  loc_A93E41: FLdPr Me
  loc_A93E44: MemLdRfVar from_stack_1.global_64
  loc_A93E47: LdPrVar
  loc_A93E49: LateMemCall
  loc_A93E4F: LitStr "      <td>"
  loc_A93E52: FLdPr Me
  loc_A93E55: MemLdStr global_88
  loc_A93E58: ConcatStr
  loc_A93E59: FStStrNoPop var_14C
  loc_A93E5C: LitStr "</td>"
  loc_A93E5F: ConcatStr
  loc_A93E60: CVarStr var_C8
  loc_A93E63: PopAdLdVar
  loc_A93E64: FLdPr Me
  loc_A93E67: MemLdRfVar from_stack_1.global_64
  loc_A93E6A: LdPrVar
  loc_A93E6C: LateMemCall
  loc_A93E72: FFree1Str var_14C
  loc_A93E75: FFree1Var var_C8 = ""
  loc_A93E78: LitStr "      <td>"
  loc_A93E7B: LitI4 1
  loc_A93E80: LitI4 1
  loc_A93E85: LitVarStr var_B0, "(##0" & Chr(37) & ")"
  loc_A93E8A: FStVarCopyObj var_E8
  loc_A93E8D: FLdRfVar var_E8
  loc_A93E90: FLdPr Me
  loc_A93E93: MemLdStr global_88
  loc_A93E96: CI4Str
  loc_A93E97: CR8I4
  loc_A93E98: FLdPr Me
  loc_A93E9B: MemLdStr global_92
  loc_A93E9E: CI4Str
  loc_A93E9F: CR8I4
  loc_A93EA0: DivR8
  loc_A93EA1: CVarR8
  loc_A93EA5: ImpAdCallI2 Format$(, )
  loc_A93EAA: FStStrNoPop var_14C
  loc_A93EAD: ConcatStr
  loc_A93EAE: FStStrNoPop var_150
  loc_A93EB1: LitStr "</td>"
  loc_A93EB4: ConcatStr
  loc_A93EB5: CVarStr var_F8
  loc_A93EB8: PopAdLdVar
  loc_A93EB9: FLdPr Me
  loc_A93EBC: MemLdRfVar from_stack_1.global_64
  loc_A93EBF: LdPrVar
  loc_A93EC1: LateMemCall
  loc_A93EC7: FFreeStr var_14C = ""
  loc_A93ECE: FFreeVar var_C8 = "": var_E8 = ""
  loc_A93ED7: LitVarStr var_A0, "    </tr>"
  loc_A93EDC: PopAdLdVar
  loc_A93EDD: FLdPr Me
  loc_A93EE0: MemLdRfVar from_stack_1.global_64
  loc_A93EE3: LdPrVar
  loc_A93EE5: LateMemCall
  loc_A93EEB: LitVarStr var_A0, "    <tr valign=""top"">"
  loc_A93EF0: PopAdLdVar
  loc_A93EF1: FLdPr Me
  loc_A93EF4: MemLdRfVar from_stack_1.global_64
  loc_A93EF7: LdPrVar
  loc_A93EF9: LateMemCall
  loc_A93EFF: LitVarStr var_A0, "      <td colspan=""2""><hr></td>"
  loc_A93F04: PopAdLdVar
  loc_A93F05: FLdPr Me
  loc_A93F08: MemLdRfVar from_stack_1.global_64
  loc_A93F0B: LdPrVar
  loc_A93F0D: LateMemCall
  loc_A93F13: LitVarStr var_A0, "    </tr>"
  loc_A93F18: PopAdLdVar
  loc_A93F19: FLdPr Me
  loc_A93F1C: MemLdRfVar from_stack_1.global_64
  loc_A93F1F: LdPrVar
  loc_A93F21: LateMemCall
  loc_A93F27: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_A93F2C: PopAdLdVar
  loc_A93F2D: FLdPr Me
  loc_A93F30: MemLdRfVar from_stack_1.global_64
  loc_A93F33: LdPrVar
  loc_A93F35: LateMemCall
  loc_A93F3B: LitVarStr var_A0, "      <td>Total:&nbsp;</td>"
  loc_A93F40: PopAdLdVar
  loc_A93F41: FLdPr Me
  loc_A93F44: MemLdRfVar from_stack_1.global_64
  loc_A93F47: LdPrVar
  loc_A93F49: LateMemCall
  loc_A93F4F: LitStr "      <td>"
  loc_A93F52: FLdPr Me
  loc_A93F55: MemLdStr global_92
  loc_A93F58: ConcatStr
  loc_A93F59: FStStrNoPop var_14C
  loc_A93F5C: LitStr "</td>"
  loc_A93F5F: ConcatStr
  loc_A93F60: CVarStr var_C8
  loc_A93F63: PopAdLdVar
  loc_A93F64: FLdPr Me
  loc_A93F67: MemLdRfVar from_stack_1.global_64
  loc_A93F6A: LdPrVar
  loc_A93F6C: LateMemCall
  loc_A93F72: FFree1Str var_14C
  loc_A93F75: FFree1Var var_C8 = ""
  loc_A93F78: LitVarStr var_A0, "    </tr>"
  loc_A93F7D: PopAdLdVar
  loc_A93F7E: FLdPr Me
  loc_A93F81: MemLdRfVar from_stack_1.global_64
  loc_A93F84: LdPrVar
  loc_A93F86: LateMemCall
  loc_A93F8C: LitVarStr var_A0, "   </table></td>"
  loc_A93F91: PopAdLdVar
  loc_A93F92: FLdPr Me
  loc_A93F95: MemLdRfVar from_stack_1.global_64
  loc_A93F98: LdPrVar
  loc_A93F9A: LateMemCall
  loc_A93FA0: LitVarStr var_A0, "   <td><img src=""graf1.bmp""></td>"
  loc_A93FA5: PopAdLdVar
  loc_A93FA6: FLdPr Me
  loc_A93FA9: MemLdRfVar from_stack_1.global_64
  loc_A93FAC: LdPrVar
  loc_A93FAE: LateMemCall
  loc_A93FB4: LitVarStr var_A0, " </tr>"
  loc_A93FB9: PopAdLdVar
  loc_A93FBA: FLdPr Me
  loc_A93FBD: MemLdRfVar from_stack_1.global_64
  loc_A93FC0: LdPrVar
  loc_A93FC2: LateMemCall
  loc_A93FC8: LitVarStr var_A0, "</table>"
  loc_A93FCD: PopAdLdVar
  loc_A93FCE: FLdPr Me
  loc_A93FD1: MemLdRfVar from_stack_1.global_64
  loc_A93FD4: LdPrVar
  loc_A93FD6: LateMemCall
  loc_A93FDC: Call Proc_216_20_972978()
  loc_A93FE1: FLdPr Me
  loc_A93FE4: MemLdRfVar from_stack_1.global_64
  loc_A93FE7: LdPrVar
  loc_A93FE9: LateMemCall
  loc_A93FEF: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A93FF4: ExitProcHresult
End Sub

Private Function Proc_216_19_AD3524() 'AD3524
  'Data Table: 472B14
  loc_AD2EBC: LitVarStr var_94, "<html>"
  loc_AD2EC1: PopAdLdVar
  loc_AD2EC2: FLdPr Me
  loc_AD2EC5: MemLdRfVar from_stack_1.global_64
  loc_AD2EC8: LdPrVar
  loc_AD2ECA: LateMemCall
  loc_AD2ED0: LitVarStr var_94, "<head>"
  loc_AD2ED5: PopAdLdVar
  loc_AD2ED6: FLdPr Me
  loc_AD2ED9: MemLdRfVar from_stack_1.global_64
  loc_AD2EDC: LdPrVar
  loc_AD2EDE: LateMemCall
  loc_AD2EE4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AD2EE9: PopAdLdVar
  loc_AD2EEA: FLdPr Me
  loc_AD2EED: MemLdRfVar from_stack_1.global_64
  loc_AD2EF0: LdPrVar
  loc_AD2EF2: LateMemCall
  loc_AD2EF8: LitStr "<title>"
  loc_AD2EFB: FLdRfVar var_A8
  loc_AD2EFE: FLdPr Me
  loc_AD2F01:  = Me.Caption
  loc_AD2F06: ILdRf var_A8
  loc_AD2F09: ConcatStr
  loc_AD2F0A: FStStrNoPop var_AC
  loc_AD2F0D: LitStr "</title>"
  loc_AD2F10: ConcatStr
  loc_AD2F11: CVarStr var_BC
  loc_AD2F14: PopAdLdVar
  loc_AD2F15: FLdPr Me
  loc_AD2F18: MemLdRfVar from_stack_1.global_64
  loc_AD2F1B: LdPrVar
  loc_AD2F1D: LateMemCall
  loc_AD2F23: FFreeStr var_A8 = ""
  loc_AD2F2A: FFree1Var var_BC = ""
  loc_AD2F2D: LitVarStr var_94, "<style type=""text/css"">"
  loc_AD2F32: PopAdLdVar
  loc_AD2F33: FLdPr Me
  loc_AD2F36: MemLdRfVar from_stack_1.global_64
  loc_AD2F39: LdPrVar
  loc_AD2F3B: LateMemCall
  loc_AD2F41: LitVarStr var_94, ".Titulo1 {"
  loc_AD2F46: PopAdLdVar
  loc_AD2F47: FLdPr Me
  loc_AD2F4A: MemLdRfVar from_stack_1.global_64
  loc_AD2F4D: LdPrVar
  loc_AD2F4F: LateMemCall
  loc_AD2F55: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD2F5A: PopAdLdVar
  loc_AD2F5B: FLdPr Me
  loc_AD2F5E: MemLdRfVar from_stack_1.global_64
  loc_AD2F61: LdPrVar
  loc_AD2F63: LateMemCall
  loc_AD2F69: LitVarStr var_94, " font-size: 18px;"
  loc_AD2F6E: PopAdLdVar
  loc_AD2F6F: FLdPr Me
  loc_AD2F72: MemLdRfVar from_stack_1.global_64
  loc_AD2F75: LdPrVar
  loc_AD2F77: LateMemCall
  loc_AD2F7D: LitVarStr var_94, " font-weight: bold;"
  loc_AD2F82: PopAdLdVar
  loc_AD2F83: FLdPr Me
  loc_AD2F86: MemLdRfVar from_stack_1.global_64
  loc_AD2F89: LdPrVar
  loc_AD2F8B: LateMemCall
  loc_AD2F91: LitVarStr var_94, "}"
  loc_AD2F96: PopAdLdVar
  loc_AD2F97: FLdPr Me
  loc_AD2F9A: MemLdRfVar from_stack_1.global_64
  loc_AD2F9D: LdPrVar
  loc_AD2F9F: LateMemCall
  loc_AD2FA5: LitVarStr var_94, ".Titulo2 {"
  loc_AD2FAA: PopAdLdVar
  loc_AD2FAB: FLdPr Me
  loc_AD2FAE: MemLdRfVar from_stack_1.global_64
  loc_AD2FB1: LdPrVar
  loc_AD2FB3: LateMemCall
  loc_AD2FB9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD2FBE: PopAdLdVar
  loc_AD2FBF: FLdPr Me
  loc_AD2FC2: MemLdRfVar from_stack_1.global_64
  loc_AD2FC5: LdPrVar
  loc_AD2FC7: LateMemCall
  loc_AD2FCD: LitVarStr var_94, " font-size: 14px;"
  loc_AD2FD2: PopAdLdVar
  loc_AD2FD3: FLdPr Me
  loc_AD2FD6: MemLdRfVar from_stack_1.global_64
  loc_AD2FD9: LdPrVar
  loc_AD2FDB: LateMemCall
  loc_AD2FE1: LitVarStr var_94, " font-weight: bold;"
  loc_AD2FE6: PopAdLdVar
  loc_AD2FE7: FLdPr Me
  loc_AD2FEA: MemLdRfVar from_stack_1.global_64
  loc_AD2FED: LdPrVar
  loc_AD2FEF: LateMemCall
  loc_AD2FF5: LitVarStr var_94, "}"
  loc_AD2FFA: PopAdLdVar
  loc_AD2FFB: FLdPr Me
  loc_AD2FFE: MemLdRfVar from_stack_1.global_64
  loc_AD3001: LdPrVar
  loc_AD3003: LateMemCall
  loc_AD3009: LitVarStr var_94, ".Normal {"
  loc_AD300E: PopAdLdVar
  loc_AD300F: FLdPr Me
  loc_AD3012: MemLdRfVar from_stack_1.global_64
  loc_AD3015: LdPrVar
  loc_AD3017: LateMemCall
  loc_AD301D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD3022: PopAdLdVar
  loc_AD3023: FLdPr Me
  loc_AD3026: MemLdRfVar from_stack_1.global_64
  loc_AD3029: LdPrVar
  loc_AD302B: LateMemCall
  loc_AD3031: LitVarStr var_94, " font-size: 14px;"
  loc_AD3036: PopAdLdVar
  loc_AD3037: FLdPr Me
  loc_AD303A: MemLdRfVar from_stack_1.global_64
  loc_AD303D: LdPrVar
  loc_AD303F: LateMemCall
  loc_AD3045: LitVarStr var_94, " font-style: normal;"
  loc_AD304A: PopAdLdVar
  loc_AD304B: FLdPr Me
  loc_AD304E: MemLdRfVar from_stack_1.global_64
  loc_AD3051: LdPrVar
  loc_AD3053: LateMemCall
  loc_AD3059: LitVarStr var_94, " font-weight: normal;"
  loc_AD305E: PopAdLdVar
  loc_AD305F: FLdPr Me
  loc_AD3062: MemLdRfVar from_stack_1.global_64
  loc_AD3065: LdPrVar
  loc_AD3067: LateMemCall
  loc_AD306D: LitVarStr var_94, " font-variant: normal;"
  loc_AD3072: PopAdLdVar
  loc_AD3073: FLdPr Me
  loc_AD3076: MemLdRfVar from_stack_1.global_64
  loc_AD3079: LdPrVar
  loc_AD307B: LateMemCall
  loc_AD3081: LitVarStr var_94, "}"
  loc_AD3086: PopAdLdVar
  loc_AD3087: FLdPr Me
  loc_AD308A: MemLdRfVar from_stack_1.global_64
  loc_AD308D: LdPrVar
  loc_AD308F: LateMemCall
  loc_AD3095: LitVarStr var_94, ".Encabezado {"
  loc_AD309A: PopAdLdVar
  loc_AD309B: FLdPr Me
  loc_AD309E: MemLdRfVar from_stack_1.global_64
  loc_AD30A1: LdPrVar
  loc_AD30A3: LateMemCall
  loc_AD30A9: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AD30AE: PopAdLdVar
  loc_AD30AF: FLdPr Me
  loc_AD30B2: MemLdRfVar from_stack_1.global_64
  loc_AD30B5: LdPrVar
  loc_AD30B7: LateMemCall
  loc_AD30BD: LitVarStr var_94, " font-size: 13px;"
  loc_AD30C2: PopAdLdVar
  loc_AD30C3: FLdPr Me
  loc_AD30C6: MemLdRfVar from_stack_1.global_64
  loc_AD30C9: LdPrVar
  loc_AD30CB: LateMemCall
  loc_AD30D1: LitVarStr var_94, " font-weight: bold;"
  loc_AD30D6: PopAdLdVar
  loc_AD30D7: FLdPr Me
  loc_AD30DA: MemLdRfVar from_stack_1.global_64
  loc_AD30DD: LdPrVar
  loc_AD30DF: LateMemCall
  loc_AD30E5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AD30EA: PopAdLdVar
  loc_AD30EB: FLdPr Me
  loc_AD30EE: MemLdRfVar from_stack_1.global_64
  loc_AD30F1: LdPrVar
  loc_AD30F3: LateMemCall
  loc_AD30F9: LitVarStr var_94, "}"
  loc_AD30FE: PopAdLdVar
  loc_AD30FF: FLdPr Me
  loc_AD3102: MemLdRfVar from_stack_1.global_64
  loc_AD3105: LdPrVar
  loc_AD3107: LateMemCall
  loc_AD310D: LitVarStr var_94, ".LineaDato {"
  loc_AD3112: PopAdLdVar
  loc_AD3113: FLdPr Me
  loc_AD3116: MemLdRfVar from_stack_1.global_64
  loc_AD3119: LdPrVar
  loc_AD311B: LateMemCall
  loc_AD3121: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD3126: PopAdLdVar
  loc_AD3127: FLdPr Me
  loc_AD312A: MemLdRfVar from_stack_1.global_64
  loc_AD312D: LdPrVar
  loc_AD312F: LateMemCall
  loc_AD3135: LitVarStr var_94, " font-size: 10px;"
  loc_AD313A: PopAdLdVar
  loc_AD313B: FLdPr Me
  loc_AD313E: MemLdRfVar from_stack_1.global_64
  loc_AD3141: LdPrVar
  loc_AD3143: LateMemCall
  loc_AD3149: LitVarStr var_94, "}"
  loc_AD314E: PopAdLdVar
  loc_AD314F: FLdPr Me
  loc_AD3152: MemLdRfVar from_stack_1.global_64
  loc_AD3155: LdPrVar
  loc_AD3157: LateMemCall
  loc_AD315D: LitVarStr var_94, ".Totales {"
  loc_AD3162: PopAdLdVar
  loc_AD3163: FLdPr Me
  loc_AD3166: MemLdRfVar from_stack_1.global_64
  loc_AD3169: LdPrVar
  loc_AD316B: LateMemCall
  loc_AD3171: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD3176: PopAdLdVar
  loc_AD3177: FLdPr Me
  loc_AD317A: MemLdRfVar from_stack_1.global_64
  loc_AD317D: LdPrVar
  loc_AD317F: LateMemCall
  loc_AD3185: LitVarStr var_94, " font-size: 12px;"
  loc_AD318A: PopAdLdVar
  loc_AD318B: FLdPr Me
  loc_AD318E: MemLdRfVar from_stack_1.global_64
  loc_AD3191: LdPrVar
  loc_AD3193: LateMemCall
  loc_AD3199: LitVarStr var_94, " font-weight: bold;"
  loc_AD319E: PopAdLdVar
  loc_AD319F: FLdPr Me
  loc_AD31A2: MemLdRfVar from_stack_1.global_64
  loc_AD31A5: LdPrVar
  loc_AD31A7: LateMemCall
  loc_AD31AD: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AD31B2: PopAdLdVar
  loc_AD31B3: FLdPr Me
  loc_AD31B6: MemLdRfVar from_stack_1.global_64
  loc_AD31B9: LdPrVar
  loc_AD31BB: LateMemCall
  loc_AD31C1: LitVarStr var_94, "}"
  loc_AD31C6: PopAdLdVar
  loc_AD31C7: FLdPr Me
  loc_AD31CA: MemLdRfVar from_stack_1.global_64
  loc_AD31CD: LdPrVar
  loc_AD31CF: LateMemCall
  loc_AD31D5: LitVarStr var_94, ".Tilde {"
  loc_AD31DA: PopAdLdVar
  loc_AD31DB: FLdPr Me
  loc_AD31DE: MemLdRfVar from_stack_1.global_64
  loc_AD31E1: LdPrVar
  loc_AD31E3: LateMemCall
  loc_AD31E9: LitVarStr var_94, " font-family: Wingdings;"
  loc_AD31EE: PopAdLdVar
  loc_AD31EF: FLdPr Me
  loc_AD31F2: MemLdRfVar from_stack_1.global_64
  loc_AD31F5: LdPrVar
  loc_AD31F7: LateMemCall
  loc_AD31FD: LitVarStr var_94, " font-size: 16px;"
  loc_AD3202: PopAdLdVar
  loc_AD3203: FLdPr Me
  loc_AD3206: MemLdRfVar from_stack_1.global_64
  loc_AD3209: LdPrVar
  loc_AD320B: LateMemCall
  loc_AD3211: LitVarStr var_94, "}"
  loc_AD3216: PopAdLdVar
  loc_AD3217: FLdPr Me
  loc_AD321A: MemLdRfVar from_stack_1.global_64
  loc_AD321D: LdPrVar
  loc_AD321F: LateMemCall
  loc_AD3225: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AD322A: PopAdLdVar
  loc_AD322B: FLdPr Me
  loc_AD322E: MemLdRfVar from_stack_1.global_64
  loc_AD3231: LdPrVar
  loc_AD3233: LateMemCall
  loc_AD3239: LitVarStr var_94, "</style>"
  loc_AD323E: PopAdLdVar
  loc_AD323F: FLdPr Me
  loc_AD3242: MemLdRfVar from_stack_1.global_64
  loc_AD3245: LdPrVar
  loc_AD3247: LateMemCall
  loc_AD324D: LitI4 0
  loc_AD3252: FStStrCopy var_AC
  loc_AD3255: FLdRfVar var_AC
  loc_AD3258: LitI4 0
  loc_AD325D: FStStrCopy var_A8
  loc_AD3260: FLdRfVar var_A8
  loc_AD3263: LitI2_Byte 0
  loc_AD3265: PopTmpLdAd2 var_BE
  loc_AD3268: FLdPr Me
  loc_AD326B: MemLdRfVar from_stack_1.global_64
  loc_AD326E: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AD3273: FFreeStr var_A8 = ""
  loc_AD327A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AD327F: PopAdLdVar
  loc_AD3280: FLdPr Me
  loc_AD3283: MemLdRfVar from_stack_1.global_64
  loc_AD3286: LdPrVar
  loc_AD3288: LateMemCall
  loc_AD328E: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AD3293: PopAdLdVar
  loc_AD3294: FLdPr Me
  loc_AD3297: MemLdRfVar from_stack_1.global_64
  loc_AD329A: LdPrVar
  loc_AD329C: LateMemCall
  loc_AD32A2: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AD32A7: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AD32AC: FStVarCopyObj var_BC
  loc_AD32AF: FLdRfVar var_BC
  loc_AD32B2: FLdRfVar var_D0
  loc_AD32B5: ImpAdCallFPR4  = Ucase()
  loc_AD32BA: FLdRfVar var_D0
  loc_AD32BD: ConcatVar var_E0
  loc_AD32C1: LitVarStr var_F0, "</p>"
  loc_AD32C6: ConcatVar var_100
  loc_AD32CA: PopAdLdVar
  loc_AD32CB: FLdPr Me
  loc_AD32CE: MemLdRfVar from_stack_1.global_64
  loc_AD32D1: LdPrVar
  loc_AD32D3: LateMemCall
  loc_AD32D9: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AD32E4: LitStr "    <p align=""center"">"
  loc_AD32E7: FLdRfVar var_A8
  loc_AD32EA: FLdPr Me
  loc_AD32ED:  = Me.Caption
  loc_AD32F2: ILdRf var_A8
  loc_AD32F5: ConcatStr
  loc_AD32F6: FStStrNoPop var_AC
  loc_AD32F9: LitStr "</p></th></tr>"
  loc_AD32FC: ConcatStr
  loc_AD32FD: CVarStr var_BC
  loc_AD3300: PopAdLdVar
  loc_AD3301: FLdPr Me
  loc_AD3304: MemLdRfVar from_stack_1.global_64
  loc_AD3307: LdPrVar
  loc_AD3309: LateMemCall
  loc_AD330F: FFreeStr var_A8 = ""
  loc_AD3316: FFree1Var var_BC = ""
  loc_AD3319: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AD331E: PopAdLdVar
  loc_AD331F: FLdPr Me
  loc_AD3322: MemLdRfVar from_stack_1.global_64
  loc_AD3325: LdPrVar
  loc_AD3327: LateMemCall
  loc_AD332D: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_AD3332: PopAdLdVar
  loc_AD3333: FLdPr Me
  loc_AD3336: MemLdRfVar from_stack_1.global_64
  loc_AD3339: LdPrVar
  loc_AD333B: LateMemCall
  loc_AD3341: LitStr "         "
  loc_AD3344: FLdRfVar var_A8
  loc_AD3347: FLdPr Me
  loc_AD334A: VCallAd Control_ID_CodiTicoCbo
  loc_AD334D: FStAdFunc var_114
  loc_AD3350: FLdPr var_114
  loc_AD3353:  = Me.Text
  loc_AD3358: ILdRf var_A8
  loc_AD335B: ConcatStr
  loc_AD335C: FStStrNoPop var_AC
  loc_AD335F: LitStr " (Plazo: "
  loc_AD3362: ConcatStr
  loc_AD3363: FStStrNoPop var_118
  loc_AD3366: FLdPr Me
  loc_AD3369: MemLdI2 global_100
  loc_AD336C: CStrUI1
  loc_AD336E: FStStrNoPop var_11C
  loc_AD3371: ConcatStr
  loc_AD3372: FStStrNoPop var_120
  loc_AD3375: LitStr " días)<br>"
  loc_AD3378: ConcatStr
  loc_AD3379: CVarStr var_BC
  loc_AD337C: PopAdLdVar
  loc_AD337D: FLdPr Me
  loc_AD3380: MemLdRfVar from_stack_1.global_64
  loc_AD3383: LdPrVar
  loc_AD3385: LateMemCall
  loc_AD338B: FFreeStr var_A8 = "": var_AC = "": var_118 = "": var_11C = ""
  loc_AD3398: FFree1Ad var_114
  loc_AD339B: FFree1Var var_BC = ""
  loc_AD339E: LitStr "         Desde: "
  loc_AD33A1: FLdPr Me
  loc_AD33A4: VCallAd Control_ID_mskDesde
  loc_AD33A7: FStAdFunc var_114
  loc_AD33AA: FLdPr var_114
  loc_AD33AD: LateIdLdVar var_BC DispID_15 0
  loc_AD33B4: CStrVarTmp
  loc_AD33B5: FStStrNoPop var_A8
  loc_AD33B8: ConcatStr
  loc_AD33B9: FStStrNoPop var_AC
  loc_AD33BC: LitStr "<br>"
  loc_AD33BF: ConcatStr
  loc_AD33C0: CVarStr var_D0
  loc_AD33C3: PopAdLdVar
  loc_AD33C4: FLdPr Me
  loc_AD33C7: MemLdRfVar from_stack_1.global_64
  loc_AD33CA: LdPrVar
  loc_AD33CC: LateMemCall
  loc_AD33D2: FFreeStr var_A8 = ""
  loc_AD33D9: FFree1Ad var_114
  loc_AD33DC: FFreeVar var_BC = ""
  loc_AD33E3: LitStr "         Hasta: "
  loc_AD33E6: FLdPr Me
  loc_AD33E9: VCallAd Control_ID_mskHasta
  loc_AD33EC: FStAdFunc var_114
  loc_AD33EF: FLdPr var_114
  loc_AD33F2: LateIdLdVar var_BC DispID_15 0
  loc_AD33F9: CStrVarTmp
  loc_AD33FA: FStStrNoPop var_A8
  loc_AD33FD: ConcatStr
  loc_AD33FE: CVarStr var_D0
  loc_AD3401: PopAdLdVar
  loc_AD3402: FLdPr Me
  loc_AD3405: MemLdRfVar from_stack_1.global_64
  loc_AD3408: LdPrVar
  loc_AD340A: LateMemCall
  loc_AD3410: FFree1Str var_A8
  loc_AD3413: FFree1Ad var_114
  loc_AD3416: FFreeVar var_BC = ""
  loc_AD341D: LitVarStr var_94, "   </th>"
  loc_AD3422: PopAdLdVar
  loc_AD3423: FLdPr Me
  loc_AD3426: MemLdRfVar from_stack_1.global_64
  loc_AD3429: LdPrVar
  loc_AD342B: LateMemCall
  loc_AD3431: LitVarStr var_94, "  </tr>"
  loc_AD3436: PopAdLdVar
  loc_AD3437: FLdPr Me
  loc_AD343A: MemLdRfVar from_stack_1.global_64
  loc_AD343D: LdPrVar
  loc_AD343F: LateMemCall
  loc_AD3445: LitVarStr var_94, "</table>"
  loc_AD344A: PopAdLdVar
  loc_AD344B: FLdPr Me
  loc_AD344E: MemLdRfVar from_stack_1.global_64
  loc_AD3451: LdPrVar
  loc_AD3453: LateMemCall
  loc_AD3459: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AD345E: PopAdLdVar
  loc_AD345F: FLdPr Me
  loc_AD3462: MemLdRfVar from_stack_1.global_64
  loc_AD3465: LdPrVar
  loc_AD3467: LateMemCall
  loc_AD346D: LitVarStr var_94, "  <THEAD>"
  loc_AD3472: PopAdLdVar
  loc_AD3473: FLdPr Me
  loc_AD3476: MemLdRfVar from_stack_1.global_64
  loc_AD3479: LdPrVar
  loc_AD347B: LateMemCall
  loc_AD3481: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AD3486: PopAdLdVar
  loc_AD3487: FLdPr Me
  loc_AD348A: MemLdRfVar from_stack_1.global_64
  loc_AD348D: LdPrVar
  loc_AD348F: LateMemCall
  loc_AD3495: LitVarStr var_94, "    <th>Nota de Pedido</th>"
  loc_AD349A: PopAdLdVar
  loc_AD349B: FLdPr Me
  loc_AD349E: MemLdRfVar from_stack_1.global_64
  loc_AD34A1: LdPrVar
  loc_AD34A3: LateMemCall
  loc_AD34A9: LitVarStr var_94, "    <th>Fecha de Apertura</th>"
  loc_AD34AE: PopAdLdVar
  loc_AD34AF: FLdPr Me
  loc_AD34B2: MemLdRfVar from_stack_1.global_64
  loc_AD34B5: LdPrVar
  loc_AD34B7: LateMemCall
  loc_AD34BD: LitVarStr var_94, "    <th>Fecha de Nota de Pedido</th>"
  loc_AD34C2: PopAdLdVar
  loc_AD34C3: FLdPr Me
  loc_AD34C6: MemLdRfVar from_stack_1.global_64
  loc_AD34C9: LdPrVar
  loc_AD34CB: LateMemCall
  loc_AD34D1: LitVarStr var_94, "    <th>D&iacute;as</th>"
  loc_AD34D6: PopAdLdVar
  loc_AD34D7: FLdPr Me
  loc_AD34DA: MemLdRfVar from_stack_1.global_64
  loc_AD34DD: LdPrVar
  loc_AD34DF: LateMemCall
  loc_AD34E5: LitVarStr var_94, "    <th>Cumpli&oacute;</th>"
  loc_AD34EA: PopAdLdVar
  loc_AD34EB: FLdPr Me
  loc_AD34EE: MemLdRfVar from_stack_1.global_64
  loc_AD34F1: LdPrVar
  loc_AD34F3: LateMemCall
  loc_AD34F9: LitVarStr var_94, "  </tr>"
  loc_AD34FE: PopAdLdVar
  loc_AD34FF: FLdPr Me
  loc_AD3502: MemLdRfVar from_stack_1.global_64
  loc_AD3505: LdPrVar
  loc_AD3507: LateMemCall
  loc_AD350D: LitVarStr var_94, "  </THEAD>"
  loc_AD3512: PopAdLdVar
  loc_AD3513: FLdPr Me
  loc_AD3516: MemLdRfVar from_stack_1.global_64
  loc_AD3519: LdPrVar
  loc_AD351B: LateMemCall
  loc_AD3521: ExitProcHresult
  loc_AD3522: CR8I4
End Function

Private Function Proc_216_20_972978() '972978
  'Data Table: 472B14
  loc_97294C: LitVarStr var_94, "</body>"
  loc_972951: PopAdLdVar
  loc_972952: FLdPr Me
  loc_972955: MemLdRfVar from_stack_1.global_64
  loc_972958: LdPrVar
  loc_97295A: LateMemCall
  loc_972960: LitVarStr var_94, "</html>"
  loc_972965: PopAdLdVar
  loc_972966: FLdPr Me
  loc_972969: MemLdRfVar from_stack_1.global_64
  loc_97296C: LdPrVar
  loc_97296E: LateMemCall
  loc_972974: ExitProcHresult
  loc_972975: Ary1LdRf
  loc_972976: AddR8
End Function
