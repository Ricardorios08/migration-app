VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptControlChequesSinRemitir
  Caption = "Control de Cheques Sin Remitir"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControlChequesSinRemitir.frx":0000
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
    OleObjectBlob = "rptControlChequesSinRemitir.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6840
    Top = 1680
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptControlChequesSinRemitir.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptControlChequesSinRemitir.frx":0B9C
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
      Picture = "rptControlChequesSinRemitir.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdDesde
      Left = 2280
      Top = 195
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptControlChequesSinRemitir.frx":1142
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
      OleObjectBlob = "rptControlChequesSinRemitir.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1080
      Top = 765
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptControlChequesSinRemitir.frx":170C
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
    OleObjectBlob = "rptControlChequesSinRemitir.frx":1794
  End
End

Attribute VB_Name = "rptControlChequesSinRemitir"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean
Public sValErr As String

Private Type UDT_1_005BC120
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdPrevia_Click() '95AAAC
  'Data Table: 460450
  loc_95AA94: ILdRf Me
  loc_95AA97: CastAd
  loc_95AA9A: FStAdFunc var_88
  loc_95AA9D: FLdRfVar var_88
  loc_95AAA0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95AAA5: FFree1Ad var_88
  loc_95AAA8: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '953598
  'Data Table: 460450
  loc_953584: FLdPr Me
  loc_953587: VCallAd Control_ID_mskDesde
  loc_95358A: CVarAd
  loc_95358E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_953593: FFree1Var var_94 = ""
  loc_953596: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B2A3C
  'Data Table: 460450
  loc_9B29A0: FLdPr Me
  loc_9B29A3: VCallAd Control_ID_mskDesde
  loc_9B29A6: FStAdFunc var_88
  loc_9B29A9: FLdPr var_88
  loc_9B29AC: LateIdLdVar var_98 DispID_15 0
  loc_9B29B3: PopAd
  loc_9B29B5: FLdPr Me
  loc_9B29B8: VCallAd Control_ID_mskDesde
  loc_9B29BB: FStAdFunc var_AC
  loc_9B29BE: LitI2_Byte &HFF
  loc_9B29C0: PopTmpLdAd2 var_A2
  loc_9B29C3: FLdZeroAd var_AC
  loc_9B29C6: FStAdFunc var_A0
  loc_9B29C9: FLdRfVar var_A0
  loc_9B29CC: LitStr vbNullString
  loc_9B29CF: LitI2_Byte 0
  loc_9B29D1: LitI2_Byte 0
  loc_9B29D3: FLdRfVar var_98
  loc_9B29D6: CStrVarTmp
  loc_9B29D7: FStStrNoPop var_9C
  loc_9B29DA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B29DF: FStStrNoPop var_A8
  loc_9B29E2: FLdPr Me
  loc_9B29E5: MemStStrCopy
  loc_9B29E9: FFreeStr var_9C = ""
  loc_9B29F0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B29F9: FFree1Var var_98 = ""
  loc_9B29FC: FLdPr Me
  loc_9B29FF: VCallAd Control_ID_mskDesde
  loc_9B2A02: FStAdFunc var_B0
  loc_9B2A05: LitNothing
  loc_9B2A07: CastAd
  loc_9B2A0A: FStAdFunc var_AC
  loc_9B2A0D: FLdRfVar var_AC
  loc_9B2A10: FLdZeroAd var_B0
  loc_9B2A13: FStAdFuncNoPop
  loc_9B2A16: CastAd
  loc_9B2A19: FStAdFunc var_A0
  loc_9B2A1C: FLdRfVar var_A0
  loc_9B2A1F: FLdPr Me
  loc_9B2A22: MemLdRfVar from_stack_1.sValErr
  loc_9B2A25: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B2A2A: IStI2 arg_C
  loc_9B2A2D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2A38: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 'A28BC4
  'Data Table: 460450
  loc_A28A24: FLdPr Me
  loc_A28A27: VCallAd Control_ID_mskDesde
  loc_A28A2A: FStAdFunc var_88
  loc_A28A2D: FLdPr var_88
  loc_A28A30: LateIdLdVar var_98 DispID_15 0
  loc_A28A37: CStrVarTmp
  loc_A28A38: CVarStr var_A8
  loc_A28A3B: ImpAdCallI2 IsDate()
  loc_A28A40: FFree1Ad var_88
  loc_A28A43: FFreeVar var_98 = ""
  loc_A28A4A: BranchF loc_A28BAE
  loc_A28A4D: FLdPr Me
  loc_A28A50: VCallAd Control_ID_mskDesde
  loc_A28A53: FStAdFunc var_88
  loc_A28A56: FLdPr var_88
  loc_A28A59: LateIdLdVar var_98 DispID_15 0
  loc_A28A60: CStrVarTmp
  loc_A28A61: CVarStr var_A8
  loc_A28A64: FLdRfVar var_B8
  loc_A28A67: ImpAdCallFPR4  = Day()
  loc_A28A6C: FLdRfVar var_B8
  loc_A28A6F: LitVarI2 var_C8, 1
  loc_A28A74: HardType
  loc_A28A75: EqVar var_D8
  loc_A28A79: FLdPr Me
  loc_A28A7C: VCallAd Control_ID_mskDesde
  loc_A28A7F: FStAdFunc var_DC
  loc_A28A82: FLdPr var_DC
  loc_A28A85: LateIdLdVar var_EC DispID_15 0
  loc_A28A8C: CStrVarTmp
  loc_A28A8D: CVarStr var_FC
  loc_A28A90: FLdRfVar var_10C
  loc_A28A93: ImpAdCallFPR4  = Month()
  loc_A28A98: FLdRfVar var_10C
  loc_A28A9B: LitI2_Byte 0
  loc_A28A9D: PopTmpLdAd2 var_10E
  loc_A28AA0: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A28AA5: CVarDate var_130
  loc_A28AA9: FLdRfVar var_140
  loc_A28AAC: ImpAdCallFPR4  = Month()
  loc_A28AB1: FLdRfVar var_140
  loc_A28AB4: LtVar var_150
  loc_A28AB8: AndVar var_160
  loc_A28ABC: FLdPr Me
  loc_A28ABF: VCallAd Control_ID_mskHasta
  loc_A28AC2: FStAdFunc var_164
  loc_A28AC5: FLdPr var_164
  loc_A28AC8: LateIdLdVar var_174 DispID_15 0
  loc_A28ACF: CStrVarTmp
  loc_A28AD0: FStStrNoPop var_178
  loc_A28AD3: CDateStr
  loc_A28AD5: ImpAdLdFPR8 MemVar_C3D04C
  loc_A28AD8: EqR4
  loc_A28AD9: CVarBoolI2 var_188
  loc_A28ADD: AndVar var_198
  loc_A28AE1: CBoolVarNull
  loc_A28AE3: FFree1Str var_178
  loc_A28AE6: FFreeAd var_88 = "": var_DC = ""
  loc_A28AEF: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_EC = "": var_FC = "": var_130 = "": var_10C = "": var_140 = "": var_174 = ""
  loc_A28B06: BranchF loc_A28BAE
  loc_A28B09: LitVarStr var_120, "01/"
  loc_A28B0E: FLdPr Me
  loc_A28B11: VCallAd Control_ID_mskDesde
  loc_A28B14: FStAdFunc var_88
  loc_A28B17: FLdPr var_88
  loc_A28B1A: LateIdLdVar var_98 DispID_15 0
  loc_A28B21: CStrVarTmp
  loc_A28B22: CVarStr var_A8
  loc_A28B25: FLdRfVar var_B8
  loc_A28B28: ImpAdCallFPR4  = Month()
  loc_A28B2D: FLdRfVar var_B8
  loc_A28B30: LitVarI2 var_C8, 1
  loc_A28B35: AddVar var_D8
  loc_A28B39: ConcatVar var_EC
  loc_A28B3D: LitVarStr var_188, "/"
  loc_A28B42: ConcatVar var_FC
  loc_A28B46: FLdPr Me
  loc_A28B49: VCallAd Control_ID_mskDesde
  loc_A28B4C: FStAdFunc var_DC
  loc_A28B4F: FLdPr var_DC
  loc_A28B52: LateIdLdVar var_10C DispID_15 0
  loc_A28B59: CStrVarTmp
  loc_A28B5A: CVarStr var_130
  loc_A28B5D: FLdRfVar var_140
  loc_A28B60: ImpAdCallFPR4  = Year()
  loc_A28B65: FLdRfVar var_140
  loc_A28B68: ConcatVar var_150
  loc_A28B6C: FnCDateVar
  loc_A28B6E: LitI2_Byte 1
  loc_A28B70: CR8I2
  loc_A28B71: SubR4
  loc_A28B72: CDateR8
  loc_A28B73: CStrDate
  loc_A28B75: CVarStr var_160
  loc_A28B78: PopAdLdVar
  loc_A28B79: FLdPr Me
  loc_A28B7C: VCallAd Control_ID_mskHasta
  loc_A28B7F: FStAdFunc var_164
  loc_A28B82: FLdPr var_164
  loc_A28B85: LateIdSt
  loc_A28B8A: FFreeAd var_88 = "": var_DC = ""
  loc_A28B93: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_D8 = "": var_EC = "": var_10C = "": var_130 = "": var_FC = "": var_140 = "": var_150 = "": var_150 = ""
  loc_A28BAE: FLdPr Me
  loc_A28BB1: VCallAd Control_ID_mskHasta
  loc_A28BB4: CVarAd
  loc_A28BB8: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A28BBD: FFree1Var var_98 = ""
  loc_A28BC0: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B22FC
  'Data Table: 460450
  loc_9B2260: FLdPr Me
  loc_9B2263: VCallAd Control_ID_mskHasta
  loc_9B2266: FStAdFunc var_88
  loc_9B2269: FLdPr var_88
  loc_9B226C: LateIdLdVar var_98 DispID_15 0
  loc_9B2273: PopAd
  loc_9B2275: FLdPr Me
  loc_9B2278: VCallAd Control_ID_mskHasta
  loc_9B227B: FStAdFunc var_AC
  loc_9B227E: LitI2_Byte &HFF
  loc_9B2280: PopTmpLdAd2 var_A2
  loc_9B2283: FLdZeroAd var_AC
  loc_9B2286: FStAdFunc var_A0
  loc_9B2289: FLdRfVar var_A0
  loc_9B228C: LitStr vbNullString
  loc_9B228F: LitI2_Byte 0
  loc_9B2291: LitI2_Byte 0
  loc_9B2293: FLdRfVar var_98
  loc_9B2296: CStrVarTmp
  loc_9B2297: FStStrNoPop var_9C
  loc_9B229A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B229F: FStStrNoPop var_A8
  loc_9B22A2: FLdPr Me
  loc_9B22A5: MemStStrCopy
  loc_9B22A9: FFreeStr var_9C = ""
  loc_9B22B0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B22B9: FFree1Var var_98 = ""
  loc_9B22BC: FLdPr Me
  loc_9B22BF: VCallAd Control_ID_mskHasta
  loc_9B22C2: FStAdFunc var_B0
  loc_9B22C5: LitNothing
  loc_9B22C7: CastAd
  loc_9B22CA: FStAdFunc var_AC
  loc_9B22CD: FLdRfVar var_AC
  loc_9B22D0: FLdZeroAd var_B0
  loc_9B22D3: FStAdFuncNoPop
  loc_9B22D6: CastAd
  loc_9B22D9: FStAdFunc var_A0
  loc_9B22DC: FLdRfVar var_A0
  loc_9B22DF: FLdPr Me
  loc_9B22E2: MemLdRfVar from_stack_1.sValErr
  loc_9B22E5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B22EA: IStI2 arg_C
  loc_9B22ED: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B22F8: ExitProcHresult
End Function

Private Sub cmdDesde_Click() '980868
  'Data Table: 460450
  loc_980834: LitVar_Missing var_A4
  loc_980837: PopAdLdVar
  loc_980838: LitVarI4
  loc_980840: PopAdLdVar
  loc_980841: ImpAdLdRf MemVar_C3D9A8
  loc_980844: NewIfNullPr frmCalendario
  loc_980847: frmCalendario.Show from_stack_1, from_stack_2
  loc_98084C: ImpAdLdRf MemVar_C3D038
  loc_98084F: CDargRef
  loc_980853: FLdPr Me
  loc_980856: VCallAd Control_ID_mskDesde
  loc_980859: FStAdFunc var_A8
  loc_98085C: FLdPr var_A8
  loc_98085F: LateIdSt
  loc_980864: FFree1Ad var_A8
  loc_980867: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95AAF8
  'Data Table: 460450
  loc_95AAE0: ILdRf Me
  loc_95AAE3: CastAd
  loc_95AAE6: FStAdFunc var_88
  loc_95AAE9: FLdRfVar var_88
  loc_95AAEC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95AAF1: FFree1Ad var_88
  loc_95AAF4: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '9806C8
  'Data Table: 460450
  loc_980694: LitVar_Missing var_A4
  loc_980697: PopAdLdVar
  loc_980698: LitVarI4
  loc_9806A0: PopAdLdVar
  loc_9806A1: ImpAdLdRf MemVar_C3D9A8
  loc_9806A4: NewIfNullPr frmCalendario
  loc_9806A7: frmCalendario.Show from_stack_1, from_stack_2
  loc_9806AC: ImpAdLdRf MemVar_C3D038
  loc_9806AF: CDargRef
  loc_9806B3: FLdPr Me
  loc_9806B6: VCallAd Control_ID_mskHasta
  loc_9806B9: FStAdFunc var_A8
  loc_9806BC: FLdPr var_A8
  loc_9806BF: LateIdSt
  loc_9806C4: FFree1Ad var_A8
  loc_9806C7: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9887A4
  'Data Table: 460450
  loc_98876C: FLdPr Me
  loc_98876F: VCallAd Control_ID_statusBar
  loc_988772: FStAdFunc var_88
  loc_988775: FLdPr var_88
  loc_988778: LateIdLdVar var_98 DispID_1 0
  loc_98877F: CStrVarTmp
  loc_988780: CVarStr var_A8
  loc_988783: PopAdLdVar
  loc_988784: FLdPr Me
  loc_988787: VCallAd Control_ID_statusBar
  loc_98878A: FStAdFunc var_BC
  loc_98878D: FLdPr var_BC
  loc_988790: LateIdSt
  loc_988795: FFreeAd var_88 = ""
  loc_98879C: FFreeVar var_98 = ""
  loc_9887A3: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B5DC
  'Data Table: 460450
  loc_96B5C0: LitI2_Byte &HFF
  loc_96B5C2: LitI2_Byte 0
  loc_96B5C4: ILdRf Me
  loc_96B5C7: CastAd
  loc_96B5CA: FStAdFunc var_88
  loc_96B5CD: FLdRfVar var_88
  loc_96B5D0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B5D5: FFree1Ad var_88
  loc_96B5D8: ExitProcHresult
  loc_96B5D9: Ary1LdFPR4
End Sub

Private Sub cmdSalir_Click() '977738
  'Data Table: 460450
  loc_977708: LitVarStr var_94, "Cerrando..."
  loc_97770D: PopAdLdVar
  loc_97770E: FLdPr Me
  loc_977711: VCallAd Control_ID_statusBar
  loc_977714: FStAdFunc var_A8
  loc_977717: FLdPr var_A8
  loc_97771A: LateIdSt
  loc_97771F: FFree1Ad var_A8
  loc_977722: ILdRf Me
  loc_977725: FStAdNoPop
  loc_977729: ImpAdLdRf MemVar_C44F9C
  loc_97772C: NewIfNullPr Me
  loc_97772F: Me.Global.Unload from_stack_1
  loc_977734: FFree1Ad var_A8
  loc_977737: ExitProcHresult
End Sub

Private Sub Form_Load() '96CD48
  'Data Table: 460450
  loc_96CD28: LitI2_Byte &HFF
  loc_96CD2A: ImpAdStI2 MemVar_C3D840
  loc_96CD2D: ILdRf Me
  loc_96CD30: CastAd
  loc_96CD33: FStAdFunc var_88
  loc_96CD36: FLdRfVar var_88
  loc_96CD39: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96CD3E: FFree1Ad var_88
  loc_96CD41: Call cmdNueva_Click()
  loc_96CD46: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95AD58
  'Data Table: 460450
  loc_95AD40: FLdPr Me
  loc_95AD43: VCallAd Control_ID_wbbReporte
  loc_95AD46: FStAdFunc var_88
  loc_95AD49: FLdRfVar var_88
  loc_95AD4C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95AD51: FFree1Ad var_88
  loc_95AD54: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95AC28
  'Data Table: 460450
  loc_95AC10: LitI2_Byte 0
  loc_95AC12: ILdRf Me
  loc_95AC15: CastAd
  loc_95AC18: FStAdFunc var_88
  loc_95AC1B: FLdRfVar var_88
  loc_95AC1E: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95AC23: FFree1Ad var_88
  loc_95AC26: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9AEF90
  'Data Table: 460450
  loc_9AEEF4: LitI2_Byte 0
  loc_9AEEF6: FLdPr Me
  loc_9AEEF9: MemStI2 bGenerado
  loc_9AEEFC: LitI2_Byte &HFF
  loc_9AEEFE: FLdPr Me
  loc_9AEF01: MemStI2 bLogos
  loc_9AEF04: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9AEF09: LitI2_Byte 0
  loc_9AEF0B: PopTmpLdAd2 var_86
  loc_9AEF0E: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9AEF13: CVarDate var_A8
  loc_9AEF17: FLdRfVar var_B8
  loc_9AEF1A: ImpAdCallFPR4  = Year()
  loc_9AEF1F: LitI2_Byte 1
  loc_9AEF21: LitI2_Byte 1
  loc_9AEF23: FLdRfVar var_B8
  loc_9AEF26: CI2Var
  loc_9AEF27: FLdRfVar var_C8
  loc_9AEF2A: ImpAdCallFPR4  = DateSerial(, , )
  loc_9AEF2F: FLdRfVar var_C8
  loc_9AEF32: CStrVarTmp
  loc_9AEF33: CVarStr var_D8
  loc_9AEF36: PopAdLdVar
  loc_9AEF37: FLdPr Me
  loc_9AEF3A: VCallAd Control_ID_mskDesde
  loc_9AEF3D: FStAdFunc var_EC
  loc_9AEF40: FLdPr var_EC
  loc_9AEF43: LateIdSt
  loc_9AEF48: FFree1Ad var_EC
  loc_9AEF4B: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_9AEF56: ImpAdLdFPR8 MemVar_C3D04C
  loc_9AEF59: CStrDate
  loc_9AEF5B: CVarStr var_A8
  loc_9AEF5E: PopAdLdVar
  loc_9AEF5F: FLdPr Me
  loc_9AEF62: VCallAd Control_ID_mskHasta
  loc_9AEF65: FStAdFunc var_EC
  loc_9AEF68: FLdPr var_EC
  loc_9AEF6B: LateIdSt
  loc_9AEF70: FFree1Ad var_EC
  loc_9AEF73: FFree1Var var_A8 = ""
  loc_9AEF76: Call HabilitarCriterio()
  loc_9AEF7B: ILdRf Me
  loc_9AEF7E: CastAd
  loc_9AEF81: FStAdFunc var_EC
  loc_9AEF84: FLdRfVar var_EC
  loc_9AEF87: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9AEF8C: FFree1Ad var_EC
  loc_9AEF8F: ExitProcHresult
End Sub

Public Function htmFileGet() '461170
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '46117F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '46118E
  htmFile = Value
End Sub

Public Function bGeneradoGet() '46119D
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4611AC
  bGenerado = Value
End Sub

Public Function bLogosGet() '4611BB
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4611CA
  bLogos = Value
End Sub

Public Function sValErrGet() '4611D9
  sValErrGet = sValErr
End Function

Public Sub sValErrPut(Value) '4611E8
  sValErr = Value
End Sub

Public Sub HabilitarCriterio() '9A1BCC
  'Data Table: 460450
  loc_9A1B68: LitI4 0
  loc_9A1B6D: LitI4 3
  loc_9A1B72: FLdRfVar var_88
  loc_9A1B75: Redim
  loc_9A1B7F: FLdPr Me
  loc_9A1B82: VCallAd Control_ID_mskDesde
  loc_9A1B85: CVarAd
  loc_9A1B89: ParmAry1St
  loc_9A1B8F: FLdPr Me
  loc_9A1B92: VCallAd Control_ID_cmdDesde
  loc_9A1B95: CVarAd
  loc_9A1B99: ParmAry1St
  loc_9A1B9F: FLdPr Me
  loc_9A1BA2: VCallAd Control_ID_mskHasta
  loc_9A1BA5: CVarAd
  loc_9A1BA9: ParmAry1St
  loc_9A1BAF: FLdPr Me
  loc_9A1BB2: VCallAd Control_ID_cmdHasta
  loc_9A1BB5: CVarAd
  loc_9A1BB9: ParmAry1St
  loc_9A1BBF: FLdRfVar var_88
  loc_9A1BC2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1BC7: FLdRfVar var_88
  loc_9A1BCA: Erase
  loc_9A1BCB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BB6CDC
  'Data Table: 460450
  loc_BB5D64: LitStr vbNullString
  loc_BB5D67: FLdPr Me
  loc_BB5D6A: MemStStrCopy
  loc_BB5D6E: LitI2_Byte 0
  loc_BB5D70: PopTmpLdAd2 var_86
  loc_BB5D73: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BB5D78: FLdPr Me
  loc_BB5D7B: MemLdStr sValErr
  loc_BB5D7E: LitStr vbNullString
  loc_BB5D81: NeStr
  loc_BB5D83: BranchF loc_BB5D87
  loc_BB5D86: ExitProcHresult
  loc_BB5D87: LitI2_Byte 0
  loc_BB5D89: PopTmpLdAd2 var_86
  loc_BB5D8C: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BB5D91: FLdPr Me
  loc_BB5D94: MemLdStr sValErr
  loc_BB5D97: LitStr vbNullString
  loc_BB5D9A: NeStr
  loc_BB5D9C: BranchF loc_BB5DA0
  loc_BB5D9F: ExitProcHresult
  loc_BB5DA0: FLdPr Me
  loc_BB5DA3: MemLdI2 bGenerado
  loc_BB5DA6: BranchF loc_BB5DAA
  loc_BB5DA9: ExitProcHresult
  loc_BB5DAA: LitVarStr var_98, "Generando reporte..."
  loc_BB5DAF: PopAdLdVar
  loc_BB5DB0: FLdPr Me
  loc_BB5DB3: VCallAd Control_ID_statusBar
  loc_BB5DB6: FStAdFunc var_AC
  loc_BB5DB9: FLdPr var_AC
  loc_BB5DBC: LateIdSt
  loc_BB5DC1: FFree1Ad var_AC
  loc_BB5DC4: LitI4 &HB
  loc_BB5DC9: CI2I4
  loc_BB5DCA: FLdPr Me
  loc_BB5DCD: Me.MousePointer = from_stack_1
  loc_BB5DD2: LitI4 1
  loc_BB5DD7: LitI4 1
  loc_BB5DDC: FLdPr Me
  loc_BB5DDF: MemLdRfVar from_stack_1.global_84
  loc_BB5DE2: Redim
  loc_BB5DEC: LitStr "0"
  loc_BB5DEF: FLdPr Me
  loc_BB5DF2: MemStStrCopy
  loc_BB5DF6: FLdPr Me
  loc_BB5DF9: MemLdRfVar from_stack_1.global_76
  loc_BB5DFC: NewIfNullAd
  loc_BB5DFF: FStAd var_B0 
  loc_BB5E03: LitStr "Municipalidad de Guaymallén"
  loc_BB5E06: LitStr "Municipalidad de Guaymallén"
  loc_BB5E09: EqStr
  loc_BB5E0B: CVarBoolI2 var_A8
  loc_BB5E0F: FLdPr Me
  loc_BB5E12: VCallAd Control_ID_mskDesde
  loc_BB5E15: FStAdFunc var_AC
  loc_BB5E18: FLdPr var_AC
  loc_BB5E1B: LateIdLdVar var_C0 DispID_15 0
  loc_BB5E22: CStrVarTmp
  loc_BB5E23: CVarStr var_D0
  loc_BB5E26: FLdRfVar var_E0
  loc_BB5E29: ImpAdCallFPR4  = Year()
  loc_BB5E2E: FLdRfVar var_E0
  loc_BB5E31: LitVarStr var_98, "2018"
  loc_BB5E36: HardType
  loc_BB5E37: EqVar var_F0
  loc_BB5E3B: AndVar var_100
  loc_BB5E3F: CBoolVarNull
  loc_BB5E41: FFree1Ad var_AC
  loc_BB5E44: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_BB5E4F: BranchF loc_BB6214
  loc_BB5E52: FLdPr Me
  loc_BB5E55: VCallAd Control_ID_mskHasta
  loc_BB5E58: FStAdFunc var_AC
  loc_BB5E5B: FLdPr var_AC
  loc_BB5E5E: LateIdLdVar var_C0 DispID_15 0
  loc_BB5E65: PopAd
  loc_BB5E67: FLdPr Me
  loc_BB5E6A: VCallAd Control_ID_mskHasta
  loc_BB5E6D: FStAdFunc var_110
  loc_BB5E70: FLdPr var_110
  loc_BB5E73: LateIdLdVar var_D0 DispID_15 0
  loc_BB5E7A: CStrVarTmp
  loc_BB5E7B: CVarStr var_F0
  loc_BB5E7E: LitVarStr var_A8, "2018-06-30"
  loc_BB5E83: FStVarCopyObj var_E0
  loc_BB5E86: FLdRfVar var_E0
  loc_BB5E89: FLdRfVar var_C0
  loc_BB5E8C: CStrVarTmp
  loc_BB5E8D: FStStrNoPop var_10C
  loc_BB5E90: CDateStr
  loc_BB5E92: LitStr "2018-06-30"
  loc_BB5E95: CDateStr
  loc_BB5E97: GtR4
  loc_BB5E98: CVarBoolI2 var_98
  loc_BB5E9C: FLdRfVar var_100
  loc_BB5E9F: ImpAdCallFPR4  = IIf(, , )
  loc_BB5EA4: FLdRfVar var_100
  loc_BB5EA7: CStrVarTmp
  loc_BB5EA8: FStStr var_108
  loc_BB5EAB: FFree1Str var_10C
  loc_BB5EAE: FFreeAd var_AC = ""
  loc_BB5EB5: FFreeVar var_C0 = "": var_D0 = "": var_98 = "": var_E0 = "": var_F0 = ""
  loc_BB5EC4: FLdPr Me
  loc_BB5EC7: VCallAd Control_ID_mskDesde
  loc_BB5ECA: FStAdFunc var_AC
  loc_BB5ECD: FLdPr var_AC
  loc_BB5ED0: LateIdLdVar var_C0 DispID_15 0
  loc_BB5ED7: CStrVarTmp
  loc_BB5ED8: FStStr var_104
  loc_BB5EDB: FFree1Ad var_AC
  loc_BB5EDE: FFree1Var var_C0 = ""
  loc_BB5EE1: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BB5EE4: FLdPr var_B0
  loc_BB5EE7: Call clscheque.RedefineRS(from_stack_1v)
  loc_BB5EEC: FLdPr Me
  loc_BB5EEF: VCallAd Control_ID_mskDesde
  loc_BB5EF2: FStAdFunc var_AC
  loc_BB5EF5: FLdPr var_AC
  loc_BB5EF8: LateIdLdVar var_C0 DispID_15 0
  loc_BB5EFF: PopAd
  loc_BB5F01: FLdPr Me
  loc_BB5F04: VCallAd Control_ID_mskHasta
  loc_BB5F07: FStAdFunc var_110
  loc_BB5F0A: FLdPr var_110
  loc_BB5F0D: LateIdLdVar var_14C DispID_15 0
  loc_BB5F14: PopAd
  loc_BB5F16: FLdPr Me
  loc_BB5F19: VCallAd Control_ID_mskHasta
  loc_BB5F1C: FStAdFunc var_1C0
  loc_BB5F1F: FLdPr var_1C0
  loc_BB5F22: LateIdLdVar var_1D0 DispID_15 0
  loc_BB5F29: PopAd
  loc_BB5F2B: FLdPr Me
  loc_BB5F2E: VCallAd Control_ID_mskHasta
  loc_BB5F31: FStAdFunc var_264
  loc_BB5F34: FLdPr var_264
  loc_BB5F37: LateIdLdVar var_274 DispID_15 0
  loc_BB5F3E: PopAd
  loc_BB5F40: LitStr "CREATE TEMPORARY TABLE tmovi"
  loc_BB5F43: LitStr " SELECT ch.NumeOrpa, ch.ExpeImpu, ch.NumeLiqu, FechCheq, FereCheq, FepaCheq, ch.CucuPers, DetaProv, ch.CodiBanc, DetaBanc, NumeMoba, ImpoCheq"
  loc_BB5F46: ConcatStr
  loc_BB5F47: FStStrNoPop var_10C
  loc_BB5F4A: LitStr " FROM cheque ch"
  loc_BB5F4D: ConcatStr
  loc_BB5F4E: FStStrNoPop var_114
  loc_BB5F51: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_BB5F54: ConcatStr
  loc_BB5F55: FStStrNoPop var_118
  loc_BB5F58: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_BB5F5B: ConcatStr
  loc_BB5F5C: FStStrNoPop var_11C
  loc_BB5F5F: LitStr " WHERE FechCheq BETWEEN "
  loc_BB5F62: ConcatStr
  loc_BB5F63: CVarStr var_100
  loc_BB5F66: LitI4 1
  loc_BB5F6B: LitI4 1
  loc_BB5F70: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_BB5F75: FStVarCopyObj var_E0
  loc_BB5F78: FLdRfVar var_E0
  loc_BB5F7B: FLdRfVar var_C0
  loc_BB5F7E: CStrVarTmp
  loc_BB5F7F: CVarStr var_D0
  loc_BB5F82: FLdRfVar var_F0
  loc_BB5F85: ImpAdCallFPR4  = Format(, )
  loc_BB5F8A: FLdRfVar var_F0
  loc_BB5F8D: ConcatVar var_12C
  loc_BB5F91: LitVarStr var_A8, " AND "
  loc_BB5F96: ConcatVar var_13C
  loc_BB5F9A: LitI4 1
  loc_BB5F9F: LitI4 1
  loc_BB5FA4: LitVarStr var_16C, "'yyyy-mm-dd'"
  loc_BB5FA9: FStVarCopyObj var_17C
  loc_BB5FAC: FLdRfVar var_17C
  loc_BB5FAF: FLdRfVar var_14C
  loc_BB5FB2: CStrVarTmp
  loc_BB5FB3: CVarStr var_15C
  loc_BB5FB6: FLdRfVar var_18C
  loc_BB5FB9: ImpAdCallFPR4  = Format(, )
  loc_BB5FBE: FLdRfVar var_18C
  loc_BB5FC1: ConcatVar var_19C
  loc_BB5FC5: LitVarStr var_1AC, " AND (FereCheq IS NULL OR FereCheq > "
  loc_BB5FCA: ConcatVar var_1BC
  loc_BB5FCE: LitI4 1
  loc_BB5FD3: LitI4 1
  loc_BB5FD8: LitVarStr var_1F0, "'yyyy-mm-dd'"
  loc_BB5FDD: FStVarCopyObj var_200
  loc_BB5FE0: FLdRfVar var_200
  loc_BB5FE3: FLdRfVar var_1D0
  loc_BB5FE6: CStrVarTmp
  loc_BB5FE7: CVarStr var_1E0
  loc_BB5FEA: FLdRfVar var_210
  loc_BB5FED: ImpAdCallFPR4  = Format(, )
  loc_BB5FF2: FLdRfVar var_210
  loc_BB5FF5: ConcatVar var_220
  loc_BB5FF9: LitVarStr var_230, ")"
  loc_BB5FFE: ConcatVar var_240
  loc_BB6002: LitVarStr var_250, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_BB6007: ConcatVar var_260
  loc_BB600B: LitI4 1
  loc_BB6010: LitI4 1
  loc_BB6015: LitVarStr var_294, "'yyyy-mm-dd'"
  loc_BB601A: FStVarCopyObj var_2A4
  loc_BB601D: FLdRfVar var_2A4
  loc_BB6020: FLdRfVar var_274
  loc_BB6023: CStrVarTmp
  loc_BB6024: CVarStr var_284
  loc_BB6027: FLdRfVar var_2B4
  loc_BB602A: ImpAdCallFPR4  = Format(, )
  loc_BB602F: FLdRfVar var_2B4
  loc_BB6032: ConcatVar var_2C4
  loc_BB6036: LitVarStr var_2D4, ")"
  loc_BB603B: ConcatVar var_2E4
  loc_BB603F: LitVarStr var_2F4, " AND NumeMoba > 0"
  loc_BB6044: ConcatVar var_304
  loc_BB6048: LitVarStr var_314, " /*UNION ALL"
  loc_BB604D: ConcatVar var_324
  loc_BB6051: LitVarStr var_334, " SELECT ch.NumeOrpa, ch.ExpeImpu, ch.NumeLiqu, FechCheq, FereCheq, FepaCheq, ch.CucuPers, DetaProv, ln.CodiRete CodiBanc, 'Retenciones' DetaBanc, NumeMoba, ImpoLine ImpoCheq"
  loc_BB6056: ConcatVar var_344
  loc_BB605A: LitVarStr var_354, " FROM cheque ch"
  loc_BB605F: ConcatVar var_364
  loc_BB6063: LitVarStr var_374, " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_BB6068: ConcatVar var_384
  loc_BB606C: LitVarStr var_394, " INNER JOIN liquidaneto ln ON ln.PeriInfo = ch.PeriInfo AND ln.ExpeImpu = ch.ExpeImpu AND ln.NumeLiqu = ch.NumeLiqu AND ln.CucuPers = ch.CucuPers"
  loc_BB6071: ConcatVar var_3A4
  loc_BB6075: LitVarStr var_3B4, " AND CodiRete > 0"
  loc_BB607A: ConcatVar var_3C4
  loc_BB607E: LitVarStr var_3D4, " WHERE FechCheq BETWEEN "
  loc_BB6083: ConcatVar var_3E4
  loc_BB6087: LitI4 1
  loc_BB608C: LitI4 1
  loc_BB6091: LitVarStr var_404, "'yyyy-mm-dd'"
  loc_BB6096: FStVarCopyObj var_414
  loc_BB6099: FLdRfVar var_414
  loc_BB609C: FLdRfVar var_104
  loc_BB609F: CVarRef
  loc_BB60A4: ImpAdCallI2 Format$(, )
  loc_BB60A9: CVarStr var_424
  loc_BB60AC: ConcatVar var_434
  loc_BB60B0: LitVarStr var_444, " AND "
  loc_BB60B5: ConcatVar var_454
  loc_BB60B9: LitI4 1
  loc_BB60BE: LitI4 1
  loc_BB60C3: LitVarStr var_474, "'yyyy-mm-dd'"
  loc_BB60C8: FStVarCopyObj var_484
  loc_BB60CB: FLdRfVar var_484
  loc_BB60CE: FLdRfVar var_108
  loc_BB60D1: CVarRef
  loc_BB60D6: ImpAdCallI2 Format$(, )
  loc_BB60DB: CVarStr var_494
  loc_BB60DE: ConcatVar var_4A4
  loc_BB60E2: LitVarStr var_4B4, " AND (FereCheq IS NULL OR FereCheq > "
  loc_BB60E7: ConcatVar var_4C4
  loc_BB60EB: LitI4 1
  loc_BB60F0: LitI4 1
  loc_BB60F5: LitVarStr var_4E4, "'yyyy-mm-dd'"
  loc_BB60FA: FStVarCopyObj var_4F4
  loc_BB60FD: FLdRfVar var_4F4
  loc_BB6100: FLdRfVar var_108
  loc_BB6103: CVarRef
  loc_BB6108: ImpAdCallI2 Format$(, )
  loc_BB610D: CVarStr var_504
  loc_BB6110: ConcatVar var_514
  loc_BB6114: LitVarStr var_524, ")"
  loc_BB6119: ConcatVar var_534
  loc_BB611D: LitVarStr var_544, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_BB6122: ConcatVar var_554
  loc_BB6126: LitI4 1
  loc_BB612B: LitI4 1
  loc_BB6130: LitVarStr var_574, "'yyyy-mm-dd'"
  loc_BB6135: FStVarCopyObj var_584
  loc_BB6138: FLdRfVar var_584
  loc_BB613B: FLdRfVar var_108
  loc_BB613E: CVarRef
  loc_BB6143: ImpAdCallI2 Format$(, )
  loc_BB6148: CVarStr var_594
  loc_BB614B: ConcatVar var_5A4
  loc_BB614F: LitVarStr var_5B4, ")"
  loc_BB6154: ConcatVar var_5C4
  loc_BB6158: LitVarStr var_5D4, " AND NumeMoba > 0"
  loc_BB615D: ConcatVar var_5E4
  loc_BB6161: LitVarStr var_5F4, " GROUP BY ch.PeriInfo, ch.ExpeImpu, ch.NumeLiqu, ch.CucuPers, CodiRete"
  loc_BB6166: ConcatVar var_604
  loc_BB616A: LitVarStr var_614, "*/ ORDER BY NumeOrpa, CucuPers, CodiBanc, NumeMoba;"
  loc_BB616F: ConcatVar var_624
  loc_BB6173: CStrVarVal var_628
  loc_BB6177: FLdPr var_B0
  loc_BB617A: Call clscheque.RedefineRS(from_stack_1v)
  loc_BB617F: FFreeStr var_10C = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BB618C: FFreeAd var_AC = "": var_110 = "": var_1C0 = ""
  loc_BB6197: FFreeVar var_384 = "": var_3A4 = "": var_3C4 = "": var_414 = "": var_3E4 = "": var_424 = "": var_434 = "": var_484 = "": var_454 = "": var_494 = "": var_4A4 = "": var_4F4 = "": var_4C4 = "": var_504 = "": var_514 = "": var_534 = "": var_584 = "": var_554 = "": var_594 = "": var_5A4 = "": var_5C4 = "": var_5E4 = "": var_604 = "": var_624 = "": var_C0 = "": var_D0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_12C = "": var_14C = "": var_15C = "": var_17C = "": var_13C = "": var_18C = "": var_19C = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_1BC = "": var_210 = "": var_220 = "": var_240 = "": var_274 = "": var_284 = "": var_2A4 = "": var_260 = "": var_2B4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = ""
  loc_BB6206: LitStr "SELECT * FROM tmovi;"
  loc_BB6209: FLdPr var_B0
  loc_BB620C: Call clscheque.RedefineRS(from_stack_1v)
  loc_BB6211: Branch loc_BB63DA
  loc_BB6214: FLdPr Me
  loc_BB6217: VCallAd Control_ID_mskDesde
  loc_BB621A: FStAdFunc var_AC
  loc_BB621D: FLdPr var_AC
  loc_BB6220: LateIdLdVar var_C0 DispID_15 0
  loc_BB6227: PopAd
  loc_BB6229: FLdPr Me
  loc_BB622C: VCallAd Control_ID_mskHasta
  loc_BB622F: FStAdFunc var_110
  loc_BB6232: FLdPr var_110
  loc_BB6235: LateIdLdVar var_14C DispID_15 0
  loc_BB623C: PopAd
  loc_BB623E: FLdPr Me
  loc_BB6241: VCallAd Control_ID_mskHasta
  loc_BB6244: FStAdFunc var_1C0
  loc_BB6247: FLdPr var_1C0
  loc_BB624A: LateIdLdVar var_1D0 DispID_15 0
  loc_BB6251: PopAd
  loc_BB6253: FLdPr Me
  loc_BB6256: VCallAd Control_ID_mskHasta
  loc_BB6259: FStAdFunc var_264
  loc_BB625C: FLdPr var_264
  loc_BB625F: LateIdLdVar var_274 DispID_15 0
  loc_BB6266: PopAd
  loc_BB6268: LitStr "SELECT ch.NumeOrpa, ch.ExpeImpu, ch.NumeLiqu, FechCheq, FereCheq, FepaCheq, ch.CucuPers, DetaProv, ch.CodiBanc, DetaBanc, NumeMoba, ImpoCheq"
  loc_BB626B: LitStr " FROM cheque ch"
  loc_BB626E: ConcatStr
  loc_BB626F: FStStrNoPop var_10C
  loc_BB6272: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_BB6275: ConcatStr
  loc_BB6276: FStStrNoPop var_114
  loc_BB6279: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_BB627C: ConcatStr
  loc_BB627D: FStStrNoPop var_118
  loc_BB6280: LitStr " WHERE FechCheq BETWEEN "
  loc_BB6283: ConcatStr
  loc_BB6284: CVarStr var_100
  loc_BB6287: LitI4 1
  loc_BB628C: LitI4 1
  loc_BB6291: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_BB6296: FStVarCopyObj var_E0
  loc_BB6299: FLdRfVar var_E0
  loc_BB629C: FLdRfVar var_C0
  loc_BB629F: CStrVarTmp
  loc_BB62A0: CVarStr var_D0
  loc_BB62A3: FLdRfVar var_F0
  loc_BB62A6: ImpAdCallFPR4  = Format(, )
  loc_BB62AB: FLdRfVar var_F0
  loc_BB62AE: ConcatVar var_12C
  loc_BB62B2: LitVarStr var_A8, " AND "
  loc_BB62B7: ConcatVar var_13C
  loc_BB62BB: LitI4 1
  loc_BB62C0: LitI4 1
  loc_BB62C5: LitVarStr var_16C, "'yyyy-mm-dd'"
  loc_BB62CA: FStVarCopyObj var_17C
  loc_BB62CD: FLdRfVar var_17C
  loc_BB62D0: FLdRfVar var_14C
  loc_BB62D3: CStrVarTmp
  loc_BB62D4: CVarStr var_15C
  loc_BB62D7: FLdRfVar var_18C
  loc_BB62DA: ImpAdCallFPR4  = Format(, )
  loc_BB62DF: FLdRfVar var_18C
  loc_BB62E2: ConcatVar var_19C
  loc_BB62E6: LitVarStr var_1AC, " AND (FereCheq IS NULL OR FereCheq > "
  loc_BB62EB: ConcatVar var_1BC
  loc_BB62EF: LitI4 1
  loc_BB62F4: LitI4 1
  loc_BB62F9: LitVarStr var_1F0, "'yyyy-mm-dd'"
  loc_BB62FE: FStVarCopyObj var_200
  loc_BB6301: FLdRfVar var_200
  loc_BB6304: FLdRfVar var_1D0
  loc_BB6307: CStrVarTmp
  loc_BB6308: CVarStr var_1E0
  loc_BB630B: FLdRfVar var_210
  loc_BB630E: ImpAdCallFPR4  = Format(, )
  loc_BB6313: FLdRfVar var_210
  loc_BB6316: ConcatVar var_220
  loc_BB631A: LitVarStr var_230, ")"
  loc_BB631F: ConcatVar var_240
  loc_BB6323: LitVarStr var_250, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_BB6328: ConcatVar var_260
  loc_BB632C: LitI4 1
  loc_BB6331: LitI4 1
  loc_BB6336: LitVarStr var_294, "'yyyy-mm-dd'"
  loc_BB633B: FStVarCopyObj var_2A4
  loc_BB633E: FLdRfVar var_2A4
  loc_BB6341: FLdRfVar var_274
  loc_BB6344: CStrVarTmp
  loc_BB6345: CVarStr var_284
  loc_BB6348: FLdRfVar var_2B4
  loc_BB634B: ImpAdCallFPR4  = Format(, )
  loc_BB6350: FLdRfVar var_2B4
  loc_BB6353: ConcatVar var_2C4
  loc_BB6357: LitVarStr var_2D4, ")"
  loc_BB635C: ConcatVar var_2E4
  loc_BB6360: LitVarStr var_2F4, " AND AutoCheq IN (1,2)"
  loc_BB6365: ConcatVar var_304
  loc_BB6369: LitVarStr var_314, " AND NumeMoba > 0"
  loc_BB636E: ConcatVar var_324
  loc_BB6372: LitVarStr var_334, " ORDER BY NumeOrpa, CucuPers, CodiBanc, NumeMoba;"
  loc_BB6377: ConcatVar var_344
  loc_BB637B: CStrVarVal var_11C
  loc_BB637F: FLdPr var_B0
  loc_BB6382: Call clscheque.RedefineRS(from_stack_1v)
  loc_BB6387: FFreeStr var_10C = "": var_114 = "": var_118 = ""
  loc_BB6392: FFreeAd var_AC = "": var_110 = "": var_1C0 = ""
  loc_BB639D: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_12C = "": var_14C = "": var_15C = "": var_17C = "": var_13C = "": var_18C = "": var_19C = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_1BC = "": var_210 = "": var_220 = "": var_240 = "": var_274 = "": var_284 = "": var_2A4 = "": var_260 = "": var_2B4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = ""
  loc_BB63DA: FLdRfVar var_62C
  loc_BB63DD: FLdPr var_B0
  loc_BB63E0: from_stack_1 = clscheque.RecordCount
  loc_BB63E5: ILdRf var_62C
  loc_BB63E8: LitI4 0
  loc_BB63ED: EqI4
  loc_BB63EE: BranchF loc_BB6404
  loc_BB63F1: LitI4 0
  loc_BB63F6: LitStr "No existen registros para el criterio especificado"
  loc_BB63F9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB63FE: Branch loc_BB6CB2
  loc_BB6401: Branch loc_BB68D5
  loc_BB6404: LitI4 1
  loc_BB6409: FLdRfVar var_62C
  loc_BB640C: FLdPr var_B0
  loc_BB640F: from_stack_1 = clscheque.RecordCount
  loc_BB6414: ILdRf var_62C
  loc_BB6417: FLdPr Me
  loc_BB641A: MemLdRfVar from_stack_1.global_84
  loc_BB641D: Redim
  loc_BB6427: FLdPr var_B0
  loc_BB642A: Call clscheque.MoveFirst()
  loc_BB642F: LitI4 1
  loc_BB6434: FLdPr Me
  loc_BB6437: MemLdRfVar from_stack_1.global_92
  loc_BB643A: FLdPr Me
  loc_BB643D: MemLdStr global_84
  loc_BB6440: LitI2_Byte 1
  loc_BB6442: FnUBound
  loc_BB6444: ForI4 var_634
  loc_BB644A: FLdRfVar var_1C0
  loc_BB644D: LitVarStr var_98, "NumeOrpa"
  loc_BB6452: PopAdLdVar
  loc_BB6453: FLdRfVar var_110
  loc_BB6456: FLdRfVar var_AC
  loc_BB6459: FLdPr var_B0
  loc_BB645C: from_stack_1v = clscheque.RsFrmGet()
  loc_BB6461: FLdPr var_AC
  loc_BB6464:  = Me.Fields
  loc_BB6469: FLdPr var_110
  loc_BB646C: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6471: LitI2_Byte 0
  loc_BB6473: LitVar_Missing var_D0
  loc_BB6476: LitI2_Byte 0
  loc_BB6478: FLdZeroAd var_1C0
  loc_BB647B: CVarAd
  loc_BB647F: PopAdLdVar
  loc_BB6480: FLdPr Me
  loc_BB6483: MemLdStr global_92
  loc_BB6486: FLdPr Me
  loc_BB6489: MemLdStr global_84
  loc_BB648C: AryLock
  loc_BB648F: Ary1LdPr
  loc_BB6490: MemLdRfVar from_stack_1.global_0
  loc_BB6493: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB6498: AryUnlock
  loc_BB649B: FFreeAd var_AC = ""
  loc_BB64A2: FFreeVar var_C0 = ""
  loc_BB64A9: FLdRfVar var_1C0
  loc_BB64AC: LitVarStr var_98, "ExpeImpu"
  loc_BB64B1: PopAdLdVar
  loc_BB64B2: FLdRfVar var_110
  loc_BB64B5: FLdRfVar var_AC
  loc_BB64B8: FLdPr var_B0
  loc_BB64BB: from_stack_1v = clscheque.RsFrmGet()
  loc_BB64C0: FLdPr var_AC
  loc_BB64C3:  = Me.Fields
  loc_BB64C8: FLdPr var_110
  loc_BB64CB: from_stack_2 = Me.Item(from_stack_1)
  loc_BB64D0: LitI2_Byte 0
  loc_BB64D2: LitVar_Missing var_D0
  loc_BB64D5: LitI2_Byte 0
  loc_BB64D7: FLdZeroAd var_1C0
  loc_BB64DA: CVarAd
  loc_BB64DE: PopAdLdVar
  loc_BB64DF: FLdPr Me
  loc_BB64E2: MemLdStr global_92
  loc_BB64E5: FLdPr Me
  loc_BB64E8: MemLdStr global_84
  loc_BB64EB: AryLock
  loc_BB64EE: Ary1LdPr
  loc_BB64EF: MemLdRfVar from_stack_1.global_4
  loc_BB64F2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB64F7: AryUnlock
  loc_BB64FA: FFreeAd var_AC = ""
  loc_BB6501: FFreeVar var_C0 = ""
  loc_BB6508: FLdRfVar var_1C0
  loc_BB650B: LitVarStr var_98, "NumeLiqu"
  loc_BB6510: PopAdLdVar
  loc_BB6511: FLdRfVar var_110
  loc_BB6514: FLdRfVar var_AC
  loc_BB6517: FLdPr var_B0
  loc_BB651A: from_stack_1v = clscheque.RsFrmGet()
  loc_BB651F: FLdPr var_AC
  loc_BB6522:  = Me.Fields
  loc_BB6527: FLdPr var_110
  loc_BB652A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB652F: LitI2_Byte 0
  loc_BB6531: LitVar_Missing var_D0
  loc_BB6534: LitI2_Byte 0
  loc_BB6536: FLdZeroAd var_1C0
  loc_BB6539: CVarAd
  loc_BB653D: PopAdLdVar
  loc_BB653E: FLdPr Me
  loc_BB6541: MemLdStr global_92
  loc_BB6544: FLdPr Me
  loc_BB6547: MemLdStr global_84
  loc_BB654A: AryLock
  loc_BB654D: Ary1LdPr
  loc_BB654E: MemLdRfVar from_stack_1.global_8
  loc_BB6551: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB6556: AryUnlock
  loc_BB6559: FFreeAd var_AC = ""
  loc_BB6560: FFreeVar var_C0 = ""
  loc_BB6567: FLdRfVar var_1C0
  loc_BB656A: LitVarStr var_98, "FechCheq"
  loc_BB656F: PopAdLdVar
  loc_BB6570: FLdRfVar var_110
  loc_BB6573: FLdRfVar var_AC
  loc_BB6576: FLdPr var_B0
  loc_BB6579: from_stack_1v = clscheque.RsFrmGet()
  loc_BB657E: FLdPr var_AC
  loc_BB6581:  = Me.Fields
  loc_BB6586: FLdPr var_110
  loc_BB6589: from_stack_2 = Me.Item(from_stack_1)
  loc_BB658E: LitI2_Byte 0
  loc_BB6590: LitVar_Missing var_D0
  loc_BB6593: LitI2_Byte 0
  loc_BB6595: FLdZeroAd var_1C0
  loc_BB6598: CVarAd
  loc_BB659C: PopAdLdVar
  loc_BB659D: FLdPr Me
  loc_BB65A0: MemLdStr global_92
  loc_BB65A3: FLdPr Me
  loc_BB65A6: MemLdStr global_84
  loc_BB65A9: AryLock
  loc_BB65AC: Ary1LdPr
  loc_BB65AD: MemLdRfVar from_stack_1.global_12
  loc_BB65B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB65B5: AryUnlock
  loc_BB65B8: FFreeAd var_AC = ""
  loc_BB65BF: FFreeVar var_C0 = ""
  loc_BB65C6: FLdRfVar var_1C0
  loc_BB65C9: LitVarStr var_98, "FereCheq"
  loc_BB65CE: PopAdLdVar
  loc_BB65CF: FLdRfVar var_110
  loc_BB65D2: FLdRfVar var_AC
  loc_BB65D5: FLdPr var_B0
  loc_BB65D8: from_stack_1v = clscheque.RsFrmGet()
  loc_BB65DD: FLdPr var_AC
  loc_BB65E0:  = Me.Fields
  loc_BB65E5: FLdPr var_110
  loc_BB65E8: from_stack_2 = Me.Item(from_stack_1)
  loc_BB65ED: LitI2_Byte 0
  loc_BB65EF: LitVar_Missing var_D0
  loc_BB65F2: LitI2_Byte 0
  loc_BB65F4: FLdZeroAd var_1C0
  loc_BB65F7: CVarAd
  loc_BB65FB: PopAdLdVar
  loc_BB65FC: FLdPr Me
  loc_BB65FF: MemLdStr global_92
  loc_BB6602: FLdPr Me
  loc_BB6605: MemLdStr global_84
  loc_BB6608: AryLock
  loc_BB660B: Ary1LdPr
  loc_BB660C: MemLdRfVar from_stack_1.global_16
  loc_BB660F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB6614: AryUnlock
  loc_BB6617: FFreeAd var_AC = ""
  loc_BB661E: FFreeVar var_C0 = ""
  loc_BB6625: FLdRfVar var_1C0
  loc_BB6628: LitVarStr var_98, "FepaCheq"
  loc_BB662D: PopAdLdVar
  loc_BB662E: FLdRfVar var_110
  loc_BB6631: FLdRfVar var_AC
  loc_BB6634: FLdPr var_B0
  loc_BB6637: from_stack_1v = clscheque.RsFrmGet()
  loc_BB663C: FLdPr var_AC
  loc_BB663F:  = Me.Fields
  loc_BB6644: FLdPr var_110
  loc_BB6647: from_stack_2 = Me.Item(from_stack_1)
  loc_BB664C: LitI2_Byte 0
  loc_BB664E: LitVar_Missing var_D0
  loc_BB6651: LitI2_Byte 0
  loc_BB6653: FLdZeroAd var_1C0
  loc_BB6656: CVarAd
  loc_BB665A: PopAdLdVar
  loc_BB665B: FLdPr Me
  loc_BB665E: MemLdStr global_92
  loc_BB6661: FLdPr Me
  loc_BB6664: MemLdStr global_84
  loc_BB6667: AryLock
  loc_BB666A: Ary1LdPr
  loc_BB666B: MemLdRfVar from_stack_1.global_20
  loc_BB666E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB6673: AryUnlock
  loc_BB6676: FFreeAd var_AC = ""
  loc_BB667D: FFreeVar var_C0 = ""
  loc_BB6684: FLdRfVar var_1C0
  loc_BB6687: LitVarStr var_98, "CucuPers"
  loc_BB668C: PopAdLdVar
  loc_BB668D: FLdRfVar var_110
  loc_BB6690: FLdRfVar var_AC
  loc_BB6693: FLdPr var_B0
  loc_BB6696: from_stack_1v = clscheque.RsFrmGet()
  loc_BB669B: FLdPr var_AC
  loc_BB669E:  = Me.Fields
  loc_BB66A3: FLdPr var_110
  loc_BB66A6: from_stack_2 = Me.Item(from_stack_1)
  loc_BB66AB: LitI2_Byte 0
  loc_BB66AD: LitVar_Missing var_D0
  loc_BB66B0: LitI2_Byte 0
  loc_BB66B2: FLdZeroAd var_1C0
  loc_BB66B5: CVarAd
  loc_BB66B9: PopAdLdVar
  loc_BB66BA: FLdPr Me
  loc_BB66BD: MemLdStr global_92
  loc_BB66C0: FLdPr Me
  loc_BB66C3: MemLdStr global_84
  loc_BB66C6: AryLock
  loc_BB66C9: Ary1LdPr
  loc_BB66CA: MemLdRfVar from_stack_1.global_24
  loc_BB66CD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB66D2: AryUnlock
  loc_BB66D5: FFreeAd var_AC = ""
  loc_BB66DC: FFreeVar var_C0 = ""
  loc_BB66E3: FLdRfVar var_1C0
  loc_BB66E6: LitVarStr var_98, "DetaProv"
  loc_BB66EB: PopAdLdVar
  loc_BB66EC: FLdRfVar var_110
  loc_BB66EF: FLdRfVar var_AC
  loc_BB66F2: FLdPr var_B0
  loc_BB66F5: from_stack_1v = clscheque.RsFrmGet()
  loc_BB66FA: FLdPr var_AC
  loc_BB66FD:  = Me.Fields
  loc_BB6702: FLdPr var_110
  loc_BB6705: from_stack_2 = Me.Item(from_stack_1)
  loc_BB670A: LitI2_Byte 0
  loc_BB670C: LitVar_Missing var_D0
  loc_BB670F: LitI2_Byte 0
  loc_BB6711: FLdZeroAd var_1C0
  loc_BB6714: CVarAd
  loc_BB6718: PopAdLdVar
  loc_BB6719: FLdPr Me
  loc_BB671C: MemLdStr global_92
  loc_BB671F: FLdPr Me
  loc_BB6722: MemLdStr global_84
  loc_BB6725: AryLock
  loc_BB6728: Ary1LdPr
  loc_BB6729: MemLdRfVar from_stack_1.global_28
  loc_BB672C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB6731: AryUnlock
  loc_BB6734: FFreeAd var_AC = ""
  loc_BB673B: FFreeVar var_C0 = ""
  loc_BB6742: FLdRfVar var_1C0
  loc_BB6745: LitVarStr var_98, "CodiBanc"
  loc_BB674A: PopAdLdVar
  loc_BB674B: FLdRfVar var_110
  loc_BB674E: FLdRfVar var_AC
  loc_BB6751: FLdPr var_B0
  loc_BB6754: from_stack_1v = clscheque.RsFrmGet()
  loc_BB6759: FLdPr var_AC
  loc_BB675C:  = Me.Fields
  loc_BB6761: FLdPr var_110
  loc_BB6764: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6769: LitI2_Byte 0
  loc_BB676B: LitVar_Missing var_D0
  loc_BB676E: LitI2_Byte 0
  loc_BB6770: FLdZeroAd var_1C0
  loc_BB6773: CVarAd
  loc_BB6777: PopAdLdVar
  loc_BB6778: FLdPr Me
  loc_BB677B: MemLdStr global_92
  loc_BB677E: FLdPr Me
  loc_BB6781: MemLdStr global_84
  loc_BB6784: AryLock
  loc_BB6787: Ary1LdPr
  loc_BB6788: MemLdRfVar from_stack_1.global_32
  loc_BB678B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB6790: AryUnlock
  loc_BB6793: FFreeAd var_AC = ""
  loc_BB679A: FFreeVar var_C0 = ""
  loc_BB67A1: FLdRfVar var_1C0
  loc_BB67A4: LitVarStr var_98, "DetaBanc"
  loc_BB67A9: PopAdLdVar
  loc_BB67AA: FLdRfVar var_110
  loc_BB67AD: FLdRfVar var_AC
  loc_BB67B0: FLdPr var_B0
  loc_BB67B3: from_stack_1v = clscheque.RsFrmGet()
  loc_BB67B8: FLdPr var_AC
  loc_BB67BB:  = Me.Fields
  loc_BB67C0: FLdPr var_110
  loc_BB67C3: from_stack_2 = Me.Item(from_stack_1)
  loc_BB67C8: LitI2_Byte 0
  loc_BB67CA: LitVar_Missing var_D0
  loc_BB67CD: LitI2_Byte 0
  loc_BB67CF: FLdZeroAd var_1C0
  loc_BB67D2: CVarAd
  loc_BB67D6: PopAdLdVar
  loc_BB67D7: FLdPr Me
  loc_BB67DA: MemLdStr global_92
  loc_BB67DD: FLdPr Me
  loc_BB67E0: MemLdStr global_84
  loc_BB67E3: AryLock
  loc_BB67E6: Ary1LdPr
  loc_BB67E7: MemLdRfVar from_stack_1.global_36
  loc_BB67EA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB67EF: AryUnlock
  loc_BB67F2: FFreeAd var_AC = ""
  loc_BB67F9: FFreeVar var_C0 = ""
  loc_BB6800: FLdRfVar var_1C0
  loc_BB6803: LitVarStr var_98, "NumeMoba"
  loc_BB6808: PopAdLdVar
  loc_BB6809: FLdRfVar var_110
  loc_BB680C: FLdRfVar var_AC
  loc_BB680F: FLdPr var_B0
  loc_BB6812: from_stack_1v = clscheque.RsFrmGet()
  loc_BB6817: FLdPr var_AC
  loc_BB681A:  = Me.Fields
  loc_BB681F: FLdPr var_110
  loc_BB6822: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6827: LitI2_Byte 0
  loc_BB6829: LitVar_Missing var_D0
  loc_BB682C: LitI2_Byte 0
  loc_BB682E: FLdZeroAd var_1C0
  loc_BB6831: CVarAd
  loc_BB6835: PopAdLdVar
  loc_BB6836: FLdPr Me
  loc_BB6839: MemLdStr global_92
  loc_BB683C: FLdPr Me
  loc_BB683F: MemLdStr global_84
  loc_BB6842: AryLock
  loc_BB6845: Ary1LdPr
  loc_BB6846: MemLdRfVar from_stack_1.global_40
  loc_BB6849: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB684E: AryUnlock
  loc_BB6851: FFreeAd var_AC = ""
  loc_BB6858: FFreeVar var_C0 = ""
  loc_BB685F: FLdRfVar var_1C0
  loc_BB6862: LitVarStr var_98, "ImpoCheq"
  loc_BB6867: PopAdLdVar
  loc_BB6868: FLdRfVar var_110
  loc_BB686B: FLdRfVar var_AC
  loc_BB686E: FLdPr var_B0
  loc_BB6871: from_stack_1v = clscheque.RsFrmGet()
  loc_BB6876: FLdPr var_AC
  loc_BB6879:  = Me.Fields
  loc_BB687E: FLdPr var_110
  loc_BB6881: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6886: LitI2_Byte 0
  loc_BB6888: FLdPr Me
  loc_BB688B: MemLdRfVar from_stack_1.global_96
  loc_BB688E: CVarRef
  loc_BB6893: LitI2_Byte &HFF
  loc_BB6895: FLdZeroAd var_1C0
  loc_BB6898: CVarAd
  loc_BB689C: PopAdLdVar
  loc_BB689D: FLdPr Me
  loc_BB68A0: MemLdStr global_92
  loc_BB68A3: FLdPr Me
  loc_BB68A6: MemLdStr global_84
  loc_BB68A9: AryLock
  loc_BB68AC: Ary1LdPr
  loc_BB68AD: MemLdRfVar from_stack_1.global_44
  loc_BB68B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB68B5: AryUnlock
  loc_BB68B8: FFreeAd var_AC = ""
  loc_BB68BF: FFree1Var var_C0 = ""
  loc_BB68C2: FLdPr var_B0
  loc_BB68C5: Call clscheque.MoveSiguiente()
  loc_BB68CA: FLdPr Me
  loc_BB68CD: MemLdRfVar from_stack_1.global_92
  loc_BB68D0: NextI4 var_634, loc_BB644A
  loc_BB68D5: LitNothing
  loc_BB68D7: FStAd var_B0 
  loc_BB68DB: LitStr "0"
  loc_BB68DE: FLdPr Me
  loc_BB68E1: MemStStrCopy
  loc_BB68E5: FLdPr Me
  loc_BB68E8: MemLdRfVar from_stack_1.global_76
  loc_BB68EB: NewIfNullAd
  loc_BB68EE: FStAd var_63C 
  loc_BB68F2: LitStr "Municipalidad de Guaymallén"
  loc_BB68F5: LitStr "Municipalidad de Guaymallén"
  loc_BB68F8: EqStr
  loc_BB68FA: CVarBoolI2 var_A8
  loc_BB68FE: FLdPr Me
  loc_BB6901: VCallAd Control_ID_mskDesde
  loc_BB6904: FStAdFunc var_AC
  loc_BB6907: FLdPr var_AC
  loc_BB690A: LateIdLdVar var_C0 DispID_15 0
  loc_BB6911: CStrVarTmp
  loc_BB6912: CVarStr var_D0
  loc_BB6915: FLdRfVar var_E0
  loc_BB6918: ImpAdCallFPR4  = Year()
  loc_BB691D: FLdRfVar var_E0
  loc_BB6920: LitVarStr var_98, "2018"
  loc_BB6925: HardType
  loc_BB6926: EqVar var_F0
  loc_BB692A: AndVar var_100
  loc_BB692E: CBoolVarNull
  loc_BB6930: FFree1Ad var_AC
  loc_BB6933: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_BB693E: BranchF loc_BB6964
  loc_BB6941: LitStr "SELECT CodiBanc, DetaBanc, Sum(ImpoCheq) ImpoCheq"
  loc_BB6944: LitStr " FROM tmovi"
  loc_BB6947: ConcatStr
  loc_BB6948: FStStrNoPop var_10C
  loc_BB694B: LitStr " GROUP BY CodiBanc;"
  loc_BB694E: ConcatStr
  loc_BB694F: FStStrNoPop var_114
  loc_BB6952: FLdPr var_63C
  loc_BB6955: Call clscheque.RedefineRS(from_stack_1v)
  loc_BB695A: FFreeStr var_10C = ""
  loc_BB6961: Branch loc_BB6B2A
  loc_BB6964: FLdPr Me
  loc_BB6967: VCallAd Control_ID_mskDesde
  loc_BB696A: FStAdFunc var_AC
  loc_BB696D: FLdPr var_AC
  loc_BB6970: LateIdLdVar var_C0 DispID_15 0
  loc_BB6977: PopAd
  loc_BB6979: FLdPr Me
  loc_BB697C: VCallAd Control_ID_mskHasta
  loc_BB697F: FStAdFunc var_110
  loc_BB6982: FLdPr var_110
  loc_BB6985: LateIdLdVar var_14C DispID_15 0
  loc_BB698C: PopAd
  loc_BB698E: FLdPr Me
  loc_BB6991: VCallAd Control_ID_mskHasta
  loc_BB6994: FStAdFunc var_1C0
  loc_BB6997: FLdPr var_1C0
  loc_BB699A: LateIdLdVar var_1D0 DispID_15 0
  loc_BB69A1: PopAd
  loc_BB69A3: FLdPr Me
  loc_BB69A6: VCallAd Control_ID_mskHasta
  loc_BB69A9: FStAdFunc var_264
  loc_BB69AC: FLdPr var_264
  loc_BB69AF: LateIdLdVar var_274 DispID_15 0
  loc_BB69B6: PopAd
  loc_BB69B8: LitStr "SELECT ch.CodiBanc, DetaBanc, Sum(ImpoCheq) ImpoCheq"
  loc_BB69BB: LitStr " FROM cheque ch"
  loc_BB69BE: ConcatStr
  loc_BB69BF: FStStrNoPop var_10C
  loc_BB69C2: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_BB69C5: ConcatStr
  loc_BB69C6: FStStrNoPop var_114
  loc_BB69C9: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_BB69CC: ConcatStr
  loc_BB69CD: FStStrNoPop var_118
  loc_BB69D0: LitStr " WHERE FechCheq BETWEEN "
  loc_BB69D3: ConcatStr
  loc_BB69D4: CVarStr var_100
  loc_BB69D7: LitI4 1
  loc_BB69DC: LitI4 1
  loc_BB69E1: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_BB69E6: FStVarCopyObj var_E0
  loc_BB69E9: FLdRfVar var_E0
  loc_BB69EC: FLdRfVar var_C0
  loc_BB69EF: CStrVarTmp
  loc_BB69F0: CVarStr var_D0
  loc_BB69F3: FLdRfVar var_F0
  loc_BB69F6: ImpAdCallFPR4  = Format(, )
  loc_BB69FB: FLdRfVar var_F0
  loc_BB69FE: ConcatVar var_12C
  loc_BB6A02: LitVarStr var_A8, " AND "
  loc_BB6A07: ConcatVar var_13C
  loc_BB6A0B: LitI4 1
  loc_BB6A10: LitI4 1
  loc_BB6A15: LitVarStr var_16C, "'yyyy-mm-dd'"
  loc_BB6A1A: FStVarCopyObj var_17C
  loc_BB6A1D: FLdRfVar var_17C
  loc_BB6A20: FLdRfVar var_14C
  loc_BB6A23: CStrVarTmp
  loc_BB6A24: CVarStr var_15C
  loc_BB6A27: FLdRfVar var_18C
  loc_BB6A2A: ImpAdCallFPR4  = Format(, )
  loc_BB6A2F: FLdRfVar var_18C
  loc_BB6A32: ConcatVar var_19C
  loc_BB6A36: LitVarStr var_1AC, " AND (FereCheq IS NULL OR FereCheq > "
  loc_BB6A3B: ConcatVar var_1BC
  loc_BB6A3F: LitI4 1
  loc_BB6A44: LitI4 1
  loc_BB6A49: LitVarStr var_1F0, "'yyyy-mm-dd'"
  loc_BB6A4E: FStVarCopyObj var_200
  loc_BB6A51: FLdRfVar var_200
  loc_BB6A54: FLdRfVar var_1D0
  loc_BB6A57: CStrVarTmp
  loc_BB6A58: CVarStr var_1E0
  loc_BB6A5B: FLdRfVar var_210
  loc_BB6A5E: ImpAdCallFPR4  = Format(, )
  loc_BB6A63: FLdRfVar var_210
  loc_BB6A66: ConcatVar var_220
  loc_BB6A6A: LitVarStr var_230, ")"
  loc_BB6A6F: ConcatVar var_240
  loc_BB6A73: LitVarStr var_250, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_BB6A78: ConcatVar var_260
  loc_BB6A7C: LitI4 1
  loc_BB6A81: LitI4 1
  loc_BB6A86: LitVarStr var_294, "'yyyy-mm-dd'"
  loc_BB6A8B: FStVarCopyObj var_2A4
  loc_BB6A8E: FLdRfVar var_2A4
  loc_BB6A91: FLdRfVar var_274
  loc_BB6A94: CStrVarTmp
  loc_BB6A95: CVarStr var_284
  loc_BB6A98: FLdRfVar var_2B4
  loc_BB6A9B: ImpAdCallFPR4  = Format(, )
  loc_BB6AA0: FLdRfVar var_2B4
  loc_BB6AA3: ConcatVar var_2C4
  loc_BB6AA7: LitVarStr var_2D4, ")"
  loc_BB6AAC: ConcatVar var_2E4
  loc_BB6AB0: LitVarStr var_2F4, " AND NumeMoba > 0"
  loc_BB6AB5: ConcatVar var_304
  loc_BB6AB9: LitVarStr var_314, " AND AutoCheq IN (1,2)"
  loc_BB6ABE: ConcatVar var_324
  loc_BB6AC2: LitVarStr var_334, " GROUP BY CodiBanc;"
  loc_BB6AC7: ConcatVar var_344
  loc_BB6ACB: CStrVarVal var_11C
  loc_BB6ACF: FLdPr var_63C
  loc_BB6AD2: Call clscheque.RedefineRS(from_stack_1v)
  loc_BB6AD7: FFreeStr var_10C = "": var_114 = "": var_118 = ""
  loc_BB6AE2: FFreeAd var_AC = "": var_110 = "": var_1C0 = ""
  loc_BB6AED: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_12C = "": var_14C = "": var_15C = "": var_17C = "": var_13C = "": var_18C = "": var_19C = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_1BC = "": var_210 = "": var_220 = "": var_240 = "": var_274 = "": var_284 = "": var_2A4 = "": var_260 = "": var_2B4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = ""
  loc_BB6B2A: LitI4 1
  loc_BB6B2F: FLdRfVar var_62C
  loc_BB6B32: FLdPr var_63C
  loc_BB6B35: from_stack_1 = clscheque.RecordCount
  loc_BB6B3A: ILdRf var_62C
  loc_BB6B3D: FLdPr Me
  loc_BB6B40: MemLdRfVar from_stack_1.global_88
  loc_BB6B43: Redim
  loc_BB6B4D: FLdPr var_63C
  loc_BB6B50: Call clscheque.MoveFirst()
  loc_BB6B55: LitI4 1
  loc_BB6B5A: FLdPr Me
  loc_BB6B5D: MemLdRfVar from_stack_1.global_92
  loc_BB6B60: FLdPr Me
  loc_BB6B63: MemLdStr global_88
  loc_BB6B66: LitI2_Byte 1
  loc_BB6B68: FnUBound
  loc_BB6B6A: ForI4 var_644
  loc_BB6B70: FLdRfVar var_1C0
  loc_BB6B73: LitVarStr var_98, "CodiBanc"
  loc_BB6B78: PopAdLdVar
  loc_BB6B79: FLdRfVar var_110
  loc_BB6B7C: FLdRfVar var_AC
  loc_BB6B7F: FLdPr var_63C
  loc_BB6B82: from_stack_1v = clscheque.RsFrmGet()
  loc_BB6B87: FLdPr var_AC
  loc_BB6B8A:  = Me.Fields
  loc_BB6B8F: FLdPr var_110
  loc_BB6B92: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6B97: LitI2_Byte 0
  loc_BB6B99: LitVar_Missing var_D0
  loc_BB6B9C: LitI2_Byte 0
  loc_BB6B9E: FLdZeroAd var_1C0
  loc_BB6BA1: CVarAd
  loc_BB6BA5: PopAdLdVar
  loc_BB6BA6: FLdPr Me
  loc_BB6BA9: MemLdStr global_92
  loc_BB6BAC: FLdPr Me
  loc_BB6BAF: MemLdStr global_88
  loc_BB6BB2: AryLock
  loc_BB6BB5: Ary1LdPr
  loc_BB6BB6: MemLdRfVar from_stack_1.global_32
  loc_BB6BB9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB6BBE: AryUnlock
  loc_BB6BC1: FFreeAd var_AC = ""
  loc_BB6BC8: FFreeVar var_C0 = ""
  loc_BB6BCF: FLdRfVar var_1C0
  loc_BB6BD2: LitVarStr var_98, "DetaBanc"
  loc_BB6BD7: PopAdLdVar
  loc_BB6BD8: FLdRfVar var_110
  loc_BB6BDB: FLdRfVar var_AC
  loc_BB6BDE: FLdPr var_63C
  loc_BB6BE1: from_stack_1v = clscheque.RsFrmGet()
  loc_BB6BE6: FLdPr var_AC
  loc_BB6BE9:  = Me.Fields
  loc_BB6BEE: FLdPr var_110
  loc_BB6BF1: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6BF6: LitI2_Byte 0
  loc_BB6BF8: LitVar_Missing var_D0
  loc_BB6BFB: LitI2_Byte 0
  loc_BB6BFD: FLdZeroAd var_1C0
  loc_BB6C00: CVarAd
  loc_BB6C04: PopAdLdVar
  loc_BB6C05: FLdPr Me
  loc_BB6C08: MemLdStr global_92
  loc_BB6C0B: FLdPr Me
  loc_BB6C0E: MemLdStr global_88
  loc_BB6C11: AryLock
  loc_BB6C14: Ary1LdPr
  loc_BB6C15: MemLdRfVar from_stack_1.global_36
  loc_BB6C18: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB6C1D: AryUnlock
  loc_BB6C20: FFreeAd var_AC = ""
  loc_BB6C27: FFreeVar var_C0 = ""
  loc_BB6C2E: FLdRfVar var_1C0
  loc_BB6C31: LitVarStr var_98, "ImpoCheq"
  loc_BB6C36: PopAdLdVar
  loc_BB6C37: FLdRfVar var_110
  loc_BB6C3A: FLdRfVar var_AC
  loc_BB6C3D: FLdPr var_63C
  loc_BB6C40: from_stack_1v = clscheque.RsFrmGet()
  loc_BB6C45: FLdPr var_AC
  loc_BB6C48:  = Me.Fields
  loc_BB6C4D: FLdPr var_110
  loc_BB6C50: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6C55: LitI2_Byte 0
  loc_BB6C57: FLdPr Me
  loc_BB6C5A: MemLdRfVar from_stack_1.global_100
  loc_BB6C5D: CVarRef
  loc_BB6C62: LitI2_Byte &HFF
  loc_BB6C64: FLdZeroAd var_1C0
  loc_BB6C67: CVarAd
  loc_BB6C6B: PopAdLdVar
  loc_BB6C6C: FLdPr Me
  loc_BB6C6F: MemLdStr global_92
  loc_BB6C72: FLdPr Me
  loc_BB6C75: MemLdStr global_88
  loc_BB6C78: AryLock
  loc_BB6C7B: Ary1LdPr
  loc_BB6C7C: MemLdRfVar from_stack_1.global_44
  loc_BB6C7F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BB6C84: AryUnlock
  loc_BB6C87: FFreeAd var_AC = ""
  loc_BB6C8E: FFree1Var var_C0 = ""
  loc_BB6C91: FLdPr var_63C
  loc_BB6C94: Call clscheque.MoveSiguiente()
  loc_BB6C99: FLdPr Me
  loc_BB6C9C: MemLdRfVar from_stack_1.global_92
  loc_BB6C9F: NextI4 var_644, loc_BB6B70
  loc_BB6CA4: LitNothing
  loc_BB6CA6: FStAd var_63C 
  loc_BB6CAA: LitI2_Byte &HFF
  loc_BB6CAC: FLdPr Me
  loc_BB6CAF: MemStI2 bGenerado
  loc_BB6CB2: LitI4 0
  loc_BB6CB7: CI2I4
  loc_BB6CB8: FLdPr Me
  loc_BB6CBB: Me.MousePointer = from_stack_1
  loc_BB6CC0: LitVarStr var_98, vbNullString
  loc_BB6CC5: PopAdLdVar
  loc_BB6CC6: FLdPr Me
  loc_BB6CC9: VCallAd Control_ID_statusBar
  loc_BB6CCC: FStAdFunc var_AC
  loc_BB6CCF: FLdPr var_AC
  loc_BB6CD2: LateIdSt
  loc_BB6CD7: FFree1Ad var_AC
  loc_BB6CDA: ExitProcHresult
End Sub

Public Sub GeneraXLS() '97022C
  'Data Table: 460450
  loc_970204: LitI2_Byte &HFF
  loc_970206: FLdPr Me
  loc_970209: MemStI2 global_104
  loc_97020C: LitI2_Byte 0
  loc_97020E: FLdPr Me
  loc_970211: MemStI2 bLogos
  loc_970214: Call GeneraHTML()
  loc_970219: LitI2_Byte &HFF
  loc_97021B: FLdPr Me
  loc_97021E: MemStI2 bLogos
  loc_970221: LitI2_Byte 0
  loc_970223: FLdPr Me
  loc_970226: MemStI2 global_104
  loc_970229: ExitProcHresult
  loc_97022A: CR8R8
End Sub

Public Sub GeneraHTML() 'AB589C
  'Data Table: 460450
  loc_AB5318: FLdRfVar var_88
  loc_AB531B: LitI2_Byte 0
  loc_AB531D: LitI2_Byte &HFF
  loc_AB531F: ImpAdLdI4 MemVar_C3D83C
  loc_AB5322: FLdPr Me
  loc_AB5325: MemLdRfVar from_stack_1.global_80
  loc_AB5328: NewIfNullPr IFileSystem3
  loc_AB532B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AB5330: ILdRf var_88
  loc_AB5333: FLdPr Me
  loc_AB5336: MemStVarAd
  loc_AB533A: FFree1Ad var_88
  loc_AB533D: Call Proc_174_28_A787D8()
  loc_AB5342: LitI4 1
  loc_AB5347: FLdPr Me
  loc_AB534A: MemLdRfVar from_stack_1.global_92
  loc_AB534D: FLdPr Me
  loc_AB5350: MemLdStr global_84
  loc_AB5353: LitI2_Byte 1
  loc_AB5355: FnUBound
  loc_AB5357: ForI4 var_90
  loc_AB535D: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB5362: PopAdLdVar
  loc_AB5363: FLdPr Me
  loc_AB5366: MemLdRfVar from_stack_1.htmFile
  loc_AB5369: LdPrVar
  loc_AB536B: LateMemCall
  loc_AB5371: FLdPr Me
  loc_AB5374: MemLdStr global_92
  loc_AB5377: FLdPr Me
  loc_AB537A: MemLdStr global_84
  loc_AB537D: AryLock
  loc_AB5380: Ary1LdRf
  loc_AB5381: FStR4 var_B8
  loc_AB5384: LitI4 0
  loc_AB5389: LitI4 0
  loc_AB538E: LitI2_Byte 0
  loc_AB5390: LitStr "right"
  loc_AB5393: FMemLdR4 var_B8(0)
  loc_AB5398: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB539D: CVarStr var_C8
  loc_AB53A0: PopAdLdVar
  loc_AB53A1: FLdPr Me
  loc_AB53A4: MemLdRfVar from_stack_1.htmFile
  loc_AB53A7: LdPrVar
  loc_AB53A9: LateMemCall
  loc_AB53AF: FFree1Var var_C8 = ""
  loc_AB53B2: LitI4 0
  loc_AB53B7: LitI4 0
  loc_AB53BC: LitI2_Byte 0
  loc_AB53BE: LitStr "left"
  loc_AB53C1: FMemLdR4 var_B8(4)
  loc_AB53C6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB53CB: CVarStr var_C8
  loc_AB53CE: PopAdLdVar
  loc_AB53CF: FLdPr Me
  loc_AB53D2: MemLdRfVar from_stack_1.htmFile
  loc_AB53D5: LdPrVar
  loc_AB53D7: LateMemCall
  loc_AB53DD: FFree1Var var_C8 = ""
  loc_AB53E0: LitI4 0
  loc_AB53E5: LitI4 0
  loc_AB53EA: LitI2_Byte 0
  loc_AB53EC: LitStr "right"
  loc_AB53EF: FMemLdR4 var_B8(8)
  loc_AB53F4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB53F9: CVarStr var_C8
  loc_AB53FC: PopAdLdVar
  loc_AB53FD: FLdPr Me
  loc_AB5400: MemLdRfVar from_stack_1.htmFile
  loc_AB5403: LdPrVar
  loc_AB5405: LateMemCall
  loc_AB540B: FFree1Var var_C8 = ""
  loc_AB540E: LitI4 0
  loc_AB5413: LitI4 0
  loc_AB5418: LitI2_Byte 0
  loc_AB541A: LitStr "center"
  loc_AB541D: FMemLdR4 var_B8(12)
  loc_AB5422: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB5427: CVarStr var_C8
  loc_AB542A: PopAdLdVar
  loc_AB542B: FLdPr Me
  loc_AB542E: MemLdRfVar from_stack_1.htmFile
  loc_AB5431: LdPrVar
  loc_AB5433: LateMemCall
  loc_AB5439: FFree1Var var_C8 = ""
  loc_AB543C: LitI4 0
  loc_AB5441: LitI4 0
  loc_AB5446: LitI2_Byte 0
  loc_AB5448: LitStr "center"
  loc_AB544B: FMemLdR4 var_B8(16)
  loc_AB5450: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB5455: CVarStr var_C8
  loc_AB5458: PopAdLdVar
  loc_AB5459: FLdPr Me
  loc_AB545C: MemLdRfVar from_stack_1.htmFile
  loc_AB545F: LdPrVar
  loc_AB5461: LateMemCall
  loc_AB5467: FFree1Var var_C8 = ""
  loc_AB546A: LitI4 0
  loc_AB546F: LitI4 0
  loc_AB5474: LitI2_Byte 0
  loc_AB5476: LitStr "center"
  loc_AB5479: FMemLdR4 var_B8(20)
  loc_AB547E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB5483: CVarStr var_C8
  loc_AB5486: PopAdLdVar
  loc_AB5487: FLdPr Me
  loc_AB548A: MemLdRfVar from_stack_1.htmFile
  loc_AB548D: LdPrVar
  loc_AB548F: LateMemCall
  loc_AB5495: FFree1Var var_C8 = ""
  loc_AB5498: LitI4 0
  loc_AB549D: LitI4 0
  loc_AB54A2: LitI2_Byte 0
  loc_AB54A4: LitStr "left"
  loc_AB54A7: FMemLdR4 var_B8(24)
  loc_AB54AC: LitStr " "
  loc_AB54AF: ConcatStr
  loc_AB54B0: FStStrNoPop var_CC
  loc_AB54B3: FMemLdR4 var_B8(28)
  loc_AB54B8: ConcatStr
  loc_AB54B9: FStStrNoPop var_D0
  loc_AB54BC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB54C1: CVarStr var_C8
  loc_AB54C4: PopAdLdVar
  loc_AB54C5: FLdPr Me
  loc_AB54C8: MemLdRfVar from_stack_1.htmFile
  loc_AB54CB: LdPrVar
  loc_AB54CD: LateMemCall
  loc_AB54D3: FFreeStr var_CC = ""
  loc_AB54DA: FFree1Var var_C8 = ""
  loc_AB54DD: LitI4 0
  loc_AB54E2: LitI4 0
  loc_AB54E7: LitI2_Byte 0
  loc_AB54E9: LitStr "left"
  loc_AB54EC: FMemLdR4 var_B8(32)
  loc_AB54F1: LitStr " "
  loc_AB54F4: ConcatStr
  loc_AB54F5: FStStrNoPop var_CC
  loc_AB54F8: FMemLdR4 var_B8(36)
  loc_AB54FD: ConcatStr
  loc_AB54FE: FStStrNoPop var_D0
  loc_AB5501: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB5506: CVarStr var_C8
  loc_AB5509: PopAdLdVar
  loc_AB550A: FLdPr Me
  loc_AB550D: MemLdRfVar from_stack_1.htmFile
  loc_AB5510: LdPrVar
  loc_AB5512: LateMemCall
  loc_AB5518: FFreeStr var_CC = ""
  loc_AB551F: FFree1Var var_C8 = ""
  loc_AB5522: LitI4 0
  loc_AB5527: LitI4 0
  loc_AB552C: LitI2_Byte 0
  loc_AB552E: LitStr "right"
  loc_AB5531: FMemLdR4 var_B8(40)
  loc_AB5536: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB553B: CVarStr var_C8
  loc_AB553E: PopAdLdVar
  loc_AB553F: FLdPr Me
  loc_AB5542: MemLdRfVar from_stack_1.htmFile
  loc_AB5545: LdPrVar
  loc_AB5547: LateMemCall
  loc_AB554D: FFree1Var var_C8 = ""
  loc_AB5550: LitI4 0
  loc_AB5555: LitI4 0
  loc_AB555A: LitI2_Byte 0
  loc_AB555C: LitStr "right"
  loc_AB555F: FMemLdR4 var_B8(44)
  loc_AB5564: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB5569: CVarStr var_C8
  loc_AB556C: PopAdLdVar
  loc_AB556D: FLdPr Me
  loc_AB5570: MemLdRfVar from_stack_1.htmFile
  loc_AB5573: LdPrVar
  loc_AB5575: LateMemCall
  loc_AB557B: FFree1Var var_C8 = ""
  loc_AB557E: LitVarStr var_A0, "  </tr>"
  loc_AB5583: PopAdLdVar
  loc_AB5584: FLdPr Me
  loc_AB5587: MemLdRfVar from_stack_1.htmFile
  loc_AB558A: LdPrVar
  loc_AB558C: LateMemCall
  loc_AB5592: LitI4 0
  loc_AB5597: FStR4 var_B8
  loc_AB559A: AryUnlock
  loc_AB559D: FLdPr Me
  loc_AB55A0: MemLdRfVar from_stack_1.global_92
  loc_AB55A3: NextI4 var_90, loc_AB535D
  loc_AB55A8: LitVarStr var_A0, "  <tr>"
  loc_AB55AD: PopAdLdVar
  loc_AB55AE: FLdPr Me
  loc_AB55B1: MemLdRfVar from_stack_1.htmFile
  loc_AB55B4: LdPrVar
  loc_AB55B6: LateMemCall
  loc_AB55BC: LitVarStr var_A0, "     <td colspan=""9"">&nbsp;</td>"
  loc_AB55C1: PopAdLdVar
  loc_AB55C2: FLdPr Me
  loc_AB55C5: MemLdRfVar from_stack_1.htmFile
  loc_AB55C8: LdPrVar
  loc_AB55CA: LateMemCall
  loc_AB55D0: LitStr "     <td class=""Totales"" align=""right"">"
  loc_AB55D3: FLdPr Me
  loc_AB55D6: MemLdStr global_96
  loc_AB55D9: ConcatStr
  loc_AB55DA: FStStrNoPop var_CC
  loc_AB55DD: LitStr "</td>"
  loc_AB55E0: ConcatStr
  loc_AB55E1: CVarStr var_C8
  loc_AB55E4: PopAdLdVar
  loc_AB55E5: FLdPr Me
  loc_AB55E8: MemLdRfVar from_stack_1.htmFile
  loc_AB55EB: LdPrVar
  loc_AB55ED: LateMemCall
  loc_AB55F3: FFree1Str var_CC
  loc_AB55F6: FFree1Var var_C8 = ""
  loc_AB55F9: LitVarStr var_A0, "  </tr>"
  loc_AB55FE: PopAdLdVar
  loc_AB55FF: FLdPr Me
  loc_AB5602: MemLdRfVar from_stack_1.htmFile
  loc_AB5605: LdPrVar
  loc_AB5607: LateMemCall
  loc_AB560D: LitVarStr var_A0, "</table>"
  loc_AB5612: PopAdLdVar
  loc_AB5613: FLdPr Me
  loc_AB5616: MemLdRfVar from_stack_1.htmFile
  loc_AB5619: LdPrVar
  loc_AB561B: LateMemCall
  loc_AB5621: LitVarStr var_A0, "<br><br>"
  loc_AB5626: PopAdLdVar
  loc_AB5627: FLdPr Me
  loc_AB562A: MemLdRfVar from_stack_1.htmFile
  loc_AB562D: LdPrVar
  loc_AB562F: LateMemCall
  loc_AB5635: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AB563A: PopAdLdVar
  loc_AB563B: FLdPr Me
  loc_AB563E: MemLdRfVar from_stack_1.htmFile
  loc_AB5641: LdPrVar
  loc_AB5643: LateMemCall
  loc_AB5649: LitVarStr var_A0, "  <THEAD>"
  loc_AB564E: PopAdLdVar
  loc_AB564F: FLdPr Me
  loc_AB5652: MemLdRfVar from_stack_1.htmFile
  loc_AB5655: LdPrVar
  loc_AB5657: LateMemCall
  loc_AB565D: LitVarStr var_A0, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_AB5662: PopAdLdVar
  loc_AB5663: FLdPr Me
  loc_AB5666: MemLdRfVar from_stack_1.htmFile
  loc_AB5669: LdPrVar
  loc_AB566B: LateMemCall
  loc_AB5671: LitVarStr var_A0, "    <th colspan=""3"">Resumen por Banco</th>"
  loc_AB5676: PopAdLdVar
  loc_AB5677: FLdPr Me
  loc_AB567A: MemLdRfVar from_stack_1.htmFile
  loc_AB567D: LdPrVar
  loc_AB567F: LateMemCall
  loc_AB5685: LitVarStr var_A0, "  </tr>"
  loc_AB568A: PopAdLdVar
  loc_AB568B: FLdPr Me
  loc_AB568E: MemLdRfVar from_stack_1.htmFile
  loc_AB5691: LdPrVar
  loc_AB5693: LateMemCall
  loc_AB5699: LitVarStr var_A0, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_AB569E: PopAdLdVar
  loc_AB569F: FLdPr Me
  loc_AB56A2: MemLdRfVar from_stack_1.htmFile
  loc_AB56A5: LdPrVar
  loc_AB56A7: LateMemCall
  loc_AB56AD: LitVarStr var_A0, "    <th>Código</th>"
  loc_AB56B2: PopAdLdVar
  loc_AB56B3: FLdPr Me
  loc_AB56B6: MemLdRfVar from_stack_1.htmFile
  loc_AB56B9: LdPrVar
  loc_AB56BB: LateMemCall
  loc_AB56C1: LitVarStr var_A0, "    <th>Banco</th>"
  loc_AB56C6: PopAdLdVar
  loc_AB56C7: FLdPr Me
  loc_AB56CA: MemLdRfVar from_stack_1.htmFile
  loc_AB56CD: LdPrVar
  loc_AB56CF: LateMemCall
  loc_AB56D5: LitVarStr var_A0, "    <th>Cheques a cargo</th>"
  loc_AB56DA: PopAdLdVar
  loc_AB56DB: FLdPr Me
  loc_AB56DE: MemLdRfVar from_stack_1.htmFile
  loc_AB56E1: LdPrVar
  loc_AB56E3: LateMemCall
  loc_AB56E9: LitVarStr var_A0, "  </tr>"
  loc_AB56EE: PopAdLdVar
  loc_AB56EF: FLdPr Me
  loc_AB56F2: MemLdRfVar from_stack_1.htmFile
  loc_AB56F5: LdPrVar
  loc_AB56F7: LateMemCall
  loc_AB56FD: LitVarStr var_A0, "  </THEAD>"
  loc_AB5702: PopAdLdVar
  loc_AB5703: FLdPr Me
  loc_AB5706: MemLdRfVar from_stack_1.htmFile
  loc_AB5709: LdPrVar
  loc_AB570B: LateMemCall
  loc_AB5711: LitI4 1
  loc_AB5716: FLdPr Me
  loc_AB5719: MemLdRfVar from_stack_1.global_92
  loc_AB571C: FLdPr Me
  loc_AB571F: MemLdStr global_88
  loc_AB5722: LitI2_Byte 1
  loc_AB5724: FnUBound
  loc_AB5726: ForI4 var_D8
  loc_AB572C: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB5731: PopAdLdVar
  loc_AB5732: FLdPr Me
  loc_AB5735: MemLdRfVar from_stack_1.htmFile
  loc_AB5738: LdPrVar
  loc_AB573A: LateMemCall
  loc_AB5740: FLdPr Me
  loc_AB5743: MemLdStr global_92
  loc_AB5746: FLdPr Me
  loc_AB5749: MemLdStr global_88
  loc_AB574C: AryLock
  loc_AB574F: Ary1LdRf
  loc_AB5750: FStR4 var_E0
  loc_AB5753: LitI4 0
  loc_AB5758: LitI4 0
  loc_AB575D: LitI2_Byte 0
  loc_AB575F: LitStr "right"
  loc_AB5762: FMemLdR4 var_E0(32)
  loc_AB5767: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB576C: CVarStr var_C8
  loc_AB576F: PopAdLdVar
  loc_AB5770: FLdPr Me
  loc_AB5773: MemLdRfVar from_stack_1.htmFile
  loc_AB5776: LdPrVar
  loc_AB5778: LateMemCall
  loc_AB577E: FFree1Var var_C8 = ""
  loc_AB5781: LitI4 0
  loc_AB5786: LitI4 0
  loc_AB578B: LitI2_Byte 0
  loc_AB578D: LitStr "left"
  loc_AB5790: FMemLdR4 var_E0(36)
  loc_AB5795: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB579A: CVarStr var_C8
  loc_AB579D: PopAdLdVar
  loc_AB579E: FLdPr Me
  loc_AB57A1: MemLdRfVar from_stack_1.htmFile
  loc_AB57A4: LdPrVar
  loc_AB57A6: LateMemCall
  loc_AB57AC: FFree1Var var_C8 = ""
  loc_AB57AF: LitI4 0
  loc_AB57B4: LitI4 0
  loc_AB57B9: LitI2_Byte 0
  loc_AB57BB: LitStr "right"
  loc_AB57BE: FMemLdR4 var_E0(44)
  loc_AB57C3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB57C8: CVarStr var_C8
  loc_AB57CB: PopAdLdVar
  loc_AB57CC: FLdPr Me
  loc_AB57CF: MemLdRfVar from_stack_1.htmFile
  loc_AB57D2: LdPrVar
  loc_AB57D4: LateMemCall
  loc_AB57DA: FFree1Var var_C8 = ""
  loc_AB57DD: LitVarStr var_A0, "  </tr>"
  loc_AB57E2: PopAdLdVar
  loc_AB57E3: FLdPr Me
  loc_AB57E6: MemLdRfVar from_stack_1.htmFile
  loc_AB57E9: LdPrVar
  loc_AB57EB: LateMemCall
  loc_AB57F1: LitI4 0
  loc_AB57F6: FStR4 var_E0
  loc_AB57F9: AryUnlock
  loc_AB57FC: FLdPr Me
  loc_AB57FF: MemLdRfVar from_stack_1.global_92
  loc_AB5802: NextI4 var_D8, loc_AB572C
  loc_AB5807: LitVarStr var_A0, "  <tr>"
  loc_AB580C: PopAdLdVar
  loc_AB580D: FLdPr Me
  loc_AB5810: MemLdRfVar from_stack_1.htmFile
  loc_AB5813: LdPrVar
  loc_AB5815: LateMemCall
  loc_AB581B: LitVarStr var_A0, "     <td colspan=""2"">&nbsp;</td>"
  loc_AB5820: PopAdLdVar
  loc_AB5821: FLdPr Me
  loc_AB5824: MemLdRfVar from_stack_1.htmFile
  loc_AB5827: LdPrVar
  loc_AB5829: LateMemCall
  loc_AB582F: LitStr "     <td class=""Totales"" align=""right"">"
  loc_AB5832: FLdPr Me
  loc_AB5835: MemLdStr global_100
  loc_AB5838: ConcatStr
  loc_AB5839: FStStrNoPop var_CC
  loc_AB583C: LitStr "</td>"
  loc_AB583F: ConcatStr
  loc_AB5840: CVarStr var_C8
  loc_AB5843: PopAdLdVar
  loc_AB5844: FLdPr Me
  loc_AB5847: MemLdRfVar from_stack_1.htmFile
  loc_AB584A: LdPrVar
  loc_AB584C: LateMemCall
  loc_AB5852: FFree1Str var_CC
  loc_AB5855: FFree1Var var_C8 = ""
  loc_AB5858: LitVarStr var_A0, "  </tr>"
  loc_AB585D: PopAdLdVar
  loc_AB585E: FLdPr Me
  loc_AB5861: MemLdRfVar from_stack_1.htmFile
  loc_AB5864: LdPrVar
  loc_AB5866: LateMemCall
  loc_AB586C: LitVarStr var_A0, "</table>"
  loc_AB5871: PopAdLdVar
  loc_AB5872: FLdPr Me
  loc_AB5875: MemLdRfVar from_stack_1.htmFile
  loc_AB5878: LdPrVar
  loc_AB587A: LateMemCall
  loc_AB5880: Call Proc_174_29_9817B0()
  loc_AB5885: FLdPr Me
  loc_AB5888: MemLdRfVar from_stack_1.htmFile
  loc_AB588B: LdPrVar
  loc_AB588D: LateMemCall
  loc_AB5893: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AB5898: ExitProcHresult
End Sub

Private Function Proc_174_28_A787D8() 'A787D8
  'Data Table: 460450
  loc_A78410: LitVarStr var_94, "<html>"
  loc_A78415: PopAdLdVar
  loc_A78416: FLdPr Me
  loc_A78419: MemLdRfVar from_stack_1.htmFile
  loc_A7841C: LdPrVar
  loc_A7841E: LateMemCall
  loc_A78424: LitVarStr var_94, "<head>"
  loc_A78429: PopAdLdVar
  loc_A7842A: FLdPr Me
  loc_A7842D: MemLdRfVar from_stack_1.htmFile
  loc_A78430: LdPrVar
  loc_A78432: LateMemCall
  loc_A78438: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A7843D: PopAdLdVar
  loc_A7843E: FLdPr Me
  loc_A78441: MemLdRfVar from_stack_1.htmFile
  loc_A78444: LdPrVar
  loc_A78446: LateMemCall
  loc_A7844C: LitStr "<title>"
  loc_A7844F: FLdRfVar var_A8
  loc_A78452: FLdPr Me
  loc_A78455:  = Me.Caption
  loc_A7845A: ILdRf var_A8
  loc_A7845D: ConcatStr
  loc_A7845E: FStStrNoPop var_AC
  loc_A78461: LitStr "</title>"
  loc_A78464: ConcatStr
  loc_A78465: CVarStr var_BC
  loc_A78468: PopAdLdVar
  loc_A78469: FLdPr Me
  loc_A7846C: MemLdRfVar from_stack_1.htmFile
  loc_A7846F: LdPrVar
  loc_A78471: LateMemCall
  loc_A78477: FFreeStr var_A8 = ""
  loc_A7847E: FFree1Var var_BC = ""
  loc_A78481: LitStr vbNullString
  loc_A78484: ILdRf Me
  loc_A78487: CastAd
  loc_A7848A: FStAdFunc var_C0
  loc_A7848D: FLdRfVar var_C0
  loc_A78490: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A78495: FFree1Ad var_C0
  loc_A78498: LitI4 0
  loc_A7849D: FStStrCopy var_AC
  loc_A784A0: FLdRfVar var_AC
  loc_A784A3: LitI4 0
  loc_A784A8: FStStrCopy var_A8
  loc_A784AB: FLdRfVar var_A8
  loc_A784AE: LitI2_Byte &HFF
  loc_A784B0: PopTmpLdAd2 var_C2
  loc_A784B3: FLdPr Me
  loc_A784B6: MemLdRfVar from_stack_1.htmFile
  loc_A784B9: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A784BE: FFreeStr var_A8 = ""
  loc_A784C5: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A784CA: PopAdLdVar
  loc_A784CB: FLdPr Me
  loc_A784CE: MemLdRfVar from_stack_1.htmFile
  loc_A784D1: LdPrVar
  loc_A784D3: LateMemCall
  loc_A784D9: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A784DE: PopAdLdVar
  loc_A784DF: FLdPr Me
  loc_A784E2: MemLdRfVar from_stack_1.htmFile
  loc_A784E5: LdPrVar
  loc_A784E7: LateMemCall
  loc_A784ED: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A784F2: PopAdLdVar
  loc_A784F3: FLdPr Me
  loc_A784F6: MemLdRfVar from_stack_1.htmFile
  loc_A784F9: LdPrVar
  loc_A784FB: LateMemCall
  loc_A78501: FLdPr Me
  loc_A78504: MemLdI2 bLogos
  loc_A78507: BranchF loc_A7851E
  loc_A7850A: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A7850F: PopAdLdVar
  loc_A78510: FLdPr Me
  loc_A78513: MemLdRfVar from_stack_1.htmFile
  loc_A78516: LdPrVar
  loc_A78518: LateMemCall
  loc_A7851E: LitVarStr var_A4, "    <br><br>"
  loc_A78523: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A78528: FStVarCopyObj var_BC
  loc_A7852B: FLdRfVar var_BC
  loc_A7852E: FLdRfVar var_D4
  loc_A78531: ImpAdCallFPR4  = Ucase()
  loc_A78536: FLdRfVar var_D4
  loc_A78539: ConcatVar var_E4
  loc_A7853D: LitVarStr var_F4, "</p>"
  loc_A78542: ConcatVar var_104
  loc_A78546: PopAdLdVar
  loc_A78547: FLdPr Me
  loc_A7854A: MemLdRfVar from_stack_1.htmFile
  loc_A7854D: LdPrVar
  loc_A7854F: LateMemCall
  loc_A78555: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A78560: LitStr "    <p>"
  loc_A78563: FLdRfVar var_A8
  loc_A78566: FLdPr Me
  loc_A78569:  = Me.Caption
  loc_A7856E: ILdRf var_A8
  loc_A78571: ConcatStr
  loc_A78572: FStStrNoPop var_AC
  loc_A78575: LitStr "</p></th>"
  loc_A78578: ConcatStr
  loc_A78579: CVarStr var_BC
  loc_A7857C: PopAdLdVar
  loc_A7857D: FLdPr Me
  loc_A78580: MemLdRfVar from_stack_1.htmFile
  loc_A78583: LdPrVar
  loc_A78585: LateMemCall
  loc_A7858B: FFreeStr var_A8 = ""
  loc_A78592: FFree1Var var_BC = ""
  loc_A78595: LitVarStr var_94, "  </tr>"
  loc_A7859A: PopAdLdVar
  loc_A7859B: FLdPr Me
  loc_A7859E: MemLdRfVar from_stack_1.htmFile
  loc_A785A1: LdPrVar
  loc_A785A3: LateMemCall
  loc_A785A9: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A785AE: PopAdLdVar
  loc_A785AF: FLdPr Me
  loc_A785B2: MemLdRfVar from_stack_1.htmFile
  loc_A785B5: LdPrVar
  loc_A785B7: LateMemCall
  loc_A785BD: LitVarStr var_94, "  <tr align=""left"">"
  loc_A785C2: PopAdLdVar
  loc_A785C3: FLdPr Me
  loc_A785C6: MemLdRfVar from_stack_1.htmFile
  loc_A785C9: LdPrVar
  loc_A785CB: LateMemCall
  loc_A785D1: LitStr "    <th>Desde: <span class=""Normal"">"
  loc_A785D4: FLdPr Me
  loc_A785D7: VCallAd Control_ID_mskDesde
  loc_A785DA: FStAdFunc var_C0
  loc_A785DD: FLdPr var_C0
  loc_A785E0: LateIdLdVar var_BC DispID_15 0
  loc_A785E7: CStrVarTmp
  loc_A785E8: FStStrNoPop var_A8
  loc_A785EB: ConcatStr
  loc_A785EC: FStStrNoPop var_AC
  loc_A785EF: LitStr "</span> - Hasta: <span class=""Normal"">"
  loc_A785F2: ConcatStr
  loc_A785F3: FStStrNoPop var_11C
  loc_A785F6: FLdPr Me
  loc_A785F9: VCallAd Control_ID_mskHasta
  loc_A785FC: FStAdFunc var_118
  loc_A785FF: FLdPr var_118
  loc_A78602: LateIdLdVar var_D4 DispID_15 0
  loc_A78609: CStrVarTmp
  loc_A7860A: FStStrNoPop var_120
  loc_A7860D: ConcatStr
  loc_A7860E: FStStrNoPop var_124
  loc_A78611: LitStr "</span></th>"
  loc_A78614: ConcatStr
  loc_A78615: CVarStr var_E4
  loc_A78618: PopAdLdVar
  loc_A78619: FLdPr Me
  loc_A7861C: MemLdRfVar from_stack_1.htmFile
  loc_A7861F: LdPrVar
  loc_A78621: LateMemCall
  loc_A78627: FFreeStr var_A8 = "": var_AC = "": var_11C = "": var_120 = ""
  loc_A78634: FFreeAd var_C0 = ""
  loc_A7863B: FFreeVar var_BC = "": var_D4 = ""
  loc_A78644: LitVarStr var_94, "  </tr>"
  loc_A78649: PopAdLdVar
  loc_A7864A: FLdPr Me
  loc_A7864D: MemLdRfVar from_stack_1.htmFile
  loc_A78650: LdPrVar
  loc_A78652: LateMemCall
  loc_A78658: LitVarStr var_94, "</table>"
  loc_A7865D: PopAdLdVar
  loc_A7865E: FLdPr Me
  loc_A78661: MemLdRfVar from_stack_1.htmFile
  loc_A78664: LdPrVar
  loc_A78666: LateMemCall
  loc_A7866C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A78671: PopAdLdVar
  loc_A78672: FLdPr Me
  loc_A78675: MemLdRfVar from_stack_1.htmFile
  loc_A78678: LdPrVar
  loc_A7867A: LateMemCall
  loc_A78680: LitVarStr var_94, "  <THEAD>"
  loc_A78685: PopAdLdVar
  loc_A78686: FLdPr Me
  loc_A78689: MemLdRfVar from_stack_1.htmFile
  loc_A7868C: LdPrVar
  loc_A7868E: LateMemCall
  loc_A78694: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A78699: PopAdLdVar
  loc_A7869A: FLdPr Me
  loc_A7869D: MemLdRfVar from_stack_1.htmFile
  loc_A786A0: LdPrVar
  loc_A786A2: LateMemCall
  loc_A786A8: LitVarStr var_94, "    <th rowspan=""2"">Orden de<br>pago N&ordm;</th>"
  loc_A786AD: PopAdLdVar
  loc_A786AE: FLdPr Me
  loc_A786B1: MemLdRfVar from_stack_1.htmFile
  loc_A786B4: LdPrVar
  loc_A786B6: LateMemCall
  loc_A786BC: LitVarStr var_94, "    <th rowspan=""2"">Expediente</th>"
  loc_A786C1: PopAdLdVar
  loc_A786C2: FLdPr Me
  loc_A786C5: MemLdRfVar from_stack_1.htmFile
  loc_A786C8: LdPrVar
  loc_A786CA: LateMemCall
  loc_A786D0: LitVarStr var_94, "    <th rowspan=""2"">Liquidación</th>"
  loc_A786D5: PopAdLdVar
  loc_A786D6: FLdPr Me
  loc_A786D9: MemLdRfVar from_stack_1.htmFile
  loc_A786DC: LdPrVar
  loc_A786DE: LateMemCall
  loc_A786E4: LitVarStr var_94, "    <th colspan=""3"">Fecha de</th>"
  loc_A786E9: PopAdLdVar
  loc_A786EA: FLdPr Me
  loc_A786ED: MemLdRfVar from_stack_1.htmFile
  loc_A786F0: LdPrVar
  loc_A786F2: LateMemCall
  loc_A786F8: LitVarStr var_94, "    <th rowspan=""2"">Proveedor</th>"
  loc_A786FD: PopAdLdVar
  loc_A786FE: FLdPr Me
  loc_A78701: MemLdRfVar from_stack_1.htmFile
  loc_A78704: LdPrVar
  loc_A78706: LateMemCall
  loc_A7870C: LitVarStr var_94, "    <th rowspan=""2"">Banco</th>"
  loc_A78711: PopAdLdVar
  loc_A78712: FLdPr Me
  loc_A78715: MemLdRfVar from_stack_1.htmFile
  loc_A78718: LdPrVar
  loc_A7871A: LateMemCall
  loc_A78720: LitVarStr var_94, "    <th rowspan=""2"">Cheque N&ordm;</th>"
  loc_A78725: PopAdLdVar
  loc_A78726: FLdPr Me
  loc_A78729: MemLdRfVar from_stack_1.htmFile
  loc_A7872C: LdPrVar
  loc_A7872E: LateMemCall
  loc_A78734: LitVarStr var_94, "    <th rowspan=""2"">Importe</th>"
  loc_A78739: PopAdLdVar
  loc_A7873A: FLdPr Me
  loc_A7873D: MemLdRfVar from_stack_1.htmFile
  loc_A78740: LdPrVar
  loc_A78742: LateMemCall
  loc_A78748: LitVarStr var_94, "  </tr>"
  loc_A7874D: PopAdLdVar
  loc_A7874E: FLdPr Me
  loc_A78751: MemLdRfVar from_stack_1.htmFile
  loc_A78754: LdPrVar
  loc_A78756: LateMemCall
  loc_A7875C: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A78761: PopAdLdVar
  loc_A78762: FLdPr Me
  loc_A78765: MemLdRfVar from_stack_1.htmFile
  loc_A78768: LdPrVar
  loc_A7876A: LateMemCall
  loc_A78770: LitVarStr var_94, "    <th>Emisión</th>"
  loc_A78775: PopAdLdVar
  loc_A78776: FLdPr Me
  loc_A78779: MemLdRfVar from_stack_1.htmFile
  loc_A7877C: LdPrVar
  loc_A7877E: LateMemCall
  loc_A78784: LitVarStr var_94, "    <th>Remisión</th>"
  loc_A78789: PopAdLdVar
  loc_A7878A: FLdPr Me
  loc_A7878D: MemLdRfVar from_stack_1.htmFile
  loc_A78790: LdPrVar
  loc_A78792: LateMemCall
  loc_A78798: LitVarStr var_94, "    <th>Pago</th>"
  loc_A7879D: PopAdLdVar
  loc_A7879E: FLdPr Me
  loc_A787A1: MemLdRfVar from_stack_1.htmFile
  loc_A787A4: LdPrVar
  loc_A787A6: LateMemCall
  loc_A787AC: LitVarStr var_94, "  </tr>"
  loc_A787B1: PopAdLdVar
  loc_A787B2: FLdPr Me
  loc_A787B5: MemLdRfVar from_stack_1.htmFile
  loc_A787B8: LdPrVar
  loc_A787BA: LateMemCall
  loc_A787C0: LitVarStr var_94, "  </THEAD>"
  loc_A787C5: PopAdLdVar
  loc_A787C6: FLdPr Me
  loc_A787C9: MemLdRfVar from_stack_1.htmFile
  loc_A787CC: LdPrVar
  loc_A787CE: LateMemCall
  loc_A787D4: ExitProcHresult
End Function

Private Function Proc_174_29_9817B0() '9817B0
  'Data Table: 460450
  loc_981770: LitVarStr var_94, "</table>"
  loc_981775: PopAdLdVar
  loc_981776: FLdPr Me
  loc_981779: MemLdRfVar from_stack_1.htmFile
  loc_98177C: LdPrVar
  loc_98177E: LateMemCall
  loc_981784: LitVarStr var_94, "</body>"
  loc_981789: PopAdLdVar
  loc_98178A: FLdPr Me
  loc_98178D: MemLdRfVar from_stack_1.htmFile
  loc_981790: LdPrVar
  loc_981792: LateMemCall
  loc_981798: LitVarStr var_94, "</html>"
  loc_98179D: PopAdLdVar
  loc_98179E: FLdPr Me
  loc_9817A1: MemLdRfVar from_stack_1.htmFile
  loc_9817A4: LdPrVar
  loc_9817A6: LateMemCall
  loc_9817AC: ExitProcHresult
End Function
