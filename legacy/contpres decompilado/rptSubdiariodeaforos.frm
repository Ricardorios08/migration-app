VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodeaforos
  Caption = "Subdiario de aforos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodeaforos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7470
  ClientHeight = 2970
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2715
    Width = 7470
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptSubdiariodeaforos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6360
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptSubdiariodeaforos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodeaforos.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
    Width = 4095
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 16
    End
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
      Picture = "rptSubdiariodeaforos.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodeaforos.frx":1142
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
      OleObjectBlob = "rptSubdiariodeaforos.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiariodeaforos.frx":170C
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
    Left = 6480
    Top = 600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptSubdiariodeaforos.frx":1794
  End
End

Attribute VB_Name = "rptSubdiariodeaforos"

Public bGenerado As Boolean

Private Type UDT_1_0059A1E0
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_00615340
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub cmdPrevia_Click() '95BEDC
  'Data Table: 455AFC
  loc_95BEC4: ILdRf Me
  loc_95BEC7: CastAd
  loc_95BECA: FStAdFunc var_88
  loc_95BECD: FLdRfVar var_88
  loc_95BED0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95BED5: FFree1Ad var_88
  loc_95BED8: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94FE78
  'Data Table: 455AFC
  loc_94FE64: FLdPr Me
  loc_94FE67: VCallAd Control_ID_mskDesde
  loc_94FE6A: CVarAd
  loc_94FE6E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FE73: FFree1Var var_94 = ""
  loc_94FE76: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C3DD8
  'Data Table: 455AFC
  loc_9C3D14: FLdPr Me
  loc_9C3D17: VCallAd Control_ID_mskDesde
  loc_9C3D1A: FStAdFunc var_88
  loc_9C3D1D: FLdPr var_88
  loc_9C3D20: LateIdLdVar var_98 DispID_22 0
  loc_9C3D27: CStrVarTmp
  loc_9C3D28: FStStrNoPop var_9C
  loc_9C3D2B: LitStr vbNullString
  loc_9C3D2E: NeStr
  loc_9C3D30: FFree1Str var_9C
  loc_9C3D33: FFree1Ad var_88
  loc_9C3D36: FFree1Var var_98 = ""
  loc_9C3D39: BranchF loc_9C3DD4
  loc_9C3D3C: FLdPr Me
  loc_9C3D3F: VCallAd Control_ID_mskDesde
  loc_9C3D42: FStAdFunc var_88
  loc_9C3D45: FLdPr var_88
  loc_9C3D48: LateIdLdVar var_98 DispID_15 0
  loc_9C3D4F: PopAd
  loc_9C3D51: FLdPr Me
  loc_9C3D54: VCallAd Control_ID_mskDesde
  loc_9C3D57: FStAdFunc var_AC
  loc_9C3D5A: LitI2_Byte &HFF
  loc_9C3D5C: PopTmpLdAd2 var_A2
  loc_9C3D5F: FLdZeroAd var_AC
  loc_9C3D62: FStAdFunc var_A0
  loc_9C3D65: FLdRfVar var_A0
  loc_9C3D68: LitStr vbNullString
  loc_9C3D6B: LitI2_Byte 0
  loc_9C3D6D: LitI2_Byte 0
  loc_9C3D6F: FLdRfVar var_98
  loc_9C3D72: CStrVarTmp
  loc_9C3D73: FStStrNoPop var_9C
  loc_9C3D76: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C3D7B: FStStrNoPop var_A8
  loc_9C3D7E: FLdPr Me
  loc_9C3D81: MemStStrCopy
  loc_9C3D85: FFreeStr var_9C = ""
  loc_9C3D8C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C3D95: FFree1Var var_98 = ""
  loc_9C3D98: FLdPr Me
  loc_9C3D9B: VCallAd Control_ID_mskDesde
  loc_9C3D9E: FStAdFunc var_B0
  loc_9C3DA1: LitNothing
  loc_9C3DA3: CastAd
  loc_9C3DA6: FStAdFunc var_AC
  loc_9C3DA9: FLdRfVar var_AC
  loc_9C3DAC: FLdZeroAd var_B0
  loc_9C3DAF: FStAdFuncNoPop
  loc_9C3DB2: CastAd
  loc_9C3DB5: FStAdFunc var_A0
  loc_9C3DB8: FLdRfVar var_A0
  loc_9C3DBB: FLdPr Me
  loc_9C3DBE: MemLdRfVar from_stack_1.global_100
  loc_9C3DC1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C3DC6: IStI2 arg_C
  loc_9C3DC9: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C3DD4: ExitProcHresult
End Function

Private Sub cmdCalHasta_Click() '97DC88
  'Data Table: 455AFC
  loc_97DC54: LitVar_Missing var_A4
  loc_97DC57: PopAdLdVar
  loc_97DC58: LitVarI4
  loc_97DC60: PopAdLdVar
  loc_97DC61: ImpAdLdRf MemVar_C3D9A8
  loc_97DC64: NewIfNullPr frmCalendario
  loc_97DC67: frmCalendario.Show from_stack_1, from_stack_2
  loc_97DC6C: ImpAdLdRf MemVar_C3D038
  loc_97DC6F: CDargRef
  loc_97DC73: FLdPr Me
  loc_97DC76: VCallAd Control_ID_mskHasta
  loc_97DC79: FStAdFunc var_A8
  loc_97DC7C: FLdPr var_A8
  loc_97DC7F: LateIdSt
  loc_97DC84: FFree1Ad var_A8
  loc_97DC87: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97F7C0
  'Data Table: 455AFC
  loc_97F78C: LitVar_Missing var_A4
  loc_97F78F: PopAdLdVar
  loc_97F790: LitVarI4
  loc_97F798: PopAdLdVar
  loc_97F799: ImpAdLdRf MemVar_C3D9A8
  loc_97F79C: NewIfNullPr frmCalendario
  loc_97F79F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F7A4: ImpAdLdRf MemVar_C3D038
  loc_97F7A7: CDargRef
  loc_97F7AB: FLdPr Me
  loc_97F7AE: VCallAd Control_ID_mskDesde
  loc_97F7B1: FStAdFunc var_A8
  loc_97F7B4: FLdPr var_A8
  loc_97F7B7: LateIdSt
  loc_97F7BC: FFree1Ad var_A8
  loc_97F7BF: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '953508
  'Data Table: 455AFC
  loc_9534F4: FLdPr Me
  loc_9534F7: VCallAd Control_ID_mskHasta
  loc_9534FA: CVarAd
  loc_9534FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_953503: FFree1Var var_94 = ""
  loc_953506: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B181C
  'Data Table: 455AFC
  loc_9B1780: FLdPr Me
  loc_9B1783: VCallAd Control_ID_mskHasta
  loc_9B1786: FStAdFunc var_88
  loc_9B1789: FLdPr var_88
  loc_9B178C: LateIdLdVar var_98 DispID_15 0
  loc_9B1793: PopAd
  loc_9B1795: FLdPr Me
  loc_9B1798: VCallAd Control_ID_mskHasta
  loc_9B179B: FStAdFunc var_AC
  loc_9B179E: LitI2_Byte &HFF
  loc_9B17A0: PopTmpLdAd2 var_A2
  loc_9B17A3: FLdZeroAd var_AC
  loc_9B17A6: FStAdFunc var_A0
  loc_9B17A9: FLdRfVar var_A0
  loc_9B17AC: LitStr vbNullString
  loc_9B17AF: LitI2_Byte 0
  loc_9B17B1: LitI2_Byte 0
  loc_9B17B3: FLdRfVar var_98
  loc_9B17B6: CStrVarTmp
  loc_9B17B7: FStStrNoPop var_9C
  loc_9B17BA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B17BF: FStStrNoPop var_A8
  loc_9B17C2: FLdPr Me
  loc_9B17C5: MemStStrCopy
  loc_9B17C9: FFreeStr var_9C = ""
  loc_9B17D0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B17D9: FFree1Var var_98 = ""
  loc_9B17DC: FLdPr Me
  loc_9B17DF: VCallAd Control_ID_mskHasta
  loc_9B17E2: FStAdFunc var_B0
  loc_9B17E5: LitNothing
  loc_9B17E7: CastAd
  loc_9B17EA: FStAdFunc var_AC
  loc_9B17ED: FLdRfVar var_AC
  loc_9B17F0: FLdZeroAd var_B0
  loc_9B17F3: FStAdFuncNoPop
  loc_9B17F6: CastAd
  loc_9B17F9: FStAdFunc var_A0
  loc_9B17FC: FLdRfVar var_A0
  loc_9B17FF: FLdPr Me
  loc_9B1802: MemLdRfVar from_stack_1.global_100
  loc_9B1805: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B180A: IStI2 arg_C
  loc_9B180D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1818: ExitProcHresult
  loc_9B1819: Ary1StStrCopy
  loc_9B181A: Ary1LdFPR8
End Function

Private Sub cmdPredeterminada_Click() '95BE44
  'Data Table: 455AFC
  loc_95BE2C: ILdRf Me
  loc_95BE2F: CastAd
  loc_95BE32: FStAdFunc var_88
  loc_95BE35: FLdRfVar var_88
  loc_95BE38: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95BE3D: FFree1Ad var_88
  loc_95BE40: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B8DC
  'Data Table: 455AFC
  loc_98B8A4: FLdPr Me
  loc_98B8A7: VCallAd Control_ID_statusBar
  loc_98B8AA: FStAdFunc var_88
  loc_98B8AD: FLdPr var_88
  loc_98B8B0: LateIdLdVar var_98 DispID_1 0
  loc_98B8B7: CStrVarTmp
  loc_98B8B8: CVarStr var_A8
  loc_98B8BB: PopAdLdVar
  loc_98B8BC: FLdPr Me
  loc_98B8BF: VCallAd Control_ID_statusBar
  loc_98B8C2: FStAdFunc var_BC
  loc_98B8C5: FLdPr var_BC
  loc_98B8C8: LateIdSt
  loc_98B8CD: FFreeAd var_88 = ""
  loc_98B8D4: FFreeVar var_98 = ""
  loc_98B8DB: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B8D8
  'Data Table: 455AFC
  loc_97B8A8: LitVarStr var_94, "Cerrando..."
  loc_97B8AD: PopAdLdVar
  loc_97B8AE: FLdPr Me
  loc_97B8B1: VCallAd Control_ID_statusBar
  loc_97B8B4: FStAdFunc var_A8
  loc_97B8B7: FLdPr var_A8
  loc_97B8BA: LateIdSt
  loc_97B8BF: FFree1Ad var_A8
  loc_97B8C2: ILdRf Me
  loc_97B8C5: FStAdNoPop
  loc_97B8C9: ImpAdLdRf MemVar_C44F9C
  loc_97B8CC: NewIfNullPr Me
  loc_97B8CF: Me.Global.Unload from_stack_1
  loc_97B8D4: FFree1Ad var_A8
  loc_97B8D7: ExitProcHresult
End Sub

Private Sub Form_Load() '96BF80
  'Data Table: 455AFC
  loc_96BF60: LitI2_Byte &HFF
  loc_96BF62: ImpAdStI2 MemVar_C3D840
  loc_96BF65: ILdRf Me
  loc_96BF68: CastAd
  loc_96BF6B: FStAdFunc var_88
  loc_96BF6E: FLdRfVar var_88
  loc_96BF71: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96BF76: FFree1Ad var_88
  loc_96BF79: Call cmdNueva_Click()
  loc_96BF7E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95BAB4
  'Data Table: 455AFC
  loc_95BA9C: FLdPr Me
  loc_95BA9F: VCallAd Control_ID_wbbReporte
  loc_95BAA2: FStAdFunc var_88
  loc_95BAA5: FLdRfVar var_88
  loc_95BAA8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95BAAD: FFree1Ad var_88
  loc_95BAB0: ExitProcHresult
  loc_95BAB1: FStStrNoPop
End Sub

Private Sub cmdPdf_Click() '95BDAC
  'Data Table: 455AFC
  loc_95BD94: LitI2_Byte 0
  loc_95BD96: ILdRf Me
  loc_95BD99: CastAd
  loc_95BD9C: FStAdFunc var_88
  loc_95BD9F: FLdRfVar var_88
  loc_95BDA2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95BDA7: FFree1Ad var_88
  loc_95BDAA: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BCAA0
  'Data Table: 455AFC
  loc_9BC9F0: LitI2_Byte 0
  loc_9BC9F2: FLdPr Me
  loc_9BC9F5: MemStI2 bGenerado
  loc_9BC9F8: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BC9FD: LitI2_Byte 0
  loc_9BC9FF: PopTmpLdAd2 var_86
  loc_9BCA02: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BCA07: CVarDate var_A8
  loc_9BCA0B: FLdRfVar var_B8
  loc_9BCA0E: ImpAdCallFPR4  = Year()
  loc_9BCA13: LitI2_Byte 0
  loc_9BCA15: PopTmpLdAd2 var_BA
  loc_9BCA18: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BCA1D: CVarDate var_DC
  loc_9BCA21: FLdRfVar var_EC
  loc_9BCA24: ImpAdCallFPR4  = Month()
  loc_9BCA29: LitI2_Byte 1
  loc_9BCA2B: FLdRfVar var_EC
  loc_9BCA2E: CI2Var
  loc_9BCA2F: FLdRfVar var_B8
  loc_9BCA32: CI2Var
  loc_9BCA33: FLdRfVar var_FC
  loc_9BCA36: ImpAdCallFPR4  = DateSerial(, , )
  loc_9BCA3B: FLdRfVar var_FC
  loc_9BCA3E: CStrVarTmp
  loc_9BCA3F: CVarStr var_10C
  loc_9BCA42: PopAdLdVar
  loc_9BCA43: FLdPr Me
  loc_9BCA46: VCallAd Control_ID_mskDesde
  loc_9BCA49: FStAdFunc var_120
  loc_9BCA4C: FLdPr var_120
  loc_9BCA4F: LateIdSt
  loc_9BCA54: FFree1Ad var_120
  loc_9BCA57: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9BCA66: ImpAdLdFPR8 MemVar_C3D04C
  loc_9BCA69: CStrDate
  loc_9BCA6B: CVarStr var_A8
  loc_9BCA6E: PopAdLdVar
  loc_9BCA6F: FLdPr Me
  loc_9BCA72: VCallAd Control_ID_mskHasta
  loc_9BCA75: FStAdFunc var_120
  loc_9BCA78: FLdPr var_120
  loc_9BCA7B: LateIdSt
  loc_9BCA80: FFree1Ad var_120
  loc_9BCA83: FFree1Var var_A8 = ""
  loc_9BCA86: Call HabilitarCriterio()
  loc_9BCA8B: ILdRf Me
  loc_9BCA8E: CastAd
  loc_9BCA91: FStAdFunc var_120
  loc_9BCA94: FLdRfVar var_120
  loc_9BCA97: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BCA9C: FFree1Ad var_120
  loc_9BCA9F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4567F0
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4567FF
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A235C
  'Data Table: 455AFC
  loc_9A22F8: LitI4 0
  loc_9A22FD: LitI4 3
  loc_9A2302: FLdRfVar var_88
  loc_9A2305: Redim
  loc_9A230F: FLdPr Me
  loc_9A2312: VCallAd Control_ID_mskDesde
  loc_9A2315: CVarAd
  loc_9A2319: ParmAry1St
  loc_9A231F: FLdPr Me
  loc_9A2322: VCallAd Control_ID_cmdCalDesde
  loc_9A2325: CVarAd
  loc_9A2329: ParmAry1St
  loc_9A232F: FLdPr Me
  loc_9A2332: VCallAd Control_ID_mskHasta
  loc_9A2335: CVarAd
  loc_9A2339: ParmAry1St
  loc_9A233F: FLdPr Me
  loc_9A2342: VCallAd Control_ID_cmdCalHasta
  loc_9A2345: CVarAd
  loc_9A2349: ParmAry1St
  loc_9A234F: FLdRfVar var_88
  loc_9A2352: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A2357: FLdRfVar var_88
  loc_9A235A: Erase
  loc_9A235B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AF7F74
  'Data Table: 455AFC
  loc_AF783C: LitStr vbNullString
  loc_AF783F: FLdPr Me
  loc_AF7842: MemStStrCopy
  loc_AF7846: LitI2_Byte 0
  loc_AF7848: PopTmpLdAd2 var_8E
  loc_AF784B: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_AF7850: FLdPr Me
  loc_AF7853: MemLdStr global_100
  loc_AF7856: LitStr vbNullString
  loc_AF7859: NeStr
  loc_AF785B: BranchF loc_AF7861
  loc_AF785E: Branch loc_AF7F4B
  loc_AF7861: LitI2_Byte 0
  loc_AF7863: PopTmpLdAd2 var_8E
  loc_AF7866: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AF786B: FLdPr Me
  loc_AF786E: MemLdStr global_100
  loc_AF7871: LitStr vbNullString
  loc_AF7874: NeStr
  loc_AF7876: BranchF loc_AF787C
  loc_AF7879: Branch loc_AF7F4B
  loc_AF787C: FLdPr Me
  loc_AF787F: MemLdI2 bGenerado
  loc_AF7882: BranchF loc_AF7886
  loc_AF7885: ExitProcHresult
  loc_AF7886: LitVarStr var_A0, "Generando reporte..."
  loc_AF788B: PopAdLdVar
  loc_AF788C: FLdPr Me
  loc_AF788F: VCallAd Control_ID_statusBar
  loc_AF7892: FStAdFunc var_B4
  loc_AF7895: FLdPr var_B4
  loc_AF7898: LateIdSt
  loc_AF789D: FFree1Ad var_B4
  loc_AF78A0: LitI4 &HB
  loc_AF78A5: CI2I4
  loc_AF78A6: FLdPr Me
  loc_AF78A9: Me.MousePointer = from_stack_1
  loc_AF78AE: FLdPr Me
  loc_AF78B1: VCallAd Control_ID_mskDesde
  loc_AF78B4: FStAdFunc var_B4
  loc_AF78B7: FLdPr var_B4
  loc_AF78BA: LateIdLdVar var_C4 DispID_22 0
  loc_AF78C1: CStrVarTmp
  loc_AF78C2: FStStrNoPop var_C8
  loc_AF78C5: LitStr vbNullString
  loc_AF78C8: NeStr
  loc_AF78CA: FFree1Str var_C8
  loc_AF78CD: FFree1Ad var_B4
  loc_AF78D0: FFree1Var var_C4 = ""
  loc_AF78D3: BranchF loc_AF793A
  loc_AF78D6: FLdPr Me
  loc_AF78D9: VCallAd Control_ID_mskDesde
  loc_AF78DC: FStAdFunc var_B4
  loc_AF78DF: FLdPr var_B4
  loc_AF78E2: LateIdLdVar var_C4 DispID_15 0
  loc_AF78E9: PopAd
  loc_AF78EB: LitVarStr var_B0, " AND FechCaja >= '"
  loc_AF78F0: LitI4 1
  loc_AF78F5: LitI4 1
  loc_AF78FA: LitVarStr var_A0, "yyyy-mm-dd"
  loc_AF78FF: FStVarCopyObj var_E8
  loc_AF7902: FLdRfVar var_E8
  loc_AF7905: FLdRfVar var_C4
  loc_AF7908: CStrVarTmp
  loc_AF7909: CVarStr var_D8
  loc_AF790C: FLdRfVar var_F8
  loc_AF790F: ImpAdCallFPR4  = Format(, )
  loc_AF7914: FLdRfVar var_F8
  loc_AF7917: ConcatVar var_108
  loc_AF791B: LitVarStr var_118, "'"
  loc_AF7920: ConcatVar var_128
  loc_AF7924: CStrVarTmp
  loc_AF7925: FStStr var_88
  loc_AF7928: FFree1Ad var_B4
  loc_AF792B: FFreeVar var_C4 = "": var_D8 = "": var_E8 = "": var_F8 = "": var_108 = ""
  loc_AF793A: FLdPr Me
  loc_AF793D: VCallAd Control_ID_mskHasta
  loc_AF7940: FStAdFunc var_B4
  loc_AF7943: FLdPr var_B4
  loc_AF7946: LateIdLdVar var_C4 DispID_22 0
  loc_AF794D: CStrVarTmp
  loc_AF794E: FStStrNoPop var_C8
  loc_AF7951: LitStr vbNullString
  loc_AF7954: NeStr
  loc_AF7956: FFree1Str var_C8
  loc_AF7959: FFree1Ad var_B4
  loc_AF795C: FFree1Var var_C4 = ""
  loc_AF795F: BranchF loc_AF79C6
  loc_AF7962: FLdPr Me
  loc_AF7965: VCallAd Control_ID_mskHasta
  loc_AF7968: FStAdFunc var_B4
  loc_AF796B: FLdPr var_B4
  loc_AF796E: LateIdLdVar var_C4 DispID_15 0
  loc_AF7975: PopAd
  loc_AF7977: LitVarStr var_B0, " AND FechCaja <= '"
  loc_AF797C: LitI4 1
  loc_AF7981: LitI4 1
  loc_AF7986: LitVarStr var_A0, "yyyy-mm-dd"
  loc_AF798B: FStVarCopyObj var_E8
  loc_AF798E: FLdRfVar var_E8
  loc_AF7991: FLdRfVar var_C4
  loc_AF7994: CStrVarTmp
  loc_AF7995: CVarStr var_D8
  loc_AF7998: FLdRfVar var_F8
  loc_AF799B: ImpAdCallFPR4  = Format(, )
  loc_AF79A0: FLdRfVar var_F8
  loc_AF79A3: ConcatVar var_108
  loc_AF79A7: LitVarStr var_118, "'"
  loc_AF79AC: ConcatVar var_128
  loc_AF79B0: CStrVarTmp
  loc_AF79B1: FStStr var_8C
  loc_AF79B4: FFree1Ad var_B4
  loc_AF79B7: FFreeVar var_C4 = "": var_D8 = "": var_E8 = "": var_F8 = "": var_108 = ""
  loc_AF79C6: FLdPr Me
  loc_AF79C9: MemLdRfVar from_stack_1.global_56
  loc_AF79CC: NewIfNullAd
  loc_AF79CF: FStAd var_12C 
  loc_AF79D3: LitStr "SELECT DISTINCT cajaaforo.CodiCuco, DetaCuco"
  loc_AF79D6: LitStr " FROM cajaaforo"
  loc_AF79D9: ConcatStr
  loc_AF79DA: FStStrNoPop var_C8
  loc_AF79DD: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = cajaaforo.PeriInfo AND infogov.cuentacontable.CodiCuco = cajaaforo.CodiCuco"
  loc_AF79E0: ConcatStr
  loc_AF79E1: FStStrNoPop var_130
  loc_AF79E4: LitStr " WHERE TRUE "
  loc_AF79E7: ConcatStr
  loc_AF79E8: FStStrNoPop var_134
  loc_AF79EB: ILdRf var_88
  loc_AF79EE: ConcatStr
  loc_AF79EF: FStStrNoPop var_138
  loc_AF79F2: ILdRf var_8C
  loc_AF79F5: ConcatStr
  loc_AF79F6: FStStrNoPop var_13C
  loc_AF79F9: LitStr " ORDER BY CodiCuco"
  loc_AF79FC: ConcatStr
  loc_AF79FD: FStStrNoPop var_140
  loc_AF7A00: FLdPr var_12C
  loc_AF7A03: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF7A08: FFreeStr var_C8 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_AF7A17: FLdRfVar var_144
  loc_AF7A1A: FLdPr var_12C
  loc_AF7A1D: from_stack_1 = clsbase.RecordCount
  loc_AF7A22: ILdRf var_144
  loc_AF7A25: LitI4 0
  loc_AF7A2A: EqI4
  loc_AF7A2B: BranchF loc_AF7A3E
  loc_AF7A2E: LitI4 0
  loc_AF7A33: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AF7A36: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF7A3B: Branch loc_AF7F4B
  loc_AF7A3E: LitI2_Byte 0
  loc_AF7A40: CStrUI1
  loc_AF7A42: FStStrNoPop var_C8
  loc_AF7A45: FLdPr Me
  loc_AF7A48: MemStStrCopy
  loc_AF7A4C: FFree1Str var_C8
  loc_AF7A4F: LitI2_Byte 0
  loc_AF7A51: CStrUI1
  loc_AF7A53: FStStrNoPop var_C8
  loc_AF7A56: FLdPr Me
  loc_AF7A59: MemStStrCopy
  loc_AF7A5D: FFree1Str var_C8
  loc_AF7A60: LitI4 1
  loc_AF7A65: FLdRfVar var_144
  loc_AF7A68: FLdPr Me
  loc_AF7A6B: MemLdRfVar from_stack_1.global_56
  loc_AF7A6E: NewIfNullPr clsbase
  loc_AF7A71: from_stack_1 = clsbase.RecordCount
  loc_AF7A76: ILdRf var_144
  loc_AF7A79: FLdPr Me
  loc_AF7A7C: MemLdRfVar from_stack_1.global_80
  loc_AF7A7F: Redim
  loc_AF7A89: FLdPr var_12C
  loc_AF7A8C: Call clsbase.MoveFirst()
  loc_AF7A91: LitI2_Byte 1
  loc_AF7A93: FLdPr Me
  loc_AF7A96: MemLdRfVar from_stack_1.global_92
  loc_AF7A99: FLdPr Me
  loc_AF7A9C: MemLdStr global_80
  loc_AF7A9F: LitI2_Byte 1
  loc_AF7AA1: FnUBound
  loc_AF7AA3: CI2I4
  loc_AF7AA4: ForI2 var_148
  loc_AF7AAA: FLdRfVar var_150
  loc_AF7AAD: LitVarStr var_A0, "CodiCuco"
  loc_AF7AB2: PopAdLdVar
  loc_AF7AB3: FLdRfVar var_14C
  loc_AF7AB6: FLdRfVar var_B4
  loc_AF7AB9: FLdPr var_12C
  loc_AF7ABC: from_stack_1v = clsbase.RsFrmGet()
  loc_AF7AC1: FLdPr var_B4
  loc_AF7AC4:  = Me.Fields
  loc_AF7AC9: FLdPr var_14C
  loc_AF7ACC: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7AD1: LitI2_Byte 0
  loc_AF7AD3: LitVar_Missing var_D8
  loc_AF7AD6: LitI2_Byte 0
  loc_AF7AD8: FLdZeroAd var_150
  loc_AF7ADB: CVarAd
  loc_AF7ADF: PopAdLdVar
  loc_AF7AE0: FLdPr Me
  loc_AF7AE3: MemLdI2 global_92
  loc_AF7AE6: CI4UI1
  loc_AF7AE7: FLdPr Me
  loc_AF7AEA: MemLdStr global_80
  loc_AF7AED: AryLock
  loc_AF7AF0: Ary1LdPr
  loc_AF7AF1: MemLdRfVar from_stack_1.global_0
  loc_AF7AF4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF7AF9: AryUnlock
  loc_AF7AFC: FFreeAd var_B4 = ""
  loc_AF7B03: FFreeVar var_C4 = ""
  loc_AF7B0A: FLdRfVar var_150
  loc_AF7B0D: LitVarStr var_A0, "DetaCuco"
  loc_AF7B12: PopAdLdVar
  loc_AF7B13: FLdRfVar var_14C
  loc_AF7B16: FLdRfVar var_B4
  loc_AF7B19: FLdPr var_12C
  loc_AF7B1C: from_stack_1v = clsbase.RsFrmGet()
  loc_AF7B21: FLdPr var_B4
  loc_AF7B24:  = Me.Fields
  loc_AF7B29: FLdPr var_14C
  loc_AF7B2C: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7B31: LitI2_Byte 0
  loc_AF7B33: LitVar_Missing var_D8
  loc_AF7B36: LitI2_Byte 0
  loc_AF7B38: FLdZeroAd var_150
  loc_AF7B3B: CVarAd
  loc_AF7B3F: PopAdLdVar
  loc_AF7B40: FLdPr Me
  loc_AF7B43: MemLdI2 global_92
  loc_AF7B46: CI4UI1
  loc_AF7B47: FLdPr Me
  loc_AF7B4A: MemLdStr global_80
  loc_AF7B4D: AryLock
  loc_AF7B50: Ary1LdPr
  loc_AF7B51: MemLdRfVar from_stack_1.global_4
  loc_AF7B54: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF7B59: AryUnlock
  loc_AF7B5C: FFreeAd var_B4 = ""
  loc_AF7B63: FFreeVar var_C4 = ""
  loc_AF7B6A: FLdPr var_12C
  loc_AF7B6D: Call clsbase.MoveSiguiente()
  loc_AF7B72: FLdPr Me
  loc_AF7B75: MemLdRfVar from_stack_1.global_92
  loc_AF7B78: NextI2 var_148, loc_AF7AAA
  loc_AF7B7D: LitI2_Byte 1
  loc_AF7B7F: FLdPr Me
  loc_AF7B82: MemLdRfVar from_stack_1.global_92
  loc_AF7B85: FLdPr Me
  loc_AF7B88: MemLdStr global_80
  loc_AF7B8B: LitI2_Byte 1
  loc_AF7B8D: FnUBound
  loc_AF7B8F: CI2I4
  loc_AF7B90: ForI2 var_158
  loc_AF7B96: LitStr "SELECT FechCaja, CodiConc, CodiTimo, DebeCaja, HabeCaja"
  loc_AF7B99: LitStr " FROM cajaaforo"
  loc_AF7B9C: ConcatStr
  loc_AF7B9D: FStStrNoPop var_C8
  loc_AF7BA0: LitStr " WHERE CodiCuco = '"
  loc_AF7BA3: ConcatStr
  loc_AF7BA4: FStStrNoPop var_130
  loc_AF7BA7: FLdPr Me
  loc_AF7BAA: MemLdI2 global_92
  loc_AF7BAD: CI4UI1
  loc_AF7BAE: FLdPr Me
  loc_AF7BB1: MemLdStr global_80
  loc_AF7BB4: Ary1LdPr
  loc_AF7BB5: MemLdStr global_0
  loc_AF7BB8: ConcatStr
  loc_AF7BB9: FStStrNoPop var_134
  loc_AF7BBC: LitStr "'"
  loc_AF7BBF: ConcatStr
  loc_AF7BC0: FStStrNoPop var_138
  loc_AF7BC3: ILdRf var_88
  loc_AF7BC6: ConcatStr
  loc_AF7BC7: FStStrNoPop var_13C
  loc_AF7BCA: ILdRf var_8C
  loc_AF7BCD: ConcatStr
  loc_AF7BCE: FStStrNoPop var_140
  loc_AF7BD1: LitStr " ORDER BY FechCaja, CodiConc, CodiTimo"
  loc_AF7BD4: ConcatStr
  loc_AF7BD5: FStStrNoPop var_15C
  loc_AF7BD8: FLdPr var_12C
  loc_AF7BDB: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF7BE0: FFreeStr var_C8 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AF7BF1: FLdRfVar var_144
  loc_AF7BF4: FLdPr var_12C
  loc_AF7BF7: from_stack_1 = clsbase.RecordCount
  loc_AF7BFC: ILdRf var_144
  loc_AF7BFF: LitI4 0
  loc_AF7C04: GtI4
  loc_AF7C05: BranchF loc_AF7ED4
  loc_AF7C08: FLdRfVar var_144
  loc_AF7C0B: FLdPr var_12C
  loc_AF7C0E: from_stack_1 = clsbase.RecordCount
  loc_AF7C13: LitI4 1
  loc_AF7C18: ILdRf var_144
  loc_AF7C1B: FLdPr Me
  loc_AF7C1E: MemLdI2 global_92
  loc_AF7C21: CI4UI1
  loc_AF7C22: FLdPr Me
  loc_AF7C25: MemLdStr global_80
  loc_AF7C28: Ary1LdPr
  loc_AF7C29: MemLdRfVar from_stack_1.global_8
  loc_AF7C2C: Redim
  loc_AF7C36: FLdPr var_12C
  loc_AF7C39: Call clsbase.MoveFirst()
  loc_AF7C3E: LitI2_Byte 1
  loc_AF7C40: FLdPr Me
  loc_AF7C43: MemLdRfVar from_stack_1.global_94
  loc_AF7C46: FLdPr Me
  loc_AF7C49: MemLdI2 global_92
  loc_AF7C4C: CI4UI1
  loc_AF7C4D: FLdPr Me
  loc_AF7C50: MemLdStr global_80
  loc_AF7C53: Ary1LdPr
  loc_AF7C54: MemLdStr global_8
  loc_AF7C57: LitI2_Byte 1
  loc_AF7C59: FnUBound
  loc_AF7C5B: CI2I4
  loc_AF7C5C: ForI2 var_160
  loc_AF7C62: FLdRfVar var_150
  loc_AF7C65: LitVarStr var_A0, "FechCaja"
  loc_AF7C6A: PopAdLdVar
  loc_AF7C6B: FLdRfVar var_14C
  loc_AF7C6E: FLdRfVar var_B4
  loc_AF7C71: FLdPr var_12C
  loc_AF7C74: from_stack_1v = clsbase.RsFrmGet()
  loc_AF7C79: FLdPr var_B4
  loc_AF7C7C:  = Me.Fields
  loc_AF7C81: FLdPr var_14C
  loc_AF7C84: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7C89: LitI2_Byte 0
  loc_AF7C8B: LitVar_Missing var_D8
  loc_AF7C8E: LitI2_Byte 0
  loc_AF7C90: FLdZeroAd var_150
  loc_AF7C93: CVarAd
  loc_AF7C97: PopAdLdVar
  loc_AF7C98: FLdPr Me
  loc_AF7C9B: MemLdI2 global_94
  loc_AF7C9E: CI4UI1
  loc_AF7C9F: FLdPr Me
  loc_AF7CA2: MemLdI2 global_92
  loc_AF7CA5: CI4UI1
  loc_AF7CA6: FLdPr Me
  loc_AF7CA9: MemLdStr global_80
  loc_AF7CAC: AryLock
  loc_AF7CAF: Ary1LdPr
  loc_AF7CB0: MemLdStr global_8
  loc_AF7CB3: AryLock
  loc_AF7CB6: Ary1LdPr
  loc_AF7CB7: MemLdRfVar from_stack_1.global_0
  loc_AF7CBA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF7CBF: AryUnlock
  loc_AF7CC2: AryUnlock
  loc_AF7CC5: FFreeAd var_B4 = ""
  loc_AF7CCC: FFreeVar var_C4 = ""
  loc_AF7CD3: FLdRfVar var_150
  loc_AF7CD6: LitVarStr var_A0, "CodiConc"
  loc_AF7CDB: PopAdLdVar
  loc_AF7CDC: FLdRfVar var_14C
  loc_AF7CDF: FLdRfVar var_B4
  loc_AF7CE2: FLdPr var_12C
  loc_AF7CE5: from_stack_1v = clsbase.RsFrmGet()
  loc_AF7CEA: FLdPr var_B4
  loc_AF7CED:  = Me.Fields
  loc_AF7CF2: FLdPr var_14C
  loc_AF7CF5: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7CFA: LitI2_Byte 0
  loc_AF7CFC: LitVar_Missing var_D8
  loc_AF7CFF: LitI2_Byte 0
  loc_AF7D01: FLdZeroAd var_150
  loc_AF7D04: CVarAd
  loc_AF7D08: PopAdLdVar
  loc_AF7D09: FLdPr Me
  loc_AF7D0C: MemLdI2 global_94
  loc_AF7D0F: CI4UI1
  loc_AF7D10: FLdPr Me
  loc_AF7D13: MemLdI2 global_92
  loc_AF7D16: CI4UI1
  loc_AF7D17: FLdPr Me
  loc_AF7D1A: MemLdStr global_80
  loc_AF7D1D: AryLock
  loc_AF7D20: Ary1LdPr
  loc_AF7D21: MemLdStr global_8
  loc_AF7D24: AryLock
  loc_AF7D27: Ary1LdPr
  loc_AF7D28: MemLdRfVar from_stack_1.global_4
  loc_AF7D2B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF7D30: AryUnlock
  loc_AF7D33: AryUnlock
  loc_AF7D36: FFreeAd var_B4 = ""
  loc_AF7D3D: FFreeVar var_C4 = ""
  loc_AF7D44: FLdRfVar var_150
  loc_AF7D47: LitVarStr var_A0, "CodiTimo"
  loc_AF7D4C: PopAdLdVar
  loc_AF7D4D: FLdRfVar var_14C
  loc_AF7D50: FLdRfVar var_B4
  loc_AF7D53: FLdPr var_12C
  loc_AF7D56: from_stack_1v = clsbase.RsFrmGet()
  loc_AF7D5B: FLdPr var_B4
  loc_AF7D5E:  = Me.Fields
  loc_AF7D63: FLdPr var_14C
  loc_AF7D66: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7D6B: LitI2_Byte 0
  loc_AF7D6D: LitVar_Missing var_D8
  loc_AF7D70: LitI2_Byte 0
  loc_AF7D72: FLdZeroAd var_150
  loc_AF7D75: CVarAd
  loc_AF7D79: PopAdLdVar
  loc_AF7D7A: FLdPr Me
  loc_AF7D7D: MemLdI2 global_94
  loc_AF7D80: CI4UI1
  loc_AF7D81: FLdPr Me
  loc_AF7D84: MemLdI2 global_92
  loc_AF7D87: CI4UI1
  loc_AF7D88: FLdPr Me
  loc_AF7D8B: MemLdStr global_80
  loc_AF7D8E: AryLock
  loc_AF7D91: Ary1LdPr
  loc_AF7D92: MemLdStr global_8
  loc_AF7D95: AryLock
  loc_AF7D98: Ary1LdPr
  loc_AF7D99: MemLdRfVar from_stack_1.global_8
  loc_AF7D9C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF7DA1: AryUnlock
  loc_AF7DA4: AryUnlock
  loc_AF7DA7: FFreeAd var_B4 = ""
  loc_AF7DAE: FFreeVar var_C4 = ""
  loc_AF7DB5: FLdRfVar var_150
  loc_AF7DB8: LitVarStr var_A0, "DebeCaja"
  loc_AF7DBD: PopAdLdVar
  loc_AF7DBE: FLdRfVar var_14C
  loc_AF7DC1: FLdRfVar var_B4
  loc_AF7DC4: FLdPr var_12C
  loc_AF7DC7: from_stack_1v = clsbase.RsFrmGet()
  loc_AF7DCC: FLdPr var_B4
  loc_AF7DCF:  = Me.Fields
  loc_AF7DD4: FLdPr var_14C
  loc_AF7DD7: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7DDC: LitI2_Byte 0
  loc_AF7DDE: FLdPr Me
  loc_AF7DE1: MemLdI2 global_92
  loc_AF7DE4: CI4UI1
  loc_AF7DE5: FLdPr Me
  loc_AF7DE8: MemLdStr global_80
  loc_AF7DEB: AryLock
  loc_AF7DEE: Ary1LdPr
  loc_AF7DEF: MemLdRfVar from_stack_1.global_12
  loc_AF7DF2: CVarRef
  loc_AF7DF7: LitI2_Byte &HFF
  loc_AF7DF9: FLdZeroAd var_150
  loc_AF7DFC: CVarAd
  loc_AF7E00: PopAdLdVar
  loc_AF7E01: FLdPr Me
  loc_AF7E04: MemLdI2 global_94
  loc_AF7E07: CI4UI1
  loc_AF7E08: FLdPr Me
  loc_AF7E0B: MemLdI2 global_92
  loc_AF7E0E: CI4UI1
  loc_AF7E0F: FLdPr Me
  loc_AF7E12: MemLdStr global_80
  loc_AF7E15: AryLock
  loc_AF7E18: Ary1LdPr
  loc_AF7E19: MemLdStr global_8
  loc_AF7E1C: AryLock
  loc_AF7E1F: Ary1LdPr
  loc_AF7E20: MemLdRfVar from_stack_1.global_12
  loc_AF7E23: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF7E28: AryUnlock
  loc_AF7E2B: AryUnlock
  loc_AF7E2E: AryUnlock
  loc_AF7E31: FFreeAd var_B4 = ""
  loc_AF7E38: FFree1Var var_C4 = ""
  loc_AF7E3B: FLdRfVar var_150
  loc_AF7E3E: LitVarStr var_A0, "HabeCaja"
  loc_AF7E43: PopAdLdVar
  loc_AF7E44: FLdRfVar var_14C
  loc_AF7E47: FLdRfVar var_B4
  loc_AF7E4A: FLdPr var_12C
  loc_AF7E4D: from_stack_1v = clsbase.RsFrmGet()
  loc_AF7E52: FLdPr var_B4
  loc_AF7E55:  = Me.Fields
  loc_AF7E5A: FLdPr var_14C
  loc_AF7E5D: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7E62: LitI2_Byte 0
  loc_AF7E64: FLdPr Me
  loc_AF7E67: MemLdI2 global_92
  loc_AF7E6A: CI4UI1
  loc_AF7E6B: FLdPr Me
  loc_AF7E6E: MemLdStr global_80
  loc_AF7E71: AryLock
  loc_AF7E74: Ary1LdPr
  loc_AF7E75: MemLdRfVar from_stack_1.global_16
  loc_AF7E78: CVarRef
  loc_AF7E7D: LitI2_Byte &HFF
  loc_AF7E7F: FLdZeroAd var_150
  loc_AF7E82: CVarAd
  loc_AF7E86: PopAdLdVar
  loc_AF7E87: FLdPr Me
  loc_AF7E8A: MemLdI2 global_94
  loc_AF7E8D: CI4UI1
  loc_AF7E8E: FLdPr Me
  loc_AF7E91: MemLdI2 global_92
  loc_AF7E94: CI4UI1
  loc_AF7E95: FLdPr Me
  loc_AF7E98: MemLdStr global_80
  loc_AF7E9B: AryLock
  loc_AF7E9E: Ary1LdPr
  loc_AF7E9F: MemLdStr global_8
  loc_AF7EA2: AryLock
  loc_AF7EA5: Ary1LdPr
  loc_AF7EA6: MemLdRfVar from_stack_1.global_16
  loc_AF7EA9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF7EAE: AryUnlock
  loc_AF7EB1: AryUnlock
  loc_AF7EB4: AryUnlock
  loc_AF7EB7: FFreeAd var_B4 = ""
  loc_AF7EBE: FFree1Var var_C4 = ""
  loc_AF7EC1: FLdPr var_12C
  loc_AF7EC4: Call clsbase.MoveSiguiente()
  loc_AF7EC9: FLdPr Me
  loc_AF7ECC: MemLdRfVar from_stack_1.global_94
  loc_AF7ECF: NextI2 var_160, loc_AF7C62
  loc_AF7ED4: LitI2_Byte 0
  loc_AF7ED6: FLdPr Me
  loc_AF7ED9: MemLdRfVar from_stack_1.global_84
  loc_AF7EDC: CVarRef
  loc_AF7EE1: LitI2_Byte &HFF
  loc_AF7EE3: FLdPr Me
  loc_AF7EE6: MemLdI2 global_92
  loc_AF7EE9: CI4UI1
  loc_AF7EEA: FLdPr Me
  loc_AF7EED: MemLdStr global_80
  loc_AF7EF0: Ary1LdPr
  loc_AF7EF1: MemLdStr global_12
  loc_AF7EF4: CVarStr var_A0
  loc_AF7EF7: PopAdLdVar
  loc_AF7EF8: FLdPr Me
  loc_AF7EFB: MemLdRfVar from_stack_1.global_96
  loc_AF7EFE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF7F03: LitI2_Byte 0
  loc_AF7F05: FLdPr Me
  loc_AF7F08: MemLdRfVar from_stack_1.global_88
  loc_AF7F0B: CVarRef
  loc_AF7F10: LitI2_Byte &HFF
  loc_AF7F12: FLdPr Me
  loc_AF7F15: MemLdI2 global_92
  loc_AF7F18: CI4UI1
  loc_AF7F19: FLdPr Me
  loc_AF7F1C: MemLdStr global_80
  loc_AF7F1F: Ary1LdPr
  loc_AF7F20: MemLdStr global_16
  loc_AF7F23: CVarStr var_A0
  loc_AF7F26: PopAdLdVar
  loc_AF7F27: FLdPr Me
  loc_AF7F2A: MemLdRfVar from_stack_1.global_96
  loc_AF7F2D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF7F32: FLdPr Me
  loc_AF7F35: MemLdRfVar from_stack_1.global_92
  loc_AF7F38: NextI2 var_158, loc_AF7B96
  loc_AF7F3D: LitNothing
  loc_AF7F3F: FStAd var_12C 
  loc_AF7F43: LitI2_Byte &HFF
  loc_AF7F45: FLdPr Me
  loc_AF7F48: MemStI2 bGenerado
  loc_AF7F4B: LitI4 0
  loc_AF7F50: CI2I4
  loc_AF7F51: FLdPr Me
  loc_AF7F54: Me.MousePointer = from_stack_1
  loc_AF7F59: LitVarStr var_A0, vbNullString
  loc_AF7F5E: PopAdLdVar
  loc_AF7F5F: FLdPr Me
  loc_AF7F62: VCallAd Control_ID_statusBar
  loc_AF7F65: FStAdFunc var_B4
  loc_AF7F68: FLdPr var_B4
  loc_AF7F6B: LateIdSt
  loc_AF7F70: FFree1Ad var_B4
  loc_AF7F73: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AD9430
  'Data Table: 455AFC
  loc_AD8DE4: FLdRfVar var_88
  loc_AD8DE7: LitI2_Byte 0
  loc_AD8DE9: LitI2_Byte &HFF
  loc_AD8DEB: ImpAdLdI4 MemVar_C3D83C
  loc_AD8DEE: FLdPr Me
  loc_AD8DF1: MemLdRfVar from_stack_1.global_60
  loc_AD8DF4: NewIfNullPr IFileSystem3
  loc_AD8DF7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AD8DFC: ILdRf var_88
  loc_AD8DFF: FLdPr Me
  loc_AD8E02: MemStVarAd
  loc_AD8E06: FFree1Ad var_88
  loc_AD8E09: Call Proc_239_19_ACBDF8()
  loc_AD8E0E: LitI2_Byte 1
  loc_AD8E10: FLdPr Me
  loc_AD8E13: MemLdRfVar from_stack_1.global_92
  loc_AD8E16: FLdPr Me
  loc_AD8E19: MemLdStr global_80
  loc_AD8E1C: LitI2_Byte 1
  loc_AD8E1E: FnUBound
  loc_AD8E20: CI2I4
  loc_AD8E21: ForI2 var_8C
  loc_AD8E27: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AD8E2C: PopAdLdVar
  loc_AD8E2D: FLdPr Me
  loc_AD8E30: MemLdRfVar from_stack_1.global_64
  loc_AD8E33: LdPrVar
  loc_AD8E35: LateMemCall
  loc_AD8E3B: LitStr "    <td rowspan="""
  loc_AD8E3E: FLdPr Me
  loc_AD8E41: MemLdI2 global_92
  loc_AD8E44: CI4UI1
  loc_AD8E45: FLdPr Me
  loc_AD8E48: MemLdStr global_80
  loc_AD8E4B: Ary1LdPr
  loc_AD8E4C: MemLdStr global_8
  loc_AD8E4F: LitI2_Byte 1
  loc_AD8E51: FnUBound
  loc_AD8E53: LitI4 1
  loc_AD8E58: AddI4
  loc_AD8E59: CStrI4
  loc_AD8E5B: FStStrNoPop var_B0
  loc_AD8E5E: ConcatStr
  loc_AD8E5F: FStStrNoPop var_B4
  loc_AD8E62: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_AD8E65: ConcatStr
  loc_AD8E66: FStStrNoPop var_B8
  loc_AD8E69: FLdPr Me
  loc_AD8E6C: MemLdI2 global_92
  loc_AD8E6F: CI4UI1
  loc_AD8E70: FLdPr Me
  loc_AD8E73: MemLdStr global_80
  loc_AD8E76: Ary1LdPr
  loc_AD8E77: MemLdStr global_0
  loc_AD8E7A: ConcatStr
  loc_AD8E7B: FStStrNoPop var_BC
  loc_AD8E7E: LitStr "<br>"
  loc_AD8E81: ConcatStr
  loc_AD8E82: FStStrNoPop var_C0
  loc_AD8E85: FLdPr Me
  loc_AD8E88: MemLdI2 global_92
  loc_AD8E8B: CI4UI1
  loc_AD8E8C: FLdPr Me
  loc_AD8E8F: MemLdStr global_80
  loc_AD8E92: Ary1LdPr
  loc_AD8E93: MemLdStr global_4
  loc_AD8E96: ConcatStr
  loc_AD8E97: FStStrNoPop var_C4
  loc_AD8E9A: LitStr "</td>"
  loc_AD8E9D: ConcatStr
  loc_AD8E9E: CVarStr var_D4
  loc_AD8EA1: PopAdLdVar
  loc_AD8EA2: FLdPr Me
  loc_AD8EA5: MemLdRfVar from_stack_1.global_64
  loc_AD8EA8: LdPrVar
  loc_AD8EAA: LateMemCall
  loc_AD8EB0: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AD8EBF: FFree1Var var_D4 = ""
  loc_AD8EC2: LitI2_Byte 1
  loc_AD8EC4: FLdPr Me
  loc_AD8EC7: MemLdRfVar from_stack_1.global_94
  loc_AD8ECA: FLdPr Me
  loc_AD8ECD: MemLdI2 global_92
  loc_AD8ED0: CI4UI1
  loc_AD8ED1: FLdPr Me
  loc_AD8ED4: MemLdStr global_80
  loc_AD8ED7: Ary1LdPr
  loc_AD8ED8: MemLdStr global_8
  loc_AD8EDB: LitI2_Byte 1
  loc_AD8EDD: FnUBound
  loc_AD8EDF: CI2I4
  loc_AD8EE0: ForI2 var_D8
  loc_AD8EE6: FLdPr Me
  loc_AD8EE9: MemLdI2 global_94
  loc_AD8EEC: CI4UI1
  loc_AD8EED: FLdPr Me
  loc_AD8EF0: MemLdI2 global_92
  loc_AD8EF3: CI4UI1
  loc_AD8EF4: FLdPr Me
  loc_AD8EF7: MemLdStr global_80
  loc_AD8EFA: AryLock
  loc_AD8EFD: Ary1LdPr
  loc_AD8EFE: MemLdStr global_8
  loc_AD8F01: AryLock
  loc_AD8F04: Ary1LdRf
  loc_AD8F05: FStR4 var_E4
  loc_AD8F08: FLdPr Me
  loc_AD8F0B: MemLdI2 global_94
  loc_AD8F0E: LitI2_Byte 1
  loc_AD8F10: NeI2
  loc_AD8F11: BranchF loc_AD8F28
  loc_AD8F14: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AD8F19: PopAdLdVar
  loc_AD8F1A: FLdPr Me
  loc_AD8F1D: MemLdRfVar from_stack_1.global_64
  loc_AD8F20: LdPrVar
  loc_AD8F22: LateMemCall
  loc_AD8F28: LitI4 0
  loc_AD8F2D: LitI4 0
  loc_AD8F32: LitI2_Byte 0
  loc_AD8F34: LitStr "center"
  loc_AD8F37: FMemLdR4 var_E4(0)
  loc_AD8F3C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8F41: CVarStr var_D4
  loc_AD8F44: PopAdLdVar
  loc_AD8F45: FLdPr Me
  loc_AD8F48: MemLdRfVar from_stack_1.global_64
  loc_AD8F4B: LdPrVar
  loc_AD8F4D: LateMemCall
  loc_AD8F53: FFree1Var var_D4 = ""
  loc_AD8F56: LitI4 0
  loc_AD8F5B: LitI4 0
  loc_AD8F60: LitI2_Byte 0
  loc_AD8F62: LitStr "right"
  loc_AD8F65: FMemLdR4 var_E4(4)
  loc_AD8F6A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8F6F: CVarStr var_D4
  loc_AD8F72: PopAdLdVar
  loc_AD8F73: FLdPr Me
  loc_AD8F76: MemLdRfVar from_stack_1.global_64
  loc_AD8F79: LdPrVar
  loc_AD8F7B: LateMemCall
  loc_AD8F81: FFree1Var var_D4 = ""
  loc_AD8F84: LitI4 0
  loc_AD8F89: LitI4 0
  loc_AD8F8E: LitI2_Byte 0
  loc_AD8F90: LitStr "right"
  loc_AD8F93: FMemLdR4 var_E4(8)
  loc_AD8F98: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8F9D: CVarStr var_D4
  loc_AD8FA0: PopAdLdVar
  loc_AD8FA1: FLdPr Me
  loc_AD8FA4: MemLdRfVar from_stack_1.global_64
  loc_AD8FA7: LdPrVar
  loc_AD8FA9: LateMemCall
  loc_AD8FAF: FFree1Var var_D4 = ""
  loc_AD8FB2: LitI4 0
  loc_AD8FB7: LitI4 0
  loc_AD8FBC: LitI2_Byte 0
  loc_AD8FBE: LitStr "right"
  loc_AD8FC1: FMemLdR4 var_E4(12)
  loc_AD8FC6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8FCB: CVarStr var_D4
  loc_AD8FCE: PopAdLdVar
  loc_AD8FCF: FLdPr Me
  loc_AD8FD2: MemLdRfVar from_stack_1.global_64
  loc_AD8FD5: LdPrVar
  loc_AD8FD7: LateMemCall
  loc_AD8FDD: FFree1Var var_D4 = ""
  loc_AD8FE0: LitI4 0
  loc_AD8FE5: LitI4 0
  loc_AD8FEA: LitI2_Byte 0
  loc_AD8FEC: LitStr "right"
  loc_AD8FEF: FMemLdR4 var_E4(16)
  loc_AD8FF4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8FF9: CVarStr var_D4
  loc_AD8FFC: PopAdLdVar
  loc_AD8FFD: FLdPr Me
  loc_AD9000: MemLdRfVar from_stack_1.global_64
  loc_AD9003: LdPrVar
  loc_AD9005: LateMemCall
  loc_AD900B: FFree1Var var_D4 = ""
  loc_AD900E: LitVarStr var_9C, "  </tr>"
  loc_AD9013: PopAdLdVar
  loc_AD9014: FLdPr Me
  loc_AD9017: MemLdRfVar from_stack_1.global_64
  loc_AD901A: LdPrVar
  loc_AD901C: LateMemCall
  loc_AD9022: LitI4 0
  loc_AD9027: FStR4 var_E4
  loc_AD902A: AryUnlock
  loc_AD902D: AryUnlock
  loc_AD9030: FLdPr Me
  loc_AD9033: MemLdRfVar from_stack_1.global_94
  loc_AD9036: NextI2 var_D8, loc_AD8EE6
  loc_AD903B: LitVarStr var_9C, "  <tr>"
  loc_AD9040: PopAdLdVar
  loc_AD9041: FLdPr Me
  loc_AD9044: MemLdRfVar from_stack_1.global_64
  loc_AD9047: LdPrVar
  loc_AD9049: LateMemCall
  loc_AD904F: LitVarStr var_9C, "    <th colspan=""2"" align=""left"">&nbsp;</th>"
  loc_AD9054: PopAdLdVar
  loc_AD9055: FLdPr Me
  loc_AD9058: MemLdRfVar from_stack_1.global_64
  loc_AD905B: LdPrVar
  loc_AD905D: LateMemCall
  loc_AD9063: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_AD9068: PopAdLdVar
  loc_AD9069: FLdPr Me
  loc_AD906C: MemLdRfVar from_stack_1.global_64
  loc_AD906F: LdPrVar
  loc_AD9071: LateMemCall
  loc_AD9077: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD907A: FLdPr Me
  loc_AD907D: MemLdI2 global_92
  loc_AD9080: CI4UI1
  loc_AD9081: FLdPr Me
  loc_AD9084: MemLdStr global_80
  loc_AD9087: Ary1LdPr
  loc_AD9088: MemLdStr global_12
  loc_AD908B: ConcatStr
  loc_AD908C: FStStrNoPop var_B0
  loc_AD908F: LitStr "</td>"
  loc_AD9092: ConcatStr
  loc_AD9093: CVarStr var_D4
  loc_AD9096: PopAdLdVar
  loc_AD9097: FLdPr Me
  loc_AD909A: MemLdRfVar from_stack_1.global_64
  loc_AD909D: LdPrVar
  loc_AD909F: LateMemCall
  loc_AD90A5: FFree1Str var_B0
  loc_AD90A8: FFree1Var var_D4 = ""
  loc_AD90AB: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD90AE: FLdPr Me
  loc_AD90B1: MemLdI2 global_92
  loc_AD90B4: CI4UI1
  loc_AD90B5: FLdPr Me
  loc_AD90B8: MemLdStr global_80
  loc_AD90BB: Ary1LdPr
  loc_AD90BC: MemLdStr global_16
  loc_AD90BF: ConcatStr
  loc_AD90C0: FStStrNoPop var_B0
  loc_AD90C3: LitStr "</td>"
  loc_AD90C6: ConcatStr
  loc_AD90C7: CVarStr var_D4
  loc_AD90CA: PopAdLdVar
  loc_AD90CB: FLdPr Me
  loc_AD90CE: MemLdRfVar from_stack_1.global_64
  loc_AD90D1: LdPrVar
  loc_AD90D3: LateMemCall
  loc_AD90D9: FFree1Str var_B0
  loc_AD90DC: FFree1Var var_D4 = ""
  loc_AD90DF: LitVarStr var_9C, "  </tr>"
  loc_AD90E4: PopAdLdVar
  loc_AD90E5: FLdPr Me
  loc_AD90E8: MemLdRfVar from_stack_1.global_64
  loc_AD90EB: LdPrVar
  loc_AD90ED: LateMemCall
  loc_AD90F3: FLdPr Me
  loc_AD90F6: MemLdRfVar from_stack_1.global_92
  loc_AD90F9: NextI2 var_8C, loc_AD8E27
  loc_AD90FE: LitVarStr var_9C, "  <tr><td colspan=""6"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AD9103: PopAdLdVar
  loc_AD9104: FLdPr Me
  loc_AD9107: MemLdRfVar from_stack_1.global_64
  loc_AD910A: LdPrVar
  loc_AD910C: LateMemCall
  loc_AD9112: LitVarStr var_9C, "  <tr>"
  loc_AD9117: PopAdLdVar
  loc_AD9118: FLdPr Me
  loc_AD911B: MemLdRfVar from_stack_1.global_64
  loc_AD911E: LdPrVar
  loc_AD9120: LateMemCall
  loc_AD9126: LitVarStr var_9C, "    <td colspan=""3"" align=""left"">&nbsp;</th>"
  loc_AD912B: PopAdLdVar
  loc_AD912C: FLdPr Me
  loc_AD912F: MemLdRfVar from_stack_1.global_64
  loc_AD9132: LdPrVar
  loc_AD9134: LateMemCall
  loc_AD913A: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AD913F: PopAdLdVar
  loc_AD9140: FLdPr Me
  loc_AD9143: MemLdRfVar from_stack_1.global_64
  loc_AD9146: LdPrVar
  loc_AD9148: LateMemCall
  loc_AD914E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD9151: FLdPr Me
  loc_AD9154: MemLdStr global_84
  loc_AD9157: ConcatStr
  loc_AD9158: FStStrNoPop var_B0
  loc_AD915B: LitStr "</td>"
  loc_AD915E: ConcatStr
  loc_AD915F: CVarStr var_D4
  loc_AD9162: PopAdLdVar
  loc_AD9163: FLdPr Me
  loc_AD9166: MemLdRfVar from_stack_1.global_64
  loc_AD9169: LdPrVar
  loc_AD916B: LateMemCall
  loc_AD9171: FFree1Str var_B0
  loc_AD9174: FFree1Var var_D4 = ""
  loc_AD9177: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD917A: FLdPr Me
  loc_AD917D: MemLdStr global_88
  loc_AD9180: ConcatStr
  loc_AD9181: FStStrNoPop var_B0
  loc_AD9184: LitStr "</td>"
  loc_AD9187: ConcatStr
  loc_AD9188: CVarStr var_D4
  loc_AD918B: PopAdLdVar
  loc_AD918C: FLdPr Me
  loc_AD918F: MemLdRfVar from_stack_1.global_64
  loc_AD9192: LdPrVar
  loc_AD9194: LateMemCall
  loc_AD919A: FFree1Str var_B0
  loc_AD919D: FFree1Var var_D4 = ""
  loc_AD91A0: LitVarStr var_9C, "  </tr>"
  loc_AD91A5: PopAdLdVar
  loc_AD91A6: FLdPr Me
  loc_AD91A9: MemLdRfVar from_stack_1.global_64
  loc_AD91AC: LdPrVar
  loc_AD91AE: LateMemCall
  loc_AD91B4: LitVarStr var_9C, "  <tr><td colspan=""6"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AD91B9: PopAdLdVar
  loc_AD91BA: FLdPr Me
  loc_AD91BD: MemLdRfVar from_stack_1.global_64
  loc_AD91C0: LdPrVar
  loc_AD91C2: LateMemCall
  loc_AD91C8: FLdPr Me
  loc_AD91CB: MemLdStr global_88
  loc_AD91CE: CR8Str
  loc_AD91D0: FLdPr Me
  loc_AD91D3: MemLdStr global_84
  loc_AD91D6: CR8Str
  loc_AD91D8: SubR4
  loc_AD91D9: CR8R8
  loc_AD91DA: LitI2_Byte 0
  loc_AD91DC: CR8I2
  loc_AD91DD: GtR4
  loc_AD91DE: BranchF loc_AD9224
  loc_AD91E1: LitI2_Byte 0
  loc_AD91E3: LitVar_Missing var_D4
  loc_AD91E6: LitI2_Byte &HFF
  loc_AD91E8: FLdPr Me
  loc_AD91EB: MemLdStr global_88
  loc_AD91EE: CR8Str
  loc_AD91F0: FLdPr Me
  loc_AD91F3: MemLdStr global_84
  loc_AD91F6: CR8Str
  loc_AD91F8: SubR4
  loc_AD91F9: CVarR8
  loc_AD91FD: PopAdLdVar
  loc_AD91FE: FLdRfVar var_EC
  loc_AD9201: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD9206: FFree1Var var_D4 = ""
  loc_AD9209: LitI2_Byte 0
  loc_AD920B: LitVar_Missing var_D4
  loc_AD920E: LitI2_Byte &HFF
  loc_AD9210: LitVarStr var_9C, "0"
  loc_AD9215: PopAdLdVar
  loc_AD9216: FLdRfVar var_F0
  loc_AD9219: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD921E: FFree1Var var_D4 = ""
  loc_AD9221: Branch loc_AD9264
  loc_AD9224: LitI2_Byte 0
  loc_AD9226: LitVar_Missing var_D4
  loc_AD9229: LitI2_Byte &HFF
  loc_AD922B: FLdPr Me
  loc_AD922E: MemLdStr global_84
  loc_AD9231: CR8Str
  loc_AD9233: FLdPr Me
  loc_AD9236: MemLdStr global_88
  loc_AD9239: CR8Str
  loc_AD923B: SubR4
  loc_AD923C: CVarR8
  loc_AD9240: PopAdLdVar
  loc_AD9241: FLdRfVar var_F0
  loc_AD9244: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD9249: FFree1Var var_D4 = ""
  loc_AD924C: LitI2_Byte 0
  loc_AD924E: LitVar_Missing var_D4
  loc_AD9251: LitI2_Byte &HFF
  loc_AD9253: LitVarStr var_9C, "0"
  loc_AD9258: PopAdLdVar
  loc_AD9259: FLdRfVar var_EC
  loc_AD925C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD9261: FFree1Var var_D4 = ""
  loc_AD9264: LitStr "SELECT PatrPaco, DetaCuco"
  loc_AD9267: LitStr " FROM paraconta"
  loc_AD926A: ConcatStr
  loc_AD926B: FStStrNoPop var_B0
  loc_AD926E: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = PatrPaco"
  loc_AD9271: ConcatStr
  loc_AD9272: FStStrNoPop var_B4
  loc_AD9275: LitStr " WHERE paraconta.PeriInfo = "
  loc_AD9278: ConcatStr
  loc_AD9279: CVarStr var_120
  loc_AD927C: FLdPr Me
  loc_AD927F: VCallAd Control_ID_mskDesde
  loc_AD9282: FStAdFunc var_88
  loc_AD9285: FLdPr var_88
  loc_AD9288: LateIdLdVar var_D4 DispID_15 0
  loc_AD928F: CStrVarTmp
  loc_AD9290: CVarStr var_100
  loc_AD9293: FLdRfVar var_110
  loc_AD9296: ImpAdCallFPR4  = Year()
  loc_AD929B: FLdRfVar var_110
  loc_AD929E: ConcatVar var_130
  loc_AD92A2: CStrVarVal var_B8
  loc_AD92A6: FLdRfVar var_E8
  loc_AD92A9: NewIfNullPr clsparaconta
  loc_AD92AC: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_AD92B1: FFreeStr var_B0 = "": var_B4 = ""
  loc_AD92BA: FFree1Ad var_88
  loc_AD92BD: FFreeVar var_D4 = "": var_100 = "": var_120 = "": var_110 = ""
  loc_AD92CA: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_AD92CF: PopAdLdVar
  loc_AD92D0: FLdPr Me
  loc_AD92D3: MemLdRfVar from_stack_1.global_64
  loc_AD92D6: LdPrVar
  loc_AD92D8: LateMemCall
  loc_AD92DE: LitVarStr var_AC, "    <td class=""Titulo2"" colspan=""3"" align=""left"">"
  loc_AD92E3: FLdRfVar var_D4
  loc_AD92E6: FLdRfVar var_138
  loc_AD92E9: LitVarStr var_9C, "PatrPaco"
  loc_AD92EE: PopAdLdVar
  loc_AD92EF: FLdRfVar var_134
  loc_AD92F2: FLdRfVar var_88
  loc_AD92F5: FLdRfVar var_E8
  loc_AD92F8: NewIfNullPr clsparaconta
  loc_AD92FB: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AD9300: FLdPr var_88
  loc_AD9303:  = Me.Fields
  loc_AD9308: FLdPr var_134
  loc_AD930B: from_stack_2 = Me.Item(from_stack_1)
  loc_AD9310: FLdPr var_138
  loc_AD9313:  = Me.Value
  loc_AD9318: FLdRfVar var_D4
  loc_AD931B: ConcatVar var_100
  loc_AD931F: LitVarStr var_148, " - "
  loc_AD9324: ConcatVar var_110
  loc_AD9328: FLdRfVar var_120
  loc_AD932B: FLdRfVar var_164
  loc_AD932E: LitVarStr var_160, "DetaCuco"
  loc_AD9333: PopAdLdVar
  loc_AD9334: FLdRfVar var_150
  loc_AD9337: FLdRfVar var_14C
  loc_AD933A: FLdRfVar var_E8
  loc_AD933D: NewIfNullPr clsparaconta
  loc_AD9340: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AD9345: FLdPr var_14C
  loc_AD9348:  = Me.Fields
  loc_AD934D: FLdPr var_150
  loc_AD9350: from_stack_2 = Me.Item(from_stack_1)
  loc_AD9355: FLdPr var_164
  loc_AD9358:  = Me.Value
  loc_AD935D: FLdRfVar var_120
  loc_AD9360: ConcatVar var_130
  loc_AD9364: LitVarStr var_174, "</th>"
  loc_AD9369: ConcatVar var_184
  loc_AD936D: PopAdLdVar
  loc_AD936E: FLdPr Me
  loc_AD9371: MemLdRfVar from_stack_1.global_64
  loc_AD9374: LdPrVar
  loc_AD9376: LateMemCall
  loc_AD937C: FFreeAd var_88 = "": var_134 = "": var_138 = "": var_14C = "": var_150 = ""
  loc_AD938B: FFreeVar var_D4 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = ""
  loc_AD939A: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AD939F: PopAdLdVar
  loc_AD93A0: FLdPr Me
  loc_AD93A3: MemLdRfVar from_stack_1.global_64
  loc_AD93A6: LdPrVar
  loc_AD93A8: LateMemCall
  loc_AD93AE: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD93B1: ILdRf var_EC
  loc_AD93B4: ConcatStr
  loc_AD93B5: FStStrNoPop var_B0
  loc_AD93B8: LitStr "</td>"
  loc_AD93BB: ConcatStr
  loc_AD93BC: CVarStr var_D4
  loc_AD93BF: PopAdLdVar
  loc_AD93C0: FLdPr Me
  loc_AD93C3: MemLdRfVar from_stack_1.global_64
  loc_AD93C6: LdPrVar
  loc_AD93C8: LateMemCall
  loc_AD93CE: FFree1Str var_B0
  loc_AD93D1: FFree1Var var_D4 = ""
  loc_AD93D4: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD93D7: ILdRf var_F0
  loc_AD93DA: ConcatStr
  loc_AD93DB: FStStrNoPop var_B0
  loc_AD93DE: LitStr "</td>"
  loc_AD93E1: ConcatStr
  loc_AD93E2: CVarStr var_D4
  loc_AD93E5: PopAdLdVar
  loc_AD93E6: FLdPr Me
  loc_AD93E9: MemLdRfVar from_stack_1.global_64
  loc_AD93EC: LdPrVar
  loc_AD93EE: LateMemCall
  loc_AD93F4: FFree1Str var_B0
  loc_AD93F7: FFree1Var var_D4 = ""
  loc_AD93FA: LitVarStr var_9C, "  </tr>"
  loc_AD93FF: PopAdLdVar
  loc_AD9400: FLdPr Me
  loc_AD9403: MemLdRfVar from_stack_1.global_64
  loc_AD9406: LdPrVar
  loc_AD9408: LateMemCall
  loc_AD940E: LitNothing
  loc_AD9410: CastAd
  loc_AD9413: FStAdFunc var_E8
  loc_AD9416: Call Proc_239_20_983C70()
  loc_AD941B: FLdPr Me
  loc_AD941E: MemLdRfVar from_stack_1.global_64
  loc_AD9421: LdPrVar
  loc_AD9423: LateMemCall
  loc_AD9429: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AD942E: ExitProcHresult
End Sub

Private Function Proc_239_19_ACBDF8() 'ACBDF8
  'Data Table: 455AFC
  loc_ACB7BC: LitVarStr var_94, "<html>"
  loc_ACB7C1: PopAdLdVar
  loc_ACB7C2: FLdPr Me
  loc_ACB7C5: MemLdRfVar from_stack_1.global_64
  loc_ACB7C8: LdPrVar
  loc_ACB7CA: LateMemCall
  loc_ACB7D0: LitVarStr var_94, "<head>"
  loc_ACB7D5: PopAdLdVar
  loc_ACB7D6: FLdPr Me
  loc_ACB7D9: MemLdRfVar from_stack_1.global_64
  loc_ACB7DC: LdPrVar
  loc_ACB7DE: LateMemCall
  loc_ACB7E4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ACB7E9: PopAdLdVar
  loc_ACB7EA: FLdPr Me
  loc_ACB7ED: MemLdRfVar from_stack_1.global_64
  loc_ACB7F0: LdPrVar
  loc_ACB7F2: LateMemCall
  loc_ACB7F8: LitStr "<title>"
  loc_ACB7FB: FLdRfVar var_A8
  loc_ACB7FE: FLdPr Me
  loc_ACB801:  = Me.Caption
  loc_ACB806: ILdRf var_A8
  loc_ACB809: ConcatStr
  loc_ACB80A: FStStrNoPop var_AC
  loc_ACB80D: LitStr "</title>"
  loc_ACB810: ConcatStr
  loc_ACB811: CVarStr var_BC
  loc_ACB814: PopAdLdVar
  loc_ACB815: FLdPr Me
  loc_ACB818: MemLdRfVar from_stack_1.global_64
  loc_ACB81B: LdPrVar
  loc_ACB81D: LateMemCall
  loc_ACB823: FFreeStr var_A8 = ""
  loc_ACB82A: FFree1Var var_BC = ""
  loc_ACB82D: LitVarStr var_94, "<style type=""text/css"">"
  loc_ACB832: PopAdLdVar
  loc_ACB833: FLdPr Me
  loc_ACB836: MemLdRfVar from_stack_1.global_64
  loc_ACB839: LdPrVar
  loc_ACB83B: LateMemCall
  loc_ACB841: LitVarStr var_94, ".Titulo1 {"
  loc_ACB846: PopAdLdVar
  loc_ACB847: FLdPr Me
  loc_ACB84A: MemLdRfVar from_stack_1.global_64
  loc_ACB84D: LdPrVar
  loc_ACB84F: LateMemCall
  loc_ACB855: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACB85A: PopAdLdVar
  loc_ACB85B: FLdPr Me
  loc_ACB85E: MemLdRfVar from_stack_1.global_64
  loc_ACB861: LdPrVar
  loc_ACB863: LateMemCall
  loc_ACB869: LitVarStr var_94, " font-size: 18px;"
  loc_ACB86E: PopAdLdVar
  loc_ACB86F: FLdPr Me
  loc_ACB872: MemLdRfVar from_stack_1.global_64
  loc_ACB875: LdPrVar
  loc_ACB877: LateMemCall
  loc_ACB87D: LitVarStr var_94, " font-weight: bold;"
  loc_ACB882: PopAdLdVar
  loc_ACB883: FLdPr Me
  loc_ACB886: MemLdRfVar from_stack_1.global_64
  loc_ACB889: LdPrVar
  loc_ACB88B: LateMemCall
  loc_ACB891: LitVarStr var_94, "}"
  loc_ACB896: PopAdLdVar
  loc_ACB897: FLdPr Me
  loc_ACB89A: MemLdRfVar from_stack_1.global_64
  loc_ACB89D: LdPrVar
  loc_ACB89F: LateMemCall
  loc_ACB8A5: LitVarStr var_94, ".Titulo2 {"
  loc_ACB8AA: PopAdLdVar
  loc_ACB8AB: FLdPr Me
  loc_ACB8AE: MemLdRfVar from_stack_1.global_64
  loc_ACB8B1: LdPrVar
  loc_ACB8B3: LateMemCall
  loc_ACB8B9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACB8BE: PopAdLdVar
  loc_ACB8BF: FLdPr Me
  loc_ACB8C2: MemLdRfVar from_stack_1.global_64
  loc_ACB8C5: LdPrVar
  loc_ACB8C7: LateMemCall
  loc_ACB8CD: LitVarStr var_94, " font-size: 14px;"
  loc_ACB8D2: PopAdLdVar
  loc_ACB8D3: FLdPr Me
  loc_ACB8D6: MemLdRfVar from_stack_1.global_64
  loc_ACB8D9: LdPrVar
  loc_ACB8DB: LateMemCall
  loc_ACB8E1: LitVarStr var_94, " font-weight: bold;"
  loc_ACB8E6: PopAdLdVar
  loc_ACB8E7: FLdPr Me
  loc_ACB8EA: MemLdRfVar from_stack_1.global_64
  loc_ACB8ED: LdPrVar
  loc_ACB8EF: LateMemCall
  loc_ACB8F5: LitVarStr var_94, "}"
  loc_ACB8FA: PopAdLdVar
  loc_ACB8FB: FLdPr Me
  loc_ACB8FE: MemLdRfVar from_stack_1.global_64
  loc_ACB901: LdPrVar
  loc_ACB903: LateMemCall
  loc_ACB909: LitVarStr var_94, ".Normal {"
  loc_ACB90E: PopAdLdVar
  loc_ACB90F: FLdPr Me
  loc_ACB912: MemLdRfVar from_stack_1.global_64
  loc_ACB915: LdPrVar
  loc_ACB917: LateMemCall
  loc_ACB91D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACB922: PopAdLdVar
  loc_ACB923: FLdPr Me
  loc_ACB926: MemLdRfVar from_stack_1.global_64
  loc_ACB929: LdPrVar
  loc_ACB92B: LateMemCall
  loc_ACB931: LitVarStr var_94, " font-size: 14px;"
  loc_ACB936: PopAdLdVar
  loc_ACB937: FLdPr Me
  loc_ACB93A: MemLdRfVar from_stack_1.global_64
  loc_ACB93D: LdPrVar
  loc_ACB93F: LateMemCall
  loc_ACB945: LitVarStr var_94, " font-style: normal;"
  loc_ACB94A: PopAdLdVar
  loc_ACB94B: FLdPr Me
  loc_ACB94E: MemLdRfVar from_stack_1.global_64
  loc_ACB951: LdPrVar
  loc_ACB953: LateMemCall
  loc_ACB959: LitVarStr var_94, " font-weight: normal;"
  loc_ACB95E: PopAdLdVar
  loc_ACB95F: FLdPr Me
  loc_ACB962: MemLdRfVar from_stack_1.global_64
  loc_ACB965: LdPrVar
  loc_ACB967: LateMemCall
  loc_ACB96D: LitVarStr var_94, " font-variant: normal;"
  loc_ACB972: PopAdLdVar
  loc_ACB973: FLdPr Me
  loc_ACB976: MemLdRfVar from_stack_1.global_64
  loc_ACB979: LdPrVar
  loc_ACB97B: LateMemCall
  loc_ACB981: LitVarStr var_94, "}"
  loc_ACB986: PopAdLdVar
  loc_ACB987: FLdPr Me
  loc_ACB98A: MemLdRfVar from_stack_1.global_64
  loc_ACB98D: LdPrVar
  loc_ACB98F: LateMemCall
  loc_ACB995: LitVarStr var_94, ".Encabezado {"
  loc_ACB99A: PopAdLdVar
  loc_ACB99B: FLdPr Me
  loc_ACB99E: MemLdRfVar from_stack_1.global_64
  loc_ACB9A1: LdPrVar
  loc_ACB9A3: LateMemCall
  loc_ACB9A9: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_ACB9AE: PopAdLdVar
  loc_ACB9AF: FLdPr Me
  loc_ACB9B2: MemLdRfVar from_stack_1.global_64
  loc_ACB9B5: LdPrVar
  loc_ACB9B7: LateMemCall
  loc_ACB9BD: LitVarStr var_94, " font-size: 13px;"
  loc_ACB9C2: PopAdLdVar
  loc_ACB9C3: FLdPr Me
  loc_ACB9C6: MemLdRfVar from_stack_1.global_64
  loc_ACB9C9: LdPrVar
  loc_ACB9CB: LateMemCall
  loc_ACB9D1: LitVarStr var_94, " font-weight: bold;"
  loc_ACB9D6: PopAdLdVar
  loc_ACB9D7: FLdPr Me
  loc_ACB9DA: MemLdRfVar from_stack_1.global_64
  loc_ACB9DD: LdPrVar
  loc_ACB9DF: LateMemCall
  loc_ACB9E5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_ACB9EA: PopAdLdVar
  loc_ACB9EB: FLdPr Me
  loc_ACB9EE: MemLdRfVar from_stack_1.global_64
  loc_ACB9F1: LdPrVar
  loc_ACB9F3: LateMemCall
  loc_ACB9F9: LitVarStr var_94, "}"
  loc_ACB9FE: PopAdLdVar
  loc_ACB9FF: FLdPr Me
  loc_ACBA02: MemLdRfVar from_stack_1.global_64
  loc_ACBA05: LdPrVar
  loc_ACBA07: LateMemCall
  loc_ACBA0D: LitVarStr var_94, ".LineaDato {"
  loc_ACBA12: PopAdLdVar
  loc_ACBA13: FLdPr Me
  loc_ACBA16: MemLdRfVar from_stack_1.global_64
  loc_ACBA19: LdPrVar
  loc_ACBA1B: LateMemCall
  loc_ACBA21: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ACBA26: PopAdLdVar
  loc_ACBA27: FLdPr Me
  loc_ACBA2A: MemLdRfVar from_stack_1.global_64
  loc_ACBA2D: LdPrVar
  loc_ACBA2F: LateMemCall
  loc_ACBA35: LitVarStr var_94, " font-size: 10px;"
  loc_ACBA3A: PopAdLdVar
  loc_ACBA3B: FLdPr Me
  loc_ACBA3E: MemLdRfVar from_stack_1.global_64
  loc_ACBA41: LdPrVar
  loc_ACBA43: LateMemCall
  loc_ACBA49: LitVarStr var_94, "}"
  loc_ACBA4E: PopAdLdVar
  loc_ACBA4F: FLdPr Me
  loc_ACBA52: MemLdRfVar from_stack_1.global_64
  loc_ACBA55: LdPrVar
  loc_ACBA57: LateMemCall
  loc_ACBA5D: LitVarStr var_94, ".Totales {"
  loc_ACBA62: PopAdLdVar
  loc_ACBA63: FLdPr Me
  loc_ACBA66: MemLdRfVar from_stack_1.global_64
  loc_ACBA69: LdPrVar
  loc_ACBA6B: LateMemCall
  loc_ACBA71: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ACBA76: PopAdLdVar
  loc_ACBA77: FLdPr Me
  loc_ACBA7A: MemLdRfVar from_stack_1.global_64
  loc_ACBA7D: LdPrVar
  loc_ACBA7F: LateMemCall
  loc_ACBA85: LitVarStr var_94, " font-size: 12px;"
  loc_ACBA8A: PopAdLdVar
  loc_ACBA8B: FLdPr Me
  loc_ACBA8E: MemLdRfVar from_stack_1.global_64
  loc_ACBA91: LdPrVar
  loc_ACBA93: LateMemCall
  loc_ACBA99: LitVarStr var_94, " font-weight: bold;"
  loc_ACBA9E: PopAdLdVar
  loc_ACBA9F: FLdPr Me
  loc_ACBAA2: MemLdRfVar from_stack_1.global_64
  loc_ACBAA5: LdPrVar
  loc_ACBAA7: LateMemCall
  loc_ACBAAD: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_ACBAB2: PopAdLdVar
  loc_ACBAB3: FLdPr Me
  loc_ACBAB6: MemLdRfVar from_stack_1.global_64
  loc_ACBAB9: LdPrVar
  loc_ACBABB: LateMemCall
  loc_ACBAC1: LitVarStr var_94, "}"
  loc_ACBAC6: PopAdLdVar
  loc_ACBAC7: FLdPr Me
  loc_ACBACA: MemLdRfVar from_stack_1.global_64
  loc_ACBACD: LdPrVar
  loc_ACBACF: LateMemCall
  loc_ACBAD5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_ACBADA: PopAdLdVar
  loc_ACBADB: FLdPr Me
  loc_ACBADE: MemLdRfVar from_stack_1.global_64
  loc_ACBAE1: LdPrVar
  loc_ACBAE3: LateMemCall
  loc_ACBAE9: LitVarStr var_94, "</style>"
  loc_ACBAEE: PopAdLdVar
  loc_ACBAEF: FLdPr Me
  loc_ACBAF2: MemLdRfVar from_stack_1.global_64
  loc_ACBAF5: LdPrVar
  loc_ACBAF7: LateMemCall
  loc_ACBAFD: LitI4 0
  loc_ACBB02: FStStrCopy var_AC
  loc_ACBB05: FLdRfVar var_AC
  loc_ACBB08: LitI4 0
  loc_ACBB0D: FStStrCopy var_A8
  loc_ACBB10: FLdRfVar var_A8
  loc_ACBB13: LitI2_Byte 0
  loc_ACBB15: PopTmpLdAd2 var_BE
  loc_ACBB18: FLdPr Me
  loc_ACBB1B: MemLdRfVar from_stack_1.global_64
  loc_ACBB1E: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ACBB23: FFreeStr var_A8 = ""
  loc_ACBB2A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_ACBB2F: PopAdLdVar
  loc_ACBB30: FLdPr Me
  loc_ACBB33: MemLdRfVar from_stack_1.global_64
  loc_ACBB36: LdPrVar
  loc_ACBB38: LateMemCall
  loc_ACBB3E: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ACBB43: PopAdLdVar
  loc_ACBB44: FLdPr Me
  loc_ACBB47: MemLdRfVar from_stack_1.global_64
  loc_ACBB4A: LdPrVar
  loc_ACBB4C: LateMemCall
  loc_ACBB52: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_ACBB57: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_ACBB5C: FStVarCopyObj var_BC
  loc_ACBB5F: FLdRfVar var_BC
  loc_ACBB62: FLdRfVar var_D0
  loc_ACBB65: ImpAdCallFPR4  = Ucase()
  loc_ACBB6A: FLdRfVar var_D0
  loc_ACBB6D: ConcatVar var_E0
  loc_ACBB71: LitVarStr var_F0, "</p>"
  loc_ACBB76: ConcatVar var_100
  loc_ACBB7A: PopAdLdVar
  loc_ACBB7B: FLdPr Me
  loc_ACBB7E: MemLdRfVar from_stack_1.global_64
  loc_ACBB81: LdPrVar
  loc_ACBB83: LateMemCall
  loc_ACBB89: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_ACBB94: LitStr "    <p align=""center"">"
  loc_ACBB97: FLdRfVar var_A8
  loc_ACBB9A: FLdPr Me
  loc_ACBB9D:  = Me.Caption
  loc_ACBBA2: ILdRf var_A8
  loc_ACBBA5: ConcatStr
  loc_ACBBA6: FStStrNoPop var_AC
  loc_ACBBA9: LitStr "</p>"
  loc_ACBBAC: ConcatStr
  loc_ACBBAD: CVarStr var_BC
  loc_ACBBB0: PopAdLdVar
  loc_ACBBB1: FLdPr Me
  loc_ACBBB4: MemLdRfVar from_stack_1.global_64
  loc_ACBBB7: LdPrVar
  loc_ACBBB9: LateMemCall
  loc_ACBBBF: FFreeStr var_A8 = ""
  loc_ACBBC6: FFree1Var var_BC = ""
  loc_ACBBC9: LitVarStr var_94, "  </tr>"
  loc_ACBBCE: PopAdLdVar
  loc_ACBBCF: FLdPr Me
  loc_ACBBD2: MemLdRfVar from_stack_1.global_64
  loc_ACBBD5: LdPrVar
  loc_ACBBD7: LateMemCall
  loc_ACBBDD: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_ACBBE2: PopAdLdVar
  loc_ACBBE3: FLdPr Me
  loc_ACBBE6: MemLdRfVar from_stack_1.global_64
  loc_ACBBE9: LdPrVar
  loc_ACBBEB: LateMemCall
  loc_ACBBF1: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_ACBBF6: PopAdLdVar
  loc_ACBBF7: FLdPr Me
  loc_ACBBFA: MemLdRfVar from_stack_1.global_64
  loc_ACBBFD: LdPrVar
  loc_ACBBFF: LateMemCall
  loc_ACBC05: FLdPr Me
  loc_ACBC08: VCallAd Control_ID_mskDesde
  loc_ACBC0B: FStAdFunc var_114
  loc_ACBC0E: FLdPr var_114
  loc_ACBC11: LateIdLdVar var_BC DispID_22 0
  loc_ACBC18: CStrVarTmp
  loc_ACBC19: FStStrNoPop var_A8
  loc_ACBC1C: LitStr vbNullString
  loc_ACBC1F: NeStr
  loc_ACBC21: FFree1Str var_A8
  loc_ACBC24: FFree1Ad var_114
  loc_ACBC27: FFree1Var var_BC = ""
  loc_ACBC2A: BranchF loc_ACBC72
  loc_ACBC2D: LitStr "         Desde: <span class=""Normal"">"
  loc_ACBC30: FLdPr Me
  loc_ACBC33: VCallAd Control_ID_mskDesde
  loc_ACBC36: FStAdFunc var_114
  loc_ACBC39: FLdPr var_114
  loc_ACBC3C: LateIdLdVar var_BC DispID_15 0
  loc_ACBC43: CStrVarTmp
  loc_ACBC44: FStStrNoPop var_A8
  loc_ACBC47: ConcatStr
  loc_ACBC48: FStStrNoPop var_AC
  loc_ACBC4B: LitStr "</span><br>"
  loc_ACBC4E: ConcatStr
  loc_ACBC4F: CVarStr var_D0
  loc_ACBC52: PopAdLdVar
  loc_ACBC53: FLdPr Me
  loc_ACBC56: MemLdRfVar from_stack_1.global_64
  loc_ACBC59: LdPrVar
  loc_ACBC5B: LateMemCall
  loc_ACBC61: FFreeStr var_A8 = ""
  loc_ACBC68: FFree1Ad var_114
  loc_ACBC6B: FFreeVar var_BC = ""
  loc_ACBC72: FLdPr Me
  loc_ACBC75: VCallAd Control_ID_mskHasta
  loc_ACBC78: FStAdFunc var_114
  loc_ACBC7B: FLdPr var_114
  loc_ACBC7E: LateIdLdVar var_BC DispID_22 0
  loc_ACBC85: CStrVarTmp
  loc_ACBC86: FStStrNoPop var_A8
  loc_ACBC89: LitStr vbNullString
  loc_ACBC8C: NeStr
  loc_ACBC8E: FFree1Str var_A8
  loc_ACBC91: FFree1Ad var_114
  loc_ACBC94: FFree1Var var_BC = ""
  loc_ACBC97: BranchF loc_ACBCDF
  loc_ACBC9A: LitStr "         Hasta: <span class=""Normal"">"
  loc_ACBC9D: FLdPr Me
  loc_ACBCA0: VCallAd Control_ID_mskHasta
  loc_ACBCA3: FStAdFunc var_114
  loc_ACBCA6: FLdPr var_114
  loc_ACBCA9: LateIdLdVar var_BC DispID_15 0
  loc_ACBCB0: CStrVarTmp
  loc_ACBCB1: FStStrNoPop var_A8
  loc_ACBCB4: ConcatStr
  loc_ACBCB5: FStStrNoPop var_AC
  loc_ACBCB8: LitStr "</span>"
  loc_ACBCBB: ConcatStr
  loc_ACBCBC: CVarStr var_D0
  loc_ACBCBF: PopAdLdVar
  loc_ACBCC0: FLdPr Me
  loc_ACBCC3: MemLdRfVar from_stack_1.global_64
  loc_ACBCC6: LdPrVar
  loc_ACBCC8: LateMemCall
  loc_ACBCCE: FFreeStr var_A8 = ""
  loc_ACBCD5: FFree1Ad var_114
  loc_ACBCD8: FFreeVar var_BC = ""
  loc_ACBCDF: LitVarStr var_94, "   </th>"
  loc_ACBCE4: PopAdLdVar
  loc_ACBCE5: FLdPr Me
  loc_ACBCE8: MemLdRfVar from_stack_1.global_64
  loc_ACBCEB: LdPrVar
  loc_ACBCED: LateMemCall
  loc_ACBCF3: LitVarStr var_94, "  </tr>"
  loc_ACBCF8: PopAdLdVar
  loc_ACBCF9: FLdPr Me
  loc_ACBCFC: MemLdRfVar from_stack_1.global_64
  loc_ACBCFF: LdPrVar
  loc_ACBD01: LateMemCall
  loc_ACBD07: LitVarStr var_94, "</table>"
  loc_ACBD0C: PopAdLdVar
  loc_ACBD0D: FLdPr Me
  loc_ACBD10: MemLdRfVar from_stack_1.global_64
  loc_ACBD13: LdPrVar
  loc_ACBD15: LateMemCall
  loc_ACBD1B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ACBD20: PopAdLdVar
  loc_ACBD21: FLdPr Me
  loc_ACBD24: MemLdRfVar from_stack_1.global_64
  loc_ACBD27: LdPrVar
  loc_ACBD29: LateMemCall
  loc_ACBD2F: LitVarStr var_94, "  <THEAD>"
  loc_ACBD34: PopAdLdVar
  loc_ACBD35: FLdPr Me
  loc_ACBD38: MemLdRfVar from_stack_1.global_64
  loc_ACBD3B: LdPrVar
  loc_ACBD3D: LateMemCall
  loc_ACBD43: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_ACBD48: PopAdLdVar
  loc_ACBD49: FLdPr Me
  loc_ACBD4C: MemLdRfVar from_stack_1.global_64
  loc_ACBD4F: LdPrVar
  loc_ACBD51: LateMemCall
  loc_ACBD57: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_ACBD5C: PopAdLdVar
  loc_ACBD5D: FLdPr Me
  loc_ACBD60: MemLdRfVar from_stack_1.global_64
  loc_ACBD63: LdPrVar
  loc_ACBD65: LateMemCall
  loc_ACBD6B: LitVarStr var_94, "    <th>Fecha</th>"
  loc_ACBD70: PopAdLdVar
  loc_ACBD71: FLdPr Me
  loc_ACBD74: MemLdRfVar from_stack_1.global_64
  loc_ACBD77: LdPrVar
  loc_ACBD79: LateMemCall
  loc_ACBD7F: LitVarStr var_94, "    <th>Cód.Ingreso</th>"
  loc_ACBD84: PopAdLdVar
  loc_ACBD85: FLdPr Me
  loc_ACBD88: MemLdRfVar from_stack_1.global_64
  loc_ACBD8B: LdPrVar
  loc_ACBD8D: LateMemCall
  loc_ACBD93: LitVarStr var_94, "    <th>Tipo Movim.</th>"
  loc_ACBD98: PopAdLdVar
  loc_ACBD99: FLdPr Me
  loc_ACBD9C: MemLdRfVar from_stack_1.global_64
  loc_ACBD9F: LdPrVar
  loc_ACBDA1: LateMemCall
  loc_ACBDA7: LitVarStr var_94, "    <th>D E B E</th>"
  loc_ACBDAC: PopAdLdVar
  loc_ACBDAD: FLdPr Me
  loc_ACBDB0: MemLdRfVar from_stack_1.global_64
  loc_ACBDB3: LdPrVar
  loc_ACBDB5: LateMemCall
  loc_ACBDBB: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_ACBDC0: PopAdLdVar
  loc_ACBDC1: FLdPr Me
  loc_ACBDC4: MemLdRfVar from_stack_1.global_64
  loc_ACBDC7: LdPrVar
  loc_ACBDC9: LateMemCall
  loc_ACBDCF: LitVarStr var_94, "  </tr>"
  loc_ACBDD4: PopAdLdVar
  loc_ACBDD5: FLdPr Me
  loc_ACBDD8: MemLdRfVar from_stack_1.global_64
  loc_ACBDDB: LdPrVar
  loc_ACBDDD: LateMemCall
  loc_ACBDE3: LitVarStr var_94, "  </THEAD>"
  loc_ACBDE8: PopAdLdVar
  loc_ACBDE9: FLdPr Me
  loc_ACBDEC: MemLdRfVar from_stack_1.global_64
  loc_ACBDEF: LdPrVar
  loc_ACBDF1: LateMemCall
  loc_ACBDF7: ExitProcHresult
End Function

Private Function Proc_239_20_983C70() '983C70
  'Data Table: 455AFC
  loc_983C30: LitVarStr var_94, "</table>"
  loc_983C35: PopAdLdVar
  loc_983C36: FLdPr Me
  loc_983C39: MemLdRfVar from_stack_1.global_64
  loc_983C3C: LdPrVar
  loc_983C3E: LateMemCall
  loc_983C44: LitVarStr var_94, "</body>"
  loc_983C49: PopAdLdVar
  loc_983C4A: FLdPr Me
  loc_983C4D: MemLdRfVar from_stack_1.global_64
  loc_983C50: LdPrVar
  loc_983C52: LateMemCall
  loc_983C58: LitVarStr var_94, "</html>"
  loc_983C5D: PopAdLdVar
  loc_983C5E: FLdPr Me
  loc_983C61: MemLdRfVar from_stack_1.global_64
  loc_983C64: LdPrVar
  loc_983C66: LateMemCall
  loc_983C6C: ExitProcHresult
  loc_983C6D: LeI4
End Function
