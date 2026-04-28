VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptControlTransferenciasalTesorero
  Caption = "Control Transferencias al Tesorero"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControlTransferenciasalTesorero.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7860
  ClientHeight = 2925
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2670
    Width = 7860
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptControlTransferenciasalTesorero.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 1680
    Width = 735
    Height = 615
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptControlTransferenciasalTesorero.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1440
    Width = 3255
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 13
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
    Top = 1440
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
    Width = 7575
    Height = 1335
    TabIndex = 0
    Begin VB.CommandButton cmdHasta
      Left = 2280
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptControlTransferenciasalTesorero.frx":0B9C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdDesde
      Left = 2280
      Top = 195
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptControlTransferenciasalTesorero.frx":10DE
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1080
      Top = 240
      Width = 1095
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptControlTransferenciasalTesorero.frx":1620
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1080
      Top = 765
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptControlTransferenciasalTesorero.frx":16A8
    End
    Begin MSComDlg.CommonDialog cdlGuardar
      OleObjectBlob = "rptControlTransferenciasalTesorero.frx":1730
      Left = 3240
      Top = 120
    End
    Begin VB.Label Label1
      Caption = "Hasta:"
      Left = 480
      Top = 765
      Width = 465
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Desde:"
      Left = 435
      Top = 240
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6720
    Top = 1920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptControlTransferenciasalTesorero.frx":1794
  End
End

Attribute VB_Name = "rptControlTransferenciasalTesorero"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00589EDC
  bStruc(52) As Byte ' String fields: 13
End Type


Private Sub cmdPrevia_Click() '95DEA0
  'Data Table: 45D570
  loc_95DE88: ILdRf Me
  loc_95DE8B: CastAd
  loc_95DE8E: FStAdFunc var_88
  loc_95DE91: FLdRfVar var_88
  loc_95DE94: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95DE99: FFree1Ad var_88
  loc_95DE9C: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94A160
  'Data Table: 45D570
  loc_94A14C: FLdPr Me
  loc_94A14F: VCallAd Control_ID_mskDesde
  loc_94A152: CVarAd
  loc_94A156: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A15B: FFree1Var var_94 = ""
  loc_94A15E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B3604
  'Data Table: 45D570
  loc_9B3568: FLdPr Me
  loc_9B356B: VCallAd Control_ID_mskDesde
  loc_9B356E: FStAdFunc var_88
  loc_9B3571: FLdPr var_88
  loc_9B3574: LateIdLdVar var_98 DispID_15 0
  loc_9B357B: PopAd
  loc_9B357D: FLdPr Me
  loc_9B3580: VCallAd Control_ID_mskDesde
  loc_9B3583: FStAdFunc var_AC
  loc_9B3586: LitI2_Byte &HFF
  loc_9B3588: PopTmpLdAd2 var_A2
  loc_9B358B: FLdZeroAd var_AC
  loc_9B358E: FStAdFunc var_A0
  loc_9B3591: FLdRfVar var_A0
  loc_9B3594: LitStr vbNullString
  loc_9B3597: LitI2_Byte 0
  loc_9B3599: LitI2_Byte 0
  loc_9B359B: FLdRfVar var_98
  loc_9B359E: CStrVarTmp
  loc_9B359F: FStStrNoPop var_9C
  loc_9B35A2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B35A7: FStStrNoPop var_A8
  loc_9B35AA: FLdPr Me
  loc_9B35AD: MemStStrCopy
  loc_9B35B1: FFreeStr var_9C = ""
  loc_9B35B8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B35C1: FFree1Var var_98 = ""
  loc_9B35C4: FLdPr Me
  loc_9B35C7: VCallAd Control_ID_mskDesde
  loc_9B35CA: FStAdFunc var_B0
  loc_9B35CD: LitNothing
  loc_9B35CF: CastAd
  loc_9B35D2: FStAdFunc var_AC
  loc_9B35D5: FLdRfVar var_AC
  loc_9B35D8: FLdZeroAd var_B0
  loc_9B35DB: FStAdFuncNoPop
  loc_9B35DE: CastAd
  loc_9B35E1: FStAdFunc var_A0
  loc_9B35E4: FLdRfVar var_A0
  loc_9B35E7: FLdPr Me
  loc_9B35EA: MemLdRfVar from_stack_1.global_100
  loc_9B35ED: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B35F2: IStI2 arg_C
  loc_9B35F5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3600: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 'A28374
  'Data Table: 45D570
  loc_A281D4: FLdPr Me
  loc_A281D7: VCallAd Control_ID_mskDesde
  loc_A281DA: FStAdFunc var_88
  loc_A281DD: FLdPr var_88
  loc_A281E0: LateIdLdVar var_98 DispID_15 0
  loc_A281E7: CStrVarTmp
  loc_A281E8: CVarStr var_A8
  loc_A281EB: ImpAdCallI2 IsDate()
  loc_A281F0: FFree1Ad var_88
  loc_A281F3: FFreeVar var_98 = ""
  loc_A281FA: BranchF loc_A2835E
  loc_A281FD: FLdPr Me
  loc_A28200: VCallAd Control_ID_mskDesde
  loc_A28203: FStAdFunc var_88
  loc_A28206: FLdPr var_88
  loc_A28209: LateIdLdVar var_98 DispID_15 0
  loc_A28210: CStrVarTmp
  loc_A28211: CVarStr var_A8
  loc_A28214: FLdRfVar var_B8
  loc_A28217: ImpAdCallFPR4  = Day()
  loc_A2821C: FLdRfVar var_B8
  loc_A2821F: LitVarI2 var_C8, 1
  loc_A28224: HardType
  loc_A28225: EqVar var_D8
  loc_A28229: FLdPr Me
  loc_A2822C: VCallAd Control_ID_mskDesde
  loc_A2822F: FStAdFunc var_DC
  loc_A28232: FLdPr var_DC
  loc_A28235: LateIdLdVar var_EC DispID_15 0
  loc_A2823C: CStrVarTmp
  loc_A2823D: CVarStr var_FC
  loc_A28240: FLdRfVar var_10C
  loc_A28243: ImpAdCallFPR4  = Month()
  loc_A28248: FLdRfVar var_10C
  loc_A2824B: LitI2_Byte 0
  loc_A2824D: PopTmpLdAd2 var_10E
  loc_A28250: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A28255: CVarDate var_130
  loc_A28259: FLdRfVar var_140
  loc_A2825C: ImpAdCallFPR4  = Month()
  loc_A28261: FLdRfVar var_140
  loc_A28264: LtVar var_150
  loc_A28268: AndVar var_160
  loc_A2826C: FLdPr Me
  loc_A2826F: VCallAd Control_ID_mskHasta
  loc_A28272: FStAdFunc var_164
  loc_A28275: FLdPr var_164
  loc_A28278: LateIdLdVar var_174 DispID_15 0
  loc_A2827F: CStrVarTmp
  loc_A28280: FStStrNoPop var_178
  loc_A28283: CDateStr
  loc_A28285: ImpAdLdFPR8 MemVar_C3D04C
  loc_A28288: EqR4
  loc_A28289: CVarBoolI2 var_188
  loc_A2828D: AndVar var_198
  loc_A28291: CBoolVarNull
  loc_A28293: FFree1Str var_178
  loc_A28296: FFreeAd var_88 = "": var_DC = ""
  loc_A2829F: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_EC = "": var_FC = "": var_130 = "": var_10C = "": var_140 = "": var_174 = ""
  loc_A282B6: BranchF loc_A2835E
  loc_A282B9: LitVarStr var_120, "01/"
  loc_A282BE: FLdPr Me
  loc_A282C1: VCallAd Control_ID_mskDesde
  loc_A282C4: FStAdFunc var_88
  loc_A282C7: FLdPr var_88
  loc_A282CA: LateIdLdVar var_98 DispID_15 0
  loc_A282D1: CStrVarTmp
  loc_A282D2: CVarStr var_A8
  loc_A282D5: FLdRfVar var_B8
  loc_A282D8: ImpAdCallFPR4  = Month()
  loc_A282DD: FLdRfVar var_B8
  loc_A282E0: LitVarI2 var_C8, 1
  loc_A282E5: AddVar var_D8
  loc_A282E9: ConcatVar var_EC
  loc_A282ED: LitVarStr var_188, "/"
  loc_A282F2: ConcatVar var_FC
  loc_A282F6: FLdPr Me
  loc_A282F9: VCallAd Control_ID_mskDesde
  loc_A282FC: FStAdFunc var_DC
  loc_A282FF: FLdPr var_DC
  loc_A28302: LateIdLdVar var_10C DispID_15 0
  loc_A28309: CStrVarTmp
  loc_A2830A: CVarStr var_130
  loc_A2830D: FLdRfVar var_140
  loc_A28310: ImpAdCallFPR4  = Year()
  loc_A28315: FLdRfVar var_140
  loc_A28318: ConcatVar var_150
  loc_A2831C: FnCDateVar
  loc_A2831E: LitI2_Byte 1
  loc_A28320: CR8I2
  loc_A28321: SubR4
  loc_A28322: CDateR8
  loc_A28323: CStrDate
  loc_A28325: CVarStr var_160
  loc_A28328: PopAdLdVar
  loc_A28329: FLdPr Me
  loc_A2832C: VCallAd Control_ID_mskHasta
  loc_A2832F: FStAdFunc var_164
  loc_A28332: FLdPr var_164
  loc_A28335: LateIdSt
  loc_A2833A: FFreeAd var_88 = "": var_DC = ""
  loc_A28343: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_D8 = "": var_EC = "": var_10C = "": var_130 = "": var_FC = "": var_140 = "": var_150 = "": var_150 = ""
  loc_A2835E: FLdPr Me
  loc_A28361: VCallAd Control_ID_mskHasta
  loc_A28364: CVarAd
  loc_A28368: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A2836D: FFree1Var var_98 = ""
  loc_A28370: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B37D4
  'Data Table: 45D570
  loc_9B3738: FLdPr Me
  loc_9B373B: VCallAd Control_ID_mskHasta
  loc_9B373E: FStAdFunc var_88
  loc_9B3741: FLdPr var_88
  loc_9B3744: LateIdLdVar var_98 DispID_15 0
  loc_9B374B: PopAd
  loc_9B374D: FLdPr Me
  loc_9B3750: VCallAd Control_ID_mskHasta
  loc_9B3753: FStAdFunc var_AC
  loc_9B3756: LitI2_Byte 0
  loc_9B3758: PopTmpLdAd2 var_A2
  loc_9B375B: FLdZeroAd var_AC
  loc_9B375E: FStAdFunc var_A0
  loc_9B3761: FLdRfVar var_A0
  loc_9B3764: LitStr vbNullString
  loc_9B3767: LitI2_Byte 0
  loc_9B3769: LitI2_Byte 0
  loc_9B376B: FLdRfVar var_98
  loc_9B376E: CStrVarTmp
  loc_9B376F: FStStrNoPop var_9C
  loc_9B3772: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B3777: FStStrNoPop var_A8
  loc_9B377A: FLdPr Me
  loc_9B377D: MemStStrCopy
  loc_9B3781: FFreeStr var_9C = ""
  loc_9B3788: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3791: FFree1Var var_98 = ""
  loc_9B3794: FLdPr Me
  loc_9B3797: VCallAd Control_ID_mskHasta
  loc_9B379A: FStAdFunc var_B0
  loc_9B379D: LitNothing
  loc_9B379F: CastAd
  loc_9B37A2: FStAdFunc var_AC
  loc_9B37A5: FLdRfVar var_AC
  loc_9B37A8: FLdZeroAd var_B0
  loc_9B37AB: FStAdFuncNoPop
  loc_9B37AE: CastAd
  loc_9B37B1: FStAdFunc var_A0
  loc_9B37B4: FLdRfVar var_A0
  loc_9B37B7: FLdPr Me
  loc_9B37BA: MemLdRfVar from_stack_1.global_100
  loc_9B37BD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B37C2: IStI2 arg_C
  loc_9B37C5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B37D0: ExitProcHresult
End Function

Private Sub cmdDesde_Click() '97D058
  'Data Table: 45D570
  loc_97D024: LitVar_Missing var_A4
  loc_97D027: PopAdLdVar
  loc_97D028: LitVarI4
  loc_97D030: PopAdLdVar
  loc_97D031: ImpAdLdRf MemVar_C3D9A8
  loc_97D034: NewIfNullPr frmCalendario
  loc_97D037: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D03C: ImpAdLdRf MemVar_C3D038
  loc_97D03F: CDargRef
  loc_97D043: FLdPr Me
  loc_97D046: VCallAd Control_ID_mskDesde
  loc_97D049: FStAdFunc var_A8
  loc_97D04C: FLdPr var_A8
  loc_97D04F: LateIdSt
  loc_97D054: FFree1Ad var_A8
  loc_97D057: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95E3AC
  'Data Table: 45D570
  loc_95E394: ILdRf Me
  loc_95E397: CastAd
  loc_95E39A: FStAdFunc var_88
  loc_95E39D: FLdRfVar var_88
  loc_95E3A0: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95E3A5: FFree1Ad var_88
  loc_95E3A8: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '97D1F8
  'Data Table: 45D570
  loc_97D1C4: LitVar_Missing var_A4
  loc_97D1C7: PopAdLdVar
  loc_97D1C8: LitVarI4
  loc_97D1D0: PopAdLdVar
  loc_97D1D1: ImpAdLdRf MemVar_C3D9A8
  loc_97D1D4: NewIfNullPr frmCalendario
  loc_97D1D7: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D1DC: ImpAdLdRf MemVar_C3D038
  loc_97D1DF: CDargRef
  loc_97D1E3: FLdPr Me
  loc_97D1E6: VCallAd Control_ID_mskHasta
  loc_97D1E9: FStAdFunc var_A8
  loc_97D1EC: FLdPr var_A8
  loc_97D1EF: LateIdSt
  loc_97D1F4: FFree1Ad var_A8
  loc_97D1F7: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98AD24
  'Data Table: 45D570
  loc_98ACEC: FLdPr Me
  loc_98ACEF: VCallAd Control_ID_statusBar
  loc_98ACF2: FStAdFunc var_88
  loc_98ACF5: FLdPr var_88
  loc_98ACF8: LateIdLdVar var_98 DispID_1 0
  loc_98ACFF: CStrVarTmp
  loc_98AD00: CVarStr var_A8
  loc_98AD03: PopAdLdVar
  loc_98AD04: FLdPr Me
  loc_98AD07: VCallAd Control_ID_statusBar
  loc_98AD0A: FStAdFunc var_BC
  loc_98AD0D: FLdPr var_BC
  loc_98AD10: LateIdSt
  loc_98AD15: FFreeAd var_88 = ""
  loc_98AD1C: FFreeVar var_98 = ""
  loc_98AD23: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96987C
  'Data Table: 45D570
  loc_969860: LitI2_Byte &HFF
  loc_969862: LitI2_Byte 0
  loc_969864: ILdRf Me
  loc_969867: CastAd
  loc_96986A: FStAdFunc var_88
  loc_96986D: FLdRfVar var_88
  loc_969870: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_969875: FFree1Ad var_88
  loc_969878: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97BACC
  'Data Table: 45D570
  loc_97BA9C: LitVarStr var_94, "Cerrando..."
  loc_97BAA1: PopAdLdVar
  loc_97BAA2: FLdPr Me
  loc_97BAA5: VCallAd Control_ID_statusBar
  loc_97BAA8: FStAdFunc var_A8
  loc_97BAAB: FLdPr var_A8
  loc_97BAAE: LateIdSt
  loc_97BAB3: FFree1Ad var_A8
  loc_97BAB6: ILdRf Me
  loc_97BAB9: FStAdNoPop
  loc_97BABD: ImpAdLdRf MemVar_C44F9C
  loc_97BAC0: NewIfNullPr Me
  loc_97BAC3: Me.Global.Unload from_stack_1
  loc_97BAC8: FFree1Ad var_A8
  loc_97BACB: ExitProcHresult
End Sub

Private Sub Form_Load() '96BC38
  'Data Table: 45D570
  loc_96BC18: LitI2_Byte &HFF
  loc_96BC1A: ImpAdStI2 MemVar_C3D840
  loc_96BC1D: ILdRf Me
  loc_96BC20: CastAd
  loc_96BC23: FStAdFunc var_88
  loc_96BC26: FLdRfVar var_88
  loc_96BC29: ImpAdCallFPR4  = Proc_261_42_9991A0()
  loc_96BC2E: FFree1Ad var_88
  loc_96BC31: Call cmdNueva_Click()
  loc_96BC36: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95E9E8
  'Data Table: 45D570
  loc_95E9D0: FLdPr Me
  loc_95E9D3: VCallAd Control_ID_wbbReporte
  loc_95E9D6: FStAdFunc var_88
  loc_95E9D9: FLdRfVar var_88
  loc_95E9DC: ImpAdCallFPR4  = Proc_263_22_98CC50()
  loc_95E9E1: FFree1Ad var_88
  loc_95E9E4: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95E820
  'Data Table: 45D570
  loc_95E808: LitI2_Byte 0
  loc_95E80A: ILdRf Me
  loc_95E80D: CastAd
  loc_95E810: FStAdFunc var_88
  loc_95E813: FLdRfVar var_88
  loc_95E816: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95E81B: FFree1Ad var_88
  loc_95E81E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9AEC10
  'Data Table: 45D570
  loc_9AEB74: LitI2_Byte 0
  loc_9AEB76: FLdPr Me
  loc_9AEB79: MemStI2 bGenerado
  loc_9AEB7C: LitI2_Byte &HFF
  loc_9AEB7E: FLdPr Me
  loc_9AEB81: MemStI2 bLogos
  loc_9AEB84: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9AEB89: LitI2_Byte 0
  loc_9AEB8B: PopTmpLdAd2 var_86
  loc_9AEB8E: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9AEB93: CVarDate var_A8
  loc_9AEB97: FLdRfVar var_B8
  loc_9AEB9A: ImpAdCallFPR4  = Year()
  loc_9AEB9F: LitI2_Byte 1
  loc_9AEBA1: LitI2_Byte 1
  loc_9AEBA3: FLdRfVar var_B8
  loc_9AEBA6: CI2Var
  loc_9AEBA7: FLdRfVar var_C8
  loc_9AEBAA: ImpAdCallFPR4  = DateSerial(, , )
  loc_9AEBAF: FLdRfVar var_C8
  loc_9AEBB2: CStrVarTmp
  loc_9AEBB3: CVarStr var_D8
  loc_9AEBB6: PopAdLdVar
  loc_9AEBB7: FLdPr Me
  loc_9AEBBA: VCallAd Control_ID_mskDesde
  loc_9AEBBD: FStAdFunc var_EC
  loc_9AEBC0: FLdPr var_EC
  loc_9AEBC3: LateIdSt
  loc_9AEBC8: FFree1Ad var_EC
  loc_9AEBCB: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_9AEBD6: ImpAdLdFPR8 MemVar_C3D04C
  loc_9AEBD9: CStrDate
  loc_9AEBDB: CVarStr var_A8
  loc_9AEBDE: PopAdLdVar
  loc_9AEBDF: FLdPr Me
  loc_9AEBE2: VCallAd Control_ID_mskHasta
  loc_9AEBE5: FStAdFunc var_EC
  loc_9AEBE8: FLdPr var_EC
  loc_9AEBEB: LateIdSt
  loc_9AEBF0: FFree1Ad var_EC
  loc_9AEBF3: FFree1Var var_A8 = ""
  loc_9AEBF6: Call HabilitarCriterio()
  loc_9AEBFB: ILdRf Me
  loc_9AEBFE: CastAd
  loc_9AEC01: FStAdFunc var_EC
  loc_9AEC04: FLdRfVar var_EC
  loc_9AEC07: ImpAdCallFPR4  = Proc_263_12_9C9114()
  loc_9AEC0C: FFree1Ad var_EC
  loc_9AEC0F: ExitProcHresult
End Sub

Public Function htmFileGet() '45E27C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '45E28B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '45E29A
  htmFile = Value
End Sub

Public Function bLogosGet() '45E2A9
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '45E2B8
  bLogos = Value
End Sub

Public Function bGeneradoGet() '45E2C7
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '45E2D6
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A159C
  'Data Table: 45D570
  loc_9A1538: LitI4 0
  loc_9A153D: LitI4 3
  loc_9A1542: FLdRfVar var_88
  loc_9A1545: Redim
  loc_9A154F: FLdPr Me
  loc_9A1552: VCallAd Control_ID_mskDesde
  loc_9A1555: CVarAd
  loc_9A1559: ParmAry1St
  loc_9A155F: FLdPr Me
  loc_9A1562: VCallAd Control_ID_cmdDesde
  loc_9A1565: CVarAd
  loc_9A1569: ParmAry1St
  loc_9A156F: FLdPr Me
  loc_9A1572: VCallAd Control_ID_mskHasta
  loc_9A1575: CVarAd
  loc_9A1579: ParmAry1St
  loc_9A157F: FLdPr Me
  loc_9A1582: VCallAd Control_ID_cmdHasta
  loc_9A1585: CVarAd
  loc_9A1589: ParmAry1St
  loc_9A158F: FLdRfVar var_88
  loc_9A1592: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1597: FLdRfVar var_88
  loc_9A159A: Erase
  loc_9A159B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B6F228
  'Data Table: 45D570
  loc_B6E6C0: LitStr vbNullString
  loc_B6E6C3: FLdPr Me
  loc_B6E6C6: MemStStrCopy
  loc_B6E6CA: LitI2_Byte 0
  loc_B6E6CC: PopTmpLdAd2 var_86
  loc_B6E6CF: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B6E6D4: FLdPr Me
  loc_B6E6D7: MemLdStr global_100
  loc_B6E6DA: LitStr vbNullString
  loc_B6E6DD: NeStr
  loc_B6E6DF: BranchF loc_B6E6E3
  loc_B6E6E2: ExitProcHresult
  loc_B6E6E3: LitI2_Byte 0
  loc_B6E6E5: PopTmpLdAd2 var_86
  loc_B6E6E8: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B6E6ED: FLdPr Me
  loc_B6E6F0: MemLdStr global_100
  loc_B6E6F3: LitStr vbNullString
  loc_B6E6F6: NeStr
  loc_B6E6F8: BranchF loc_B6E6FC
  loc_B6E6FB: ExitProcHresult
  loc_B6E6FC: FLdPr Me
  loc_B6E6FF: MemLdI2 bGenerado
  loc_B6E702: BranchF loc_B6E706
  loc_B6E705: ExitProcHresult
  loc_B6E706: LitVarStr var_98, "Generando reporte..."
  loc_B6E70B: PopAdLdVar
  loc_B6E70C: FLdPr Me
  loc_B6E70F: VCallAd Control_ID_statusBar
  loc_B6E712: FStAdFunc var_AC
  loc_B6E715: FLdPr var_AC
  loc_B6E718: LateIdSt
  loc_B6E71D: FFree1Ad var_AC
  loc_B6E720: LitI4 &HB
  loc_B6E725: CI2I4
  loc_B6E726: FLdPr Me
  loc_B6E729: Me.MousePointer = from_stack_1
  loc_B6E72E: LitI4 1
  loc_B6E733: LitI4 1
  loc_B6E738: FLdPr Me
  loc_B6E73B: MemLdRfVar from_stack_1.global_80
  loc_B6E73E: Redim
  loc_B6E748: LitStr "0"
  loc_B6E74B: FLdPr Me
  loc_B6E74E: MemStStrCopy
  loc_B6E752: FLdPr Me
  loc_B6E755: MemLdRfVar from_stack_1.global_72
  loc_B6E758: NewIfNullAd
  loc_B6E75B: FStAd var_B0 
  loc_B6E75F: FLdPr Me
  loc_B6E762: VCallAd Control_ID_mskDesde
  loc_B6E765: FStAdFunc var_AC
  loc_B6E768: FLdPr var_AC
  loc_B6E76B: LateIdLdVar var_D8 DispID_15 0
  loc_B6E772: PopAd
  loc_B6E774: FLdPr Me
  loc_B6E777: VCallAd Control_ID_mskHasta
  loc_B6E77A: FStAdFunc var_13C
  loc_B6E77D: FLdPr var_13C
  loc_B6E780: LateIdLdVar var_14C DispID_15 0
  loc_B6E787: PopAd
  loc_B6E789: FLdPr Me
  loc_B6E78C: VCallAd Control_ID_mskHasta
  loc_B6E78F: FStAdFunc var_1E0
  loc_B6E792: FLdPr var_1E0
  loc_B6E795: LateIdLdVar var_1F0 DispID_15 0
  loc_B6E79C: PopAd
  loc_B6E79E: FLdPr Me
  loc_B6E7A1: VCallAd Control_ID_mskHasta
  loc_B6E7A4: FStAdFunc var_284
  loc_B6E7A7: FLdPr var_284
  loc_B6E7AA: LateIdLdVar var_294 DispID_15 0
  loc_B6E7B1: PopAd
  loc_B6E7B3: LitStr "SELECT cheque.*, DetaProv, DetaBanc"
  loc_B6E7B6: LitStr ", IFNULL(art.NombArtra,'') NombArtra"
  loc_B6E7B9: ConcatStr
  loc_B6E7BA: FStStrNoPop var_B4
  loc_B6E7BD: LitStr " FROM cheque"
  loc_B6E7C0: ConcatStr
  loc_B6E7C1: FStStrNoPop var_B8
  loc_B6E7C4: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_B6E7C7: ConcatStr
  loc_B6E7C8: FStStrNoPop var_BC
  loc_B6E7CB: LitStr " INNER JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B6E7CE: ConcatStr
  loc_B6E7CF: FStStrNoPop var_C0
  loc_B6E7D2: LitStr " LEFT JOIN archtranfdeta atd ON atd.IdArtrad = cheque.IdArtrad"
  loc_B6E7D5: ConcatStr
  loc_B6E7D6: FStStrNoPop var_C4
  loc_B6E7D9: LitStr " LEFT JOIN archtranf art ON art.IdArtra = atd.IdArtra"
  loc_B6E7DC: ConcatStr
  loc_B6E7DD: FStStrNoPop var_C8
  loc_B6E7E0: LitStr " WHERE (FereCheq IS NOT NULL AND FereCheq BETWEEN "
  loc_B6E7E3: ConcatStr
  loc_B6E7E4: CVarStr var_118
  loc_B6E7E7: LitI4 1
  loc_B6E7EC: LitI4 1
  loc_B6E7F1: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_B6E7F6: FStVarCopyObj var_F8
  loc_B6E7F9: FLdRfVar var_F8
  loc_B6E7FC: FLdRfVar var_D8
  loc_B6E7FF: CStrVarTmp
  loc_B6E800: CVarStr var_E8
  loc_B6E803: FLdRfVar var_108
  loc_B6E806: ImpAdCallFPR4  = Format(, )
  loc_B6E80B: FLdRfVar var_108
  loc_B6E80E: ConcatVar var_128
  loc_B6E812: LitVarStr var_A8, " AND "
  loc_B6E817: ConcatVar var_138
  loc_B6E81B: LitI4 1
  loc_B6E820: LitI4 1
  loc_B6E825: LitVarStr var_16C, "'yyyy-mm-dd'"
  loc_B6E82A: FStVarCopyObj var_17C
  loc_B6E82D: FLdRfVar var_17C
  loc_B6E830: FLdRfVar var_14C
  loc_B6E833: CStrVarTmp
  loc_B6E834: CVarStr var_15C
  loc_B6E837: FLdRfVar var_18C
  loc_B6E83A: ImpAdCallFPR4  = Format(, )
  loc_B6E83F: FLdRfVar var_18C
  loc_B6E842: ConcatVar var_19C
  loc_B6E846: LitVarStr var_1AC, ")"
  loc_B6E84B: ConcatVar var_1BC
  loc_B6E84F: LitVarStr var_1CC, " AND (FepaCheq IS NULL OR FepaCheq > "
  loc_B6E854: ConcatVar var_1DC
  loc_B6E858: LitI4 1
  loc_B6E85D: LitI4 1
  loc_B6E862: LitVarStr var_210, "'yyyy-mm-dd'"
  loc_B6E867: FStVarCopyObj var_220
  loc_B6E86A: FLdRfVar var_220
  loc_B6E86D: FLdRfVar var_1F0
  loc_B6E870: CStrVarTmp
  loc_B6E871: CVarStr var_200
  loc_B6E874: FLdRfVar var_230
  loc_B6E877: ImpAdCallFPR4  = Format(, )
  loc_B6E87C: FLdRfVar var_230
  loc_B6E87F: ConcatVar var_240
  loc_B6E883: LitVarStr var_250, ")"
  loc_B6E888: ConcatVar var_260
  loc_B6E88C: LitVarStr var_270, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_B6E891: ConcatVar var_280
  loc_B6E895: LitI4 1
  loc_B6E89A: LitI4 1
  loc_B6E89F: LitVarStr var_2B4, "'yyyy-mm-dd'"
  loc_B6E8A4: FStVarCopyObj var_2C4
  loc_B6E8A7: FLdRfVar var_2C4
  loc_B6E8AA: FLdRfVar var_294
  loc_B6E8AD: CStrVarTmp
  loc_B6E8AE: CVarStr var_2A4
  loc_B6E8B1: FLdRfVar var_2D4
  loc_B6E8B4: ImpAdCallFPR4  = Format(, )
  loc_B6E8B9: FLdRfVar var_2D4
  loc_B6E8BC: ConcatVar var_2E4
  loc_B6E8C0: LitVarStr var_2F4, ")"
  loc_B6E8C5: ConcatVar var_304
  loc_B6E8C9: LitVarStr var_314, " AND AutoCheq = 3"
  loc_B6E8CE: ConcatVar var_324
  loc_B6E8D2: LitVarStr var_334, " ORDER BY NumeOrpa, CucuPers, CodiBanc, NumeMoba;"
  loc_B6E8D7: ConcatVar var_344
  loc_B6E8DB: CStrVarVal var_348
  loc_B6E8DF: FLdPr var_B0
  loc_B6E8E2: Call clsbase.RedefineRS(from_stack_1v)
  loc_B6E8E7: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B6E8F8: FFreeAd var_AC = "": var_13C = "": var_1E0 = ""
  loc_B6E903: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_108 = "": var_128 = "": var_14C = "": var_15C = "": var_17C = "": var_138 = "": var_18C = "": var_19C = "": var_1BC = "": var_1F0 = "": var_200 = "": var_220 = "": var_1DC = "": var_230 = "": var_240 = "": var_260 = "": var_294 = "": var_2A4 = "": var_2C4 = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_324 = ""
  loc_B6E940: FLdRfVar var_34C
  loc_B6E943: FLdPr var_B0
  loc_B6E946: from_stack_1 = clsbase.RecordCount
  loc_B6E94B: ILdRf var_34C
  loc_B6E94E: LitI4 0
  loc_B6E953: EqI4
  loc_B6E954: BranchF loc_B6E96A
  loc_B6E957: LitI4 0
  loc_B6E95C: LitStr "No existen registros para el criterio especificado"
  loc_B6E95F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6E964: Branch loc_B6F1FC
  loc_B6E967: Branch loc_B6EE9A
  loc_B6E96A: LitI4 1
  loc_B6E96F: FLdRfVar var_34C
  loc_B6E972: FLdPr var_B0
  loc_B6E975: from_stack_1 = clsbase.RecordCount
  loc_B6E97A: ILdRf var_34C
  loc_B6E97D: FLdPr Me
  loc_B6E980: MemLdRfVar from_stack_1.global_80
  loc_B6E983: Redim
  loc_B6E98D: FLdPr var_B0
  loc_B6E990: Call clsbase.MoveFirst()
  loc_B6E995: LitI4 1
  loc_B6E99A: FLdPr Me
  loc_B6E99D: MemLdRfVar from_stack_1.global_88
  loc_B6E9A0: FLdPr Me
  loc_B6E9A3: MemLdStr global_80
  loc_B6E9A6: LitI2_Byte 1
  loc_B6E9A8: FnUBound
  loc_B6E9AA: ForI4 var_354
  loc_B6E9B0: FLdRfVar var_1E0
  loc_B6E9B3: LitVarStr var_98, "NumeOrpa"
  loc_B6E9B8: PopAdLdVar
  loc_B6E9B9: FLdRfVar var_13C
  loc_B6E9BC: FLdRfVar var_AC
  loc_B6E9BF: FLdPr var_B0
  loc_B6E9C2: from_stack_1v = clsbase.RsFrmGet()
  loc_B6E9C7: FLdPr var_AC
  loc_B6E9CA:  = Me.Fields
  loc_B6E9CF: FLdPr var_13C
  loc_B6E9D2: from_stack_2 = Me.Item(from_stack_1)
  loc_B6E9D7: LitI2_Byte 0
  loc_B6E9D9: LitVar_Missing var_E8
  loc_B6E9DC: LitI2_Byte 0
  loc_B6E9DE: FLdZeroAd var_1E0
  loc_B6E9E1: CVarAd
  loc_B6E9E5: PopAdLdVar
  loc_B6E9E6: FLdPr Me
  loc_B6E9E9: MemLdStr global_88
  loc_B6E9EC: FLdPr Me
  loc_B6E9EF: MemLdStr global_80
  loc_B6E9F2: AryLock
  loc_B6E9F5: Ary1LdPr
  loc_B6E9F6: MemLdRfVar from_stack_1.global_0
  loc_B6E9F9: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6E9FE: AryUnlock
  loc_B6EA01: FFreeAd var_AC = ""
  loc_B6EA08: FFreeVar var_D8 = ""
  loc_B6EA0F: FLdRfVar var_1E0
  loc_B6EA12: LitVarStr var_98, "ExpeImpu"
  loc_B6EA17: PopAdLdVar
  loc_B6EA18: FLdRfVar var_13C
  loc_B6EA1B: FLdRfVar var_AC
  loc_B6EA1E: FLdPr var_B0
  loc_B6EA21: from_stack_1v = clsbase.RsFrmGet()
  loc_B6EA26: FLdPr var_AC
  loc_B6EA29:  = Me.Fields
  loc_B6EA2E: FLdPr var_13C
  loc_B6EA31: from_stack_2 = Me.Item(from_stack_1)
  loc_B6EA36: LitI2_Byte 0
  loc_B6EA38: LitVar_Missing var_E8
  loc_B6EA3B: LitI2_Byte 0
  loc_B6EA3D: FLdZeroAd var_1E0
  loc_B6EA40: CVarAd
  loc_B6EA44: PopAdLdVar
  loc_B6EA45: FLdPr Me
  loc_B6EA48: MemLdStr global_88
  loc_B6EA4B: FLdPr Me
  loc_B6EA4E: MemLdStr global_80
  loc_B6EA51: AryLock
  loc_B6EA54: Ary1LdPr
  loc_B6EA55: MemLdRfVar from_stack_1.global_4
  loc_B6EA58: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EA5D: AryUnlock
  loc_B6EA60: FFreeAd var_AC = ""
  loc_B6EA67: FFreeVar var_D8 = ""
  loc_B6EA6E: FLdRfVar var_1E0
  loc_B6EA71: LitVarStr var_98, "NumeLiqu"
  loc_B6EA76: PopAdLdVar
  loc_B6EA77: FLdRfVar var_13C
  loc_B6EA7A: FLdRfVar var_AC
  loc_B6EA7D: FLdPr var_B0
  loc_B6EA80: from_stack_1v = clsbase.RsFrmGet()
  loc_B6EA85: FLdPr var_AC
  loc_B6EA88:  = Me.Fields
  loc_B6EA8D: FLdPr var_13C
  loc_B6EA90: from_stack_2 = Me.Item(from_stack_1)
  loc_B6EA95: LitI2_Byte 0
  loc_B6EA97: LitVar_Missing var_E8
  loc_B6EA9A: LitI2_Byte 0
  loc_B6EA9C: FLdZeroAd var_1E0
  loc_B6EA9F: CVarAd
  loc_B6EAA3: PopAdLdVar
  loc_B6EAA4: FLdPr Me
  loc_B6EAA7: MemLdStr global_88
  loc_B6EAAA: FLdPr Me
  loc_B6EAAD: MemLdStr global_80
  loc_B6EAB0: AryLock
  loc_B6EAB3: Ary1LdPr
  loc_B6EAB4: MemLdRfVar from_stack_1.global_8
  loc_B6EAB7: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EABC: AryUnlock
  loc_B6EABF: FFreeAd var_AC = ""
  loc_B6EAC6: FFreeVar var_D8 = ""
  loc_B6EACD: FLdRfVar var_1E0
  loc_B6EAD0: LitVarStr var_98, "FechCheq"
  loc_B6EAD5: PopAdLdVar
  loc_B6EAD6: FLdRfVar var_13C
  loc_B6EAD9: FLdRfVar var_AC
  loc_B6EADC: FLdPr var_B0
  loc_B6EADF: from_stack_1v = clsbase.RsFrmGet()
  loc_B6EAE4: FLdPr var_AC
  loc_B6EAE7:  = Me.Fields
  loc_B6EAEC: FLdPr var_13C
  loc_B6EAEF: from_stack_2 = Me.Item(from_stack_1)
  loc_B6EAF4: LitI2_Byte 0
  loc_B6EAF6: LitVar_Missing var_E8
  loc_B6EAF9: LitI2_Byte 0
  loc_B6EAFB: FLdZeroAd var_1E0
  loc_B6EAFE: CVarAd
  loc_B6EB02: PopAdLdVar
  loc_B6EB03: FLdPr Me
  loc_B6EB06: MemLdStr global_88
  loc_B6EB09: FLdPr Me
  loc_B6EB0C: MemLdStr global_80
  loc_B6EB0F: AryLock
  loc_B6EB12: Ary1LdPr
  loc_B6EB13: MemLdRfVar from_stack_1.global_12
  loc_B6EB16: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EB1B: AryUnlock
  loc_B6EB1E: FFreeAd var_AC = ""
  loc_B6EB25: FFreeVar var_D8 = ""
  loc_B6EB2C: FLdRfVar var_1E0
  loc_B6EB2F: LitVarStr var_98, "FereCheq"
  loc_B6EB34: PopAdLdVar
  loc_B6EB35: FLdRfVar var_13C
  loc_B6EB38: FLdRfVar var_AC
  loc_B6EB3B: FLdPr var_B0
  loc_B6EB3E: from_stack_1v = clsbase.RsFrmGet()
  loc_B6EB43: FLdPr var_AC
  loc_B6EB46:  = Me.Fields
  loc_B6EB4B: FLdPr var_13C
  loc_B6EB4E: from_stack_2 = Me.Item(from_stack_1)
  loc_B6EB53: LitI2_Byte 0
  loc_B6EB55: LitVar_Missing var_E8
  loc_B6EB58: LitI2_Byte 0
  loc_B6EB5A: FLdZeroAd var_1E0
  loc_B6EB5D: CVarAd
  loc_B6EB61: PopAdLdVar
  loc_B6EB62: FLdPr Me
  loc_B6EB65: MemLdStr global_88
  loc_B6EB68: FLdPr Me
  loc_B6EB6B: MemLdStr global_80
  loc_B6EB6E: AryLock
  loc_B6EB71: Ary1LdPr
  loc_B6EB72: MemLdRfVar from_stack_1.global_16
  loc_B6EB75: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EB7A: AryUnlock
  loc_B6EB7D: FFreeAd var_AC = ""
  loc_B6EB84: FFreeVar var_D8 = ""
  loc_B6EB8B: FLdRfVar var_1E0
  loc_B6EB8E: LitVarStr var_98, "FepaCheq"
  loc_B6EB93: PopAdLdVar
  loc_B6EB94: FLdRfVar var_13C
  loc_B6EB97: FLdRfVar var_AC
  loc_B6EB9A: FLdPr var_B0
  loc_B6EB9D: from_stack_1v = clsbase.RsFrmGet()
  loc_B6EBA2: FLdPr var_AC
  loc_B6EBA5:  = Me.Fields
  loc_B6EBAA: FLdPr var_13C
  loc_B6EBAD: from_stack_2 = Me.Item(from_stack_1)
  loc_B6EBB2: LitI2_Byte 0
  loc_B6EBB4: LitVar_Missing var_E8
  loc_B6EBB7: LitI2_Byte 0
  loc_B6EBB9: FLdZeroAd var_1E0
  loc_B6EBBC: CVarAd
  loc_B6EBC0: PopAdLdVar
  loc_B6EBC1: FLdPr Me
  loc_B6EBC4: MemLdStr global_88
  loc_B6EBC7: FLdPr Me
  loc_B6EBCA: MemLdStr global_80
  loc_B6EBCD: AryLock
  loc_B6EBD0: Ary1LdPr
  loc_B6EBD1: MemLdRfVar from_stack_1.global_20
  loc_B6EBD4: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EBD9: AryUnlock
  loc_B6EBDC: FFreeAd var_AC = ""
  loc_B6EBE3: FFreeVar var_D8 = ""
  loc_B6EBEA: FLdRfVar var_1E0
  loc_B6EBED: LitVarStr var_98, "CucuPers"
  loc_B6EBF2: PopAdLdVar
  loc_B6EBF3: FLdRfVar var_13C
  loc_B6EBF6: FLdRfVar var_AC
  loc_B6EBF9: FLdPr var_B0
  loc_B6EBFC: from_stack_1v = clsbase.RsFrmGet()
  loc_B6EC01: FLdPr var_AC
  loc_B6EC04:  = Me.Fields
  loc_B6EC09: FLdPr var_13C
  loc_B6EC0C: from_stack_2 = Me.Item(from_stack_1)
  loc_B6EC11: LitI2_Byte 0
  loc_B6EC13: LitVar_Missing var_E8
  loc_B6EC16: LitI2_Byte 0
  loc_B6EC18: FLdZeroAd var_1E0
  loc_B6EC1B: CVarAd
  loc_B6EC1F: PopAdLdVar
  loc_B6EC20: FLdPr Me
  loc_B6EC23: MemLdStr global_88
  loc_B6EC26: FLdPr Me
  loc_B6EC29: MemLdStr global_80
  loc_B6EC2C: AryLock
  loc_B6EC2F: Ary1LdPr
  loc_B6EC30: MemLdRfVar from_stack_1.global_24
  loc_B6EC33: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EC38: AryUnlock
  loc_B6EC3B: FFreeAd var_AC = ""
  loc_B6EC42: FFreeVar var_D8 = ""
  loc_B6EC49: FLdRfVar var_1E0
  loc_B6EC4C: LitVarStr var_98, "DetaProv"
  loc_B6EC51: PopAdLdVar
  loc_B6EC52: FLdRfVar var_13C
  loc_B6EC55: FLdRfVar var_AC
  loc_B6EC58: FLdPr var_B0
  loc_B6EC5B: from_stack_1v = clsbase.RsFrmGet()
  loc_B6EC60: FLdPr var_AC
  loc_B6EC63:  = Me.Fields
  loc_B6EC68: FLdPr var_13C
  loc_B6EC6B: from_stack_2 = Me.Item(from_stack_1)
  loc_B6EC70: LitI2_Byte 0
  loc_B6EC72: LitVar_Missing var_E8
  loc_B6EC75: LitI2_Byte 0
  loc_B6EC77: FLdZeroAd var_1E0
  loc_B6EC7A: CVarAd
  loc_B6EC7E: PopAdLdVar
  loc_B6EC7F: FLdPr Me
  loc_B6EC82: MemLdStr global_88
  loc_B6EC85: FLdPr Me
  loc_B6EC88: MemLdStr global_80
  loc_B6EC8B: AryLock
  loc_B6EC8E: Ary1LdPr
  loc_B6EC8F: MemLdRfVar from_stack_1.global_28
  loc_B6EC92: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EC97: AryUnlock
  loc_B6EC9A: FFreeAd var_AC = ""
  loc_B6ECA1: FFreeVar var_D8 = ""
  loc_B6ECA8: FLdRfVar var_1E0
  loc_B6ECAB: LitVarStr var_98, "CodiBanc"
  loc_B6ECB0: PopAdLdVar
  loc_B6ECB1: FLdRfVar var_13C
  loc_B6ECB4: FLdRfVar var_AC
  loc_B6ECB7: FLdPr var_B0
  loc_B6ECBA: from_stack_1v = clsbase.RsFrmGet()
  loc_B6ECBF: FLdPr var_AC
  loc_B6ECC2:  = Me.Fields
  loc_B6ECC7: FLdPr var_13C
  loc_B6ECCA: from_stack_2 = Me.Item(from_stack_1)
  loc_B6ECCF: LitI2_Byte 0
  loc_B6ECD1: LitVar_Missing var_E8
  loc_B6ECD4: LitI2_Byte 0
  loc_B6ECD6: FLdZeroAd var_1E0
  loc_B6ECD9: CVarAd
  loc_B6ECDD: PopAdLdVar
  loc_B6ECDE: FLdPr Me
  loc_B6ECE1: MemLdStr global_88
  loc_B6ECE4: FLdPr Me
  loc_B6ECE7: MemLdStr global_80
  loc_B6ECEA: AryLock
  loc_B6ECED: Ary1LdPr
  loc_B6ECEE: MemLdRfVar from_stack_1.global_32
  loc_B6ECF1: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6ECF6: AryUnlock
  loc_B6ECF9: FFreeAd var_AC = ""
  loc_B6ED00: FFreeVar var_D8 = ""
  loc_B6ED07: FLdRfVar var_1E0
  loc_B6ED0A: LitVarStr var_98, "DetaBanc"
  loc_B6ED0F: PopAdLdVar
  loc_B6ED10: FLdRfVar var_13C
  loc_B6ED13: FLdRfVar var_AC
  loc_B6ED16: FLdPr var_B0
  loc_B6ED19: from_stack_1v = clsbase.RsFrmGet()
  loc_B6ED1E: FLdPr var_AC
  loc_B6ED21:  = Me.Fields
  loc_B6ED26: FLdPr var_13C
  loc_B6ED29: from_stack_2 = Me.Item(from_stack_1)
  loc_B6ED2E: LitI2_Byte 0
  loc_B6ED30: LitVar_Missing var_E8
  loc_B6ED33: LitI2_Byte 0
  loc_B6ED35: FLdZeroAd var_1E0
  loc_B6ED38: CVarAd
  loc_B6ED3C: PopAdLdVar
  loc_B6ED3D: FLdPr Me
  loc_B6ED40: MemLdStr global_88
  loc_B6ED43: FLdPr Me
  loc_B6ED46: MemLdStr global_80
  loc_B6ED49: AryLock
  loc_B6ED4C: Ary1LdPr
  loc_B6ED4D: MemLdRfVar from_stack_1.global_36
  loc_B6ED50: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6ED55: AryUnlock
  loc_B6ED58: FFreeAd var_AC = ""
  loc_B6ED5F: FFreeVar var_D8 = ""
  loc_B6ED66: FLdRfVar var_1E0
  loc_B6ED69: LitVarStr var_98, "NombArtra"
  loc_B6ED6E: PopAdLdVar
  loc_B6ED6F: FLdRfVar var_13C
  loc_B6ED72: FLdRfVar var_AC
  loc_B6ED75: FLdPr var_B0
  loc_B6ED78: from_stack_1v = clsbase.RsFrmGet()
  loc_B6ED7D: FLdPr var_AC
  loc_B6ED80:  = Me.Fields
  loc_B6ED85: FLdPr var_13C
  loc_B6ED88: from_stack_2 = Me.Item(from_stack_1)
  loc_B6ED8D: LitI2_Byte 0
  loc_B6ED8F: LitVar_Missing var_E8
  loc_B6ED92: LitI2_Byte 0
  loc_B6ED94: FLdZeroAd var_1E0
  loc_B6ED97: CVarAd
  loc_B6ED9B: PopAdLdVar
  loc_B6ED9C: FLdPr Me
  loc_B6ED9F: MemLdStr global_88
  loc_B6EDA2: FLdPr Me
  loc_B6EDA5: MemLdStr global_80
  loc_B6EDA8: AryLock
  loc_B6EDAB: Ary1LdPr
  loc_B6EDAC: MemLdRfVar from_stack_1.global_40
  loc_B6EDAF: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EDB4: AryUnlock
  loc_B6EDB7: FFreeAd var_AC = ""
  loc_B6EDBE: FFreeVar var_D8 = ""
  loc_B6EDC5: FLdRfVar var_1E0
  loc_B6EDC8: LitVarStr var_98, "NumeMoba"
  loc_B6EDCD: PopAdLdVar
  loc_B6EDCE: FLdRfVar var_13C
  loc_B6EDD1: FLdRfVar var_AC
  loc_B6EDD4: FLdPr var_B0
  loc_B6EDD7: from_stack_1v = clsbase.RsFrmGet()
  loc_B6EDDC: FLdPr var_AC
  loc_B6EDDF:  = Me.Fields
  loc_B6EDE4: FLdPr var_13C
  loc_B6EDE7: from_stack_2 = Me.Item(from_stack_1)
  loc_B6EDEC: LitI2_Byte 0
  loc_B6EDEE: LitVar_Missing var_E8
  loc_B6EDF1: LitI2_Byte 0
  loc_B6EDF3: FLdZeroAd var_1E0
  loc_B6EDF6: CVarAd
  loc_B6EDFA: PopAdLdVar
  loc_B6EDFB: FLdPr Me
  loc_B6EDFE: MemLdStr global_88
  loc_B6EE01: FLdPr Me
  loc_B6EE04: MemLdStr global_80
  loc_B6EE07: AryLock
  loc_B6EE0A: Ary1LdPr
  loc_B6EE0B: MemLdRfVar from_stack_1.global_44
  loc_B6EE0E: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EE13: AryUnlock
  loc_B6EE16: FFreeAd var_AC = ""
  loc_B6EE1D: FFreeVar var_D8 = ""
  loc_B6EE24: FLdRfVar var_1E0
  loc_B6EE27: LitVarStr var_98, "ImpoCheq"
  loc_B6EE2C: PopAdLdVar
  loc_B6EE2D: FLdRfVar var_13C
  loc_B6EE30: FLdRfVar var_AC
  loc_B6EE33: FLdPr var_B0
  loc_B6EE36: from_stack_1v = clsbase.RsFrmGet()
  loc_B6EE3B: FLdPr var_AC
  loc_B6EE3E:  = Me.Fields
  loc_B6EE43: FLdPr var_13C
  loc_B6EE46: from_stack_2 = Me.Item(from_stack_1)
  loc_B6EE4B: LitI2_Byte 0
  loc_B6EE4D: FLdPr Me
  loc_B6EE50: MemLdRfVar from_stack_1.global_92
  loc_B6EE53: CVarRef
  loc_B6EE58: LitI2_Byte &HFF
  loc_B6EE5A: FLdZeroAd var_1E0
  loc_B6EE5D: CVarAd
  loc_B6EE61: PopAdLdVar
  loc_B6EE62: FLdPr Me
  loc_B6EE65: MemLdStr global_88
  loc_B6EE68: FLdPr Me
  loc_B6EE6B: MemLdStr global_80
  loc_B6EE6E: AryLock
  loc_B6EE71: Ary1LdPr
  loc_B6EE72: MemLdRfVar from_stack_1.global_48
  loc_B6EE75: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6EE7A: AryUnlock
  loc_B6EE7D: FFreeAd var_AC = ""
  loc_B6EE84: FFree1Var var_D8 = ""
  loc_B6EE87: FLdPr var_B0
  loc_B6EE8A: Call clsbase.MoveSiguiente()
  loc_B6EE8F: FLdPr Me
  loc_B6EE92: MemLdRfVar from_stack_1.global_88
  loc_B6EE95: NextI4 var_354, loc_B6E9B0
  loc_B6EE9A: LitNothing
  loc_B6EE9C: FStAd var_B0 
  loc_B6EEA0: LitStr "0"
  loc_B6EEA3: FLdPr Me
  loc_B6EEA6: MemStStrCopy
  loc_B6EEAA: FLdPr Me
  loc_B6EEAD: MemLdRfVar from_stack_1.global_72
  loc_B6EEB0: NewIfNullAd
  loc_B6EEB3: FStAd var_35C 
  loc_B6EEB7: FLdPr Me
  loc_B6EEBA: VCallAd Control_ID_mskDesde
  loc_B6EEBD: FStAdFunc var_AC
  loc_B6EEC0: FLdPr var_AC
  loc_B6EEC3: LateIdLdVar var_D8 DispID_15 0
  loc_B6EECA: PopAd
  loc_B6EECC: FLdPr Me
  loc_B6EECF: VCallAd Control_ID_mskHasta
  loc_B6EED2: FStAdFunc var_13C
  loc_B6EED5: FLdPr var_13C
  loc_B6EED8: LateIdLdVar var_14C DispID_15 0
  loc_B6EEDF: PopAd
  loc_B6EEE1: FLdPr Me
  loc_B6EEE4: VCallAd Control_ID_mskHasta
  loc_B6EEE7: FStAdFunc var_1E0
  loc_B6EEEA: FLdPr var_1E0
  loc_B6EEED: LateIdLdVar var_1F0 DispID_15 0
  loc_B6EEF4: PopAd
  loc_B6EEF6: FLdPr Me
  loc_B6EEF9: VCallAd Control_ID_mskHasta
  loc_B6EEFC: FStAdFunc var_284
  loc_B6EEFF: FLdPr var_284
  loc_B6EF02: LateIdLdVar var_294 DispID_15 0
  loc_B6EF09: PopAd
  loc_B6EF0B: LitStr "SELECT ch.CodiBanc, DetaBanc, Sum(ImpoCheq) ImpoCheq"
  loc_B6EF0E: LitStr " FROM cheque ch"
  loc_B6EF11: ConcatStr
  loc_B6EF12: FStStrNoPop var_B4
  loc_B6EF15: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B6EF18: ConcatStr
  loc_B6EF19: FStStrNoPop var_B8
  loc_B6EF1C: LitStr " WHERE (FereCheq IS NOT NULL AND FereCheq BETWEEN '"
  loc_B6EF1F: ConcatStr
  loc_B6EF20: CVarStr var_118
  loc_B6EF23: LitI4 1
  loc_B6EF28: LitI4 1
  loc_B6EF2D: LitVarStr var_98, "yyyy-mm-dd"
  loc_B6EF32: FStVarCopyObj var_F8
  loc_B6EF35: FLdRfVar var_F8
  loc_B6EF38: FLdRfVar var_D8
  loc_B6EF3B: CStrVarTmp
  loc_B6EF3C: CVarStr var_E8
  loc_B6EF3F: FLdRfVar var_108
  loc_B6EF42: ImpAdCallFPR4  = Format(, )
  loc_B6EF47: FLdRfVar var_108
  loc_B6EF4A: ConcatVar var_128
  loc_B6EF4E: LitVarStr var_A8, "' AND '"
  loc_B6EF53: ConcatVar var_138
  loc_B6EF57: LitI4 1
  loc_B6EF5C: LitI4 1
  loc_B6EF61: LitVarStr var_16C, "yyyy-mm-dd"
  loc_B6EF66: FStVarCopyObj var_17C
  loc_B6EF69: FLdRfVar var_17C
  loc_B6EF6C: FLdRfVar var_14C
  loc_B6EF6F: CStrVarTmp
  loc_B6EF70: CVarStr var_15C
  loc_B6EF73: FLdRfVar var_18C
  loc_B6EF76: ImpAdCallFPR4  = Format(, )
  loc_B6EF7B: FLdRfVar var_18C
  loc_B6EF7E: ConcatVar var_19C
  loc_B6EF82: LitVarStr var_1AC, "')"
  loc_B6EF87: ConcatVar var_1BC
  loc_B6EF8B: LitVarStr var_1CC, " AND (FepaCheq IS NULL OR FepaCheq > '"
  loc_B6EF90: ConcatVar var_1DC
  loc_B6EF94: LitI4 1
  loc_B6EF99: LitI4 1
  loc_B6EF9E: LitVarStr var_210, "yyyy-mm-dd"
  loc_B6EFA3: FStVarCopyObj var_220
  loc_B6EFA6: FLdRfVar var_220
  loc_B6EFA9: FLdRfVar var_1F0
  loc_B6EFAC: CStrVarTmp
  loc_B6EFAD: CVarStr var_200
  loc_B6EFB0: FLdRfVar var_230
  loc_B6EFB3: ImpAdCallFPR4  = Format(, )
  loc_B6EFB8: FLdRfVar var_230
  loc_B6EFBB: ConcatVar var_240
  loc_B6EFBF: LitVarStr var_250, "')"
  loc_B6EFC4: ConcatVar var_260
  loc_B6EFC8: LitVarStr var_270, " AND (FeanCheq IS NULL OR FeanCheq > '"
  loc_B6EFCD: ConcatVar var_280
  loc_B6EFD1: LitI4 1
  loc_B6EFD6: LitI4 1
  loc_B6EFDB: LitVarStr var_2B4, "yyyy-mm-dd"
  loc_B6EFE0: FStVarCopyObj var_2C4
  loc_B6EFE3: FLdRfVar var_2C4
  loc_B6EFE6: FLdRfVar var_294
  loc_B6EFE9: CStrVarTmp
  loc_B6EFEA: CVarStr var_2A4
  loc_B6EFED: FLdRfVar var_2D4
  loc_B6EFF0: ImpAdCallFPR4  = Format(, )
  loc_B6EFF5: FLdRfVar var_2D4
  loc_B6EFF8: ConcatVar var_2E4
  loc_B6EFFC: LitVarStr var_2F4, "')"
  loc_B6F001: ConcatVar var_304
  loc_B6F005: LitVarStr var_314, " AND AutoCheq = 3"
  loc_B6F00A: ConcatVar var_324
  loc_B6F00E: LitVarStr var_334, " GROUP BY CodiBanc;"
  loc_B6F013: ConcatVar var_344
  loc_B6F017: CStrVarVal var_BC
  loc_B6F01B: FLdPr var_35C
  loc_B6F01E: Call clsbase.RedefineRS(from_stack_1v)
  loc_B6F023: FFreeStr var_B4 = "": var_B8 = ""
  loc_B6F02C: FFreeAd var_AC = "": var_13C = "": var_1E0 = ""
  loc_B6F037: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_108 = "": var_128 = "": var_14C = "": var_15C = "": var_17C = "": var_138 = "": var_18C = "": var_19C = "": var_1BC = "": var_1F0 = "": var_200 = "": var_220 = "": var_1DC = "": var_230 = "": var_240 = "": var_260 = "": var_294 = "": var_2A4 = "": var_2C4 = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_324 = ""
  loc_B6F074: LitI4 1
  loc_B6F079: FLdRfVar var_34C
  loc_B6F07C: FLdPr var_35C
  loc_B6F07F: from_stack_1 = clsbase.RecordCount
  loc_B6F084: ILdRf var_34C
  loc_B6F087: FLdPr Me
  loc_B6F08A: MemLdRfVar from_stack_1.global_84
  loc_B6F08D: Redim
  loc_B6F097: FLdPr var_35C
  loc_B6F09A: Call clsbase.MoveFirst()
  loc_B6F09F: LitI4 1
  loc_B6F0A4: FLdPr Me
  loc_B6F0A7: MemLdRfVar from_stack_1.global_88
  loc_B6F0AA: FLdPr Me
  loc_B6F0AD: MemLdStr global_84
  loc_B6F0B0: LitI2_Byte 1
  loc_B6F0B2: FnUBound
  loc_B6F0B4: ForI4 var_364
  loc_B6F0BA: FLdRfVar var_1E0
  loc_B6F0BD: LitVarStr var_98, "CodiBanc"
  loc_B6F0C2: PopAdLdVar
  loc_B6F0C3: FLdRfVar var_13C
  loc_B6F0C6: FLdRfVar var_AC
  loc_B6F0C9: FLdPr var_35C
  loc_B6F0CC: from_stack_1v = clsbase.RsFrmGet()
  loc_B6F0D1: FLdPr var_AC
  loc_B6F0D4:  = Me.Fields
  loc_B6F0D9: FLdPr var_13C
  loc_B6F0DC: from_stack_2 = Me.Item(from_stack_1)
  loc_B6F0E1: LitI2_Byte 0
  loc_B6F0E3: LitVar_Missing var_E8
  loc_B6F0E6: LitI2_Byte 0
  loc_B6F0E8: FLdZeroAd var_1E0
  loc_B6F0EB: CVarAd
  loc_B6F0EF: PopAdLdVar
  loc_B6F0F0: FLdPr Me
  loc_B6F0F3: MemLdStr global_88
  loc_B6F0F6: FLdPr Me
  loc_B6F0F9: MemLdStr global_84
  loc_B6F0FC: AryLock
  loc_B6F0FF: Ary1LdPr
  loc_B6F100: MemLdRfVar from_stack_1.global_32
  loc_B6F103: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6F108: AryUnlock
  loc_B6F10B: FFreeAd var_AC = ""
  loc_B6F112: FFreeVar var_D8 = ""
  loc_B6F119: FLdRfVar var_1E0
  loc_B6F11C: LitVarStr var_98, "DetaBanc"
  loc_B6F121: PopAdLdVar
  loc_B6F122: FLdRfVar var_13C
  loc_B6F125: FLdRfVar var_AC
  loc_B6F128: FLdPr var_35C
  loc_B6F12B: from_stack_1v = clsbase.RsFrmGet()
  loc_B6F130: FLdPr var_AC
  loc_B6F133:  = Me.Fields
  loc_B6F138: FLdPr var_13C
  loc_B6F13B: from_stack_2 = Me.Item(from_stack_1)
  loc_B6F140: LitI2_Byte 0
  loc_B6F142: LitVar_Missing var_E8
  loc_B6F145: LitI2_Byte 0
  loc_B6F147: FLdZeroAd var_1E0
  loc_B6F14A: CVarAd
  loc_B6F14E: PopAdLdVar
  loc_B6F14F: FLdPr Me
  loc_B6F152: MemLdStr global_88
  loc_B6F155: FLdPr Me
  loc_B6F158: MemLdStr global_84
  loc_B6F15B: AryLock
  loc_B6F15E: Ary1LdPr
  loc_B6F15F: MemLdRfVar from_stack_1.global_36
  loc_B6F162: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6F167: AryUnlock
  loc_B6F16A: FFreeAd var_AC = ""
  loc_B6F171: FFreeVar var_D8 = ""
  loc_B6F178: FLdRfVar var_1E0
  loc_B6F17B: LitVarStr var_98, "ImpoCheq"
  loc_B6F180: PopAdLdVar
  loc_B6F181: FLdRfVar var_13C
  loc_B6F184: FLdRfVar var_AC
  loc_B6F187: FLdPr var_35C
  loc_B6F18A: from_stack_1v = clsbase.RsFrmGet()
  loc_B6F18F: FLdPr var_AC
  loc_B6F192:  = Me.Fields
  loc_B6F197: FLdPr var_13C
  loc_B6F19A: from_stack_2 = Me.Item(from_stack_1)
  loc_B6F19F: LitI2_Byte 0
  loc_B6F1A1: FLdPr Me
  loc_B6F1A4: MemLdRfVar from_stack_1.global_96
  loc_B6F1A7: CVarRef
  loc_B6F1AC: LitI2_Byte &HFF
  loc_B6F1AE: FLdZeroAd var_1E0
  loc_B6F1B1: CVarAd
  loc_B6F1B5: PopAdLdVar
  loc_B6F1B6: FLdPr Me
  loc_B6F1B9: MemLdStr global_88
  loc_B6F1BC: FLdPr Me
  loc_B6F1BF: MemLdStr global_84
  loc_B6F1C2: AryLock
  loc_B6F1C5: Ary1LdPr
  loc_B6F1C6: MemLdRfVar from_stack_1.global_48
  loc_B6F1C9: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6F1CE: AryUnlock
  loc_B6F1D1: FFreeAd var_AC = ""
  loc_B6F1D8: FFree1Var var_D8 = ""
  loc_B6F1DB: FLdPr var_35C
  loc_B6F1DE: Call clsbase.MoveSiguiente()
  loc_B6F1E3: FLdPr Me
  loc_B6F1E6: MemLdRfVar from_stack_1.global_88
  loc_B6F1E9: NextI4 var_364, loc_B6F0BA
  loc_B6F1EE: LitNothing
  loc_B6F1F0: FStAd var_35C 
  loc_B6F1F4: LitI2_Byte &HFF
  loc_B6F1F6: FLdPr Me
  loc_B6F1F9: MemStI2 bGenerado
  loc_B6F1FC: LitI4 0
  loc_B6F201: CI2I4
  loc_B6F202: FLdPr Me
  loc_B6F205: Me.MousePointer = from_stack_1
  loc_B6F20A: LitVarStr var_98, vbNullString
  loc_B6F20F: PopAdLdVar
  loc_B6F210: FLdPr Me
  loc_B6F213: VCallAd Control_ID_statusBar
  loc_B6F216: FStAdFunc var_AC
  loc_B6F219: FLdPr var_AC
  loc_B6F21C: LateIdSt
  loc_B6F221: FFree1Ad var_AC
  loc_B6F224: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'ABA518
  'Data Table: 45D570
  loc_AB9F68: FLdRfVar var_88
  loc_AB9F6B: LitI2_Byte 0
  loc_AB9F6D: LitI2_Byte &HFF
  loc_AB9F6F: ImpAdLdI4 MemVar_C3D83C
  loc_AB9F72: FLdPr Me
  loc_AB9F75: MemLdRfVar from_stack_1.global_76
  loc_AB9F78: NewIfNullPr IFileSystem3
  loc_AB9F7B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AB9F80: ILdRf var_88
  loc_AB9F83: FLdPr Me
  loc_AB9F86: MemStVarAd
  loc_AB9F8A: FFree1Ad var_88
  loc_AB9F8D: Call Proc_294_26_A7F9B0()
  loc_AB9F92: LitI4 1
  loc_AB9F97: FLdPr Me
  loc_AB9F9A: MemLdRfVar from_stack_1.global_88
  loc_AB9F9D: FLdPr Me
  loc_AB9FA0: MemLdStr global_80
  loc_AB9FA3: LitI2_Byte 1
  loc_AB9FA5: FnUBound
  loc_AB9FA7: ForI4 var_90
  loc_AB9FAD: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB9FB2: PopAdLdVar
  loc_AB9FB3: FLdPr Me
  loc_AB9FB6: MemLdRfVar from_stack_1.htmFile
  loc_AB9FB9: LdPrVar
  loc_AB9FBB: LateMemCall
  loc_AB9FC1: FLdPr Me
  loc_AB9FC4: MemLdStr global_88
  loc_AB9FC7: FLdPr Me
  loc_AB9FCA: MemLdStr global_80
  loc_AB9FCD: AryLock
  loc_AB9FD0: Ary1LdRf
  loc_AB9FD1: FStR4 var_B8
  loc_AB9FD4: LitI4 0
  loc_AB9FD9: LitI4 0
  loc_AB9FDE: LitI2_Byte 0
  loc_AB9FE0: LitStr "right"
  loc_AB9FE3: FMemLdR4 var_B8(0)
  loc_AB9FE8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB9FED: CVarStr var_C8
  loc_AB9FF0: PopAdLdVar
  loc_AB9FF1: FLdPr Me
  loc_AB9FF4: MemLdRfVar from_stack_1.htmFile
  loc_AB9FF7: LdPrVar
  loc_AB9FF9: LateMemCall
  loc_AB9FFF: FFree1Var var_C8 = ""
  loc_ABA002: LitI4 0
  loc_ABA007: LitI4 0
  loc_ABA00C: LitI2_Byte 0
  loc_ABA00E: LitStr "left"
  loc_ABA011: FMemLdR4 var_B8(4)
  loc_ABA016: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA01B: CVarStr var_C8
  loc_ABA01E: PopAdLdVar
  loc_ABA01F: FLdPr Me
  loc_ABA022: MemLdRfVar from_stack_1.htmFile
  loc_ABA025: LdPrVar
  loc_ABA027: LateMemCall
  loc_ABA02D: FFree1Var var_C8 = ""
  loc_ABA030: LitI4 0
  loc_ABA035: LitI4 0
  loc_ABA03A: LitI2_Byte 0
  loc_ABA03C: LitStr "right"
  loc_ABA03F: FMemLdR4 var_B8(8)
  loc_ABA044: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA049: CVarStr var_C8
  loc_ABA04C: PopAdLdVar
  loc_ABA04D: FLdPr Me
  loc_ABA050: MemLdRfVar from_stack_1.htmFile
  loc_ABA053: LdPrVar
  loc_ABA055: LateMemCall
  loc_ABA05B: FFree1Var var_C8 = ""
  loc_ABA05E: LitI4 0
  loc_ABA063: LitI4 0
  loc_ABA068: LitI2_Byte 0
  loc_ABA06A: LitStr "center"
  loc_ABA06D: FMemLdR4 var_B8(12)
  loc_ABA072: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA077: CVarStr var_C8
  loc_ABA07A: PopAdLdVar
  loc_ABA07B: FLdPr Me
  loc_ABA07E: MemLdRfVar from_stack_1.htmFile
  loc_ABA081: LdPrVar
  loc_ABA083: LateMemCall
  loc_ABA089: FFree1Var var_C8 = ""
  loc_ABA08C: LitI4 0
  loc_ABA091: LitI4 0
  loc_ABA096: LitI2_Byte 0
  loc_ABA098: LitStr "center"
  loc_ABA09B: FMemLdR4 var_B8(16)
  loc_ABA0A0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA0A5: CVarStr var_C8
  loc_ABA0A8: PopAdLdVar
  loc_ABA0A9: FLdPr Me
  loc_ABA0AC: MemLdRfVar from_stack_1.htmFile
  loc_ABA0AF: LdPrVar
  loc_ABA0B1: LateMemCall
  loc_ABA0B7: FFree1Var var_C8 = ""
  loc_ABA0BA: LitI4 0
  loc_ABA0BF: LitI4 0
  loc_ABA0C4: LitI2_Byte 0
  loc_ABA0C6: LitStr "center"
  loc_ABA0C9: FMemLdR4 var_B8(20)
  loc_ABA0CE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA0D3: CVarStr var_C8
  loc_ABA0D6: PopAdLdVar
  loc_ABA0D7: FLdPr Me
  loc_ABA0DA: MemLdRfVar from_stack_1.htmFile
  loc_ABA0DD: LdPrVar
  loc_ABA0DF: LateMemCall
  loc_ABA0E5: FFree1Var var_C8 = ""
  loc_ABA0E8: LitI4 0
  loc_ABA0ED: LitI4 0
  loc_ABA0F2: LitI2_Byte 0
  loc_ABA0F4: LitStr "left"
  loc_ABA0F7: FMemLdR4 var_B8(24)
  loc_ABA0FC: LitStr " "
  loc_ABA0FF: ConcatStr
  loc_ABA100: FStStrNoPop var_CC
  loc_ABA103: FMemLdR4 var_B8(28)
  loc_ABA108: ConcatStr
  loc_ABA109: FStStrNoPop var_D0
  loc_ABA10C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA111: CVarStr var_C8
  loc_ABA114: PopAdLdVar
  loc_ABA115: FLdPr Me
  loc_ABA118: MemLdRfVar from_stack_1.htmFile
  loc_ABA11B: LdPrVar
  loc_ABA11D: LateMemCall
  loc_ABA123: FFreeStr var_CC = ""
  loc_ABA12A: FFree1Var var_C8 = ""
  loc_ABA12D: LitI4 0
  loc_ABA132: LitI4 0
  loc_ABA137: LitI2_Byte 0
  loc_ABA139: LitStr "left"
  loc_ABA13C: FMemLdR4 var_B8(32)
  loc_ABA141: LitStr " "
  loc_ABA144: ConcatStr
  loc_ABA145: FStStrNoPop var_CC
  loc_ABA148: FMemLdR4 var_B8(36)
  loc_ABA14D: ConcatStr
  loc_ABA14E: FStStrNoPop var_D0
  loc_ABA151: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA156: CVarStr var_C8
  loc_ABA159: PopAdLdVar
  loc_ABA15A: FLdPr Me
  loc_ABA15D: MemLdRfVar from_stack_1.htmFile
  loc_ABA160: LdPrVar
  loc_ABA162: LateMemCall
  loc_ABA168: FFreeStr var_CC = ""
  loc_ABA16F: FFree1Var var_C8 = ""
  loc_ABA172: LitI4 0
  loc_ABA177: LitI4 0
  loc_ABA17C: LitI2_Byte 0
  loc_ABA17E: LitStr "right"
  loc_ABA181: FMemLdR4 var_B8(40)
  loc_ABA186: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA18B: CVarStr var_C8
  loc_ABA18E: PopAdLdVar
  loc_ABA18F: FLdPr Me
  loc_ABA192: MemLdRfVar from_stack_1.htmFile
  loc_ABA195: LdPrVar
  loc_ABA197: LateMemCall
  loc_ABA19D: FFree1Var var_C8 = ""
  loc_ABA1A0: LitI4 0
  loc_ABA1A5: LitI4 0
  loc_ABA1AA: LitI2_Byte 0
  loc_ABA1AC: LitStr "right"
  loc_ABA1AF: FMemLdR4 var_B8(44)
  loc_ABA1B4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA1B9: CVarStr var_C8
  loc_ABA1BC: PopAdLdVar
  loc_ABA1BD: FLdPr Me
  loc_ABA1C0: MemLdRfVar from_stack_1.htmFile
  loc_ABA1C3: LdPrVar
  loc_ABA1C5: LateMemCall
  loc_ABA1CB: FFree1Var var_C8 = ""
  loc_ABA1CE: LitI4 0
  loc_ABA1D3: LitI4 0
  loc_ABA1D8: LitI2_Byte 0
  loc_ABA1DA: LitStr "right"
  loc_ABA1DD: FMemLdR4 var_B8(48)
  loc_ABA1E2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA1E7: CVarStr var_C8
  loc_ABA1EA: PopAdLdVar
  loc_ABA1EB: FLdPr Me
  loc_ABA1EE: MemLdRfVar from_stack_1.htmFile
  loc_ABA1F1: LdPrVar
  loc_ABA1F3: LateMemCall
  loc_ABA1F9: FFree1Var var_C8 = ""
  loc_ABA1FC: LitVarStr var_A0, "</tr>"
  loc_ABA201: PopAdLdVar
  loc_ABA202: FLdPr Me
  loc_ABA205: MemLdRfVar from_stack_1.htmFile
  loc_ABA208: LdPrVar
  loc_ABA20A: LateMemCall
  loc_ABA210: LitI4 0
  loc_ABA215: FStR4 var_B8
  loc_ABA218: AryUnlock
  loc_ABA21B: FLdPr Me
  loc_ABA21E: MemLdRfVar from_stack_1.global_88
  loc_ABA221: NextI4 var_90, loc_AB9FAD
  loc_ABA226: LitVarStr var_A0, "  <tr>"
  loc_ABA22B: PopAdLdVar
  loc_ABA22C: FLdPr Me
  loc_ABA22F: MemLdRfVar from_stack_1.htmFile
  loc_ABA232: LdPrVar
  loc_ABA234: LateMemCall
  loc_ABA23A: LitVarStr var_A0, "     <td colspan=""10"">&nbsp;</td>"
  loc_ABA23F: PopAdLdVar
  loc_ABA240: FLdPr Me
  loc_ABA243: MemLdRfVar from_stack_1.htmFile
  loc_ABA246: LdPrVar
  loc_ABA248: LateMemCall
  loc_ABA24E: LitStr "     <td class=""Totales"" align=""right"">"
  loc_ABA251: FLdPr Me
  loc_ABA254: MemLdStr global_92
  loc_ABA257: ConcatStr
  loc_ABA258: FStStrNoPop var_CC
  loc_ABA25B: LitStr "</td>"
  loc_ABA25E: ConcatStr
  loc_ABA25F: CVarStr var_C8
  loc_ABA262: PopAdLdVar
  loc_ABA263: FLdPr Me
  loc_ABA266: MemLdRfVar from_stack_1.htmFile
  loc_ABA269: LdPrVar
  loc_ABA26B: LateMemCall
  loc_ABA271: FFree1Str var_CC
  loc_ABA274: FFree1Var var_C8 = ""
  loc_ABA277: LitVarStr var_A0, "  </tr>"
  loc_ABA27C: PopAdLdVar
  loc_ABA27D: FLdPr Me
  loc_ABA280: MemLdRfVar from_stack_1.htmFile
  loc_ABA283: LdPrVar
  loc_ABA285: LateMemCall
  loc_ABA28B: LitVarStr var_A0, "</table>"
  loc_ABA290: PopAdLdVar
  loc_ABA291: FLdPr Me
  loc_ABA294: MemLdRfVar from_stack_1.htmFile
  loc_ABA297: LdPrVar
  loc_ABA299: LateMemCall
  loc_ABA29F: LitVarStr var_A0, "<br><br>"
  loc_ABA2A4: PopAdLdVar
  loc_ABA2A5: FLdPr Me
  loc_ABA2A8: MemLdRfVar from_stack_1.htmFile
  loc_ABA2AB: LdPrVar
  loc_ABA2AD: LateMemCall
  loc_ABA2B3: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ABA2B8: PopAdLdVar
  loc_ABA2B9: FLdPr Me
  loc_ABA2BC: MemLdRfVar from_stack_1.htmFile
  loc_ABA2BF: LdPrVar
  loc_ABA2C1: LateMemCall
  loc_ABA2C7: LitVarStr var_A0, "  <THEAD>"
  loc_ABA2CC: PopAdLdVar
  loc_ABA2CD: FLdPr Me
  loc_ABA2D0: MemLdRfVar from_stack_1.htmFile
  loc_ABA2D3: LdPrVar
  loc_ABA2D5: LateMemCall
  loc_ABA2DB: LitVarStr var_A0, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_ABA2E0: PopAdLdVar
  loc_ABA2E1: FLdPr Me
  loc_ABA2E4: MemLdRfVar from_stack_1.htmFile
  loc_ABA2E7: LdPrVar
  loc_ABA2E9: LateMemCall
  loc_ABA2EF: LitVarStr var_A0, "    <th colspan=""3"">Resumen por Banco</th>"
  loc_ABA2F4: PopAdLdVar
  loc_ABA2F5: FLdPr Me
  loc_ABA2F8: MemLdRfVar from_stack_1.htmFile
  loc_ABA2FB: LdPrVar
  loc_ABA2FD: LateMemCall
  loc_ABA303: LitVarStr var_A0, "  </tr>"
  loc_ABA308: PopAdLdVar
  loc_ABA309: FLdPr Me
  loc_ABA30C: MemLdRfVar from_stack_1.htmFile
  loc_ABA30F: LdPrVar
  loc_ABA311: LateMemCall
  loc_ABA317: LitVarStr var_A0, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_ABA31C: PopAdLdVar
  loc_ABA31D: FLdPr Me
  loc_ABA320: MemLdRfVar from_stack_1.htmFile
  loc_ABA323: LdPrVar
  loc_ABA325: LateMemCall
  loc_ABA32B: LitVarStr var_A0, "    <th>Código</th>"
  loc_ABA330: PopAdLdVar
  loc_ABA331: FLdPr Me
  loc_ABA334: MemLdRfVar from_stack_1.htmFile
  loc_ABA337: LdPrVar
  loc_ABA339: LateMemCall
  loc_ABA33F: LitVarStr var_A0, "    <th>Banco</th>"
  loc_ABA344: PopAdLdVar
  loc_ABA345: FLdPr Me
  loc_ABA348: MemLdRfVar from_stack_1.htmFile
  loc_ABA34B: LdPrVar
  loc_ABA34D: LateMemCall
  loc_ABA353: LitVarStr var_A0, "    <th>Cheques a cargo</th>"
  loc_ABA358: PopAdLdVar
  loc_ABA359: FLdPr Me
  loc_ABA35C: MemLdRfVar from_stack_1.htmFile
  loc_ABA35F: LdPrVar
  loc_ABA361: LateMemCall
  loc_ABA367: LitVarStr var_A0, "  </tr>"
  loc_ABA36C: PopAdLdVar
  loc_ABA36D: FLdPr Me
  loc_ABA370: MemLdRfVar from_stack_1.htmFile
  loc_ABA373: LdPrVar
  loc_ABA375: LateMemCall
  loc_ABA37B: LitVarStr var_A0, "  </THEAD>"
  loc_ABA380: PopAdLdVar
  loc_ABA381: FLdPr Me
  loc_ABA384: MemLdRfVar from_stack_1.htmFile
  loc_ABA387: LdPrVar
  loc_ABA389: LateMemCall
  loc_ABA38F: LitI4 1
  loc_ABA394: FLdPr Me
  loc_ABA397: MemLdRfVar from_stack_1.global_88
  loc_ABA39A: FLdPr Me
  loc_ABA39D: MemLdStr global_84
  loc_ABA3A0: LitI2_Byte 1
  loc_ABA3A2: FnUBound
  loc_ABA3A4: ForI4 var_D8
  loc_ABA3AA: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ABA3AF: PopAdLdVar
  loc_ABA3B0: FLdPr Me
  loc_ABA3B3: MemLdRfVar from_stack_1.htmFile
  loc_ABA3B6: LdPrVar
  loc_ABA3B8: LateMemCall
  loc_ABA3BE: FLdPr Me
  loc_ABA3C1: MemLdStr global_88
  loc_ABA3C4: FLdPr Me
  loc_ABA3C7: MemLdStr global_84
  loc_ABA3CA: AryLock
  loc_ABA3CD: Ary1LdRf
  loc_ABA3CE: FStR4 var_E0
  loc_ABA3D1: LitI4 0
  loc_ABA3D6: LitI4 0
  loc_ABA3DB: LitI2_Byte 0
  loc_ABA3DD: LitStr "right"
  loc_ABA3E0: FMemLdR4 var_E0(32)
  loc_ABA3E5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA3EA: CVarStr var_C8
  loc_ABA3ED: PopAdLdVar
  loc_ABA3EE: FLdPr Me
  loc_ABA3F1: MemLdRfVar from_stack_1.htmFile
  loc_ABA3F4: LdPrVar
  loc_ABA3F6: LateMemCall
  loc_ABA3FC: FFree1Var var_C8 = ""
  loc_ABA3FF: LitI4 0
  loc_ABA404: LitI4 0
  loc_ABA409: LitI2_Byte 0
  loc_ABA40B: LitStr "left"
  loc_ABA40E: FMemLdR4 var_E0(36)
  loc_ABA413: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA418: CVarStr var_C8
  loc_ABA41B: PopAdLdVar
  loc_ABA41C: FLdPr Me
  loc_ABA41F: MemLdRfVar from_stack_1.htmFile
  loc_ABA422: LdPrVar
  loc_ABA424: LateMemCall
  loc_ABA42A: FFree1Var var_C8 = ""
  loc_ABA42D: LitI4 0
  loc_ABA432: LitI4 0
  loc_ABA437: LitI2_Byte 0
  loc_ABA439: LitStr "right"
  loc_ABA43C: FMemLdR4 var_E0(48)
  loc_ABA441: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABA446: CVarStr var_C8
  loc_ABA449: PopAdLdVar
  loc_ABA44A: FLdPr Me
  loc_ABA44D: MemLdRfVar from_stack_1.htmFile
  loc_ABA450: LdPrVar
  loc_ABA452: LateMemCall
  loc_ABA458: FFree1Var var_C8 = ""
  loc_ABA45B: LitVarStr var_A0, "  </tr>"
  loc_ABA460: PopAdLdVar
  loc_ABA461: FLdPr Me
  loc_ABA464: MemLdRfVar from_stack_1.htmFile
  loc_ABA467: LdPrVar
  loc_ABA469: LateMemCall
  loc_ABA46F: LitI4 0
  loc_ABA474: FStR4 var_E0
  loc_ABA477: AryUnlock
  loc_ABA47A: FLdPr Me
  loc_ABA47D: MemLdRfVar from_stack_1.global_88
  loc_ABA480: NextI4 var_D8, loc_ABA3AA
  loc_ABA485: LitVarStr var_A0, "  <tr>"
  loc_ABA48A: PopAdLdVar
  loc_ABA48B: FLdPr Me
  loc_ABA48E: MemLdRfVar from_stack_1.htmFile
  loc_ABA491: LdPrVar
  loc_ABA493: LateMemCall
  loc_ABA499: LitVarStr var_A0, "     <td colspan=""2"">&nbsp;</td>"
  loc_ABA49E: PopAdLdVar
  loc_ABA49F: FLdPr Me
  loc_ABA4A2: MemLdRfVar from_stack_1.htmFile
  loc_ABA4A5: LdPrVar
  loc_ABA4A7: LateMemCall
  loc_ABA4AD: LitStr "     <td class=""Totales"" align=""right"">"
  loc_ABA4B0: FLdPr Me
  loc_ABA4B3: MemLdStr global_96
  loc_ABA4B6: ConcatStr
  loc_ABA4B7: FStStrNoPop var_CC
  loc_ABA4BA: LitStr "</td>"
  loc_ABA4BD: ConcatStr
  loc_ABA4BE: CVarStr var_C8
  loc_ABA4C1: PopAdLdVar
  loc_ABA4C2: FLdPr Me
  loc_ABA4C5: MemLdRfVar from_stack_1.htmFile
  loc_ABA4C8: LdPrVar
  loc_ABA4CA: LateMemCall
  loc_ABA4D0: FFree1Str var_CC
  loc_ABA4D3: FFree1Var var_C8 = ""
  loc_ABA4D6: LitVarStr var_A0, "  </tr>"
  loc_ABA4DB: PopAdLdVar
  loc_ABA4DC: FLdPr Me
  loc_ABA4DF: MemLdRfVar from_stack_1.htmFile
  loc_ABA4E2: LdPrVar
  loc_ABA4E4: LateMemCall
  loc_ABA4EA: LitVarStr var_A0, "</table>"
  loc_ABA4EF: PopAdLdVar
  loc_ABA4F0: FLdPr Me
  loc_ABA4F3: MemLdRfVar from_stack_1.htmFile
  loc_ABA4F6: LdPrVar
  loc_ABA4F8: LateMemCall
  loc_ABA4FE: Call Proc_294_27_9816D0()
  loc_ABA503: FLdPr Me
  loc_ABA506: MemLdRfVar from_stack_1.htmFile
  loc_ABA509: LdPrVar
  loc_ABA50B: LateMemCall
  loc_ABA511: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ABA516: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94A2CC
  'Data Table: 45D570
  loc_94A2B4: LitI2_Byte 0
  loc_94A2B6: FLdPr Me
  loc_94A2B9: MemStI2 bLogos
  loc_94A2BC: Call GeneraHTML()
  loc_94A2C1: LitI2_Byte &HFF
  loc_94A2C3: FLdPr Me
  loc_94A2C6: MemStI2 bLogos
  loc_94A2C9: ExitProcHresult
End Sub

Private Function Proc_294_26_A7F9B0() 'A7F9B0
  'Data Table: 45D570
  loc_A7F5C0: LitVarStr var_94, "<html>"
  loc_A7F5C5: PopAdLdVar
  loc_A7F5C6: FLdPr Me
  loc_A7F5C9: MemLdRfVar from_stack_1.htmFile
  loc_A7F5CC: LdPrVar
  loc_A7F5CE: LateMemCall
  loc_A7F5D4: LitVarStr var_94, "<head>"
  loc_A7F5D9: PopAdLdVar
  loc_A7F5DA: FLdPr Me
  loc_A7F5DD: MemLdRfVar from_stack_1.htmFile
  loc_A7F5E0: LdPrVar
  loc_A7F5E2: LateMemCall
  loc_A7F5E8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A7F5ED: PopAdLdVar
  loc_A7F5EE: FLdPr Me
  loc_A7F5F1: MemLdRfVar from_stack_1.htmFile
  loc_A7F5F4: LdPrVar
  loc_A7F5F6: LateMemCall
  loc_A7F5FC: LitStr "<title>"
  loc_A7F5FF: FLdRfVar var_A8
  loc_A7F602: FLdPr Me
  loc_A7F605:  = Me.Caption
  loc_A7F60A: ILdRf var_A8
  loc_A7F60D: ConcatStr
  loc_A7F60E: FStStrNoPop var_AC
  loc_A7F611: LitStr "</title>"
  loc_A7F614: ConcatStr
  loc_A7F615: CVarStr var_BC
  loc_A7F618: PopAdLdVar
  loc_A7F619: FLdPr Me
  loc_A7F61C: MemLdRfVar from_stack_1.htmFile
  loc_A7F61F: LdPrVar
  loc_A7F621: LateMemCall
  loc_A7F627: FFreeStr var_A8 = ""
  loc_A7F62E: FFree1Var var_BC = ""
  loc_A7F631: LitStr vbNullString
  loc_A7F634: ILdRf Me
  loc_A7F637: CastAd
  loc_A7F63A: FStAdFunc var_C0
  loc_A7F63D: FLdRfVar var_C0
  loc_A7F640: ImpAdCallFPR4  = Proc_263_23_B3DAB8()
  loc_A7F645: FFree1Ad var_C0
  loc_A7F648: LitI4 0
  loc_A7F64D: FStStrCopy var_AC
  loc_A7F650: FLdRfVar var_AC
  loc_A7F653: LitI4 0
  loc_A7F658: FStStrCopy var_A8
  loc_A7F65B: FLdRfVar var_A8
  loc_A7F65E: LitI2_Byte &HFF
  loc_A7F660: PopTmpLdAd2 var_C2
  loc_A7F663: FLdPr Me
  loc_A7F666: MemLdRfVar from_stack_1.htmFile
  loc_A7F669: ImpAdCallFPR4  = Proc_263_6_A92790(, )
  loc_A7F66E: FFreeStr var_A8 = ""
  loc_A7F675: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A7F67A: PopAdLdVar
  loc_A7F67B: FLdPr Me
  loc_A7F67E: MemLdRfVar from_stack_1.htmFile
  loc_A7F681: LdPrVar
  loc_A7F683: LateMemCall
  loc_A7F689: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_A7F68E: PopAdLdVar
  loc_A7F68F: FLdPr Me
  loc_A7F692: MemLdRfVar from_stack_1.htmFile
  loc_A7F695: LdPrVar
  loc_A7F697: LateMemCall
  loc_A7F69D: LitVarStr var_94, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"">"
  loc_A7F6A2: PopAdLdVar
  loc_A7F6A3: FLdPr Me
  loc_A7F6A6: MemLdRfVar from_stack_1.htmFile
  loc_A7F6A9: LdPrVar
  loc_A7F6AB: LateMemCall
  loc_A7F6B1: FLdPr Me
  loc_A7F6B4: MemLdI2 bLogos
  loc_A7F6B7: BranchF loc_A7F6CE
  loc_A7F6BA: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A7F6BF: PopAdLdVar
  loc_A7F6C0: FLdPr Me
  loc_A7F6C3: MemLdRfVar from_stack_1.htmFile
  loc_A7F6C6: LdPrVar
  loc_A7F6C8: LateMemCall
  loc_A7F6CE: LitVarStr var_A4, "    <br><p>"
  loc_A7F6D3: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A7F6D8: FStVarCopyObj var_BC
  loc_A7F6DB: FLdRfVar var_BC
  loc_A7F6DE: FLdRfVar var_D4
  loc_A7F6E1: ImpAdCallFPR4  = Ucase()
  loc_A7F6E6: FLdRfVar var_D4
  loc_A7F6E9: ConcatVar var_E4
  loc_A7F6ED: LitVarStr var_F4, "</p>"
  loc_A7F6F2: ConcatVar var_104
  loc_A7F6F6: PopAdLdVar
  loc_A7F6F7: FLdPr Me
  loc_A7F6FA: MemLdRfVar from_stack_1.htmFile
  loc_A7F6FD: LdPrVar
  loc_A7F6FF: LateMemCall
  loc_A7F705: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A7F710: LitStr "       <p>"
  loc_A7F713: FLdRfVar var_A8
  loc_A7F716: FLdPr Me
  loc_A7F719:  = Me.Caption
  loc_A7F71E: ILdRf var_A8
  loc_A7F721: ConcatStr
  loc_A7F722: FStStrNoPop var_AC
  loc_A7F725: LitStr "</p>"
  loc_A7F728: ConcatStr
  loc_A7F729: CVarStr var_BC
  loc_A7F72C: PopAdLdVar
  loc_A7F72D: FLdPr Me
  loc_A7F730: MemLdRfVar from_stack_1.htmFile
  loc_A7F733: LdPrVar
  loc_A7F735: LateMemCall
  loc_A7F73B: FFreeStr var_A8 = ""
  loc_A7F742: FFree1Var var_BC = ""
  loc_A7F745: LitVarStr var_94, "    </th>"
  loc_A7F74A: PopAdLdVar
  loc_A7F74B: FLdPr Me
  loc_A7F74E: MemLdRfVar from_stack_1.htmFile
  loc_A7F751: LdPrVar
  loc_A7F753: LateMemCall
  loc_A7F759: LitVarStr var_94, "  </tr>"
  loc_A7F75E: PopAdLdVar
  loc_A7F75F: FLdPr Me
  loc_A7F762: MemLdRfVar from_stack_1.htmFile
  loc_A7F765: LdPrVar
  loc_A7F767: LateMemCall
  loc_A7F76D: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A7F772: PopAdLdVar
  loc_A7F773: FLdPr Me
  loc_A7F776: MemLdRfVar from_stack_1.htmFile
  loc_A7F779: LdPrVar
  loc_A7F77B: LateMemCall
  loc_A7F781: LitVarStr var_94, "  <tr align=""left"">"
  loc_A7F786: PopAdLdVar
  loc_A7F787: FLdPr Me
  loc_A7F78A: MemLdRfVar from_stack_1.htmFile
  loc_A7F78D: LdPrVar
  loc_A7F78F: LateMemCall
  loc_A7F795: LitStr "    <th>Desde: <span class=""Normal"">"
  loc_A7F798: FLdPr Me
  loc_A7F79B: VCallAd Control_ID_mskDesde
  loc_A7F79E: FStAdFunc var_C0
  loc_A7F7A1: FLdPr var_C0
  loc_A7F7A4: LateIdLdVar var_BC DispID_15 0
  loc_A7F7AB: CStrVarTmp
  loc_A7F7AC: FStStrNoPop var_A8
  loc_A7F7AF: ConcatStr
  loc_A7F7B0: FStStrNoPop var_AC
  loc_A7F7B3: LitStr "</span> - Hasta: <span class=""Normal"">"
  loc_A7F7B6: ConcatStr
  loc_A7F7B7: FStStrNoPop var_11C
  loc_A7F7BA: FLdPr Me
  loc_A7F7BD: VCallAd Control_ID_mskHasta
  loc_A7F7C0: FStAdFunc var_118
  loc_A7F7C3: FLdPr var_118
  loc_A7F7C6: LateIdLdVar var_D4 DispID_15 0
  loc_A7F7CD: CStrVarTmp
  loc_A7F7CE: FStStrNoPop var_120
  loc_A7F7D1: ConcatStr
  loc_A7F7D2: FStStrNoPop var_124
  loc_A7F7D5: LitStr "</span></th>"
  loc_A7F7D8: ConcatStr
  loc_A7F7D9: CVarStr var_E4
  loc_A7F7DC: PopAdLdVar
  loc_A7F7DD: FLdPr Me
  loc_A7F7E0: MemLdRfVar from_stack_1.htmFile
  loc_A7F7E3: LdPrVar
  loc_A7F7E5: LateMemCall
  loc_A7F7EB: FFreeStr var_A8 = "": var_AC = "": var_11C = "": var_120 = ""
  loc_A7F7F8: FFreeAd var_C0 = ""
  loc_A7F7FF: FFreeVar var_BC = "": var_D4 = ""
  loc_A7F808: LitVarStr var_94, "  </tr>"
  loc_A7F80D: PopAdLdVar
  loc_A7F80E: FLdPr Me
  loc_A7F811: MemLdRfVar from_stack_1.htmFile
  loc_A7F814: LdPrVar
  loc_A7F816: LateMemCall
  loc_A7F81C: LitVarStr var_94, "</table>"
  loc_A7F821: PopAdLdVar
  loc_A7F822: FLdPr Me
  loc_A7F825: MemLdRfVar from_stack_1.htmFile
  loc_A7F828: LdPrVar
  loc_A7F82A: LateMemCall
  loc_A7F830: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A7F835: PopAdLdVar
  loc_A7F836: FLdPr Me
  loc_A7F839: MemLdRfVar from_stack_1.htmFile
  loc_A7F83C: LdPrVar
  loc_A7F83E: LateMemCall
  loc_A7F844: LitVarStr var_94, "  <THEAD>"
  loc_A7F849: PopAdLdVar
  loc_A7F84A: FLdPr Me
  loc_A7F84D: MemLdRfVar from_stack_1.htmFile
  loc_A7F850: LdPrVar
  loc_A7F852: LateMemCall
  loc_A7F858: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A7F85D: PopAdLdVar
  loc_A7F85E: FLdPr Me
  loc_A7F861: MemLdRfVar from_stack_1.htmFile
  loc_A7F864: LdPrVar
  loc_A7F866: LateMemCall
  loc_A7F86C: LitVarStr var_94, "    <th rowspan=""2"">Orden de<br>pago N&ordm;</th>"
  loc_A7F871: PopAdLdVar
  loc_A7F872: FLdPr Me
  loc_A7F875: MemLdRfVar from_stack_1.htmFile
  loc_A7F878: LdPrVar
  loc_A7F87A: LateMemCall
  loc_A7F880: LitVarStr var_94, "    <th rowspan=""2"">Expediente</th>"
  loc_A7F885: PopAdLdVar
  loc_A7F886: FLdPr Me
  loc_A7F889: MemLdRfVar from_stack_1.htmFile
  loc_A7F88C: LdPrVar
  loc_A7F88E: LateMemCall
  loc_A7F894: LitVarStr var_94, "    <th rowspan=""2"">Liq.</th>"
  loc_A7F899: PopAdLdVar
  loc_A7F89A: FLdPr Me
  loc_A7F89D: MemLdRfVar from_stack_1.htmFile
  loc_A7F8A0: LdPrVar
  loc_A7F8A2: LateMemCall
  loc_A7F8A8: LitVarStr var_94, "    <th colspan=""3"">Fecha de</th>"
  loc_A7F8AD: PopAdLdVar
  loc_A7F8AE: FLdPr Me
  loc_A7F8B1: MemLdRfVar from_stack_1.htmFile
  loc_A7F8B4: LdPrVar
  loc_A7F8B6: LateMemCall
  loc_A7F8BC: LitVarStr var_94, "    <th rowspan=""2"">Proveedor</th>"
  loc_A7F8C1: PopAdLdVar
  loc_A7F8C2: FLdPr Me
  loc_A7F8C5: MemLdRfVar from_stack_1.htmFile
  loc_A7F8C8: LdPrVar
  loc_A7F8CA: LateMemCall
  loc_A7F8D0: LitVarStr var_94, "    <th rowspan=""2"">Banco</th>"
  loc_A7F8D5: PopAdLdVar
  loc_A7F8D6: FLdPr Me
  loc_A7F8D9: MemLdRfVar from_stack_1.htmFile
  loc_A7F8DC: LdPrVar
  loc_A7F8DE: LateMemCall
  loc_A7F8E4: LitVarStr var_94, "    <th rowspan=""2"">ARchivo</th>"
  loc_A7F8E9: PopAdLdVar
  loc_A7F8EA: FLdPr Me
  loc_A7F8ED: MemLdRfVar from_stack_1.htmFile
  loc_A7F8F0: LdPrVar
  loc_A7F8F2: LateMemCall
  loc_A7F8F8: LitVarStr var_94, "    <th rowspan=""2"">Número</th>"
  loc_A7F8FD: PopAdLdVar
  loc_A7F8FE: FLdPr Me
  loc_A7F901: MemLdRfVar from_stack_1.htmFile
  loc_A7F904: LdPrVar
  loc_A7F906: LateMemCall
  loc_A7F90C: LitVarStr var_94, "    <th rowspan=""2"">Importe</th>"
  loc_A7F911: PopAdLdVar
  loc_A7F912: FLdPr Me
  loc_A7F915: MemLdRfVar from_stack_1.htmFile
  loc_A7F918: LdPrVar
  loc_A7F91A: LateMemCall
  loc_A7F920: LitVarStr var_94, "  </tr>"
  loc_A7F925: PopAdLdVar
  loc_A7F926: FLdPr Me
  loc_A7F929: MemLdRfVar from_stack_1.htmFile
  loc_A7F92C: LdPrVar
  loc_A7F92E: LateMemCall
  loc_A7F934: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A7F939: PopAdLdVar
  loc_A7F93A: FLdPr Me
  loc_A7F93D: MemLdRfVar from_stack_1.htmFile
  loc_A7F940: LdPrVar
  loc_A7F942: LateMemCall
  loc_A7F948: LitVarStr var_94, "    <th>Emisión</th>"
  loc_A7F94D: PopAdLdVar
  loc_A7F94E: FLdPr Me
  loc_A7F951: MemLdRfVar from_stack_1.htmFile
  loc_A7F954: LdPrVar
  loc_A7F956: LateMemCall
  loc_A7F95C: LitVarStr var_94, "    <th>Remisión</th>"
  loc_A7F961: PopAdLdVar
  loc_A7F962: FLdPr Me
  loc_A7F965: MemLdRfVar from_stack_1.htmFile
  loc_A7F968: LdPrVar
  loc_A7F96A: LateMemCall
  loc_A7F970: LitVarStr var_94, "    <th>Pago</th>"
  loc_A7F975: PopAdLdVar
  loc_A7F976: FLdPr Me
  loc_A7F979: MemLdRfVar from_stack_1.htmFile
  loc_A7F97C: LdPrVar
  loc_A7F97E: LateMemCall
  loc_A7F984: LitVarStr var_94, "  </tr>"
  loc_A7F989: PopAdLdVar
  loc_A7F98A: FLdPr Me
  loc_A7F98D: MemLdRfVar from_stack_1.htmFile
  loc_A7F990: LdPrVar
  loc_A7F992: LateMemCall
  loc_A7F998: LitVarStr var_94, "  </THEAD>"
  loc_A7F99D: PopAdLdVar
  loc_A7F99E: FLdPr Me
  loc_A7F9A1: MemLdRfVar from_stack_1.htmFile
  loc_A7F9A4: LdPrVar
  loc_A7F9A6: LateMemCall
  loc_A7F9AC: ExitProcHresult
End Function

Private Function Proc_294_27_9816D0() '9816D0
  'Data Table: 45D570
  loc_981690: LitVarStr var_94, "</table>"
  loc_981695: PopAdLdVar
  loc_981696: FLdPr Me
  loc_981699: MemLdRfVar from_stack_1.htmFile
  loc_98169C: LdPrVar
  loc_98169E: LateMemCall
  loc_9816A4: LitVarStr var_94, "</body>"
  loc_9816A9: PopAdLdVar
  loc_9816AA: FLdPr Me
  loc_9816AD: MemLdRfVar from_stack_1.htmFile
  loc_9816B0: LdPrVar
  loc_9816B2: LateMemCall
  loc_9816B8: LitVarStr var_94, "</html>"
  loc_9816BD: PopAdLdVar
  loc_9816BE: FLdPr Me
  loc_9816C1: MemLdRfVar from_stack_1.htmFile
  loc_9816C4: LdPrVar
  loc_9816C6: LateMemCall
  loc_9816CC: ExitProcHresult
End Function
