VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptControlTransferenciasSinRemitir
  Caption = "Control Transferencias Sin Remitir"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControlTransferenciasSinRemitir.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7950
  ClientHeight = 2880
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2625
    Width = 7950
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptControlTransferenciasSinRemitir.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6840
    Top = 1680
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptControlTransferenciasSinRemitir.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptControlTransferenciasSinRemitir.frx":0B9C
    Left = 6960
    Top = 1680
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1440
    Width = 3375
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
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
    Width = 7695
    Height = 1335
    TabIndex = 0
    Begin VB.CommandButton cmdHasta
      Left = 2280
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptControlTransferenciasSinRemitir.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdDesde
      Left = 2280
      Top = 195
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptControlTransferenciasSinRemitir.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4560
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
      OleObjectBlob = "rptControlTransferenciasSinRemitir.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1080
      Top = 765
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptControlTransferenciasSinRemitir.frx":170C
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
    Left = 6960
    Top = 2040
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptControlTransferenciasSinRemitir.frx":1794
  End
End

Attribute VB_Name = "rptControlTransferenciasSinRemitir"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean
Public sValErr As String

Private Type UDT_1_00589EDC
  bStruc(52) As Byte ' String fields: 13
End Type


Private Sub cmdPrevia_Click() '95682C
  'Data Table: 45C5E4
  loc_956814: ILdRf Me
  loc_956817: CastAd
  loc_95681A: FStAdFunc var_88
  loc_95681D: FLdRfVar var_88
  loc_956820: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_956825: FFree1Ad var_88
  loc_956828: ExitProcHresult
  loc_956829: ImpAdLdFPR4 MemVar_110040
End Sub

Private Sub mskDesde_UnknownEvent_0 '94A748
  'Data Table: 45C5E4
  loc_94A734: FLdPr Me
  loc_94A737: VCallAd Control_ID_mskDesde
  loc_94A73A: CVarAd
  loc_94A73E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A743: FFree1Var var_94 = ""
  loc_94A746: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B3264
  'Data Table: 45C5E4
  loc_9B31C8: FLdPr Me
  loc_9B31CB: VCallAd Control_ID_mskDesde
  loc_9B31CE: FStAdFunc var_88
  loc_9B31D1: FLdPr var_88
  loc_9B31D4: LateIdLdVar var_98 DispID_15 0
  loc_9B31DB: PopAd
  loc_9B31DD: FLdPr Me
  loc_9B31E0: VCallAd Control_ID_mskDesde
  loc_9B31E3: FStAdFunc var_AC
  loc_9B31E6: LitI2_Byte &HFF
  loc_9B31E8: PopTmpLdAd2 var_A2
  loc_9B31EB: FLdZeroAd var_AC
  loc_9B31EE: FStAdFunc var_A0
  loc_9B31F1: FLdRfVar var_A0
  loc_9B31F4: LitStr vbNullString
  loc_9B31F7: LitI2_Byte 0
  loc_9B31F9: LitI2_Byte 0
  loc_9B31FB: FLdRfVar var_98
  loc_9B31FE: CStrVarTmp
  loc_9B31FF: FStStrNoPop var_9C
  loc_9B3202: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B3207: FStStrNoPop var_A8
  loc_9B320A: FLdPr Me
  loc_9B320D: MemStStrCopy
  loc_9B3211: FFreeStr var_9C = ""
  loc_9B3218: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3221: FFree1Var var_98 = ""
  loc_9B3224: FLdPr Me
  loc_9B3227: VCallAd Control_ID_mskDesde
  loc_9B322A: FStAdFunc var_B0
  loc_9B322D: LitNothing
  loc_9B322F: CastAd
  loc_9B3232: FStAdFunc var_AC
  loc_9B3235: FLdRfVar var_AC
  loc_9B3238: FLdZeroAd var_B0
  loc_9B323B: FStAdFuncNoPop
  loc_9B323E: CastAd
  loc_9B3241: FStAdFunc var_A0
  loc_9B3244: FLdRfVar var_A0
  loc_9B3247: FLdPr Me
  loc_9B324A: MemLdRfVar from_stack_1.sValErr
  loc_9B324D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B3252: IStI2 arg_C
  loc_9B3255: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3260: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 'A28160
  'Data Table: 45C5E4
  loc_A27FC0: FLdPr Me
  loc_A27FC3: VCallAd Control_ID_mskDesde
  loc_A27FC6: FStAdFunc var_88
  loc_A27FC9: FLdPr var_88
  loc_A27FCC: LateIdLdVar var_98 DispID_15 0
  loc_A27FD3: CStrVarTmp
  loc_A27FD4: CVarStr var_A8
  loc_A27FD7: ImpAdCallI2 IsDate()
  loc_A27FDC: FFree1Ad var_88
  loc_A27FDF: FFreeVar var_98 = ""
  loc_A27FE6: BranchF loc_A2814A
  loc_A27FE9: FLdPr Me
  loc_A27FEC: VCallAd Control_ID_mskDesde
  loc_A27FEF: FStAdFunc var_88
  loc_A27FF2: FLdPr var_88
  loc_A27FF5: LateIdLdVar var_98 DispID_15 0
  loc_A27FFC: CStrVarTmp
  loc_A27FFD: CVarStr var_A8
  loc_A28000: FLdRfVar var_B8
  loc_A28003: ImpAdCallFPR4  = Day()
  loc_A28008: FLdRfVar var_B8
  loc_A2800B: LitVarI2 var_C8, 1
  loc_A28010: HardType
  loc_A28011: EqVar var_D8
  loc_A28015: FLdPr Me
  loc_A28018: VCallAd Control_ID_mskDesde
  loc_A2801B: FStAdFunc var_DC
  loc_A2801E: FLdPr var_DC
  loc_A28021: LateIdLdVar var_EC DispID_15 0
  loc_A28028: CStrVarTmp
  loc_A28029: CVarStr var_FC
  loc_A2802C: FLdRfVar var_10C
  loc_A2802F: ImpAdCallFPR4  = Month()
  loc_A28034: FLdRfVar var_10C
  loc_A28037: LitI2_Byte 0
  loc_A28039: PopTmpLdAd2 var_10E
  loc_A2803C: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A28041: CVarDate var_130
  loc_A28045: FLdRfVar var_140
  loc_A28048: ImpAdCallFPR4  = Month()
  loc_A2804D: FLdRfVar var_140
  loc_A28050: LtVar var_150
  loc_A28054: AndVar var_160
  loc_A28058: FLdPr Me
  loc_A2805B: VCallAd Control_ID_mskHasta
  loc_A2805E: FStAdFunc var_164
  loc_A28061: FLdPr var_164
  loc_A28064: LateIdLdVar var_174 DispID_15 0
  loc_A2806B: CStrVarTmp
  loc_A2806C: FStStrNoPop var_178
  loc_A2806F: CDateStr
  loc_A28071: ImpAdLdFPR8 MemVar_C3D04C
  loc_A28074: EqR4
  loc_A28075: CVarBoolI2 var_188
  loc_A28079: AndVar var_198
  loc_A2807D: CBoolVarNull
  loc_A2807F: FFree1Str var_178
  loc_A28082: FFreeAd var_88 = "": var_DC = ""
  loc_A2808B: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_EC = "": var_FC = "": var_130 = "": var_10C = "": var_140 = "": var_174 = ""
  loc_A280A2: BranchF loc_A2814A
  loc_A280A5: LitVarStr var_120, "01/"
  loc_A280AA: FLdPr Me
  loc_A280AD: VCallAd Control_ID_mskDesde
  loc_A280B0: FStAdFunc var_88
  loc_A280B3: FLdPr var_88
  loc_A280B6: LateIdLdVar var_98 DispID_15 0
  loc_A280BD: CStrVarTmp
  loc_A280BE: CVarStr var_A8
  loc_A280C1: FLdRfVar var_B8
  loc_A280C4: ImpAdCallFPR4  = Month()
  loc_A280C9: FLdRfVar var_B8
  loc_A280CC: LitVarI2 var_C8, 1
  loc_A280D1: AddVar var_D8
  loc_A280D5: ConcatVar var_EC
  loc_A280D9: LitVarStr var_188, "/"
  loc_A280DE: ConcatVar var_FC
  loc_A280E2: FLdPr Me
  loc_A280E5: VCallAd Control_ID_mskDesde
  loc_A280E8: FStAdFunc var_DC
  loc_A280EB: FLdPr var_DC
  loc_A280EE: LateIdLdVar var_10C DispID_15 0
  loc_A280F5: CStrVarTmp
  loc_A280F6: CVarStr var_130
  loc_A280F9: FLdRfVar var_140
  loc_A280FC: ImpAdCallFPR4  = Year()
  loc_A28101: FLdRfVar var_140
  loc_A28104: ConcatVar var_150
  loc_A28108: FnCDateVar
  loc_A2810A: LitI2_Byte 1
  loc_A2810C: CR8I2
  loc_A2810D: SubR4
  loc_A2810E: CDateR8
  loc_A2810F: CStrDate
  loc_A28111: CVarStr var_160
  loc_A28114: PopAdLdVar
  loc_A28115: FLdPr Me
  loc_A28118: VCallAd Control_ID_mskHasta
  loc_A2811B: FStAdFunc var_164
  loc_A2811E: FLdPr var_164
  loc_A28121: LateIdSt
  loc_A28126: FFreeAd var_88 = "": var_DC = ""
  loc_A2812F: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_D8 = "": var_EC = "": var_10C = "": var_130 = "": var_FC = "": var_140 = "": var_150 = "": var_150 = ""
  loc_A2814A: FLdPr Me
  loc_A2814D: VCallAd Control_ID_mskHasta
  loc_A28150: CVarAd
  loc_A28154: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A28159: FFree1Var var_98 = ""
  loc_A2815C: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B334C
  'Data Table: 45C5E4
  loc_9B32B0: FLdPr Me
  loc_9B32B3: VCallAd Control_ID_mskHasta
  loc_9B32B6: FStAdFunc var_88
  loc_9B32B9: FLdPr var_88
  loc_9B32BC: LateIdLdVar var_98 DispID_15 0
  loc_9B32C3: PopAd
  loc_9B32C5: FLdPr Me
  loc_9B32C8: VCallAd Control_ID_mskHasta
  loc_9B32CB: FStAdFunc var_AC
  loc_9B32CE: LitI2_Byte &HFF
  loc_9B32D0: PopTmpLdAd2 var_A2
  loc_9B32D3: FLdZeroAd var_AC
  loc_9B32D6: FStAdFunc var_A0
  loc_9B32D9: FLdRfVar var_A0
  loc_9B32DC: LitStr vbNullString
  loc_9B32DF: LitI2_Byte 0
  loc_9B32E1: LitI2_Byte 0
  loc_9B32E3: FLdRfVar var_98
  loc_9B32E6: CStrVarTmp
  loc_9B32E7: FStStrNoPop var_9C
  loc_9B32EA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B32EF: FStStrNoPop var_A8
  loc_9B32F2: FLdPr Me
  loc_9B32F5: MemStStrCopy
  loc_9B32F9: FFreeStr var_9C = ""
  loc_9B3300: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3309: FFree1Var var_98 = ""
  loc_9B330C: FLdPr Me
  loc_9B330F: VCallAd Control_ID_mskHasta
  loc_9B3312: FStAdFunc var_B0
  loc_9B3315: LitNothing
  loc_9B3317: CastAd
  loc_9B331A: FStAdFunc var_AC
  loc_9B331D: FLdRfVar var_AC
  loc_9B3320: FLdZeroAd var_B0
  loc_9B3323: FStAdFuncNoPop
  loc_9B3326: CastAd
  loc_9B3329: FStAdFunc var_A0
  loc_9B332C: FLdRfVar var_A0
  loc_9B332F: FLdPr Me
  loc_9B3332: MemLdRfVar from_stack_1.sValErr
  loc_9B3335: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B333A: IStI2 arg_C
  loc_9B333D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3348: ExitProcHresult
End Function

Private Sub cmdDesde_Click() '97CB10
  'Data Table: 45C5E4
  loc_97CADC: LitVar_Missing var_A4
  loc_97CADF: PopAdLdVar
  loc_97CAE0: LitVarI4
  loc_97CAE8: PopAdLdVar
  loc_97CAE9: ImpAdLdRf MemVar_C3D9A8
  loc_97CAEC: NewIfNullPr frmCalendario
  loc_97CAEF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CAF4: ImpAdLdRf MemVar_C3D038
  loc_97CAF7: CDargRef
  loc_97CAFB: FLdPr Me
  loc_97CAFE: VCallAd Control_ID_mskDesde
  loc_97CB01: FStAdFunc var_A8
  loc_97CB04: FLdPr var_A8
  loc_97CB07: LateIdSt
  loc_97CB0C: FFree1Ad var_A8
  loc_97CB0F: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '956A40
  'Data Table: 45C5E4
  loc_956A28: ILdRf Me
  loc_956A2B: CastAd
  loc_956A2E: FStAdFunc var_88
  loc_956A31: FLdRfVar var_88
  loc_956A34: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_956A39: FFree1Ad var_88
  loc_956A3C: ExitProcHresult
  loc_956A3D: Ary1LdFPR4
  loc_956A3E: FLdPrThis
End Sub

Private Sub cmdHasta_Click() '97CB78
  'Data Table: 45C5E4
  loc_97CB44: LitVar_Missing var_A4
  loc_97CB47: PopAdLdVar
  loc_97CB48: LitVarI4
  loc_97CB50: PopAdLdVar
  loc_97CB51: ImpAdLdRf MemVar_C3D9A8
  loc_97CB54: NewIfNullPr frmCalendario
  loc_97CB57: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CB5C: ImpAdLdRf MemVar_C3D038
  loc_97CB5F: CDargRef
  loc_97CB63: FLdPr Me
  loc_97CB66: VCallAd Control_ID_mskHasta
  loc_97CB69: FStAdFunc var_A8
  loc_97CB6C: FLdPr var_A8
  loc_97CB6F: LateIdSt
  loc_97CB74: FFree1Ad var_A8
  loc_97CB77: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98AD9C
  'Data Table: 45C5E4
  loc_98AD64: FLdPr Me
  loc_98AD67: VCallAd Control_ID_statusBar
  loc_98AD6A: FStAdFunc var_88
  loc_98AD6D: FLdPr var_88
  loc_98AD70: LateIdLdVar var_98 DispID_1 0
  loc_98AD77: CStrVarTmp
  loc_98AD78: CVarStr var_A8
  loc_98AD7B: PopAdLdVar
  loc_98AD7C: FLdPr Me
  loc_98AD7F: VCallAd Control_ID_statusBar
  loc_98AD82: FStAdFunc var_BC
  loc_98AD85: FLdPr var_BC
  loc_98AD88: LateIdSt
  loc_98AD8D: FFreeAd var_88 = ""
  loc_98AD94: FFreeVar var_98 = ""
  loc_98AD9B: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '969AFC
  'Data Table: 45C5E4
  loc_969AE0: LitI2_Byte &HFF
  loc_969AE2: LitI2_Byte 0
  loc_969AE4: ILdRf Me
  loc_969AE7: CastAd
  loc_969AEA: FStAdFunc var_88
  loc_969AED: FLdRfVar var_88
  loc_969AF0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_969AF5: FFree1Ad var_88
  loc_969AF8: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97C490
  'Data Table: 45C5E4
  loc_97C460: LitVarStr var_94, "Cerrando..."
  loc_97C465: PopAdLdVar
  loc_97C466: FLdPr Me
  loc_97C469: VCallAd Control_ID_statusBar
  loc_97C46C: FStAdFunc var_A8
  loc_97C46F: FLdPr var_A8
  loc_97C472: LateIdSt
  loc_97C477: FFree1Ad var_A8
  loc_97C47A: ILdRf Me
  loc_97C47D: FStAdNoPop
  loc_97C481: ImpAdLdRf MemVar_C44F9C
  loc_97C484: NewIfNullPr Me
  loc_97C487: Me.Global.Unload from_stack_1
  loc_97C48C: FFree1Ad var_A8
  loc_97C48F: ExitProcHresult
End Sub

Private Sub Form_Load() '96BBE4
  'Data Table: 45C5E4
  loc_96BBC4: LitI2_Byte &HFF
  loc_96BBC6: ImpAdStI2 MemVar_C3D840
  loc_96BBC9: ILdRf Me
  loc_96BBCC: CastAd
  loc_96BBCF: FStAdFunc var_88
  loc_96BBD2: FLdRfVar var_88
  loc_96BBD5: ImpAdCallFPR4  = Proc_261_42_9991A0()
  loc_96BBDA: FFree1Ad var_88
  loc_96BBDD: Call cmdNueva_Click()
  loc_96BBE2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '956664
  'Data Table: 45C5E4
  loc_95664C: FLdPr Me
  loc_95664F: VCallAd Control_ID_wbbReporte
  loc_956652: FStAdFunc var_88
  loc_956655: FLdRfVar var_88
  loc_956658: ImpAdCallFPR4  = Proc_263_22_98CC50()
  loc_95665D: FFree1Ad var_88
  loc_956660: ExitProcHresult
  loc_956661: FnLBound
  loc_956662: MemStI4 global_27653
End Sub

Private Sub cmdPdf_Click() '957BC4
  'Data Table: 45C5E4
  loc_957BAC: LitI2_Byte 0
  loc_957BAE: ILdRf Me
  loc_957BB1: CastAd
  loc_957BB4: FStAdFunc var_88
  loc_957BB7: FLdRfVar var_88
  loc_957BBA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_957BBF: FFree1Ad var_88
  loc_957BC2: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9AEB30
  'Data Table: 45C5E4
  loc_9AEA94: LitI2_Byte 0
  loc_9AEA96: FLdPr Me
  loc_9AEA99: MemStI2 bGenerado
  loc_9AEA9C: LitI2_Byte &HFF
  loc_9AEA9E: FLdPr Me
  loc_9AEAA1: MemStI2 bLogos
  loc_9AEAA4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9AEAA9: LitI2_Byte 0
  loc_9AEAAB: PopTmpLdAd2 var_86
  loc_9AEAAE: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9AEAB3: CVarDate var_A8
  loc_9AEAB7: FLdRfVar var_B8
  loc_9AEABA: ImpAdCallFPR4  = Year()
  loc_9AEABF: LitI2_Byte 1
  loc_9AEAC1: LitI2_Byte 1
  loc_9AEAC3: FLdRfVar var_B8
  loc_9AEAC6: CI2Var
  loc_9AEAC7: FLdRfVar var_C8
  loc_9AEACA: ImpAdCallFPR4  = DateSerial(, , )
  loc_9AEACF: FLdRfVar var_C8
  loc_9AEAD2: CStrVarTmp
  loc_9AEAD3: CVarStr var_D8
  loc_9AEAD6: PopAdLdVar
  loc_9AEAD7: FLdPr Me
  loc_9AEADA: VCallAd Control_ID_mskDesde
  loc_9AEADD: FStAdFunc var_EC
  loc_9AEAE0: FLdPr var_EC
  loc_9AEAE3: LateIdSt
  loc_9AEAE8: FFree1Ad var_EC
  loc_9AEAEB: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_9AEAF6: ImpAdLdFPR8 MemVar_C3D04C
  loc_9AEAF9: CStrDate
  loc_9AEAFB: CVarStr var_A8
  loc_9AEAFE: PopAdLdVar
  loc_9AEAFF: FLdPr Me
  loc_9AEB02: VCallAd Control_ID_mskHasta
  loc_9AEB05: FStAdFunc var_EC
  loc_9AEB08: FLdPr var_EC
  loc_9AEB0B: LateIdSt
  loc_9AEB10: FFree1Ad var_EC
  loc_9AEB13: FFree1Var var_A8 = ""
  loc_9AEB16: Call HabilitarCriterio()
  loc_9AEB1B: ILdRf Me
  loc_9AEB1E: CastAd
  loc_9AEB21: FStAdFunc var_EC
  loc_9AEB24: FLdRfVar var_EC
  loc_9AEB27: ImpAdCallFPR4  = Proc_263_12_9C9114()
  loc_9AEB2C: FFree1Ad var_EC
  loc_9AEB2F: ExitProcHresult
End Sub

Public Function htmFileGet() '45D2CC
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '45D2DB
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '45D2EA
  htmFile = Value
End Sub

Public Function bGeneradoGet() '45D2F9
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '45D308
  bGenerado = Value
End Sub

Public Function bLogosGet() '45D317
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '45D326
  bLogos = Value
End Sub

Public Function sValErrGet() '45D335
  sValErrGet = sValErr
End Function

Public Sub sValErrPut(Value) '45D344
  sValErr = Value
End Sub

Public Sub HabilitarCriterio() '9A1B1C
  'Data Table: 45C5E4
  loc_9A1AB8: LitI4 0
  loc_9A1ABD: LitI4 3
  loc_9A1AC2: FLdRfVar var_88
  loc_9A1AC5: Redim
  loc_9A1ACF: FLdPr Me
  loc_9A1AD2: VCallAd Control_ID_mskDesde
  loc_9A1AD5: CVarAd
  loc_9A1AD9: ParmAry1St
  loc_9A1ADF: FLdPr Me
  loc_9A1AE2: VCallAd Control_ID_cmdDesde
  loc_9A1AE5: CVarAd
  loc_9A1AE9: ParmAry1St
  loc_9A1AEF: FLdPr Me
  loc_9A1AF2: VCallAd Control_ID_mskHasta
  loc_9A1AF5: CVarAd
  loc_9A1AF9: ParmAry1St
  loc_9A1AFF: FLdPr Me
  loc_9A1B02: VCallAd Control_ID_cmdHasta
  loc_9A1B05: CVarAd
  loc_9A1B09: ParmAry1St
  loc_9A1B0F: FLdRfVar var_88
  loc_9A1B12: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1B17: FLdRfVar var_88
  loc_9A1B1A: Erase
  loc_9A1B1B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B6B524
  'Data Table: 45C5E4
  loc_B6A9D4: LitStr vbNullString
  loc_B6A9D7: FLdPr Me
  loc_B6A9DA: MemStStrCopy
  loc_B6A9DE: LitI2_Byte 0
  loc_B6A9E0: PopTmpLdAd2 var_86
  loc_B6A9E3: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B6A9E8: FLdPr Me
  loc_B6A9EB: MemLdStr sValErr
  loc_B6A9EE: LitStr vbNullString
  loc_B6A9F1: NeStr
  loc_B6A9F3: BranchF loc_B6A9F7
  loc_B6A9F6: ExitProcHresult
  loc_B6A9F7: LitI2_Byte 0
  loc_B6A9F9: PopTmpLdAd2 var_86
  loc_B6A9FC: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B6AA01: FLdPr Me
  loc_B6AA04: MemLdStr sValErr
  loc_B6AA07: LitStr vbNullString
  loc_B6AA0A: NeStr
  loc_B6AA0C: BranchF loc_B6AA10
  loc_B6AA0F: ExitProcHresult
  loc_B6AA10: FLdPr Me
  loc_B6AA13: MemLdI2 bGenerado
  loc_B6AA16: BranchF loc_B6AA1A
  loc_B6AA19: ExitProcHresult
  loc_B6AA1A: LitVarStr var_98, "Generando reporte..."
  loc_B6AA1F: PopAdLdVar
  loc_B6AA20: FLdPr Me
  loc_B6AA23: VCallAd Control_ID_statusBar
  loc_B6AA26: FStAdFunc var_AC
  loc_B6AA29: FLdPr var_AC
  loc_B6AA2C: LateIdSt
  loc_B6AA31: FFree1Ad var_AC
  loc_B6AA34: LitI4 &HB
  loc_B6AA39: CI2I4
  loc_B6AA3A: FLdPr Me
  loc_B6AA3D: Me.MousePointer = from_stack_1
  loc_B6AA42: LitI4 1
  loc_B6AA47: LitI4 1
  loc_B6AA4C: FLdPr Me
  loc_B6AA4F: MemLdRfVar from_stack_1.global_84
  loc_B6AA52: Redim
  loc_B6AA5C: LitStr "0"
  loc_B6AA5F: FLdPr Me
  loc_B6AA62: MemStStrCopy
  loc_B6AA66: FLdPr Me
  loc_B6AA69: MemLdRfVar from_stack_1.global_76
  loc_B6AA6C: NewIfNullAd
  loc_B6AA6F: FStAd var_B0 
  loc_B6AA73: FLdPr Me
  loc_B6AA76: VCallAd Control_ID_mskDesde
  loc_B6AA79: FStAdFunc var_AC
  loc_B6AA7C: FLdPr var_AC
  loc_B6AA7F: LateIdLdVar var_D0 DispID_15 0
  loc_B6AA86: PopAd
  loc_B6AA88: FLdPr Me
  loc_B6AA8B: VCallAd Control_ID_mskHasta
  loc_B6AA8E: FStAdFunc var_134
  loc_B6AA91: FLdPr var_134
  loc_B6AA94: LateIdLdVar var_144 DispID_15 0
  loc_B6AA9B: PopAd
  loc_B6AA9D: FLdPr Me
  loc_B6AAA0: VCallAd Control_ID_mskHasta
  loc_B6AAA3: FStAdFunc var_1B8
  loc_B6AAA6: FLdPr var_1B8
  loc_B6AAA9: LateIdLdVar var_1C8 DispID_15 0
  loc_B6AAB0: PopAd
  loc_B6AAB2: FLdPr Me
  loc_B6AAB5: VCallAd Control_ID_mskHasta
  loc_B6AAB8: FStAdFunc var_25C
  loc_B6AABB: FLdPr var_25C
  loc_B6AABE: LateIdLdVar var_26C DispID_15 0
  loc_B6AAC5: PopAd
  loc_B6AAC7: LitStr "SELECT ch.NumeOrpa, ch.ExpeImpu, ch.NumeLiqu, FechCheq, FereCheq, FepaCheq, FeanCheq, ch.CucuPers, DetaProv, ch.CodiBanc, DetaBanc, NumeMoba, ImpoCheq"
  loc_B6AACA: LitStr " FROM cheque ch"
  loc_B6AACD: ConcatStr
  loc_B6AACE: FStStrNoPop var_B4
  loc_B6AAD1: LitStr " INNER JOIN ordenpago op ON op.PeriInfo = ch.PeriInfo AND op.NumeOrpa = ch.NumeOrpa AND op.FeanOrpa IS NULL"
  loc_B6AAD4: ConcatStr
  loc_B6AAD5: FStStrNoPop var_B8
  loc_B6AAD8: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_B6AADB: ConcatStr
  loc_B6AADC: FStStrNoPop var_BC
  loc_B6AADF: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B6AAE2: ConcatStr
  loc_B6AAE3: FStStrNoPop var_C0
  loc_B6AAE6: LitStr " WHERE FechCheq BETWEEN "
  loc_B6AAE9: ConcatStr
  loc_B6AAEA: CVarStr var_110
  loc_B6AAED: LitI4 1
  loc_B6AAF2: LitI4 1
  loc_B6AAF7: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_B6AAFC: FStVarCopyObj var_F0
  loc_B6AAFF: FLdRfVar var_F0
  loc_B6AB02: FLdRfVar var_D0
  loc_B6AB05: CStrVarTmp
  loc_B6AB06: CVarStr var_E0
  loc_B6AB09: FLdRfVar var_100
  loc_B6AB0C: ImpAdCallFPR4  = Format(, )
  loc_B6AB11: FLdRfVar var_100
  loc_B6AB14: ConcatVar var_120
  loc_B6AB18: LitVarStr var_A8, " AND "
  loc_B6AB1D: ConcatVar var_130
  loc_B6AB21: LitI4 1
  loc_B6AB26: LitI4 1
  loc_B6AB2B: LitVarStr var_164, "'yyyy-mm-dd'"
  loc_B6AB30: FStVarCopyObj var_174
  loc_B6AB33: FLdRfVar var_174
  loc_B6AB36: FLdRfVar var_144
  loc_B6AB39: CStrVarTmp
  loc_B6AB3A: CVarStr var_154
  loc_B6AB3D: FLdRfVar var_184
  loc_B6AB40: ImpAdCallFPR4  = Format(, )
  loc_B6AB45: FLdRfVar var_184
  loc_B6AB48: ConcatVar var_194
  loc_B6AB4C: LitVarStr var_1A4, " AND (FereCheq IS NULL OR FereCheq > "
  loc_B6AB51: ConcatVar var_1B4
  loc_B6AB55: LitI4 1
  loc_B6AB5A: LitI4 1
  loc_B6AB5F: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_B6AB64: FStVarCopyObj var_1F8
  loc_B6AB67: FLdRfVar var_1F8
  loc_B6AB6A: FLdRfVar var_1C8
  loc_B6AB6D: CStrVarTmp
  loc_B6AB6E: CVarStr var_1D8
  loc_B6AB71: FLdRfVar var_208
  loc_B6AB74: ImpAdCallFPR4  = Format(, )
  loc_B6AB79: FLdRfVar var_208
  loc_B6AB7C: ConcatVar var_218
  loc_B6AB80: LitVarStr var_228, ")"
  loc_B6AB85: ConcatVar var_238
  loc_B6AB89: LitVarStr var_248, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_B6AB8E: ConcatVar var_258
  loc_B6AB92: LitI4 1
  loc_B6AB97: LitI4 1
  loc_B6AB9C: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_B6ABA1: FStVarCopyObj var_29C
  loc_B6ABA4: FLdRfVar var_29C
  loc_B6ABA7: FLdRfVar var_26C
  loc_B6ABAA: CStrVarTmp
  loc_B6ABAB: CVarStr var_27C
  loc_B6ABAE: FLdRfVar var_2AC
  loc_B6ABB1: ImpAdCallFPR4  = Format(, )
  loc_B6ABB6: FLdRfVar var_2AC
  loc_B6ABB9: ConcatVar var_2BC
  loc_B6ABBD: LitVarStr var_2CC, ")"
  loc_B6ABC2: ConcatVar var_2DC
  loc_B6ABC6: LitVarStr var_2EC, " AND AutoCheq = 3"
  loc_B6ABCB: ConcatVar var_2FC
  loc_B6ABCF: LitVarStr var_30C, " ORDER BY NumeOrpa, CucuPers, CodiBanc, NumeMoba;"
  loc_B6ABD4: ConcatVar var_31C
  loc_B6ABD8: CStrVarVal var_320
  loc_B6ABDC: FLdPr var_B0
  loc_B6ABDF: Call clscheque.RedefineRS(from_stack_1v)
  loc_B6ABE4: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B6ABF1: FFreeAd var_AC = "": var_134 = "": var_1B8 = ""
  loc_B6ABFC: FFreeVar var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_100 = "": var_120 = "": var_144 = "": var_154 = "": var_174 = "": var_130 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = "": var_218 = "": var_238 = "": var_26C = "": var_27C = "": var_29C = "": var_258 = "": var_2AC = "": var_2BC = "": var_2DC = "": var_2FC = ""
  loc_B6AC37: FLdRfVar var_324
  loc_B6AC3A: FLdPr var_B0
  loc_B6AC3D: from_stack_1 = clscheque.RecordCount
  loc_B6AC42: ILdRf var_324
  loc_B6AC45: LitI4 0
  loc_B6AC4A: EqI4
  loc_B6AC4B: BranchF loc_B6AC61
  loc_B6AC4E: LitI4 0
  loc_B6AC53: LitStr "No existen registros para el criterio especificado"
  loc_B6AC56: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6AC5B: Branch loc_B6B4FA
  loc_B6AC5E: Branch loc_B6B191
  loc_B6AC61: LitI4 1
  loc_B6AC66: FLdRfVar var_324
  loc_B6AC69: FLdPr var_B0
  loc_B6AC6C: from_stack_1 = clscheque.RecordCount
  loc_B6AC71: ILdRf var_324
  loc_B6AC74: FLdPr Me
  loc_B6AC77: MemLdRfVar from_stack_1.global_84
  loc_B6AC7A: Redim
  loc_B6AC84: FLdPr var_B0
  loc_B6AC87: Call clscheque.MoveFirst()
  loc_B6AC8C: LitI4 1
  loc_B6AC91: FLdPr Me
  loc_B6AC94: MemLdRfVar from_stack_1.global_92
  loc_B6AC97: FLdPr Me
  loc_B6AC9A: MemLdStr global_84
  loc_B6AC9D: LitI2_Byte 1
  loc_B6AC9F: FnUBound
  loc_B6ACA1: ForI4 var_32C
  loc_B6ACA7: FLdRfVar var_1B8
  loc_B6ACAA: LitVarStr var_98, "NumeOrpa"
  loc_B6ACAF: PopAdLdVar
  loc_B6ACB0: FLdRfVar var_134
  loc_B6ACB3: FLdRfVar var_AC
  loc_B6ACB6: FLdPr var_B0
  loc_B6ACB9: from_stack_1v = clscheque.RsFrmGet()
  loc_B6ACBE: FLdPr var_AC
  loc_B6ACC1:  = Me.Fields
  loc_B6ACC6: FLdPr var_134
  loc_B6ACC9: from_stack_2 = Me.Item(from_stack_1)
  loc_B6ACCE: LitI2_Byte 0
  loc_B6ACD0: LitVar_Missing var_E0
  loc_B6ACD3: LitI2_Byte 0
  loc_B6ACD5: FLdZeroAd var_1B8
  loc_B6ACD8: CVarAd
  loc_B6ACDC: PopAdLdVar
  loc_B6ACDD: FLdPr Me
  loc_B6ACE0: MemLdStr global_92
  loc_B6ACE3: FLdPr Me
  loc_B6ACE6: MemLdStr global_84
  loc_B6ACE9: AryLock
  loc_B6ACEC: Ary1LdPr
  loc_B6ACED: MemLdRfVar from_stack_1.global_0
  loc_B6ACF0: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6ACF5: AryUnlock
  loc_B6ACF8: FFreeAd var_AC = ""
  loc_B6ACFF: FFreeVar var_D0 = ""
  loc_B6AD06: FLdRfVar var_1B8
  loc_B6AD09: LitVarStr var_98, "ExpeImpu"
  loc_B6AD0E: PopAdLdVar
  loc_B6AD0F: FLdRfVar var_134
  loc_B6AD12: FLdRfVar var_AC
  loc_B6AD15: FLdPr var_B0
  loc_B6AD18: from_stack_1v = clscheque.RsFrmGet()
  loc_B6AD1D: FLdPr var_AC
  loc_B6AD20:  = Me.Fields
  loc_B6AD25: FLdPr var_134
  loc_B6AD28: from_stack_2 = Me.Item(from_stack_1)
  loc_B6AD2D: LitI2_Byte 0
  loc_B6AD2F: LitVar_Missing var_E0
  loc_B6AD32: LitI2_Byte 0
  loc_B6AD34: FLdZeroAd var_1B8
  loc_B6AD37: CVarAd
  loc_B6AD3B: PopAdLdVar
  loc_B6AD3C: FLdPr Me
  loc_B6AD3F: MemLdStr global_92
  loc_B6AD42: FLdPr Me
  loc_B6AD45: MemLdStr global_84
  loc_B6AD48: AryLock
  loc_B6AD4B: Ary1LdPr
  loc_B6AD4C: MemLdRfVar from_stack_1.global_4
  loc_B6AD4F: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6AD54: AryUnlock
  loc_B6AD57: FFreeAd var_AC = ""
  loc_B6AD5E: FFreeVar var_D0 = ""
  loc_B6AD65: FLdRfVar var_1B8
  loc_B6AD68: LitVarStr var_98, "NumeLiqu"
  loc_B6AD6D: PopAdLdVar
  loc_B6AD6E: FLdRfVar var_134
  loc_B6AD71: FLdRfVar var_AC
  loc_B6AD74: FLdPr var_B0
  loc_B6AD77: from_stack_1v = clscheque.RsFrmGet()
  loc_B6AD7C: FLdPr var_AC
  loc_B6AD7F:  = Me.Fields
  loc_B6AD84: FLdPr var_134
  loc_B6AD87: from_stack_2 = Me.Item(from_stack_1)
  loc_B6AD8C: LitI2_Byte 0
  loc_B6AD8E: LitVar_Missing var_E0
  loc_B6AD91: LitI2_Byte 0
  loc_B6AD93: FLdZeroAd var_1B8
  loc_B6AD96: CVarAd
  loc_B6AD9A: PopAdLdVar
  loc_B6AD9B: FLdPr Me
  loc_B6AD9E: MemLdStr global_92
  loc_B6ADA1: FLdPr Me
  loc_B6ADA4: MemLdStr global_84
  loc_B6ADA7: AryLock
  loc_B6ADAA: Ary1LdPr
  loc_B6ADAB: MemLdRfVar from_stack_1.global_8
  loc_B6ADAE: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6ADB3: AryUnlock
  loc_B6ADB6: FFreeAd var_AC = ""
  loc_B6ADBD: FFreeVar var_D0 = ""
  loc_B6ADC4: FLdRfVar var_1B8
  loc_B6ADC7: LitVarStr var_98, "FechCheq"
  loc_B6ADCC: PopAdLdVar
  loc_B6ADCD: FLdRfVar var_134
  loc_B6ADD0: FLdRfVar var_AC
  loc_B6ADD3: FLdPr var_B0
  loc_B6ADD6: from_stack_1v = clscheque.RsFrmGet()
  loc_B6ADDB: FLdPr var_AC
  loc_B6ADDE:  = Me.Fields
  loc_B6ADE3: FLdPr var_134
  loc_B6ADE6: from_stack_2 = Me.Item(from_stack_1)
  loc_B6ADEB: LitI2_Byte 0
  loc_B6ADED: LitVar_Missing var_E0
  loc_B6ADF0: LitI2_Byte 0
  loc_B6ADF2: FLdZeroAd var_1B8
  loc_B6ADF5: CVarAd
  loc_B6ADF9: PopAdLdVar
  loc_B6ADFA: FLdPr Me
  loc_B6ADFD: MemLdStr global_92
  loc_B6AE00: FLdPr Me
  loc_B6AE03: MemLdStr global_84
  loc_B6AE06: AryLock
  loc_B6AE09: Ary1LdPr
  loc_B6AE0A: MemLdRfVar from_stack_1.global_12
  loc_B6AE0D: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6AE12: AryUnlock
  loc_B6AE15: FFreeAd var_AC = ""
  loc_B6AE1C: FFreeVar var_D0 = ""
  loc_B6AE23: FLdRfVar var_1B8
  loc_B6AE26: LitVarStr var_98, "FereCheq"
  loc_B6AE2B: PopAdLdVar
  loc_B6AE2C: FLdRfVar var_134
  loc_B6AE2F: FLdRfVar var_AC
  loc_B6AE32: FLdPr var_B0
  loc_B6AE35: from_stack_1v = clscheque.RsFrmGet()
  loc_B6AE3A: FLdPr var_AC
  loc_B6AE3D:  = Me.Fields
  loc_B6AE42: FLdPr var_134
  loc_B6AE45: from_stack_2 = Me.Item(from_stack_1)
  loc_B6AE4A: LitI2_Byte 0
  loc_B6AE4C: LitVar_Missing var_E0
  loc_B6AE4F: LitI2_Byte 0
  loc_B6AE51: FLdZeroAd var_1B8
  loc_B6AE54: CVarAd
  loc_B6AE58: PopAdLdVar
  loc_B6AE59: FLdPr Me
  loc_B6AE5C: MemLdStr global_92
  loc_B6AE5F: FLdPr Me
  loc_B6AE62: MemLdStr global_84
  loc_B6AE65: AryLock
  loc_B6AE68: Ary1LdPr
  loc_B6AE69: MemLdRfVar from_stack_1.global_16
  loc_B6AE6C: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6AE71: AryUnlock
  loc_B6AE74: FFreeAd var_AC = ""
  loc_B6AE7B: FFreeVar var_D0 = ""
  loc_B6AE82: FLdRfVar var_1B8
  loc_B6AE85: LitVarStr var_98, "FepaCheq"
  loc_B6AE8A: PopAdLdVar
  loc_B6AE8B: FLdRfVar var_134
  loc_B6AE8E: FLdRfVar var_AC
  loc_B6AE91: FLdPr var_B0
  loc_B6AE94: from_stack_1v = clscheque.RsFrmGet()
  loc_B6AE99: FLdPr var_AC
  loc_B6AE9C:  = Me.Fields
  loc_B6AEA1: FLdPr var_134
  loc_B6AEA4: from_stack_2 = Me.Item(from_stack_1)
  loc_B6AEA9: LitI2_Byte 0
  loc_B6AEAB: LitVar_Missing var_E0
  loc_B6AEAE: LitI2_Byte 0
  loc_B6AEB0: FLdZeroAd var_1B8
  loc_B6AEB3: CVarAd
  loc_B6AEB7: PopAdLdVar
  loc_B6AEB8: FLdPr Me
  loc_B6AEBB: MemLdStr global_92
  loc_B6AEBE: FLdPr Me
  loc_B6AEC1: MemLdStr global_84
  loc_B6AEC4: AryLock
  loc_B6AEC7: Ary1LdPr
  loc_B6AEC8: MemLdRfVar from_stack_1.global_20
  loc_B6AECB: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6AED0: AryUnlock
  loc_B6AED3: FFreeAd var_AC = ""
  loc_B6AEDA: FFreeVar var_D0 = ""
  loc_B6AEE1: FLdRfVar var_1B8
  loc_B6AEE4: LitVarStr var_98, "FeanCheq"
  loc_B6AEE9: PopAdLdVar
  loc_B6AEEA: FLdRfVar var_134
  loc_B6AEED: FLdRfVar var_AC
  loc_B6AEF0: FLdPr var_B0
  loc_B6AEF3: from_stack_1v = clscheque.RsFrmGet()
  loc_B6AEF8: FLdPr var_AC
  loc_B6AEFB:  = Me.Fields
  loc_B6AF00: FLdPr var_134
  loc_B6AF03: from_stack_2 = Me.Item(from_stack_1)
  loc_B6AF08: LitI2_Byte 0
  loc_B6AF0A: LitVar_Missing var_E0
  loc_B6AF0D: LitI2_Byte 0
  loc_B6AF0F: FLdZeroAd var_1B8
  loc_B6AF12: CVarAd
  loc_B6AF16: PopAdLdVar
  loc_B6AF17: FLdPr Me
  loc_B6AF1A: MemLdStr global_92
  loc_B6AF1D: FLdPr Me
  loc_B6AF20: MemLdStr global_84
  loc_B6AF23: AryLock
  loc_B6AF26: Ary1LdPr
  loc_B6AF27: MemLdRfVar from_stack_1.global_24
  loc_B6AF2A: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6AF2F: AryUnlock
  loc_B6AF32: FFreeAd var_AC = ""
  loc_B6AF39: FFreeVar var_D0 = ""
  loc_B6AF40: FLdRfVar var_1B8
  loc_B6AF43: LitVarStr var_98, "CucuPers"
  loc_B6AF48: PopAdLdVar
  loc_B6AF49: FLdRfVar var_134
  loc_B6AF4C: FLdRfVar var_AC
  loc_B6AF4F: FLdPr var_B0
  loc_B6AF52: from_stack_1v = clscheque.RsFrmGet()
  loc_B6AF57: FLdPr var_AC
  loc_B6AF5A:  = Me.Fields
  loc_B6AF5F: FLdPr var_134
  loc_B6AF62: from_stack_2 = Me.Item(from_stack_1)
  loc_B6AF67: LitI2_Byte 0
  loc_B6AF69: LitVar_Missing var_E0
  loc_B6AF6C: LitI2_Byte 0
  loc_B6AF6E: FLdZeroAd var_1B8
  loc_B6AF71: CVarAd
  loc_B6AF75: PopAdLdVar
  loc_B6AF76: FLdPr Me
  loc_B6AF79: MemLdStr global_92
  loc_B6AF7C: FLdPr Me
  loc_B6AF7F: MemLdStr global_84
  loc_B6AF82: AryLock
  loc_B6AF85: Ary1LdPr
  loc_B6AF86: MemLdRfVar from_stack_1.global_28
  loc_B6AF89: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6AF8E: AryUnlock
  loc_B6AF91: FFreeAd var_AC = ""
  loc_B6AF98: FFreeVar var_D0 = ""
  loc_B6AF9F: FLdRfVar var_1B8
  loc_B6AFA2: LitVarStr var_98, "DetaProv"
  loc_B6AFA7: PopAdLdVar
  loc_B6AFA8: FLdRfVar var_134
  loc_B6AFAB: FLdRfVar var_AC
  loc_B6AFAE: FLdPr var_B0
  loc_B6AFB1: from_stack_1v = clscheque.RsFrmGet()
  loc_B6AFB6: FLdPr var_AC
  loc_B6AFB9:  = Me.Fields
  loc_B6AFBE: FLdPr var_134
  loc_B6AFC1: from_stack_2 = Me.Item(from_stack_1)
  loc_B6AFC6: LitI2_Byte 0
  loc_B6AFC8: LitVar_Missing var_E0
  loc_B6AFCB: LitI2_Byte 0
  loc_B6AFCD: FLdZeroAd var_1B8
  loc_B6AFD0: CVarAd
  loc_B6AFD4: PopAdLdVar
  loc_B6AFD5: FLdPr Me
  loc_B6AFD8: MemLdStr global_92
  loc_B6AFDB: FLdPr Me
  loc_B6AFDE: MemLdStr global_84
  loc_B6AFE1: AryLock
  loc_B6AFE4: Ary1LdPr
  loc_B6AFE5: MemLdRfVar from_stack_1.global_32
  loc_B6AFE8: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6AFED: AryUnlock
  loc_B6AFF0: FFreeAd var_AC = ""
  loc_B6AFF7: FFreeVar var_D0 = ""
  loc_B6AFFE: FLdRfVar var_1B8
  loc_B6B001: LitVarStr var_98, "CodiBanc"
  loc_B6B006: PopAdLdVar
  loc_B6B007: FLdRfVar var_134
  loc_B6B00A: FLdRfVar var_AC
  loc_B6B00D: FLdPr var_B0
  loc_B6B010: from_stack_1v = clscheque.RsFrmGet()
  loc_B6B015: FLdPr var_AC
  loc_B6B018:  = Me.Fields
  loc_B6B01D: FLdPr var_134
  loc_B6B020: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B025: LitI2_Byte 0
  loc_B6B027: LitVar_Missing var_E0
  loc_B6B02A: LitI2_Byte 0
  loc_B6B02C: FLdZeroAd var_1B8
  loc_B6B02F: CVarAd
  loc_B6B033: PopAdLdVar
  loc_B6B034: FLdPr Me
  loc_B6B037: MemLdStr global_92
  loc_B6B03A: FLdPr Me
  loc_B6B03D: MemLdStr global_84
  loc_B6B040: AryLock
  loc_B6B043: Ary1LdPr
  loc_B6B044: MemLdRfVar from_stack_1.global_36
  loc_B6B047: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6B04C: AryUnlock
  loc_B6B04F: FFreeAd var_AC = ""
  loc_B6B056: FFreeVar var_D0 = ""
  loc_B6B05D: FLdRfVar var_1B8
  loc_B6B060: LitVarStr var_98, "DetaBanc"
  loc_B6B065: PopAdLdVar
  loc_B6B066: FLdRfVar var_134
  loc_B6B069: FLdRfVar var_AC
  loc_B6B06C: FLdPr var_B0
  loc_B6B06F: from_stack_1v = clscheque.RsFrmGet()
  loc_B6B074: FLdPr var_AC
  loc_B6B077:  = Me.Fields
  loc_B6B07C: FLdPr var_134
  loc_B6B07F: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B084: LitI2_Byte 0
  loc_B6B086: LitVar_Missing var_E0
  loc_B6B089: LitI2_Byte 0
  loc_B6B08B: FLdZeroAd var_1B8
  loc_B6B08E: CVarAd
  loc_B6B092: PopAdLdVar
  loc_B6B093: FLdPr Me
  loc_B6B096: MemLdStr global_92
  loc_B6B099: FLdPr Me
  loc_B6B09C: MemLdStr global_84
  loc_B6B09F: AryLock
  loc_B6B0A2: Ary1LdPr
  loc_B6B0A3: MemLdRfVar from_stack_1.global_40
  loc_B6B0A6: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6B0AB: AryUnlock
  loc_B6B0AE: FFreeAd var_AC = ""
  loc_B6B0B5: FFreeVar var_D0 = ""
  loc_B6B0BC: FLdRfVar var_1B8
  loc_B6B0BF: LitVarStr var_98, "NumeMoba"
  loc_B6B0C4: PopAdLdVar
  loc_B6B0C5: FLdRfVar var_134
  loc_B6B0C8: FLdRfVar var_AC
  loc_B6B0CB: FLdPr var_B0
  loc_B6B0CE: from_stack_1v = clscheque.RsFrmGet()
  loc_B6B0D3: FLdPr var_AC
  loc_B6B0D6:  = Me.Fields
  loc_B6B0DB: FLdPr var_134
  loc_B6B0DE: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B0E3: LitI2_Byte 0
  loc_B6B0E5: LitVar_Missing var_E0
  loc_B6B0E8: LitI2_Byte 0
  loc_B6B0EA: FLdZeroAd var_1B8
  loc_B6B0ED: CVarAd
  loc_B6B0F1: PopAdLdVar
  loc_B6B0F2: FLdPr Me
  loc_B6B0F5: MemLdStr global_92
  loc_B6B0F8: FLdPr Me
  loc_B6B0FB: MemLdStr global_84
  loc_B6B0FE: AryLock
  loc_B6B101: Ary1LdPr
  loc_B6B102: MemLdRfVar from_stack_1.global_44
  loc_B6B105: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6B10A: AryUnlock
  loc_B6B10D: FFreeAd var_AC = ""
  loc_B6B114: FFreeVar var_D0 = ""
  loc_B6B11B: FLdRfVar var_1B8
  loc_B6B11E: LitVarStr var_98, "ImpoCheq"
  loc_B6B123: PopAdLdVar
  loc_B6B124: FLdRfVar var_134
  loc_B6B127: FLdRfVar var_AC
  loc_B6B12A: FLdPr var_B0
  loc_B6B12D: from_stack_1v = clscheque.RsFrmGet()
  loc_B6B132: FLdPr var_AC
  loc_B6B135:  = Me.Fields
  loc_B6B13A: FLdPr var_134
  loc_B6B13D: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B142: LitI2_Byte 0
  loc_B6B144: FLdPr Me
  loc_B6B147: MemLdRfVar from_stack_1.global_96
  loc_B6B14A: CVarRef
  loc_B6B14F: LitI2_Byte &HFF
  loc_B6B151: FLdZeroAd var_1B8
  loc_B6B154: CVarAd
  loc_B6B158: PopAdLdVar
  loc_B6B159: FLdPr Me
  loc_B6B15C: MemLdStr global_92
  loc_B6B15F: FLdPr Me
  loc_B6B162: MemLdStr global_84
  loc_B6B165: AryLock
  loc_B6B168: Ary1LdPr
  loc_B6B169: MemLdRfVar from_stack_1.global_48
  loc_B6B16C: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6B171: AryUnlock
  loc_B6B174: FFreeAd var_AC = ""
  loc_B6B17B: FFree1Var var_D0 = ""
  loc_B6B17E: FLdPr var_B0
  loc_B6B181: Call clscheque.MoveSiguiente()
  loc_B6B186: FLdPr Me
  loc_B6B189: MemLdRfVar from_stack_1.global_92
  loc_B6B18C: NextI4 var_32C, loc_B6ACA7
  loc_B6B191: LitNothing
  loc_B6B193: FStAd var_B0 
  loc_B6B197: LitStr "0"
  loc_B6B19A: FLdPr Me
  loc_B6B19D: MemStStrCopy
  loc_B6B1A1: FLdPr Me
  loc_B6B1A4: MemLdRfVar from_stack_1.global_76
  loc_B6B1A7: NewIfNullAd
  loc_B6B1AA: FStAd var_334 
  loc_B6B1AE: FLdPr Me
  loc_B6B1B1: VCallAd Control_ID_mskDesde
  loc_B6B1B4: FStAdFunc var_AC
  loc_B6B1B7: FLdPr var_AC
  loc_B6B1BA: LateIdLdVar var_D0 DispID_15 0
  loc_B6B1C1: PopAd
  loc_B6B1C3: FLdPr Me
  loc_B6B1C6: VCallAd Control_ID_mskHasta
  loc_B6B1C9: FStAdFunc var_134
  loc_B6B1CC: FLdPr var_134
  loc_B6B1CF: LateIdLdVar var_144 DispID_15 0
  loc_B6B1D6: PopAd
  loc_B6B1D8: FLdPr Me
  loc_B6B1DB: VCallAd Control_ID_mskHasta
  loc_B6B1DE: FStAdFunc var_1B8
  loc_B6B1E1: FLdPr var_1B8
  loc_B6B1E4: LateIdLdVar var_1C8 DispID_15 0
  loc_B6B1EB: PopAd
  loc_B6B1ED: FLdPr Me
  loc_B6B1F0: VCallAd Control_ID_mskHasta
  loc_B6B1F3: FStAdFunc var_25C
  loc_B6B1F6: FLdPr var_25C
  loc_B6B1F9: LateIdLdVar var_26C DispID_15 0
  loc_B6B200: PopAd
  loc_B6B202: LitStr "SELECT ch.CodiBanc, DetaBanc, Sum(ImpoCheq) ImpoCheq"
  loc_B6B205: LitStr " FROM cheque ch"
  loc_B6B208: ConcatStr
  loc_B6B209: FStStrNoPop var_B4
  loc_B6B20C: LitStr " INNER JOIN ordenpago op ON op.PeriInfo = ch.PeriInfo AND op.NumeOrpa = ch.NumeOrpa AND op.FeanOrpa IS NULL"
  loc_B6B20F: ConcatStr
  loc_B6B210: FStStrNoPop var_B8
  loc_B6B213: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_B6B216: ConcatStr
  loc_B6B217: FStStrNoPop var_BC
  loc_B6B21A: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B6B21D: ConcatStr
  loc_B6B21E: FStStrNoPop var_C0
  loc_B6B221: LitStr " WHERE FechCheq BETWEEN "
  loc_B6B224: ConcatStr
  loc_B6B225: CVarStr var_110
  loc_B6B228: LitI4 1
  loc_B6B22D: LitI4 1
  loc_B6B232: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_B6B237: FStVarCopyObj var_F0
  loc_B6B23A: FLdRfVar var_F0
  loc_B6B23D: FLdRfVar var_D0
  loc_B6B240: CStrVarTmp
  loc_B6B241: CVarStr var_E0
  loc_B6B244: FLdRfVar var_100
  loc_B6B247: ImpAdCallFPR4  = Format(, )
  loc_B6B24C: FLdRfVar var_100
  loc_B6B24F: ConcatVar var_120
  loc_B6B253: LitVarStr var_A8, " AND "
  loc_B6B258: ConcatVar var_130
  loc_B6B25C: LitI4 1
  loc_B6B261: LitI4 1
  loc_B6B266: LitVarStr var_164, "'yyyy-mm-dd'"
  loc_B6B26B: FStVarCopyObj var_174
  loc_B6B26E: FLdRfVar var_174
  loc_B6B271: FLdRfVar var_144
  loc_B6B274: CStrVarTmp
  loc_B6B275: CVarStr var_154
  loc_B6B278: FLdRfVar var_184
  loc_B6B27B: ImpAdCallFPR4  = Format(, )
  loc_B6B280: FLdRfVar var_184
  loc_B6B283: ConcatVar var_194
  loc_B6B287: LitVarStr var_1A4, " AND (FereCheq IS NULL OR FereCheq > "
  loc_B6B28C: ConcatVar var_1B4
  loc_B6B290: LitI4 1
  loc_B6B295: LitI4 1
  loc_B6B29A: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_B6B29F: FStVarCopyObj var_1F8
  loc_B6B2A2: FLdRfVar var_1F8
  loc_B6B2A5: FLdRfVar var_1C8
  loc_B6B2A8: CStrVarTmp
  loc_B6B2A9: CVarStr var_1D8
  loc_B6B2AC: FLdRfVar var_208
  loc_B6B2AF: ImpAdCallFPR4  = Format(, )
  loc_B6B2B4: FLdRfVar var_208
  loc_B6B2B7: ConcatVar var_218
  loc_B6B2BB: LitVarStr var_228, ")"
  loc_B6B2C0: ConcatVar var_238
  loc_B6B2C4: LitVarStr var_248, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_B6B2C9: ConcatVar var_258
  loc_B6B2CD: LitI4 1
  loc_B6B2D2: LitI4 1
  loc_B6B2D7: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_B6B2DC: FStVarCopyObj var_29C
  loc_B6B2DF: FLdRfVar var_29C
  loc_B6B2E2: FLdRfVar var_26C
  loc_B6B2E5: CStrVarTmp
  loc_B6B2E6: CVarStr var_27C
  loc_B6B2E9: FLdRfVar var_2AC
  loc_B6B2EC: ImpAdCallFPR4  = Format(, )
  loc_B6B2F1: FLdRfVar var_2AC
  loc_B6B2F4: ConcatVar var_2BC
  loc_B6B2F8: LitVarStr var_2CC, ")"
  loc_B6B2FD: ConcatVar var_2DC
  loc_B6B301: LitVarStr var_2EC, " AND AutoCheq = 3"
  loc_B6B306: ConcatVar var_2FC
  loc_B6B30A: LitVarStr var_30C, " GROUP BY CodiBanc;"
  loc_B6B30F: ConcatVar var_31C
  loc_B6B313: CStrVarVal var_320
  loc_B6B317: FLdPr var_334
  loc_B6B31A: Call clscheque.RedefineRS(from_stack_1v)
  loc_B6B31F: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B6B32C: FFreeAd var_AC = "": var_134 = "": var_1B8 = ""
  loc_B6B337: FFreeVar var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_100 = "": var_120 = "": var_144 = "": var_154 = "": var_174 = "": var_130 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = "": var_218 = "": var_238 = "": var_26C = "": var_27C = "": var_29C = "": var_258 = "": var_2AC = "": var_2BC = "": var_2DC = "": var_2FC = ""
  loc_B6B372: LitI4 1
  loc_B6B377: FLdRfVar var_324
  loc_B6B37A: FLdPr var_334
  loc_B6B37D: from_stack_1 = clscheque.RecordCount
  loc_B6B382: ILdRf var_324
  loc_B6B385: FLdPr Me
  loc_B6B388: MemLdRfVar from_stack_1.global_88
  loc_B6B38B: Redim
  loc_B6B395: FLdPr var_334
  loc_B6B398: Call clscheque.MoveFirst()
  loc_B6B39D: LitI4 1
  loc_B6B3A2: FLdPr Me
  loc_B6B3A5: MemLdRfVar from_stack_1.global_92
  loc_B6B3A8: FLdPr Me
  loc_B6B3AB: MemLdStr global_88
  loc_B6B3AE: LitI2_Byte 1
  loc_B6B3B0: FnUBound
  loc_B6B3B2: ForI4 var_33C
  loc_B6B3B8: FLdRfVar var_1B8
  loc_B6B3BB: LitVarStr var_98, "CodiBanc"
  loc_B6B3C0: PopAdLdVar
  loc_B6B3C1: FLdRfVar var_134
  loc_B6B3C4: FLdRfVar var_AC
  loc_B6B3C7: FLdPr var_334
  loc_B6B3CA: from_stack_1v = clscheque.RsFrmGet()
  loc_B6B3CF: FLdPr var_AC
  loc_B6B3D2:  = Me.Fields
  loc_B6B3D7: FLdPr var_134
  loc_B6B3DA: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B3DF: LitI2_Byte 0
  loc_B6B3E1: LitVar_Missing var_E0
  loc_B6B3E4: LitI2_Byte 0
  loc_B6B3E6: FLdZeroAd var_1B8
  loc_B6B3E9: CVarAd
  loc_B6B3ED: PopAdLdVar
  loc_B6B3EE: FLdPr Me
  loc_B6B3F1: MemLdStr global_92
  loc_B6B3F4: FLdPr Me
  loc_B6B3F7: MemLdStr global_88
  loc_B6B3FA: AryLock
  loc_B6B3FD: Ary1LdPr
  loc_B6B3FE: MemLdRfVar from_stack_1.global_36
  loc_B6B401: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6B406: AryUnlock
  loc_B6B409: FFreeAd var_AC = ""
  loc_B6B410: FFreeVar var_D0 = ""
  loc_B6B417: FLdRfVar var_1B8
  loc_B6B41A: LitVarStr var_98, "DetaBanc"
  loc_B6B41F: PopAdLdVar
  loc_B6B420: FLdRfVar var_134
  loc_B6B423: FLdRfVar var_AC
  loc_B6B426: FLdPr var_334
  loc_B6B429: from_stack_1v = clscheque.RsFrmGet()
  loc_B6B42E: FLdPr var_AC
  loc_B6B431:  = Me.Fields
  loc_B6B436: FLdPr var_134
  loc_B6B439: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B43E: LitI2_Byte 0
  loc_B6B440: LitVar_Missing var_E0
  loc_B6B443: LitI2_Byte 0
  loc_B6B445: FLdZeroAd var_1B8
  loc_B6B448: CVarAd
  loc_B6B44C: PopAdLdVar
  loc_B6B44D: FLdPr Me
  loc_B6B450: MemLdStr global_92
  loc_B6B453: FLdPr Me
  loc_B6B456: MemLdStr global_88
  loc_B6B459: AryLock
  loc_B6B45C: Ary1LdPr
  loc_B6B45D: MemLdRfVar from_stack_1.global_40
  loc_B6B460: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6B465: AryUnlock
  loc_B6B468: FFreeAd var_AC = ""
  loc_B6B46F: FFreeVar var_D0 = ""
  loc_B6B476: FLdRfVar var_1B8
  loc_B6B479: LitVarStr var_98, "ImpoCheq"
  loc_B6B47E: PopAdLdVar
  loc_B6B47F: FLdRfVar var_134
  loc_B6B482: FLdRfVar var_AC
  loc_B6B485: FLdPr var_334
  loc_B6B488: from_stack_1v = clscheque.RsFrmGet()
  loc_B6B48D: FLdPr var_AC
  loc_B6B490:  = Me.Fields
  loc_B6B495: FLdPr var_134
  loc_B6B498: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B49D: LitI2_Byte 0
  loc_B6B49F: FLdPr Me
  loc_B6B4A2: MemLdRfVar from_stack_1.global_100
  loc_B6B4A5: CVarRef
  loc_B6B4AA: LitI2_Byte &HFF
  loc_B6B4AC: FLdZeroAd var_1B8
  loc_B6B4AF: CVarAd
  loc_B6B4B3: PopAdLdVar
  loc_B6B4B4: FLdPr Me
  loc_B6B4B7: MemLdStr global_92
  loc_B6B4BA: FLdPr Me
  loc_B6B4BD: MemLdStr global_88
  loc_B6B4C0: AryLock
  loc_B6B4C3: Ary1LdPr
  loc_B6B4C4: MemLdRfVar from_stack_1.global_48
  loc_B6B4C7: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B6B4CC: AryUnlock
  loc_B6B4CF: FFreeAd var_AC = ""
  loc_B6B4D6: FFree1Var var_D0 = ""
  loc_B6B4D9: FLdPr var_334
  loc_B6B4DC: Call clscheque.MoveSiguiente()
  loc_B6B4E1: FLdPr Me
  loc_B6B4E4: MemLdRfVar from_stack_1.global_92
  loc_B6B4E7: NextI4 var_33C, loc_B6B3B8
  loc_B6B4EC: LitNothing
  loc_B6B4EE: FStAd var_334 
  loc_B6B4F2: LitI2_Byte &HFF
  loc_B6B4F4: FLdPr Me
  loc_B6B4F7: MemStI2 bGenerado
  loc_B6B4FA: LitI4 0
  loc_B6B4FF: CI2I4
  loc_B6B500: FLdPr Me
  loc_B6B503: Me.MousePointer = from_stack_1
  loc_B6B508: LitVarStr var_98, vbNullString
  loc_B6B50D: PopAdLdVar
  loc_B6B50E: FLdPr Me
  loc_B6B511: VCallAd Control_ID_statusBar
  loc_B6B514: FStAdFunc var_AC
  loc_B6B517: FLdPr var_AC
  loc_B6B51A: LateIdSt
  loc_B6B51F: FFree1Ad var_AC
  loc_B6B522: ExitProcHresult
End Sub

Public Sub GeneraXLS() '96DD64
  'Data Table: 45C5E4
  loc_96DD3C: LitI2_Byte &HFF
  loc_96DD3E: FLdPr Me
  loc_96DD41: MemStI2 global_104
  loc_96DD44: LitI2_Byte 0
  loc_96DD46: FLdPr Me
  loc_96DD49: MemStI2 bLogos
  loc_96DD4C: Call GeneraHTML()
  loc_96DD51: LitI2_Byte &HFF
  loc_96DD53: FLdPr Me
  loc_96DD56: MemStI2 bLogos
  loc_96DD59: LitI2_Byte 0
  loc_96DD5B: FLdPr Me
  loc_96DD5E: MemStI2 global_104
  loc_96DD61: ExitProcHresult
  loc_96DD62: ImpAdStI2 MemVar_4012C6
End Sub

Public Sub GeneraHTML() 'ABB108
  'Data Table: 45C5E4
  loc_ABAB58: FLdRfVar var_88
  loc_ABAB5B: LitI2_Byte 0
  loc_ABAB5D: LitI2_Byte &HFF
  loc_ABAB5F: ImpAdLdI4 MemVar_C3D83C
  loc_ABAB62: FLdPr Me
  loc_ABAB65: MemLdRfVar from_stack_1.global_80
  loc_ABAB68: NewIfNullPr IFileSystem3
  loc_ABAB6B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ABAB70: ILdRf var_88
  loc_ABAB73: FLdPr Me
  loc_ABAB76: MemStVarAd
  loc_ABAB7A: FFree1Ad var_88
  loc_ABAB7D: Call Proc_295_28_A7C264()
  loc_ABAB82: LitI4 1
  loc_ABAB87: FLdPr Me
  loc_ABAB8A: MemLdRfVar from_stack_1.global_92
  loc_ABAB8D: FLdPr Me
  loc_ABAB90: MemLdStr global_84
  loc_ABAB93: LitI2_Byte 1
  loc_ABAB95: FnUBound
  loc_ABAB97: ForI4 var_90
  loc_ABAB9D: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ABABA2: PopAdLdVar
  loc_ABABA3: FLdPr Me
  loc_ABABA6: MemLdRfVar from_stack_1.htmFile
  loc_ABABA9: LdPrVar
  loc_ABABAB: LateMemCall
  loc_ABABB1: FLdPr Me
  loc_ABABB4: MemLdStr global_92
  loc_ABABB7: FLdPr Me
  loc_ABABBA: MemLdStr global_84
  loc_ABABBD: AryLock
  loc_ABABC0: Ary1LdRf
  loc_ABABC1: FStR4 var_B8
  loc_ABABC4: LitI4 0
  loc_ABABC9: LitI4 0
  loc_ABABCE: LitI2_Byte 0
  loc_ABABD0: LitStr "right"
  loc_ABABD3: FMemLdR4 var_B8(0)
  loc_ABABD8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABABDD: CVarStr var_C8
  loc_ABABE0: PopAdLdVar
  loc_ABABE1: FLdPr Me
  loc_ABABE4: MemLdRfVar from_stack_1.htmFile
  loc_ABABE7: LdPrVar
  loc_ABABE9: LateMemCall
  loc_ABABEF: FFree1Var var_C8 = ""
  loc_ABABF2: LitI4 0
  loc_ABABF7: LitI4 0
  loc_ABABFC: LitI2_Byte 0
  loc_ABABFE: LitStr "left"
  loc_ABAC01: FMemLdR4 var_B8(4)
  loc_ABAC06: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABAC0B: CVarStr var_C8
  loc_ABAC0E: PopAdLdVar
  loc_ABAC0F: FLdPr Me
  loc_ABAC12: MemLdRfVar from_stack_1.htmFile
  loc_ABAC15: LdPrVar
  loc_ABAC17: LateMemCall
  loc_ABAC1D: FFree1Var var_C8 = ""
  loc_ABAC20: LitI4 0
  loc_ABAC25: LitI4 0
  loc_ABAC2A: LitI2_Byte 0
  loc_ABAC2C: LitStr "right"
  loc_ABAC2F: FMemLdR4 var_B8(8)
  loc_ABAC34: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABAC39: CVarStr var_C8
  loc_ABAC3C: PopAdLdVar
  loc_ABAC3D: FLdPr Me
  loc_ABAC40: MemLdRfVar from_stack_1.htmFile
  loc_ABAC43: LdPrVar
  loc_ABAC45: LateMemCall
  loc_ABAC4B: FFree1Var var_C8 = ""
  loc_ABAC4E: LitI4 0
  loc_ABAC53: LitI4 0
  loc_ABAC58: LitI2_Byte 0
  loc_ABAC5A: LitStr "center"
  loc_ABAC5D: FMemLdR4 var_B8(12)
  loc_ABAC62: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABAC67: CVarStr var_C8
  loc_ABAC6A: PopAdLdVar
  loc_ABAC6B: FLdPr Me
  loc_ABAC6E: MemLdRfVar from_stack_1.htmFile
  loc_ABAC71: LdPrVar
  loc_ABAC73: LateMemCall
  loc_ABAC79: FFree1Var var_C8 = ""
  loc_ABAC7C: LitI4 0
  loc_ABAC81: LitI4 0
  loc_ABAC86: LitI2_Byte 0
  loc_ABAC88: LitStr "center"
  loc_ABAC8B: FMemLdR4 var_B8(16)
  loc_ABAC90: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABAC95: CVarStr var_C8
  loc_ABAC98: PopAdLdVar
  loc_ABAC99: FLdPr Me
  loc_ABAC9C: MemLdRfVar from_stack_1.htmFile
  loc_ABAC9F: LdPrVar
  loc_ABACA1: LateMemCall
  loc_ABACA7: FFree1Var var_C8 = ""
  loc_ABACAA: LitI4 0
  loc_ABACAF: LitI4 0
  loc_ABACB4: LitI2_Byte 0
  loc_ABACB6: LitStr "center"
  loc_ABACB9: FMemLdR4 var_B8(20)
  loc_ABACBE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABACC3: CVarStr var_C8
  loc_ABACC6: PopAdLdVar
  loc_ABACC7: FLdPr Me
  loc_ABACCA: MemLdRfVar from_stack_1.htmFile
  loc_ABACCD: LdPrVar
  loc_ABACCF: LateMemCall
  loc_ABACD5: FFree1Var var_C8 = ""
  loc_ABACD8: LitI4 0
  loc_ABACDD: LitI4 0
  loc_ABACE2: LitI2_Byte 0
  loc_ABACE4: LitStr "center"
  loc_ABACE7: FMemLdR4 var_B8(24)
  loc_ABACEC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABACF1: CVarStr var_C8
  loc_ABACF4: PopAdLdVar
  loc_ABACF5: FLdPr Me
  loc_ABACF8: MemLdRfVar from_stack_1.htmFile
  loc_ABACFB: LdPrVar
  loc_ABACFD: LateMemCall
  loc_ABAD03: FFree1Var var_C8 = ""
  loc_ABAD06: LitI4 0
  loc_ABAD0B: LitI4 0
  loc_ABAD10: LitI2_Byte 0
  loc_ABAD12: LitStr "left"
  loc_ABAD15: FMemLdR4 var_B8(28)
  loc_ABAD1A: LitStr " "
  loc_ABAD1D: ConcatStr
  loc_ABAD1E: FStStrNoPop var_CC
  loc_ABAD21: FMemLdR4 var_B8(32)
  loc_ABAD26: ConcatStr
  loc_ABAD27: FStStrNoPop var_D0
  loc_ABAD2A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABAD2F: CVarStr var_C8
  loc_ABAD32: PopAdLdVar
  loc_ABAD33: FLdPr Me
  loc_ABAD36: MemLdRfVar from_stack_1.htmFile
  loc_ABAD39: LdPrVar
  loc_ABAD3B: LateMemCall
  loc_ABAD41: FFreeStr var_CC = ""
  loc_ABAD48: FFree1Var var_C8 = ""
  loc_ABAD4B: LitI4 0
  loc_ABAD50: LitI4 0
  loc_ABAD55: LitI2_Byte 0
  loc_ABAD57: LitStr "left"
  loc_ABAD5A: FMemLdR4 var_B8(36)
  loc_ABAD5F: LitStr " "
  loc_ABAD62: ConcatStr
  loc_ABAD63: FStStrNoPop var_CC
  loc_ABAD66: FMemLdR4 var_B8(40)
  loc_ABAD6B: ConcatStr
  loc_ABAD6C: FStStrNoPop var_D0
  loc_ABAD6F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABAD74: CVarStr var_C8
  loc_ABAD77: PopAdLdVar
  loc_ABAD78: FLdPr Me
  loc_ABAD7B: MemLdRfVar from_stack_1.htmFile
  loc_ABAD7E: LdPrVar
  loc_ABAD80: LateMemCall
  loc_ABAD86: FFreeStr var_CC = ""
  loc_ABAD8D: FFree1Var var_C8 = ""
  loc_ABAD90: LitI4 0
  loc_ABAD95: LitI4 0
  loc_ABAD9A: LitI2_Byte 0
  loc_ABAD9C: LitStr "right"
  loc_ABAD9F: FMemLdR4 var_B8(44)
  loc_ABADA4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABADA9: CVarStr var_C8
  loc_ABADAC: PopAdLdVar
  loc_ABADAD: FLdPr Me
  loc_ABADB0: MemLdRfVar from_stack_1.htmFile
  loc_ABADB3: LdPrVar
  loc_ABADB5: LateMemCall
  loc_ABADBB: FFree1Var var_C8 = ""
  loc_ABADBE: LitI4 0
  loc_ABADC3: LitI4 0
  loc_ABADC8: LitI2_Byte 0
  loc_ABADCA: LitStr "right"
  loc_ABADCD: FMemLdR4 var_B8(48)
  loc_ABADD2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABADD7: CVarStr var_C8
  loc_ABADDA: PopAdLdVar
  loc_ABADDB: FLdPr Me
  loc_ABADDE: MemLdRfVar from_stack_1.htmFile
  loc_ABADE1: LdPrVar
  loc_ABADE3: LateMemCall
  loc_ABADE9: FFree1Var var_C8 = ""
  loc_ABADEC: LitVarStr var_A0, "  </tr>"
  loc_ABADF1: PopAdLdVar
  loc_ABADF2: FLdPr Me
  loc_ABADF5: MemLdRfVar from_stack_1.htmFile
  loc_ABADF8: LdPrVar
  loc_ABADFA: LateMemCall
  loc_ABAE00: LitI4 0
  loc_ABAE05: FStR4 var_B8
  loc_ABAE08: AryUnlock
  loc_ABAE0B: FLdPr Me
  loc_ABAE0E: MemLdRfVar from_stack_1.global_92
  loc_ABAE11: NextI4 var_90, loc_ABAB9D
  loc_ABAE16: LitVarStr var_A0, "  <tr>"
  loc_ABAE1B: PopAdLdVar
  loc_ABAE1C: FLdPr Me
  loc_ABAE1F: MemLdRfVar from_stack_1.htmFile
  loc_ABAE22: LdPrVar
  loc_ABAE24: LateMemCall
  loc_ABAE2A: LitVarStr var_A0, "     <td colspan=""10"">&nbsp;</td>"
  loc_ABAE2F: PopAdLdVar
  loc_ABAE30: FLdPr Me
  loc_ABAE33: MemLdRfVar from_stack_1.htmFile
  loc_ABAE36: LdPrVar
  loc_ABAE38: LateMemCall
  loc_ABAE3E: LitStr "     <td class=""Totales"" align=""right"">"
  loc_ABAE41: FLdPr Me
  loc_ABAE44: MemLdStr global_96
  loc_ABAE47: ConcatStr
  loc_ABAE48: FStStrNoPop var_CC
  loc_ABAE4B: LitStr "</td>"
  loc_ABAE4E: ConcatStr
  loc_ABAE4F: CVarStr var_C8
  loc_ABAE52: PopAdLdVar
  loc_ABAE53: FLdPr Me
  loc_ABAE56: MemLdRfVar from_stack_1.htmFile
  loc_ABAE59: LdPrVar
  loc_ABAE5B: LateMemCall
  loc_ABAE61: FFree1Str var_CC
  loc_ABAE64: FFree1Var var_C8 = ""
  loc_ABAE67: LitVarStr var_A0, "  </tr>"
  loc_ABAE6C: PopAdLdVar
  loc_ABAE6D: FLdPr Me
  loc_ABAE70: MemLdRfVar from_stack_1.htmFile
  loc_ABAE73: LdPrVar
  loc_ABAE75: LateMemCall
  loc_ABAE7B: LitVarStr var_A0, "</table>"
  loc_ABAE80: PopAdLdVar
  loc_ABAE81: FLdPr Me
  loc_ABAE84: MemLdRfVar from_stack_1.htmFile
  loc_ABAE87: LdPrVar
  loc_ABAE89: LateMemCall
  loc_ABAE8F: LitVarStr var_A0, "<br><br>"
  loc_ABAE94: PopAdLdVar
  loc_ABAE95: FLdPr Me
  loc_ABAE98: MemLdRfVar from_stack_1.htmFile
  loc_ABAE9B: LdPrVar
  loc_ABAE9D: LateMemCall
  loc_ABAEA3: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ABAEA8: PopAdLdVar
  loc_ABAEA9: FLdPr Me
  loc_ABAEAC: MemLdRfVar from_stack_1.htmFile
  loc_ABAEAF: LdPrVar
  loc_ABAEB1: LateMemCall
  loc_ABAEB7: LitVarStr var_A0, "  <THEAD>"
  loc_ABAEBC: PopAdLdVar
  loc_ABAEBD: FLdPr Me
  loc_ABAEC0: MemLdRfVar from_stack_1.htmFile
  loc_ABAEC3: LdPrVar
  loc_ABAEC5: LateMemCall
  loc_ABAECB: LitVarStr var_A0, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_ABAED0: PopAdLdVar
  loc_ABAED1: FLdPr Me
  loc_ABAED4: MemLdRfVar from_stack_1.htmFile
  loc_ABAED7: LdPrVar
  loc_ABAED9: LateMemCall
  loc_ABAEDF: LitVarStr var_A0, "    <th colspan=""3"">Resumen por Banco</th>"
  loc_ABAEE4: PopAdLdVar
  loc_ABAEE5: FLdPr Me
  loc_ABAEE8: MemLdRfVar from_stack_1.htmFile
  loc_ABAEEB: LdPrVar
  loc_ABAEED: LateMemCall
  loc_ABAEF3: LitVarStr var_A0, "  </tr>"
  loc_ABAEF8: PopAdLdVar
  loc_ABAEF9: FLdPr Me
  loc_ABAEFC: MemLdRfVar from_stack_1.htmFile
  loc_ABAEFF: LdPrVar
  loc_ABAF01: LateMemCall
  loc_ABAF07: LitVarStr var_A0, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_ABAF0C: PopAdLdVar
  loc_ABAF0D: FLdPr Me
  loc_ABAF10: MemLdRfVar from_stack_1.htmFile
  loc_ABAF13: LdPrVar
  loc_ABAF15: LateMemCall
  loc_ABAF1B: LitVarStr var_A0, "    <th>Código</th>"
  loc_ABAF20: PopAdLdVar
  loc_ABAF21: FLdPr Me
  loc_ABAF24: MemLdRfVar from_stack_1.htmFile
  loc_ABAF27: LdPrVar
  loc_ABAF29: LateMemCall
  loc_ABAF2F: LitVarStr var_A0, "    <th>Banco</th>"
  loc_ABAF34: PopAdLdVar
  loc_ABAF35: FLdPr Me
  loc_ABAF38: MemLdRfVar from_stack_1.htmFile
  loc_ABAF3B: LdPrVar
  loc_ABAF3D: LateMemCall
  loc_ABAF43: LitVarStr var_A0, "    <th>Cheques a cargo</th>"
  loc_ABAF48: PopAdLdVar
  loc_ABAF49: FLdPr Me
  loc_ABAF4C: MemLdRfVar from_stack_1.htmFile
  loc_ABAF4F: LdPrVar
  loc_ABAF51: LateMemCall
  loc_ABAF57: LitVarStr var_A0, "  </tr>"
  loc_ABAF5C: PopAdLdVar
  loc_ABAF5D: FLdPr Me
  loc_ABAF60: MemLdRfVar from_stack_1.htmFile
  loc_ABAF63: LdPrVar
  loc_ABAF65: LateMemCall
  loc_ABAF6B: LitVarStr var_A0, "  </THEAD>"
  loc_ABAF70: PopAdLdVar
  loc_ABAF71: FLdPr Me
  loc_ABAF74: MemLdRfVar from_stack_1.htmFile
  loc_ABAF77: LdPrVar
  loc_ABAF79: LateMemCall
  loc_ABAF7F: LitI4 1
  loc_ABAF84: FLdPr Me
  loc_ABAF87: MemLdRfVar from_stack_1.global_92
  loc_ABAF8A: FLdPr Me
  loc_ABAF8D: MemLdStr global_88
  loc_ABAF90: LitI2_Byte 1
  loc_ABAF92: FnUBound
  loc_ABAF94: ForI4 var_D8
  loc_ABAF9A: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ABAF9F: PopAdLdVar
  loc_ABAFA0: FLdPr Me
  loc_ABAFA3: MemLdRfVar from_stack_1.htmFile
  loc_ABAFA6: LdPrVar
  loc_ABAFA8: LateMemCall
  loc_ABAFAE: FLdPr Me
  loc_ABAFB1: MemLdStr global_92
  loc_ABAFB4: FLdPr Me
  loc_ABAFB7: MemLdStr global_88
  loc_ABAFBA: AryLock
  loc_ABAFBD: Ary1LdRf
  loc_ABAFBE: FStR4 var_E0
  loc_ABAFC1: LitI4 0
  loc_ABAFC6: LitI4 0
  loc_ABAFCB: LitI2_Byte 0
  loc_ABAFCD: LitStr "right"
  loc_ABAFD0: FMemLdR4 var_E0(36)
  loc_ABAFD5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABAFDA: CVarStr var_C8
  loc_ABAFDD: PopAdLdVar
  loc_ABAFDE: FLdPr Me
  loc_ABAFE1: MemLdRfVar from_stack_1.htmFile
  loc_ABAFE4: LdPrVar
  loc_ABAFE6: LateMemCall
  loc_ABAFEC: FFree1Var var_C8 = ""
  loc_ABAFEF: LitI4 0
  loc_ABAFF4: LitI4 0
  loc_ABAFF9: LitI2_Byte 0
  loc_ABAFFB: LitStr "left"
  loc_ABAFFE: FMemLdR4 var_E0(40)
  loc_ABB003: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABB008: CVarStr var_C8
  loc_ABB00B: PopAdLdVar
  loc_ABB00C: FLdPr Me
  loc_ABB00F: MemLdRfVar from_stack_1.htmFile
  loc_ABB012: LdPrVar
  loc_ABB014: LateMemCall
  loc_ABB01A: FFree1Var var_C8 = ""
  loc_ABB01D: LitI4 0
  loc_ABB022: LitI4 0
  loc_ABB027: LitI2_Byte 0
  loc_ABB029: LitStr "right"
  loc_ABB02C: FMemLdR4 var_E0(48)
  loc_ABB031: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABB036: CVarStr var_C8
  loc_ABB039: PopAdLdVar
  loc_ABB03A: FLdPr Me
  loc_ABB03D: MemLdRfVar from_stack_1.htmFile
  loc_ABB040: LdPrVar
  loc_ABB042: LateMemCall
  loc_ABB048: FFree1Var var_C8 = ""
  loc_ABB04B: LitVarStr var_A0, "  </tr>"
  loc_ABB050: PopAdLdVar
  loc_ABB051: FLdPr Me
  loc_ABB054: MemLdRfVar from_stack_1.htmFile
  loc_ABB057: LdPrVar
  loc_ABB059: LateMemCall
  loc_ABB05F: LitI4 0
  loc_ABB064: FStR4 var_E0
  loc_ABB067: AryUnlock
  loc_ABB06A: FLdPr Me
  loc_ABB06D: MemLdRfVar from_stack_1.global_92
  loc_ABB070: NextI4 var_D8, loc_ABAF9A
  loc_ABB075: LitVarStr var_A0, "  <tr>"
  loc_ABB07A: PopAdLdVar
  loc_ABB07B: FLdPr Me
  loc_ABB07E: MemLdRfVar from_stack_1.htmFile
  loc_ABB081: LdPrVar
  loc_ABB083: LateMemCall
  loc_ABB089: LitVarStr var_A0, "     <td colspan=""2"">&nbsp;</td>"
  loc_ABB08E: PopAdLdVar
  loc_ABB08F: FLdPr Me
  loc_ABB092: MemLdRfVar from_stack_1.htmFile
  loc_ABB095: LdPrVar
  loc_ABB097: LateMemCall
  loc_ABB09D: LitStr "     <td class=""Totales"" align=""right"">"
  loc_ABB0A0: FLdPr Me
  loc_ABB0A3: MemLdStr global_100
  loc_ABB0A6: ConcatStr
  loc_ABB0A7: FStStrNoPop var_CC
  loc_ABB0AA: LitStr "</td>"
  loc_ABB0AD: ConcatStr
  loc_ABB0AE: CVarStr var_C8
  loc_ABB0B1: PopAdLdVar
  loc_ABB0B2: FLdPr Me
  loc_ABB0B5: MemLdRfVar from_stack_1.htmFile
  loc_ABB0B8: LdPrVar
  loc_ABB0BA: LateMemCall
  loc_ABB0C0: FFree1Str var_CC
  loc_ABB0C3: FFree1Var var_C8 = ""
  loc_ABB0C6: LitVarStr var_A0, "  </tr>"
  loc_ABB0CB: PopAdLdVar
  loc_ABB0CC: FLdPr Me
  loc_ABB0CF: MemLdRfVar from_stack_1.htmFile
  loc_ABB0D2: LdPrVar
  loc_ABB0D4: LateMemCall
  loc_ABB0DA: LitVarStr var_A0, "</table>"
  loc_ABB0DF: PopAdLdVar
  loc_ABB0E0: FLdPr Me
  loc_ABB0E3: MemLdRfVar from_stack_1.htmFile
  loc_ABB0E6: LdPrVar
  loc_ABB0E8: LateMemCall
  loc_ABB0EE: Call Proc_295_29_983DC0()
  loc_ABB0F3: FLdPr Me
  loc_ABB0F6: MemLdRfVar from_stack_1.htmFile
  loc_ABB0F9: LdPrVar
  loc_ABB0FB: LateMemCall
  loc_ABB101: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ABB106: ExitProcHresult
End Sub

Private Function Proc_295_28_A7C264() 'A7C264
  'Data Table: 45C5E4
  loc_A7BE88: LitVarStr var_94, "<html>"
  loc_A7BE8D: PopAdLdVar
  loc_A7BE8E: FLdPr Me
  loc_A7BE91: MemLdRfVar from_stack_1.htmFile
  loc_A7BE94: LdPrVar
  loc_A7BE96: LateMemCall
  loc_A7BE9C: LitVarStr var_94, "<head>"
  loc_A7BEA1: PopAdLdVar
  loc_A7BEA2: FLdPr Me
  loc_A7BEA5: MemLdRfVar from_stack_1.htmFile
  loc_A7BEA8: LdPrVar
  loc_A7BEAA: LateMemCall
  loc_A7BEB0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A7BEB5: PopAdLdVar
  loc_A7BEB6: FLdPr Me
  loc_A7BEB9: MemLdRfVar from_stack_1.htmFile
  loc_A7BEBC: LdPrVar
  loc_A7BEBE: LateMemCall
  loc_A7BEC4: LitStr "<title>"
  loc_A7BEC7: FLdRfVar var_A8
  loc_A7BECA: FLdPr Me
  loc_A7BECD:  = Me.Caption
  loc_A7BED2: ILdRf var_A8
  loc_A7BED5: ConcatStr
  loc_A7BED6: FStStrNoPop var_AC
  loc_A7BED9: LitStr "</title>"
  loc_A7BEDC: ConcatStr
  loc_A7BEDD: CVarStr var_BC
  loc_A7BEE0: PopAdLdVar
  loc_A7BEE1: FLdPr Me
  loc_A7BEE4: MemLdRfVar from_stack_1.htmFile
  loc_A7BEE7: LdPrVar
  loc_A7BEE9: LateMemCall
  loc_A7BEEF: FFreeStr var_A8 = ""
  loc_A7BEF6: FFree1Var var_BC = ""
  loc_A7BEF9: LitStr vbNullString
  loc_A7BEFC: ILdRf Me
  loc_A7BEFF: CastAd
  loc_A7BF02: FStAdFunc var_C0
  loc_A7BF05: FLdRfVar var_C0
  loc_A7BF08: ImpAdCallFPR4  = Proc_263_23_B3DAB8()
  loc_A7BF0D: FFree1Ad var_C0
  loc_A7BF10: LitI4 0
  loc_A7BF15: FStStrCopy var_AC
  loc_A7BF18: FLdRfVar var_AC
  loc_A7BF1B: LitI4 0
  loc_A7BF20: FStStrCopy var_A8
  loc_A7BF23: FLdRfVar var_A8
  loc_A7BF26: LitI2_Byte &HFF
  loc_A7BF28: PopTmpLdAd2 var_C2
  loc_A7BF2B: FLdPr Me
  loc_A7BF2E: MemLdRfVar from_stack_1.htmFile
  loc_A7BF31: ImpAdCallFPR4  = Proc_263_6_A92790(, )
  loc_A7BF36: FFreeStr var_A8 = ""
  loc_A7BF3D: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A7BF42: PopAdLdVar
  loc_A7BF43: FLdPr Me
  loc_A7BF46: MemLdRfVar from_stack_1.htmFile
  loc_A7BF49: LdPrVar
  loc_A7BF4B: LateMemCall
  loc_A7BF51: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A7BF56: PopAdLdVar
  loc_A7BF57: FLdPr Me
  loc_A7BF5A: MemLdRfVar from_stack_1.htmFile
  loc_A7BF5D: LdPrVar
  loc_A7BF5F: LateMemCall
  loc_A7BF65: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A7BF6A: PopAdLdVar
  loc_A7BF6B: FLdPr Me
  loc_A7BF6E: MemLdRfVar from_stack_1.htmFile
  loc_A7BF71: LdPrVar
  loc_A7BF73: LateMemCall
  loc_A7BF79: FLdPr Me
  loc_A7BF7C: MemLdI2 bLogos
  loc_A7BF7F: BranchF loc_A7BF96
  loc_A7BF82: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A7BF87: PopAdLdVar
  loc_A7BF88: FLdPr Me
  loc_A7BF8B: MemLdRfVar from_stack_1.htmFile
  loc_A7BF8E: LdPrVar
  loc_A7BF90: LateMemCall
  loc_A7BF96: LitVarStr var_A4, "    <br><br>"
  loc_A7BF9B: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A7BFA0: FStVarCopyObj var_BC
  loc_A7BFA3: FLdRfVar var_BC
  loc_A7BFA6: FLdRfVar var_D4
  loc_A7BFA9: ImpAdCallFPR4  = Ucase()
  loc_A7BFAE: FLdRfVar var_D4
  loc_A7BFB1: ConcatVar var_E4
  loc_A7BFB5: LitVarStr var_F4, "</p>"
  loc_A7BFBA: ConcatVar var_104
  loc_A7BFBE: PopAdLdVar
  loc_A7BFBF: FLdPr Me
  loc_A7BFC2: MemLdRfVar from_stack_1.htmFile
  loc_A7BFC5: LdPrVar
  loc_A7BFC7: LateMemCall
  loc_A7BFCD: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A7BFD8: LitStr "    <p>"
  loc_A7BFDB: FLdRfVar var_A8
  loc_A7BFDE: FLdPr Me
  loc_A7BFE1:  = Me.Caption
  loc_A7BFE6: ILdRf var_A8
  loc_A7BFE9: ConcatStr
  loc_A7BFEA: FStStrNoPop var_AC
  loc_A7BFED: LitStr "</p></th>"
  loc_A7BFF0: ConcatStr
  loc_A7BFF1: CVarStr var_BC
  loc_A7BFF4: PopAdLdVar
  loc_A7BFF5: FLdPr Me
  loc_A7BFF8: MemLdRfVar from_stack_1.htmFile
  loc_A7BFFB: LdPrVar
  loc_A7BFFD: LateMemCall
  loc_A7C003: FFreeStr var_A8 = ""
  loc_A7C00A: FFree1Var var_BC = ""
  loc_A7C00D: LitVarStr var_94, "  </tr>"
  loc_A7C012: PopAdLdVar
  loc_A7C013: FLdPr Me
  loc_A7C016: MemLdRfVar from_stack_1.htmFile
  loc_A7C019: LdPrVar
  loc_A7C01B: LateMemCall
  loc_A7C021: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A7C026: PopAdLdVar
  loc_A7C027: FLdPr Me
  loc_A7C02A: MemLdRfVar from_stack_1.htmFile
  loc_A7C02D: LdPrVar
  loc_A7C02F: LateMemCall
  loc_A7C035: LitVarStr var_94, "  <tr align=""left"">"
  loc_A7C03A: PopAdLdVar
  loc_A7C03B: FLdPr Me
  loc_A7C03E: MemLdRfVar from_stack_1.htmFile
  loc_A7C041: LdPrVar
  loc_A7C043: LateMemCall
  loc_A7C049: LitStr "    <th>Desde: <span class=""Normal"">"
  loc_A7C04C: FLdPr Me
  loc_A7C04F: VCallAd Control_ID_mskDesde
  loc_A7C052: FStAdFunc var_C0
  loc_A7C055: FLdPr var_C0
  loc_A7C058: LateIdLdVar var_BC DispID_15 0
  loc_A7C05F: CStrVarTmp
  loc_A7C060: FStStrNoPop var_A8
  loc_A7C063: ConcatStr
  loc_A7C064: FStStrNoPop var_AC
  loc_A7C067: LitStr "</span> - Hasta: <span class=""Normal"">"
  loc_A7C06A: ConcatStr
  loc_A7C06B: FStStrNoPop var_11C
  loc_A7C06E: FLdPr Me
  loc_A7C071: VCallAd Control_ID_mskHasta
  loc_A7C074: FStAdFunc var_118
  loc_A7C077: FLdPr var_118
  loc_A7C07A: LateIdLdVar var_D4 DispID_15 0
  loc_A7C081: CStrVarTmp
  loc_A7C082: FStStrNoPop var_120
  loc_A7C085: ConcatStr
  loc_A7C086: FStStrNoPop var_124
  loc_A7C089: LitStr "</span></th>"
  loc_A7C08C: ConcatStr
  loc_A7C08D: CVarStr var_E4
  loc_A7C090: PopAdLdVar
  loc_A7C091: FLdPr Me
  loc_A7C094: MemLdRfVar from_stack_1.htmFile
  loc_A7C097: LdPrVar
  loc_A7C099: LateMemCall
  loc_A7C09F: FFreeStr var_A8 = "": var_AC = "": var_11C = "": var_120 = ""
  loc_A7C0AC: FFreeAd var_C0 = ""
  loc_A7C0B3: FFreeVar var_BC = "": var_D4 = ""
  loc_A7C0BC: LitVarStr var_94, "  </tr>"
  loc_A7C0C1: PopAdLdVar
  loc_A7C0C2: FLdPr Me
  loc_A7C0C5: MemLdRfVar from_stack_1.htmFile
  loc_A7C0C8: LdPrVar
  loc_A7C0CA: LateMemCall
  loc_A7C0D0: LitVarStr var_94, "</table>"
  loc_A7C0D5: PopAdLdVar
  loc_A7C0D6: FLdPr Me
  loc_A7C0D9: MemLdRfVar from_stack_1.htmFile
  loc_A7C0DC: LdPrVar
  loc_A7C0DE: LateMemCall
  loc_A7C0E4: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A7C0E9: PopAdLdVar
  loc_A7C0EA: FLdPr Me
  loc_A7C0ED: MemLdRfVar from_stack_1.htmFile
  loc_A7C0F0: LdPrVar
  loc_A7C0F2: LateMemCall
  loc_A7C0F8: LitVarStr var_94, "  <THEAD>"
  loc_A7C0FD: PopAdLdVar
  loc_A7C0FE: FLdPr Me
  loc_A7C101: MemLdRfVar from_stack_1.htmFile
  loc_A7C104: LdPrVar
  loc_A7C106: LateMemCall
  loc_A7C10C: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A7C111: PopAdLdVar
  loc_A7C112: FLdPr Me
  loc_A7C115: MemLdRfVar from_stack_1.htmFile
  loc_A7C118: LdPrVar
  loc_A7C11A: LateMemCall
  loc_A7C120: LitVarStr var_94, "    <th rowspan=""2"">Orden de<br>pago N&ordm;</th>"
  loc_A7C125: PopAdLdVar
  loc_A7C126: FLdPr Me
  loc_A7C129: MemLdRfVar from_stack_1.htmFile
  loc_A7C12C: LdPrVar
  loc_A7C12E: LateMemCall
  loc_A7C134: LitVarStr var_94, "    <th rowspan=""2"">Expediente</th>"
  loc_A7C139: PopAdLdVar
  loc_A7C13A: FLdPr Me
  loc_A7C13D: MemLdRfVar from_stack_1.htmFile
  loc_A7C140: LdPrVar
  loc_A7C142: LateMemCall
  loc_A7C148: LitVarStr var_94, "    <th rowspan=""2"">Liq.</th>"
  loc_A7C14D: PopAdLdVar
  loc_A7C14E: FLdPr Me
  loc_A7C151: MemLdRfVar from_stack_1.htmFile
  loc_A7C154: LdPrVar
  loc_A7C156: LateMemCall
  loc_A7C15C: LitVarStr var_94, "    <th colspan=""4"">Fecha de</th>"
  loc_A7C161: PopAdLdVar
  loc_A7C162: FLdPr Me
  loc_A7C165: MemLdRfVar from_stack_1.htmFile
  loc_A7C168: LdPrVar
  loc_A7C16A: LateMemCall
  loc_A7C170: LitVarStr var_94, "    <th rowspan=""2"">Proveedor</th>"
  loc_A7C175: PopAdLdVar
  loc_A7C176: FLdPr Me
  loc_A7C179: MemLdRfVar from_stack_1.htmFile
  loc_A7C17C: LdPrVar
  loc_A7C17E: LateMemCall
  loc_A7C184: LitVarStr var_94, "    <th rowspan=""2"">Banco</th>"
  loc_A7C189: PopAdLdVar
  loc_A7C18A: FLdPr Me
  loc_A7C18D: MemLdRfVar from_stack_1.htmFile
  loc_A7C190: LdPrVar
  loc_A7C192: LateMemCall
  loc_A7C198: LitVarStr var_94, "    <th rowspan=""2"">Número</th>"
  loc_A7C19D: PopAdLdVar
  loc_A7C19E: FLdPr Me
  loc_A7C1A1: MemLdRfVar from_stack_1.htmFile
  loc_A7C1A4: LdPrVar
  loc_A7C1A6: LateMemCall
  loc_A7C1AC: LitVarStr var_94, "    <th rowspan=""2"">Importe</th>"
  loc_A7C1B1: PopAdLdVar
  loc_A7C1B2: FLdPr Me
  loc_A7C1B5: MemLdRfVar from_stack_1.htmFile
  loc_A7C1B8: LdPrVar
  loc_A7C1BA: LateMemCall
  loc_A7C1C0: LitVarStr var_94, "  </tr>"
  loc_A7C1C5: PopAdLdVar
  loc_A7C1C6: FLdPr Me
  loc_A7C1C9: MemLdRfVar from_stack_1.htmFile
  loc_A7C1CC: LdPrVar
  loc_A7C1CE: LateMemCall
  loc_A7C1D4: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A7C1D9: PopAdLdVar
  loc_A7C1DA: FLdPr Me
  loc_A7C1DD: MemLdRfVar from_stack_1.htmFile
  loc_A7C1E0: LdPrVar
  loc_A7C1E2: LateMemCall
  loc_A7C1E8: LitVarStr var_94, "    <th>Emisión</th>"
  loc_A7C1ED: PopAdLdVar
  loc_A7C1EE: FLdPr Me
  loc_A7C1F1: MemLdRfVar from_stack_1.htmFile
  loc_A7C1F4: LdPrVar
  loc_A7C1F6: LateMemCall
  loc_A7C1FC: LitVarStr var_94, "    <th>Remisión</th>"
  loc_A7C201: PopAdLdVar
  loc_A7C202: FLdPr Me
  loc_A7C205: MemLdRfVar from_stack_1.htmFile
  loc_A7C208: LdPrVar
  loc_A7C20A: LateMemCall
  loc_A7C210: LitVarStr var_94, "    <th>Pago</th>"
  loc_A7C215: PopAdLdVar
  loc_A7C216: FLdPr Me
  loc_A7C219: MemLdRfVar from_stack_1.htmFile
  loc_A7C21C: LdPrVar
  loc_A7C21E: LateMemCall
  loc_A7C224: LitVarStr var_94, "    <th>Anulación</th>"
  loc_A7C229: PopAdLdVar
  loc_A7C22A: FLdPr Me
  loc_A7C22D: MemLdRfVar from_stack_1.htmFile
  loc_A7C230: LdPrVar
  loc_A7C232: LateMemCall
  loc_A7C238: LitVarStr var_94, "  </tr>"
  loc_A7C23D: PopAdLdVar
  loc_A7C23E: FLdPr Me
  loc_A7C241: MemLdRfVar from_stack_1.htmFile
  loc_A7C244: LdPrVar
  loc_A7C246: LateMemCall
  loc_A7C24C: LitVarStr var_94, "  </THEAD>"
  loc_A7C251: PopAdLdVar
  loc_A7C252: FLdPr Me
  loc_A7C255: MemLdRfVar from_stack_1.htmFile
  loc_A7C258: LdPrVar
  loc_A7C25A: LateMemCall
  loc_A7C260: ExitProcHresult
End Function

Private Function Proc_295_29_983DC0() '983DC0
  'Data Table: 45C5E4
  loc_983D80: LitVarStr var_94, "</table>"
  loc_983D85: PopAdLdVar
  loc_983D86: FLdPr Me
  loc_983D89: MemLdRfVar from_stack_1.htmFile
  loc_983D8C: LdPrVar
  loc_983D8E: LateMemCall
  loc_983D94: LitVarStr var_94, "</body>"
  loc_983D99: PopAdLdVar
  loc_983D9A: FLdPr Me
  loc_983D9D: MemLdRfVar from_stack_1.htmFile
  loc_983DA0: LdPrVar
  loc_983DA2: LateMemCall
  loc_983DA8: LitVarStr var_94, "</html>"
  loc_983DAD: PopAdLdVar
  loc_983DAE: FLdPr Me
  loc_983DB1: MemLdRfVar from_stack_1.htmFile
  loc_983DB4: LdPrVar
  loc_983DB6: LateMemCall
  loc_983DBC: ExitProcHresult
End Function
