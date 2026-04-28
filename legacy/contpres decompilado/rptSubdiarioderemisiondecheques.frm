VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiarioderemisiondecheques
  Caption = "Subdiario de remisión de cheques"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiarioderemisiondecheques.frx":0000
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
    OleObjectBlob = "rptSubdiarioderemisiondecheques.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptSubdiarioderemisiondecheques.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiarioderemisiondecheques.frx":0B9C
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
      Picture = "rptSubdiarioderemisiondecheques.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiarioderemisiondecheques.frx":1142
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
      OleObjectBlob = "rptSubdiarioderemisiondecheques.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiarioderemisiondecheques.frx":170C
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
    OleObjectBlob = "rptSubdiarioderemisiondecheques.frx":1794
  End
End

Attribute VB_Name = "rptSubdiarioderemisiondecheques"

Public bGenerado As Boolean

Private Type UDT_1_005A7200
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_2_0061A86C
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B3B4
  'Data Table: 44D6A4
  loc_98B37C: FLdPr Me
  loc_98B37F: VCallAd Control_ID_statusBar
  loc_98B382: FStAdFunc var_88
  loc_98B385: FLdPr var_88
  loc_98B388: LateIdLdVar var_98 DispID_1 0
  loc_98B38F: CStrVarTmp
  loc_98B390: CVarStr var_A8
  loc_98B393: PopAdLdVar
  loc_98B394: FLdPr Me
  loc_98B397: VCallAd Control_ID_statusBar
  loc_98B39A: FStAdFunc var_BC
  loc_98B39D: FLdPr var_BC
  loc_98B3A0: LateIdSt
  loc_98B3A5: FFreeAd var_88 = ""
  loc_98B3AC: FFreeVar var_98 = ""
  loc_98B3B3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9587F0
  'Data Table: 44D6A4
  loc_9587D8: LitI2_Byte 0
  loc_9587DA: ILdRf Me
  loc_9587DD: CastAd
  loc_9587E0: FStAdFunc var_88
  loc_9587E3: FLdRfVar var_88
  loc_9587E6: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9587EB: FFree1Ad var_88
  loc_9587EE: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '958AE8
  'Data Table: 44D6A4
  loc_958AD0: ILdRf Me
  loc_958AD3: CastAd
  loc_958AD6: FStAdFunc var_88
  loc_958AD9: FLdRfVar var_88
  loc_958ADC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_958AE1: FFree1Ad var_88
  loc_958AE4: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B810
  'Data Table: 44D6A4
  loc_97B7E0: LitVarStr var_94, "Cerrando..."
  loc_97B7E5: PopAdLdVar
  loc_97B7E6: FLdPr Me
  loc_97B7E9: VCallAd Control_ID_statusBar
  loc_97B7EC: FStAdFunc var_A8
  loc_97B7EF: FLdPr var_A8
  loc_97B7F2: LateIdSt
  loc_97B7F7: FFree1Ad var_A8
  loc_97B7FA: ILdRf Me
  loc_97B7FD: FStAdNoPop
  loc_97B801: ImpAdLdRf MemVar_C44F9C
  loc_97B804: NewIfNullPr Me
  loc_97B807: Me.Global.Unload from_stack_1
  loc_97B80C: FFree1Ad var_A8
  loc_97B80F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BB4F8
  'Data Table: 44D6A4
  loc_9BB448: LitI2_Byte 0
  loc_9BB44A: FLdPr Me
  loc_9BB44D: MemStI2 bGenerado
  loc_9BB450: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BB455: LitI2_Byte 0
  loc_9BB457: PopTmpLdAd2 var_86
  loc_9BB45A: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BB45F: CVarDate var_A8
  loc_9BB463: FLdRfVar var_B8
  loc_9BB466: ImpAdCallFPR4  = Year()
  loc_9BB46B: LitI2_Byte 0
  loc_9BB46D: PopTmpLdAd2 var_BA
  loc_9BB470: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BB475: CVarDate var_DC
  loc_9BB479: FLdRfVar var_EC
  loc_9BB47C: ImpAdCallFPR4  = Month()
  loc_9BB481: LitI2_Byte 1
  loc_9BB483: FLdRfVar var_EC
  loc_9BB486: CI2Var
  loc_9BB487: FLdRfVar var_B8
  loc_9BB48A: CI2Var
  loc_9BB48B: FLdRfVar var_FC
  loc_9BB48E: ImpAdCallFPR4  = DateSerial(, , )
  loc_9BB493: FLdRfVar var_FC
  loc_9BB496: CStrVarTmp
  loc_9BB497: CVarStr var_10C
  loc_9BB49A: PopAdLdVar
  loc_9BB49B: FLdPr Me
  loc_9BB49E: VCallAd Control_ID_mskDesde
  loc_9BB4A1: FStAdFunc var_120
  loc_9BB4A4: FLdPr var_120
  loc_9BB4A7: LateIdSt
  loc_9BB4AC: FFree1Ad var_120
  loc_9BB4AF: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9BB4BE: ImpAdLdFPR8 MemVar_C3D04C
  loc_9BB4C1: CStrDate
  loc_9BB4C3: CVarStr var_A8
  loc_9BB4C6: PopAdLdVar
  loc_9BB4C7: FLdPr Me
  loc_9BB4CA: VCallAd Control_ID_mskHasta
  loc_9BB4CD: FStAdFunc var_120
  loc_9BB4D0: FLdPr var_120
  loc_9BB4D3: LateIdSt
  loc_9BB4D8: FFree1Ad var_120
  loc_9BB4DB: FFree1Var var_A8 = ""
  loc_9BB4DE: Call HabilitarCriterio()
  loc_9BB4E3: ILdRf Me
  loc_9BB4E6: CastAd
  loc_9BB4E9: FStAdFunc var_120
  loc_9BB4EC: FLdRfVar var_120
  loc_9BB4EF: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BB4F4: FFree1Ad var_120
  loc_9BB4F7: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9589B8
  'Data Table: 44D6A4
  loc_9589A0: ILdRf Me
  loc_9589A3: CastAd
  loc_9589A6: FStAdFunc var_88
  loc_9589A9: FLdRfVar var_88
  loc_9589AC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9589B1: FFree1Ad var_88
  loc_9589B4: ExitProcHresult
  loc_9589B5: LitI2FP 1289
End Sub

Private Sub mskDesde_UnknownEvent_0 '951150
  'Data Table: 44D6A4
  loc_95113C: FLdPr Me
  loc_95113F: VCallAd Control_ID_mskDesde
  loc_951142: CVarAd
  loc_951146: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95114B: FFree1Var var_94 = ""
  loc_95114E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C4108
  'Data Table: 44D6A4
  loc_9C4044: FLdPr Me
  loc_9C4047: VCallAd Control_ID_mskDesde
  loc_9C404A: FStAdFunc var_88
  loc_9C404D: FLdPr var_88
  loc_9C4050: LateIdLdVar var_98 DispID_22 0
  loc_9C4057: CStrVarTmp
  loc_9C4058: FStStrNoPop var_9C
  loc_9C405B: LitStr vbNullString
  loc_9C405E: NeStr
  loc_9C4060: FFree1Str var_9C
  loc_9C4063: FFree1Ad var_88
  loc_9C4066: FFree1Var var_98 = ""
  loc_9C4069: BranchF loc_9C4104
  loc_9C406C: FLdPr Me
  loc_9C406F: VCallAd Control_ID_mskDesde
  loc_9C4072: FStAdFunc var_88
  loc_9C4075: FLdPr var_88
  loc_9C4078: LateIdLdVar var_98 DispID_15 0
  loc_9C407F: PopAd
  loc_9C4081: FLdPr Me
  loc_9C4084: VCallAd Control_ID_mskDesde
  loc_9C4087: FStAdFunc var_AC
  loc_9C408A: LitI2_Byte &HFF
  loc_9C408C: PopTmpLdAd2 var_A2
  loc_9C408F: FLdZeroAd var_AC
  loc_9C4092: FStAdFunc var_A0
  loc_9C4095: FLdRfVar var_A0
  loc_9C4098: LitStr vbNullString
  loc_9C409B: LitI2_Byte 0
  loc_9C409D: LitI2_Byte 0
  loc_9C409F: FLdRfVar var_98
  loc_9C40A2: CStrVarTmp
  loc_9C40A3: FStStrNoPop var_9C
  loc_9C40A6: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C40AB: FStStrNoPop var_A8
  loc_9C40AE: FLdPr Me
  loc_9C40B1: MemStStrCopy
  loc_9C40B5: FFreeStr var_9C = ""
  loc_9C40BC: FFreeAd var_88 = "": var_A0 = ""
  loc_9C40C5: FFree1Var var_98 = ""
  loc_9C40C8: FLdPr Me
  loc_9C40CB: VCallAd Control_ID_mskDesde
  loc_9C40CE: FStAdFunc var_B0
  loc_9C40D1: LitNothing
  loc_9C40D3: CastAd
  loc_9C40D6: FStAdFunc var_AC
  loc_9C40D9: FLdRfVar var_AC
  loc_9C40DC: FLdZeroAd var_B0
  loc_9C40DF: FStAdFuncNoPop
  loc_9C40E2: CastAd
  loc_9C40E5: FStAdFunc var_A0
  loc_9C40E8: FLdRfVar var_A0
  loc_9C40EB: FLdPr Me
  loc_9C40EE: MemLdRfVar from_stack_1.global_100
  loc_9C40F1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C40F6: IStI2 arg_C
  loc_9C40F9: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C4104: ExitProcHresult
  loc_9C4105: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '951030
  'Data Table: 44D6A4
  loc_95101C: FLdPr Me
  loc_95101F: VCallAd Control_ID_mskHasta
  loc_951022: CVarAd
  loc_951026: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95102B: FFree1Var var_94 = ""
  loc_95102E: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B286C
  'Data Table: 44D6A4
  loc_9B27D0: FLdPr Me
  loc_9B27D3: VCallAd Control_ID_mskHasta
  loc_9B27D6: FStAdFunc var_88
  loc_9B27D9: FLdPr var_88
  loc_9B27DC: LateIdLdVar var_98 DispID_15 0
  loc_9B27E3: PopAd
  loc_9B27E5: FLdPr Me
  loc_9B27E8: VCallAd Control_ID_mskHasta
  loc_9B27EB: FStAdFunc var_AC
  loc_9B27EE: LitI2_Byte &HFF
  loc_9B27F0: PopTmpLdAd2 var_A2
  loc_9B27F3: FLdZeroAd var_AC
  loc_9B27F6: FStAdFunc var_A0
  loc_9B27F9: FLdRfVar var_A0
  loc_9B27FC: LitStr vbNullString
  loc_9B27FF: LitI2_Byte 0
  loc_9B2801: LitI2_Byte 0
  loc_9B2803: FLdRfVar var_98
  loc_9B2806: CStrVarTmp
  loc_9B2807: FStStrNoPop var_9C
  loc_9B280A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B280F: FStStrNoPop var_A8
  loc_9B2812: FLdPr Me
  loc_9B2815: MemStStrCopy
  loc_9B2819: FFreeStr var_9C = ""
  loc_9B2820: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2829: FFree1Var var_98 = ""
  loc_9B282C: FLdPr Me
  loc_9B282F: VCallAd Control_ID_mskHasta
  loc_9B2832: FStAdFunc var_B0
  loc_9B2835: LitNothing
  loc_9B2837: CastAd
  loc_9B283A: FStAdFunc var_AC
  loc_9B283D: FLdRfVar var_AC
  loc_9B2840: FLdZeroAd var_B0
  loc_9B2843: FStAdFuncNoPop
  loc_9B2846: CastAd
  loc_9B2849: FStAdFunc var_A0
  loc_9B284C: FLdRfVar var_A0
  loc_9B284F: FLdPr Me
  loc_9B2852: MemLdRfVar from_stack_1.global_100
  loc_9B2855: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B285A: IStI2 arg_C
  loc_9B285D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2868: ExitProcHresult
End Function

Private Sub cmdCalHasta_Click() '97CE50
  'Data Table: 44D6A4
  loc_97CE1C: LitVar_Missing var_A4
  loc_97CE1F: PopAdLdVar
  loc_97CE20: LitVarI4
  loc_97CE28: PopAdLdVar
  loc_97CE29: ImpAdLdRf MemVar_C3D9A8
  loc_97CE2C: NewIfNullPr frmCalendario
  loc_97CE2F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CE34: ImpAdLdRf MemVar_C3D038
  loc_97CE37: CDargRef
  loc_97CE3B: FLdPr Me
  loc_97CE3E: VCallAd Control_ID_mskHasta
  loc_97CE41: FStAdFunc var_A8
  loc_97CE44: FLdPr var_A8
  loc_97CE47: LateIdSt
  loc_97CE4C: FFree1Ad var_A8
  loc_97CE4F: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97CDE8
  'Data Table: 44D6A4
  loc_97CDB4: LitVar_Missing var_A4
  loc_97CDB7: PopAdLdVar
  loc_97CDB8: LitVarI4
  loc_97CDC0: PopAdLdVar
  loc_97CDC1: ImpAdLdRf MemVar_C3D9A8
  loc_97CDC4: NewIfNullPr frmCalendario
  loc_97CDC7: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CDCC: ImpAdLdRf MemVar_C3D038
  loc_97CDCF: CDargRef
  loc_97CDD3: FLdPr Me
  loc_97CDD6: VCallAd Control_ID_mskDesde
  loc_97CDD9: FStAdFunc var_A8
  loc_97CDDC: FLdPr var_A8
  loc_97CDDF: LateIdSt
  loc_97CDE4: FFree1Ad var_A8
  loc_97CDE7: ExitProcHresult
End Sub

Private Sub Form_Load() '96C2C8
  'Data Table: 44D6A4
  loc_96C2A8: LitI2_Byte &HFF
  loc_96C2AA: ImpAdStI2 MemVar_C3D840
  loc_96C2AD: ILdRf Me
  loc_96C2B0: CastAd
  loc_96C2B3: FStAdFunc var_88
  loc_96C2B6: FLdRfVar var_88
  loc_96C2B9: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96C2BE: FFree1Ad var_88
  loc_96C2C1: Call cmdNueva_Click()
  loc_96C2C6: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9592A0
  'Data Table: 44D6A4
  loc_959288: FLdPr Me
  loc_95928B: VCallAd Control_ID_wbbReporte
  loc_95928E: FStAdFunc var_88
  loc_959291: FLdRfVar var_88
  loc_959294: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_959299: FFree1Ad var_88
  loc_95929C: ExitProcHresult
  loc_95929D: MemLdRfVar from_stack_1.global_1391
End Sub

Public Function bGeneradoGet() '44E324
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44E333
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A138C
  'Data Table: 44D6A4
  loc_9A1328: LitI4 0
  loc_9A132D: LitI4 3
  loc_9A1332: FLdRfVar var_88
  loc_9A1335: Redim
  loc_9A133F: FLdPr Me
  loc_9A1342: VCallAd Control_ID_mskDesde
  loc_9A1345: CVarAd
  loc_9A1349: ParmAry1St
  loc_9A134F: FLdPr Me
  loc_9A1352: VCallAd Control_ID_cmdCalDesde
  loc_9A1355: CVarAd
  loc_9A1359: ParmAry1St
  loc_9A135F: FLdPr Me
  loc_9A1362: VCallAd Control_ID_mskHasta
  loc_9A1365: CVarAd
  loc_9A1369: ParmAry1St
  loc_9A136F: FLdPr Me
  loc_9A1372: VCallAd Control_ID_cmdCalHasta
  loc_9A1375: CVarAd
  loc_9A1379: ParmAry1St
  loc_9A137F: FLdRfVar var_88
  loc_9A1382: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1387: FLdRfVar var_88
  loc_9A138A: Erase
  loc_9A138B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B04560
  'Data Table: 44D6A4
  loc_B03DC0: LitStr vbNullString
  loc_B03DC3: FLdPr Me
  loc_B03DC6: MemStStrCopy
  loc_B03DCA: LitI2_Byte 0
  loc_B03DCC: PopTmpLdAd2 var_8E
  loc_B03DCF: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B03DD4: FLdPr Me
  loc_B03DD7: MemLdStr global_100
  loc_B03DDA: LitStr vbNullString
  loc_B03DDD: NeStr
  loc_B03DDF: BranchF loc_B03DE5
  loc_B03DE2: Branch loc_B04536
  loc_B03DE5: LitI2_Byte 0
  loc_B03DE7: PopTmpLdAd2 var_8E
  loc_B03DEA: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B03DEF: FLdPr Me
  loc_B03DF2: MemLdStr global_100
  loc_B03DF5: LitStr vbNullString
  loc_B03DF8: NeStr
  loc_B03DFA: BranchF loc_B03E00
  loc_B03DFD: Branch loc_B04536
  loc_B03E00: FLdPr Me
  loc_B03E03: MemLdI2 bGenerado
  loc_B03E06: BranchF loc_B03E0A
  loc_B03E09: ExitProcHresult
  loc_B03E0A: LitVarStr var_A0, "Generando reporte..."
  loc_B03E0F: PopAdLdVar
  loc_B03E10: FLdPr Me
  loc_B03E13: VCallAd Control_ID_statusBar
  loc_B03E16: FStAdFunc var_B4
  loc_B03E19: FLdPr var_B4
  loc_B03E1C: LateIdSt
  loc_B03E21: FFree1Ad var_B4
  loc_B03E24: LitI4 &HB
  loc_B03E29: CI2I4
  loc_B03E2A: FLdPr Me
  loc_B03E2D: Me.MousePointer = from_stack_1
  loc_B03E32: FLdPr Me
  loc_B03E35: VCallAd Control_ID_mskDesde
  loc_B03E38: FStAdFunc var_B4
  loc_B03E3B: FLdPr var_B4
  loc_B03E3E: LateIdLdVar var_C4 DispID_22 0
  loc_B03E45: CStrVarTmp
  loc_B03E46: FStStrNoPop var_C8
  loc_B03E49: LitStr vbNullString
  loc_B03E4C: NeStr
  loc_B03E4E: FFree1Str var_C8
  loc_B03E51: FFree1Ad var_B4
  loc_B03E54: FFree1Var var_C4 = ""
  loc_B03E57: BranchF loc_B03EA9
  loc_B03E5A: FLdPr Me
  loc_B03E5D: VCallAd Control_ID_mskDesde
  loc_B03E60: FStAdFunc var_B4
  loc_B03E63: FLdPr var_B4
  loc_B03E66: LateIdLdVar var_C4 DispID_15 0
  loc_B03E6D: PopAd
  loc_B03E6F: LitStr " AND FechCaja >= "
  loc_B03E72: LitI4 1
  loc_B03E77: LitI4 1
  loc_B03E7C: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_B03E81: FStVarCopyObj var_E8
  loc_B03E84: FLdRfVar var_E8
  loc_B03E87: FLdRfVar var_C4
  loc_B03E8A: CStrVarTmp
  loc_B03E8B: CVarStr var_D8
  loc_B03E8E: ImpAdCallI2 Format$(, )
  loc_B03E93: FStStrNoPop var_C8
  loc_B03E96: ConcatStr
  loc_B03E97: FStStr var_88
  loc_B03E9A: FFree1Str var_C8
  loc_B03E9D: FFree1Ad var_B4
  loc_B03EA0: FFreeVar var_C4 = "": var_D8 = ""
  loc_B03EA9: FLdPr Me
  loc_B03EAC: VCallAd Control_ID_mskHasta
  loc_B03EAF: FStAdFunc var_B4
  loc_B03EB2: FLdPr var_B4
  loc_B03EB5: LateIdLdVar var_C4 DispID_22 0
  loc_B03EBC: CStrVarTmp
  loc_B03EBD: FStStrNoPop var_C8
  loc_B03EC0: LitStr vbNullString
  loc_B03EC3: NeStr
  loc_B03EC5: FFree1Str var_C8
  loc_B03EC8: FFree1Ad var_B4
  loc_B03ECB: FFree1Var var_C4 = ""
  loc_B03ECE: BranchF loc_B03F20
  loc_B03ED1: FLdPr Me
  loc_B03ED4: VCallAd Control_ID_mskHasta
  loc_B03ED7: FStAdFunc var_B4
  loc_B03EDA: FLdPr var_B4
  loc_B03EDD: LateIdLdVar var_C4 DispID_15 0
  loc_B03EE4: PopAd
  loc_B03EE6: LitStr " AND FechCaja <= "
  loc_B03EE9: LitI4 1
  loc_B03EEE: LitI4 1
  loc_B03EF3: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_B03EF8: FStVarCopyObj var_E8
  loc_B03EFB: FLdRfVar var_E8
  loc_B03EFE: FLdRfVar var_C4
  loc_B03F01: CStrVarTmp
  loc_B03F02: CVarStr var_D8
  loc_B03F05: ImpAdCallI2 Format$(, )
  loc_B03F0A: FStStrNoPop var_C8
  loc_B03F0D: ConcatStr
  loc_B03F0E: FStStr var_8C
  loc_B03F11: FFree1Str var_C8
  loc_B03F14: FFree1Ad var_B4
  loc_B03F17: FFreeVar var_C4 = "": var_D8 = ""
  loc_B03F20: FLdPr Me
  loc_B03F23: MemLdRfVar from_stack_1.global_56
  loc_B03F26: NewIfNullAd
  loc_B03F29: FStAd var_EC 
  loc_B03F2D: LitStr "SELECT DISTINCT FechCaja"
  loc_B03F30: LitStr " FROM cajaremicheq"
  loc_B03F33: ConcatStr
  loc_B03F34: FStStrNoPop var_C8
  loc_B03F37: LitStr " WHERE TRUE"
  loc_B03F3A: ConcatStr
  loc_B03F3B: FStStrNoPop var_F0
  loc_B03F3E: ILdRf var_88
  loc_B03F41: ConcatStr
  loc_B03F42: FStStrNoPop var_F4
  loc_B03F45: ILdRf var_8C
  loc_B03F48: ConcatStr
  loc_B03F49: FStStrNoPop var_F8
  loc_B03F4C: LitStr " ORDER BY FechCaja;"
  loc_B03F4F: ConcatStr
  loc_B03F50: FStStrNoPop var_FC
  loc_B03F53: FLdPr var_EC
  loc_B03F56: Call clsbase.RedefineRS(from_stack_1v)
  loc_B03F5B: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B03F68: FLdRfVar var_100
  loc_B03F6B: FLdPr var_EC
  loc_B03F6E: from_stack_1 = clsbase.RecordCount
  loc_B03F73: ILdRf var_100
  loc_B03F76: LitI4 0
  loc_B03F7B: EqI4
  loc_B03F7C: BranchF loc_B03F8F
  loc_B03F7F: LitI4 0
  loc_B03F84: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B03F87: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B03F8C: Branch loc_B04536
  loc_B03F8F: LitI2_Byte 0
  loc_B03F91: CStrUI1
  loc_B03F93: FStStrNoPop var_C8
  loc_B03F96: FLdPr Me
  loc_B03F99: MemStStrCopy
  loc_B03F9D: FFree1Str var_C8
  loc_B03FA0: LitI2_Byte 0
  loc_B03FA2: CStrUI1
  loc_B03FA4: FStStrNoPop var_C8
  loc_B03FA7: FLdPr Me
  loc_B03FAA: MemStStrCopy
  loc_B03FAE: FFree1Str var_C8
  loc_B03FB1: LitI4 1
  loc_B03FB6: FLdRfVar var_100
  loc_B03FB9: FLdPr Me
  loc_B03FBC: MemLdRfVar from_stack_1.global_56
  loc_B03FBF: NewIfNullPr clsbase
  loc_B03FC2: from_stack_1 = clsbase.RecordCount
  loc_B03FC7: ILdRf var_100
  loc_B03FCA: FLdPr Me
  loc_B03FCD: MemLdRfVar from_stack_1.global_80
  loc_B03FD0: Redim
  loc_B03FDA: FLdPr var_EC
  loc_B03FDD: Call clsbase.MoveFirst()
  loc_B03FE2: LitI2_Byte 1
  loc_B03FE4: FLdPr Me
  loc_B03FE7: MemLdRfVar from_stack_1.global_92
  loc_B03FEA: FLdPr Me
  loc_B03FED: MemLdStr global_80
  loc_B03FF0: LitI2_Byte 1
  loc_B03FF2: FnUBound
  loc_B03FF4: CI2I4
  loc_B03FF5: ForI2 var_104
  loc_B03FFB: FLdRfVar var_10C
  loc_B03FFE: LitVarStr var_A0, "FechCaja"
  loc_B04003: PopAdLdVar
  loc_B04004: FLdRfVar var_108
  loc_B04007: FLdRfVar var_B4
  loc_B0400A: FLdPr var_EC
  loc_B0400D: from_stack_1v = clsbase.RsFrmGet()
  loc_B04012: FLdPr var_B4
  loc_B04015:  = Me.Fields
  loc_B0401A: FLdPr var_108
  loc_B0401D: from_stack_2 = Me.Item(from_stack_1)
  loc_B04022: LitI4 1
  loc_B04027: LitI4 1
  loc_B0402C: LitVarStr var_B0, "yyyy-mm-dd"
  loc_B04031: FStVarCopyObj var_D8
  loc_B04034: FLdRfVar var_D8
  loc_B04037: FLdZeroAd var_10C
  loc_B0403A: CVarAd
  loc_B0403E: ImpAdCallI2 Format$(, )
  loc_B04043: FStStr var_C8
  loc_B04046: LitI2_Byte 0
  loc_B04048: LitVar_Missing var_130
  loc_B0404B: LitI2_Byte 0
  loc_B0404D: FLdZeroAd var_C8
  loc_B04050: CVarStr var_E8
  loc_B04053: PopAdLdVar
  loc_B04054: FLdPr Me
  loc_B04057: MemLdI2 global_92
  loc_B0405A: CI4UI1
  loc_B0405B: FLdPr Me
  loc_B0405E: MemLdStr global_80
  loc_B04061: AryLock
  loc_B04064: Ary1LdPr
  loc_B04065: MemLdRfVar from_stack_1.global_0
  loc_B04068: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0406D: AryUnlock
  loc_B04070: FFree1Str var_C8
  loc_B04073: FFreeAd var_B4 = ""
  loc_B0407A: FFreeVar var_C4 = "": var_D8 = "": var_E8 = ""
  loc_B04085: FLdPr var_EC
  loc_B04088: Call clsbase.MoveSiguiente()
  loc_B0408D: FLdPr Me
  loc_B04090: MemLdRfVar from_stack_1.global_92
  loc_B04093: NextI2 var_104, loc_B03FFB
  loc_B04098: LitI2_Byte 1
  loc_B0409A: FLdPr Me
  loc_B0409D: MemLdRfVar from_stack_1.global_92
  loc_B040A0: FLdPr Me
  loc_B040A3: MemLdStr global_80
  loc_B040A6: LitI2_Byte 1
  loc_B040A8: FnUBound
  loc_B040AA: CI2I4
  loc_B040AB: ForI2 var_134
  loc_B040B1: LitStr "SELECT ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba, DebeCarc, HabeCarc"
  loc_B040B4: LitStr " FROM cajaremicheq"
  loc_B040B7: ConcatStr
  loc_B040B8: FStStrNoPop var_C8
  loc_B040BB: LitStr " WHERE FechCaja = '"
  loc_B040BE: ConcatStr
  loc_B040BF: FStStrNoPop var_F0
  loc_B040C2: FLdPr Me
  loc_B040C5: MemLdI2 global_92
  loc_B040C8: CI4UI1
  loc_B040C9: FLdPr Me
  loc_B040CC: MemLdStr global_80
  loc_B040CF: Ary1LdPr
  loc_B040D0: MemLdStr global_0
  loc_B040D3: ConcatStr
  loc_B040D4: FStStrNoPop var_F4
  loc_B040D7: LitStr "'"
  loc_B040DA: ConcatStr
  loc_B040DB: FStStrNoPop var_F8
  loc_B040DE: LitStr " ORDER BY ExpeImpu, NumeLiqu, CucuPers, NumeMoba;"
  loc_B040E1: ConcatStr
  loc_B040E2: FStStrNoPop var_FC
  loc_B040E5: FLdPr var_EC
  loc_B040E8: Call clsbase.RedefineRS(from_stack_1v)
  loc_B040ED: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B040FA: FLdRfVar var_100
  loc_B040FD: FLdPr var_EC
  loc_B04100: from_stack_1 = clsbase.RecordCount
  loc_B04105: ILdRf var_100
  loc_B04108: LitI4 0
  loc_B0410D: GtI4
  loc_B0410E: BranchF loc_B044BF
  loc_B04111: FLdRfVar var_100
  loc_B04114: FLdPr var_EC
  loc_B04117: from_stack_1 = clsbase.RecordCount
  loc_B0411C: LitI4 1
  loc_B04121: ILdRf var_100
  loc_B04124: FLdPr Me
  loc_B04127: MemLdI2 global_92
  loc_B0412A: CI4UI1
  loc_B0412B: FLdPr Me
  loc_B0412E: MemLdStr global_80
  loc_B04131: Ary1LdPr
  loc_B04132: MemLdRfVar from_stack_1.global_4
  loc_B04135: Redim
  loc_B0413F: FLdPr var_EC
  loc_B04142: Call clsbase.MoveFirst()
  loc_B04147: LitI2_Byte 1
  loc_B04149: FLdPr Me
  loc_B0414C: MemLdRfVar from_stack_1.global_94
  loc_B0414F: FLdPr Me
  loc_B04152: MemLdI2 global_92
  loc_B04155: CI4UI1
  loc_B04156: FLdPr Me
  loc_B04159: MemLdStr global_80
  loc_B0415C: Ary1LdPr
  loc_B0415D: MemLdStr global_4
  loc_B04160: LitI2_Byte 1
  loc_B04162: FnUBound
  loc_B04164: CI2I4
  loc_B04165: ForI2 var_138
  loc_B0416B: FLdRfVar var_10C
  loc_B0416E: LitVarStr var_A0, "ExpeImpu"
  loc_B04173: PopAdLdVar
  loc_B04174: FLdRfVar var_108
  loc_B04177: FLdRfVar var_B4
  loc_B0417A: FLdPr var_EC
  loc_B0417D: from_stack_1v = clsbase.RsFrmGet()
  loc_B04182: FLdPr var_B4
  loc_B04185:  = Me.Fields
  loc_B0418A: FLdPr var_108
  loc_B0418D: from_stack_2 = Me.Item(from_stack_1)
  loc_B04192: LitI2_Byte 0
  loc_B04194: LitVar_Missing var_D8
  loc_B04197: LitI2_Byte 0
  loc_B04199: FLdZeroAd var_10C
  loc_B0419C: CVarAd
  loc_B041A0: PopAdLdVar
  loc_B041A1: FLdPr Me
  loc_B041A4: MemLdI2 global_94
  loc_B041A7: CI4UI1
  loc_B041A8: FLdPr Me
  loc_B041AB: MemLdI2 global_92
  loc_B041AE: CI4UI1
  loc_B041AF: FLdPr Me
  loc_B041B2: MemLdStr global_80
  loc_B041B5: AryLock
  loc_B041B8: Ary1LdPr
  loc_B041B9: MemLdStr global_4
  loc_B041BC: AryLock
  loc_B041BF: Ary1LdPr
  loc_B041C0: MemLdRfVar from_stack_1.global_0
  loc_B041C3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B041C8: AryUnlock
  loc_B041CB: AryUnlock
  loc_B041CE: FFreeAd var_B4 = ""
  loc_B041D5: FFreeVar var_C4 = ""
  loc_B041DC: FLdRfVar var_10C
  loc_B041DF: LitVarStr var_A0, "NumeLiqu"
  loc_B041E4: PopAdLdVar
  loc_B041E5: FLdRfVar var_108
  loc_B041E8: FLdRfVar var_B4
  loc_B041EB: FLdPr var_EC
  loc_B041EE: from_stack_1v = clsbase.RsFrmGet()
  loc_B041F3: FLdPr var_B4
  loc_B041F6:  = Me.Fields
  loc_B041FB: FLdPr var_108
  loc_B041FE: from_stack_2 = Me.Item(from_stack_1)
  loc_B04203: LitI2_Byte 0
  loc_B04205: LitVar_Missing var_D8
  loc_B04208: LitI2_Byte 0
  loc_B0420A: FLdZeroAd var_10C
  loc_B0420D: CVarAd
  loc_B04211: PopAdLdVar
  loc_B04212: FLdPr Me
  loc_B04215: MemLdI2 global_94
  loc_B04218: CI4UI1
  loc_B04219: FLdPr Me
  loc_B0421C: MemLdI2 global_92
  loc_B0421F: CI4UI1
  loc_B04220: FLdPr Me
  loc_B04223: MemLdStr global_80
  loc_B04226: AryLock
  loc_B04229: Ary1LdPr
  loc_B0422A: MemLdStr global_4
  loc_B0422D: AryLock
  loc_B04230: Ary1LdPr
  loc_B04231: MemLdRfVar from_stack_1.global_4
  loc_B04234: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B04239: AryUnlock
  loc_B0423C: AryUnlock
  loc_B0423F: FFreeAd var_B4 = ""
  loc_B04246: FFreeVar var_C4 = ""
  loc_B0424D: FLdRfVar var_10C
  loc_B04250: LitVarStr var_A0, "CucuPers"
  loc_B04255: PopAdLdVar
  loc_B04256: FLdRfVar var_108
  loc_B04259: FLdRfVar var_B4
  loc_B0425C: FLdPr var_EC
  loc_B0425F: from_stack_1v = clsbase.RsFrmGet()
  loc_B04264: FLdPr var_B4
  loc_B04267:  = Me.Fields
  loc_B0426C: FLdPr var_108
  loc_B0426F: from_stack_2 = Me.Item(from_stack_1)
  loc_B04274: LitI2_Byte 0
  loc_B04276: LitVar_Missing var_D8
  loc_B04279: LitI2_Byte 0
  loc_B0427B: FLdZeroAd var_10C
  loc_B0427E: CVarAd
  loc_B04282: PopAdLdVar
  loc_B04283: FLdPr Me
  loc_B04286: MemLdI2 global_94
  loc_B04289: CI4UI1
  loc_B0428A: FLdPr Me
  loc_B0428D: MemLdI2 global_92
  loc_B04290: CI4UI1
  loc_B04291: FLdPr Me
  loc_B04294: MemLdStr global_80
  loc_B04297: AryLock
  loc_B0429A: Ary1LdPr
  loc_B0429B: MemLdStr global_4
  loc_B0429E: AryLock
  loc_B042A1: Ary1LdPr
  loc_B042A2: MemLdRfVar from_stack_1.global_8
  loc_B042A5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B042AA: AryUnlock
  loc_B042AD: AryUnlock
  loc_B042B0: FFreeAd var_B4 = ""
  loc_B042B7: FFreeVar var_C4 = ""
  loc_B042BE: FLdRfVar var_10C
  loc_B042C1: LitVarStr var_A0, "CodiBanc"
  loc_B042C6: PopAdLdVar
  loc_B042C7: FLdRfVar var_108
  loc_B042CA: FLdRfVar var_B4
  loc_B042CD: FLdPr var_EC
  loc_B042D0: from_stack_1v = clsbase.RsFrmGet()
  loc_B042D5: FLdPr var_B4
  loc_B042D8:  = Me.Fields
  loc_B042DD: FLdPr var_108
  loc_B042E0: from_stack_2 = Me.Item(from_stack_1)
  loc_B042E5: LitI2_Byte 0
  loc_B042E7: LitVar_Missing var_D8
  loc_B042EA: LitI2_Byte 0
  loc_B042EC: FLdZeroAd var_10C
  loc_B042EF: CVarAd
  loc_B042F3: PopAdLdVar
  loc_B042F4: FLdPr Me
  loc_B042F7: MemLdI2 global_94
  loc_B042FA: CI4UI1
  loc_B042FB: FLdPr Me
  loc_B042FE: MemLdI2 global_92
  loc_B04301: CI4UI1
  loc_B04302: FLdPr Me
  loc_B04305: MemLdStr global_80
  loc_B04308: AryLock
  loc_B0430B: Ary1LdPr
  loc_B0430C: MemLdStr global_4
  loc_B0430F: AryLock
  loc_B04312: Ary1LdPr
  loc_B04313: MemLdRfVar from_stack_1.global_12
  loc_B04316: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0431B: AryUnlock
  loc_B0431E: AryUnlock
  loc_B04321: FFreeAd var_B4 = ""
  loc_B04328: FFreeVar var_C4 = ""
  loc_B0432F: FLdRfVar var_10C
  loc_B04332: LitVarStr var_A0, "NumeMoba"
  loc_B04337: PopAdLdVar
  loc_B04338: FLdRfVar var_108
  loc_B0433B: FLdRfVar var_B4
  loc_B0433E: FLdPr var_EC
  loc_B04341: from_stack_1v = clsbase.RsFrmGet()
  loc_B04346: FLdPr var_B4
  loc_B04349:  = Me.Fields
  loc_B0434E: FLdPr var_108
  loc_B04351: from_stack_2 = Me.Item(from_stack_1)
  loc_B04356: LitI2_Byte 0
  loc_B04358: LitVar_Missing var_D8
  loc_B0435B: LitI2_Byte 0
  loc_B0435D: FLdZeroAd var_10C
  loc_B04360: CVarAd
  loc_B04364: PopAdLdVar
  loc_B04365: FLdPr Me
  loc_B04368: MemLdI2 global_94
  loc_B0436B: CI4UI1
  loc_B0436C: FLdPr Me
  loc_B0436F: MemLdI2 global_92
  loc_B04372: CI4UI1
  loc_B04373: FLdPr Me
  loc_B04376: MemLdStr global_80
  loc_B04379: AryLock
  loc_B0437C: Ary1LdPr
  loc_B0437D: MemLdStr global_4
  loc_B04380: AryLock
  loc_B04383: Ary1LdPr
  loc_B04384: MemLdRfVar from_stack_1.global_16
  loc_B04387: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0438C: AryUnlock
  loc_B0438F: AryUnlock
  loc_B04392: FFreeAd var_B4 = ""
  loc_B04399: FFreeVar var_C4 = ""
  loc_B043A0: FLdRfVar var_10C
  loc_B043A3: LitVarStr var_A0, "DebeCarc"
  loc_B043A8: PopAdLdVar
  loc_B043A9: FLdRfVar var_108
  loc_B043AC: FLdRfVar var_B4
  loc_B043AF: FLdPr var_EC
  loc_B043B2: from_stack_1v = clsbase.RsFrmGet()
  loc_B043B7: FLdPr var_B4
  loc_B043BA:  = Me.Fields
  loc_B043BF: FLdPr var_108
  loc_B043C2: from_stack_2 = Me.Item(from_stack_1)
  loc_B043C7: LitI2_Byte 0
  loc_B043C9: FLdPr Me
  loc_B043CC: MemLdI2 global_92
  loc_B043CF: CI4UI1
  loc_B043D0: FLdPr Me
  loc_B043D3: MemLdStr global_80
  loc_B043D6: AryLock
  loc_B043D9: Ary1LdPr
  loc_B043DA: MemLdRfVar from_stack_1.global_8
  loc_B043DD: CVarRef
  loc_B043E2: LitI2_Byte &HFF
  loc_B043E4: FLdZeroAd var_10C
  loc_B043E7: CVarAd
  loc_B043EB: PopAdLdVar
  loc_B043EC: FLdPr Me
  loc_B043EF: MemLdI2 global_94
  loc_B043F2: CI4UI1
  loc_B043F3: FLdPr Me
  loc_B043F6: MemLdI2 global_92
  loc_B043F9: CI4UI1
  loc_B043FA: FLdPr Me
  loc_B043FD: MemLdStr global_80
  loc_B04400: AryLock
  loc_B04403: Ary1LdPr
  loc_B04404: MemLdStr global_4
  loc_B04407: AryLock
  loc_B0440A: Ary1LdPr
  loc_B0440B: MemLdRfVar from_stack_1.global_20
  loc_B0440E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B04413: AryUnlock
  loc_B04416: AryUnlock
  loc_B04419: AryUnlock
  loc_B0441C: FFreeAd var_B4 = ""
  loc_B04423: FFree1Var var_C4 = ""
  loc_B04426: FLdRfVar var_10C
  loc_B04429: LitVarStr var_A0, "HabeCarc"
  loc_B0442E: PopAdLdVar
  loc_B0442F: FLdRfVar var_108
  loc_B04432: FLdRfVar var_B4
  loc_B04435: FLdPr var_EC
  loc_B04438: from_stack_1v = clsbase.RsFrmGet()
  loc_B0443D: FLdPr var_B4
  loc_B04440:  = Me.Fields
  loc_B04445: FLdPr var_108
  loc_B04448: from_stack_2 = Me.Item(from_stack_1)
  loc_B0444D: LitI2_Byte 0
  loc_B0444F: FLdPr Me
  loc_B04452: MemLdI2 global_92
  loc_B04455: CI4UI1
  loc_B04456: FLdPr Me
  loc_B04459: MemLdStr global_80
  loc_B0445C: AryLock
  loc_B0445F: Ary1LdPr
  loc_B04460: MemLdRfVar from_stack_1.global_12
  loc_B04463: CVarRef
  loc_B04468: LitI2_Byte &HFF
  loc_B0446A: FLdZeroAd var_10C
  loc_B0446D: CVarAd
  loc_B04471: PopAdLdVar
  loc_B04472: FLdPr Me
  loc_B04475: MemLdI2 global_94
  loc_B04478: CI4UI1
  loc_B04479: FLdPr Me
  loc_B0447C: MemLdI2 global_92
  loc_B0447F: CI4UI1
  loc_B04480: FLdPr Me
  loc_B04483: MemLdStr global_80
  loc_B04486: AryLock
  loc_B04489: Ary1LdPr
  loc_B0448A: MemLdStr global_4
  loc_B0448D: AryLock
  loc_B04490: Ary1LdPr
  loc_B04491: MemLdRfVar from_stack_1.global_24
  loc_B04494: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B04499: AryUnlock
  loc_B0449C: AryUnlock
  loc_B0449F: AryUnlock
  loc_B044A2: FFreeAd var_B4 = ""
  loc_B044A9: FFree1Var var_C4 = ""
  loc_B044AC: FLdPr var_EC
  loc_B044AF: Call clsbase.MoveSiguiente()
  loc_B044B4: FLdPr Me
  loc_B044B7: MemLdRfVar from_stack_1.global_94
  loc_B044BA: NextI2 var_138, loc_B0416B
  loc_B044BF: LitI2_Byte 0
  loc_B044C1: FLdPr Me
  loc_B044C4: MemLdRfVar from_stack_1.global_84
  loc_B044C7: CVarRef
  loc_B044CC: LitI2_Byte &HFF
  loc_B044CE: FLdPr Me
  loc_B044D1: MemLdI2 global_92
  loc_B044D4: CI4UI1
  loc_B044D5: FLdPr Me
  loc_B044D8: MemLdStr global_80
  loc_B044DB: Ary1LdPr
  loc_B044DC: MemLdStr global_8
  loc_B044DF: CVarStr var_A0
  loc_B044E2: PopAdLdVar
  loc_B044E3: FLdPr Me
  loc_B044E6: MemLdRfVar from_stack_1.global_96
  loc_B044E9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B044EE: LitI2_Byte 0
  loc_B044F0: FLdPr Me
  loc_B044F3: MemLdRfVar from_stack_1.global_88
  loc_B044F6: CVarRef
  loc_B044FB: LitI2_Byte &HFF
  loc_B044FD: FLdPr Me
  loc_B04500: MemLdI2 global_92
  loc_B04503: CI4UI1
  loc_B04504: FLdPr Me
  loc_B04507: MemLdStr global_80
  loc_B0450A: Ary1LdPr
  loc_B0450B: MemLdStr global_12
  loc_B0450E: CVarStr var_A0
  loc_B04511: PopAdLdVar
  loc_B04512: FLdPr Me
  loc_B04515: MemLdRfVar from_stack_1.global_96
  loc_B04518: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0451D: FLdPr Me
  loc_B04520: MemLdRfVar from_stack_1.global_92
  loc_B04523: NextI2 var_134, loc_B040B1
  loc_B04528: LitNothing
  loc_B0452A: FStAd var_EC 
  loc_B0452E: LitI2_Byte &HFF
  loc_B04530: FLdPr Me
  loc_B04533: MemStI2 bGenerado
  loc_B04536: LitI4 0
  loc_B0453B: CI2I4
  loc_B0453C: FLdPr Me
  loc_B0453F: Me.MousePointer = from_stack_1
  loc_B04544: LitVarStr var_A0, vbNullString
  loc_B04549: PopAdLdVar
  loc_B0454A: FLdPr Me
  loc_B0454D: VCallAd Control_ID_statusBar
  loc_B04550: FStAdFunc var_B4
  loc_B04553: FLdPr var_B4
  loc_B04556: LateIdSt
  loc_B0455B: FFree1Ad var_B4
  loc_B0455E: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AE03EC
  'Data Table: 44D6A4
  loc_ADFD58: FLdRfVar var_88
  loc_ADFD5B: LitI2_Byte 0
  loc_ADFD5D: LitI2_Byte &HFF
  loc_ADFD5F: ImpAdLdI4 MemVar_C3D83C
  loc_ADFD62: FLdPr Me
  loc_ADFD65: MemLdRfVar from_stack_1.global_60
  loc_ADFD68: NewIfNullPr IFileSystem3
  loc_ADFD6B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ADFD70: ILdRf var_88
  loc_ADFD73: FLdPr Me
  loc_ADFD76: MemStVarAd
  loc_ADFD7A: FFree1Ad var_88
  loc_ADFD7D: Call Proc_249_19_AD2108()
  loc_ADFD82: LitI2_Byte 1
  loc_ADFD84: FLdPr Me
  loc_ADFD87: MemLdRfVar from_stack_1.global_92
  loc_ADFD8A: FLdPr Me
  loc_ADFD8D: MemLdStr global_80
  loc_ADFD90: LitI2_Byte 1
  loc_ADFD92: FnUBound
  loc_ADFD94: CI2I4
  loc_ADFD95: ForI2 var_8C
  loc_ADFD9B: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADFDA0: PopAdLdVar
  loc_ADFDA1: FLdPr Me
  loc_ADFDA4: MemLdRfVar from_stack_1.global_64
  loc_ADFDA7: LdPrVar
  loc_ADFDA9: LateMemCall
  loc_ADFDAF: LitStr "    <td rowspan="""
  loc_ADFDB2: FLdPr Me
  loc_ADFDB5: MemLdI2 global_92
  loc_ADFDB8: CI4UI1
  loc_ADFDB9: FLdPr Me
  loc_ADFDBC: MemLdStr global_80
  loc_ADFDBF: Ary1LdPr
  loc_ADFDC0: MemLdStr global_4
  loc_ADFDC3: LitI2_Byte 1
  loc_ADFDC5: FnUBound
  loc_ADFDC7: LitI4 1
  loc_ADFDCC: AddI4
  loc_ADFDCD: CStrI4
  loc_ADFDCF: FStStrNoPop var_B0
  loc_ADFDD2: ConcatStr
  loc_ADFDD3: FStStrNoPop var_B4
  loc_ADFDD6: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_ADFDD9: ConcatStr
  loc_ADFDDA: CVarStr var_C4
  loc_ADFDDD: FLdPr Me
  loc_ADFDE0: MemLdI2 global_92
  loc_ADFDE3: CI4UI1
  loc_ADFDE4: FLdPr Me
  loc_ADFDE7: MemLdStr global_80
  loc_ADFDEA: Ary1LdPr
  loc_ADFDEB: MemLdStr global_0
  loc_ADFDEE: CDateStr
  loc_ADFDF0: CVarDate var_9C
  loc_ADFDF4: ConcatVar var_D4
  loc_ADFDF8: LitVarStr var_AC, "</td>"
  loc_ADFDFD: ConcatVar var_E4
  loc_ADFE01: PopAdLdVar
  loc_ADFE02: FLdPr Me
  loc_ADFE05: MemLdRfVar from_stack_1.global_64
  loc_ADFE08: LdPrVar
  loc_ADFE0A: LateMemCall
  loc_ADFE10: FFreeStr var_B0 = ""
  loc_ADFE17: FFreeVar var_C4 = "": var_D4 = ""
  loc_ADFE20: LitI2_Byte 1
  loc_ADFE22: FLdPr Me
  loc_ADFE25: MemLdRfVar from_stack_1.global_94
  loc_ADFE28: FLdPr Me
  loc_ADFE2B: MemLdI2 global_92
  loc_ADFE2E: CI4UI1
  loc_ADFE2F: FLdPr Me
  loc_ADFE32: MemLdStr global_80
  loc_ADFE35: Ary1LdPr
  loc_ADFE36: MemLdStr global_4
  loc_ADFE39: LitI2_Byte 1
  loc_ADFE3B: FnUBound
  loc_ADFE3D: CI2I4
  loc_ADFE3E: ForI2 var_F8
  loc_ADFE44: FLdPr Me
  loc_ADFE47: MemLdI2 global_94
  loc_ADFE4A: CI4UI1
  loc_ADFE4B: FLdPr Me
  loc_ADFE4E: MemLdI2 global_92
  loc_ADFE51: CI4UI1
  loc_ADFE52: FLdPr Me
  loc_ADFE55: MemLdStr global_80
  loc_ADFE58: AryLock
  loc_ADFE5B: Ary1LdPr
  loc_ADFE5C: MemLdStr global_4
  loc_ADFE5F: AryLock
  loc_ADFE62: Ary1LdRf
  loc_ADFE63: FStR4 var_104
  loc_ADFE66: FLdPr Me
  loc_ADFE69: MemLdI2 global_94
  loc_ADFE6C: LitI2_Byte 1
  loc_ADFE6E: NeI2
  loc_ADFE6F: BranchF loc_ADFE86
  loc_ADFE72: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADFE77: PopAdLdVar
  loc_ADFE78: FLdPr Me
  loc_ADFE7B: MemLdRfVar from_stack_1.global_64
  loc_ADFE7E: LdPrVar
  loc_ADFE80: LateMemCall
  loc_ADFE86: LitI4 0
  loc_ADFE8B: LitI4 0
  loc_ADFE90: LitI2_Byte 0
  loc_ADFE92: LitStr "left"
  loc_ADFE95: FMemLdR4 var_104(0)
  loc_ADFE9A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADFE9F: CVarStr var_C4
  loc_ADFEA2: PopAdLdVar
  loc_ADFEA3: FLdPr Me
  loc_ADFEA6: MemLdRfVar from_stack_1.global_64
  loc_ADFEA9: LdPrVar
  loc_ADFEAB: LateMemCall
  loc_ADFEB1: FFree1Var var_C4 = ""
  loc_ADFEB4: LitI4 0
  loc_ADFEB9: LitI4 0
  loc_ADFEBE: LitI2_Byte 0
  loc_ADFEC0: LitStr "right"
  loc_ADFEC3: FMemLdR4 var_104(4)
  loc_ADFEC8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADFECD: CVarStr var_C4
  loc_ADFED0: PopAdLdVar
  loc_ADFED1: FLdPr Me
  loc_ADFED4: MemLdRfVar from_stack_1.global_64
  loc_ADFED7: LdPrVar
  loc_ADFED9: LateMemCall
  loc_ADFEDF: FFree1Var var_C4 = ""
  loc_ADFEE2: LitI4 0
  loc_ADFEE7: LitI4 0
  loc_ADFEEC: LitI2_Byte 0
  loc_ADFEEE: LitStr "right"
  loc_ADFEF1: FMemLdR4 var_104(8)
  loc_ADFEF6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADFEFB: CVarStr var_C4
  loc_ADFEFE: PopAdLdVar
  loc_ADFEFF: FLdPr Me
  loc_ADFF02: MemLdRfVar from_stack_1.global_64
  loc_ADFF05: LdPrVar
  loc_ADFF07: LateMemCall
  loc_ADFF0D: FFree1Var var_C4 = ""
  loc_ADFF10: LitI4 0
  loc_ADFF15: LitI4 0
  loc_ADFF1A: LitI2_Byte 0
  loc_ADFF1C: LitStr "right"
  loc_ADFF1F: FMemLdR4 var_104(12)
  loc_ADFF24: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADFF29: CVarStr var_C4
  loc_ADFF2C: PopAdLdVar
  loc_ADFF2D: FLdPr Me
  loc_ADFF30: MemLdRfVar from_stack_1.global_64
  loc_ADFF33: LdPrVar
  loc_ADFF35: LateMemCall
  loc_ADFF3B: FFree1Var var_C4 = ""
  loc_ADFF3E: LitI4 0
  loc_ADFF43: LitI4 0
  loc_ADFF48: LitI2_Byte 0
  loc_ADFF4A: LitStr "right"
  loc_ADFF4D: FMemLdR4 var_104(16)
  loc_ADFF52: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADFF57: CVarStr var_C4
  loc_ADFF5A: PopAdLdVar
  loc_ADFF5B: FLdPr Me
  loc_ADFF5E: MemLdRfVar from_stack_1.global_64
  loc_ADFF61: LdPrVar
  loc_ADFF63: LateMemCall
  loc_ADFF69: FFree1Var var_C4 = ""
  loc_ADFF6C: LitI4 0
  loc_ADFF71: LitI4 0
  loc_ADFF76: LitI2_Byte 0
  loc_ADFF78: LitStr "right"
  loc_ADFF7B: FMemLdR4 var_104(20)
  loc_ADFF80: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADFF85: CVarStr var_C4
  loc_ADFF88: PopAdLdVar
  loc_ADFF89: FLdPr Me
  loc_ADFF8C: MemLdRfVar from_stack_1.global_64
  loc_ADFF8F: LdPrVar
  loc_ADFF91: LateMemCall
  loc_ADFF97: FFree1Var var_C4 = ""
  loc_ADFF9A: LitI4 0
  loc_ADFF9F: LitI4 0
  loc_ADFFA4: LitI2_Byte 0
  loc_ADFFA6: LitStr "right"
  loc_ADFFA9: FMemLdR4 var_104(24)
  loc_ADFFAE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADFFB3: CVarStr var_C4
  loc_ADFFB6: PopAdLdVar
  loc_ADFFB7: FLdPr Me
  loc_ADFFBA: MemLdRfVar from_stack_1.global_64
  loc_ADFFBD: LdPrVar
  loc_ADFFBF: LateMemCall
  loc_ADFFC5: FFree1Var var_C4 = ""
  loc_ADFFC8: LitVarStr var_9C, "  </tr>"
  loc_ADFFCD: PopAdLdVar
  loc_ADFFCE: FLdPr Me
  loc_ADFFD1: MemLdRfVar from_stack_1.global_64
  loc_ADFFD4: LdPrVar
  loc_ADFFD6: LateMemCall
  loc_ADFFDC: LitI4 0
  loc_ADFFE1: FStR4 var_104
  loc_ADFFE4: AryUnlock
  loc_ADFFE7: AryUnlock
  loc_ADFFEA: FLdPr Me
  loc_ADFFED: MemLdRfVar from_stack_1.global_94
  loc_ADFFF0: NextI2 var_F8, loc_ADFE44
  loc_ADFFF5: LitVarStr var_9C, "  <tr>"
  loc_ADFFFA: PopAdLdVar
  loc_ADFFFB: FLdPr Me
  loc_ADFFFE: MemLdRfVar from_stack_1.global_64
  loc_AE0001: LdPrVar
  loc_AE0003: LateMemCall
  loc_AE0009: LitVarStr var_9C, "    <th colspan=""4"" align=""left"">&nbsp;</th>"
  loc_AE000E: PopAdLdVar
  loc_AE000F: FLdPr Me
  loc_AE0012: MemLdRfVar from_stack_1.global_64
  loc_AE0015: LdPrVar
  loc_AE0017: LateMemCall
  loc_AE001D: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_AE0022: PopAdLdVar
  loc_AE0023: FLdPr Me
  loc_AE0026: MemLdRfVar from_stack_1.global_64
  loc_AE0029: LdPrVar
  loc_AE002B: LateMemCall
  loc_AE0031: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE0034: FLdPr Me
  loc_AE0037: MemLdI2 global_92
  loc_AE003A: CI4UI1
  loc_AE003B: FLdPr Me
  loc_AE003E: MemLdStr global_80
  loc_AE0041: Ary1LdPr
  loc_AE0042: MemLdStr global_8
  loc_AE0045: ConcatStr
  loc_AE0046: FStStrNoPop var_B0
  loc_AE0049: LitStr "</td>"
  loc_AE004C: ConcatStr
  loc_AE004D: CVarStr var_C4
  loc_AE0050: PopAdLdVar
  loc_AE0051: FLdPr Me
  loc_AE0054: MemLdRfVar from_stack_1.global_64
  loc_AE0057: LdPrVar
  loc_AE0059: LateMemCall
  loc_AE005F: FFree1Str var_B0
  loc_AE0062: FFree1Var var_C4 = ""
  loc_AE0065: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE0068: FLdPr Me
  loc_AE006B: MemLdI2 global_92
  loc_AE006E: CI4UI1
  loc_AE006F: FLdPr Me
  loc_AE0072: MemLdStr global_80
  loc_AE0075: Ary1LdPr
  loc_AE0076: MemLdStr global_12
  loc_AE0079: ConcatStr
  loc_AE007A: FStStrNoPop var_B0
  loc_AE007D: LitStr "</td>"
  loc_AE0080: ConcatStr
  loc_AE0081: CVarStr var_C4
  loc_AE0084: PopAdLdVar
  loc_AE0085: FLdPr Me
  loc_AE0088: MemLdRfVar from_stack_1.global_64
  loc_AE008B: LdPrVar
  loc_AE008D: LateMemCall
  loc_AE0093: FFree1Str var_B0
  loc_AE0096: FFree1Var var_C4 = ""
  loc_AE0099: LitVarStr var_9C, "  </tr>"
  loc_AE009E: PopAdLdVar
  loc_AE009F: FLdPr Me
  loc_AE00A2: MemLdRfVar from_stack_1.global_64
  loc_AE00A5: LdPrVar
  loc_AE00A7: LateMemCall
  loc_AE00AD: FLdPr Me
  loc_AE00B0: MemLdRfVar from_stack_1.global_92
  loc_AE00B3: NextI2 var_8C, loc_ADFD9B
  loc_AE00B8: LitVarStr var_9C, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AE00BD: PopAdLdVar
  loc_AE00BE: FLdPr Me
  loc_AE00C1: MemLdRfVar from_stack_1.global_64
  loc_AE00C4: LdPrVar
  loc_AE00C6: LateMemCall
  loc_AE00CC: LitVarStr var_9C, "  <tr>"
  loc_AE00D1: PopAdLdVar
  loc_AE00D2: FLdPr Me
  loc_AE00D5: MemLdRfVar from_stack_1.global_64
  loc_AE00D8: LdPrVar
  loc_AE00DA: LateMemCall
  loc_AE00E0: LitVarStr var_9C, "    <td colspan=""5"" align=""left"">&nbsp;</th>"
  loc_AE00E5: PopAdLdVar
  loc_AE00E6: FLdPr Me
  loc_AE00E9: MemLdRfVar from_stack_1.global_64
  loc_AE00EC: LdPrVar
  loc_AE00EE: LateMemCall
  loc_AE00F4: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AE00F9: PopAdLdVar
  loc_AE00FA: FLdPr Me
  loc_AE00FD: MemLdRfVar from_stack_1.global_64
  loc_AE0100: LdPrVar
  loc_AE0102: LateMemCall
  loc_AE0108: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE010B: FLdPr Me
  loc_AE010E: MemLdStr global_84
  loc_AE0111: ConcatStr
  loc_AE0112: FStStrNoPop var_B0
  loc_AE0115: LitStr "</td>"
  loc_AE0118: ConcatStr
  loc_AE0119: CVarStr var_C4
  loc_AE011C: PopAdLdVar
  loc_AE011D: FLdPr Me
  loc_AE0120: MemLdRfVar from_stack_1.global_64
  loc_AE0123: LdPrVar
  loc_AE0125: LateMemCall
  loc_AE012B: FFree1Str var_B0
  loc_AE012E: FFree1Var var_C4 = ""
  loc_AE0131: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE0134: FLdPr Me
  loc_AE0137: MemLdStr global_88
  loc_AE013A: ConcatStr
  loc_AE013B: FStStrNoPop var_B0
  loc_AE013E: LitStr "</td>"
  loc_AE0141: ConcatStr
  loc_AE0142: CVarStr var_C4
  loc_AE0145: PopAdLdVar
  loc_AE0146: FLdPr Me
  loc_AE0149: MemLdRfVar from_stack_1.global_64
  loc_AE014C: LdPrVar
  loc_AE014E: LateMemCall
  loc_AE0154: FFree1Str var_B0
  loc_AE0157: FFree1Var var_C4 = ""
  loc_AE015A: LitVarStr var_9C, "  </tr>"
  loc_AE015F: PopAdLdVar
  loc_AE0160: FLdPr Me
  loc_AE0163: MemLdRfVar from_stack_1.global_64
  loc_AE0166: LdPrVar
  loc_AE0168: LateMemCall
  loc_AE016E: LitVarStr var_9C, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AE0173: PopAdLdVar
  loc_AE0174: FLdPr Me
  loc_AE0177: MemLdRfVar from_stack_1.global_64
  loc_AE017A: LdPrVar
  loc_AE017C: LateMemCall
  loc_AE0182: FLdPr Me
  loc_AE0185: MemLdStr global_88
  loc_AE0188: CR8Str
  loc_AE018A: FLdPr Me
  loc_AE018D: MemLdStr global_84
  loc_AE0190: CR8Str
  loc_AE0192: SubR4
  loc_AE0193: CR8R8
  loc_AE0194: LitI2_Byte 0
  loc_AE0196: CR8I2
  loc_AE0197: GtR4
  loc_AE0198: BranchF loc_AE01DE
  loc_AE019B: LitI2_Byte 0
  loc_AE019D: LitVar_Missing var_C4
  loc_AE01A0: LitI2_Byte &HFF
  loc_AE01A2: FLdPr Me
  loc_AE01A5: MemLdStr global_88
  loc_AE01A8: CR8Str
  loc_AE01AA: FLdPr Me
  loc_AE01AD: MemLdStr global_84
  loc_AE01B0: CR8Str
  loc_AE01B2: SubR4
  loc_AE01B3: CVarR8
  loc_AE01B7: PopAdLdVar
  loc_AE01B8: FLdRfVar var_10C
  loc_AE01BB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE01C0: FFree1Var var_C4 = ""
  loc_AE01C3: LitI2_Byte 0
  loc_AE01C5: LitVar_Missing var_C4
  loc_AE01C8: LitI2_Byte &HFF
  loc_AE01CA: LitVarStr var_9C, "0"
  loc_AE01CF: PopAdLdVar
  loc_AE01D0: FLdRfVar var_110
  loc_AE01D3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE01D8: FFree1Var var_C4 = ""
  loc_AE01DB: Branch loc_AE021E
  loc_AE01DE: LitI2_Byte 0
  loc_AE01E0: LitVar_Missing var_C4
  loc_AE01E3: LitI2_Byte &HFF
  loc_AE01E5: FLdPr Me
  loc_AE01E8: MemLdStr global_84
  loc_AE01EB: CR8Str
  loc_AE01ED: FLdPr Me
  loc_AE01F0: MemLdStr global_88
  loc_AE01F3: CR8Str
  loc_AE01F5: SubR4
  loc_AE01F6: CVarR8
  loc_AE01FA: PopAdLdVar
  loc_AE01FB: FLdRfVar var_110
  loc_AE01FE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE0203: FFree1Var var_C4 = ""
  loc_AE0206: LitI2_Byte 0
  loc_AE0208: LitVar_Missing var_C4
  loc_AE020B: LitI2_Byte &HFF
  loc_AE020D: LitVarStr var_9C, "0"
  loc_AE0212: PopAdLdVar
  loc_AE0213: FLdRfVar var_10C
  loc_AE0216: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE021B: FFree1Var var_C4 = ""
  loc_AE021E: LitStr "SELECT CatePaco, DetaCuco"
  loc_AE0221: LitStr " FROM paraconta"
  loc_AE0224: ConcatStr
  loc_AE0225: FStStrNoPop var_B0
  loc_AE0228: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = CatePaco"
  loc_AE022B: ConcatStr
  loc_AE022C: FStStrNoPop var_B4
  loc_AE022F: LitStr " WHERE paraconta.PeriInfo = "
  loc_AE0232: ConcatStr
  loc_AE0233: CVarStr var_120
  loc_AE0236: FLdPr Me
  loc_AE0239: VCallAd Control_ID_mskDesde
  loc_AE023C: FStAdFunc var_88
  loc_AE023F: FLdPr var_88
  loc_AE0242: LateIdLdVar var_C4 DispID_15 0
  loc_AE0249: CStrVarTmp
  loc_AE024A: CVarStr var_D4
  loc_AE024D: FLdRfVar var_E4
  loc_AE0250: ImpAdCallFPR4  = Year()
  loc_AE0255: FLdRfVar var_E4
  loc_AE0258: ConcatVar var_130
  loc_AE025C: CStrVarVal var_134
  loc_AE0260: FLdRfVar var_108
  loc_AE0263: NewIfNullPr clsparaconta
  loc_AE0266: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_AE026B: FFreeStr var_B0 = "": var_B4 = ""
  loc_AE0274: FFree1Ad var_88
  loc_AE0277: FFreeVar var_C4 = "": var_D4 = "": var_120 = "": var_E4 = ""
  loc_AE0284: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_AE0289: PopAdLdVar
  loc_AE028A: FLdPr Me
  loc_AE028D: MemLdRfVar from_stack_1.global_64
  loc_AE0290: LdPrVar
  loc_AE0292: LateMemCall
  loc_AE0298: LitVarStr var_AC, "    <td class=""Titulo2"" colspan=""5"" align=""left"">"
  loc_AE029D: FLdRfVar var_C4
  loc_AE02A0: FLdRfVar var_13C
  loc_AE02A3: LitVarStr var_9C, "CatePaco"
  loc_AE02A8: PopAdLdVar
  loc_AE02A9: FLdRfVar var_138
  loc_AE02AC: FLdRfVar var_88
  loc_AE02AF: FLdRfVar var_108
  loc_AE02B2: NewIfNullPr clsparaconta
  loc_AE02B5: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AE02BA: FLdPr var_88
  loc_AE02BD:  = Me.Fields
  loc_AE02C2: FLdPr var_138
  loc_AE02C5: from_stack_2 = Me.Item(from_stack_1)
  loc_AE02CA: FLdPr var_13C
  loc_AE02CD:  = Me.Value
  loc_AE02D2: FLdRfVar var_C4
  loc_AE02D5: ConcatVar var_D4
  loc_AE02D9: LitVarStr var_F4, " - "
  loc_AE02DE: ConcatVar var_E4
  loc_AE02E2: FLdRfVar var_120
  loc_AE02E5: FLdRfVar var_158
  loc_AE02E8: LitVarStr var_154, "DetaCuco"
  loc_AE02ED: PopAdLdVar
  loc_AE02EE: FLdRfVar var_144
  loc_AE02F1: FLdRfVar var_140
  loc_AE02F4: FLdRfVar var_108
  loc_AE02F7: NewIfNullPr clsparaconta
  loc_AE02FA: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AE02FF: FLdPr var_140
  loc_AE0302:  = Me.Fields
  loc_AE0307: FLdPr var_144
  loc_AE030A: from_stack_2 = Me.Item(from_stack_1)
  loc_AE030F: FLdPr var_158
  loc_AE0312:  = Me.Value
  loc_AE0317: FLdRfVar var_120
  loc_AE031A: ConcatVar var_130
  loc_AE031E: LitVarStr var_168, "</th>"
  loc_AE0323: ConcatVar var_178
  loc_AE0327: PopAdLdVar
  loc_AE0328: FLdPr Me
  loc_AE032B: MemLdRfVar from_stack_1.global_64
  loc_AE032E: LdPrVar
  loc_AE0330: LateMemCall
  loc_AE0336: FFreeAd var_88 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_AE0345: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_120 = "": var_130 = ""
  loc_AE0354: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AE0359: PopAdLdVar
  loc_AE035A: FLdPr Me
  loc_AE035D: MemLdRfVar from_stack_1.global_64
  loc_AE0360: LdPrVar
  loc_AE0362: LateMemCall
  loc_AE0368: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE036B: ILdRf var_10C
  loc_AE036E: ConcatStr
  loc_AE036F: FStStrNoPop var_B0
  loc_AE0372: LitStr "</td>"
  loc_AE0375: ConcatStr
  loc_AE0376: CVarStr var_C4
  loc_AE0379: PopAdLdVar
  loc_AE037A: FLdPr Me
  loc_AE037D: MemLdRfVar from_stack_1.global_64
  loc_AE0380: LdPrVar
  loc_AE0382: LateMemCall
  loc_AE0388: FFree1Str var_B0
  loc_AE038B: FFree1Var var_C4 = ""
  loc_AE038E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE0391: ILdRf var_110
  loc_AE0394: ConcatStr
  loc_AE0395: FStStrNoPop var_B0
  loc_AE0398: LitStr "</td>"
  loc_AE039B: ConcatStr
  loc_AE039C: CVarStr var_C4
  loc_AE039F: PopAdLdVar
  loc_AE03A0: FLdPr Me
  loc_AE03A3: MemLdRfVar from_stack_1.global_64
  loc_AE03A6: LdPrVar
  loc_AE03A8: LateMemCall
  loc_AE03AE: FFree1Str var_B0
  loc_AE03B1: FFree1Var var_C4 = ""
  loc_AE03B4: LitVarStr var_9C, "  </tr>"
  loc_AE03B9: PopAdLdVar
  loc_AE03BA: FLdPr Me
  loc_AE03BD: MemLdRfVar from_stack_1.global_64
  loc_AE03C0: LdPrVar
  loc_AE03C2: LateMemCall
  loc_AE03C8: LitNothing
  loc_AE03CA: CastAd
  loc_AE03CD: FStAdFunc var_108
  loc_AE03D0: Call Proc_249_20_982230()
  loc_AE03D5: FLdPr Me
  loc_AE03D8: MemLdRfVar from_stack_1.global_64
  loc_AE03DB: LdPrVar
  loc_AE03DD: LateMemCall
  loc_AE03E3: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AE03E8: ExitProcHresult
  loc_AE03E9: FStVarCopyObj arg_368
End Sub

Private Function Proc_249_19_AD2108() 'AD2108
  'Data Table: 44D6A4
  loc_AD1AA4: LitVarStr var_94, "<html>"
  loc_AD1AA9: PopAdLdVar
  loc_AD1AAA: FLdPr Me
  loc_AD1AAD: MemLdRfVar from_stack_1.global_64
  loc_AD1AB0: LdPrVar
  loc_AD1AB2: LateMemCall
  loc_AD1AB8: LitVarStr var_94, "<head>"
  loc_AD1ABD: PopAdLdVar
  loc_AD1ABE: FLdPr Me
  loc_AD1AC1: MemLdRfVar from_stack_1.global_64
  loc_AD1AC4: LdPrVar
  loc_AD1AC6: LateMemCall
  loc_AD1ACC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AD1AD1: PopAdLdVar
  loc_AD1AD2: FLdPr Me
  loc_AD1AD5: MemLdRfVar from_stack_1.global_64
  loc_AD1AD8: LdPrVar
  loc_AD1ADA: LateMemCall
  loc_AD1AE0: LitStr "<title>"
  loc_AD1AE3: FLdRfVar var_A8
  loc_AD1AE6: FLdPr Me
  loc_AD1AE9:  = Me.Caption
  loc_AD1AEE: ILdRf var_A8
  loc_AD1AF1: ConcatStr
  loc_AD1AF2: FStStrNoPop var_AC
  loc_AD1AF5: LitStr "</title>"
  loc_AD1AF8: ConcatStr
  loc_AD1AF9: CVarStr var_BC
  loc_AD1AFC: PopAdLdVar
  loc_AD1AFD: FLdPr Me
  loc_AD1B00: MemLdRfVar from_stack_1.global_64
  loc_AD1B03: LdPrVar
  loc_AD1B05: LateMemCall
  loc_AD1B0B: FFreeStr var_A8 = ""
  loc_AD1B12: FFree1Var var_BC = ""
  loc_AD1B15: LitVarStr var_94, "<style type=""text/css"">"
  loc_AD1B1A: PopAdLdVar
  loc_AD1B1B: FLdPr Me
  loc_AD1B1E: MemLdRfVar from_stack_1.global_64
  loc_AD1B21: LdPrVar
  loc_AD1B23: LateMemCall
  loc_AD1B29: LitVarStr var_94, ".Titulo1 {"
  loc_AD1B2E: PopAdLdVar
  loc_AD1B2F: FLdPr Me
  loc_AD1B32: MemLdRfVar from_stack_1.global_64
  loc_AD1B35: LdPrVar
  loc_AD1B37: LateMemCall
  loc_AD1B3D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD1B42: PopAdLdVar
  loc_AD1B43: FLdPr Me
  loc_AD1B46: MemLdRfVar from_stack_1.global_64
  loc_AD1B49: LdPrVar
  loc_AD1B4B: LateMemCall
  loc_AD1B51: LitVarStr var_94, " font-size: 18px;"
  loc_AD1B56: PopAdLdVar
  loc_AD1B57: FLdPr Me
  loc_AD1B5A: MemLdRfVar from_stack_1.global_64
  loc_AD1B5D: LdPrVar
  loc_AD1B5F: LateMemCall
  loc_AD1B65: LitVarStr var_94, " font-weight: bold;"
  loc_AD1B6A: PopAdLdVar
  loc_AD1B6B: FLdPr Me
  loc_AD1B6E: MemLdRfVar from_stack_1.global_64
  loc_AD1B71: LdPrVar
  loc_AD1B73: LateMemCall
  loc_AD1B79: LitVarStr var_94, "}"
  loc_AD1B7E: PopAdLdVar
  loc_AD1B7F: FLdPr Me
  loc_AD1B82: MemLdRfVar from_stack_1.global_64
  loc_AD1B85: LdPrVar
  loc_AD1B87: LateMemCall
  loc_AD1B8D: LitVarStr var_94, ".Titulo2 {"
  loc_AD1B92: PopAdLdVar
  loc_AD1B93: FLdPr Me
  loc_AD1B96: MemLdRfVar from_stack_1.global_64
  loc_AD1B99: LdPrVar
  loc_AD1B9B: LateMemCall
  loc_AD1BA1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD1BA6: PopAdLdVar
  loc_AD1BA7: FLdPr Me
  loc_AD1BAA: MemLdRfVar from_stack_1.global_64
  loc_AD1BAD: LdPrVar
  loc_AD1BAF: LateMemCall
  loc_AD1BB5: LitVarStr var_94, " font-size: 14px;"
  loc_AD1BBA: PopAdLdVar
  loc_AD1BBB: FLdPr Me
  loc_AD1BBE: MemLdRfVar from_stack_1.global_64
  loc_AD1BC1: LdPrVar
  loc_AD1BC3: LateMemCall
  loc_AD1BC9: LitVarStr var_94, " font-weight: bold;"
  loc_AD1BCE: PopAdLdVar
  loc_AD1BCF: FLdPr Me
  loc_AD1BD2: MemLdRfVar from_stack_1.global_64
  loc_AD1BD5: LdPrVar
  loc_AD1BD7: LateMemCall
  loc_AD1BDD: LitVarStr var_94, "}"
  loc_AD1BE2: PopAdLdVar
  loc_AD1BE3: FLdPr Me
  loc_AD1BE6: MemLdRfVar from_stack_1.global_64
  loc_AD1BE9: LdPrVar
  loc_AD1BEB: LateMemCall
  loc_AD1BF1: LitVarStr var_94, ".Normal {"
  loc_AD1BF6: PopAdLdVar
  loc_AD1BF7: FLdPr Me
  loc_AD1BFA: MemLdRfVar from_stack_1.global_64
  loc_AD1BFD: LdPrVar
  loc_AD1BFF: LateMemCall
  loc_AD1C05: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD1C0A: PopAdLdVar
  loc_AD1C0B: FLdPr Me
  loc_AD1C0E: MemLdRfVar from_stack_1.global_64
  loc_AD1C11: LdPrVar
  loc_AD1C13: LateMemCall
  loc_AD1C19: LitVarStr var_94, " font-size: 14px;"
  loc_AD1C1E: PopAdLdVar
  loc_AD1C1F: FLdPr Me
  loc_AD1C22: MemLdRfVar from_stack_1.global_64
  loc_AD1C25: LdPrVar
  loc_AD1C27: LateMemCall
  loc_AD1C2D: LitVarStr var_94, " font-style: normal;"
  loc_AD1C32: PopAdLdVar
  loc_AD1C33: FLdPr Me
  loc_AD1C36: MemLdRfVar from_stack_1.global_64
  loc_AD1C39: LdPrVar
  loc_AD1C3B: LateMemCall
  loc_AD1C41: LitVarStr var_94, " font-weight: normal;"
  loc_AD1C46: PopAdLdVar
  loc_AD1C47: FLdPr Me
  loc_AD1C4A: MemLdRfVar from_stack_1.global_64
  loc_AD1C4D: LdPrVar
  loc_AD1C4F: LateMemCall
  loc_AD1C55: LitVarStr var_94, " font-variant: normal;"
  loc_AD1C5A: PopAdLdVar
  loc_AD1C5B: FLdPr Me
  loc_AD1C5E: MemLdRfVar from_stack_1.global_64
  loc_AD1C61: LdPrVar
  loc_AD1C63: LateMemCall
  loc_AD1C69: LitVarStr var_94, "}"
  loc_AD1C6E: PopAdLdVar
  loc_AD1C6F: FLdPr Me
  loc_AD1C72: MemLdRfVar from_stack_1.global_64
  loc_AD1C75: LdPrVar
  loc_AD1C77: LateMemCall
  loc_AD1C7D: LitVarStr var_94, ".Encabezado {"
  loc_AD1C82: PopAdLdVar
  loc_AD1C83: FLdPr Me
  loc_AD1C86: MemLdRfVar from_stack_1.global_64
  loc_AD1C89: LdPrVar
  loc_AD1C8B: LateMemCall
  loc_AD1C91: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AD1C96: PopAdLdVar
  loc_AD1C97: FLdPr Me
  loc_AD1C9A: MemLdRfVar from_stack_1.global_64
  loc_AD1C9D: LdPrVar
  loc_AD1C9F: LateMemCall
  loc_AD1CA5: LitVarStr var_94, " font-size: 13px;"
  loc_AD1CAA: PopAdLdVar
  loc_AD1CAB: FLdPr Me
  loc_AD1CAE: MemLdRfVar from_stack_1.global_64
  loc_AD1CB1: LdPrVar
  loc_AD1CB3: LateMemCall
  loc_AD1CB9: LitVarStr var_94, " font-weight: bold;"
  loc_AD1CBE: PopAdLdVar
  loc_AD1CBF: FLdPr Me
  loc_AD1CC2: MemLdRfVar from_stack_1.global_64
  loc_AD1CC5: LdPrVar
  loc_AD1CC7: LateMemCall
  loc_AD1CCD: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AD1CD2: PopAdLdVar
  loc_AD1CD3: FLdPr Me
  loc_AD1CD6: MemLdRfVar from_stack_1.global_64
  loc_AD1CD9: LdPrVar
  loc_AD1CDB: LateMemCall
  loc_AD1CE1: LitVarStr var_94, "}"
  loc_AD1CE6: PopAdLdVar
  loc_AD1CE7: FLdPr Me
  loc_AD1CEA: MemLdRfVar from_stack_1.global_64
  loc_AD1CED: LdPrVar
  loc_AD1CEF: LateMemCall
  loc_AD1CF5: LitVarStr var_94, ".LineaDato {"
  loc_AD1CFA: PopAdLdVar
  loc_AD1CFB: FLdPr Me
  loc_AD1CFE: MemLdRfVar from_stack_1.global_64
  loc_AD1D01: LdPrVar
  loc_AD1D03: LateMemCall
  loc_AD1D09: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD1D0E: PopAdLdVar
  loc_AD1D0F: FLdPr Me
  loc_AD1D12: MemLdRfVar from_stack_1.global_64
  loc_AD1D15: LdPrVar
  loc_AD1D17: LateMemCall
  loc_AD1D1D: LitVarStr var_94, " font-size: 10px;"
  loc_AD1D22: PopAdLdVar
  loc_AD1D23: FLdPr Me
  loc_AD1D26: MemLdRfVar from_stack_1.global_64
  loc_AD1D29: LdPrVar
  loc_AD1D2B: LateMemCall
  loc_AD1D31: LitVarStr var_94, "}"
  loc_AD1D36: PopAdLdVar
  loc_AD1D37: FLdPr Me
  loc_AD1D3A: MemLdRfVar from_stack_1.global_64
  loc_AD1D3D: LdPrVar
  loc_AD1D3F: LateMemCall
  loc_AD1D45: LitVarStr var_94, ".Totales {"
  loc_AD1D4A: PopAdLdVar
  loc_AD1D4B: FLdPr Me
  loc_AD1D4E: MemLdRfVar from_stack_1.global_64
  loc_AD1D51: LdPrVar
  loc_AD1D53: LateMemCall
  loc_AD1D59: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD1D5E: PopAdLdVar
  loc_AD1D5F: FLdPr Me
  loc_AD1D62: MemLdRfVar from_stack_1.global_64
  loc_AD1D65: LdPrVar
  loc_AD1D67: LateMemCall
  loc_AD1D6D: LitVarStr var_94, " font-size: 12px;"
  loc_AD1D72: PopAdLdVar
  loc_AD1D73: FLdPr Me
  loc_AD1D76: MemLdRfVar from_stack_1.global_64
  loc_AD1D79: LdPrVar
  loc_AD1D7B: LateMemCall
  loc_AD1D81: LitVarStr var_94, " font-weight: bold;"
  loc_AD1D86: PopAdLdVar
  loc_AD1D87: FLdPr Me
  loc_AD1D8A: MemLdRfVar from_stack_1.global_64
  loc_AD1D8D: LdPrVar
  loc_AD1D8F: LateMemCall
  loc_AD1D95: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AD1D9A: PopAdLdVar
  loc_AD1D9B: FLdPr Me
  loc_AD1D9E: MemLdRfVar from_stack_1.global_64
  loc_AD1DA1: LdPrVar
  loc_AD1DA3: LateMemCall
  loc_AD1DA9: LitVarStr var_94, "}"
  loc_AD1DAE: PopAdLdVar
  loc_AD1DAF: FLdPr Me
  loc_AD1DB2: MemLdRfVar from_stack_1.global_64
  loc_AD1DB5: LdPrVar
  loc_AD1DB7: LateMemCall
  loc_AD1DBD: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AD1DC2: PopAdLdVar
  loc_AD1DC3: FLdPr Me
  loc_AD1DC6: MemLdRfVar from_stack_1.global_64
  loc_AD1DC9: LdPrVar
  loc_AD1DCB: LateMemCall
  loc_AD1DD1: LitVarStr var_94, "</style>"
  loc_AD1DD6: PopAdLdVar
  loc_AD1DD7: FLdPr Me
  loc_AD1DDA: MemLdRfVar from_stack_1.global_64
  loc_AD1DDD: LdPrVar
  loc_AD1DDF: LateMemCall
  loc_AD1DE5: LitI4 0
  loc_AD1DEA: FStStrCopy var_AC
  loc_AD1DED: FLdRfVar var_AC
  loc_AD1DF0: LitI4 0
  loc_AD1DF5: FStStrCopy var_A8
  loc_AD1DF8: FLdRfVar var_A8
  loc_AD1DFB: LitI2_Byte 0
  loc_AD1DFD: PopTmpLdAd2 var_BE
  loc_AD1E00: FLdPr Me
  loc_AD1E03: MemLdRfVar from_stack_1.global_64
  loc_AD1E06: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AD1E0B: FFreeStr var_A8 = ""
  loc_AD1E12: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AD1E17: PopAdLdVar
  loc_AD1E18: FLdPr Me
  loc_AD1E1B: MemLdRfVar from_stack_1.global_64
  loc_AD1E1E: LdPrVar
  loc_AD1E20: LateMemCall
  loc_AD1E26: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AD1E2B: PopAdLdVar
  loc_AD1E2C: FLdPr Me
  loc_AD1E2F: MemLdRfVar from_stack_1.global_64
  loc_AD1E32: LdPrVar
  loc_AD1E34: LateMemCall
  loc_AD1E3A: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AD1E3F: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AD1E44: FStVarCopyObj var_BC
  loc_AD1E47: FLdRfVar var_BC
  loc_AD1E4A: FLdRfVar var_D0
  loc_AD1E4D: ImpAdCallFPR4  = Ucase()
  loc_AD1E52: FLdRfVar var_D0
  loc_AD1E55: ConcatVar var_E0
  loc_AD1E59: LitVarStr var_F0, "</p>"
  loc_AD1E5E: ConcatVar var_100
  loc_AD1E62: PopAdLdVar
  loc_AD1E63: FLdPr Me
  loc_AD1E66: MemLdRfVar from_stack_1.global_64
  loc_AD1E69: LdPrVar
  loc_AD1E6B: LateMemCall
  loc_AD1E71: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AD1E7C: LitStr "    <p align=""center"">"
  loc_AD1E7F: FLdRfVar var_A8
  loc_AD1E82: FLdPr Me
  loc_AD1E85:  = Me.Caption
  loc_AD1E8A: ILdRf var_A8
  loc_AD1E8D: ConcatStr
  loc_AD1E8E: FStStrNoPop var_AC
  loc_AD1E91: LitStr "</p></th>"
  loc_AD1E94: ConcatStr
  loc_AD1E95: CVarStr var_BC
  loc_AD1E98: PopAdLdVar
  loc_AD1E99: FLdPr Me
  loc_AD1E9C: MemLdRfVar from_stack_1.global_64
  loc_AD1E9F: LdPrVar
  loc_AD1EA1: LateMemCall
  loc_AD1EA7: FFreeStr var_A8 = ""
  loc_AD1EAE: FFree1Var var_BC = ""
  loc_AD1EB1: LitVarStr var_94, "  </tr>"
  loc_AD1EB6: PopAdLdVar
  loc_AD1EB7: FLdPr Me
  loc_AD1EBA: MemLdRfVar from_stack_1.global_64
  loc_AD1EBD: LdPrVar
  loc_AD1EBF: LateMemCall
  loc_AD1EC5: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AD1ECA: PopAdLdVar
  loc_AD1ECB: FLdPr Me
  loc_AD1ECE: MemLdRfVar from_stack_1.global_64
  loc_AD1ED1: LdPrVar
  loc_AD1ED3: LateMemCall
  loc_AD1ED9: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_AD1EDE: PopAdLdVar
  loc_AD1EDF: FLdPr Me
  loc_AD1EE2: MemLdRfVar from_stack_1.global_64
  loc_AD1EE5: LdPrVar
  loc_AD1EE7: LateMemCall
  loc_AD1EED: FLdPr Me
  loc_AD1EF0: VCallAd Control_ID_mskDesde
  loc_AD1EF3: FStAdFunc var_114
  loc_AD1EF6: FLdPr var_114
  loc_AD1EF9: LateIdLdVar var_BC DispID_22 0
  loc_AD1F00: CStrVarTmp
  loc_AD1F01: FStStrNoPop var_A8
  loc_AD1F04: LitStr vbNullString
  loc_AD1F07: NeStr
  loc_AD1F09: FFree1Str var_A8
  loc_AD1F0C: FFree1Ad var_114
  loc_AD1F0F: FFree1Var var_BC = ""
  loc_AD1F12: BranchF loc_AD1F5A
  loc_AD1F15: LitStr "         Desde: <span class=""Normal"">"
  loc_AD1F18: FLdPr Me
  loc_AD1F1B: VCallAd Control_ID_mskDesde
  loc_AD1F1E: FStAdFunc var_114
  loc_AD1F21: FLdPr var_114
  loc_AD1F24: LateIdLdVar var_BC DispID_15 0
  loc_AD1F2B: CStrVarTmp
  loc_AD1F2C: FStStrNoPop var_A8
  loc_AD1F2F: ConcatStr
  loc_AD1F30: FStStrNoPop var_AC
  loc_AD1F33: LitStr "</span><br>"
  loc_AD1F36: ConcatStr
  loc_AD1F37: CVarStr var_D0
  loc_AD1F3A: PopAdLdVar
  loc_AD1F3B: FLdPr Me
  loc_AD1F3E: MemLdRfVar from_stack_1.global_64
  loc_AD1F41: LdPrVar
  loc_AD1F43: LateMemCall
  loc_AD1F49: FFreeStr var_A8 = ""
  loc_AD1F50: FFree1Ad var_114
  loc_AD1F53: FFreeVar var_BC = ""
  loc_AD1F5A: FLdPr Me
  loc_AD1F5D: VCallAd Control_ID_mskHasta
  loc_AD1F60: FStAdFunc var_114
  loc_AD1F63: FLdPr var_114
  loc_AD1F66: LateIdLdVar var_BC DispID_22 0
  loc_AD1F6D: CStrVarTmp
  loc_AD1F6E: FStStrNoPop var_A8
  loc_AD1F71: LitStr vbNullString
  loc_AD1F74: NeStr
  loc_AD1F76: FFree1Str var_A8
  loc_AD1F79: FFree1Ad var_114
  loc_AD1F7C: FFree1Var var_BC = ""
  loc_AD1F7F: BranchF loc_AD1FC7
  loc_AD1F82: LitStr "         Hasta: <span class=""Normal"">"
  loc_AD1F85: FLdPr Me
  loc_AD1F88: VCallAd Control_ID_mskHasta
  loc_AD1F8B: FStAdFunc var_114
  loc_AD1F8E: FLdPr var_114
  loc_AD1F91: LateIdLdVar var_BC DispID_15 0
  loc_AD1F98: CStrVarTmp
  loc_AD1F99: FStStrNoPop var_A8
  loc_AD1F9C: ConcatStr
  loc_AD1F9D: FStStrNoPop var_AC
  loc_AD1FA0: LitStr "</span>"
  loc_AD1FA3: ConcatStr
  loc_AD1FA4: CVarStr var_D0
  loc_AD1FA7: PopAdLdVar
  loc_AD1FA8: FLdPr Me
  loc_AD1FAB: MemLdRfVar from_stack_1.global_64
  loc_AD1FAE: LdPrVar
  loc_AD1FB0: LateMemCall
  loc_AD1FB6: FFreeStr var_A8 = ""
  loc_AD1FBD: FFree1Ad var_114
  loc_AD1FC0: FFreeVar var_BC = ""
  loc_AD1FC7: LitVarStr var_94, "   </th>"
  loc_AD1FCC: PopAdLdVar
  loc_AD1FCD: FLdPr Me
  loc_AD1FD0: MemLdRfVar from_stack_1.global_64
  loc_AD1FD3: LdPrVar
  loc_AD1FD5: LateMemCall
  loc_AD1FDB: LitVarStr var_94, "  </tr>"
  loc_AD1FE0: PopAdLdVar
  loc_AD1FE1: FLdPr Me
  loc_AD1FE4: MemLdRfVar from_stack_1.global_64
  loc_AD1FE7: LdPrVar
  loc_AD1FE9: LateMemCall
  loc_AD1FEF: LitVarStr var_94, "</table>"
  loc_AD1FF4: PopAdLdVar
  loc_AD1FF5: FLdPr Me
  loc_AD1FF8: MemLdRfVar from_stack_1.global_64
  loc_AD1FFB: LdPrVar
  loc_AD1FFD: LateMemCall
  loc_AD2003: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AD2008: PopAdLdVar
  loc_AD2009: FLdPr Me
  loc_AD200C: MemLdRfVar from_stack_1.global_64
  loc_AD200F: LdPrVar
  loc_AD2011: LateMemCall
  loc_AD2017: LitVarStr var_94, "  <THEAD>"
  loc_AD201C: PopAdLdVar
  loc_AD201D: FLdPr Me
  loc_AD2020: MemLdRfVar from_stack_1.global_64
  loc_AD2023: LdPrVar
  loc_AD2025: LateMemCall
  loc_AD202B: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AD2030: PopAdLdVar
  loc_AD2031: FLdPr Me
  loc_AD2034: MemLdRfVar from_stack_1.global_64
  loc_AD2037: LdPrVar
  loc_AD2039: LateMemCall
  loc_AD203F: LitVarStr var_94, "    <th>Fecha</th>"
  loc_AD2044: PopAdLdVar
  loc_AD2045: FLdPr Me
  loc_AD2048: MemLdRfVar from_stack_1.global_64
  loc_AD204B: LdPrVar
  loc_AD204D: LateMemCall
  loc_AD2053: LitVarStr var_94, "    <th>Expediente</th>"
  loc_AD2058: PopAdLdVar
  loc_AD2059: FLdPr Me
  loc_AD205C: MemLdRfVar from_stack_1.global_64
  loc_AD205F: LdPrVar
  loc_AD2061: LateMemCall
  loc_AD2067: LitVarStr var_94, "    <th>Liquidaci&oacuten</th>"
  loc_AD206C: PopAdLdVar
  loc_AD206D: FLdPr Me
  loc_AD2070: MemLdRfVar from_stack_1.global_64
  loc_AD2073: LdPrVar
  loc_AD2075: LateMemCall
  loc_AD207B: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_AD2080: PopAdLdVar
  loc_AD2081: FLdPr Me
  loc_AD2084: MemLdRfVar from_stack_1.global_64
  loc_AD2087: LdPrVar
  loc_AD2089: LateMemCall
  loc_AD208F: LitVarStr var_94, "    <th>Banco</th>"
  loc_AD2094: PopAdLdVar
  loc_AD2095: FLdPr Me
  loc_AD2098: MemLdRfVar from_stack_1.global_64
  loc_AD209B: LdPrVar
  loc_AD209D: LateMemCall
  loc_AD20A3: LitVarStr var_94, "    <th>Cheque</th>"
  loc_AD20A8: PopAdLdVar
  loc_AD20A9: FLdPr Me
  loc_AD20AC: MemLdRfVar from_stack_1.global_64
  loc_AD20AF: LdPrVar
  loc_AD20B1: LateMemCall
  loc_AD20B7: LitVarStr var_94, "    <th>D E B E</th>"
  loc_AD20BC: PopAdLdVar
  loc_AD20BD: FLdPr Me
  loc_AD20C0: MemLdRfVar from_stack_1.global_64
  loc_AD20C3: LdPrVar
  loc_AD20C5: LateMemCall
  loc_AD20CB: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_AD20D0: PopAdLdVar
  loc_AD20D1: FLdPr Me
  loc_AD20D4: MemLdRfVar from_stack_1.global_64
  loc_AD20D7: LdPrVar
  loc_AD20D9: LateMemCall
  loc_AD20DF: LitVarStr var_94, "  </tr>"
  loc_AD20E4: PopAdLdVar
  loc_AD20E5: FLdPr Me
  loc_AD20E8: MemLdRfVar from_stack_1.global_64
  loc_AD20EB: LdPrVar
  loc_AD20ED: LateMemCall
  loc_AD20F3: LitVarStr var_94, "  </THEAD>"
  loc_AD20F8: PopAdLdVar
  loc_AD20F9: FLdPr Me
  loc_AD20FC: MemLdRfVar from_stack_1.global_64
  loc_AD20FF: LdPrVar
  loc_AD2101: LateMemCall
  loc_AD2107: ExitProcHresult
End Function

Private Function Proc_249_20_982230() '982230
  'Data Table: 44D6A4
  loc_9821F0: LitVarStr var_94, "</table>"
  loc_9821F5: PopAdLdVar
  loc_9821F6: FLdPr Me
  loc_9821F9: MemLdRfVar from_stack_1.global_64
  loc_9821FC: LdPrVar
  loc_9821FE: LateMemCall
  loc_982204: LitVarStr var_94, "</body>"
  loc_982209: PopAdLdVar
  loc_98220A: FLdPr Me
  loc_98220D: MemLdRfVar from_stack_1.global_64
  loc_982210: LdPrVar
  loc_982212: LateMemCall
  loc_982218: LitVarStr var_94, "</html>"
  loc_98221D: PopAdLdVar
  loc_98221E: FLdPr Me
  loc_982221: MemLdRfVar from_stack_1.global_64
  loc_982224: LdPrVar
  loc_982226: LateMemCall
  loc_98222C: ExitProcHresult
  loc_98222D: Ary1StVar
  loc_98222E: NewIfNullPr Me
End Function
