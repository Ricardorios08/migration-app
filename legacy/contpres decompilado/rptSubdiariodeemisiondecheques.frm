VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodeemisiondecheques
  Caption = "Subdiario de emisión de cheques"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodeemisiondecheques.frx":0000
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
    OleObjectBlob = "rptSubdiariodeemisiondecheques.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptSubdiariodeemisiondecheques.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodeemisiondecheques.frx":0B9C
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
      Picture = "rptSubdiariodeemisiondecheques.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodeemisiondecheques.frx":1142
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
      OleObjectBlob = "rptSubdiariodeemisiondecheques.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiariodeemisiondecheques.frx":170C
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
    OleObjectBlob = "rptSubdiariodeemisiondecheques.frx":1794
  End
End

Attribute VB_Name = "rptSubdiariodeemisiondecheques"

Public bGenerado As Boolean

Private Type UDT_1_00595938
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_2_00618488
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B6FC
  'Data Table: 45027C
  loc_98B6C4: FLdPr Me
  loc_98B6C7: VCallAd Control_ID_statusBar
  loc_98B6CA: FStAdFunc var_88
  loc_98B6CD: FLdPr var_88
  loc_98B6D0: LateIdLdVar var_98 DispID_1 0
  loc_98B6D7: CStrVarTmp
  loc_98B6D8: CVarStr var_A8
  loc_98B6DB: PopAdLdVar
  loc_98B6DC: FLdPr Me
  loc_98B6DF: VCallAd Control_ID_statusBar
  loc_98B6E2: FStAdFunc var_BC
  loc_98B6E5: FLdPr var_BC
  loc_98B6E8: LateIdSt
  loc_98B6ED: FFreeAd var_88 = ""
  loc_98B6F4: FFreeVar var_98 = ""
  loc_98B6FB: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '959FFC
  'Data Table: 45027C
  loc_959FE4: LitI2_Byte 0
  loc_959FE6: ILdRf Me
  loc_959FE9: CastAd
  loc_959FEC: FStAdFunc var_88
  loc_959FEF: FLdRfVar var_88
  loc_959FF2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_959FF7: FFree1Ad var_88
  loc_959FFA: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95A048
  'Data Table: 45027C
  loc_95A030: ILdRf Me
  loc_95A033: CastAd
  loc_95A036: FStAdFunc var_88
  loc_95A039: FLdRfVar var_88
  loc_95A03C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95A041: FFree1Ad var_88
  loc_95A044: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '978994
  'Data Table: 45027C
  loc_978964: LitVarStr var_94, "Cerrando..."
  loc_978969: PopAdLdVar
  loc_97896A: FLdPr Me
  loc_97896D: VCallAd Control_ID_statusBar
  loc_978970: FStAdFunc var_A8
  loc_978973: FLdPr var_A8
  loc_978976: LateIdSt
  loc_97897B: FFree1Ad var_A8
  loc_97897E: ILdRf Me
  loc_978981: FStAdNoPop
  loc_978985: ImpAdLdRf MemVar_C44F9C
  loc_978988: NewIfNullPr Me
  loc_97898B: Me.Global.Unload from_stack_1
  loc_978990: FFree1Ad var_A8
  loc_978993: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BC1C4
  'Data Table: 45027C
  loc_9BC114: LitI2_Byte 0
  loc_9BC116: FLdPr Me
  loc_9BC119: MemStI2 bGenerado
  loc_9BC11C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BC121: LitI2_Byte 0
  loc_9BC123: PopTmpLdAd2 var_86
  loc_9BC126: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BC12B: CVarDate var_A8
  loc_9BC12F: FLdRfVar var_B8
  loc_9BC132: ImpAdCallFPR4  = Year()
  loc_9BC137: LitI2_Byte 0
  loc_9BC139: PopTmpLdAd2 var_BA
  loc_9BC13C: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BC141: CVarDate var_DC
  loc_9BC145: FLdRfVar var_EC
  loc_9BC148: ImpAdCallFPR4  = Month()
  loc_9BC14D: LitI2_Byte 1
  loc_9BC14F: FLdRfVar var_EC
  loc_9BC152: CI2Var
  loc_9BC153: FLdRfVar var_B8
  loc_9BC156: CI2Var
  loc_9BC157: FLdRfVar var_FC
  loc_9BC15A: ImpAdCallFPR4  = DateSerial(, , )
  loc_9BC15F: FLdRfVar var_FC
  loc_9BC162: CStrVarTmp
  loc_9BC163: CVarStr var_10C
  loc_9BC166: PopAdLdVar
  loc_9BC167: FLdPr Me
  loc_9BC16A: VCallAd Control_ID_mskDesde
  loc_9BC16D: FStAdFunc var_120
  loc_9BC170: FLdPr var_120
  loc_9BC173: LateIdSt
  loc_9BC178: FFree1Ad var_120
  loc_9BC17B: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9BC18A: ImpAdLdFPR8 MemVar_C3D04C
  loc_9BC18D: CStrDate
  loc_9BC18F: CVarStr var_A8
  loc_9BC192: PopAdLdVar
  loc_9BC193: FLdPr Me
  loc_9BC196: VCallAd Control_ID_mskHasta
  loc_9BC199: FStAdFunc var_120
  loc_9BC19C: FLdPr var_120
  loc_9BC19F: LateIdSt
  loc_9BC1A4: FFree1Ad var_120
  loc_9BC1A7: FFree1Var var_A8 = ""
  loc_9BC1AA: Call HabilitarCriterio()
  loc_9BC1AF: ILdRf Me
  loc_9BC1B2: CastAd
  loc_9BC1B5: FStAdFunc var_120
  loc_9BC1B8: FLdRfVar var_120
  loc_9BC1BB: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BC1C0: FFree1Ad var_120
  loc_9BC1C3: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95A25C
  'Data Table: 45027C
  loc_95A244: ILdRf Me
  loc_95A247: CastAd
  loc_95A24A: FStAdFunc var_88
  loc_95A24D: FLdRfVar var_88
  loc_95A250: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95A255: FFree1Ad var_88
  loc_95A258: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '9535E0
  'Data Table: 45027C
  loc_9535CC: FLdPr Me
  loc_9535CF: VCallAd Control_ID_mskDesde
  loc_9535D2: CVarAd
  loc_9535D6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9535DB: FFree1Var var_94 = ""
  loc_9535DE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C3998
  'Data Table: 45027C
  loc_9C38D4: FLdPr Me
  loc_9C38D7: VCallAd Control_ID_mskDesde
  loc_9C38DA: FStAdFunc var_88
  loc_9C38DD: FLdPr var_88
  loc_9C38E0: LateIdLdVar var_98 DispID_22 0
  loc_9C38E7: CStrVarTmp
  loc_9C38E8: FStStrNoPop var_9C
  loc_9C38EB: LitStr vbNullString
  loc_9C38EE: NeStr
  loc_9C38F0: FFree1Str var_9C
  loc_9C38F3: FFree1Ad var_88
  loc_9C38F6: FFree1Var var_98 = ""
  loc_9C38F9: BranchF loc_9C3994
  loc_9C38FC: FLdPr Me
  loc_9C38FF: VCallAd Control_ID_mskDesde
  loc_9C3902: FStAdFunc var_88
  loc_9C3905: FLdPr var_88
  loc_9C3908: LateIdLdVar var_98 DispID_15 0
  loc_9C390F: PopAd
  loc_9C3911: FLdPr Me
  loc_9C3914: VCallAd Control_ID_mskDesde
  loc_9C3917: FStAdFunc var_AC
  loc_9C391A: LitI2_Byte &HFF
  loc_9C391C: PopTmpLdAd2 var_A2
  loc_9C391F: FLdZeroAd var_AC
  loc_9C3922: FStAdFunc var_A0
  loc_9C3925: FLdRfVar var_A0
  loc_9C3928: LitStr vbNullString
  loc_9C392B: LitI2_Byte 0
  loc_9C392D: LitI2_Byte 0
  loc_9C392F: FLdRfVar var_98
  loc_9C3932: CStrVarTmp
  loc_9C3933: FStStrNoPop var_9C
  loc_9C3936: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C393B: FStStrNoPop var_A8
  loc_9C393E: FLdPr Me
  loc_9C3941: MemStStrCopy
  loc_9C3945: FFreeStr var_9C = ""
  loc_9C394C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C3955: FFree1Var var_98 = ""
  loc_9C3958: FLdPr Me
  loc_9C395B: VCallAd Control_ID_mskDesde
  loc_9C395E: FStAdFunc var_B0
  loc_9C3961: LitNothing
  loc_9C3963: CastAd
  loc_9C3966: FStAdFunc var_AC
  loc_9C3969: FLdRfVar var_AC
  loc_9C396C: FLdZeroAd var_B0
  loc_9C396F: FStAdFuncNoPop
  loc_9C3972: CastAd
  loc_9C3975: FStAdFunc var_A0
  loc_9C3978: FLdRfVar var_A0
  loc_9C397B: FLdPr Me
  loc_9C397E: MemLdRfVar from_stack_1.global_100
  loc_9C3981: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C3986: IStI2 arg_C
  loc_9C3989: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C3994: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '953628
  'Data Table: 45027C
  loc_953614: FLdPr Me
  loc_953617: VCallAd Control_ID_mskHasta
  loc_95361A: CVarAd
  loc_95361E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_953623: FFree1Var var_94 = ""
  loc_953626: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B1D8C
  'Data Table: 45027C
  loc_9B1CF0: FLdPr Me
  loc_9B1CF3: VCallAd Control_ID_mskHasta
  loc_9B1CF6: FStAdFunc var_88
  loc_9B1CF9: FLdPr var_88
  loc_9B1CFC: LateIdLdVar var_98 DispID_15 0
  loc_9B1D03: PopAd
  loc_9B1D05: FLdPr Me
  loc_9B1D08: VCallAd Control_ID_mskHasta
  loc_9B1D0B: FStAdFunc var_AC
  loc_9B1D0E: LitI2_Byte &HFF
  loc_9B1D10: PopTmpLdAd2 var_A2
  loc_9B1D13: FLdZeroAd var_AC
  loc_9B1D16: FStAdFunc var_A0
  loc_9B1D19: FLdRfVar var_A0
  loc_9B1D1C: LitStr vbNullString
  loc_9B1D1F: LitI2_Byte 0
  loc_9B1D21: LitI2_Byte 0
  loc_9B1D23: FLdRfVar var_98
  loc_9B1D26: CStrVarTmp
  loc_9B1D27: FStStrNoPop var_9C
  loc_9B1D2A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B1D2F: FStStrNoPop var_A8
  loc_9B1D32: FLdPr Me
  loc_9B1D35: MemStStrCopy
  loc_9B1D39: FFreeStr var_9C = ""
  loc_9B1D40: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1D49: FFree1Var var_98 = ""
  loc_9B1D4C: FLdPr Me
  loc_9B1D4F: VCallAd Control_ID_mskHasta
  loc_9B1D52: FStAdFunc var_B0
  loc_9B1D55: LitNothing
  loc_9B1D57: CastAd
  loc_9B1D5A: FStAdFunc var_AC
  loc_9B1D5D: FLdRfVar var_AC
  loc_9B1D60: FLdZeroAd var_B0
  loc_9B1D63: FStAdFuncNoPop
  loc_9B1D66: CastAd
  loc_9B1D69: FStAdFunc var_A0
  loc_9B1D6C: FLdRfVar var_A0
  loc_9B1D6F: FLdPr Me
  loc_9B1D72: MemLdRfVar from_stack_1.global_100
  loc_9B1D75: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B1D7A: IStI2 arg_C
  loc_9B1D7D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1D88: ExitProcHresult
End Function

Private Sub cmdCalHasta_Click() '97E168
  'Data Table: 45027C
  loc_97E134: LitVar_Missing var_A4
  loc_97E137: PopAdLdVar
  loc_97E138: LitVarI4
  loc_97E140: PopAdLdVar
  loc_97E141: ImpAdLdRf MemVar_C3D9A8
  loc_97E144: NewIfNullPr frmCalendario
  loc_97E147: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E14C: ImpAdLdRf MemVar_C3D038
  loc_97E14F: CDargRef
  loc_97E153: FLdPr Me
  loc_97E156: VCallAd Control_ID_mskHasta
  loc_97E159: FStAdFunc var_A8
  loc_97E15C: FLdPr var_A8
  loc_97E15F: LateIdSt
  loc_97E164: FFree1Ad var_A8
  loc_97E167: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97E1D0
  'Data Table: 45027C
  loc_97E19C: LitVar_Missing var_A4
  loc_97E19F: PopAdLdVar
  loc_97E1A0: LitVarI4
  loc_97E1A8: PopAdLdVar
  loc_97E1A9: ImpAdLdRf MemVar_C3D9A8
  loc_97E1AC: NewIfNullPr frmCalendario
  loc_97E1AF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E1B4: ImpAdLdRf MemVar_C3D038
  loc_97E1B7: CDargRef
  loc_97E1BB: FLdPr Me
  loc_97E1BE: VCallAd Control_ID_mskDesde
  loc_97E1C1: FStAdFunc var_A8
  loc_97E1C4: FLdPr var_A8
  loc_97E1C7: LateIdSt
  loc_97E1CC: FFree1Ad var_A8
  loc_97E1CF: ExitProcHresult
End Sub

Private Sub Form_Load() '96BD34
  'Data Table: 45027C
  loc_96BD14: LitI2_Byte &HFF
  loc_96BD16: ImpAdStI2 MemVar_C3D840
  loc_96BD19: ILdRf Me
  loc_96BD1C: CastAd
  loc_96BD1F: FStAdFunc var_88
  loc_96BD22: FLdRfVar var_88
  loc_96BD25: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96BD2A: FFree1Ad var_88
  loc_96BD2D: Call cmdNueva_Click()
  loc_96BD32: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '966814
  'Data Table: 45027C
  loc_9667FC: FLdPr Me
  loc_9667FF: VCallAd Control_ID_wbbReporte
  loc_966802: FStAdFunc var_88
  loc_966805: FLdRfVar var_88
  loc_966808: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_96680D: FFree1Ad var_88
  loc_966810: ExitProcHresult
End Sub

Public Function bGeneradoGet() '450F10
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '450F1F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A1FEC
  'Data Table: 45027C
  loc_9A1F88: LitI4 0
  loc_9A1F8D: LitI4 3
  loc_9A1F92: FLdRfVar var_88
  loc_9A1F95: Redim
  loc_9A1F9F: FLdPr Me
  loc_9A1FA2: VCallAd Control_ID_mskDesde
  loc_9A1FA5: CVarAd
  loc_9A1FA9: ParmAry1St
  loc_9A1FAF: FLdPr Me
  loc_9A1FB2: VCallAd Control_ID_cmdCalDesde
  loc_9A1FB5: CVarAd
  loc_9A1FB9: ParmAry1St
  loc_9A1FBF: FLdPr Me
  loc_9A1FC2: VCallAd Control_ID_mskHasta
  loc_9A1FC5: CVarAd
  loc_9A1FC9: ParmAry1St
  loc_9A1FCF: FLdPr Me
  loc_9A1FD2: VCallAd Control_ID_cmdCalHasta
  loc_9A1FD5: CVarAd
  loc_9A1FD9: ParmAry1St
  loc_9A1FDF: FLdRfVar var_88
  loc_9A1FE2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1FE7: FLdRfVar var_88
  loc_9A1FEA: Erase
  loc_9A1FEB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B14CD0
  'Data Table: 45027C
  loc_B1446C: LitStr vbNullString
  loc_B1446F: FLdPr Me
  loc_B14472: MemStStrCopy
  loc_B14476: LitI2_Byte 0
  loc_B14478: PopTmpLdAd2 var_8E
  loc_B1447B: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B14480: FLdPr Me
  loc_B14483: MemLdStr global_100
  loc_B14486: LitStr vbNullString
  loc_B14489: NeStr
  loc_B1448B: BranchF loc_B14491
  loc_B1448E: Branch loc_B14CA4
  loc_B14491: LitI2_Byte 0
  loc_B14493: PopTmpLdAd2 var_8E
  loc_B14496: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B1449B: FLdPr Me
  loc_B1449E: MemLdStr global_100
  loc_B144A1: LitStr vbNullString
  loc_B144A4: NeStr
  loc_B144A6: BranchF loc_B144AC
  loc_B144A9: Branch loc_B14CA4
  loc_B144AC: FLdPr Me
  loc_B144AF: MemLdI2 bGenerado
  loc_B144B2: BranchF loc_B144B6
  loc_B144B5: ExitProcHresult
  loc_B144B6: LitVarStr var_A0, "Generando reporte..."
  loc_B144BB: PopAdLdVar
  loc_B144BC: FLdPr Me
  loc_B144BF: VCallAd Control_ID_statusBar
  loc_B144C2: FStAdFunc var_B4
  loc_B144C5: FLdPr var_B4
  loc_B144C8: LateIdSt
  loc_B144CD: FFree1Ad var_B4
  loc_B144D0: LitI4 &HB
  loc_B144D5: CI2I4
  loc_B144D6: FLdPr Me
  loc_B144D9: Me.MousePointer = from_stack_1
  loc_B144DE: FLdPr Me
  loc_B144E1: VCallAd Control_ID_mskDesde
  loc_B144E4: FStAdFunc var_B4
  loc_B144E7: FLdPr var_B4
  loc_B144EA: LateIdLdVar var_C4 DispID_22 0
  loc_B144F1: CStrVarTmp
  loc_B144F2: FStStrNoPop var_C8
  loc_B144F5: LitStr vbNullString
  loc_B144F8: NeStr
  loc_B144FA: FFree1Str var_C8
  loc_B144FD: FFree1Ad var_B4
  loc_B14500: FFree1Var var_C4 = ""
  loc_B14503: BranchF loc_B14555
  loc_B14506: FLdPr Me
  loc_B14509: VCallAd Control_ID_mskDesde
  loc_B1450C: FStAdFunc var_B4
  loc_B1450F: FLdPr var_B4
  loc_B14512: LateIdLdVar var_C4 DispID_15 0
  loc_B14519: PopAd
  loc_B1451B: LitStr " AND FechCaja >= "
  loc_B1451E: LitI4 1
  loc_B14523: LitI4 1
  loc_B14528: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_B1452D: FStVarCopyObj var_E8
  loc_B14530: FLdRfVar var_E8
  loc_B14533: FLdRfVar var_C4
  loc_B14536: CStrVarTmp
  loc_B14537: CVarStr var_D8
  loc_B1453A: ImpAdCallI2 Format$(, )
  loc_B1453F: FStStrNoPop var_C8
  loc_B14542: ConcatStr
  loc_B14543: FStStr var_88
  loc_B14546: FFree1Str var_C8
  loc_B14549: FFree1Ad var_B4
  loc_B1454C: FFreeVar var_C4 = "": var_D8 = ""
  loc_B14555: FLdPr Me
  loc_B14558: VCallAd Control_ID_mskHasta
  loc_B1455B: FStAdFunc var_B4
  loc_B1455E: FLdPr var_B4
  loc_B14561: LateIdLdVar var_C4 DispID_22 0
  loc_B14568: CStrVarTmp
  loc_B14569: FStStrNoPop var_C8
  loc_B1456C: LitStr vbNullString
  loc_B1456F: NeStr
  loc_B14571: FFree1Str var_C8
  loc_B14574: FFree1Ad var_B4
  loc_B14577: FFree1Var var_C4 = ""
  loc_B1457A: BranchF loc_B145CC
  loc_B1457D: FLdPr Me
  loc_B14580: VCallAd Control_ID_mskHasta
  loc_B14583: FStAdFunc var_B4
  loc_B14586: FLdPr var_B4
  loc_B14589: LateIdLdVar var_C4 DispID_15 0
  loc_B14590: PopAd
  loc_B14592: LitStr " AND FechCaja <= "
  loc_B14595: LitI4 1
  loc_B1459A: LitI4 1
  loc_B1459F: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_B145A4: FStVarCopyObj var_E8
  loc_B145A7: FLdRfVar var_E8
  loc_B145AA: FLdRfVar var_C4
  loc_B145AD: CStrVarTmp
  loc_B145AE: CVarStr var_D8
  loc_B145B1: ImpAdCallI2 Format$(, )
  loc_B145B6: FStStrNoPop var_C8
  loc_B145B9: ConcatStr
  loc_B145BA: FStStr var_8C
  loc_B145BD: FFree1Str var_C8
  loc_B145C0: FFree1Ad var_B4
  loc_B145C3: FFreeVar var_C4 = "": var_D8 = ""
  loc_B145CC: FLdPr Me
  loc_B145CF: MemLdRfVar from_stack_1.global_56
  loc_B145D2: NewIfNullAd
  loc_B145D5: FStAd var_EC 
  loc_B145D9: LitStr "SELECT DISTINCT cec.CodiCuco, DetaCuco"
  loc_B145DC: LitStr " FROM cajaemicheq cec"
  loc_B145DF: ConcatStr
  loc_B145E0: FStStrNoPop var_C8
  loc_B145E3: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = Year(cec.FechCaja) AND cc.CodiCuco = cec.CodiCuco"
  loc_B145E6: ConcatStr
  loc_B145E7: FStStrNoPop var_F0
  loc_B145EA: LitStr " WHERE TRUE "
  loc_B145ED: ConcatStr
  loc_B145EE: FStStrNoPop var_F4
  loc_B145F1: ILdRf var_88
  loc_B145F4: ConcatStr
  loc_B145F5: FStStrNoPop var_F8
  loc_B145F8: ILdRf var_8C
  loc_B145FB: ConcatStr
  loc_B145FC: FStStrNoPop var_FC
  loc_B145FF: LitStr " ORDER BY CodiCuco;"
  loc_B14602: ConcatStr
  loc_B14603: FStStrNoPop var_100
  loc_B14606: FLdPr var_EC
  loc_B14609: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1460E: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B1461D: FLdRfVar var_104
  loc_B14620: FLdPr var_EC
  loc_B14623: from_stack_1 = clsbase.RecordCount
  loc_B14628: ILdRf var_104
  loc_B1462B: LitI4 0
  loc_B14630: EqI4
  loc_B14631: BranchF loc_B14644
  loc_B14634: LitI4 0
  loc_B14639: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B1463C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B14641: Branch loc_B14CA4
  loc_B14644: LitI2_Byte 0
  loc_B14646: CStrUI1
  loc_B14648: FStStrNoPop var_C8
  loc_B1464B: FLdPr Me
  loc_B1464E: MemStStrCopy
  loc_B14652: FFree1Str var_C8
  loc_B14655: LitI2_Byte 0
  loc_B14657: CStrUI1
  loc_B14659: FStStrNoPop var_C8
  loc_B1465C: FLdPr Me
  loc_B1465F: MemStStrCopy
  loc_B14663: FFree1Str var_C8
  loc_B14666: LitI4 1
  loc_B1466B: FLdRfVar var_104
  loc_B1466E: FLdPr Me
  loc_B14671: MemLdRfVar from_stack_1.global_56
  loc_B14674: NewIfNullPr clsbase
  loc_B14677: from_stack_1 = clsbase.RecordCount
  loc_B1467C: ILdRf var_104
  loc_B1467F: FLdPr Me
  loc_B14682: MemLdRfVar from_stack_1.global_80
  loc_B14685: Redim
  loc_B1468F: FLdPr var_EC
  loc_B14692: Call clsbase.MoveFirst()
  loc_B14697: LitI2_Byte 1
  loc_B14699: FLdPr Me
  loc_B1469C: MemLdRfVar from_stack_1.global_92
  loc_B1469F: FLdPr Me
  loc_B146A2: MemLdStr global_80
  loc_B146A5: LitI2_Byte 1
  loc_B146A7: FnUBound
  loc_B146A9: CI2I4
  loc_B146AA: ForI2 var_108
  loc_B146B0: FLdRfVar var_110
  loc_B146B3: LitVarStr var_A0, "CodiCuco"
  loc_B146B8: PopAdLdVar
  loc_B146B9: FLdRfVar var_10C
  loc_B146BC: FLdRfVar var_B4
  loc_B146BF: FLdPr var_EC
  loc_B146C2: from_stack_1v = clsbase.RsFrmGet()
  loc_B146C7: FLdPr var_B4
  loc_B146CA:  = Me.Fields
  loc_B146CF: FLdPr var_10C
  loc_B146D2: from_stack_2 = Me.Item(from_stack_1)
  loc_B146D7: LitI2_Byte 0
  loc_B146D9: LitVar_Missing var_D8
  loc_B146DC: LitI2_Byte 0
  loc_B146DE: FLdZeroAd var_110
  loc_B146E1: CVarAd
  loc_B146E5: PopAdLdVar
  loc_B146E6: FLdPr Me
  loc_B146E9: MemLdI2 global_92
  loc_B146EC: CI4UI1
  loc_B146ED: FLdPr Me
  loc_B146F0: MemLdStr global_80
  loc_B146F3: AryLock
  loc_B146F6: Ary1LdPr
  loc_B146F7: MemLdRfVar from_stack_1.global_0
  loc_B146FA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B146FF: AryUnlock
  loc_B14702: FFreeAd var_B4 = ""
  loc_B14709: FFreeVar var_C4 = ""
  loc_B14710: FLdRfVar var_110
  loc_B14713: LitVarStr var_A0, "DetaCuco"
  loc_B14718: PopAdLdVar
  loc_B14719: FLdRfVar var_10C
  loc_B1471C: FLdRfVar var_B4
  loc_B1471F: FLdPr var_EC
  loc_B14722: from_stack_1v = clsbase.RsFrmGet()
  loc_B14727: FLdPr var_B4
  loc_B1472A:  = Me.Fields
  loc_B1472F: FLdPr var_10C
  loc_B14732: from_stack_2 = Me.Item(from_stack_1)
  loc_B14737: LitI2_Byte 0
  loc_B14739: LitVar_Missing var_D8
  loc_B1473C: LitI2_Byte 0
  loc_B1473E: FLdZeroAd var_110
  loc_B14741: CVarAd
  loc_B14745: PopAdLdVar
  loc_B14746: FLdPr Me
  loc_B14749: MemLdI2 global_92
  loc_B1474C: CI4UI1
  loc_B1474D: FLdPr Me
  loc_B14750: MemLdStr global_80
  loc_B14753: AryLock
  loc_B14756: Ary1LdPr
  loc_B14757: MemLdRfVar from_stack_1.global_4
  loc_B1475A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1475F: AryUnlock
  loc_B14762: FFreeAd var_B4 = ""
  loc_B14769: FFreeVar var_C4 = ""
  loc_B14770: FLdPr var_EC
  loc_B14773: Call clsbase.MoveSiguiente()
  loc_B14778: FLdPr Me
  loc_B1477B: MemLdRfVar from_stack_1.global_92
  loc_B1477E: NextI2 var_108, loc_B146B0
  loc_B14783: LitI2_Byte 1
  loc_B14785: FLdPr Me
  loc_B14788: MemLdRfVar from_stack_1.global_92
  loc_B1478B: FLdPr Me
  loc_B1478E: MemLdStr global_80
  loc_B14791: LitI2_Byte 1
  loc_B14793: FnUBound
  loc_B14795: CI2I4
  loc_B14796: ForI2 var_118
  loc_B1479C: LitStr "SELECT ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba, FechCaja, DebeCaec, HabeCaec"
  loc_B1479F: LitStr " FROM cajaemicheq"
  loc_B147A2: ConcatStr
  loc_B147A3: FStStrNoPop var_C8
  loc_B147A6: LitStr " WHERE CodiCuco = '"
  loc_B147A9: ConcatStr
  loc_B147AA: FStStrNoPop var_F0
  loc_B147AD: FLdPr Me
  loc_B147B0: MemLdI2 global_92
  loc_B147B3: CI4UI1
  loc_B147B4: FLdPr Me
  loc_B147B7: MemLdStr global_80
  loc_B147BA: Ary1LdPr
  loc_B147BB: MemLdStr global_0
  loc_B147BE: ConcatStr
  loc_B147BF: FStStrNoPop var_F4
  loc_B147C2: LitStr "'"
  loc_B147C5: ConcatStr
  loc_B147C6: FStStrNoPop var_F8
  loc_B147C9: ILdRf var_88
  loc_B147CC: ConcatStr
  loc_B147CD: FStStrNoPop var_FC
  loc_B147D0: ILdRf var_8C
  loc_B147D3: ConcatStr
  loc_B147D4: FStStrNoPop var_100
  loc_B147D7: LitStr " ORDER BY FechCaja, ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba;"
  loc_B147DA: ConcatStr
  loc_B147DB: FStStrNoPop var_11C
  loc_B147DE: FLdPr var_EC
  loc_B147E1: Call clsbase.RedefineRS(from_stack_1v)
  loc_B147E6: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B147F7: FLdRfVar var_104
  loc_B147FA: FLdPr var_EC
  loc_B147FD: from_stack_1 = clsbase.RecordCount
  loc_B14802: ILdRf var_104
  loc_B14805: LitI4 0
  loc_B1480A: GtI4
  loc_B1480B: BranchF loc_B14C2D
  loc_B1480E: FLdRfVar var_104
  loc_B14811: FLdPr var_EC
  loc_B14814: from_stack_1 = clsbase.RecordCount
  loc_B14819: LitI4 1
  loc_B1481E: ILdRf var_104
  loc_B14821: FLdPr Me
  loc_B14824: MemLdI2 global_92
  loc_B14827: CI4UI1
  loc_B14828: FLdPr Me
  loc_B1482B: MemLdStr global_80
  loc_B1482E: Ary1LdPr
  loc_B1482F: MemLdRfVar from_stack_1.global_8
  loc_B14832: Redim
  loc_B1483C: FLdPr var_EC
  loc_B1483F: Call clsbase.MoveFirst()
  loc_B14844: LitI2_Byte 1
  loc_B14846: FLdPr Me
  loc_B14849: MemLdRfVar from_stack_1.global_94
  loc_B1484C: FLdPr Me
  loc_B1484F: MemLdI2 global_92
  loc_B14852: CI4UI1
  loc_B14853: FLdPr Me
  loc_B14856: MemLdStr global_80
  loc_B14859: Ary1LdPr
  loc_B1485A: MemLdStr global_8
  loc_B1485D: LitI2_Byte 1
  loc_B1485F: FnUBound
  loc_B14861: CI2I4
  loc_B14862: ForI2 var_120
  loc_B14868: FLdRfVar var_110
  loc_B1486B: LitVarStr var_A0, "FechCaja"
  loc_B14870: PopAdLdVar
  loc_B14871: FLdRfVar var_10C
  loc_B14874: FLdRfVar var_B4
  loc_B14877: FLdPr var_EC
  loc_B1487A: from_stack_1v = clsbase.RsFrmGet()
  loc_B1487F: FLdPr var_B4
  loc_B14882:  = Me.Fields
  loc_B14887: FLdPr var_10C
  loc_B1488A: from_stack_2 = Me.Item(from_stack_1)
  loc_B1488F: LitI2_Byte 0
  loc_B14891: LitVar_Missing var_D8
  loc_B14894: LitI2_Byte 0
  loc_B14896: FLdZeroAd var_110
  loc_B14899: CVarAd
  loc_B1489D: PopAdLdVar
  loc_B1489E: FLdPr Me
  loc_B148A1: MemLdI2 global_94
  loc_B148A4: CI4UI1
  loc_B148A5: FLdPr Me
  loc_B148A8: MemLdI2 global_92
  loc_B148AB: CI4UI1
  loc_B148AC: FLdPr Me
  loc_B148AF: MemLdStr global_80
  loc_B148B2: AryLock
  loc_B148B5: Ary1LdPr
  loc_B148B6: MemLdStr global_8
  loc_B148B9: AryLock
  loc_B148BC: Ary1LdPr
  loc_B148BD: MemLdRfVar from_stack_1.global_0
  loc_B148C0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B148C5: AryUnlock
  loc_B148C8: AryUnlock
  loc_B148CB: FFreeAd var_B4 = ""
  loc_B148D2: FFreeVar var_C4 = ""
  loc_B148D9: FLdRfVar var_110
  loc_B148DC: LitVarStr var_A0, "ExpeImpu"
  loc_B148E1: PopAdLdVar
  loc_B148E2: FLdRfVar var_10C
  loc_B148E5: FLdRfVar var_B4
  loc_B148E8: FLdPr var_EC
  loc_B148EB: from_stack_1v = clsbase.RsFrmGet()
  loc_B148F0: FLdPr var_B4
  loc_B148F3:  = Me.Fields
  loc_B148F8: FLdPr var_10C
  loc_B148FB: from_stack_2 = Me.Item(from_stack_1)
  loc_B14900: LitI2_Byte 0
  loc_B14902: LitVar_Missing var_D8
  loc_B14905: LitI2_Byte 0
  loc_B14907: FLdZeroAd var_110
  loc_B1490A: CVarAd
  loc_B1490E: PopAdLdVar
  loc_B1490F: FLdPr Me
  loc_B14912: MemLdI2 global_94
  loc_B14915: CI4UI1
  loc_B14916: FLdPr Me
  loc_B14919: MemLdI2 global_92
  loc_B1491C: CI4UI1
  loc_B1491D: FLdPr Me
  loc_B14920: MemLdStr global_80
  loc_B14923: AryLock
  loc_B14926: Ary1LdPr
  loc_B14927: MemLdStr global_8
  loc_B1492A: AryLock
  loc_B1492D: Ary1LdPr
  loc_B1492E: MemLdRfVar from_stack_1.global_4
  loc_B14931: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B14936: AryUnlock
  loc_B14939: AryUnlock
  loc_B1493C: FFreeAd var_B4 = ""
  loc_B14943: FFreeVar var_C4 = ""
  loc_B1494A: FLdRfVar var_110
  loc_B1494D: LitVarStr var_A0, "NumeLiqu"
  loc_B14952: PopAdLdVar
  loc_B14953: FLdRfVar var_10C
  loc_B14956: FLdRfVar var_B4
  loc_B14959: FLdPr var_EC
  loc_B1495C: from_stack_1v = clsbase.RsFrmGet()
  loc_B14961: FLdPr var_B4
  loc_B14964:  = Me.Fields
  loc_B14969: FLdPr var_10C
  loc_B1496C: from_stack_2 = Me.Item(from_stack_1)
  loc_B14971: LitI2_Byte 0
  loc_B14973: LitVar_Missing var_D8
  loc_B14976: LitI2_Byte 0
  loc_B14978: FLdZeroAd var_110
  loc_B1497B: CVarAd
  loc_B1497F: PopAdLdVar
  loc_B14980: FLdPr Me
  loc_B14983: MemLdI2 global_94
  loc_B14986: CI4UI1
  loc_B14987: FLdPr Me
  loc_B1498A: MemLdI2 global_92
  loc_B1498D: CI4UI1
  loc_B1498E: FLdPr Me
  loc_B14991: MemLdStr global_80
  loc_B14994: AryLock
  loc_B14997: Ary1LdPr
  loc_B14998: MemLdStr global_8
  loc_B1499B: AryLock
  loc_B1499E: Ary1LdPr
  loc_B1499F: MemLdRfVar from_stack_1.global_8
  loc_B149A2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B149A7: AryUnlock
  loc_B149AA: AryUnlock
  loc_B149AD: FFreeAd var_B4 = ""
  loc_B149B4: FFreeVar var_C4 = ""
  loc_B149BB: FLdRfVar var_110
  loc_B149BE: LitVarStr var_A0, "CucuPers"
  loc_B149C3: PopAdLdVar
  loc_B149C4: FLdRfVar var_10C
  loc_B149C7: FLdRfVar var_B4
  loc_B149CA: FLdPr var_EC
  loc_B149CD: from_stack_1v = clsbase.RsFrmGet()
  loc_B149D2: FLdPr var_B4
  loc_B149D5:  = Me.Fields
  loc_B149DA: FLdPr var_10C
  loc_B149DD: from_stack_2 = Me.Item(from_stack_1)
  loc_B149E2: LitI2_Byte 0
  loc_B149E4: LitVar_Missing var_D8
  loc_B149E7: LitI2_Byte 0
  loc_B149E9: FLdZeroAd var_110
  loc_B149EC: CVarAd
  loc_B149F0: PopAdLdVar
  loc_B149F1: FLdPr Me
  loc_B149F4: MemLdI2 global_94
  loc_B149F7: CI4UI1
  loc_B149F8: FLdPr Me
  loc_B149FB: MemLdI2 global_92
  loc_B149FE: CI4UI1
  loc_B149FF: FLdPr Me
  loc_B14A02: MemLdStr global_80
  loc_B14A05: AryLock
  loc_B14A08: Ary1LdPr
  loc_B14A09: MemLdStr global_8
  loc_B14A0C: AryLock
  loc_B14A0F: Ary1LdPr
  loc_B14A10: MemLdRfVar from_stack_1.global_12
  loc_B14A13: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B14A18: AryUnlock
  loc_B14A1B: AryUnlock
  loc_B14A1E: FFreeAd var_B4 = ""
  loc_B14A25: FFreeVar var_C4 = ""
  loc_B14A2C: FLdRfVar var_110
  loc_B14A2F: LitVarStr var_A0, "CodiBanc"
  loc_B14A34: PopAdLdVar
  loc_B14A35: FLdRfVar var_10C
  loc_B14A38: FLdRfVar var_B4
  loc_B14A3B: FLdPr var_EC
  loc_B14A3E: from_stack_1v = clsbase.RsFrmGet()
  loc_B14A43: FLdPr var_B4
  loc_B14A46:  = Me.Fields
  loc_B14A4B: FLdPr var_10C
  loc_B14A4E: from_stack_2 = Me.Item(from_stack_1)
  loc_B14A53: LitI2_Byte 0
  loc_B14A55: LitVar_Missing var_D8
  loc_B14A58: LitI2_Byte 0
  loc_B14A5A: FLdZeroAd var_110
  loc_B14A5D: CVarAd
  loc_B14A61: PopAdLdVar
  loc_B14A62: FLdPr Me
  loc_B14A65: MemLdI2 global_94
  loc_B14A68: CI4UI1
  loc_B14A69: FLdPr Me
  loc_B14A6C: MemLdI2 global_92
  loc_B14A6F: CI4UI1
  loc_B14A70: FLdPr Me
  loc_B14A73: MemLdStr global_80
  loc_B14A76: AryLock
  loc_B14A79: Ary1LdPr
  loc_B14A7A: MemLdStr global_8
  loc_B14A7D: AryLock
  loc_B14A80: Ary1LdPr
  loc_B14A81: MemLdRfVar from_stack_1.global_16
  loc_B14A84: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B14A89: AryUnlock
  loc_B14A8C: AryUnlock
  loc_B14A8F: FFreeAd var_B4 = ""
  loc_B14A96: FFreeVar var_C4 = ""
  loc_B14A9D: FLdRfVar var_110
  loc_B14AA0: LitVarStr var_A0, "NumeMoba"
  loc_B14AA5: PopAdLdVar
  loc_B14AA6: FLdRfVar var_10C
  loc_B14AA9: FLdRfVar var_B4
  loc_B14AAC: FLdPr var_EC
  loc_B14AAF: from_stack_1v = clsbase.RsFrmGet()
  loc_B14AB4: FLdPr var_B4
  loc_B14AB7:  = Me.Fields
  loc_B14ABC: FLdPr var_10C
  loc_B14ABF: from_stack_2 = Me.Item(from_stack_1)
  loc_B14AC4: LitI2_Byte 0
  loc_B14AC6: LitVar_Missing var_D8
  loc_B14AC9: LitI2_Byte 0
  loc_B14ACB: FLdZeroAd var_110
  loc_B14ACE: CVarAd
  loc_B14AD2: PopAdLdVar
  loc_B14AD3: FLdPr Me
  loc_B14AD6: MemLdI2 global_94
  loc_B14AD9: CI4UI1
  loc_B14ADA: FLdPr Me
  loc_B14ADD: MemLdI2 global_92
  loc_B14AE0: CI4UI1
  loc_B14AE1: FLdPr Me
  loc_B14AE4: MemLdStr global_80
  loc_B14AE7: AryLock
  loc_B14AEA: Ary1LdPr
  loc_B14AEB: MemLdStr global_8
  loc_B14AEE: AryLock
  loc_B14AF1: Ary1LdPr
  loc_B14AF2: MemLdRfVar from_stack_1.global_20
  loc_B14AF5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B14AFA: AryUnlock
  loc_B14AFD: AryUnlock
  loc_B14B00: FFreeAd var_B4 = ""
  loc_B14B07: FFreeVar var_C4 = ""
  loc_B14B0E: FLdRfVar var_110
  loc_B14B11: LitVarStr var_A0, "DebeCaec"
  loc_B14B16: PopAdLdVar
  loc_B14B17: FLdRfVar var_10C
  loc_B14B1A: FLdRfVar var_B4
  loc_B14B1D: FLdPr var_EC
  loc_B14B20: from_stack_1v = clsbase.RsFrmGet()
  loc_B14B25: FLdPr var_B4
  loc_B14B28:  = Me.Fields
  loc_B14B2D: FLdPr var_10C
  loc_B14B30: from_stack_2 = Me.Item(from_stack_1)
  loc_B14B35: LitI2_Byte 0
  loc_B14B37: FLdPr Me
  loc_B14B3A: MemLdI2 global_92
  loc_B14B3D: CI4UI1
  loc_B14B3E: FLdPr Me
  loc_B14B41: MemLdStr global_80
  loc_B14B44: AryLock
  loc_B14B47: Ary1LdPr
  loc_B14B48: MemLdRfVar from_stack_1.global_12
  loc_B14B4B: CVarRef
  loc_B14B50: LitI2_Byte &HFF
  loc_B14B52: FLdZeroAd var_110
  loc_B14B55: CVarAd
  loc_B14B59: PopAdLdVar
  loc_B14B5A: FLdPr Me
  loc_B14B5D: MemLdI2 global_94
  loc_B14B60: CI4UI1
  loc_B14B61: FLdPr Me
  loc_B14B64: MemLdI2 global_92
  loc_B14B67: CI4UI1
  loc_B14B68: FLdPr Me
  loc_B14B6B: MemLdStr global_80
  loc_B14B6E: AryLock
  loc_B14B71: Ary1LdPr
  loc_B14B72: MemLdStr global_8
  loc_B14B75: AryLock
  loc_B14B78: Ary1LdPr
  loc_B14B79: MemLdRfVar from_stack_1.global_24
  loc_B14B7C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B14B81: AryUnlock
  loc_B14B84: AryUnlock
  loc_B14B87: AryUnlock
  loc_B14B8A: FFreeAd var_B4 = ""
  loc_B14B91: FFree1Var var_C4 = ""
  loc_B14B94: FLdRfVar var_110
  loc_B14B97: LitVarStr var_A0, "HabeCaec"
  loc_B14B9C: PopAdLdVar
  loc_B14B9D: FLdRfVar var_10C
  loc_B14BA0: FLdRfVar var_B4
  loc_B14BA3: FLdPr var_EC
  loc_B14BA6: from_stack_1v = clsbase.RsFrmGet()
  loc_B14BAB: FLdPr var_B4
  loc_B14BAE:  = Me.Fields
  loc_B14BB3: FLdPr var_10C
  loc_B14BB6: from_stack_2 = Me.Item(from_stack_1)
  loc_B14BBB: LitI2_Byte 0
  loc_B14BBD: FLdPr Me
  loc_B14BC0: MemLdI2 global_92
  loc_B14BC3: CI4UI1
  loc_B14BC4: FLdPr Me
  loc_B14BC7: MemLdStr global_80
  loc_B14BCA: AryLock
  loc_B14BCD: Ary1LdPr
  loc_B14BCE: MemLdRfVar from_stack_1.global_16
  loc_B14BD1: CVarRef
  loc_B14BD6: LitI2_Byte &HFF
  loc_B14BD8: FLdZeroAd var_110
  loc_B14BDB: CVarAd
  loc_B14BDF: PopAdLdVar
  loc_B14BE0: FLdPr Me
  loc_B14BE3: MemLdI2 global_94
  loc_B14BE6: CI4UI1
  loc_B14BE7: FLdPr Me
  loc_B14BEA: MemLdI2 global_92
  loc_B14BED: CI4UI1
  loc_B14BEE: FLdPr Me
  loc_B14BF1: MemLdStr global_80
  loc_B14BF4: AryLock
  loc_B14BF7: Ary1LdPr
  loc_B14BF8: MemLdStr global_8
  loc_B14BFB: AryLock
  loc_B14BFE: Ary1LdPr
  loc_B14BFF: MemLdRfVar from_stack_1.global_28
  loc_B14C02: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B14C07: AryUnlock
  loc_B14C0A: AryUnlock
  loc_B14C0D: AryUnlock
  loc_B14C10: FFreeAd var_B4 = ""
  loc_B14C17: FFree1Var var_C4 = ""
  loc_B14C1A: FLdPr var_EC
  loc_B14C1D: Call clsbase.MoveSiguiente()
  loc_B14C22: FLdPr Me
  loc_B14C25: MemLdRfVar from_stack_1.global_94
  loc_B14C28: NextI2 var_120, loc_B14868
  loc_B14C2D: LitI2_Byte 0
  loc_B14C2F: FLdPr Me
  loc_B14C32: MemLdRfVar from_stack_1.global_84
  loc_B14C35: CVarRef
  loc_B14C3A: LitI2_Byte &HFF
  loc_B14C3C: FLdPr Me
  loc_B14C3F: MemLdI2 global_92
  loc_B14C42: CI4UI1
  loc_B14C43: FLdPr Me
  loc_B14C46: MemLdStr global_80
  loc_B14C49: Ary1LdPr
  loc_B14C4A: MemLdStr global_12
  loc_B14C4D: CVarStr var_A0
  loc_B14C50: PopAdLdVar
  loc_B14C51: FLdPr Me
  loc_B14C54: MemLdRfVar from_stack_1.global_96
  loc_B14C57: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B14C5C: LitI2_Byte 0
  loc_B14C5E: FLdPr Me
  loc_B14C61: MemLdRfVar from_stack_1.global_88
  loc_B14C64: CVarRef
  loc_B14C69: LitI2_Byte &HFF
  loc_B14C6B: FLdPr Me
  loc_B14C6E: MemLdI2 global_92
  loc_B14C71: CI4UI1
  loc_B14C72: FLdPr Me
  loc_B14C75: MemLdStr global_80
  loc_B14C78: Ary1LdPr
  loc_B14C79: MemLdStr global_16
  loc_B14C7C: CVarStr var_A0
  loc_B14C7F: PopAdLdVar
  loc_B14C80: FLdPr Me
  loc_B14C83: MemLdRfVar from_stack_1.global_96
  loc_B14C86: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B14C8B: FLdPr Me
  loc_B14C8E: MemLdRfVar from_stack_1.global_92
  loc_B14C91: NextI2 var_118, loc_B1479C
  loc_B14C96: LitNothing
  loc_B14C98: FStAd var_EC 
  loc_B14C9C: LitI2_Byte &HFF
  loc_B14C9E: FLdPr Me
  loc_B14CA1: MemStI2 bGenerado
  loc_B14CA4: LitI4 0
  loc_B14CA9: CI2I4
  loc_B14CAA: FLdPr Me
  loc_B14CAD: Me.MousePointer = from_stack_1
  loc_B14CB2: LitVarStr var_A0, vbNullString
  loc_B14CB7: PopAdLdVar
  loc_B14CB8: FLdPr Me
  loc_B14CBB: VCallAd Control_ID_statusBar
  loc_B14CBE: FStAdFunc var_B4
  loc_B14CC1: FLdPr var_B4
  loc_B14CC4: LateIdSt
  loc_B14CC9: FFree1Ad var_B4
  loc_B14CCC: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AE9BF8
  'Data Table: 45027C
  loc_AE9520: FLdRfVar var_88
  loc_AE9523: LitI2_Byte 0
  loc_AE9525: LitI2_Byte &HFF
  loc_AE9527: ImpAdLdI4 MemVar_C3D83C
  loc_AE952A: FLdPr Me
  loc_AE952D: MemLdRfVar from_stack_1.global_60
  loc_AE9530: NewIfNullPr IFileSystem3
  loc_AE9533: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE9538: ILdRf var_88
  loc_AE953B: FLdPr Me
  loc_AE953E: MemStVarAd
  loc_AE9542: FFree1Ad var_88
  loc_AE9545: Call Proc_243_19_AD5704()
  loc_AE954A: LitI2_Byte 1
  loc_AE954C: FLdPr Me
  loc_AE954F: MemLdRfVar from_stack_1.global_92
  loc_AE9552: FLdPr Me
  loc_AE9555: MemLdStr global_80
  loc_AE9558: LitI2_Byte 1
  loc_AE955A: FnUBound
  loc_AE955C: CI2I4
  loc_AE955D: ForI2 var_8C
  loc_AE9563: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE9568: PopAdLdVar
  loc_AE9569: FLdPr Me
  loc_AE956C: MemLdRfVar from_stack_1.global_64
  loc_AE956F: LdPrVar
  loc_AE9571: LateMemCall
  loc_AE9577: LitStr "    <td rowspan="""
  loc_AE957A: FLdPr Me
  loc_AE957D: MemLdI2 global_92
  loc_AE9580: CI4UI1
  loc_AE9581: FLdPr Me
  loc_AE9584: MemLdStr global_80
  loc_AE9587: Ary1LdPr
  loc_AE9588: MemLdStr global_8
  loc_AE958B: LitI2_Byte 1
  loc_AE958D: FnUBound
  loc_AE958F: LitI4 1
  loc_AE9594: AddI4
  loc_AE9595: CStrI4
  loc_AE9597: FStStrNoPop var_B0
  loc_AE959A: ConcatStr
  loc_AE959B: FStStrNoPop var_B4
  loc_AE959E: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_AE95A1: ConcatStr
  loc_AE95A2: FStStrNoPop var_B8
  loc_AE95A5: FLdPr Me
  loc_AE95A8: MemLdI2 global_92
  loc_AE95AB: CI4UI1
  loc_AE95AC: FLdPr Me
  loc_AE95AF: MemLdStr global_80
  loc_AE95B2: Ary1LdPr
  loc_AE95B3: MemLdStr global_0
  loc_AE95B6: ConcatStr
  loc_AE95B7: FStStrNoPop var_BC
  loc_AE95BA: LitStr "<br>"
  loc_AE95BD: ConcatStr
  loc_AE95BE: FStStrNoPop var_C0
  loc_AE95C1: FLdPr Me
  loc_AE95C4: MemLdI2 global_92
  loc_AE95C7: CI4UI1
  loc_AE95C8: FLdPr Me
  loc_AE95CB: MemLdStr global_80
  loc_AE95CE: Ary1LdPr
  loc_AE95CF: MemLdStr global_4
  loc_AE95D2: ConcatStr
  loc_AE95D3: FStStrNoPop var_C4
  loc_AE95D6: LitStr "</td>"
  loc_AE95D9: ConcatStr
  loc_AE95DA: CVarStr var_D4
  loc_AE95DD: PopAdLdVar
  loc_AE95DE: FLdPr Me
  loc_AE95E1: MemLdRfVar from_stack_1.global_64
  loc_AE95E4: LdPrVar
  loc_AE95E6: LateMemCall
  loc_AE95EC: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AE95FB: FFree1Var var_D4 = ""
  loc_AE95FE: LitI2_Byte 1
  loc_AE9600: FLdPr Me
  loc_AE9603: MemLdRfVar from_stack_1.global_94
  loc_AE9606: FLdPr Me
  loc_AE9609: MemLdI2 global_92
  loc_AE960C: CI4UI1
  loc_AE960D: FLdPr Me
  loc_AE9610: MemLdStr global_80
  loc_AE9613: Ary1LdPr
  loc_AE9614: MemLdStr global_8
  loc_AE9617: LitI2_Byte 1
  loc_AE9619: FnUBound
  loc_AE961B: CI2I4
  loc_AE961C: ForI2 var_D8
  loc_AE9622: FLdPr Me
  loc_AE9625: MemLdI2 global_94
  loc_AE9628: CI4UI1
  loc_AE9629: FLdPr Me
  loc_AE962C: MemLdI2 global_92
  loc_AE962F: CI4UI1
  loc_AE9630: FLdPr Me
  loc_AE9633: MemLdStr global_80
  loc_AE9636: AryLock
  loc_AE9639: Ary1LdPr
  loc_AE963A: MemLdStr global_8
  loc_AE963D: AryLock
  loc_AE9640: Ary1LdRf
  loc_AE9641: FStR4 var_E4
  loc_AE9644: FLdPr Me
  loc_AE9647: MemLdI2 global_94
  loc_AE964A: LitI2_Byte 1
  loc_AE964C: NeI2
  loc_AE964D: BranchF loc_AE9664
  loc_AE9650: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE9655: PopAdLdVar
  loc_AE9656: FLdPr Me
  loc_AE9659: MemLdRfVar from_stack_1.global_64
  loc_AE965C: LdPrVar
  loc_AE965E: LateMemCall
  loc_AE9664: LitI4 0
  loc_AE9669: LitI4 0
  loc_AE966E: LitI2_Byte 0
  loc_AE9670: LitStr "center"
  loc_AE9673: FMemLdR4 var_E4(0)
  loc_AE9678: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE967D: CVarStr var_D4
  loc_AE9680: PopAdLdVar
  loc_AE9681: FLdPr Me
  loc_AE9684: MemLdRfVar from_stack_1.global_64
  loc_AE9687: LdPrVar
  loc_AE9689: LateMemCall
  loc_AE968F: FFree1Var var_D4 = ""
  loc_AE9692: LitI4 0
  loc_AE9697: LitI4 0
  loc_AE969C: LitI2_Byte 0
  loc_AE969E: LitStr "left"
  loc_AE96A1: FMemLdR4 var_E4(4)
  loc_AE96A6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE96AB: CVarStr var_D4
  loc_AE96AE: PopAdLdVar
  loc_AE96AF: FLdPr Me
  loc_AE96B2: MemLdRfVar from_stack_1.global_64
  loc_AE96B5: LdPrVar
  loc_AE96B7: LateMemCall
  loc_AE96BD: FFree1Var var_D4 = ""
  loc_AE96C0: LitI4 0
  loc_AE96C5: LitI4 0
  loc_AE96CA: LitI2_Byte 0
  loc_AE96CC: LitStr "right"
  loc_AE96CF: FMemLdR4 var_E4(8)
  loc_AE96D4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE96D9: CVarStr var_D4
  loc_AE96DC: PopAdLdVar
  loc_AE96DD: FLdPr Me
  loc_AE96E0: MemLdRfVar from_stack_1.global_64
  loc_AE96E3: LdPrVar
  loc_AE96E5: LateMemCall
  loc_AE96EB: FFree1Var var_D4 = ""
  loc_AE96EE: LitI4 0
  loc_AE96F3: LitI4 0
  loc_AE96F8: LitI2_Byte 0
  loc_AE96FA: LitStr "right"
  loc_AE96FD: FMemLdR4 var_E4(12)
  loc_AE9702: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE9707: CVarStr var_D4
  loc_AE970A: PopAdLdVar
  loc_AE970B: FLdPr Me
  loc_AE970E: MemLdRfVar from_stack_1.global_64
  loc_AE9711: LdPrVar
  loc_AE9713: LateMemCall
  loc_AE9719: FFree1Var var_D4 = ""
  loc_AE971C: LitI4 0
  loc_AE9721: LitI4 0
  loc_AE9726: LitI2_Byte 0
  loc_AE9728: LitStr "right"
  loc_AE972B: FMemLdR4 var_E4(16)
  loc_AE9730: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE9735: CVarStr var_D4
  loc_AE9738: PopAdLdVar
  loc_AE9739: FLdPr Me
  loc_AE973C: MemLdRfVar from_stack_1.global_64
  loc_AE973F: LdPrVar
  loc_AE9741: LateMemCall
  loc_AE9747: FFree1Var var_D4 = ""
  loc_AE974A: LitI4 0
  loc_AE974F: LitI4 0
  loc_AE9754: LitI2_Byte 0
  loc_AE9756: LitStr "right"
  loc_AE9759: FMemLdR4 var_E4(20)
  loc_AE975E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE9763: CVarStr var_D4
  loc_AE9766: PopAdLdVar
  loc_AE9767: FLdPr Me
  loc_AE976A: MemLdRfVar from_stack_1.global_64
  loc_AE976D: LdPrVar
  loc_AE976F: LateMemCall
  loc_AE9775: FFree1Var var_D4 = ""
  loc_AE9778: LitI4 0
  loc_AE977D: LitI4 0
  loc_AE9782: LitI2_Byte 0
  loc_AE9784: LitStr "right"
  loc_AE9787: FMemLdR4 var_E4(24)
  loc_AE978C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE9791: CVarStr var_D4
  loc_AE9794: PopAdLdVar
  loc_AE9795: FLdPr Me
  loc_AE9798: MemLdRfVar from_stack_1.global_64
  loc_AE979B: LdPrVar
  loc_AE979D: LateMemCall
  loc_AE97A3: FFree1Var var_D4 = ""
  loc_AE97A6: LitI4 0
  loc_AE97AB: LitI4 0
  loc_AE97B0: LitI2_Byte 0
  loc_AE97B2: LitStr "right"
  loc_AE97B5: FMemLdR4 var_E4(28)
  loc_AE97BA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE97BF: CVarStr var_D4
  loc_AE97C2: PopAdLdVar
  loc_AE97C3: FLdPr Me
  loc_AE97C6: MemLdRfVar from_stack_1.global_64
  loc_AE97C9: LdPrVar
  loc_AE97CB: LateMemCall
  loc_AE97D1: FFree1Var var_D4 = ""
  loc_AE97D4: LitVarStr var_9C, "  </tr>"
  loc_AE97D9: PopAdLdVar
  loc_AE97DA: FLdPr Me
  loc_AE97DD: MemLdRfVar from_stack_1.global_64
  loc_AE97E0: LdPrVar
  loc_AE97E2: LateMemCall
  loc_AE97E8: LitI4 0
  loc_AE97ED: FStR4 var_E4
  loc_AE97F0: AryUnlock
  loc_AE97F3: AryUnlock
  loc_AE97F6: FLdPr Me
  loc_AE97F9: MemLdRfVar from_stack_1.global_94
  loc_AE97FC: NextI2 var_D8, loc_AE9622
  loc_AE9801: LitVarStr var_9C, "  <tr>"
  loc_AE9806: PopAdLdVar
  loc_AE9807: FLdPr Me
  loc_AE980A: MemLdRfVar from_stack_1.global_64
  loc_AE980D: LdPrVar
  loc_AE980F: LateMemCall
  loc_AE9815: LitVarStr var_9C, "    <th colspan=""5"" align=""left"">&nbsp;</th>"
  loc_AE981A: PopAdLdVar
  loc_AE981B: FLdPr Me
  loc_AE981E: MemLdRfVar from_stack_1.global_64
  loc_AE9821: LdPrVar
  loc_AE9823: LateMemCall
  loc_AE9829: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_AE982E: PopAdLdVar
  loc_AE982F: FLdPr Me
  loc_AE9832: MemLdRfVar from_stack_1.global_64
  loc_AE9835: LdPrVar
  loc_AE9837: LateMemCall
  loc_AE983D: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE9840: FLdPr Me
  loc_AE9843: MemLdI2 global_92
  loc_AE9846: CI4UI1
  loc_AE9847: FLdPr Me
  loc_AE984A: MemLdStr global_80
  loc_AE984D: Ary1LdPr
  loc_AE984E: MemLdStr global_12
  loc_AE9851: ConcatStr
  loc_AE9852: FStStrNoPop var_B0
  loc_AE9855: LitStr "</td>"
  loc_AE9858: ConcatStr
  loc_AE9859: CVarStr var_D4
  loc_AE985C: PopAdLdVar
  loc_AE985D: FLdPr Me
  loc_AE9860: MemLdRfVar from_stack_1.global_64
  loc_AE9863: LdPrVar
  loc_AE9865: LateMemCall
  loc_AE986B: FFree1Str var_B0
  loc_AE986E: FFree1Var var_D4 = ""
  loc_AE9871: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE9874: FLdPr Me
  loc_AE9877: MemLdI2 global_92
  loc_AE987A: CI4UI1
  loc_AE987B: FLdPr Me
  loc_AE987E: MemLdStr global_80
  loc_AE9881: Ary1LdPr
  loc_AE9882: MemLdStr global_16
  loc_AE9885: ConcatStr
  loc_AE9886: FStStrNoPop var_B0
  loc_AE9889: LitStr "</td>"
  loc_AE988C: ConcatStr
  loc_AE988D: CVarStr var_D4
  loc_AE9890: PopAdLdVar
  loc_AE9891: FLdPr Me
  loc_AE9894: MemLdRfVar from_stack_1.global_64
  loc_AE9897: LdPrVar
  loc_AE9899: LateMemCall
  loc_AE989F: FFree1Str var_B0
  loc_AE98A2: FFree1Var var_D4 = ""
  loc_AE98A5: LitVarStr var_9C, "  </tr>"
  loc_AE98AA: PopAdLdVar
  loc_AE98AB: FLdPr Me
  loc_AE98AE: MemLdRfVar from_stack_1.global_64
  loc_AE98B1: LdPrVar
  loc_AE98B3: LateMemCall
  loc_AE98B9: FLdPr Me
  loc_AE98BC: MemLdRfVar from_stack_1.global_92
  loc_AE98BF: NextI2 var_8C, loc_AE9563
  loc_AE98C4: LitVarStr var_9C, "  <tr><td colspan=""9"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AE98C9: PopAdLdVar
  loc_AE98CA: FLdPr Me
  loc_AE98CD: MemLdRfVar from_stack_1.global_64
  loc_AE98D0: LdPrVar
  loc_AE98D2: LateMemCall
  loc_AE98D8: LitVarStr var_9C, "  <tr>"
  loc_AE98DD: PopAdLdVar
  loc_AE98DE: FLdPr Me
  loc_AE98E1: MemLdRfVar from_stack_1.global_64
  loc_AE98E4: LdPrVar
  loc_AE98E6: LateMemCall
  loc_AE98EC: LitVarStr var_9C, "    <td colspan=""6"" align=""left"">&nbsp;</th>"
  loc_AE98F1: PopAdLdVar
  loc_AE98F2: FLdPr Me
  loc_AE98F5: MemLdRfVar from_stack_1.global_64
  loc_AE98F8: LdPrVar
  loc_AE98FA: LateMemCall
  loc_AE9900: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AE9905: PopAdLdVar
  loc_AE9906: FLdPr Me
  loc_AE9909: MemLdRfVar from_stack_1.global_64
  loc_AE990C: LdPrVar
  loc_AE990E: LateMemCall
  loc_AE9914: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE9917: FLdPr Me
  loc_AE991A: MemLdStr global_84
  loc_AE991D: ConcatStr
  loc_AE991E: FStStrNoPop var_B0
  loc_AE9921: LitStr "</td>"
  loc_AE9924: ConcatStr
  loc_AE9925: CVarStr var_D4
  loc_AE9928: PopAdLdVar
  loc_AE9929: FLdPr Me
  loc_AE992C: MemLdRfVar from_stack_1.global_64
  loc_AE992F: LdPrVar
  loc_AE9931: LateMemCall
  loc_AE9937: FFree1Str var_B0
  loc_AE993A: FFree1Var var_D4 = ""
  loc_AE993D: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE9940: FLdPr Me
  loc_AE9943: MemLdStr global_88
  loc_AE9946: ConcatStr
  loc_AE9947: FStStrNoPop var_B0
  loc_AE994A: LitStr "</td>"
  loc_AE994D: ConcatStr
  loc_AE994E: CVarStr var_D4
  loc_AE9951: PopAdLdVar
  loc_AE9952: FLdPr Me
  loc_AE9955: MemLdRfVar from_stack_1.global_64
  loc_AE9958: LdPrVar
  loc_AE995A: LateMemCall
  loc_AE9960: FFree1Str var_B0
  loc_AE9963: FFree1Var var_D4 = ""
  loc_AE9966: LitVarStr var_9C, "  </tr>"
  loc_AE996B: PopAdLdVar
  loc_AE996C: FLdPr Me
  loc_AE996F: MemLdRfVar from_stack_1.global_64
  loc_AE9972: LdPrVar
  loc_AE9974: LateMemCall
  loc_AE997A: LitVarStr var_9C, "  <tr><td colspan=""9"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AE997F: PopAdLdVar
  loc_AE9980: FLdPr Me
  loc_AE9983: MemLdRfVar from_stack_1.global_64
  loc_AE9986: LdPrVar
  loc_AE9988: LateMemCall
  loc_AE998E: FLdPr Me
  loc_AE9991: MemLdStr global_88
  loc_AE9994: CR8Str
  loc_AE9996: FLdPr Me
  loc_AE9999: MemLdStr global_84
  loc_AE999C: CR8Str
  loc_AE999E: SubR4
  loc_AE999F: CR8R8
  loc_AE99A0: LitI2_Byte 0
  loc_AE99A2: CR8I2
  loc_AE99A3: GtR4
  loc_AE99A4: BranchF loc_AE99EA
  loc_AE99A7: LitI2_Byte 0
  loc_AE99A9: LitVar_Missing var_D4
  loc_AE99AC: LitI2_Byte &HFF
  loc_AE99AE: FLdPr Me
  loc_AE99B1: MemLdStr global_88
  loc_AE99B4: CR8Str
  loc_AE99B6: FLdPr Me
  loc_AE99B9: MemLdStr global_84
  loc_AE99BC: CR8Str
  loc_AE99BE: SubR4
  loc_AE99BF: CVarR8
  loc_AE99C3: PopAdLdVar
  loc_AE99C4: FLdRfVar var_EC
  loc_AE99C7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE99CC: FFree1Var var_D4 = ""
  loc_AE99CF: LitI2_Byte 0
  loc_AE99D1: LitVar_Missing var_D4
  loc_AE99D4: LitI2_Byte &HFF
  loc_AE99D6: LitVarStr var_9C, "0"
  loc_AE99DB: PopAdLdVar
  loc_AE99DC: FLdRfVar var_F0
  loc_AE99DF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE99E4: FFree1Var var_D4 = ""
  loc_AE99E7: Branch loc_AE9A2A
  loc_AE99EA: LitI2_Byte 0
  loc_AE99EC: LitVar_Missing var_D4
  loc_AE99EF: LitI2_Byte &HFF
  loc_AE99F1: FLdPr Me
  loc_AE99F4: MemLdStr global_84
  loc_AE99F7: CR8Str
  loc_AE99F9: FLdPr Me
  loc_AE99FC: MemLdStr global_88
  loc_AE99FF: CR8Str
  loc_AE9A01: SubR4
  loc_AE9A02: CVarR8
  loc_AE9A06: PopAdLdVar
  loc_AE9A07: FLdRfVar var_F0
  loc_AE9A0A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE9A0F: FFree1Var var_D4 = ""
  loc_AE9A12: LitI2_Byte 0
  loc_AE9A14: LitVar_Missing var_D4
  loc_AE9A17: LitI2_Byte &HFF
  loc_AE9A19: LitVarStr var_9C, "0"
  loc_AE9A1E: PopAdLdVar
  loc_AE9A1F: FLdRfVar var_EC
  loc_AE9A22: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE9A27: FFree1Var var_D4 = ""
  loc_AE9A2A: LitStr "SELECT ChsrPaco, DetaCuco"
  loc_AE9A2D: LitStr " FROM paraconta"
  loc_AE9A30: ConcatStr
  loc_AE9A31: FStStrNoPop var_B0
  loc_AE9A34: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = ChsrPaco"
  loc_AE9A37: ConcatStr
  loc_AE9A38: FStStrNoPop var_B4
  loc_AE9A3B: LitStr " WHERE paraconta.PeriInfo = "
  loc_AE9A3E: ConcatStr
  loc_AE9A3F: CVarStr var_120
  loc_AE9A42: FLdPr Me
  loc_AE9A45: VCallAd Control_ID_mskDesde
  loc_AE9A48: FStAdFunc var_88
  loc_AE9A4B: FLdPr var_88
  loc_AE9A4E: LateIdLdVar var_D4 DispID_15 0
  loc_AE9A55: CStrVarTmp
  loc_AE9A56: CVarStr var_100
  loc_AE9A59: FLdRfVar var_110
  loc_AE9A5C: ImpAdCallFPR4  = Year()
  loc_AE9A61: FLdRfVar var_110
  loc_AE9A64: ConcatVar var_130
  loc_AE9A68: CStrVarVal var_B8
  loc_AE9A6C: FLdRfVar var_E8
  loc_AE9A6F: NewIfNullPr clsparaconta
  loc_AE9A72: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_AE9A77: FFreeStr var_B0 = "": var_B4 = ""
  loc_AE9A80: FFree1Ad var_88
  loc_AE9A83: FFreeVar var_D4 = "": var_100 = "": var_120 = "": var_110 = ""
  loc_AE9A90: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_AE9A95: PopAdLdVar
  loc_AE9A96: FLdPr Me
  loc_AE9A99: MemLdRfVar from_stack_1.global_64
  loc_AE9A9C: LdPrVar
  loc_AE9A9E: LateMemCall
  loc_AE9AA4: LitVarStr var_AC, "    <td class=""Titulo2"" colspan=""6"" align=""left"">"
  loc_AE9AA9: FLdRfVar var_D4
  loc_AE9AAC: FLdRfVar var_138
  loc_AE9AAF: LitVarStr var_9C, "ChsrPaco"
  loc_AE9AB4: PopAdLdVar
  loc_AE9AB5: FLdRfVar var_134
  loc_AE9AB8: FLdRfVar var_88
  loc_AE9ABB: FLdRfVar var_E8
  loc_AE9ABE: NewIfNullPr clsparaconta
  loc_AE9AC1: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AE9AC6: FLdPr var_88
  loc_AE9AC9:  = Me.Fields
  loc_AE9ACE: FLdPr var_134
  loc_AE9AD1: from_stack_2 = Me.Item(from_stack_1)
  loc_AE9AD6: FLdPr var_138
  loc_AE9AD9:  = Me.Value
  loc_AE9ADE: FLdRfVar var_D4
  loc_AE9AE1: ConcatVar var_100
  loc_AE9AE5: LitVarStr var_148, " - "
  loc_AE9AEA: ConcatVar var_110
  loc_AE9AEE: FLdRfVar var_120
  loc_AE9AF1: FLdRfVar var_164
  loc_AE9AF4: LitVarStr var_160, "DetaCuco"
  loc_AE9AF9: PopAdLdVar
  loc_AE9AFA: FLdRfVar var_150
  loc_AE9AFD: FLdRfVar var_14C
  loc_AE9B00: FLdRfVar var_E8
  loc_AE9B03: NewIfNullPr clsparaconta
  loc_AE9B06: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AE9B0B: FLdPr var_14C
  loc_AE9B0E:  = Me.Fields
  loc_AE9B13: FLdPr var_150
  loc_AE9B16: from_stack_2 = Me.Item(from_stack_1)
  loc_AE9B1B: FLdPr var_164
  loc_AE9B1E:  = Me.Value
  loc_AE9B23: FLdRfVar var_120
  loc_AE9B26: ConcatVar var_130
  loc_AE9B2A: LitVarStr var_174, "</th>"
  loc_AE9B2F: ConcatVar var_184
  loc_AE9B33: PopAdLdVar
  loc_AE9B34: FLdPr Me
  loc_AE9B37: MemLdRfVar from_stack_1.global_64
  loc_AE9B3A: LdPrVar
  loc_AE9B3C: LateMemCall
  loc_AE9B42: FFreeAd var_88 = "": var_134 = "": var_138 = "": var_14C = "": var_150 = ""
  loc_AE9B51: FFreeVar var_D4 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = ""
  loc_AE9B60: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AE9B65: PopAdLdVar
  loc_AE9B66: FLdPr Me
  loc_AE9B69: MemLdRfVar from_stack_1.global_64
  loc_AE9B6C: LdPrVar
  loc_AE9B6E: LateMemCall
  loc_AE9B74: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE9B77: ILdRf var_EC
  loc_AE9B7A: ConcatStr
  loc_AE9B7B: FStStrNoPop var_B0
  loc_AE9B7E: LitStr "</td>"
  loc_AE9B81: ConcatStr
  loc_AE9B82: CVarStr var_D4
  loc_AE9B85: PopAdLdVar
  loc_AE9B86: FLdPr Me
  loc_AE9B89: MemLdRfVar from_stack_1.global_64
  loc_AE9B8C: LdPrVar
  loc_AE9B8E: LateMemCall
  loc_AE9B94: FFree1Str var_B0
  loc_AE9B97: FFree1Var var_D4 = ""
  loc_AE9B9A: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE9B9D: ILdRf var_F0
  loc_AE9BA0: ConcatStr
  loc_AE9BA1: FStStrNoPop var_B0
  loc_AE9BA4: LitStr "</td>"
  loc_AE9BA7: ConcatStr
  loc_AE9BA8: CVarStr var_D4
  loc_AE9BAB: PopAdLdVar
  loc_AE9BAC: FLdPr Me
  loc_AE9BAF: MemLdRfVar from_stack_1.global_64
  loc_AE9BB2: LdPrVar
  loc_AE9BB4: LateMemCall
  loc_AE9BBA: FFree1Str var_B0
  loc_AE9BBD: FFree1Var var_D4 = ""
  loc_AE9BC0: LitVarStr var_9C, "  </tr>"
  loc_AE9BC5: PopAdLdVar
  loc_AE9BC6: FLdPr Me
  loc_AE9BC9: MemLdRfVar from_stack_1.global_64
  loc_AE9BCC: LdPrVar
  loc_AE9BCE: LateMemCall
  loc_AE9BD4: LitNothing
  loc_AE9BD6: CastAd
  loc_AE9BD9: FStAdFunc var_E8
  loc_AE9BDC: Call Proc_243_20_983E30()
  loc_AE9BE1: FLdPr Me
  loc_AE9BE4: MemLdRfVar from_stack_1.global_64
  loc_AE9BE7: LdPrVar
  loc_AE9BE9: LateMemCall
  loc_AE9BEF: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AE9BF4: ExitProcHresult
End Sub

Private Function Proc_243_19_AD5704() 'AD5704
  'Data Table: 45027C
  loc_AD508C: LitVarStr var_94, "<html>"
  loc_AD5091: PopAdLdVar
  loc_AD5092: FLdPr Me
  loc_AD5095: MemLdRfVar from_stack_1.global_64
  loc_AD5098: LdPrVar
  loc_AD509A: LateMemCall
  loc_AD50A0: LitVarStr var_94, "<head>"
  loc_AD50A5: PopAdLdVar
  loc_AD50A6: FLdPr Me
  loc_AD50A9: MemLdRfVar from_stack_1.global_64
  loc_AD50AC: LdPrVar
  loc_AD50AE: LateMemCall
  loc_AD50B4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AD50B9: PopAdLdVar
  loc_AD50BA: FLdPr Me
  loc_AD50BD: MemLdRfVar from_stack_1.global_64
  loc_AD50C0: LdPrVar
  loc_AD50C2: LateMemCall
  loc_AD50C8: LitStr "<title>"
  loc_AD50CB: FLdRfVar var_A8
  loc_AD50CE: FLdPr Me
  loc_AD50D1:  = Me.Caption
  loc_AD50D6: ILdRf var_A8
  loc_AD50D9: ConcatStr
  loc_AD50DA: FStStrNoPop var_AC
  loc_AD50DD: LitStr "</title>"
  loc_AD50E0: ConcatStr
  loc_AD50E1: CVarStr var_BC
  loc_AD50E4: PopAdLdVar
  loc_AD50E5: FLdPr Me
  loc_AD50E8: MemLdRfVar from_stack_1.global_64
  loc_AD50EB: LdPrVar
  loc_AD50ED: LateMemCall
  loc_AD50F3: FFreeStr var_A8 = ""
  loc_AD50FA: FFree1Var var_BC = ""
  loc_AD50FD: LitVarStr var_94, "<style type=""text/css"">"
  loc_AD5102: PopAdLdVar
  loc_AD5103: FLdPr Me
  loc_AD5106: MemLdRfVar from_stack_1.global_64
  loc_AD5109: LdPrVar
  loc_AD510B: LateMemCall
  loc_AD5111: LitVarStr var_94, ".Titulo1 {"
  loc_AD5116: PopAdLdVar
  loc_AD5117: FLdPr Me
  loc_AD511A: MemLdRfVar from_stack_1.global_64
  loc_AD511D: LdPrVar
  loc_AD511F: LateMemCall
  loc_AD5125: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD512A: PopAdLdVar
  loc_AD512B: FLdPr Me
  loc_AD512E: MemLdRfVar from_stack_1.global_64
  loc_AD5131: LdPrVar
  loc_AD5133: LateMemCall
  loc_AD5139: LitVarStr var_94, " font-size: 18px;"
  loc_AD513E: PopAdLdVar
  loc_AD513F: FLdPr Me
  loc_AD5142: MemLdRfVar from_stack_1.global_64
  loc_AD5145: LdPrVar
  loc_AD5147: LateMemCall
  loc_AD514D: LitVarStr var_94, " font-weight: bold;"
  loc_AD5152: PopAdLdVar
  loc_AD5153: FLdPr Me
  loc_AD5156: MemLdRfVar from_stack_1.global_64
  loc_AD5159: LdPrVar
  loc_AD515B: LateMemCall
  loc_AD5161: LitVarStr var_94, "}"
  loc_AD5166: PopAdLdVar
  loc_AD5167: FLdPr Me
  loc_AD516A: MemLdRfVar from_stack_1.global_64
  loc_AD516D: LdPrVar
  loc_AD516F: LateMemCall
  loc_AD5175: LitVarStr var_94, ".Titulo2 {"
  loc_AD517A: PopAdLdVar
  loc_AD517B: FLdPr Me
  loc_AD517E: MemLdRfVar from_stack_1.global_64
  loc_AD5181: LdPrVar
  loc_AD5183: LateMemCall
  loc_AD5189: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD518E: PopAdLdVar
  loc_AD518F: FLdPr Me
  loc_AD5192: MemLdRfVar from_stack_1.global_64
  loc_AD5195: LdPrVar
  loc_AD5197: LateMemCall
  loc_AD519D: LitVarStr var_94, " font-size: 14px;"
  loc_AD51A2: PopAdLdVar
  loc_AD51A3: FLdPr Me
  loc_AD51A6: MemLdRfVar from_stack_1.global_64
  loc_AD51A9: LdPrVar
  loc_AD51AB: LateMemCall
  loc_AD51B1: LitVarStr var_94, " font-weight: bold;"
  loc_AD51B6: PopAdLdVar
  loc_AD51B7: FLdPr Me
  loc_AD51BA: MemLdRfVar from_stack_1.global_64
  loc_AD51BD: LdPrVar
  loc_AD51BF: LateMemCall
  loc_AD51C5: LitVarStr var_94, "}"
  loc_AD51CA: PopAdLdVar
  loc_AD51CB: FLdPr Me
  loc_AD51CE: MemLdRfVar from_stack_1.global_64
  loc_AD51D1: LdPrVar
  loc_AD51D3: LateMemCall
  loc_AD51D9: LitVarStr var_94, ".Normal {"
  loc_AD51DE: PopAdLdVar
  loc_AD51DF: FLdPr Me
  loc_AD51E2: MemLdRfVar from_stack_1.global_64
  loc_AD51E5: LdPrVar
  loc_AD51E7: LateMemCall
  loc_AD51ED: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD51F2: PopAdLdVar
  loc_AD51F3: FLdPr Me
  loc_AD51F6: MemLdRfVar from_stack_1.global_64
  loc_AD51F9: LdPrVar
  loc_AD51FB: LateMemCall
  loc_AD5201: LitVarStr var_94, " font-size: 14px;"
  loc_AD5206: PopAdLdVar
  loc_AD5207: FLdPr Me
  loc_AD520A: MemLdRfVar from_stack_1.global_64
  loc_AD520D: LdPrVar
  loc_AD520F: LateMemCall
  loc_AD5215: LitVarStr var_94, " font-style: normal;"
  loc_AD521A: PopAdLdVar
  loc_AD521B: FLdPr Me
  loc_AD521E: MemLdRfVar from_stack_1.global_64
  loc_AD5221: LdPrVar
  loc_AD5223: LateMemCall
  loc_AD5229: LitVarStr var_94, " font-weight: normal;"
  loc_AD522E: PopAdLdVar
  loc_AD522F: FLdPr Me
  loc_AD5232: MemLdRfVar from_stack_1.global_64
  loc_AD5235: LdPrVar
  loc_AD5237: LateMemCall
  loc_AD523D: LitVarStr var_94, " font-variant: normal;"
  loc_AD5242: PopAdLdVar
  loc_AD5243: FLdPr Me
  loc_AD5246: MemLdRfVar from_stack_1.global_64
  loc_AD5249: LdPrVar
  loc_AD524B: LateMemCall
  loc_AD5251: LitVarStr var_94, "}"
  loc_AD5256: PopAdLdVar
  loc_AD5257: FLdPr Me
  loc_AD525A: MemLdRfVar from_stack_1.global_64
  loc_AD525D: LdPrVar
  loc_AD525F: LateMemCall
  loc_AD5265: LitVarStr var_94, ".Encabezado {"
  loc_AD526A: PopAdLdVar
  loc_AD526B: FLdPr Me
  loc_AD526E: MemLdRfVar from_stack_1.global_64
  loc_AD5271: LdPrVar
  loc_AD5273: LateMemCall
  loc_AD5279: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AD527E: PopAdLdVar
  loc_AD527F: FLdPr Me
  loc_AD5282: MemLdRfVar from_stack_1.global_64
  loc_AD5285: LdPrVar
  loc_AD5287: LateMemCall
  loc_AD528D: LitVarStr var_94, " font-size: 13px;"
  loc_AD5292: PopAdLdVar
  loc_AD5293: FLdPr Me
  loc_AD5296: MemLdRfVar from_stack_1.global_64
  loc_AD5299: LdPrVar
  loc_AD529B: LateMemCall
  loc_AD52A1: LitVarStr var_94, " font-weight: bold;"
  loc_AD52A6: PopAdLdVar
  loc_AD52A7: FLdPr Me
  loc_AD52AA: MemLdRfVar from_stack_1.global_64
  loc_AD52AD: LdPrVar
  loc_AD52AF: LateMemCall
  loc_AD52B5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AD52BA: PopAdLdVar
  loc_AD52BB: FLdPr Me
  loc_AD52BE: MemLdRfVar from_stack_1.global_64
  loc_AD52C1: LdPrVar
  loc_AD52C3: LateMemCall
  loc_AD52C9: LitVarStr var_94, "}"
  loc_AD52CE: PopAdLdVar
  loc_AD52CF: FLdPr Me
  loc_AD52D2: MemLdRfVar from_stack_1.global_64
  loc_AD52D5: LdPrVar
  loc_AD52D7: LateMemCall
  loc_AD52DD: LitVarStr var_94, ".LineaDato {"
  loc_AD52E2: PopAdLdVar
  loc_AD52E3: FLdPr Me
  loc_AD52E6: MemLdRfVar from_stack_1.global_64
  loc_AD52E9: LdPrVar
  loc_AD52EB: LateMemCall
  loc_AD52F1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD52F6: PopAdLdVar
  loc_AD52F7: FLdPr Me
  loc_AD52FA: MemLdRfVar from_stack_1.global_64
  loc_AD52FD: LdPrVar
  loc_AD52FF: LateMemCall
  loc_AD5305: LitVarStr var_94, " font-size: 10px;"
  loc_AD530A: PopAdLdVar
  loc_AD530B: FLdPr Me
  loc_AD530E: MemLdRfVar from_stack_1.global_64
  loc_AD5311: LdPrVar
  loc_AD5313: LateMemCall
  loc_AD5319: LitVarStr var_94, "}"
  loc_AD531E: PopAdLdVar
  loc_AD531F: FLdPr Me
  loc_AD5322: MemLdRfVar from_stack_1.global_64
  loc_AD5325: LdPrVar
  loc_AD5327: LateMemCall
  loc_AD532D: LitVarStr var_94, ".Totales {"
  loc_AD5332: PopAdLdVar
  loc_AD5333: FLdPr Me
  loc_AD5336: MemLdRfVar from_stack_1.global_64
  loc_AD5339: LdPrVar
  loc_AD533B: LateMemCall
  loc_AD5341: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD5346: PopAdLdVar
  loc_AD5347: FLdPr Me
  loc_AD534A: MemLdRfVar from_stack_1.global_64
  loc_AD534D: LdPrVar
  loc_AD534F: LateMemCall
  loc_AD5355: LitVarStr var_94, " font-size: 12px;"
  loc_AD535A: PopAdLdVar
  loc_AD535B: FLdPr Me
  loc_AD535E: MemLdRfVar from_stack_1.global_64
  loc_AD5361: LdPrVar
  loc_AD5363: LateMemCall
  loc_AD5369: LitVarStr var_94, " font-weight: bold;"
  loc_AD536E: PopAdLdVar
  loc_AD536F: FLdPr Me
  loc_AD5372: MemLdRfVar from_stack_1.global_64
  loc_AD5375: LdPrVar
  loc_AD5377: LateMemCall
  loc_AD537D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AD5382: PopAdLdVar
  loc_AD5383: FLdPr Me
  loc_AD5386: MemLdRfVar from_stack_1.global_64
  loc_AD5389: LdPrVar
  loc_AD538B: LateMemCall
  loc_AD5391: LitVarStr var_94, "}"
  loc_AD5396: PopAdLdVar
  loc_AD5397: FLdPr Me
  loc_AD539A: MemLdRfVar from_stack_1.global_64
  loc_AD539D: LdPrVar
  loc_AD539F: LateMemCall
  loc_AD53A5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AD53AA: PopAdLdVar
  loc_AD53AB: FLdPr Me
  loc_AD53AE: MemLdRfVar from_stack_1.global_64
  loc_AD53B1: LdPrVar
  loc_AD53B3: LateMemCall
  loc_AD53B9: LitVarStr var_94, "</style>"
  loc_AD53BE: PopAdLdVar
  loc_AD53BF: FLdPr Me
  loc_AD53C2: MemLdRfVar from_stack_1.global_64
  loc_AD53C5: LdPrVar
  loc_AD53C7: LateMemCall
  loc_AD53CD: LitI4 0
  loc_AD53D2: FStStrCopy var_AC
  loc_AD53D5: FLdRfVar var_AC
  loc_AD53D8: LitI4 0
  loc_AD53DD: FStStrCopy var_A8
  loc_AD53E0: FLdRfVar var_A8
  loc_AD53E3: LitI2_Byte 0
  loc_AD53E5: PopTmpLdAd2 var_BE
  loc_AD53E8: FLdPr Me
  loc_AD53EB: MemLdRfVar from_stack_1.global_64
  loc_AD53EE: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AD53F3: FFreeStr var_A8 = ""
  loc_AD53FA: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AD53FF: PopAdLdVar
  loc_AD5400: FLdPr Me
  loc_AD5403: MemLdRfVar from_stack_1.global_64
  loc_AD5406: LdPrVar
  loc_AD5408: LateMemCall
  loc_AD540E: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AD5413: PopAdLdVar
  loc_AD5414: FLdPr Me
  loc_AD5417: MemLdRfVar from_stack_1.global_64
  loc_AD541A: LdPrVar
  loc_AD541C: LateMemCall
  loc_AD5422: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AD5427: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AD542C: FStVarCopyObj var_BC
  loc_AD542F: FLdRfVar var_BC
  loc_AD5432: FLdRfVar var_D0
  loc_AD5435: ImpAdCallFPR4  = Ucase()
  loc_AD543A: FLdRfVar var_D0
  loc_AD543D: ConcatVar var_E0
  loc_AD5441: LitVarStr var_F0, "</p>"
  loc_AD5446: ConcatVar var_100
  loc_AD544A: PopAdLdVar
  loc_AD544B: FLdPr Me
  loc_AD544E: MemLdRfVar from_stack_1.global_64
  loc_AD5451: LdPrVar
  loc_AD5453: LateMemCall
  loc_AD5459: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AD5464: LitStr "    <p align=""center"">"
  loc_AD5467: FLdRfVar var_A8
  loc_AD546A: FLdPr Me
  loc_AD546D:  = Me.Caption
  loc_AD5472: ILdRf var_A8
  loc_AD5475: ConcatStr
  loc_AD5476: FStStrNoPop var_AC
  loc_AD5479: LitStr "</p></th>"
  loc_AD547C: ConcatStr
  loc_AD547D: CVarStr var_BC
  loc_AD5480: PopAdLdVar
  loc_AD5481: FLdPr Me
  loc_AD5484: MemLdRfVar from_stack_1.global_64
  loc_AD5487: LdPrVar
  loc_AD5489: LateMemCall
  loc_AD548F: FFreeStr var_A8 = ""
  loc_AD5496: FFree1Var var_BC = ""
  loc_AD5499: LitVarStr var_94, "  </tr>"
  loc_AD549E: PopAdLdVar
  loc_AD549F: FLdPr Me
  loc_AD54A2: MemLdRfVar from_stack_1.global_64
  loc_AD54A5: LdPrVar
  loc_AD54A7: LateMemCall
  loc_AD54AD: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AD54B2: PopAdLdVar
  loc_AD54B3: FLdPr Me
  loc_AD54B6: MemLdRfVar from_stack_1.global_64
  loc_AD54B9: LdPrVar
  loc_AD54BB: LateMemCall
  loc_AD54C1: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_AD54C6: PopAdLdVar
  loc_AD54C7: FLdPr Me
  loc_AD54CA: MemLdRfVar from_stack_1.global_64
  loc_AD54CD: LdPrVar
  loc_AD54CF: LateMemCall
  loc_AD54D5: FLdPr Me
  loc_AD54D8: VCallAd Control_ID_mskDesde
  loc_AD54DB: FStAdFunc var_114
  loc_AD54DE: FLdPr var_114
  loc_AD54E1: LateIdLdVar var_BC DispID_22 0
  loc_AD54E8: CStrVarTmp
  loc_AD54E9: FStStrNoPop var_A8
  loc_AD54EC: LitStr vbNullString
  loc_AD54EF: NeStr
  loc_AD54F1: FFree1Str var_A8
  loc_AD54F4: FFree1Ad var_114
  loc_AD54F7: FFree1Var var_BC = ""
  loc_AD54FA: BranchF loc_AD5542
  loc_AD54FD: LitStr "         Desde: <span class=""Normal"">"
  loc_AD5500: FLdPr Me
  loc_AD5503: VCallAd Control_ID_mskDesde
  loc_AD5506: FStAdFunc var_114
  loc_AD5509: FLdPr var_114
  loc_AD550C: LateIdLdVar var_BC DispID_15 0
  loc_AD5513: CStrVarTmp
  loc_AD5514: FStStrNoPop var_A8
  loc_AD5517: ConcatStr
  loc_AD5518: FStStrNoPop var_AC
  loc_AD551B: LitStr "</span><br>"
  loc_AD551E: ConcatStr
  loc_AD551F: CVarStr var_D0
  loc_AD5522: PopAdLdVar
  loc_AD5523: FLdPr Me
  loc_AD5526: MemLdRfVar from_stack_1.global_64
  loc_AD5529: LdPrVar
  loc_AD552B: LateMemCall
  loc_AD5531: FFreeStr var_A8 = ""
  loc_AD5538: FFree1Ad var_114
  loc_AD553B: FFreeVar var_BC = ""
  loc_AD5542: FLdPr Me
  loc_AD5545: VCallAd Control_ID_mskHasta
  loc_AD5548: FStAdFunc var_114
  loc_AD554B: FLdPr var_114
  loc_AD554E: LateIdLdVar var_BC DispID_22 0
  loc_AD5555: CStrVarTmp
  loc_AD5556: FStStrNoPop var_A8
  loc_AD5559: LitStr vbNullString
  loc_AD555C: NeStr
  loc_AD555E: FFree1Str var_A8
  loc_AD5561: FFree1Ad var_114
  loc_AD5564: FFree1Var var_BC = ""
  loc_AD5567: BranchF loc_AD55AF
  loc_AD556A: LitStr "         Hasta: <span class=""Normal"">"
  loc_AD556D: FLdPr Me
  loc_AD5570: VCallAd Control_ID_mskHasta
  loc_AD5573: FStAdFunc var_114
  loc_AD5576: FLdPr var_114
  loc_AD5579: LateIdLdVar var_BC DispID_15 0
  loc_AD5580: CStrVarTmp
  loc_AD5581: FStStrNoPop var_A8
  loc_AD5584: ConcatStr
  loc_AD5585: FStStrNoPop var_AC
  loc_AD5588: LitStr "</span>"
  loc_AD558B: ConcatStr
  loc_AD558C: CVarStr var_D0
  loc_AD558F: PopAdLdVar
  loc_AD5590: FLdPr Me
  loc_AD5593: MemLdRfVar from_stack_1.global_64
  loc_AD5596: LdPrVar
  loc_AD5598: LateMemCall
  loc_AD559E: FFreeStr var_A8 = ""
  loc_AD55A5: FFree1Ad var_114
  loc_AD55A8: FFreeVar var_BC = ""
  loc_AD55AF: LitVarStr var_94, "   </th>"
  loc_AD55B4: PopAdLdVar
  loc_AD55B5: FLdPr Me
  loc_AD55B8: MemLdRfVar from_stack_1.global_64
  loc_AD55BB: LdPrVar
  loc_AD55BD: LateMemCall
  loc_AD55C3: LitVarStr var_94, "  </tr>"
  loc_AD55C8: PopAdLdVar
  loc_AD55C9: FLdPr Me
  loc_AD55CC: MemLdRfVar from_stack_1.global_64
  loc_AD55CF: LdPrVar
  loc_AD55D1: LateMemCall
  loc_AD55D7: LitVarStr var_94, "</table>"
  loc_AD55DC: PopAdLdVar
  loc_AD55DD: FLdPr Me
  loc_AD55E0: MemLdRfVar from_stack_1.global_64
  loc_AD55E3: LdPrVar
  loc_AD55E5: LateMemCall
  loc_AD55EB: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AD55F0: PopAdLdVar
  loc_AD55F1: FLdPr Me
  loc_AD55F4: MemLdRfVar from_stack_1.global_64
  loc_AD55F7: LdPrVar
  loc_AD55F9: LateMemCall
  loc_AD55FF: LitVarStr var_94, "  <THEAD>"
  loc_AD5604: PopAdLdVar
  loc_AD5605: FLdPr Me
  loc_AD5608: MemLdRfVar from_stack_1.global_64
  loc_AD560B: LdPrVar
  loc_AD560D: LateMemCall
  loc_AD5613: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AD5618: PopAdLdVar
  loc_AD5619: FLdPr Me
  loc_AD561C: MemLdRfVar from_stack_1.global_64
  loc_AD561F: LdPrVar
  loc_AD5621: LateMemCall
  loc_AD5627: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_AD562C: PopAdLdVar
  loc_AD562D: FLdPr Me
  loc_AD5630: MemLdRfVar from_stack_1.global_64
  loc_AD5633: LdPrVar
  loc_AD5635: LateMemCall
  loc_AD563B: LitVarStr var_94, "    <th>Fecha</th>"
  loc_AD5640: PopAdLdVar
  loc_AD5641: FLdPr Me
  loc_AD5644: MemLdRfVar from_stack_1.global_64
  loc_AD5647: LdPrVar
  loc_AD5649: LateMemCall
  loc_AD564F: LitVarStr var_94, "    <th>Expediente</th>"
  loc_AD5654: PopAdLdVar
  loc_AD5655: FLdPr Me
  loc_AD5658: MemLdRfVar from_stack_1.global_64
  loc_AD565B: LdPrVar
  loc_AD565D: LateMemCall
  loc_AD5663: LitVarStr var_94, "    <th>Liquidaci&oacute;n</th>"
  loc_AD5668: PopAdLdVar
  loc_AD5669: FLdPr Me
  loc_AD566C: MemLdRfVar from_stack_1.global_64
  loc_AD566F: LdPrVar
  loc_AD5671: LateMemCall
  loc_AD5677: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_AD567C: PopAdLdVar
  loc_AD567D: FLdPr Me
  loc_AD5680: MemLdRfVar from_stack_1.global_64
  loc_AD5683: LdPrVar
  loc_AD5685: LateMemCall
  loc_AD568B: LitVarStr var_94, "    <th>Banco</th>"
  loc_AD5690: PopAdLdVar
  loc_AD5691: FLdPr Me
  loc_AD5694: MemLdRfVar from_stack_1.global_64
  loc_AD5697: LdPrVar
  loc_AD5699: LateMemCall
  loc_AD569F: LitVarStr var_94, "    <th>Cheque</th>"
  loc_AD56A4: PopAdLdVar
  loc_AD56A5: FLdPr Me
  loc_AD56A8: MemLdRfVar from_stack_1.global_64
  loc_AD56AB: LdPrVar
  loc_AD56AD: LateMemCall
  loc_AD56B3: LitVarStr var_94, "    <th>D E B E</th>"
  loc_AD56B8: PopAdLdVar
  loc_AD56B9: FLdPr Me
  loc_AD56BC: MemLdRfVar from_stack_1.global_64
  loc_AD56BF: LdPrVar
  loc_AD56C1: LateMemCall
  loc_AD56C7: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_AD56CC: PopAdLdVar
  loc_AD56CD: FLdPr Me
  loc_AD56D0: MemLdRfVar from_stack_1.global_64
  loc_AD56D3: LdPrVar
  loc_AD56D5: LateMemCall
  loc_AD56DB: LitVarStr var_94, "  </tr>"
  loc_AD56E0: PopAdLdVar
  loc_AD56E1: FLdPr Me
  loc_AD56E4: MemLdRfVar from_stack_1.global_64
  loc_AD56E7: LdPrVar
  loc_AD56E9: LateMemCall
  loc_AD56EF: LitVarStr var_94, "  </THEAD>"
  loc_AD56F4: PopAdLdVar
  loc_AD56F5: FLdPr Me
  loc_AD56F8: MemLdRfVar from_stack_1.global_64
  loc_AD56FB: LdPrVar
  loc_AD56FD: LateMemCall
  loc_AD5703: ExitProcHresult
End Function

Private Function Proc_243_20_983E30() '983E30
  'Data Table: 45027C
  loc_983DF0: LitVarStr var_94, "</table>"
  loc_983DF5: PopAdLdVar
  loc_983DF6: FLdPr Me
  loc_983DF9: MemLdRfVar from_stack_1.global_64
  loc_983DFC: LdPrVar
  loc_983DFE: LateMemCall
  loc_983E04: LitVarStr var_94, "</body>"
  loc_983E09: PopAdLdVar
  loc_983E0A: FLdPr Me
  loc_983E0D: MemLdRfVar from_stack_1.global_64
  loc_983E10: LdPrVar
  loc_983E12: LateMemCall
  loc_983E18: LitVarStr var_94, "</html>"
  loc_983E1D: PopAdLdVar
  loc_983E1E: FLdPr Me
  loc_983E21: MemLdRfVar from_stack_1.global_64
  loc_983E24: LdPrVar
  loc_983E26: LateMemCall
  loc_983E2C: ExitProcHresult
End Function
