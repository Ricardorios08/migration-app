VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodedepositos
  Caption = "Subdiario de depósitos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodedepositos.frx":0000
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
    OleObjectBlob = "rptSubdiariodedepositos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptSubdiariodedepositos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodedepositos.frx":0B9C
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
      Picture = "rptSubdiariodedepositos.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodedepositos.frx":1142
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
      OleObjectBlob = "rptSubdiariodedepositos.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiariodedepositos.frx":170C
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
    OleObjectBlob = "rptSubdiariodedepositos.frx":1794
  End
End

Attribute VB_Name = "rptSubdiariodedepositos"

Public bGenerado As Boolean

Private Type UDT_1_0059A1E0
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_00617ED4
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B7EC
  'Data Table: 449C78
  loc_98B7B4: FLdPr Me
  loc_98B7B7: VCallAd Control_ID_statusBar
  loc_98B7BA: FStAdFunc var_88
  loc_98B7BD: FLdPr var_88
  loc_98B7C0: LateIdLdVar var_98 DispID_1 0
  loc_98B7C7: CStrVarTmp
  loc_98B7C8: CVarStr var_A8
  loc_98B7CB: PopAdLdVar
  loc_98B7CC: FLdPr Me
  loc_98B7CF: VCallAd Control_ID_statusBar
  loc_98B7D2: FStAdFunc var_BC
  loc_98B7D5: FLdPr var_BC
  loc_98B7D8: LateIdSt
  loc_98B7DD: FFreeAd var_88 = ""
  loc_98B7E4: FFreeVar var_98 = ""
  loc_98B7EB: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95ADF0
  'Data Table: 449C78
  loc_95ADD8: LitI2_Byte 0
  loc_95ADDA: ILdRf Me
  loc_95ADDD: CastAd
  loc_95ADE0: FStAdFunc var_88
  loc_95ADE3: FLdRfVar var_88
  loc_95ADE6: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95ADEB: FFree1Ad var_88
  loc_95ADEE: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95AE3C
  'Data Table: 449C78
  loc_95AE24: ILdRf Me
  loc_95AE27: CastAd
  loc_95AE2A: FStAdFunc var_88
  loc_95AE2D: FLdRfVar var_88
  loc_95AE30: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95AE35: FFree1Ad var_88
  loc_95AE38: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97ABF4
  'Data Table: 449C78
  loc_97ABC4: LitVarStr var_94, "Cerrando..."
  loc_97ABC9: PopAdLdVar
  loc_97ABCA: FLdPr Me
  loc_97ABCD: VCallAd Control_ID_statusBar
  loc_97ABD0: FStAdFunc var_A8
  loc_97ABD3: FLdPr var_A8
  loc_97ABD6: LateIdSt
  loc_97ABDB: FFree1Ad var_A8
  loc_97ABDE: ILdRf Me
  loc_97ABE1: FStAdNoPop
  loc_97ABE5: ImpAdLdRf MemVar_C44F9C
  loc_97ABE8: NewIfNullPr Me
  loc_97ABEB: Me.Global.Unload from_stack_1
  loc_97ABF0: FFree1Ad var_A8
  loc_97ABF3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BBAE0
  'Data Table: 449C78
  loc_9BBA30: LitI2_Byte 0
  loc_9BBA32: FLdPr Me
  loc_9BBA35: MemStI2 bGenerado
  loc_9BBA38: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BBA3D: LitI2_Byte 0
  loc_9BBA3F: PopTmpLdAd2 var_86
  loc_9BBA42: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BBA47: CVarDate var_A8
  loc_9BBA4B: FLdRfVar var_B8
  loc_9BBA4E: ImpAdCallFPR4  = Year()
  loc_9BBA53: LitI2_Byte 0
  loc_9BBA55: PopTmpLdAd2 var_BA
  loc_9BBA58: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BBA5D: CVarDate var_DC
  loc_9BBA61: FLdRfVar var_EC
  loc_9BBA64: ImpAdCallFPR4  = Month()
  loc_9BBA69: LitI2_Byte 1
  loc_9BBA6B: FLdRfVar var_EC
  loc_9BBA6E: CI2Var
  loc_9BBA6F: FLdRfVar var_B8
  loc_9BBA72: CI2Var
  loc_9BBA73: FLdRfVar var_FC
  loc_9BBA76: ImpAdCallFPR4  = DateSerial(, , )
  loc_9BBA7B: FLdRfVar var_FC
  loc_9BBA7E: CStrVarTmp
  loc_9BBA7F: CVarStr var_10C
  loc_9BBA82: PopAdLdVar
  loc_9BBA83: FLdPr Me
  loc_9BBA86: VCallAd Control_ID_mskDesde
  loc_9BBA89: FStAdFunc var_120
  loc_9BBA8C: FLdPr var_120
  loc_9BBA8F: LateIdSt
  loc_9BBA94: FFree1Ad var_120
  loc_9BBA97: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9BBAA6: ImpAdLdFPR8 MemVar_C3D04C
  loc_9BBAA9: CStrDate
  loc_9BBAAB: CVarStr var_A8
  loc_9BBAAE: PopAdLdVar
  loc_9BBAAF: FLdPr Me
  loc_9BBAB2: VCallAd Control_ID_mskHasta
  loc_9BBAB5: FStAdFunc var_120
  loc_9BBAB8: FLdPr var_120
  loc_9BBABB: LateIdSt
  loc_9BBAC0: FFree1Ad var_120
  loc_9BBAC3: FFree1Var var_A8 = ""
  loc_9BBAC6: Call HabilitarCriterio()
  loc_9BBACB: ILdRf Me
  loc_9BBACE: CastAd
  loc_9BBAD1: FStAdFunc var_120
  loc_9BBAD4: FLdRfVar var_120
  loc_9BBAD7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BBADC: FFree1Ad var_120
  loc_9BBADF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95AE88
  'Data Table: 449C78
  loc_95AE70: ILdRf Me
  loc_95AE73: CastAd
  loc_95AE76: FStAdFunc var_88
  loc_95AE79: FLdRfVar var_88
  loc_95AE7C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95AE81: FFree1Ad var_88
  loc_95AE84: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '953670
  'Data Table: 449C78
  loc_95365C: FLdPr Me
  loc_95365F: VCallAd Control_ID_mskDesde
  loc_953662: CVarAd
  loc_953666: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95366B: FFree1Var var_94 = ""
  loc_95366E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C5978
  'Data Table: 449C78
  loc_9C58B4: FLdPr Me
  loc_9C58B7: VCallAd Control_ID_mskDesde
  loc_9C58BA: FStAdFunc var_88
  loc_9C58BD: FLdPr var_88
  loc_9C58C0: LateIdLdVar var_98 DispID_22 0
  loc_9C58C7: CStrVarTmp
  loc_9C58C8: FStStrNoPop var_9C
  loc_9C58CB: LitStr vbNullString
  loc_9C58CE: NeStr
  loc_9C58D0: FFree1Str var_9C
  loc_9C58D3: FFree1Ad var_88
  loc_9C58D6: FFree1Var var_98 = ""
  loc_9C58D9: BranchF loc_9C5974
  loc_9C58DC: FLdPr Me
  loc_9C58DF: VCallAd Control_ID_mskDesde
  loc_9C58E2: FStAdFunc var_88
  loc_9C58E5: FLdPr var_88
  loc_9C58E8: LateIdLdVar var_98 DispID_15 0
  loc_9C58EF: PopAd
  loc_9C58F1: FLdPr Me
  loc_9C58F4: VCallAd Control_ID_mskDesde
  loc_9C58F7: FStAdFunc var_AC
  loc_9C58FA: LitI2_Byte &HFF
  loc_9C58FC: PopTmpLdAd2 var_A2
  loc_9C58FF: FLdZeroAd var_AC
  loc_9C5902: FStAdFunc var_A0
  loc_9C5905: FLdRfVar var_A0
  loc_9C5908: LitStr vbNullString
  loc_9C590B: LitI2_Byte 0
  loc_9C590D: LitI2_Byte 0
  loc_9C590F: FLdRfVar var_98
  loc_9C5912: CStrVarTmp
  loc_9C5913: FStStrNoPop var_9C
  loc_9C5916: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C591B: FStStrNoPop var_A8
  loc_9C591E: FLdPr Me
  loc_9C5921: MemStStrCopy
  loc_9C5925: FFreeStr var_9C = ""
  loc_9C592C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C5935: FFree1Var var_98 = ""
  loc_9C5938: FLdPr Me
  loc_9C593B: VCallAd Control_ID_mskDesde
  loc_9C593E: FStAdFunc var_B0
  loc_9C5941: LitNothing
  loc_9C5943: CastAd
  loc_9C5946: FStAdFunc var_AC
  loc_9C5949: FLdRfVar var_AC
  loc_9C594C: FLdZeroAd var_B0
  loc_9C594F: FStAdFuncNoPop
  loc_9C5952: CastAd
  loc_9C5955: FStAdFunc var_A0
  loc_9C5958: FLdRfVar var_A0
  loc_9C595B: FLdPr Me
  loc_9C595E: MemLdRfVar from_stack_1.global_100
  loc_9C5961: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C5966: IStI2 arg_C
  loc_9C5969: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C5974: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '952AA0
  'Data Table: 449C78
  loc_952A8C: FLdPr Me
  loc_952A8F: VCallAd Control_ID_mskHasta
  loc_952A92: CVarAd
  loc_952A96: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952A9B: FFree1Var var_94 = ""
  loc_952A9E: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B19EC
  'Data Table: 449C78
  loc_9B1950: FLdPr Me
  loc_9B1953: VCallAd Control_ID_mskHasta
  loc_9B1956: FStAdFunc var_88
  loc_9B1959: FLdPr var_88
  loc_9B195C: LateIdLdVar var_98 DispID_15 0
  loc_9B1963: PopAd
  loc_9B1965: FLdPr Me
  loc_9B1968: VCallAd Control_ID_mskHasta
  loc_9B196B: FStAdFunc var_AC
  loc_9B196E: LitI2_Byte &HFF
  loc_9B1970: PopTmpLdAd2 var_A2
  loc_9B1973: FLdZeroAd var_AC
  loc_9B1976: FStAdFunc var_A0
  loc_9B1979: FLdRfVar var_A0
  loc_9B197C: LitStr vbNullString
  loc_9B197F: LitI2_Byte 0
  loc_9B1981: LitI2_Byte 0
  loc_9B1983: FLdRfVar var_98
  loc_9B1986: CStrVarTmp
  loc_9B1987: FStStrNoPop var_9C
  loc_9B198A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B198F: FStStrNoPop var_A8
  loc_9B1992: FLdPr Me
  loc_9B1995: MemStStrCopy
  loc_9B1999: FFreeStr var_9C = ""
  loc_9B19A0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B19A9: FFree1Var var_98 = ""
  loc_9B19AC: FLdPr Me
  loc_9B19AF: VCallAd Control_ID_mskHasta
  loc_9B19B2: FStAdFunc var_B0
  loc_9B19B5: LitNothing
  loc_9B19B7: CastAd
  loc_9B19BA: FStAdFunc var_AC
  loc_9B19BD: FLdRfVar var_AC
  loc_9B19C0: FLdZeroAd var_B0
  loc_9B19C3: FStAdFuncNoPop
  loc_9B19C6: CastAd
  loc_9B19C9: FStAdFunc var_A0
  loc_9B19CC: FLdRfVar var_A0
  loc_9B19CF: FLdPr Me
  loc_9B19D2: MemLdRfVar from_stack_1.global_100
  loc_9B19D5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B19DA: IStI2 arg_C
  loc_9B19DD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B19E8: ExitProcHresult
End Function

Private Sub cmdCalHasta_Click() '97ED30
  'Data Table: 449C78
  loc_97ECFC: LitVar_Missing var_A4
  loc_97ECFF: PopAdLdVar
  loc_97ED00: LitVarI4
  loc_97ED08: PopAdLdVar
  loc_97ED09: ImpAdLdRf MemVar_C3D9A8
  loc_97ED0C: NewIfNullPr frmCalendario
  loc_97ED0F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97ED14: ImpAdLdRf MemVar_C3D038
  loc_97ED17: CDargRef
  loc_97ED1B: FLdPr Me
  loc_97ED1E: VCallAd Control_ID_mskHasta
  loc_97ED21: FStAdFunc var_A8
  loc_97ED24: FLdPr var_A8
  loc_97ED27: LateIdSt
  loc_97ED2C: FFree1Ad var_A8
  loc_97ED2F: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97EE00
  'Data Table: 449C78
  loc_97EDCC: LitVar_Missing var_A4
  loc_97EDCF: PopAdLdVar
  loc_97EDD0: LitVarI4
  loc_97EDD8: PopAdLdVar
  loc_97EDD9: ImpAdLdRf MemVar_C3D9A8
  loc_97EDDC: NewIfNullPr frmCalendario
  loc_97EDDF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97EDE4: ImpAdLdRf MemVar_C3D038
  loc_97EDE7: CDargRef
  loc_97EDEB: FLdPr Me
  loc_97EDEE: VCallAd Control_ID_mskDesde
  loc_97EDF1: FStAdFunc var_A8
  loc_97EDF4: FLdPr var_A8
  loc_97EDF7: LateIdSt
  loc_97EDFC: FFree1Ad var_A8
  loc_97EDFF: ExitProcHresult
End Sub

Private Sub Form_Load() '96BAE8
  'Data Table: 449C78
  loc_96BAC8: LitI2_Byte &HFF
  loc_96BACA: ImpAdStI2 MemVar_C3D840
  loc_96BACD: ILdRf Me
  loc_96BAD0: CastAd
  loc_96BAD3: FStAdFunc var_88
  loc_96BAD6: FLdRfVar var_88
  loc_96BAD9: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96BADE: FFree1Ad var_88
  loc_96BAE1: Call cmdNueva_Click()
  loc_96BAE6: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95AB90
  'Data Table: 449C78
  loc_95AB78: FLdPr Me
  loc_95AB7B: VCallAd Control_ID_wbbReporte
  loc_95AB7E: FStAdFunc var_88
  loc_95AB81: FLdRfVar var_88
  loc_95AB84: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95AB89: FFree1Ad var_88
  loc_95AB8C: ExitProcHresult
End Sub

Public Function bGeneradoGet() '44A8E8
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44A8F7
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A298C
  'Data Table: 449C78
  loc_9A2928: LitI4 0
  loc_9A292D: LitI4 3
  loc_9A2932: FLdRfVar var_88
  loc_9A2935: Redim
  loc_9A293F: FLdPr Me
  loc_9A2942: VCallAd Control_ID_mskDesde
  loc_9A2945: CVarAd
  loc_9A2949: ParmAry1St
  loc_9A294F: FLdPr Me
  loc_9A2952: VCallAd Control_ID_cmdCalDesde
  loc_9A2955: CVarAd
  loc_9A2959: ParmAry1St
  loc_9A295F: FLdPr Me
  loc_9A2962: VCallAd Control_ID_mskHasta
  loc_9A2965: CVarAd
  loc_9A2969: ParmAry1St
  loc_9A296F: FLdPr Me
  loc_9A2972: VCallAd Control_ID_cmdCalHasta
  loc_9A2975: CVarAd
  loc_9A2979: ParmAry1St
  loc_9A297F: FLdRfVar var_88
  loc_9A2982: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A2987: FLdRfVar var_88
  loc_9A298A: Erase
  loc_9A298B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AEF5E4
  'Data Table: 449C78
  loc_AEEED4: LitStr vbNullString
  loc_AEEED7: FLdPr Me
  loc_AEEEDA: MemStStrCopy
  loc_AEEEDE: LitI2_Byte 0
  loc_AEEEE0: PopTmpLdAd2 var_8E
  loc_AEEEE3: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_AEEEE8: FLdPr Me
  loc_AEEEEB: MemLdStr global_100
  loc_AEEEEE: LitStr vbNullString
  loc_AEEEF1: NeStr
  loc_AEEEF3: BranchF loc_AEEEF9
  loc_AEEEF6: Branch loc_AEF5B9
  loc_AEEEF9: LitI2_Byte 0
  loc_AEEEFB: PopTmpLdAd2 var_8E
  loc_AEEEFE: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AEEF03: FLdPr Me
  loc_AEEF06: MemLdStr global_100
  loc_AEEF09: LitStr vbNullString
  loc_AEEF0C: NeStr
  loc_AEEF0E: BranchF loc_AEEF14
  loc_AEEF11: Branch loc_AEF5B9
  loc_AEEF14: FLdPr Me
  loc_AEEF17: MemLdI2 bGenerado
  loc_AEEF1A: BranchF loc_AEEF1E
  loc_AEEF1D: ExitProcHresult
  loc_AEEF1E: LitVarStr var_A0, "Generando reporte..."
  loc_AEEF23: PopAdLdVar
  loc_AEEF24: FLdPr Me
  loc_AEEF27: VCallAd Control_ID_statusBar
  loc_AEEF2A: FStAdFunc var_B4
  loc_AEEF2D: FLdPr var_B4
  loc_AEEF30: LateIdSt
  loc_AEEF35: FFree1Ad var_B4
  loc_AEEF38: LitI4 &HB
  loc_AEEF3D: CI2I4
  loc_AEEF3E: FLdPr Me
  loc_AEEF41: Me.MousePointer = from_stack_1
  loc_AEEF46: FLdPr Me
  loc_AEEF49: VCallAd Control_ID_mskDesde
  loc_AEEF4C: FStAdFunc var_B4
  loc_AEEF4F: FLdPr var_B4
  loc_AEEF52: LateIdLdVar var_C4 DispID_22 0
  loc_AEEF59: CStrVarTmp
  loc_AEEF5A: FStStrNoPop var_C8
  loc_AEEF5D: LitStr vbNullString
  loc_AEEF60: NeStr
  loc_AEEF62: FFree1Str var_C8
  loc_AEEF65: FFree1Ad var_B4
  loc_AEEF68: FFree1Var var_C4 = ""
  loc_AEEF6B: BranchF loc_AEEFBD
  loc_AEEF6E: FLdPr Me
  loc_AEEF71: VCallAd Control_ID_mskDesde
  loc_AEEF74: FStAdFunc var_B4
  loc_AEEF77: FLdPr var_B4
  loc_AEEF7A: LateIdLdVar var_C4 DispID_15 0
  loc_AEEF81: PopAd
  loc_AEEF83: LitStr " AND FechCaja >= "
  loc_AEEF86: LitI4 1
  loc_AEEF8B: LitI4 1
  loc_AEEF90: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AEEF95: FStVarCopyObj var_E8
  loc_AEEF98: FLdRfVar var_E8
  loc_AEEF9B: FLdRfVar var_C4
  loc_AEEF9E: CStrVarTmp
  loc_AEEF9F: CVarStr var_D8
  loc_AEEFA2: ImpAdCallI2 Format$(, )
  loc_AEEFA7: FStStrNoPop var_C8
  loc_AEEFAA: ConcatStr
  loc_AEEFAB: FStStr var_88
  loc_AEEFAE: FFree1Str var_C8
  loc_AEEFB1: FFree1Ad var_B4
  loc_AEEFB4: FFreeVar var_C4 = "": var_D8 = ""
  loc_AEEFBD: FLdPr Me
  loc_AEEFC0: VCallAd Control_ID_mskHasta
  loc_AEEFC3: FStAdFunc var_B4
  loc_AEEFC6: FLdPr var_B4
  loc_AEEFC9: LateIdLdVar var_C4 DispID_22 0
  loc_AEEFD0: CStrVarTmp
  loc_AEEFD1: FStStrNoPop var_C8
  loc_AEEFD4: LitStr vbNullString
  loc_AEEFD7: NeStr
  loc_AEEFD9: FFree1Str var_C8
  loc_AEEFDC: FFree1Ad var_B4
  loc_AEEFDF: FFree1Var var_C4 = ""
  loc_AEEFE2: BranchF loc_AEF034
  loc_AEEFE5: FLdPr Me
  loc_AEEFE8: VCallAd Control_ID_mskHasta
  loc_AEEFEB: FStAdFunc var_B4
  loc_AEEFEE: FLdPr var_B4
  loc_AEEFF1: LateIdLdVar var_C4 DispID_15 0
  loc_AEEFF8: PopAd
  loc_AEEFFA: LitStr " AND FechCaja <= "
  loc_AEEFFD: LitI4 1
  loc_AEF002: LitI4 1
  loc_AEF007: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AEF00C: FStVarCopyObj var_E8
  loc_AEF00F: FLdRfVar var_E8
  loc_AEF012: FLdRfVar var_C4
  loc_AEF015: CStrVarTmp
  loc_AEF016: CVarStr var_D8
  loc_AEF019: ImpAdCallI2 Format$(, )
  loc_AEF01E: FStStrNoPop var_C8
  loc_AEF021: ConcatStr
  loc_AEF022: FStStr var_8C
  loc_AEF025: FFree1Str var_C8
  loc_AEF028: FFree1Ad var_B4
  loc_AEF02B: FFreeVar var_C4 = "": var_D8 = ""
  loc_AEF034: FLdPr Me
  loc_AEF037: MemLdRfVar from_stack_1.global_56
  loc_AEF03A: NewIfNullAd
  loc_AEF03D: FStAd var_EC 
  loc_AEF041: LitStr "SELECT DISTINCT cajadepo.CodiCuco, DetaCuco"
  loc_AEF044: LitStr " FROM cajadepo"
  loc_AEF047: ConcatStr
  loc_AEF048: FStStrNoPop var_C8
  loc_AEF04B: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = cajadepo.PeriInfo AND infogov.cuentacontable.CodiCuco = cajadepo.CodiCuco"
  loc_AEF04E: ConcatStr
  loc_AEF04F: FStStrNoPop var_F0
  loc_AEF052: LitStr " WHERE TRUE "
  loc_AEF055: ConcatStr
  loc_AEF056: FStStrNoPop var_F4
  loc_AEF059: ILdRf var_88
  loc_AEF05C: ConcatStr
  loc_AEF05D: FStStrNoPop var_F8
  loc_AEF060: ILdRf var_8C
  loc_AEF063: ConcatStr
  loc_AEF064: FStStrNoPop var_FC
  loc_AEF067: LitStr " ORDER BY CodiCuco"
  loc_AEF06A: ConcatStr
  loc_AEF06B: FStStrNoPop var_100
  loc_AEF06E: FLdPr var_EC
  loc_AEF071: Call clsbase.RedefineRS(from_stack_1v)
  loc_AEF076: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_AEF085: FLdRfVar var_104
  loc_AEF088: FLdPr var_EC
  loc_AEF08B: from_stack_1 = clsbase.RecordCount
  loc_AEF090: ILdRf var_104
  loc_AEF093: LitI4 0
  loc_AEF098: EqI4
  loc_AEF099: BranchF loc_AEF0AC
  loc_AEF09C: LitI4 0
  loc_AEF0A1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AEF0A4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AEF0A9: Branch loc_AEF5B9
  loc_AEF0AC: LitI2_Byte 0
  loc_AEF0AE: CStrUI1
  loc_AEF0B0: FStStrNoPop var_C8
  loc_AEF0B3: FLdPr Me
  loc_AEF0B6: MemStStrCopy
  loc_AEF0BA: FFree1Str var_C8
  loc_AEF0BD: LitI2_Byte 0
  loc_AEF0BF: CStrUI1
  loc_AEF0C1: FStStrNoPop var_C8
  loc_AEF0C4: FLdPr Me
  loc_AEF0C7: MemStStrCopy
  loc_AEF0CB: FFree1Str var_C8
  loc_AEF0CE: LitI4 1
  loc_AEF0D3: FLdRfVar var_104
  loc_AEF0D6: FLdPr Me
  loc_AEF0D9: MemLdRfVar from_stack_1.global_56
  loc_AEF0DC: NewIfNullPr clsbase
  loc_AEF0DF: from_stack_1 = clsbase.RecordCount
  loc_AEF0E4: ILdRf var_104
  loc_AEF0E7: FLdPr Me
  loc_AEF0EA: MemLdRfVar from_stack_1.global_80
  loc_AEF0ED: Redim
  loc_AEF0F7: FLdPr var_EC
  loc_AEF0FA: Call clsbase.MoveFirst()
  loc_AEF0FF: LitI2_Byte 1
  loc_AEF101: FLdPr Me
  loc_AEF104: MemLdRfVar from_stack_1.global_92
  loc_AEF107: FLdPr Me
  loc_AEF10A: MemLdStr global_80
  loc_AEF10D: LitI2_Byte 1
  loc_AEF10F: FnUBound
  loc_AEF111: CI2I4
  loc_AEF112: ForI2 var_108
  loc_AEF118: FLdRfVar var_110
  loc_AEF11B: LitVarStr var_A0, "CodiCuco"
  loc_AEF120: PopAdLdVar
  loc_AEF121: FLdRfVar var_10C
  loc_AEF124: FLdRfVar var_B4
  loc_AEF127: FLdPr var_EC
  loc_AEF12A: from_stack_1v = clsbase.RsFrmGet()
  loc_AEF12F: FLdPr var_B4
  loc_AEF132:  = Me.Fields
  loc_AEF137: FLdPr var_10C
  loc_AEF13A: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF13F: LitI2_Byte 0
  loc_AEF141: LitVar_Missing var_D8
  loc_AEF144: LitI2_Byte 0
  loc_AEF146: FLdZeroAd var_110
  loc_AEF149: CVarAd
  loc_AEF14D: PopAdLdVar
  loc_AEF14E: FLdPr Me
  loc_AEF151: MemLdI2 global_92
  loc_AEF154: CI4UI1
  loc_AEF155: FLdPr Me
  loc_AEF158: MemLdStr global_80
  loc_AEF15B: AryLock
  loc_AEF15E: Ary1LdPr
  loc_AEF15F: MemLdRfVar from_stack_1.global_0
  loc_AEF162: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF167: AryUnlock
  loc_AEF16A: FFreeAd var_B4 = ""
  loc_AEF171: FFreeVar var_C4 = ""
  loc_AEF178: FLdRfVar var_110
  loc_AEF17B: LitVarStr var_A0, "DetaCuco"
  loc_AEF180: PopAdLdVar
  loc_AEF181: FLdRfVar var_10C
  loc_AEF184: FLdRfVar var_B4
  loc_AEF187: FLdPr var_EC
  loc_AEF18A: from_stack_1v = clsbase.RsFrmGet()
  loc_AEF18F: FLdPr var_B4
  loc_AEF192:  = Me.Fields
  loc_AEF197: FLdPr var_10C
  loc_AEF19A: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF19F: LitI2_Byte 0
  loc_AEF1A1: LitVar_Missing var_D8
  loc_AEF1A4: LitI2_Byte 0
  loc_AEF1A6: FLdZeroAd var_110
  loc_AEF1A9: CVarAd
  loc_AEF1AD: PopAdLdVar
  loc_AEF1AE: FLdPr Me
  loc_AEF1B1: MemLdI2 global_92
  loc_AEF1B4: CI4UI1
  loc_AEF1B5: FLdPr Me
  loc_AEF1B8: MemLdStr global_80
  loc_AEF1BB: AryLock
  loc_AEF1BE: Ary1LdPr
  loc_AEF1BF: MemLdRfVar from_stack_1.global_4
  loc_AEF1C2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF1C7: AryUnlock
  loc_AEF1CA: FFreeAd var_B4 = ""
  loc_AEF1D1: FFreeVar var_C4 = ""
  loc_AEF1D8: FLdPr var_EC
  loc_AEF1DB: Call clsbase.MoveSiguiente()
  loc_AEF1E0: FLdPr Me
  loc_AEF1E3: MemLdRfVar from_stack_1.global_92
  loc_AEF1E6: NextI2 var_108, loc_AEF118
  loc_AEF1EB: LitI2_Byte 1
  loc_AEF1ED: FLdPr Me
  loc_AEF1F0: MemLdRfVar from_stack_1.global_92
  loc_AEF1F3: FLdPr Me
  loc_AEF1F6: MemLdStr global_80
  loc_AEF1F9: LitI2_Byte 1
  loc_AEF1FB: FnUBound
  loc_AEF1FD: CI2I4
  loc_AEF1FE: ForI2 var_118
  loc_AEF204: LitStr "SELECT FechCaja, CodiBanc, NumeMoba, DebeCaja, HabeCaja"
  loc_AEF207: LitStr " FROM cajadepo"
  loc_AEF20A: ConcatStr
  loc_AEF20B: FStStrNoPop var_C8
  loc_AEF20E: LitStr " WHERE CodiCuco = '"
  loc_AEF211: ConcatStr
  loc_AEF212: FStStrNoPop var_F0
  loc_AEF215: FLdPr Me
  loc_AEF218: MemLdI2 global_92
  loc_AEF21B: CI4UI1
  loc_AEF21C: FLdPr Me
  loc_AEF21F: MemLdStr global_80
  loc_AEF222: Ary1LdPr
  loc_AEF223: MemLdStr global_0
  loc_AEF226: ConcatStr
  loc_AEF227: FStStrNoPop var_F4
  loc_AEF22A: LitStr "'"
  loc_AEF22D: ConcatStr
  loc_AEF22E: FStStrNoPop var_F8
  loc_AEF231: ILdRf var_88
  loc_AEF234: ConcatStr
  loc_AEF235: FStStrNoPop var_FC
  loc_AEF238: ILdRf var_8C
  loc_AEF23B: ConcatStr
  loc_AEF23C: FStStrNoPop var_100
  loc_AEF23F: LitStr " ORDER BY FechCaja, CodiBanc, NumeMoba"
  loc_AEF242: ConcatStr
  loc_AEF243: FStStrNoPop var_11C
  loc_AEF246: FLdPr var_EC
  loc_AEF249: Call clsbase.RedefineRS(from_stack_1v)
  loc_AEF24E: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_AEF25F: FLdRfVar var_104
  loc_AEF262: FLdPr var_EC
  loc_AEF265: from_stack_1 = clsbase.RecordCount
  loc_AEF26A: ILdRf var_104
  loc_AEF26D: LitI4 0
  loc_AEF272: GtI4
  loc_AEF273: BranchF loc_AEF542
  loc_AEF276: FLdRfVar var_104
  loc_AEF279: FLdPr var_EC
  loc_AEF27C: from_stack_1 = clsbase.RecordCount
  loc_AEF281: LitI4 1
  loc_AEF286: ILdRf var_104
  loc_AEF289: FLdPr Me
  loc_AEF28C: MemLdI2 global_92
  loc_AEF28F: CI4UI1
  loc_AEF290: FLdPr Me
  loc_AEF293: MemLdStr global_80
  loc_AEF296: Ary1LdPr
  loc_AEF297: MemLdRfVar from_stack_1.global_8
  loc_AEF29A: Redim
  loc_AEF2A4: FLdPr var_EC
  loc_AEF2A7: Call clsbase.MoveFirst()
  loc_AEF2AC: LitI2_Byte 1
  loc_AEF2AE: FLdPr Me
  loc_AEF2B1: MemLdRfVar from_stack_1.global_94
  loc_AEF2B4: FLdPr Me
  loc_AEF2B7: MemLdI2 global_92
  loc_AEF2BA: CI4UI1
  loc_AEF2BB: FLdPr Me
  loc_AEF2BE: MemLdStr global_80
  loc_AEF2C1: Ary1LdPr
  loc_AEF2C2: MemLdStr global_8
  loc_AEF2C5: LitI2_Byte 1
  loc_AEF2C7: FnUBound
  loc_AEF2C9: CI2I4
  loc_AEF2CA: ForI2 var_120
  loc_AEF2D0: FLdRfVar var_110
  loc_AEF2D3: LitVarStr var_A0, "FechCaja"
  loc_AEF2D8: PopAdLdVar
  loc_AEF2D9: FLdRfVar var_10C
  loc_AEF2DC: FLdRfVar var_B4
  loc_AEF2DF: FLdPr var_EC
  loc_AEF2E2: from_stack_1v = clsbase.RsFrmGet()
  loc_AEF2E7: FLdPr var_B4
  loc_AEF2EA:  = Me.Fields
  loc_AEF2EF: FLdPr var_10C
  loc_AEF2F2: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF2F7: LitI2_Byte 0
  loc_AEF2F9: LitVar_Missing var_D8
  loc_AEF2FC: LitI2_Byte 0
  loc_AEF2FE: FLdZeroAd var_110
  loc_AEF301: CVarAd
  loc_AEF305: PopAdLdVar
  loc_AEF306: FLdPr Me
  loc_AEF309: MemLdI2 global_94
  loc_AEF30C: CI4UI1
  loc_AEF30D: FLdPr Me
  loc_AEF310: MemLdI2 global_92
  loc_AEF313: CI4UI1
  loc_AEF314: FLdPr Me
  loc_AEF317: MemLdStr global_80
  loc_AEF31A: AryLock
  loc_AEF31D: Ary1LdPr
  loc_AEF31E: MemLdStr global_8
  loc_AEF321: AryLock
  loc_AEF324: Ary1LdPr
  loc_AEF325: MemLdRfVar from_stack_1.global_0
  loc_AEF328: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF32D: AryUnlock
  loc_AEF330: AryUnlock
  loc_AEF333: FFreeAd var_B4 = ""
  loc_AEF33A: FFreeVar var_C4 = ""
  loc_AEF341: FLdRfVar var_110
  loc_AEF344: LitVarStr var_A0, "CodiBanc"
  loc_AEF349: PopAdLdVar
  loc_AEF34A: FLdRfVar var_10C
  loc_AEF34D: FLdRfVar var_B4
  loc_AEF350: FLdPr var_EC
  loc_AEF353: from_stack_1v = clsbase.RsFrmGet()
  loc_AEF358: FLdPr var_B4
  loc_AEF35B:  = Me.Fields
  loc_AEF360: FLdPr var_10C
  loc_AEF363: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF368: LitI2_Byte 0
  loc_AEF36A: LitVar_Missing var_D8
  loc_AEF36D: LitI2_Byte 0
  loc_AEF36F: FLdZeroAd var_110
  loc_AEF372: CVarAd
  loc_AEF376: PopAdLdVar
  loc_AEF377: FLdPr Me
  loc_AEF37A: MemLdI2 global_94
  loc_AEF37D: CI4UI1
  loc_AEF37E: FLdPr Me
  loc_AEF381: MemLdI2 global_92
  loc_AEF384: CI4UI1
  loc_AEF385: FLdPr Me
  loc_AEF388: MemLdStr global_80
  loc_AEF38B: AryLock
  loc_AEF38E: Ary1LdPr
  loc_AEF38F: MemLdStr global_8
  loc_AEF392: AryLock
  loc_AEF395: Ary1LdPr
  loc_AEF396: MemLdRfVar from_stack_1.global_4
  loc_AEF399: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF39E: AryUnlock
  loc_AEF3A1: AryUnlock
  loc_AEF3A4: FFreeAd var_B4 = ""
  loc_AEF3AB: FFreeVar var_C4 = ""
  loc_AEF3B2: FLdRfVar var_110
  loc_AEF3B5: LitVarStr var_A0, "NumeMoba"
  loc_AEF3BA: PopAdLdVar
  loc_AEF3BB: FLdRfVar var_10C
  loc_AEF3BE: FLdRfVar var_B4
  loc_AEF3C1: FLdPr var_EC
  loc_AEF3C4: from_stack_1v = clsbase.RsFrmGet()
  loc_AEF3C9: FLdPr var_B4
  loc_AEF3CC:  = Me.Fields
  loc_AEF3D1: FLdPr var_10C
  loc_AEF3D4: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF3D9: LitI2_Byte 0
  loc_AEF3DB: LitVar_Missing var_D8
  loc_AEF3DE: LitI2_Byte 0
  loc_AEF3E0: FLdZeroAd var_110
  loc_AEF3E3: CVarAd
  loc_AEF3E7: PopAdLdVar
  loc_AEF3E8: FLdPr Me
  loc_AEF3EB: MemLdI2 global_94
  loc_AEF3EE: CI4UI1
  loc_AEF3EF: FLdPr Me
  loc_AEF3F2: MemLdI2 global_92
  loc_AEF3F5: CI4UI1
  loc_AEF3F6: FLdPr Me
  loc_AEF3F9: MemLdStr global_80
  loc_AEF3FC: AryLock
  loc_AEF3FF: Ary1LdPr
  loc_AEF400: MemLdStr global_8
  loc_AEF403: AryLock
  loc_AEF406: Ary1LdPr
  loc_AEF407: MemLdRfVar from_stack_1.global_8
  loc_AEF40A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF40F: AryUnlock
  loc_AEF412: AryUnlock
  loc_AEF415: FFreeAd var_B4 = ""
  loc_AEF41C: FFreeVar var_C4 = ""
  loc_AEF423: FLdRfVar var_110
  loc_AEF426: LitVarStr var_A0, "DebeCaja"
  loc_AEF42B: PopAdLdVar
  loc_AEF42C: FLdRfVar var_10C
  loc_AEF42F: FLdRfVar var_B4
  loc_AEF432: FLdPr var_EC
  loc_AEF435: from_stack_1v = clsbase.RsFrmGet()
  loc_AEF43A: FLdPr var_B4
  loc_AEF43D:  = Me.Fields
  loc_AEF442: FLdPr var_10C
  loc_AEF445: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF44A: LitI2_Byte 0
  loc_AEF44C: FLdPr Me
  loc_AEF44F: MemLdI2 global_92
  loc_AEF452: CI4UI1
  loc_AEF453: FLdPr Me
  loc_AEF456: MemLdStr global_80
  loc_AEF459: AryLock
  loc_AEF45C: Ary1LdPr
  loc_AEF45D: MemLdRfVar from_stack_1.global_12
  loc_AEF460: CVarRef
  loc_AEF465: LitI2_Byte &HFF
  loc_AEF467: FLdZeroAd var_110
  loc_AEF46A: CVarAd
  loc_AEF46E: PopAdLdVar
  loc_AEF46F: FLdPr Me
  loc_AEF472: MemLdI2 global_94
  loc_AEF475: CI4UI1
  loc_AEF476: FLdPr Me
  loc_AEF479: MemLdI2 global_92
  loc_AEF47C: CI4UI1
  loc_AEF47D: FLdPr Me
  loc_AEF480: MemLdStr global_80
  loc_AEF483: AryLock
  loc_AEF486: Ary1LdPr
  loc_AEF487: MemLdStr global_8
  loc_AEF48A: AryLock
  loc_AEF48D: Ary1LdPr
  loc_AEF48E: MemLdRfVar from_stack_1.global_12
  loc_AEF491: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF496: AryUnlock
  loc_AEF499: AryUnlock
  loc_AEF49C: AryUnlock
  loc_AEF49F: FFreeAd var_B4 = ""
  loc_AEF4A6: FFree1Var var_C4 = ""
  loc_AEF4A9: FLdRfVar var_110
  loc_AEF4AC: LitVarStr var_A0, "HabeCaja"
  loc_AEF4B1: PopAdLdVar
  loc_AEF4B2: FLdRfVar var_10C
  loc_AEF4B5: FLdRfVar var_B4
  loc_AEF4B8: FLdPr var_EC
  loc_AEF4BB: from_stack_1v = clsbase.RsFrmGet()
  loc_AEF4C0: FLdPr var_B4
  loc_AEF4C3:  = Me.Fields
  loc_AEF4C8: FLdPr var_10C
  loc_AEF4CB: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF4D0: LitI2_Byte 0
  loc_AEF4D2: FLdPr Me
  loc_AEF4D5: MemLdI2 global_92
  loc_AEF4D8: CI4UI1
  loc_AEF4D9: FLdPr Me
  loc_AEF4DC: MemLdStr global_80
  loc_AEF4DF: AryLock
  loc_AEF4E2: Ary1LdPr
  loc_AEF4E3: MemLdRfVar from_stack_1.global_16
  loc_AEF4E6: CVarRef
  loc_AEF4EB: LitI2_Byte &HFF
  loc_AEF4ED: FLdZeroAd var_110
  loc_AEF4F0: CVarAd
  loc_AEF4F4: PopAdLdVar
  loc_AEF4F5: FLdPr Me
  loc_AEF4F8: MemLdI2 global_94
  loc_AEF4FB: CI4UI1
  loc_AEF4FC: FLdPr Me
  loc_AEF4FF: MemLdI2 global_92
  loc_AEF502: CI4UI1
  loc_AEF503: FLdPr Me
  loc_AEF506: MemLdStr global_80
  loc_AEF509: AryLock
  loc_AEF50C: Ary1LdPr
  loc_AEF50D: MemLdStr global_8
  loc_AEF510: AryLock
  loc_AEF513: Ary1LdPr
  loc_AEF514: MemLdRfVar from_stack_1.global_16
  loc_AEF517: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF51C: AryUnlock
  loc_AEF51F: AryUnlock
  loc_AEF522: AryUnlock
  loc_AEF525: FFreeAd var_B4 = ""
  loc_AEF52C: FFree1Var var_C4 = ""
  loc_AEF52F: FLdPr var_EC
  loc_AEF532: Call clsbase.MoveSiguiente()
  loc_AEF537: FLdPr Me
  loc_AEF53A: MemLdRfVar from_stack_1.global_94
  loc_AEF53D: NextI2 var_120, loc_AEF2D0
  loc_AEF542: LitI2_Byte 0
  loc_AEF544: FLdPr Me
  loc_AEF547: MemLdRfVar from_stack_1.global_84
  loc_AEF54A: CVarRef
  loc_AEF54F: LitI2_Byte &HFF
  loc_AEF551: FLdPr Me
  loc_AEF554: MemLdI2 global_92
  loc_AEF557: CI4UI1
  loc_AEF558: FLdPr Me
  loc_AEF55B: MemLdStr global_80
  loc_AEF55E: Ary1LdPr
  loc_AEF55F: MemLdStr global_12
  loc_AEF562: CVarStr var_A0
  loc_AEF565: PopAdLdVar
  loc_AEF566: FLdPr Me
  loc_AEF569: MemLdRfVar from_stack_1.global_96
  loc_AEF56C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF571: LitI2_Byte 0
  loc_AEF573: FLdPr Me
  loc_AEF576: MemLdRfVar from_stack_1.global_88
  loc_AEF579: CVarRef
  loc_AEF57E: LitI2_Byte &HFF
  loc_AEF580: FLdPr Me
  loc_AEF583: MemLdI2 global_92
  loc_AEF586: CI4UI1
  loc_AEF587: FLdPr Me
  loc_AEF58A: MemLdStr global_80
  loc_AEF58D: Ary1LdPr
  loc_AEF58E: MemLdStr global_16
  loc_AEF591: CVarStr var_A0
  loc_AEF594: PopAdLdVar
  loc_AEF595: FLdPr Me
  loc_AEF598: MemLdRfVar from_stack_1.global_96
  loc_AEF59B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF5A0: FLdPr Me
  loc_AEF5A3: MemLdRfVar from_stack_1.global_92
  loc_AEF5A6: NextI2 var_118, loc_AEF204
  loc_AEF5AB: LitNothing
  loc_AEF5AD: FStAd var_EC 
  loc_AEF5B1: LitI2_Byte &HFF
  loc_AEF5B3: FLdPr Me
  loc_AEF5B6: MemStI2 bGenerado
  loc_AEF5B9: LitI4 0
  loc_AEF5BE: CI2I4
  loc_AEF5BF: FLdPr Me
  loc_AEF5C2: Me.MousePointer = from_stack_1
  loc_AEF5C7: LitVarStr var_A0, vbNullString
  loc_AEF5CC: PopAdLdVar
  loc_AEF5CD: FLdPr Me
  loc_AEF5D0: VCallAd Control_ID_statusBar
  loc_AEF5D3: FStAdFunc var_B4
  loc_AEF5D6: FLdPr var_B4
  loc_AEF5D9: LateIdSt
  loc_AEF5DE: FFree1Ad var_B4
  loc_AEF5E1: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AD9B08
  'Data Table: 449C78
  loc_AD94BC: FLdRfVar var_88
  loc_AD94BF: LitI2_Byte 0
  loc_AD94C1: LitI2_Byte &HFF
  loc_AD94C3: ImpAdLdI4 MemVar_C3D83C
  loc_AD94C6: FLdPr Me
  loc_AD94C9: MemLdRfVar from_stack_1.global_60
  loc_AD94CC: NewIfNullPr IFileSystem3
  loc_AD94CF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AD94D4: ILdRf var_88
  loc_AD94D7: FLdPr Me
  loc_AD94DA: MemStVarAd
  loc_AD94DE: FFree1Ad var_88
  loc_AD94E1: Call Proc_241_19_ACB770()
  loc_AD94E6: LitI2_Byte 1
  loc_AD94E8: FLdPr Me
  loc_AD94EB: MemLdRfVar from_stack_1.global_92
  loc_AD94EE: FLdPr Me
  loc_AD94F1: MemLdStr global_80
  loc_AD94F4: LitI2_Byte 1
  loc_AD94F6: FnUBound
  loc_AD94F8: CI2I4
  loc_AD94F9: ForI2 var_8C
  loc_AD94FF: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AD9504: PopAdLdVar
  loc_AD9505: FLdPr Me
  loc_AD9508: MemLdRfVar from_stack_1.global_64
  loc_AD950B: LdPrVar
  loc_AD950D: LateMemCall
  loc_AD9513: LitStr "    <td rowspan="""
  loc_AD9516: FLdPr Me
  loc_AD9519: MemLdI2 global_92
  loc_AD951C: CI4UI1
  loc_AD951D: FLdPr Me
  loc_AD9520: MemLdStr global_80
  loc_AD9523: Ary1LdPr
  loc_AD9524: MemLdStr global_8
  loc_AD9527: LitI2_Byte 1
  loc_AD9529: FnUBound
  loc_AD952B: LitI4 1
  loc_AD9530: AddI4
  loc_AD9531: CStrI4
  loc_AD9533: FStStrNoPop var_B0
  loc_AD9536: ConcatStr
  loc_AD9537: FStStrNoPop var_B4
  loc_AD953A: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_AD953D: ConcatStr
  loc_AD953E: FStStrNoPop var_B8
  loc_AD9541: FLdPr Me
  loc_AD9544: MemLdI2 global_92
  loc_AD9547: CI4UI1
  loc_AD9548: FLdPr Me
  loc_AD954B: MemLdStr global_80
  loc_AD954E: Ary1LdPr
  loc_AD954F: MemLdStr global_0
  loc_AD9552: ConcatStr
  loc_AD9553: FStStrNoPop var_BC
  loc_AD9556: LitStr "<br>"
  loc_AD9559: ConcatStr
  loc_AD955A: FStStrNoPop var_C0
  loc_AD955D: FLdPr Me
  loc_AD9560: MemLdI2 global_92
  loc_AD9563: CI4UI1
  loc_AD9564: FLdPr Me
  loc_AD9567: MemLdStr global_80
  loc_AD956A: Ary1LdPr
  loc_AD956B: MemLdStr global_4
  loc_AD956E: ConcatStr
  loc_AD956F: FStStrNoPop var_C4
  loc_AD9572: LitStr "</td>"
  loc_AD9575: ConcatStr
  loc_AD9576: CVarStr var_D4
  loc_AD9579: PopAdLdVar
  loc_AD957A: FLdPr Me
  loc_AD957D: MemLdRfVar from_stack_1.global_64
  loc_AD9580: LdPrVar
  loc_AD9582: LateMemCall
  loc_AD9588: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AD9597: FFree1Var var_D4 = ""
  loc_AD959A: LitI2_Byte 1
  loc_AD959C: FLdPr Me
  loc_AD959F: MemLdRfVar from_stack_1.global_94
  loc_AD95A2: FLdPr Me
  loc_AD95A5: MemLdI2 global_92
  loc_AD95A8: CI4UI1
  loc_AD95A9: FLdPr Me
  loc_AD95AC: MemLdStr global_80
  loc_AD95AF: Ary1LdPr
  loc_AD95B0: MemLdStr global_8
  loc_AD95B3: LitI2_Byte 1
  loc_AD95B5: FnUBound
  loc_AD95B7: CI2I4
  loc_AD95B8: ForI2 var_D8
  loc_AD95BE: FLdPr Me
  loc_AD95C1: MemLdI2 global_94
  loc_AD95C4: CI4UI1
  loc_AD95C5: FLdPr Me
  loc_AD95C8: MemLdI2 global_92
  loc_AD95CB: CI4UI1
  loc_AD95CC: FLdPr Me
  loc_AD95CF: MemLdStr global_80
  loc_AD95D2: AryLock
  loc_AD95D5: Ary1LdPr
  loc_AD95D6: MemLdStr global_8
  loc_AD95D9: AryLock
  loc_AD95DC: Ary1LdRf
  loc_AD95DD: FStR4 var_E4
  loc_AD95E0: FLdPr Me
  loc_AD95E3: MemLdI2 global_94
  loc_AD95E6: LitI2_Byte 1
  loc_AD95E8: NeI2
  loc_AD95E9: BranchF loc_AD9600
  loc_AD95EC: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AD95F1: PopAdLdVar
  loc_AD95F2: FLdPr Me
  loc_AD95F5: MemLdRfVar from_stack_1.global_64
  loc_AD95F8: LdPrVar
  loc_AD95FA: LateMemCall
  loc_AD9600: LitI4 0
  loc_AD9605: LitI4 0
  loc_AD960A: LitI2_Byte 0
  loc_AD960C: LitStr "center"
  loc_AD960F: FMemLdR4 var_E4(0)
  loc_AD9614: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD9619: CVarStr var_D4
  loc_AD961C: PopAdLdVar
  loc_AD961D: FLdPr Me
  loc_AD9620: MemLdRfVar from_stack_1.global_64
  loc_AD9623: LdPrVar
  loc_AD9625: LateMemCall
  loc_AD962B: FFree1Var var_D4 = ""
  loc_AD962E: LitI4 0
  loc_AD9633: LitI4 0
  loc_AD9638: LitI2_Byte 0
  loc_AD963A: LitStr "right"
  loc_AD963D: FMemLdR4 var_E4(4)
  loc_AD9642: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD9647: CVarStr var_D4
  loc_AD964A: PopAdLdVar
  loc_AD964B: FLdPr Me
  loc_AD964E: MemLdRfVar from_stack_1.global_64
  loc_AD9651: LdPrVar
  loc_AD9653: LateMemCall
  loc_AD9659: FFree1Var var_D4 = ""
  loc_AD965C: LitI4 0
  loc_AD9661: LitI4 0
  loc_AD9666: LitI2_Byte 0
  loc_AD9668: LitStr "right"
  loc_AD966B: FMemLdR4 var_E4(8)
  loc_AD9670: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD9675: CVarStr var_D4
  loc_AD9678: PopAdLdVar
  loc_AD9679: FLdPr Me
  loc_AD967C: MemLdRfVar from_stack_1.global_64
  loc_AD967F: LdPrVar
  loc_AD9681: LateMemCall
  loc_AD9687: FFree1Var var_D4 = ""
  loc_AD968A: LitI4 0
  loc_AD968F: LitI4 0
  loc_AD9694: LitI2_Byte 0
  loc_AD9696: LitStr "right"
  loc_AD9699: FMemLdR4 var_E4(12)
  loc_AD969E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD96A3: CVarStr var_D4
  loc_AD96A6: PopAdLdVar
  loc_AD96A7: FLdPr Me
  loc_AD96AA: MemLdRfVar from_stack_1.global_64
  loc_AD96AD: LdPrVar
  loc_AD96AF: LateMemCall
  loc_AD96B5: FFree1Var var_D4 = ""
  loc_AD96B8: LitI4 0
  loc_AD96BD: LitI4 0
  loc_AD96C2: LitI2_Byte 0
  loc_AD96C4: LitStr "right"
  loc_AD96C7: FMemLdR4 var_E4(16)
  loc_AD96CC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD96D1: CVarStr var_D4
  loc_AD96D4: PopAdLdVar
  loc_AD96D5: FLdPr Me
  loc_AD96D8: MemLdRfVar from_stack_1.global_64
  loc_AD96DB: LdPrVar
  loc_AD96DD: LateMemCall
  loc_AD96E3: FFree1Var var_D4 = ""
  loc_AD96E6: LitVarStr var_9C, "  </tr>"
  loc_AD96EB: PopAdLdVar
  loc_AD96EC: FLdPr Me
  loc_AD96EF: MemLdRfVar from_stack_1.global_64
  loc_AD96F2: LdPrVar
  loc_AD96F4: LateMemCall
  loc_AD96FA: LitI4 0
  loc_AD96FF: FStR4 var_E4
  loc_AD9702: AryUnlock
  loc_AD9705: AryUnlock
  loc_AD9708: FLdPr Me
  loc_AD970B: MemLdRfVar from_stack_1.global_94
  loc_AD970E: NextI2 var_D8, loc_AD95BE
  loc_AD9713: LitVarStr var_9C, "  <tr>"
  loc_AD9718: PopAdLdVar
  loc_AD9719: FLdPr Me
  loc_AD971C: MemLdRfVar from_stack_1.global_64
  loc_AD971F: LdPrVar
  loc_AD9721: LateMemCall
  loc_AD9727: LitVarStr var_9C, "    <th colspan=""2"" align=""left"">&nbsp;</th>"
  loc_AD972C: PopAdLdVar
  loc_AD972D: FLdPr Me
  loc_AD9730: MemLdRfVar from_stack_1.global_64
  loc_AD9733: LdPrVar
  loc_AD9735: LateMemCall
  loc_AD973B: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_AD9740: PopAdLdVar
  loc_AD9741: FLdPr Me
  loc_AD9744: MemLdRfVar from_stack_1.global_64
  loc_AD9747: LdPrVar
  loc_AD9749: LateMemCall
  loc_AD974F: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD9752: FLdPr Me
  loc_AD9755: MemLdI2 global_92
  loc_AD9758: CI4UI1
  loc_AD9759: FLdPr Me
  loc_AD975C: MemLdStr global_80
  loc_AD975F: Ary1LdPr
  loc_AD9760: MemLdStr global_12
  loc_AD9763: ConcatStr
  loc_AD9764: FStStrNoPop var_B0
  loc_AD9767: LitStr "</td>"
  loc_AD976A: ConcatStr
  loc_AD976B: CVarStr var_D4
  loc_AD976E: PopAdLdVar
  loc_AD976F: FLdPr Me
  loc_AD9772: MemLdRfVar from_stack_1.global_64
  loc_AD9775: LdPrVar
  loc_AD9777: LateMemCall
  loc_AD977D: FFree1Str var_B0
  loc_AD9780: FFree1Var var_D4 = ""
  loc_AD9783: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD9786: FLdPr Me
  loc_AD9789: MemLdI2 global_92
  loc_AD978C: CI4UI1
  loc_AD978D: FLdPr Me
  loc_AD9790: MemLdStr global_80
  loc_AD9793: Ary1LdPr
  loc_AD9794: MemLdStr global_16
  loc_AD9797: ConcatStr
  loc_AD9798: FStStrNoPop var_B0
  loc_AD979B: LitStr "</td>"
  loc_AD979E: ConcatStr
  loc_AD979F: CVarStr var_D4
  loc_AD97A2: PopAdLdVar
  loc_AD97A3: FLdPr Me
  loc_AD97A6: MemLdRfVar from_stack_1.global_64
  loc_AD97A9: LdPrVar
  loc_AD97AB: LateMemCall
  loc_AD97B1: FFree1Str var_B0
  loc_AD97B4: FFree1Var var_D4 = ""
  loc_AD97B7: LitVarStr var_9C, "  </tr>"
  loc_AD97BC: PopAdLdVar
  loc_AD97BD: FLdPr Me
  loc_AD97C0: MemLdRfVar from_stack_1.global_64
  loc_AD97C3: LdPrVar
  loc_AD97C5: LateMemCall
  loc_AD97CB: FLdPr Me
  loc_AD97CE: MemLdRfVar from_stack_1.global_92
  loc_AD97D1: NextI2 var_8C, loc_AD94FF
  loc_AD97D6: LitVarStr var_9C, "  <tr><td colspan=""6"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AD97DB: PopAdLdVar
  loc_AD97DC: FLdPr Me
  loc_AD97DF: MemLdRfVar from_stack_1.global_64
  loc_AD97E2: LdPrVar
  loc_AD97E4: LateMemCall
  loc_AD97EA: LitVarStr var_9C, "  <tr>"
  loc_AD97EF: PopAdLdVar
  loc_AD97F0: FLdPr Me
  loc_AD97F3: MemLdRfVar from_stack_1.global_64
  loc_AD97F6: LdPrVar
  loc_AD97F8: LateMemCall
  loc_AD97FE: LitVarStr var_9C, "    <td colspan=""3"" align=""left"">&nbsp;</th>"
  loc_AD9803: PopAdLdVar
  loc_AD9804: FLdPr Me
  loc_AD9807: MemLdRfVar from_stack_1.global_64
  loc_AD980A: LdPrVar
  loc_AD980C: LateMemCall
  loc_AD9812: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AD9817: PopAdLdVar
  loc_AD9818: FLdPr Me
  loc_AD981B: MemLdRfVar from_stack_1.global_64
  loc_AD981E: LdPrVar
  loc_AD9820: LateMemCall
  loc_AD9826: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD9829: FLdPr Me
  loc_AD982C: MemLdStr global_84
  loc_AD982F: ConcatStr
  loc_AD9830: FStStrNoPop var_B0
  loc_AD9833: LitStr "</td>"
  loc_AD9836: ConcatStr
  loc_AD9837: CVarStr var_D4
  loc_AD983A: PopAdLdVar
  loc_AD983B: FLdPr Me
  loc_AD983E: MemLdRfVar from_stack_1.global_64
  loc_AD9841: LdPrVar
  loc_AD9843: LateMemCall
  loc_AD9849: FFree1Str var_B0
  loc_AD984C: FFree1Var var_D4 = ""
  loc_AD984F: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD9852: FLdPr Me
  loc_AD9855: MemLdStr global_88
  loc_AD9858: ConcatStr
  loc_AD9859: FStStrNoPop var_B0
  loc_AD985C: LitStr "</td>"
  loc_AD985F: ConcatStr
  loc_AD9860: CVarStr var_D4
  loc_AD9863: PopAdLdVar
  loc_AD9864: FLdPr Me
  loc_AD9867: MemLdRfVar from_stack_1.global_64
  loc_AD986A: LdPrVar
  loc_AD986C: LateMemCall
  loc_AD9872: FFree1Str var_B0
  loc_AD9875: FFree1Var var_D4 = ""
  loc_AD9878: LitVarStr var_9C, "  </tr>"
  loc_AD987D: PopAdLdVar
  loc_AD987E: FLdPr Me
  loc_AD9881: MemLdRfVar from_stack_1.global_64
  loc_AD9884: LdPrVar
  loc_AD9886: LateMemCall
  loc_AD988C: LitVarStr var_9C, "  <tr><td colspan=""6"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AD9891: PopAdLdVar
  loc_AD9892: FLdPr Me
  loc_AD9895: MemLdRfVar from_stack_1.global_64
  loc_AD9898: LdPrVar
  loc_AD989A: LateMemCall
  loc_AD98A0: FLdPr Me
  loc_AD98A3: MemLdStr global_88
  loc_AD98A6: CR8Str
  loc_AD98A8: FLdPr Me
  loc_AD98AB: MemLdStr global_84
  loc_AD98AE: CR8Str
  loc_AD98B0: SubR4
  loc_AD98B1: CR8R8
  loc_AD98B2: LitI2_Byte 0
  loc_AD98B4: CR8I2
  loc_AD98B5: GtR4
  loc_AD98B6: BranchF loc_AD98FC
  loc_AD98B9: LitI2_Byte 0
  loc_AD98BB: LitVar_Missing var_D4
  loc_AD98BE: LitI2_Byte &HFF
  loc_AD98C0: FLdPr Me
  loc_AD98C3: MemLdStr global_88
  loc_AD98C6: CR8Str
  loc_AD98C8: FLdPr Me
  loc_AD98CB: MemLdStr global_84
  loc_AD98CE: CR8Str
  loc_AD98D0: SubR4
  loc_AD98D1: CVarR8
  loc_AD98D5: PopAdLdVar
  loc_AD98D6: FLdRfVar var_EC
  loc_AD98D9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD98DE: FFree1Var var_D4 = ""
  loc_AD98E1: LitI2_Byte 0
  loc_AD98E3: LitVar_Missing var_D4
  loc_AD98E6: LitI2_Byte &HFF
  loc_AD98E8: LitVarStr var_9C, "0"
  loc_AD98ED: PopAdLdVar
  loc_AD98EE: FLdRfVar var_F0
  loc_AD98F1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD98F6: FFree1Var var_D4 = ""
  loc_AD98F9: Branch loc_AD993C
  loc_AD98FC: LitI2_Byte 0
  loc_AD98FE: LitVar_Missing var_D4
  loc_AD9901: LitI2_Byte &HFF
  loc_AD9903: FLdPr Me
  loc_AD9906: MemLdStr global_84
  loc_AD9909: CR8Str
  loc_AD990B: FLdPr Me
  loc_AD990E: MemLdStr global_88
  loc_AD9911: CR8Str
  loc_AD9913: SubR4
  loc_AD9914: CVarR8
  loc_AD9918: PopAdLdVar
  loc_AD9919: FLdRfVar var_F0
  loc_AD991C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD9921: FFree1Var var_D4 = ""
  loc_AD9924: LitI2_Byte 0
  loc_AD9926: LitVar_Missing var_D4
  loc_AD9929: LitI2_Byte &HFF
  loc_AD992B: LitVarStr var_9C, "0"
  loc_AD9930: PopAdLdVar
  loc_AD9931: FLdRfVar var_EC
  loc_AD9934: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD9939: FFree1Var var_D4 = ""
  loc_AD993C: LitStr "SELECT CajaPaco, DetaCuco"
  loc_AD993F: LitStr " FROM paraconta"
  loc_AD9942: ConcatStr
  loc_AD9943: FStStrNoPop var_B0
  loc_AD9946: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = CajaPaco"
  loc_AD9949: ConcatStr
  loc_AD994A: FStStrNoPop var_B4
  loc_AD994D: LitStr " WHERE paraconta.PeriInfo = "
  loc_AD9950: ConcatStr
  loc_AD9951: CVarStr var_120
  loc_AD9954: FLdPr Me
  loc_AD9957: VCallAd Control_ID_mskDesde
  loc_AD995A: FStAdFunc var_88
  loc_AD995D: FLdPr var_88
  loc_AD9960: LateIdLdVar var_D4 DispID_15 0
  loc_AD9967: CStrVarTmp
  loc_AD9968: CVarStr var_100
  loc_AD996B: FLdRfVar var_110
  loc_AD996E: ImpAdCallFPR4  = Year()
  loc_AD9973: FLdRfVar var_110
  loc_AD9976: ConcatVar var_130
  loc_AD997A: CStrVarVal var_B8
  loc_AD997E: FLdRfVar var_E8
  loc_AD9981: NewIfNullPr clsparaconta
  loc_AD9984: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_AD9989: FFreeStr var_B0 = "": var_B4 = ""
  loc_AD9992: FFree1Ad var_88
  loc_AD9995: FFreeVar var_D4 = "": var_100 = "": var_120 = "": var_110 = ""
  loc_AD99A2: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_AD99A7: PopAdLdVar
  loc_AD99A8: FLdPr Me
  loc_AD99AB: MemLdRfVar from_stack_1.global_64
  loc_AD99AE: LdPrVar
  loc_AD99B0: LateMemCall
  loc_AD99B6: LitVarStr var_AC, "    <td class=""Titulo2"" colspan=""3"" align=""left"">"
  loc_AD99BB: FLdRfVar var_D4
  loc_AD99BE: FLdRfVar var_138
  loc_AD99C1: LitVarStr var_9C, "CajaPaco"
  loc_AD99C6: PopAdLdVar
  loc_AD99C7: FLdRfVar var_134
  loc_AD99CA: FLdRfVar var_88
  loc_AD99CD: FLdRfVar var_E8
  loc_AD99D0: NewIfNullPr clsparaconta
  loc_AD99D3: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AD99D8: FLdPr var_88
  loc_AD99DB:  = Me.Fields
  loc_AD99E0: FLdPr var_134
  loc_AD99E3: from_stack_2 = Me.Item(from_stack_1)
  loc_AD99E8: FLdPr var_138
  loc_AD99EB:  = Me.Value
  loc_AD99F0: FLdRfVar var_D4
  loc_AD99F3: ConcatVar var_100
  loc_AD99F7: LitVarStr var_148, " - "
  loc_AD99FC: ConcatVar var_110
  loc_AD9A00: FLdRfVar var_120
  loc_AD9A03: FLdRfVar var_164
  loc_AD9A06: LitVarStr var_160, "DetaCuco"
  loc_AD9A0B: PopAdLdVar
  loc_AD9A0C: FLdRfVar var_150
  loc_AD9A0F: FLdRfVar var_14C
  loc_AD9A12: FLdRfVar var_E8
  loc_AD9A15: NewIfNullPr clsparaconta
  loc_AD9A18: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AD9A1D: FLdPr var_14C
  loc_AD9A20:  = Me.Fields
  loc_AD9A25: FLdPr var_150
  loc_AD9A28: from_stack_2 = Me.Item(from_stack_1)
  loc_AD9A2D: FLdPr var_164
  loc_AD9A30:  = Me.Value
  loc_AD9A35: FLdRfVar var_120
  loc_AD9A38: ConcatVar var_130
  loc_AD9A3C: LitVarStr var_174, "</th>"
  loc_AD9A41: ConcatVar var_184
  loc_AD9A45: PopAdLdVar
  loc_AD9A46: FLdPr Me
  loc_AD9A49: MemLdRfVar from_stack_1.global_64
  loc_AD9A4C: LdPrVar
  loc_AD9A4E: LateMemCall
  loc_AD9A54: FFreeAd var_88 = "": var_134 = "": var_138 = "": var_14C = "": var_150 = ""
  loc_AD9A63: FFreeVar var_D4 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = ""
  loc_AD9A72: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AD9A77: PopAdLdVar
  loc_AD9A78: FLdPr Me
  loc_AD9A7B: MemLdRfVar from_stack_1.global_64
  loc_AD9A7E: LdPrVar
  loc_AD9A80: LateMemCall
  loc_AD9A86: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD9A89: ILdRf var_EC
  loc_AD9A8C: ConcatStr
  loc_AD9A8D: FStStrNoPop var_B0
  loc_AD9A90: LitStr "</td>"
  loc_AD9A93: ConcatStr
  loc_AD9A94: CVarStr var_D4
  loc_AD9A97: PopAdLdVar
  loc_AD9A98: FLdPr Me
  loc_AD9A9B: MemLdRfVar from_stack_1.global_64
  loc_AD9A9E: LdPrVar
  loc_AD9AA0: LateMemCall
  loc_AD9AA6: FFree1Str var_B0
  loc_AD9AA9: FFree1Var var_D4 = ""
  loc_AD9AAC: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD9AAF: ILdRf var_F0
  loc_AD9AB2: ConcatStr
  loc_AD9AB3: FStStrNoPop var_B0
  loc_AD9AB6: LitStr "</td>"
  loc_AD9AB9: ConcatStr
  loc_AD9ABA: CVarStr var_D4
  loc_AD9ABD: PopAdLdVar
  loc_AD9ABE: FLdPr Me
  loc_AD9AC1: MemLdRfVar from_stack_1.global_64
  loc_AD9AC4: LdPrVar
  loc_AD9AC6: LateMemCall
  loc_AD9ACC: FFree1Str var_B0
  loc_AD9ACF: FFree1Var var_D4 = ""
  loc_AD9AD2: LitVarStr var_9C, "  </tr>"
  loc_AD9AD7: PopAdLdVar
  loc_AD9AD8: FLdPr Me
  loc_AD9ADB: MemLdRfVar from_stack_1.global_64
  loc_AD9ADE: LdPrVar
  loc_AD9AE0: LateMemCall
  loc_AD9AE6: LitNothing
  loc_AD9AE8: CastAd
  loc_AD9AEB: FStAdFunc var_E8
  loc_AD9AEE: Call Proc_241_20_982A80()
  loc_AD9AF3: FLdPr Me
  loc_AD9AF6: MemLdRfVar from_stack_1.global_64
  loc_AD9AF9: LdPrVar
  loc_AD9AFB: LateMemCall
  loc_AD9B01: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AD9B06: ExitProcHresult
End Sub

Private Function Proc_241_19_ACB770() 'ACB770
  'Data Table: 449C78
  loc_ACB134: LitVarStr var_94, "<html>"
  loc_ACB139: PopAdLdVar
  loc_ACB13A: FLdPr Me
  loc_ACB13D: MemLdRfVar from_stack_1.global_64
  loc_ACB140: LdPrVar
  loc_ACB142: LateMemCall
  loc_ACB148: LitVarStr var_94, "<head>"
  loc_ACB14D: PopAdLdVar
  loc_ACB14E: FLdPr Me
  loc_ACB151: MemLdRfVar from_stack_1.global_64
  loc_ACB154: LdPrVar
  loc_ACB156: LateMemCall
  loc_ACB15C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ACB161: PopAdLdVar
  loc_ACB162: FLdPr Me
  loc_ACB165: MemLdRfVar from_stack_1.global_64
  loc_ACB168: LdPrVar
  loc_ACB16A: LateMemCall
  loc_ACB170: LitStr "<title>"
  loc_ACB173: FLdRfVar var_A8
  loc_ACB176: FLdPr Me
  loc_ACB179:  = Me.Caption
  loc_ACB17E: ILdRf var_A8
  loc_ACB181: ConcatStr
  loc_ACB182: FStStrNoPop var_AC
  loc_ACB185: LitStr "</title>"
  loc_ACB188: ConcatStr
  loc_ACB189: CVarStr var_BC
  loc_ACB18C: PopAdLdVar
  loc_ACB18D: FLdPr Me
  loc_ACB190: MemLdRfVar from_stack_1.global_64
  loc_ACB193: LdPrVar
  loc_ACB195: LateMemCall
  loc_ACB19B: FFreeStr var_A8 = ""
  loc_ACB1A2: FFree1Var var_BC = ""
  loc_ACB1A5: LitVarStr var_94, "<style type=""text/css"">"
  loc_ACB1AA: PopAdLdVar
  loc_ACB1AB: FLdPr Me
  loc_ACB1AE: MemLdRfVar from_stack_1.global_64
  loc_ACB1B1: LdPrVar
  loc_ACB1B3: LateMemCall
  loc_ACB1B9: LitVarStr var_94, ".Titulo1 {"
  loc_ACB1BE: PopAdLdVar
  loc_ACB1BF: FLdPr Me
  loc_ACB1C2: MemLdRfVar from_stack_1.global_64
  loc_ACB1C5: LdPrVar
  loc_ACB1C7: LateMemCall
  loc_ACB1CD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACB1D2: PopAdLdVar
  loc_ACB1D3: FLdPr Me
  loc_ACB1D6: MemLdRfVar from_stack_1.global_64
  loc_ACB1D9: LdPrVar
  loc_ACB1DB: LateMemCall
  loc_ACB1E1: LitVarStr var_94, " font-size: 18px;"
  loc_ACB1E6: PopAdLdVar
  loc_ACB1E7: FLdPr Me
  loc_ACB1EA: MemLdRfVar from_stack_1.global_64
  loc_ACB1ED: LdPrVar
  loc_ACB1EF: LateMemCall
  loc_ACB1F5: LitVarStr var_94, " font-weight: bold;"
  loc_ACB1FA: PopAdLdVar
  loc_ACB1FB: FLdPr Me
  loc_ACB1FE: MemLdRfVar from_stack_1.global_64
  loc_ACB201: LdPrVar
  loc_ACB203: LateMemCall
  loc_ACB209: LitVarStr var_94, "}"
  loc_ACB20E: PopAdLdVar
  loc_ACB20F: FLdPr Me
  loc_ACB212: MemLdRfVar from_stack_1.global_64
  loc_ACB215: LdPrVar
  loc_ACB217: LateMemCall
  loc_ACB21D: LitVarStr var_94, ".Titulo2 {"
  loc_ACB222: PopAdLdVar
  loc_ACB223: FLdPr Me
  loc_ACB226: MemLdRfVar from_stack_1.global_64
  loc_ACB229: LdPrVar
  loc_ACB22B: LateMemCall
  loc_ACB231: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACB236: PopAdLdVar
  loc_ACB237: FLdPr Me
  loc_ACB23A: MemLdRfVar from_stack_1.global_64
  loc_ACB23D: LdPrVar
  loc_ACB23F: LateMemCall
  loc_ACB245: LitVarStr var_94, " font-size: 14px;"
  loc_ACB24A: PopAdLdVar
  loc_ACB24B: FLdPr Me
  loc_ACB24E: MemLdRfVar from_stack_1.global_64
  loc_ACB251: LdPrVar
  loc_ACB253: LateMemCall
  loc_ACB259: LitVarStr var_94, " font-weight: bold;"
  loc_ACB25E: PopAdLdVar
  loc_ACB25F: FLdPr Me
  loc_ACB262: MemLdRfVar from_stack_1.global_64
  loc_ACB265: LdPrVar
  loc_ACB267: LateMemCall
  loc_ACB26D: LitVarStr var_94, "}"
  loc_ACB272: PopAdLdVar
  loc_ACB273: FLdPr Me
  loc_ACB276: MemLdRfVar from_stack_1.global_64
  loc_ACB279: LdPrVar
  loc_ACB27B: LateMemCall
  loc_ACB281: LitVarStr var_94, ".Normal {"
  loc_ACB286: PopAdLdVar
  loc_ACB287: FLdPr Me
  loc_ACB28A: MemLdRfVar from_stack_1.global_64
  loc_ACB28D: LdPrVar
  loc_ACB28F: LateMemCall
  loc_ACB295: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACB29A: PopAdLdVar
  loc_ACB29B: FLdPr Me
  loc_ACB29E: MemLdRfVar from_stack_1.global_64
  loc_ACB2A1: LdPrVar
  loc_ACB2A3: LateMemCall
  loc_ACB2A9: LitVarStr var_94, " font-size: 14px;"
  loc_ACB2AE: PopAdLdVar
  loc_ACB2AF: FLdPr Me
  loc_ACB2B2: MemLdRfVar from_stack_1.global_64
  loc_ACB2B5: LdPrVar
  loc_ACB2B7: LateMemCall
  loc_ACB2BD: LitVarStr var_94, " font-style: normal;"
  loc_ACB2C2: PopAdLdVar
  loc_ACB2C3: FLdPr Me
  loc_ACB2C6: MemLdRfVar from_stack_1.global_64
  loc_ACB2C9: LdPrVar
  loc_ACB2CB: LateMemCall
  loc_ACB2D1: LitVarStr var_94, " font-weight: normal;"
  loc_ACB2D6: PopAdLdVar
  loc_ACB2D7: FLdPr Me
  loc_ACB2DA: MemLdRfVar from_stack_1.global_64
  loc_ACB2DD: LdPrVar
  loc_ACB2DF: LateMemCall
  loc_ACB2E5: LitVarStr var_94, " font-variant: normal;"
  loc_ACB2EA: PopAdLdVar
  loc_ACB2EB: FLdPr Me
  loc_ACB2EE: MemLdRfVar from_stack_1.global_64
  loc_ACB2F1: LdPrVar
  loc_ACB2F3: LateMemCall
  loc_ACB2F9: LitVarStr var_94, "}"
  loc_ACB2FE: PopAdLdVar
  loc_ACB2FF: FLdPr Me
  loc_ACB302: MemLdRfVar from_stack_1.global_64
  loc_ACB305: LdPrVar
  loc_ACB307: LateMemCall
  loc_ACB30D: LitVarStr var_94, ".Encabezado {"
  loc_ACB312: PopAdLdVar
  loc_ACB313: FLdPr Me
  loc_ACB316: MemLdRfVar from_stack_1.global_64
  loc_ACB319: LdPrVar
  loc_ACB31B: LateMemCall
  loc_ACB321: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_ACB326: PopAdLdVar
  loc_ACB327: FLdPr Me
  loc_ACB32A: MemLdRfVar from_stack_1.global_64
  loc_ACB32D: LdPrVar
  loc_ACB32F: LateMemCall
  loc_ACB335: LitVarStr var_94, " font-size: 13px;"
  loc_ACB33A: PopAdLdVar
  loc_ACB33B: FLdPr Me
  loc_ACB33E: MemLdRfVar from_stack_1.global_64
  loc_ACB341: LdPrVar
  loc_ACB343: LateMemCall
  loc_ACB349: LitVarStr var_94, " font-weight: bold;"
  loc_ACB34E: PopAdLdVar
  loc_ACB34F: FLdPr Me
  loc_ACB352: MemLdRfVar from_stack_1.global_64
  loc_ACB355: LdPrVar
  loc_ACB357: LateMemCall
  loc_ACB35D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_ACB362: PopAdLdVar
  loc_ACB363: FLdPr Me
  loc_ACB366: MemLdRfVar from_stack_1.global_64
  loc_ACB369: LdPrVar
  loc_ACB36B: LateMemCall
  loc_ACB371: LitVarStr var_94, "}"
  loc_ACB376: PopAdLdVar
  loc_ACB377: FLdPr Me
  loc_ACB37A: MemLdRfVar from_stack_1.global_64
  loc_ACB37D: LdPrVar
  loc_ACB37F: LateMemCall
  loc_ACB385: LitVarStr var_94, ".LineaDato {"
  loc_ACB38A: PopAdLdVar
  loc_ACB38B: FLdPr Me
  loc_ACB38E: MemLdRfVar from_stack_1.global_64
  loc_ACB391: LdPrVar
  loc_ACB393: LateMemCall
  loc_ACB399: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ACB39E: PopAdLdVar
  loc_ACB39F: FLdPr Me
  loc_ACB3A2: MemLdRfVar from_stack_1.global_64
  loc_ACB3A5: LdPrVar
  loc_ACB3A7: LateMemCall
  loc_ACB3AD: LitVarStr var_94, " font-size: 10px;"
  loc_ACB3B2: PopAdLdVar
  loc_ACB3B3: FLdPr Me
  loc_ACB3B6: MemLdRfVar from_stack_1.global_64
  loc_ACB3B9: LdPrVar
  loc_ACB3BB: LateMemCall
  loc_ACB3C1: LitVarStr var_94, "}"
  loc_ACB3C6: PopAdLdVar
  loc_ACB3C7: FLdPr Me
  loc_ACB3CA: MemLdRfVar from_stack_1.global_64
  loc_ACB3CD: LdPrVar
  loc_ACB3CF: LateMemCall
  loc_ACB3D5: LitVarStr var_94, ".Totales {"
  loc_ACB3DA: PopAdLdVar
  loc_ACB3DB: FLdPr Me
  loc_ACB3DE: MemLdRfVar from_stack_1.global_64
  loc_ACB3E1: LdPrVar
  loc_ACB3E3: LateMemCall
  loc_ACB3E9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ACB3EE: PopAdLdVar
  loc_ACB3EF: FLdPr Me
  loc_ACB3F2: MemLdRfVar from_stack_1.global_64
  loc_ACB3F5: LdPrVar
  loc_ACB3F7: LateMemCall
  loc_ACB3FD: LitVarStr var_94, " font-size: 12px;"
  loc_ACB402: PopAdLdVar
  loc_ACB403: FLdPr Me
  loc_ACB406: MemLdRfVar from_stack_1.global_64
  loc_ACB409: LdPrVar
  loc_ACB40B: LateMemCall
  loc_ACB411: LitVarStr var_94, " font-weight: bold;"
  loc_ACB416: PopAdLdVar
  loc_ACB417: FLdPr Me
  loc_ACB41A: MemLdRfVar from_stack_1.global_64
  loc_ACB41D: LdPrVar
  loc_ACB41F: LateMemCall
  loc_ACB425: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_ACB42A: PopAdLdVar
  loc_ACB42B: FLdPr Me
  loc_ACB42E: MemLdRfVar from_stack_1.global_64
  loc_ACB431: LdPrVar
  loc_ACB433: LateMemCall
  loc_ACB439: LitVarStr var_94, "}"
  loc_ACB43E: PopAdLdVar
  loc_ACB43F: FLdPr Me
  loc_ACB442: MemLdRfVar from_stack_1.global_64
  loc_ACB445: LdPrVar
  loc_ACB447: LateMemCall
  loc_ACB44D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_ACB452: PopAdLdVar
  loc_ACB453: FLdPr Me
  loc_ACB456: MemLdRfVar from_stack_1.global_64
  loc_ACB459: LdPrVar
  loc_ACB45B: LateMemCall
  loc_ACB461: LitVarStr var_94, "</style>"
  loc_ACB466: PopAdLdVar
  loc_ACB467: FLdPr Me
  loc_ACB46A: MemLdRfVar from_stack_1.global_64
  loc_ACB46D: LdPrVar
  loc_ACB46F: LateMemCall
  loc_ACB475: LitI4 0
  loc_ACB47A: FStStrCopy var_AC
  loc_ACB47D: FLdRfVar var_AC
  loc_ACB480: LitI4 0
  loc_ACB485: FStStrCopy var_A8
  loc_ACB488: FLdRfVar var_A8
  loc_ACB48B: LitI2_Byte 0
  loc_ACB48D: PopTmpLdAd2 var_BE
  loc_ACB490: FLdPr Me
  loc_ACB493: MemLdRfVar from_stack_1.global_64
  loc_ACB496: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ACB49B: FFreeStr var_A8 = ""
  loc_ACB4A2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_ACB4A7: PopAdLdVar
  loc_ACB4A8: FLdPr Me
  loc_ACB4AB: MemLdRfVar from_stack_1.global_64
  loc_ACB4AE: LdPrVar
  loc_ACB4B0: LateMemCall
  loc_ACB4B6: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ACB4BB: PopAdLdVar
  loc_ACB4BC: FLdPr Me
  loc_ACB4BF: MemLdRfVar from_stack_1.global_64
  loc_ACB4C2: LdPrVar
  loc_ACB4C4: LateMemCall
  loc_ACB4CA: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_ACB4CF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_ACB4D4: FStVarCopyObj var_BC
  loc_ACB4D7: FLdRfVar var_BC
  loc_ACB4DA: FLdRfVar var_D0
  loc_ACB4DD: ImpAdCallFPR4  = Ucase()
  loc_ACB4E2: FLdRfVar var_D0
  loc_ACB4E5: ConcatVar var_E0
  loc_ACB4E9: LitVarStr var_F0, "</p>"
  loc_ACB4EE: ConcatVar var_100
  loc_ACB4F2: PopAdLdVar
  loc_ACB4F3: FLdPr Me
  loc_ACB4F6: MemLdRfVar from_stack_1.global_64
  loc_ACB4F9: LdPrVar
  loc_ACB4FB: LateMemCall
  loc_ACB501: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_ACB50C: LitStr "    <p align=""center"">"
  loc_ACB50F: FLdRfVar var_A8
  loc_ACB512: FLdPr Me
  loc_ACB515:  = Me.Caption
  loc_ACB51A: ILdRf var_A8
  loc_ACB51D: ConcatStr
  loc_ACB51E: FStStrNoPop var_AC
  loc_ACB521: LitStr "</p>"
  loc_ACB524: ConcatStr
  loc_ACB525: CVarStr var_BC
  loc_ACB528: PopAdLdVar
  loc_ACB529: FLdPr Me
  loc_ACB52C: MemLdRfVar from_stack_1.global_64
  loc_ACB52F: LdPrVar
  loc_ACB531: LateMemCall
  loc_ACB537: FFreeStr var_A8 = ""
  loc_ACB53E: FFree1Var var_BC = ""
  loc_ACB541: LitVarStr var_94, "  </tr>"
  loc_ACB546: PopAdLdVar
  loc_ACB547: FLdPr Me
  loc_ACB54A: MemLdRfVar from_stack_1.global_64
  loc_ACB54D: LdPrVar
  loc_ACB54F: LateMemCall
  loc_ACB555: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_ACB55A: PopAdLdVar
  loc_ACB55B: FLdPr Me
  loc_ACB55E: MemLdRfVar from_stack_1.global_64
  loc_ACB561: LdPrVar
  loc_ACB563: LateMemCall
  loc_ACB569: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_ACB56E: PopAdLdVar
  loc_ACB56F: FLdPr Me
  loc_ACB572: MemLdRfVar from_stack_1.global_64
  loc_ACB575: LdPrVar
  loc_ACB577: LateMemCall
  loc_ACB57D: FLdPr Me
  loc_ACB580: VCallAd Control_ID_mskDesde
  loc_ACB583: FStAdFunc var_114
  loc_ACB586: FLdPr var_114
  loc_ACB589: LateIdLdVar var_BC DispID_22 0
  loc_ACB590: CStrVarTmp
  loc_ACB591: FStStrNoPop var_A8
  loc_ACB594: LitStr vbNullString
  loc_ACB597: NeStr
  loc_ACB599: FFree1Str var_A8
  loc_ACB59C: FFree1Ad var_114
  loc_ACB59F: FFree1Var var_BC = ""
  loc_ACB5A2: BranchF loc_ACB5EA
  loc_ACB5A5: LitStr "         Desde: <span class=""Normal"">"
  loc_ACB5A8: FLdPr Me
  loc_ACB5AB: VCallAd Control_ID_mskDesde
  loc_ACB5AE: FStAdFunc var_114
  loc_ACB5B1: FLdPr var_114
  loc_ACB5B4: LateIdLdVar var_BC DispID_15 0
  loc_ACB5BB: CStrVarTmp
  loc_ACB5BC: FStStrNoPop var_A8
  loc_ACB5BF: ConcatStr
  loc_ACB5C0: FStStrNoPop var_AC
  loc_ACB5C3: LitStr "</span><br>"
  loc_ACB5C6: ConcatStr
  loc_ACB5C7: CVarStr var_D0
  loc_ACB5CA: PopAdLdVar
  loc_ACB5CB: FLdPr Me
  loc_ACB5CE: MemLdRfVar from_stack_1.global_64
  loc_ACB5D1: LdPrVar
  loc_ACB5D3: LateMemCall
  loc_ACB5D9: FFreeStr var_A8 = ""
  loc_ACB5E0: FFree1Ad var_114
  loc_ACB5E3: FFreeVar var_BC = ""
  loc_ACB5EA: FLdPr Me
  loc_ACB5ED: VCallAd Control_ID_mskHasta
  loc_ACB5F0: FStAdFunc var_114
  loc_ACB5F3: FLdPr var_114
  loc_ACB5F6: LateIdLdVar var_BC DispID_22 0
  loc_ACB5FD: CStrVarTmp
  loc_ACB5FE: FStStrNoPop var_A8
  loc_ACB601: LitStr vbNullString
  loc_ACB604: NeStr
  loc_ACB606: FFree1Str var_A8
  loc_ACB609: FFree1Ad var_114
  loc_ACB60C: FFree1Var var_BC = ""
  loc_ACB60F: BranchF loc_ACB657
  loc_ACB612: LitStr "         Hasta: <span class=""Normal"">"
  loc_ACB615: FLdPr Me
  loc_ACB618: VCallAd Control_ID_mskHasta
  loc_ACB61B: FStAdFunc var_114
  loc_ACB61E: FLdPr var_114
  loc_ACB621: LateIdLdVar var_BC DispID_15 0
  loc_ACB628: CStrVarTmp
  loc_ACB629: FStStrNoPop var_A8
  loc_ACB62C: ConcatStr
  loc_ACB62D: FStStrNoPop var_AC
  loc_ACB630: LitStr "</span>"
  loc_ACB633: ConcatStr
  loc_ACB634: CVarStr var_D0
  loc_ACB637: PopAdLdVar
  loc_ACB638: FLdPr Me
  loc_ACB63B: MemLdRfVar from_stack_1.global_64
  loc_ACB63E: LdPrVar
  loc_ACB640: LateMemCall
  loc_ACB646: FFreeStr var_A8 = ""
  loc_ACB64D: FFree1Ad var_114
  loc_ACB650: FFreeVar var_BC = ""
  loc_ACB657: LitVarStr var_94, "   </th>"
  loc_ACB65C: PopAdLdVar
  loc_ACB65D: FLdPr Me
  loc_ACB660: MemLdRfVar from_stack_1.global_64
  loc_ACB663: LdPrVar
  loc_ACB665: LateMemCall
  loc_ACB66B: LitVarStr var_94, "  </tr>"
  loc_ACB670: PopAdLdVar
  loc_ACB671: FLdPr Me
  loc_ACB674: MemLdRfVar from_stack_1.global_64
  loc_ACB677: LdPrVar
  loc_ACB679: LateMemCall
  loc_ACB67F: LitVarStr var_94, "</table>"
  loc_ACB684: PopAdLdVar
  loc_ACB685: FLdPr Me
  loc_ACB688: MemLdRfVar from_stack_1.global_64
  loc_ACB68B: LdPrVar
  loc_ACB68D: LateMemCall
  loc_ACB693: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ACB698: PopAdLdVar
  loc_ACB699: FLdPr Me
  loc_ACB69C: MemLdRfVar from_stack_1.global_64
  loc_ACB69F: LdPrVar
  loc_ACB6A1: LateMemCall
  loc_ACB6A7: LitVarStr var_94, "  <THEAD>"
  loc_ACB6AC: PopAdLdVar
  loc_ACB6AD: FLdPr Me
  loc_ACB6B0: MemLdRfVar from_stack_1.global_64
  loc_ACB6B3: LdPrVar
  loc_ACB6B5: LateMemCall
  loc_ACB6BB: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_ACB6C0: PopAdLdVar
  loc_ACB6C1: FLdPr Me
  loc_ACB6C4: MemLdRfVar from_stack_1.global_64
  loc_ACB6C7: LdPrVar
  loc_ACB6C9: LateMemCall
  loc_ACB6CF: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_ACB6D4: PopAdLdVar
  loc_ACB6D5: FLdPr Me
  loc_ACB6D8: MemLdRfVar from_stack_1.global_64
  loc_ACB6DB: LdPrVar
  loc_ACB6DD: LateMemCall
  loc_ACB6E3: LitVarStr var_94, "    <th>Fecha</th>"
  loc_ACB6E8: PopAdLdVar
  loc_ACB6E9: FLdPr Me
  loc_ACB6EC: MemLdRfVar from_stack_1.global_64
  loc_ACB6EF: LdPrVar
  loc_ACB6F1: LateMemCall
  loc_ACB6F7: LitVarStr var_94, "    <th>Banco</th>"
  loc_ACB6FC: PopAdLdVar
  loc_ACB6FD: FLdPr Me
  loc_ACB700: MemLdRfVar from_stack_1.global_64
  loc_ACB703: LdPrVar
  loc_ACB705: LateMemCall
  loc_ACB70B: LitVarStr var_94, "    <th>Nº movim.</th>"
  loc_ACB710: PopAdLdVar
  loc_ACB711: FLdPr Me
  loc_ACB714: MemLdRfVar from_stack_1.global_64
  loc_ACB717: LdPrVar
  loc_ACB719: LateMemCall
  loc_ACB71F: LitVarStr var_94, "    <th>D E B E</th>"
  loc_ACB724: PopAdLdVar
  loc_ACB725: FLdPr Me
  loc_ACB728: MemLdRfVar from_stack_1.global_64
  loc_ACB72B: LdPrVar
  loc_ACB72D: LateMemCall
  loc_ACB733: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_ACB738: PopAdLdVar
  loc_ACB739: FLdPr Me
  loc_ACB73C: MemLdRfVar from_stack_1.global_64
  loc_ACB73F: LdPrVar
  loc_ACB741: LateMemCall
  loc_ACB747: LitVarStr var_94, "  </tr>"
  loc_ACB74C: PopAdLdVar
  loc_ACB74D: FLdPr Me
  loc_ACB750: MemLdRfVar from_stack_1.global_64
  loc_ACB753: LdPrVar
  loc_ACB755: LateMemCall
  loc_ACB75B: LitVarStr var_94, "  </THEAD>"
  loc_ACB760: PopAdLdVar
  loc_ACB761: FLdPr Me
  loc_ACB764: MemLdRfVar from_stack_1.global_64
  loc_ACB767: LdPrVar
  loc_ACB769: LateMemCall
  loc_ACB76F: ExitProcHresult
End Function

Private Function Proc_241_20_982A80() '982A80
  'Data Table: 449C78
  loc_982A40: LitVarStr var_94, "</table>"
  loc_982A45: PopAdLdVar
  loc_982A46: FLdPr Me
  loc_982A49: MemLdRfVar from_stack_1.global_64
  loc_982A4C: LdPrVar
  loc_982A4E: LateMemCall
  loc_982A54: LitVarStr var_94, "</body>"
  loc_982A59: PopAdLdVar
  loc_982A5A: FLdPr Me
  loc_982A5D: MemLdRfVar from_stack_1.global_64
  loc_982A60: LdPrVar
  loc_982A62: LateMemCall
  loc_982A68: LitVarStr var_94, "</html>"
  loc_982A6D: PopAdLdVar
  loc_982A6E: FLdPr Me
  loc_982A71: MemLdRfVar from_stack_1.global_64
  loc_982A74: LdPrVar
  loc_982A76: LateMemCall
  loc_982A7C: ExitProcHresult
End Function
