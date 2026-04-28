VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptControldeCaja
  Caption = "Control de caja"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControldeCaja.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8070
  ClientHeight = 2880
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2625
    Width = 8070
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptControldeCaja.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6000
    Top = 1680
    Width = 735
    Height = 615
    TabIndex = 15
    Cancel = -1  'True
    Picture = "rptControldeCaja.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptControldeCaja.frx":0B9C
    Left = 6240
    Top = 1800
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1440
    Width = 1815
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1440
    Width = 3015
    Height = 1095
    TabIndex = 10
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7815
    Height = 1335
    TabIndex = 0
    Begin VB.CommandButton cmdDesde
      Left = 2280
      Top = 315
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptControldeCaja.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdHasta
      Left = 4680
      Top = 315
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptControldeCaja.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.OptionButton FeinMobaOpt
      Caption = "Fecha Recaudación"
      Left = 2880
      Top = 900
      Width = 2055
      Height = 255
      TabIndex = 9
    End
    Begin VB.OptionButton FechMobaOpt
      Caption = "Fecha Libro Banco"
      Left = 480
      Top = 840
      Width = 1935
      Height = 375
      TabIndex = 8
      Value = 255
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1080
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptControldeCaja.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 3480
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptControldeCaja.frx":170C
    End
    Begin VB.Label Label1
      Caption = "Hasta:"
      Left = 2880
      Top = 405
      Width = 465
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Desde:"
      Left = 435
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6120
    Top = 2040
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptControldeCaja.frx":1794
  End
End

Attribute VB_Name = "rptControldeCaja"

Public htmFile As Variant
Public bGenerado As Boolean


Private Sub cmdDesde_Click() '980590
  'Data Table: 465370
  loc_98055C: LitVar_Missing var_A4
  loc_98055F: PopAdLdVar
  loc_980560: LitVarI4
  loc_980568: PopAdLdVar
  loc_980569: ImpAdLdRf MemVar_C3D9A8
  loc_98056C: NewIfNullPr frmCalendario
  loc_98056F: frmCalendario.Show from_stack_1, from_stack_2
  loc_980574: ImpAdLdRf MemVar_C3D038
  loc_980577: CDargRef
  loc_98057B: FLdPr Me
  loc_98057E: VCallAd Control_ID_mskDesde
  loc_980581: FStAdFunc var_A8
  loc_980584: FLdPr var_A8
  loc_980587: LateIdSt
  loc_98058C: FFree1Ad var_A8
  loc_98058F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95B180
  'Data Table: 465370
  loc_95B168: LitI2_Byte 0
  loc_95B16A: ILdRf Me
  loc_95B16D: CastAd
  loc_95B170: FStAdFunc var_88
  loc_95B173: FLdRfVar var_88
  loc_95B176: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95B17B: FFree1Ad var_88
  loc_95B17E: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98881C
  'Data Table: 465370
  loc_9887E4: FLdPr Me
  loc_9887E7: VCallAd Control_ID_statusBar
  loc_9887EA: FStAdFunc var_88
  loc_9887ED: FLdPr var_88
  loc_9887F0: LateIdLdVar var_98 DispID_1 0
  loc_9887F7: CStrVarTmp
  loc_9887F8: CVarStr var_A8
  loc_9887FB: PopAdLdVar
  loc_9887FC: FLdPr Me
  loc_9887FF: VCallAd Control_ID_statusBar
  loc_988802: FStAdFunc var_BC
  loc_988805: FLdPr var_BC
  loc_988808: LateIdSt
  loc_98880D: FFreeAd var_88 = ""
  loc_988814: FFreeVar var_98 = ""
  loc_98881B: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '97F620
  'Data Table: 465370
  loc_97F5EC: LitVar_Missing var_A4
  loc_97F5EF: PopAdLdVar
  loc_97F5F0: LitVarI4
  loc_97F5F8: PopAdLdVar
  loc_97F5F9: ImpAdLdRf MemVar_C3D9A8
  loc_97F5FC: NewIfNullPr frmCalendario
  loc_97F5FF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F604: ImpAdLdRf MemVar_C3D038
  loc_97F607: CDargRef
  loc_97F60B: FLdPr Me
  loc_97F60E: VCallAd Control_ID_mskHasta
  loc_97F611: FStAdFunc var_A8
  loc_97F614: FLdPr var_A8
  loc_97F617: LateIdSt
  loc_97F61C: FFree1Ad var_A8
  loc_97F61F: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '977990
  'Data Table: 465370
  loc_977960: LitVarStr var_94, "Cerrando..."
  loc_977965: PopAdLdVar
  loc_977966: FLdPr Me
  loc_977969: VCallAd Control_ID_statusBar
  loc_97796C: FStAdFunc var_A8
  loc_97796F: FLdPr var_A8
  loc_977972: LateIdSt
  loc_977977: FFree1Ad var_A8
  loc_97797A: ILdRf Me
  loc_97797D: FStAdNoPop
  loc_977981: ImpAdLdRf MemVar_C44F9C
  loc_977984: NewIfNullPr Me
  loc_977987: Me.Global.Unload from_stack_1
  loc_97798C: FFree1Ad var_A8
  loc_97798F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C6AB0
  'Data Table: 465370
  loc_9C69F0: LitI2_Byte 0
  loc_9C69F2: FLdPr Me
  loc_9C69F5: MemStI2 bGenerado
  loc_9C69F8: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C69FD: LitVarStr var_C8, "01/"
  loc_9C6A02: LitI2_Byte 0
  loc_9C6A04: PopTmpLdAd2 var_86
  loc_9C6A07: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9C6A0C: CVarDate var_A8
  loc_9C6A10: FLdRfVar var_B8
  loc_9C6A13: ImpAdCallFPR4  = Month()
  loc_9C6A18: FLdRfVar var_B8
  loc_9C6A1B: ConcatVar var_D8
  loc_9C6A1F: LitVarStr var_E8, "/"
  loc_9C6A24: ConcatVar var_F8
  loc_9C6A28: LitI2_Byte 0
  loc_9C6A2A: PopTmpLdAd2 var_FA
  loc_9C6A2D: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9C6A32: CVarDate var_11C
  loc_9C6A36: FLdRfVar var_12C
  loc_9C6A39: ImpAdCallFPR4  = Year()
  loc_9C6A3E: FLdRfVar var_12C
  loc_9C6A41: ConcatVar var_13C
  loc_9C6A45: FnCDateVar
  loc_9C6A47: CStrDate
  loc_9C6A49: CVarStr var_14C
  loc_9C6A4C: PopAdLdVar
  loc_9C6A4D: FLdPr Me
  loc_9C6A50: VCallAd Control_ID_mskDesde
  loc_9C6A53: FStAdFunc var_160
  loc_9C6A56: FLdPr var_160
  loc_9C6A59: LateIdSt
  loc_9C6A5E: FFree1Ad var_160
  loc_9C6A61: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_11C = "": var_F8 = "": var_12C = "": var_13C = "": var_13C = ""
  loc_9C6A76: ImpAdLdFPR8 MemVar_C3D04C
  loc_9C6A79: CStrDate
  loc_9C6A7B: CVarStr var_A8
  loc_9C6A7E: PopAdLdVar
  loc_9C6A7F: FLdPr Me
  loc_9C6A82: VCallAd Control_ID_mskHasta
  loc_9C6A85: FStAdFunc var_160
  loc_9C6A88: FLdPr var_160
  loc_9C6A8B: LateIdSt
  loc_9C6A90: FFree1Ad var_160
  loc_9C6A93: FFree1Var var_A8 = ""
  loc_9C6A96: Call HabilitarCriterio()
  loc_9C6A9B: ILdRf Me
  loc_9C6A9E: CastAd
  loc_9C6AA1: FStAdFunc var_160
  loc_9C6AA4: FLdRfVar var_160
  loc_9C6AA7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C6AAC: FFree1Ad var_160
  loc_9C6AAF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95AFB8
  'Data Table: 465370
  loc_95AFA0: ILdRf Me
  loc_95AFA3: CastAd
  loc_95AFA6: FStAdFunc var_88
  loc_95AFA9: FLdRfVar var_88
  loc_95AFAC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95AFB1: FFree1Ad var_88
  loc_95AFB4: ExitProcHresult
  loc_95AFB5: NeVar var_705
End Sub

Private Sub cmdPredeterminada_Click() '95B0E8
  'Data Table: 465370
  loc_95B0D0: ILdRf Me
  loc_95B0D3: CastAd
  loc_95B0D6: FStAdFunc var_88
  loc_95B0D9: FLdRfVar var_88
  loc_95B0DC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95B0E1: FFree1Ad var_88
  loc_95B0E4: ExitProcHresult
  loc_95B0E5: Branch loc_95B746
End Sub

Private Sub Form_Load() '96CBF8
  'Data Table: 465370
  loc_96CBD8: LitI2_Byte &HFF
  loc_96CBDA: ImpAdStI2 MemVar_C3D840
  loc_96CBDD: ILdRf Me
  loc_96CBE0: CastAd
  loc_96CBE3: FStAdFunc var_88
  loc_96CBE6: FLdRfVar var_88
  loc_96CBE9: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96CBEE: FFree1Ad var_88
  loc_96CBF1: Call cmdNueva_Click()
  loc_96CBF6: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95B3E0
  'Data Table: 465370
  loc_95B3C8: FLdPr Me
  loc_95B3CB: VCallAd Control_ID_wbbReporte
  loc_95B3CE: FStAdFunc var_88
  loc_95B3D1: FLdRfVar var_88
  loc_95B3D4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95B3D9: FFree1Ad var_88
  loc_95B3DC: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '9529C8
  'Data Table: 465370
  loc_9529B4: FLdPr Me
  loc_9529B7: VCallAd Control_ID_mskDesde
  loc_9529BA: CVarAd
  loc_9529BE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9529C3: FFree1Var var_94 = ""
  loc_9529C6: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_8 '9B0C54
  'Data Table: 465370
  loc_9B0BB8: FLdPr Me
  loc_9B0BBB: VCallAd Control_ID_mskDesde
  loc_9B0BBE: FStAdFunc var_88
  loc_9B0BC1: FLdPr var_88
  loc_9B0BC4: LateIdLdVar var_98 DispID_15 0
  loc_9B0BCB: PopAd
  loc_9B0BCD: FLdPr Me
  loc_9B0BD0: VCallAd Control_ID_mskDesde
  loc_9B0BD3: FStAdFunc var_AC
  loc_9B0BD6: LitI2_Byte &HFF
  loc_9B0BD8: PopTmpLdAd2 var_A2
  loc_9B0BDB: FLdZeroAd var_AC
  loc_9B0BDE: FStAdFunc var_A0
  loc_9B0BE1: FLdRfVar var_A0
  loc_9B0BE4: LitStr vbNullString
  loc_9B0BE7: LitI2_Byte 0
  loc_9B0BE9: LitI2_Byte 0
  loc_9B0BEB: FLdRfVar var_98
  loc_9B0BEE: CStrVarTmp
  loc_9B0BEF: FStStrNoPop var_9C
  loc_9B0BF2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0BF7: FStStrNoPop var_A8
  loc_9B0BFA: FLdPr Me
  loc_9B0BFD: MemStStrCopy
  loc_9B0C01: FFreeStr var_9C = ""
  loc_9B0C08: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0C11: FFree1Var var_98 = ""
  loc_9B0C14: FLdPr Me
  loc_9B0C17: VCallAd Control_ID_mskDesde
  loc_9B0C1A: FStAdFunc var_B0
  loc_9B0C1D: LitNothing
  loc_9B0C1F: CastAd
  loc_9B0C22: FStAdFunc var_AC
  loc_9B0C25: FLdRfVar var_AC
  loc_9B0C28: FLdZeroAd var_B0
  loc_9B0C2B: FStAdFuncNoPop
  loc_9B0C2E: CastAd
  loc_9B0C31: FStAdFunc var_A0
  loc_9B0C34: FLdRfVar var_A0
  loc_9B0C37: FLdPr Me
  loc_9B0C3A: MemLdRfVar from_stack_1.global_84
  loc_9B0C3D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0C42: IStI2 Cancel
  loc_9B0C45: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0C50: ExitProcHresult
  loc_9B0C51: FnInStr4
End Sub

Private Sub mskHasta_UnknownEvent_0 'A28FEC
  'Data Table: 465370
  loc_A28E4C: FLdPr Me
  loc_A28E4F: VCallAd Control_ID_mskDesde
  loc_A28E52: FStAdFunc var_88
  loc_A28E55: FLdPr var_88
  loc_A28E58: LateIdLdVar var_98 DispID_15 0
  loc_A28E5F: CStrVarTmp
  loc_A28E60: CVarStr var_A8
  loc_A28E63: ImpAdCallI2 IsDate()
  loc_A28E68: FFree1Ad var_88
  loc_A28E6B: FFreeVar var_98 = ""
  loc_A28E72: BranchF loc_A28FD6
  loc_A28E75: FLdPr Me
  loc_A28E78: VCallAd Control_ID_mskDesde
  loc_A28E7B: FStAdFunc var_88
  loc_A28E7E: FLdPr var_88
  loc_A28E81: LateIdLdVar var_98 DispID_15 0
  loc_A28E88: CStrVarTmp
  loc_A28E89: CVarStr var_A8
  loc_A28E8C: FLdRfVar var_B8
  loc_A28E8F: ImpAdCallFPR4  = Day()
  loc_A28E94: FLdRfVar var_B8
  loc_A28E97: LitVarI2 var_C8, 1
  loc_A28E9C: HardType
  loc_A28E9D: EqVar var_D8
  loc_A28EA1: FLdPr Me
  loc_A28EA4: VCallAd Control_ID_mskDesde
  loc_A28EA7: FStAdFunc var_DC
  loc_A28EAA: FLdPr var_DC
  loc_A28EAD: LateIdLdVar var_EC DispID_15 0
  loc_A28EB4: CStrVarTmp
  loc_A28EB5: CVarStr var_FC
  loc_A28EB8: FLdRfVar var_10C
  loc_A28EBB: ImpAdCallFPR4  = Month()
  loc_A28EC0: FLdRfVar var_10C
  loc_A28EC3: LitI2_Byte 0
  loc_A28EC5: PopTmpLdAd2 var_10E
  loc_A28EC8: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A28ECD: CVarDate var_130
  loc_A28ED1: FLdRfVar var_140
  loc_A28ED4: ImpAdCallFPR4  = Month()
  loc_A28ED9: FLdRfVar var_140
  loc_A28EDC: LtVar var_150
  loc_A28EE0: AndVar var_160
  loc_A28EE4: FLdPr Me
  loc_A28EE7: VCallAd Control_ID_mskHasta
  loc_A28EEA: FStAdFunc var_164
  loc_A28EED: FLdPr var_164
  loc_A28EF0: LateIdLdVar var_174 DispID_15 0
  loc_A28EF7: CStrVarTmp
  loc_A28EF8: FStStrNoPop var_178
  loc_A28EFB: CDateStr
  loc_A28EFD: ImpAdLdFPR8 MemVar_C3D04C
  loc_A28F00: EqR4
  loc_A28F01: CVarBoolI2 var_188
  loc_A28F05: AndVar var_198
  loc_A28F09: CBoolVarNull
  loc_A28F0B: FFree1Str var_178
  loc_A28F0E: FFreeAd var_88 = "": var_DC = ""
  loc_A28F17: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_EC = "": var_FC = "": var_130 = "": var_10C = "": var_140 = "": var_174 = ""
  loc_A28F2E: BranchF loc_A28FD6
  loc_A28F31: LitVarStr var_120, "01/"
  loc_A28F36: FLdPr Me
  loc_A28F39: VCallAd Control_ID_mskDesde
  loc_A28F3C: FStAdFunc var_88
  loc_A28F3F: FLdPr var_88
  loc_A28F42: LateIdLdVar var_98 DispID_15 0
  loc_A28F49: CStrVarTmp
  loc_A28F4A: CVarStr var_A8
  loc_A28F4D: FLdRfVar var_B8
  loc_A28F50: ImpAdCallFPR4  = Month()
  loc_A28F55: FLdRfVar var_B8
  loc_A28F58: LitVarI2 var_C8, 1
  loc_A28F5D: AddVar var_D8
  loc_A28F61: ConcatVar var_EC
  loc_A28F65: LitVarStr var_188, "/"
  loc_A28F6A: ConcatVar var_FC
  loc_A28F6E: FLdPr Me
  loc_A28F71: VCallAd Control_ID_mskDesde
  loc_A28F74: FStAdFunc var_DC
  loc_A28F77: FLdPr var_DC
  loc_A28F7A: LateIdLdVar var_10C DispID_15 0
  loc_A28F81: CStrVarTmp
  loc_A28F82: CVarStr var_130
  loc_A28F85: FLdRfVar var_140
  loc_A28F88: ImpAdCallFPR4  = Year()
  loc_A28F8D: FLdRfVar var_140
  loc_A28F90: ConcatVar var_150
  loc_A28F94: FnCDateVar
  loc_A28F96: LitI2_Byte 1
  loc_A28F98: CR8I2
  loc_A28F99: SubR4
  loc_A28F9A: CDateR8
  loc_A28F9B: CStrDate
  loc_A28F9D: CVarStr var_160
  loc_A28FA0: PopAdLdVar
  loc_A28FA1: FLdPr Me
  loc_A28FA4: VCallAd Control_ID_mskHasta
  loc_A28FA7: FStAdFunc var_164
  loc_A28FAA: FLdPr var_164
  loc_A28FAD: LateIdSt
  loc_A28FB2: FFreeAd var_88 = "": var_DC = ""
  loc_A28FBB: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_D8 = "": var_EC = "": var_10C = "": var_130 = "": var_FC = "": var_140 = "": var_150 = "": var_150 = ""
  loc_A28FD6: FLdPr Me
  loc_A28FD9: VCallAd Control_ID_mskHasta
  loc_A28FDC: CVarAd
  loc_A28FE0: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A28FE5: FFree1Var var_98 = ""
  loc_A28FE8: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_8 '9B0514
  'Data Table: 465370
  loc_9B0478: FLdPr Me
  loc_9B047B: VCallAd Control_ID_mskHasta
  loc_9B047E: FStAdFunc var_88
  loc_9B0481: FLdPr var_88
  loc_9B0484: LateIdLdVar var_98 DispID_15 0
  loc_9B048B: PopAd
  loc_9B048D: FLdPr Me
  loc_9B0490: VCallAd Control_ID_mskHasta
  loc_9B0493: FStAdFunc var_AC
  loc_9B0496: LitI2_Byte 0
  loc_9B0498: PopTmpLdAd2 var_A2
  loc_9B049B: FLdZeroAd var_AC
  loc_9B049E: FStAdFunc var_A0
  loc_9B04A1: FLdRfVar var_A0
  loc_9B04A4: LitStr vbNullString
  loc_9B04A7: LitI2_Byte 0
  loc_9B04A9: LitI2_Byte 0
  loc_9B04AB: FLdRfVar var_98
  loc_9B04AE: CStrVarTmp
  loc_9B04AF: FStStrNoPop var_9C
  loc_9B04B2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B04B7: FStStrNoPop var_A8
  loc_9B04BA: FLdPr Me
  loc_9B04BD: MemStStrCopy
  loc_9B04C1: FFreeStr var_9C = ""
  loc_9B04C8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B04D1: FFree1Var var_98 = ""
  loc_9B04D4: FLdPr Me
  loc_9B04D7: VCallAd Control_ID_mskHasta
  loc_9B04DA: FStAdFunc var_B0
  loc_9B04DD: LitNothing
  loc_9B04DF: CastAd
  loc_9B04E2: FStAdFunc var_AC
  loc_9B04E5: FLdRfVar var_AC
  loc_9B04E8: FLdZeroAd var_B0
  loc_9B04EB: FStAdFuncNoPop
  loc_9B04EE: CastAd
  loc_9B04F1: FStAdFunc var_A0
  loc_9B04F4: FLdRfVar var_A0
  loc_9B04F7: FLdPr Me
  loc_9B04FA: MemLdRfVar from_stack_1.global_84
  loc_9B04FD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0502: IStI2 Cancel
  loc_9B0505: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0510: ExitProcHresult
End Sub

Public Function htmFileGet() '46612C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '46613B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '46614A
  htmFile = Value
End Sub

Public Function bGeneradoGet() '466159
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '466168
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AAE34
  'Data Table: 465370
  loc_9AADB0: LitI4 0
  loc_9AADB5: LitI4 5
  loc_9AADBA: FLdRfVar var_88
  loc_9AADBD: Redim
  loc_9AADC7: FLdPr Me
  loc_9AADCA: VCallAd Control_ID_mskDesde
  loc_9AADCD: CVarAd
  loc_9AADD1: ParmAry1St
  loc_9AADD7: FLdPr Me
  loc_9AADDA: VCallAd Control_ID_cmdDesde
  loc_9AADDD: CVarAd
  loc_9AADE1: ParmAry1St
  loc_9AADE7: FLdPr Me
  loc_9AADEA: VCallAd Control_ID_mskHasta
  loc_9AADED: CVarAd
  loc_9AADF1: ParmAry1St
  loc_9AADF7: FLdPr Me
  loc_9AADFA: VCallAd Control_ID_cmdHasta
  loc_9AADFD: CVarAd
  loc_9AAE01: ParmAry1St
  loc_9AAE07: FLdPr Me
  loc_9AAE0A: VCallAd Control_ID_FechMobaOpt
  loc_9AAE0D: CVarAd
  loc_9AAE11: ParmAry1St
  loc_9AAE17: FLdPr Me
  loc_9AAE1A: VCallAd Control_ID_FeinMobaOpt
  loc_9AAE1D: CVarAd
  loc_9AAE21: ParmAry1St
  loc_9AAE27: FLdRfVar var_88
  loc_9AAE2A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AAE2F: FLdRfVar var_88
  loc_9AAE32: Erase
  loc_9AAE33: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B15580
  'Data Table: 465370
  loc_B14D4C: LitStr vbNullString
  loc_B14D4F: FLdPr Me
  loc_B14D52: MemStStrCopy
  loc_B14D56: LitI2_Byte 0
  loc_B14D58: PopTmpLdAd2 var_86
  loc_B14D5B: Call mskDesde_UnknownEvent_8()
  loc_B14D60: FLdPr Me
  loc_B14D63: MemLdStr global_84
  loc_B14D66: LitStr vbNullString
  loc_B14D69: NeStr
  loc_B14D6B: BranchF loc_B14D6F
  loc_B14D6E: ExitProcHresult
  loc_B14D6F: LitI2_Byte 0
  loc_B14D71: PopTmpLdAd2 var_86
  loc_B14D74: Call mskHasta_UnknownEvent_8()
  loc_B14D79: FLdPr Me
  loc_B14D7C: MemLdStr global_84
  loc_B14D7F: LitStr vbNullString
  loc_B14D82: NeStr
  loc_B14D84: BranchF loc_B14D88
  loc_B14D87: ExitProcHresult
  loc_B14D88: FLdPr Me
  loc_B14D8B: MemLdI2 bGenerado
  loc_B14D8E: BranchF loc_B14D92
  loc_B14D91: ExitProcHresult
  loc_B14D92: LitVarStr var_98, "Generando reporte..."
  loc_B14D97: PopAdLdVar
  loc_B14D98: FLdPr Me
  loc_B14D9B: VCallAd Control_ID_statusBar
  loc_B14D9E: FStAdFunc var_AC
  loc_B14DA1: FLdPr var_AC
  loc_B14DA4: LateIdSt
  loc_B14DA9: FFree1Ad var_AC
  loc_B14DAC: LitI4 &HB
  loc_B14DB1: CI2I4
  loc_B14DB2: FLdPr Me
  loc_B14DB5: Me.MousePointer = from_stack_1
  loc_B14DBA: LitI4 0
  loc_B14DBF: LitI4 1
  loc_B14DC4: FLdRfVar var_B0
  loc_B14DC7: Redim
  loc_B14DD1: LitStr "SELECT IFNULL(CajaPaco,'') CajaPaco"
  loc_B14DD4: LitStr " FROM paraconta"
  loc_B14DD7: ConcatStr
  loc_B14DD8: FStStrNoPop var_B4
  loc_B14DDB: LitStr " WHERE PeriInfo = "
  loc_B14DDE: ConcatStr
  loc_B14DDF: CVarStr var_F4
  loc_B14DE2: FLdPr Me
  loc_B14DE5: VCallAd Control_ID_mskDesde
  loc_B14DE8: FStAdFunc var_AC
  loc_B14DEB: FLdPr var_AC
  loc_B14DEE: LateIdLdVar var_C4 DispID_15 0
  loc_B14DF5: CStrVarTmp
  loc_B14DF6: CVarStr var_D4
  loc_B14DF9: FLdRfVar var_E4
  loc_B14DFC: ImpAdCallFPR4  = Year()
  loc_B14E01: FLdRfVar var_E4
  loc_B14E04: ConcatVar var_104
  loc_B14E08: CStrVarVal var_108
  loc_B14E0C: FLdPr Me
  loc_B14E0F: MemLdRfVar from_stack_1.global_76
  loc_B14E12: NewIfNullPr clsbase
  loc_B14E15: Call clsbase.RedefineRS(from_stack_1v)
  loc_B14E1A: FFreeStr var_B4 = ""
  loc_B14E21: FFree1Ad var_AC
  loc_B14E24: FFreeVar var_C4 = "": var_D4 = "": var_F4 = "": var_E4 = ""
  loc_B14E31: FLdPr Me
  loc_B14E34: VCallAd Control_ID_mskDesde
  loc_B14E37: FStAdFunc var_AC
  loc_B14E3A: FLdPr var_AC
  loc_B14E3D: LateIdLdVar var_C4 DispID_15 0
  loc_B14E44: CStrVarTmp
  loc_B14E45: CVarStr var_D4
  loc_B14E48: FLdRfVar var_E4
  loc_B14E4B: ImpAdCallFPR4  = Year()
  loc_B14E50: FLdRfVar var_148
  loc_B14E53: FLdRfVar var_114
  loc_B14E56: LitVarStr var_98, "CajaPaco"
  loc_B14E5B: PopAdLdVar
  loc_B14E5C: FLdRfVar var_110
  loc_B14E5F: FLdRfVar var_10C
  loc_B14E62: FLdPr Me
  loc_B14E65: MemLdRfVar from_stack_1.global_76
  loc_B14E68: NewIfNullPr clsbase
  loc_B14E6B: from_stack_1v = clsbase.RsFrmGet()
  loc_B14E70: FLdPr var_10C
  loc_B14E73:  = Me.Fields
  loc_B14E78: FLdPr var_110
  loc_B14E7B: from_stack_2 = Me.Item(from_stack_1)
  loc_B14E80: FLdPr var_114
  loc_B14E83:  = Me.Value
  loc_B14E88: FLdPr Me
  loc_B14E8B: VCallAd Control_ID_mskDesde
  loc_B14E8E: FStAdFunc var_118
  loc_B14E91: FLdPr var_118
  loc_B14E94: LateIdLdVar var_F4 DispID_15 0
  loc_B14E9B: CStrVarTmp
  loc_B14E9C: CVarStr var_104
  loc_B14E9F: FLdRfVar var_128
  loc_B14EA2: ImpAdCallFPR4  = Year()
  loc_B14EA7: LitI2_Byte 1
  loc_B14EA9: LitI2_Byte 1
  loc_B14EAB: FLdRfVar var_128
  loc_B14EAE: CI2Var
  loc_B14EAF: FLdRfVar var_138
  loc_B14EB2: ImpAdCallFPR4  = DateSerial(, , )
  loc_B14EB7: FLdRfVar var_138
  loc_B14EBA: CStrVarTmp
  loc_B14EBB: PopTmpLdAdStr
  loc_B14EBF: FLdPr Me
  loc_B14EC2: MemLdRfVar from_stack_1.global_72
  loc_B14EC5: NewIfNullRf
  loc_B14EC9: FLdRfVar var_148
  loc_B14ECC: CStrVarTmp
  loc_B14ECD: FStStrNoPop var_108
  loc_B14ED0: FLdRfVar var_E4
  loc_B14ED3: CStrVarVal var_B4
  loc_B14ED7: ImpAdCallI2 Proc_259_8_ACF238(, , , )
  loc_B14EDC: NotI4
  loc_B14EDD: FFreeStr var_B4 = "": var_108 = ""
  loc_B14EE6: FFreeAd var_AC = "": var_10C = "": var_110 = "": var_118 = ""
  loc_B14EF3: FFreeVar var_C4 = "": var_D4 = "": var_F4 = "": var_104 = "": var_128 = "": var_E4 = "": var_148 = ""
  loc_B14F06: BranchF loc_B14F19
  loc_B14F09: LitI4 0
  loc_B14F0E: LitStr "Falta la cuenta contable CAJA. Verifique..."
  loc_B14F11: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B14F16: Branch loc_B15557
  loc_B14F19: FLdRfVar var_B4
  loc_B14F1C: FLdPr Me
  loc_B14F1F: MemLdRfVar from_stack_1.global_72
  loc_B14F22: NewIfNullPr tblcuentacontable
  loc_B14F25: from_stack_1v = tblcuentacontable.SaldDeuGet()
  loc_B14F2A: FLdRfVar var_150
  loc_B14F2D: FLdPr Me
  loc_B14F30: MemLdRfVar from_stack_1.global_72
  loc_B14F33: NewIfNullPr tblcuentacontable
  loc_B14F36: from_stack_1v = tblcuentacontable.SaldAcreGet()
  loc_B14F3B: LitStr "SET @TotaDebeAcum=0, @TotaHabeAcum=0, @saldo="
  loc_B14F3E: LitI4 0
  loc_B14F43: LitI4 -1
  loc_B14F48: LitI4 1
  loc_B14F4D: LitStr "."
  loc_B14F50: LitStr ","
  loc_B14F53: ILdRf var_B4
  loc_B14F56: ImpAdCallI2 Replace(, , , , , )
  loc_B14F5B: FStStrNoPop var_108
  loc_B14F5E: ConcatStr
  loc_B14F5F: FStStrNoPop var_14C
  loc_B14F62: LitStr " - "
  loc_B14F65: ConcatStr
  loc_B14F66: FStStrNoPop var_154
  loc_B14F69: LitI4 0
  loc_B14F6E: LitI4 -1
  loc_B14F73: LitI4 1
  loc_B14F78: LitStr "."
  loc_B14F7B: LitStr ","
  loc_B14F7E: ILdRf var_150
  loc_B14F81: ImpAdCallI2 Replace(, , , , , )
  loc_B14F86: FStStrNoPop var_158
  loc_B14F89: ConcatStr
  loc_B14F8A: FStStrNoPop var_15C
  loc_B14F8D: LitStr ";"
  loc_B14F90: ConcatStr
  loc_B14F91: FStStrNoPop var_160
  loc_B14F94: FLdPr Me
  loc_B14F97: MemLdRfVar from_stack_1.global_76
  loc_B14F9A: NewIfNullPr clsbase
  loc_B14F9D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B14FA2: FFreeStr var_B4 = "": var_108 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_B14FB5: FLdPr Me
  loc_B14FB8: VCallAd Control_ID_mskDesde
  loc_B14FBB: FStAdFunc var_10C
  loc_B14FBE: FLdPr var_10C
  loc_B14FC1: LateIdLdVar var_138 DispID_15 0
  loc_B14FC8: PopAd
  loc_B14FCA: LitStr "SELECT @saldo:=@saldo + IFNULL(Sum(ImpoIngr),0)"
  loc_B14FCD: LitStr " FROM ingreso"
  loc_B14FD0: ConcatStr
  loc_B14FD1: FStStrNoPop var_B4
  loc_B14FD4: LitStr " WHERE PeriInfo = "
  loc_B14FD7: ConcatStr
  loc_B14FD8: CVarStr var_F4
  loc_B14FDB: FLdPr Me
  loc_B14FDE: VCallAd Control_ID_mskDesde
  loc_B14FE1: FStAdFunc var_AC
  loc_B14FE4: FLdPr var_AC
  loc_B14FE7: LateIdLdVar var_C4 DispID_15 0
  loc_B14FEE: CStrVarTmp
  loc_B14FEF: CVarStr var_D4
  loc_B14FF2: FLdRfVar var_E4
  loc_B14FF5: ImpAdCallFPR4  = Year()
  loc_B14FFA: FLdRfVar var_E4
  loc_B14FFD: ConcatVar var_104
  loc_B15001: LitVarStr var_98, " AND FechIngr < "
  loc_B15006: ConcatVar var_128
  loc_B1500A: LitI4 1
  loc_B1500F: LitI4 1
  loc_B15014: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_B15019: FStVarCopyObj var_170
  loc_B1501C: FLdRfVar var_170
  loc_B1501F: FLdRfVar var_138
  loc_B15022: CStrVarTmp
  loc_B15023: CVarStr var_148
  loc_B15026: ImpAdCallI2 Format$(, )
  loc_B1502B: CVarStr var_180
  loc_B1502E: ConcatVar var_190
  loc_B15032: LitVarStr var_1A0, ";"
  loc_B15037: ConcatVar var_1B0
  loc_B1503B: CStrVarVal var_108
  loc_B1503F: FLdPr Me
  loc_B15042: MemLdRfVar from_stack_1.global_76
  loc_B15045: NewIfNullPr clsbase
  loc_B15048: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1504D: FFreeStr var_B4 = ""
  loc_B15054: FFreeAd var_AC = ""
  loc_B1505B: FFreeVar var_C4 = "": var_D4 = "": var_F4 = "": var_E4 = "": var_104 = "": var_138 = "": var_148 = "": var_170 = "": var_128 = "": var_180 = "": var_190 = ""
  loc_B15076: FLdPr Me
  loc_B15079: VCallAd Control_ID_mskDesde
  loc_B1507C: FStAdFunc var_10C
  loc_B1507F: FLdPr var_10C
  loc_B15082: LateIdLdVar var_138 DispID_15 0
  loc_B15089: PopAd
  loc_B1508B: LitStr "SELECT @saldo:=@saldo - IFNULL(Sum(DebeMoba),0) + IFNULL(Sum(HabeMoba),0)"
  loc_B1508E: LitStr " FROM movibanco mb"
  loc_B15091: ConcatStr
  loc_B15092: FStStrNoPop var_B4
  loc_B15095: LitStr " INNER JOIN paraconta p ON p.PeriInfo = mb.PeriInfo"
  loc_B15098: ConcatStr
  loc_B15099: FStStrNoPop var_108
  loc_B1509C: LitStr " WHERE mb.PeriInfo = "
  loc_B1509F: ConcatStr
  loc_B150A0: CVarStr var_F4
  loc_B150A3: FLdPr Me
  loc_B150A6: VCallAd Control_ID_mskDesde
  loc_B150A9: FStAdFunc var_AC
  loc_B150AC: FLdPr var_AC
  loc_B150AF: LateIdLdVar var_C4 DispID_15 0
  loc_B150B6: CStrVarTmp
  loc_B150B7: CVarStr var_D4
  loc_B150BA: FLdRfVar var_E4
  loc_B150BD: ImpAdCallFPR4  = Year()
  loc_B150C2: FLdRfVar var_E4
  loc_B150C5: ConcatVar var_104
  loc_B150C9: LitVarStr var_98, " AND FechMoba < "
  loc_B150CE: ConcatVar var_128
  loc_B150D2: LitI4 1
  loc_B150D7: LitI4 1
  loc_B150DC: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_B150E1: FStVarCopyObj var_170
  loc_B150E4: FLdRfVar var_170
  loc_B150E7: FLdRfVar var_138
  loc_B150EA: CStrVarTmp
  loc_B150EB: CVarStr var_148
  loc_B150EE: ImpAdCallI2 Format$(, )
  loc_B150F3: CVarStr var_180
  loc_B150F6: ConcatVar var_190
  loc_B150FA: LitVarStr var_1A0, " AND ( CodiTimb IN (5,6) OR (CodiTimb > 6 AND CodiCuco = p.CajaPaco) );"
  loc_B150FF: ConcatVar var_1B0
  loc_B15103: CStrVarVal var_14C
  loc_B15107: FLdPr Me
  loc_B1510A: MemLdRfVar from_stack_1.global_76
  loc_B1510D: NewIfNullPr clsbase
  loc_B15110: Call clsbase.RedefineRS(from_stack_1v)
  loc_B15115: FFreeStr var_B4 = "": var_108 = ""
  loc_B1511E: FFreeAd var_AC = ""
  loc_B15125: FFreeVar var_C4 = "": var_D4 = "": var_F4 = "": var_E4 = "": var_104 = "": var_138 = "": var_148 = "": var_170 = "": var_128 = "": var_180 = "": var_190 = ""
  loc_B15140: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B15143: LitStr " CREATE TEMPORARY TABLE tmovi ("
  loc_B15146: ConcatStr
  loc_B15147: FStStrNoPop var_B4
  loc_B1514A: LitStr " Fecha DATE DEFAULT NULL,"
  loc_B1514D: ConcatStr
  loc_B1514E: FStStrNoPop var_108
  loc_B15151: LitStr " Orden tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_B15154: ConcatStr
  loc_B15155: FStStrNoPop var_14C
  loc_B15158: LitStr " Detalle VARCHAR(100) NOT NULL Default '',"
  loc_B1515B: ConcatStr
  loc_B1515C: FStStrNoPop var_150
  loc_B1515F: LitStr " TotaDebe DECIMAL(14,2) NOT NULL Default '0.00',"
  loc_B15162: ConcatStr
  loc_B15163: FStStrNoPop var_154
  loc_B15166: LitStr " TotaHabe DECIMAL(14,2) NOT NULL Default '0.00',"
  loc_B15169: ConcatStr
  loc_B1516A: FStStrNoPop var_158
  loc_B1516D: LitStr " TotaDebeAcum DECIMAL(14,2) NOT NULL Default '0.00',"
  loc_B15170: ConcatStr
  loc_B15171: FStStrNoPop var_15C
  loc_B15174: LitStr " TotaHabeAcum DECIMAL(14,2) NOT NULL Default '0.00',"
  loc_B15177: ConcatStr
  loc_B15178: FStStrNoPop var_160
  loc_B1517B: LitStr " SaldoDeu DECIMAL(14,2) NOT NULL Default '0.00',"
  loc_B1517E: ConcatStr
  loc_B1517F: FStStrNoPop var_1B4
  loc_B15182: LitStr " SaldoAcre DECIMAL(14,2) NOT NULL Default '0.00'"
  loc_B15185: ConcatStr
  loc_B15186: FStStrNoPop var_1B8
  loc_B15189: LitStr " ) ;"
  loc_B1518C: ConcatStr
  loc_B1518D: FStStrNoPop var_1BC
  loc_B15190: FLdPr Me
  loc_B15193: MemLdRfVar from_stack_1.global_76
  loc_B15196: NewIfNullPr clsbase
  loc_B15199: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1519E: FFreeStr var_B4 = "": var_108 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_1B4 = "": var_1B8 = ""
  loc_B151B7: LitStr "INSERT INTO tmovi"
  loc_B151BA: LitStr " SELECT NULL, 0, 'SALDO AL INICIO', IF(@saldo>0,@saldo,0), IF(@saldo<0,@saldo,0), 0, 0, 0, 0;"
  loc_B151BD: ConcatStr
  loc_B151BE: FStStrNoPop var_B4
  loc_B151C1: FLdPr Me
  loc_B151C4: MemLdRfVar from_stack_1.global_76
  loc_B151C7: NewIfNullPr clsbase
  loc_B151CA: Call clsbase.RedefineRS(from_stack_1v)
  loc_B151CF: FFree1Str var_B4
  loc_B151D2: FLdPr Me
  loc_B151D5: VCallAd Control_ID_mskDesde
  loc_B151D8: FStAdFunc var_AC
  loc_B151DB: FLdPr var_AC
  loc_B151DE: LateIdLdVar var_C4 DispID_15 0
  loc_B151E5: PopAd
  loc_B151E7: FLdPr Me
  loc_B151EA: VCallAd Control_ID_mskHasta
  loc_B151ED: FStAdFunc var_10C
  loc_B151F0: FLdPr var_10C
  loc_B151F3: LateIdLdVar var_F4 DispID_15 0
  loc_B151FA: PopAd
  loc_B151FC: LitStr "INSERT INTO tmovi"
  loc_B151FF: LitStr " SELECT FechIngr, 0, 'INGRESOS', Sum(ImpoIngr), 0, 0,0,0,0"
  loc_B15202: ConcatStr
  loc_B15203: FStStrNoPop var_B4
  loc_B15206: LitStr " FROM ingreso"
  loc_B15209: ConcatStr
  loc_B1520A: FStStrNoPop var_108
  loc_B1520D: LitStr " WHERE FechIngr BETWEEN "
  loc_B15210: ConcatStr
  loc_B15211: FStStrNoPop var_14C
  loc_B15214: LitI4 1
  loc_B15219: LitI4 1
  loc_B1521E: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_B15223: FStVarCopyObj var_E4
  loc_B15226: FLdRfVar var_E4
  loc_B15229: FLdRfVar var_C4
  loc_B1522C: CStrVarTmp
  loc_B1522D: CVarStr var_D4
  loc_B15230: ImpAdCallI2 Format$(, )
  loc_B15235: FStStrNoPop var_150
  loc_B15238: ConcatStr
  loc_B15239: FStStrNoPop var_154
  loc_B1523C: LitStr " AND "
  loc_B1523F: ConcatStr
  loc_B15240: FStStrNoPop var_158
  loc_B15243: LitI4 1
  loc_B15248: LitI4 1
  loc_B1524D: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_B15252: FStVarCopyObj var_128
  loc_B15255: FLdRfVar var_128
  loc_B15258: FLdRfVar var_F4
  loc_B1525B: CStrVarTmp
  loc_B1525C: CVarStr var_104
  loc_B1525F: ImpAdCallI2 Format$(, )
  loc_B15264: FStStrNoPop var_15C
  loc_B15267: ConcatStr
  loc_B15268: FStStrNoPop var_160
  loc_B1526B: LitStr " GROUP BY FechIngr;"
  loc_B1526E: ConcatStr
  loc_B1526F: FStStrNoPop var_1B4
  loc_B15272: FLdPr Me
  loc_B15275: MemLdRfVar from_stack_1.global_76
  loc_B15278: NewIfNullPr clsbase
  loc_B1527B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B15280: FFreeStr var_B4 = "": var_108 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_B15295: FFreeAd var_AC = ""
  loc_B1529C: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B152AB: FLdRfVar var_86
  loc_B152AE: FLdPr Me
  loc_B152B1: VCallAd Control_ID_FechMobaOpt
  loc_B152B4: FStAdFunc var_AC
  loc_B152B7: FLdPr var_AC
  loc_B152BA:  = Me.Value
  loc_B152BF: FLdI2 var_86
  loc_B152C2: LitI2_Byte &HFF
  loc_B152C4: EqI2
  loc_B152C5: FFree1Ad var_AC
  loc_B152C8: BranchF loc_B153C2
  loc_B152CB: FLdPr Me
  loc_B152CE: VCallAd Control_ID_mskDesde
  loc_B152D1: FStAdFunc var_AC
  loc_B152D4: FLdPr var_AC
  loc_B152D7: LateIdLdVar var_C4 DispID_15 0
  loc_B152DE: PopAd
  loc_B152E0: FLdPr Me
  loc_B152E3: VCallAd Control_ID_mskHasta
  loc_B152E6: FStAdFunc var_10C
  loc_B152E9: FLdPr var_10C
  loc_B152EC: LateIdLdVar var_F4 DispID_15 0
  loc_B152F3: PopAd
  loc_B152F5: LitStr "INSERT INTO tmovi"
  loc_B152F8: LitStr " SELECT FechMoba, mb.CodiTimb, DetaTimb, Sum(HabeMoba), Sum(DebeMoba), 0,0,0,0"
  loc_B152FB: ConcatStr
  loc_B152FC: FStStrNoPop var_B4
  loc_B152FF: LitStr " FROM movibanco mb"
  loc_B15302: ConcatStr
  loc_B15303: FStStrNoPop var_108
  loc_B15306: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_B15309: ConcatStr
  loc_B1530A: FStStrNoPop var_14C
  loc_B1530D: LitStr " INNER JOIN paraconta p ON p.PeriInfo = mb.PeriInfo"
  loc_B15310: ConcatStr
  loc_B15311: FStStrNoPop var_150
  loc_B15314: LitStr " WHERE FechMoba BETWEEN "
  loc_B15317: ConcatStr
  loc_B15318: FStStrNoPop var_154
  loc_B1531B: LitI4 1
  loc_B15320: LitI4 1
  loc_B15325: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_B1532A: FStVarCopyObj var_E4
  loc_B1532D: FLdRfVar var_E4
  loc_B15330: FLdRfVar var_C4
  loc_B15333: CStrVarTmp
  loc_B15334: CVarStr var_D4
  loc_B15337: ImpAdCallI2 Format$(, )
  loc_B1533C: FStStrNoPop var_158
  loc_B1533F: ConcatStr
  loc_B15340: FStStrNoPop var_15C
  loc_B15343: LitStr " AND "
  loc_B15346: ConcatStr
  loc_B15347: FStStrNoPop var_160
  loc_B1534A: LitI4 1
  loc_B1534F: LitI4 1
  loc_B15354: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_B15359: FStVarCopyObj var_128
  loc_B1535C: FLdRfVar var_128
  loc_B1535F: FLdRfVar var_F4
  loc_B15362: CStrVarTmp
  loc_B15363: CVarStr var_104
  loc_B15366: ImpAdCallI2 Format$(, )
  loc_B1536B: FStStrNoPop var_1B4
  loc_B1536E: ConcatStr
  loc_B1536F: FStStrNoPop var_1B8
  loc_B15372: LitStr " AND ( mb.CodiTimb IN (5,6) OR (mb.CodiTimb > 6 AND mb.CodiCuco = p.CajaPaco) )"
  loc_B15375: ConcatStr
  loc_B15376: FStStrNoPop var_1BC
  loc_B15379: LitStr " GROUP BY FechMoba, mb.CodiTimb;"
  loc_B1537C: ConcatStr
  loc_B1537D: FStStrNoPop var_1C0
  loc_B15380: FLdPr Me
  loc_B15383: MemLdRfVar from_stack_1.global_76
  loc_B15386: NewIfNullPr clsbase
  loc_B15389: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1538E: FFreeStr var_B4 = "": var_108 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_1B4 = "": var_1B8 = "": var_1BC = ""
  loc_B153A9: FFreeAd var_AC = ""
  loc_B153B0: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B153BF: Branch loc_B154D6
  loc_B153C2: FLdRfVar var_86
  loc_B153C5: FLdPr Me
  loc_B153C8: VCallAd Control_ID_FeinMobaOpt
  loc_B153CB: FStAdFunc var_AC
  loc_B153CE: FLdPr var_AC
  loc_B153D1:  = Me.Value
  loc_B153D6: FLdI2 var_86
  loc_B153D9: LitI2_Byte &HFF
  loc_B153DB: EqI2
  loc_B153DC: FFree1Ad var_AC
  loc_B153DF: BranchF loc_B154D6
  loc_B153E2: FLdPr Me
  loc_B153E5: VCallAd Control_ID_mskDesde
  loc_B153E8: FStAdFunc var_AC
  loc_B153EB: FLdPr var_AC
  loc_B153EE: LateIdLdVar var_C4 DispID_15 0
  loc_B153F5: PopAd
  loc_B153F7: FLdPr Me
  loc_B153FA: VCallAd Control_ID_mskHasta
  loc_B153FD: FStAdFunc var_10C
  loc_B15400: FLdPr var_10C
  loc_B15403: LateIdLdVar var_F4 DispID_15 0
  loc_B1540A: PopAd
  loc_B1540C: LitStr "INSERT INTO tmovi"
  loc_B1540F: LitStr " SELECT FeinMoba, mb.CodiTimb, DetaTimb, Sum(HabeMoba), Sum(DebeMoba), 0,0,0,0"
  loc_B15412: ConcatStr
  loc_B15413: FStStrNoPop var_B4
  loc_B15416: LitStr " FROM movibanco mb"
  loc_B15419: ConcatStr
  loc_B1541A: FStStrNoPop var_108
  loc_B1541D: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_B15420: ConcatStr
  loc_B15421: FStStrNoPop var_14C
  loc_B15424: LitStr " INNER JOIN paraconta p ON p.PeriInfo = mb.PeriInfo"
  loc_B15427: ConcatStr
  loc_B15428: FStStrNoPop var_150
  loc_B1542B: LitStr " WHERE FeinMoba BETWEEN "
  loc_B1542E: ConcatStr
  loc_B1542F: FStStrNoPop var_154
  loc_B15432: LitI4 1
  loc_B15437: LitI4 1
  loc_B1543C: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_B15441: FStVarCopyObj var_E4
  loc_B15444: FLdRfVar var_E4
  loc_B15447: FLdRfVar var_C4
  loc_B1544A: CStrVarTmp
  loc_B1544B: CVarStr var_D4
  loc_B1544E: ImpAdCallI2 Format$(, )
  loc_B15453: FStStrNoPop var_158
  loc_B15456: ConcatStr
  loc_B15457: FStStrNoPop var_15C
  loc_B1545A: LitStr " AND "
  loc_B1545D: ConcatStr
  loc_B1545E: FStStrNoPop var_160
  loc_B15461: LitI4 1
  loc_B15466: LitI4 1
  loc_B1546B: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_B15470: FStVarCopyObj var_128
  loc_B15473: FLdRfVar var_128
  loc_B15476: FLdRfVar var_F4
  loc_B15479: CStrVarTmp
  loc_B1547A: CVarStr var_104
  loc_B1547D: ImpAdCallI2 Format$(, )
  loc_B15482: FStStrNoPop var_1B4
  loc_B15485: ConcatStr
  loc_B15486: FStStrNoPop var_1B8
  loc_B15489: LitStr " AND ( mb.CodiTimb IN (5,6) OR (mb.CodiTimb > 6 AND mb.CodiCuco = p.CajaPaco) )"
  loc_B1548C: ConcatStr
  loc_B1548D: FStStrNoPop var_1BC
  loc_B15490: LitStr " GROUP BY FeinMoba, mb.CodiTimb;"
  loc_B15493: ConcatStr
  loc_B15494: FStStrNoPop var_1C0
  loc_B15497: FLdPr Me
  loc_B1549A: MemLdRfVar from_stack_1.global_76
  loc_B1549D: NewIfNullPr clsbase
  loc_B154A0: Call clsbase.RedefineRS(from_stack_1v)
  loc_B154A5: FFreeStr var_B4 = "": var_108 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_1B4 = "": var_1B8 = "": var_1BC = ""
  loc_B154C0: FFreeAd var_AC = ""
  loc_B154C7: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B154D6: LitStr "UPDATE tmovi"
  loc_B154D9: LitStr " SET TotaDebeAcum=@TotaDebeAcum:=TotaDebe+@TotaDebeAcum, TotaHabeAcum=@TotaHabeAcum:=TotaHabe+@TotaHabeAcum, SaldoDeu=IF(TotaDebeAcum-TotaHabeAcum>0,TotaDebeAcum-TotaHabeAcum,0), SaldoAcre=IF(TotaHabeAcum-TotaDebeAcum>0,TotaHabeAcum-TotaDebeAcum,0)"
  loc_B154DC: ConcatStr
  loc_B154DD: FStStrNoPop var_B4
  loc_B154E0: LitStr " ORDER BY Fecha;"
  loc_B154E3: ConcatStr
  loc_B154E4: FStStrNoPop var_108
  loc_B154E7: FLdPr Me
  loc_B154EA: MemLdRfVar from_stack_1.global_76
  loc_B154ED: NewIfNullPr clsbase
  loc_B154F0: Call clsbase.RedefineRS(from_stack_1v)
  loc_B154F5: FFreeStr var_B4 = ""
  loc_B154FC: LitStr "SELECT *"
  loc_B154FF: LitStr " FROM tmovi"
  loc_B15502: ConcatStr
  loc_B15503: FStStrNoPop var_B4
  loc_B15506: LitStr " ORDER BY Fecha, Orden"
  loc_B15509: ConcatStr
  loc_B1550A: FStStrNoPop var_108
  loc_B1550D: FLdPr Me
  loc_B15510: MemLdRfVar from_stack_1.global_76
  loc_B15513: NewIfNullPr clsbase
  loc_B15516: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1551B: FFreeStr var_B4 = ""
  loc_B15522: FLdRfVar var_1C4
  loc_B15525: FLdPr Me
  loc_B15528: MemLdRfVar from_stack_1.global_76
  loc_B1552B: NewIfNullPr clsbase
  loc_B1552E: from_stack_1 = clsbase.RecordCount
  loc_B15533: ILdRf var_1C4
  loc_B15536: LitI4 0
  loc_B1553B: EqI4
  loc_B1553C: BranchF loc_B1554F
  loc_B1553F: LitI4 0
  loc_B15544: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B15547: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1554C: Branch loc_B15557
  loc_B1554F: LitI2_Byte &HFF
  loc_B15551: FLdPr Me
  loc_B15554: MemStI2 bGenerado
  loc_B15557: LitI4 0
  loc_B1555C: CI2I4
  loc_B1555D: FLdPr Me
  loc_B15560: Me.MousePointer = from_stack_1
  loc_B15565: LitVarStr var_98, vbNullString
  loc_B1556A: PopAdLdVar
  loc_B1556B: FLdPr Me
  loc_B1556E: VCallAd Control_ID_statusBar
  loc_B15571: FStAdFunc var_AC
  loc_B15574: FLdPr var_AC
  loc_B15577: LateIdSt
  loc_B1557C: FFree1Ad var_AC
  loc_B1557F: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AD7228
  'Data Table: 465370
  loc_AD6BB8: FLdRfVar var_88
  loc_AD6BBB: LitI2_Byte 0
  loc_AD6BBD: LitI2_Byte &HFF
  loc_AD6BBF: ImpAdLdI4 MemVar_C3D83C
  loc_AD6BC2: FLdPr Me
  loc_AD6BC5: MemLdRfVar from_stack_1.global_80
  loc_AD6BC8: NewIfNullPr IFileSystem3
  loc_AD6BCB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AD6BD0: ILdRf var_88
  loc_AD6BD3: FLdPr Me
  loc_AD6BD6: MemStVarAd
  loc_AD6BDA: FFree1Ad var_88
  loc_AD6BDD: Call Proc_175_22_A7CF28()
  loc_AD6BE2: FLdPr Me
  loc_AD6BE5: MemLdRfVar from_stack_1.global_76
  loc_AD6BE8: NewIfNullPr clsbase
  loc_AD6BEB: Call clsbase.MoveFirst()
  loc_AD6BF0: FLdRfVar var_8A
  loc_AD6BF3: FLdPr Me
  loc_AD6BF6: MemLdRfVar from_stack_1.global_76
  loc_AD6BF9: NewIfNullPr clsbase
  loc_AD6BFC: from_stack_1 = clsbase.EOF
  loc_AD6C01: FLdI2 var_8A
  loc_AD6C04: NotI4
  loc_AD6C05: BranchF loc_AD6FA9
  loc_AD6C08: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AD6C0D: PopAdLdVar
  loc_AD6C0E: FLdPr Me
  loc_AD6C11: MemLdRfVar from_stack_1.htmFile
  loc_AD6C14: LdPrVar
  loc_AD6C16: LateMemCall
  loc_AD6C1C: FLdRfVar var_B4
  loc_AD6C1F: LitVarStr var_9C, "Fecha"
  loc_AD6C24: PopAdLdVar
  loc_AD6C25: FLdRfVar var_B0
  loc_AD6C28: FLdRfVar var_88
  loc_AD6C2B: FLdPr Me
  loc_AD6C2E: MemLdRfVar from_stack_1.global_76
  loc_AD6C31: NewIfNullPr clsbase
  loc_AD6C34: from_stack_1v = clsbase.RsFrmGet()
  loc_AD6C39: FLdPr var_88
  loc_AD6C3C:  = Me.Fields
  loc_AD6C41: FLdPr var_B0
  loc_AD6C44: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6C49: FLdZeroAd var_B4
  loc_AD6C4C: CVarAd
  loc_AD6C50: ImpAdCallI2 IsNull()
  loc_AD6C55: FStI2 var_8A
  loc_AD6C58: FLdRfVar var_D0
  loc_AD6C5B: LitVarStr var_AC, "Fecha"
  loc_AD6C60: PopAdLdVar
  loc_AD6C61: FLdRfVar var_CC
  loc_AD6C64: FLdRfVar var_C8
  loc_AD6C67: FLdPr Me
  loc_AD6C6A: MemLdRfVar from_stack_1.global_76
  loc_AD6C6D: NewIfNullPr clsbase
  loc_AD6C70: from_stack_1v = clsbase.RsFrmGet()
  loc_AD6C75: FLdPr var_C8
  loc_AD6C78:  = Me.Fields
  loc_AD6C7D: FLdPr var_CC
  loc_AD6C80: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6C85: FLdZeroAd var_D0
  loc_AD6C88: CVarAd
  loc_AD6C8C: LitVarStr var_F0, "&nbsp;"
  loc_AD6C91: FStVarCopyObj var_100
  loc_AD6C94: FLdRfVar var_100
  loc_AD6C97: FLdI2 var_8A
  loc_AD6C9A: CVarBoolI2 var_E0
  loc_AD6C9E: FLdRfVar var_120
  loc_AD6CA1: ImpAdCallFPR4  = IIf(, , )
  loc_AD6CA6: LitI4 0
  loc_AD6CAB: LitI4 0
  loc_AD6CB0: LitI2_Byte 0
  loc_AD6CB2: LitStr "center"
  loc_AD6CB5: FLdRfVar var_120
  loc_AD6CB8: CStrVarVal var_124
  loc_AD6CBC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD6CC1: CVarStr var_134
  loc_AD6CC4: PopAdLdVar
  loc_AD6CC5: FLdPr Me
  loc_AD6CC8: MemLdRfVar from_stack_1.htmFile
  loc_AD6CCB: LdPrVar
  loc_AD6CCD: LateMemCall
  loc_AD6CD3: FFree1Str var_124
  loc_AD6CD6: FFreeAd var_88 = "": var_B0 = "": var_C8 = ""
  loc_AD6CE1: FFreeVar var_C4 = "": var_E0 = "": var_100 = "": var_110 = "": var_120 = ""
  loc_AD6CF0: FLdRfVar var_C4
  loc_AD6CF3: FLdRfVar var_B4
  loc_AD6CF6: LitVarStr var_9C, "Detalle"
  loc_AD6CFB: PopAdLdVar
  loc_AD6CFC: FLdRfVar var_B0
  loc_AD6CFF: FLdRfVar var_88
  loc_AD6D02: FLdPr Me
  loc_AD6D05: MemLdRfVar from_stack_1.global_76
  loc_AD6D08: NewIfNullPr clsbase
  loc_AD6D0B: from_stack_1v = clsbase.RsFrmGet()
  loc_AD6D10: FLdPr var_88
  loc_AD6D13:  = Me.Fields
  loc_AD6D18: FLdPr var_B0
  loc_AD6D1B: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6D20: FLdPr var_B4
  loc_AD6D23:  = Me.Value
  loc_AD6D28: LitI4 0
  loc_AD6D2D: LitI4 0
  loc_AD6D32: LitI2_Byte 0
  loc_AD6D34: LitStr "left"
  loc_AD6D37: FLdRfVar var_C4
  loc_AD6D3A: CStrVarTmp
  loc_AD6D3B: FStStrNoPop var_124
  loc_AD6D3E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD6D43: CVarStr var_100
  loc_AD6D46: PopAdLdVar
  loc_AD6D47: FLdPr Me
  loc_AD6D4A: MemLdRfVar from_stack_1.htmFile
  loc_AD6D4D: LdPrVar
  loc_AD6D4F: LateMemCall
  loc_AD6D55: FFree1Str var_124
  loc_AD6D58: FFreeAd var_88 = "": var_B0 = ""
  loc_AD6D61: FFreeVar var_C4 = ""
  loc_AD6D68: FLdRfVar var_B4
  loc_AD6D6B: LitVarStr var_9C, "TotaDebe"
  loc_AD6D70: PopAdLdVar
  loc_AD6D71: FLdRfVar var_B0
  loc_AD6D74: FLdRfVar var_88
  loc_AD6D77: FLdPr Me
  loc_AD6D7A: MemLdRfVar from_stack_1.global_76
  loc_AD6D7D: NewIfNullPr clsbase
  loc_AD6D80: from_stack_1v = clsbase.RsFrmGet()
  loc_AD6D85: FLdPr var_88
  loc_AD6D88:  = Me.Fields
  loc_AD6D8D: FLdPr var_B0
  loc_AD6D90: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6D95: LitI2_Byte 0
  loc_AD6D97: LitVar_Missing var_100
  loc_AD6D9A: LitI2_Byte &HFF
  loc_AD6D9C: FLdZeroAd var_B4
  loc_AD6D9F: CVarAd
  loc_AD6DA3: PopAdLdVar
  loc_AD6DA4: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_AD6DA9: FStStr var_148
  loc_AD6DAC: LitI4 0
  loc_AD6DB1: LitI4 0
  loc_AD6DB6: LitI2_Byte 0
  loc_AD6DB8: LitStr "right"
  loc_AD6DBB: FLdZeroAd var_148
  loc_AD6DBE: FStStrNoPop var_124
  loc_AD6DC1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD6DC6: CVarStr var_110
  loc_AD6DC9: PopAdLdVar
  loc_AD6DCA: FLdPr Me
  loc_AD6DCD: MemLdRfVar from_stack_1.htmFile
  loc_AD6DD0: LdPrVar
  loc_AD6DD2: LateMemCall
  loc_AD6DD8: FFreeStr var_124 = ""
  loc_AD6DDF: FFreeAd var_88 = ""
  loc_AD6DE6: FFreeVar var_C4 = "": var_100 = ""
  loc_AD6DEF: FLdRfVar var_B4
  loc_AD6DF2: LitVarStr var_9C, "TotaHabe"
  loc_AD6DF7: PopAdLdVar
  loc_AD6DF8: FLdRfVar var_B0
  loc_AD6DFB: FLdRfVar var_88
  loc_AD6DFE: FLdPr Me
  loc_AD6E01: MemLdRfVar from_stack_1.global_76
  loc_AD6E04: NewIfNullPr clsbase
  loc_AD6E07: from_stack_1v = clsbase.RsFrmGet()
  loc_AD6E0C: FLdPr var_88
  loc_AD6E0F:  = Me.Fields
  loc_AD6E14: FLdPr var_B0
  loc_AD6E17: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6E1C: LitI2_Byte 0
  loc_AD6E1E: LitVar_Missing var_100
  loc_AD6E21: LitI2_Byte &HFF
  loc_AD6E23: FLdZeroAd var_B4
  loc_AD6E26: CVarAd
  loc_AD6E2A: PopAdLdVar
  loc_AD6E2B: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_AD6E30: FStStr var_148
  loc_AD6E33: LitI4 0
  loc_AD6E38: LitI4 0
  loc_AD6E3D: LitI2_Byte 0
  loc_AD6E3F: LitStr "right"
  loc_AD6E42: FLdZeroAd var_148
  loc_AD6E45: FStStrNoPop var_124
  loc_AD6E48: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD6E4D: CVarStr var_110
  loc_AD6E50: PopAdLdVar
  loc_AD6E51: FLdPr Me
  loc_AD6E54: MemLdRfVar from_stack_1.htmFile
  loc_AD6E57: LdPrVar
  loc_AD6E59: LateMemCall
  loc_AD6E5F: FFreeStr var_124 = ""
  loc_AD6E66: FFreeAd var_88 = ""
  loc_AD6E6D: FFreeVar var_C4 = "": var_100 = ""
  loc_AD6E76: FLdRfVar var_B4
  loc_AD6E79: LitVarStr var_9C, "SaldoDeu"
  loc_AD6E7E: PopAdLdVar
  loc_AD6E7F: FLdRfVar var_B0
  loc_AD6E82: FLdRfVar var_88
  loc_AD6E85: FLdPr Me
  loc_AD6E88: MemLdRfVar from_stack_1.global_76
  loc_AD6E8B: NewIfNullPr clsbase
  loc_AD6E8E: from_stack_1v = clsbase.RsFrmGet()
  loc_AD6E93: FLdPr var_88
  loc_AD6E96:  = Me.Fields
  loc_AD6E9B: FLdPr var_B0
  loc_AD6E9E: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6EA3: LitI2_Byte 0
  loc_AD6EA5: LitVar_Missing var_100
  loc_AD6EA8: LitI2_Byte &HFF
  loc_AD6EAA: FLdZeroAd var_B4
  loc_AD6EAD: CVarAd
  loc_AD6EB1: PopAdLdVar
  loc_AD6EB2: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_AD6EB7: FStStr var_148
  loc_AD6EBA: LitI4 0
  loc_AD6EBF: LitI4 0
  loc_AD6EC4: LitI2_Byte 0
  loc_AD6EC6: LitStr "right"
  loc_AD6EC9: FLdZeroAd var_148
  loc_AD6ECC: FStStrNoPop var_124
  loc_AD6ECF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD6ED4: CVarStr var_110
  loc_AD6ED7: PopAdLdVar
  loc_AD6ED8: FLdPr Me
  loc_AD6EDB: MemLdRfVar from_stack_1.htmFile
  loc_AD6EDE: LdPrVar
  loc_AD6EE0: LateMemCall
  loc_AD6EE6: FFreeStr var_124 = ""
  loc_AD6EED: FFreeAd var_88 = ""
  loc_AD6EF4: FFreeVar var_C4 = "": var_100 = ""
  loc_AD6EFD: FLdRfVar var_B4
  loc_AD6F00: LitVarStr var_9C, "SaldoAcre"
  loc_AD6F05: PopAdLdVar
  loc_AD6F06: FLdRfVar var_B0
  loc_AD6F09: FLdRfVar var_88
  loc_AD6F0C: FLdPr Me
  loc_AD6F0F: MemLdRfVar from_stack_1.global_76
  loc_AD6F12: NewIfNullPr clsbase
  loc_AD6F15: from_stack_1v = clsbase.RsFrmGet()
  loc_AD6F1A: FLdPr var_88
  loc_AD6F1D:  = Me.Fields
  loc_AD6F22: FLdPr var_B0
  loc_AD6F25: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6F2A: LitI2_Byte 0
  loc_AD6F2C: LitVar_Missing var_100
  loc_AD6F2F: LitI2_Byte &HFF
  loc_AD6F31: FLdZeroAd var_B4
  loc_AD6F34: CVarAd
  loc_AD6F38: PopAdLdVar
  loc_AD6F39: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_AD6F3E: FStStr var_148
  loc_AD6F41: LitI4 0
  loc_AD6F46: LitI4 0
  loc_AD6F4B: LitI2_Byte 0
  loc_AD6F4D: LitStr "right"
  loc_AD6F50: FLdZeroAd var_148
  loc_AD6F53: FStStrNoPop var_124
  loc_AD6F56: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD6F5B: CVarStr var_110
  loc_AD6F5E: PopAdLdVar
  loc_AD6F5F: FLdPr Me
  loc_AD6F62: MemLdRfVar from_stack_1.htmFile
  loc_AD6F65: LdPrVar
  loc_AD6F67: LateMemCall
  loc_AD6F6D: FFreeStr var_124 = ""
  loc_AD6F74: FFreeAd var_88 = ""
  loc_AD6F7B: FFreeVar var_C4 = "": var_100 = ""
  loc_AD6F84: LitVarStr var_9C, "  </tr>"
  loc_AD6F89: PopAdLdVar
  loc_AD6F8A: FLdPr Me
  loc_AD6F8D: MemLdRfVar from_stack_1.htmFile
  loc_AD6F90: LdPrVar
  loc_AD6F92: LateMemCall
  loc_AD6F98: FLdPr Me
  loc_AD6F9B: MemLdRfVar from_stack_1.global_76
  loc_AD6F9E: NewIfNullPr clsbase
  loc_AD6FA1: Call clsbase.MoveSiguiente()
  loc_AD6FA6: Branch loc_AD6BF0
  loc_AD6FA9: FLdPr Me
  loc_AD6FAC: MemLdRfVar from_stack_1.global_76
  loc_AD6FAF: NewIfNullPr clsbase
  loc_AD6FB2: Call clsbase.MoveLast()
  loc_AD6FB7: LitVarStr var_9C, "  <tr align=""right"" class=""Totales"">"
  loc_AD6FBC: PopAdLdVar
  loc_AD6FBD: FLdPr Me
  loc_AD6FC0: MemLdRfVar from_stack_1.htmFile
  loc_AD6FC3: LdPrVar
  loc_AD6FC5: LateMemCall
  loc_AD6FCB: LitVarStr var_9C, "     <td colspan=""2"">TOTALES:</td>"
  loc_AD6FD0: PopAdLdVar
  loc_AD6FD1: FLdPr Me
  loc_AD6FD4: MemLdRfVar from_stack_1.htmFile
  loc_AD6FD7: LdPrVar
  loc_AD6FD9: LateMemCall
  loc_AD6FDF: FLdRfVar var_B4
  loc_AD6FE2: LitVarStr var_9C, "TotaDebeAcum"
  loc_AD6FE7: PopAdLdVar
  loc_AD6FE8: FLdRfVar var_B0
  loc_AD6FEB: FLdRfVar var_88
  loc_AD6FEE: FLdPr Me
  loc_AD6FF1: MemLdRfVar from_stack_1.global_76
  loc_AD6FF4: NewIfNullPr clsbase
  loc_AD6FF7: from_stack_1v = clsbase.RsFrmGet()
  loc_AD6FFC: FLdPr var_88
  loc_AD6FFF:  = Me.Fields
  loc_AD7004: FLdPr var_B0
  loc_AD7007: from_stack_2 = Me.Item(from_stack_1)
  loc_AD700C: LitI2_Byte 0
  loc_AD700E: LitVar_Missing var_100
  loc_AD7011: LitI2_Byte &HFF
  loc_AD7013: FLdZeroAd var_B4
  loc_AD7016: CVarAd
  loc_AD701A: PopAdLdVar
  loc_AD701B: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_AD7020: FStStr var_148
  loc_AD7023: LitI4 0
  loc_AD7028: LitI4 0
  loc_AD702D: LitI2_Byte 0
  loc_AD702F: LitStr "right"
  loc_AD7032: FLdZeroAd var_148
  loc_AD7035: FStStrNoPop var_124
  loc_AD7038: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD703D: CVarStr var_110
  loc_AD7040: PopAdLdVar
  loc_AD7041: FLdPr Me
  loc_AD7044: MemLdRfVar from_stack_1.htmFile
  loc_AD7047: LdPrVar
  loc_AD7049: LateMemCall
  loc_AD704F: FFreeStr var_124 = ""
  loc_AD7056: FFreeAd var_88 = ""
  loc_AD705D: FFreeVar var_C4 = "": var_100 = ""
  loc_AD7066: FLdRfVar var_B4
  loc_AD7069: LitVarStr var_9C, "TotaHabeAcum"
  loc_AD706E: PopAdLdVar
  loc_AD706F: FLdRfVar var_B0
  loc_AD7072: FLdRfVar var_88
  loc_AD7075: FLdPr Me
  loc_AD7078: MemLdRfVar from_stack_1.global_76
  loc_AD707B: NewIfNullPr clsbase
  loc_AD707E: from_stack_1v = clsbase.RsFrmGet()
  loc_AD7083: FLdPr var_88
  loc_AD7086:  = Me.Fields
  loc_AD708B: FLdPr var_B0
  loc_AD708E: from_stack_2 = Me.Item(from_stack_1)
  loc_AD7093: LitI2_Byte 0
  loc_AD7095: LitVar_Missing var_100
  loc_AD7098: LitI2_Byte &HFF
  loc_AD709A: FLdZeroAd var_B4
  loc_AD709D: CVarAd
  loc_AD70A1: PopAdLdVar
  loc_AD70A2: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_AD70A7: FStStr var_148
  loc_AD70AA: LitI4 0
  loc_AD70AF: LitI4 0
  loc_AD70B4: LitI2_Byte 0
  loc_AD70B6: LitStr "right"
  loc_AD70B9: FLdZeroAd var_148
  loc_AD70BC: FStStrNoPop var_124
  loc_AD70BF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD70C4: CVarStr var_110
  loc_AD70C7: PopAdLdVar
  loc_AD70C8: FLdPr Me
  loc_AD70CB: MemLdRfVar from_stack_1.htmFile
  loc_AD70CE: LdPrVar
  loc_AD70D0: LateMemCall
  loc_AD70D6: FFreeStr var_124 = ""
  loc_AD70DD: FFreeAd var_88 = ""
  loc_AD70E4: FFreeVar var_C4 = "": var_100 = ""
  loc_AD70ED: FLdRfVar var_B4
  loc_AD70F0: LitVarStr var_9C, "SaldoDeu"
  loc_AD70F5: PopAdLdVar
  loc_AD70F6: FLdRfVar var_B0
  loc_AD70F9: FLdRfVar var_88
  loc_AD70FC: FLdPr Me
  loc_AD70FF: MemLdRfVar from_stack_1.global_76
  loc_AD7102: NewIfNullPr clsbase
  loc_AD7105: from_stack_1v = clsbase.RsFrmGet()
  loc_AD710A: FLdPr var_88
  loc_AD710D:  = Me.Fields
  loc_AD7112: FLdPr var_B0
  loc_AD7115: from_stack_2 = Me.Item(from_stack_1)
  loc_AD711A: LitI2_Byte 0
  loc_AD711C: LitVar_Missing var_100
  loc_AD711F: LitI2_Byte &HFF
  loc_AD7121: FLdZeroAd var_B4
  loc_AD7124: CVarAd
  loc_AD7128: PopAdLdVar
  loc_AD7129: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_AD712E: FStStr var_148
  loc_AD7131: LitI4 0
  loc_AD7136: LitI4 0
  loc_AD713B: LitI2_Byte 0
  loc_AD713D: LitStr "right"
  loc_AD7140: FLdZeroAd var_148
  loc_AD7143: FStStrNoPop var_124
  loc_AD7146: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD714B: CVarStr var_110
  loc_AD714E: PopAdLdVar
  loc_AD714F: FLdPr Me
  loc_AD7152: MemLdRfVar from_stack_1.htmFile
  loc_AD7155: LdPrVar
  loc_AD7157: LateMemCall
  loc_AD715D: FFreeStr var_124 = ""
  loc_AD7164: FFreeAd var_88 = ""
  loc_AD716B: FFreeVar var_C4 = "": var_100 = ""
  loc_AD7174: FLdRfVar var_B4
  loc_AD7177: LitVarStr var_9C, "SaldoAcre"
  loc_AD717C: PopAdLdVar
  loc_AD717D: FLdRfVar var_B0
  loc_AD7180: FLdRfVar var_88
  loc_AD7183: FLdPr Me
  loc_AD7186: MemLdRfVar from_stack_1.global_76
  loc_AD7189: NewIfNullPr clsbase
  loc_AD718C: from_stack_1v = clsbase.RsFrmGet()
  loc_AD7191: FLdPr var_88
  loc_AD7194:  = Me.Fields
  loc_AD7199: FLdPr var_B0
  loc_AD719C: from_stack_2 = Me.Item(from_stack_1)
  loc_AD71A1: LitI2_Byte 0
  loc_AD71A3: LitVar_Missing var_100
  loc_AD71A6: LitI2_Byte &HFF
  loc_AD71A8: FLdZeroAd var_B4
  loc_AD71AB: CVarAd
  loc_AD71AF: PopAdLdVar
  loc_AD71B0: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_AD71B5: FStStr var_148
  loc_AD71B8: LitI4 0
  loc_AD71BD: LitI4 0
  loc_AD71C2: LitI2_Byte 0
  loc_AD71C4: LitStr "right"
  loc_AD71C7: FLdZeroAd var_148
  loc_AD71CA: FStStrNoPop var_124
  loc_AD71CD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD71D2: CVarStr var_110
  loc_AD71D5: PopAdLdVar
  loc_AD71D6: FLdPr Me
  loc_AD71D9: MemLdRfVar from_stack_1.htmFile
  loc_AD71DC: LdPrVar
  loc_AD71DE: LateMemCall
  loc_AD71E4: FFreeStr var_124 = ""
  loc_AD71EB: FFreeAd var_88 = ""
  loc_AD71F2: FFreeVar var_C4 = "": var_100 = ""
  loc_AD71FB: LitVarStr var_9C, "  </tr>"
  loc_AD7200: PopAdLdVar
  loc_AD7201: FLdPr Me
  loc_AD7204: MemLdRfVar from_stack_1.htmFile
  loc_AD7207: LdPrVar
  loc_AD7209: LateMemCall
  loc_AD720F: Call Proc_175_23_9819E0()
  loc_AD7214: FLdPr Me
  loc_AD7217: MemLdRfVar from_stack_1.htmFile
  loc_AD721A: LdPrVar
  loc_AD721C: LateMemCall
  loc_AD7222: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AD7227: ExitProcHresult
End Sub

Private Function Proc_175_22_A7CF28() 'A7CF28
  'Data Table: 465370
  loc_A7CB38: LitVarStr var_94, "<html>"
  loc_A7CB3D: PopAdLdVar
  loc_A7CB3E: FLdPr Me
  loc_A7CB41: MemLdRfVar from_stack_1.htmFile
  loc_A7CB44: LdPrVar
  loc_A7CB46: LateMemCall
  loc_A7CB4C: LitVarStr var_94, "<head>"
  loc_A7CB51: PopAdLdVar
  loc_A7CB52: FLdPr Me
  loc_A7CB55: MemLdRfVar from_stack_1.htmFile
  loc_A7CB58: LdPrVar
  loc_A7CB5A: LateMemCall
  loc_A7CB60: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A7CB65: PopAdLdVar
  loc_A7CB66: FLdPr Me
  loc_A7CB69: MemLdRfVar from_stack_1.htmFile
  loc_A7CB6C: LdPrVar
  loc_A7CB6E: LateMemCall
  loc_A7CB74: LitStr "<title>"
  loc_A7CB77: FLdRfVar var_A8
  loc_A7CB7A: FLdPr Me
  loc_A7CB7D:  = Me.Caption
  loc_A7CB82: ILdRf var_A8
  loc_A7CB85: ConcatStr
  loc_A7CB86: FStStrNoPop var_AC
  loc_A7CB89: LitStr "</title>"
  loc_A7CB8C: ConcatStr
  loc_A7CB8D: CVarStr var_BC
  loc_A7CB90: PopAdLdVar
  loc_A7CB91: FLdPr Me
  loc_A7CB94: MemLdRfVar from_stack_1.htmFile
  loc_A7CB97: LdPrVar
  loc_A7CB99: LateMemCall
  loc_A7CB9F: FFreeStr var_A8 = ""
  loc_A7CBA6: FFree1Var var_BC = ""
  loc_A7CBA9: LitStr vbNullString
  loc_A7CBAC: ILdRf Me
  loc_A7CBAF: CastAd
  loc_A7CBB2: FStAdFunc var_C0
  loc_A7CBB5: FLdRfVar var_C0
  loc_A7CBB8: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A7CBBD: FFree1Ad var_C0
  loc_A7CBC0: LitI4 0
  loc_A7CBC5: FStStrCopy var_AC
  loc_A7CBC8: FLdRfVar var_AC
  loc_A7CBCB: LitI4 0
  loc_A7CBD0: FStStrCopy var_A8
  loc_A7CBD3: FLdRfVar var_A8
  loc_A7CBD6: LitI2_Byte 0
  loc_A7CBD8: PopTmpLdAd2 var_C2
  loc_A7CBDB: FLdPr Me
  loc_A7CBDE: MemLdRfVar from_stack_1.htmFile
  loc_A7CBE1: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A7CBE6: FFreeStr var_A8 = ""
  loc_A7CBED: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A7CBF2: PopAdLdVar
  loc_A7CBF3: FLdPr Me
  loc_A7CBF6: MemLdRfVar from_stack_1.htmFile
  loc_A7CBF9: LdPrVar
  loc_A7CBFB: LateMemCall
  loc_A7CC01: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A7CC06: PopAdLdVar
  loc_A7CC07: FLdPr Me
  loc_A7CC0A: MemLdRfVar from_stack_1.htmFile
  loc_A7CC0D: LdPrVar
  loc_A7CC0F: LateMemCall
  loc_A7CC15: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><p>"
  loc_A7CC1A: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A7CC1F: FStVarCopyObj var_BC
  loc_A7CC22: FLdRfVar var_BC
  loc_A7CC25: FLdRfVar var_D4
  loc_A7CC28: ImpAdCallFPR4  = Ucase()
  loc_A7CC2D: FLdRfVar var_D4
  loc_A7CC30: ConcatVar var_E4
  loc_A7CC34: LitVarStr var_F4, "</p>"
  loc_A7CC39: ConcatVar var_104
  loc_A7CC3D: PopAdLdVar
  loc_A7CC3E: FLdPr Me
  loc_A7CC41: MemLdRfVar from_stack_1.htmFile
  loc_A7CC44: LdPrVar
  loc_A7CC46: LateMemCall
  loc_A7CC4C: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A7CC57: LitStr "       <p>"
  loc_A7CC5A: FLdRfVar var_A8
  loc_A7CC5D: FLdPr Me
  loc_A7CC60:  = Me.Caption
  loc_A7CC65: ILdRf var_A8
  loc_A7CC68: ConcatStr
  loc_A7CC69: FStStrNoPop var_AC
  loc_A7CC6C: LitStr "</p>"
  loc_A7CC6F: ConcatStr
  loc_A7CC70: CVarStr var_BC
  loc_A7CC73: PopAdLdVar
  loc_A7CC74: FLdPr Me
  loc_A7CC77: MemLdRfVar from_stack_1.htmFile
  loc_A7CC7A: LdPrVar
  loc_A7CC7C: LateMemCall
  loc_A7CC82: FFreeStr var_A8 = ""
  loc_A7CC89: FFree1Var var_BC = ""
  loc_A7CC8C: LitVarStr var_94, "    </th>"
  loc_A7CC91: PopAdLdVar
  loc_A7CC92: FLdPr Me
  loc_A7CC95: MemLdRfVar from_stack_1.htmFile
  loc_A7CC98: LdPrVar
  loc_A7CC9A: LateMemCall
  loc_A7CCA0: LitVarStr var_94, "  </tr>"
  loc_A7CCA5: PopAdLdVar
  loc_A7CCA6: FLdPr Me
  loc_A7CCA9: MemLdRfVar from_stack_1.htmFile
  loc_A7CCAC: LdPrVar
  loc_A7CCAE: LateMemCall
  loc_A7CCB4: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_A7CCB9: PopAdLdVar
  loc_A7CCBA: FLdPr Me
  loc_A7CCBD: MemLdRfVar from_stack_1.htmFile
  loc_A7CCC0: LdPrVar
  loc_A7CCC2: LateMemCall
  loc_A7CCC8: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_A7CCCD: PopAdLdVar
  loc_A7CCCE: FLdPr Me
  loc_A7CCD1: MemLdRfVar from_stack_1.htmFile
  loc_A7CCD4: LdPrVar
  loc_A7CCD6: LateMemCall
  loc_A7CCDC: LitStr "      Desde: <span class=""Normal"">"
  loc_A7CCDF: FLdPr Me
  loc_A7CCE2: VCallAd Control_ID_mskDesde
  loc_A7CCE5: FStAdFunc var_C0
  loc_A7CCE8: FLdPr var_C0
  loc_A7CCEB: LateIdLdVar var_BC DispID_15 0
  loc_A7CCF2: CStrVarTmp
  loc_A7CCF3: FStStrNoPop var_A8
  loc_A7CCF6: ConcatStr
  loc_A7CCF7: FStStrNoPop var_AC
  loc_A7CCFA: LitStr "</span><br>"
  loc_A7CCFD: ConcatStr
  loc_A7CCFE: CVarStr var_D4
  loc_A7CD01: PopAdLdVar
  loc_A7CD02: FLdPr Me
  loc_A7CD05: MemLdRfVar from_stack_1.htmFile
  loc_A7CD08: LdPrVar
  loc_A7CD0A: LateMemCall
  loc_A7CD10: FFreeStr var_A8 = ""
  loc_A7CD17: FFree1Ad var_C0
  loc_A7CD1A: FFreeVar var_BC = ""
  loc_A7CD21: LitStr "      Hasta: <span class=""Normal"">"
  loc_A7CD24: FLdPr Me
  loc_A7CD27: VCallAd Control_ID_mskHasta
  loc_A7CD2A: FStAdFunc var_C0
  loc_A7CD2D: FLdPr var_C0
  loc_A7CD30: LateIdLdVar var_BC DispID_15 0
  loc_A7CD37: CStrVarTmp
  loc_A7CD38: FStStrNoPop var_A8
  loc_A7CD3B: ConcatStr
  loc_A7CD3C: FStStrNoPop var_AC
  loc_A7CD3F: LitStr "</span><br>"
  loc_A7CD42: ConcatStr
  loc_A7CD43: CVarStr var_D4
  loc_A7CD46: PopAdLdVar
  loc_A7CD47: FLdPr Me
  loc_A7CD4A: MemLdRfVar from_stack_1.htmFile
  loc_A7CD4D: LdPrVar
  loc_A7CD4F: LateMemCall
  loc_A7CD55: FFreeStr var_A8 = ""
  loc_A7CD5C: FFree1Ad var_C0
  loc_A7CD5F: FFreeVar var_BC = ""
  loc_A7CD66: FLdRfVar var_C2
  loc_A7CD69: FLdPr Me
  loc_A7CD6C: VCallAd Control_ID_FechMobaOpt
  loc_A7CD6F: FStAdFunc var_C0
  loc_A7CD72: FLdPr var_C0
  loc_A7CD75:  = Me.Value
  loc_A7CD7A: FLdI2 var_C2
  loc_A7CD7D: LitI2_Byte &HFF
  loc_A7CD7F: EqI2
  loc_A7CD80: FFree1Ad var_C0
  loc_A7CD83: BranchF loc_A7CD9D
  loc_A7CD86: LitVarStr var_94, "      Por fecha de LIBRO BANCO<br>"
  loc_A7CD8B: PopAdLdVar
  loc_A7CD8C: FLdPr Me
  loc_A7CD8F: MemLdRfVar from_stack_1.htmFile
  loc_A7CD92: LdPrVar
  loc_A7CD94: LateMemCall
  loc_A7CD9A: Branch loc_A7CDD1
  loc_A7CD9D: FLdRfVar var_C2
  loc_A7CDA0: FLdPr Me
  loc_A7CDA3: VCallAd Control_ID_FeinMobaOpt
  loc_A7CDA6: FStAdFunc var_C0
  loc_A7CDA9: FLdPr var_C0
  loc_A7CDAC:  = Me.Value
  loc_A7CDB1: FLdI2 var_C2
  loc_A7CDB4: LitI2_Byte &HFF
  loc_A7CDB6: EqI2
  loc_A7CDB7: FFree1Ad var_C0
  loc_A7CDBA: BranchF loc_A7CDD1
  loc_A7CDBD: LitVarStr var_94, "      Por fecha de RECAUDACION<br>"
  loc_A7CDC2: PopAdLdVar
  loc_A7CDC3: FLdPr Me
  loc_A7CDC6: MemLdRfVar from_stack_1.htmFile
  loc_A7CDC9: LdPrVar
  loc_A7CDCB: LateMemCall
  loc_A7CDD1: LitVarStr var_94, "    </th>"
  loc_A7CDD6: PopAdLdVar
  loc_A7CDD7: FLdPr Me
  loc_A7CDDA: MemLdRfVar from_stack_1.htmFile
  loc_A7CDDD: LdPrVar
  loc_A7CDDF: LateMemCall
  loc_A7CDE5: LitVarStr var_94, "  </tr>"
  loc_A7CDEA: PopAdLdVar
  loc_A7CDEB: FLdPr Me
  loc_A7CDEE: MemLdRfVar from_stack_1.htmFile
  loc_A7CDF1: LdPrVar
  loc_A7CDF3: LateMemCall
  loc_A7CDF9: LitVarStr var_94, "</table>"
  loc_A7CDFE: PopAdLdVar
  loc_A7CDFF: FLdPr Me
  loc_A7CE02: MemLdRfVar from_stack_1.htmFile
  loc_A7CE05: LdPrVar
  loc_A7CE07: LateMemCall
  loc_A7CE0D: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A7CE12: PopAdLdVar
  loc_A7CE13: FLdPr Me
  loc_A7CE16: MemLdRfVar from_stack_1.htmFile
  loc_A7CE19: LdPrVar
  loc_A7CE1B: LateMemCall
  loc_A7CE21: LitVarStr var_94, "  <THEAD>"
  loc_A7CE26: PopAdLdVar
  loc_A7CE27: FLdPr Me
  loc_A7CE2A: MemLdRfVar from_stack_1.htmFile
  loc_A7CE2D: LdPrVar
  loc_A7CE2F: LateMemCall
  loc_A7CE35: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A7CE3A: PopAdLdVar
  loc_A7CE3B: FLdPr Me
  loc_A7CE3E: MemLdRfVar from_stack_1.htmFile
  loc_A7CE41: LdPrVar
  loc_A7CE43: LateMemCall
  loc_A7CE49: LitVarStr var_94, "    <th rowspan=""2"">Fecha</th>"
  loc_A7CE4E: PopAdLdVar
  loc_A7CE4F: FLdPr Me
  loc_A7CE52: MemLdRfVar from_stack_1.htmFile
  loc_A7CE55: LdPrVar
  loc_A7CE57: LateMemCall
  loc_A7CE5D: LitVarStr var_94, "    <th rowspan=""2"">Detalle</th>"
  loc_A7CE62: PopAdLdVar
  loc_A7CE63: FLdPr Me
  loc_A7CE66: MemLdRfVar from_stack_1.htmFile
  loc_A7CE69: LdPrVar
  loc_A7CE6B: LateMemCall
  loc_A7CE71: LitVarStr var_94, "    <th rowspan=""2"">Debe</th>"
  loc_A7CE76: PopAdLdVar
  loc_A7CE77: FLdPr Me
  loc_A7CE7A: MemLdRfVar from_stack_1.htmFile
  loc_A7CE7D: LdPrVar
  loc_A7CE7F: LateMemCall
  loc_A7CE85: LitVarStr var_94, "    <th rowspan=""2"">Haber</th>"
  loc_A7CE8A: PopAdLdVar
  loc_A7CE8B: FLdPr Me
  loc_A7CE8E: MemLdRfVar from_stack_1.htmFile
  loc_A7CE91: LdPrVar
  loc_A7CE93: LateMemCall
  loc_A7CE99: LitVarStr var_94, "    <th colspan=""2"">Saldo de caja</th>"
  loc_A7CE9E: PopAdLdVar
  loc_A7CE9F: FLdPr Me
  loc_A7CEA2: MemLdRfVar from_stack_1.htmFile
  loc_A7CEA5: LdPrVar
  loc_A7CEA7: LateMemCall
  loc_A7CEAD: LitVarStr var_94, "  </tr>"
  loc_A7CEB2: PopAdLdVar
  loc_A7CEB3: FLdPr Me
  loc_A7CEB6: MemLdRfVar from_stack_1.htmFile
  loc_A7CEB9: LdPrVar
  loc_A7CEBB: LateMemCall
  loc_A7CEC1: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A7CEC6: PopAdLdVar
  loc_A7CEC7: FLdPr Me
  loc_A7CECA: MemLdRfVar from_stack_1.htmFile
  loc_A7CECD: LdPrVar
  loc_A7CECF: LateMemCall
  loc_A7CED5: LitVarStr var_94, "    <th>Deudor</th>"
  loc_A7CEDA: PopAdLdVar
  loc_A7CEDB: FLdPr Me
  loc_A7CEDE: MemLdRfVar from_stack_1.htmFile
  loc_A7CEE1: LdPrVar
  loc_A7CEE3: LateMemCall
  loc_A7CEE9: LitVarStr var_94, "    <th>Acreedor</th>"
  loc_A7CEEE: PopAdLdVar
  loc_A7CEEF: FLdPr Me
  loc_A7CEF2: MemLdRfVar from_stack_1.htmFile
  loc_A7CEF5: LdPrVar
  loc_A7CEF7: LateMemCall
  loc_A7CEFD: LitVarStr var_94, "  </tr>"
  loc_A7CF02: PopAdLdVar
  loc_A7CF03: FLdPr Me
  loc_A7CF06: MemLdRfVar from_stack_1.htmFile
  loc_A7CF09: LdPrVar
  loc_A7CF0B: LateMemCall
  loc_A7CF11: LitVarStr var_94, "  </THEAD>"
  loc_A7CF16: PopAdLdVar
  loc_A7CF17: FLdPr Me
  loc_A7CF1A: MemLdRfVar from_stack_1.htmFile
  loc_A7CF1D: LdPrVar
  loc_A7CF1F: LateMemCall
  loc_A7CF25: ExitProcHresult
  loc_A7CF26: SubCy
End Function

Private Function Proc_175_23_9819E0() '9819E0
  'Data Table: 465370
  loc_9819A0: LitVarStr var_94, "</table>"
  loc_9819A5: PopAdLdVar
  loc_9819A6: FLdPr Me
  loc_9819A9: MemLdRfVar from_stack_1.htmFile
  loc_9819AC: LdPrVar
  loc_9819AE: LateMemCall
  loc_9819B4: LitVarStr var_94, "</body>"
  loc_9819B9: PopAdLdVar
  loc_9819BA: FLdPr Me
  loc_9819BD: MemLdRfVar from_stack_1.htmFile
  loc_9819C0: LdPrVar
  loc_9819C2: LateMemCall
  loc_9819C8: LitVarStr var_94, "</html>"
  loc_9819CD: PopAdLdVar
  loc_9819CE: FLdPr Me
  loc_9819D1: MemLdRfVar from_stack_1.htmFile
  loc_9819D4: LdPrVar
  loc_9819D6: LateMemCall
  loc_9819DC: ExitProcHresult
End Function
