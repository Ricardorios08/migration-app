VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{65E121D4-0C60-11D2-A9FC0000F8754DA1}#2.0#0"; "C:\WINDOWS\SysWOW64\mschrt20.ocx"
Begin VB.Form rptAforosyPagos
  Caption = "Aforos y Pagos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptAforosyPagos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9756
  ClientHeight = 4032
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3780
    Width = 9750
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptAforosyPagos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 2520
    Width = 855
    Height = 735
    TabIndex = 15
    Cancel = -1  'True
    Picture = "rptAforosyPagos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptAforosyPagos.frx":0B9C
    Left = 8760
    Top = 600
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4200
    Top = 2400
    Width = 1815
    Height = 1215
    TabIndex = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 13
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 0
    Top = 2400
    Width = 4095
    Height = 1215
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 11
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 10
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9615
    Height = 2175
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6720
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSMask.MaskEdBox FealCtctDesdeMsk
      Left = 2040
      Top = 600
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptAforosyPagos.frx":0C00
    End
    Begin MSMask.MaskEdBox FealCtctHastaMsk
      Left = 2040
      Top = 1080
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptAforosyPagos.frx":0CB0
    End
    Begin MSMask.MaskEdBox ActiConcMsk
      Left = 2040
      Top = 1560
      Width = 1575
      Height = 360
      TabIndex = 7
      OleObjectBlob = "rptAforosyPagos.frx":0D60
    End
    Begin VB.Label Label8
      Caption = "Cuenta Contable:"
      Left = 120
      Top = 1560
      Width = 1860
      Height = 300
      TabIndex = 6
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaActiLbl
      ForeColor = &HFF0000&
      Left = 3720
      Top = 1560
      Width = 5775
      Height = 360
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1260
      Top = 1080
      Width = 705
      Height = 300
      TabIndex = 4
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 1200
      Top = 600
      Width = 765
      Height = 300
      TabIndex = 1
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8160
    Top = 2640
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptAforosyPagos.frx":0DFC
  End
  Begin MSChart20Lib.MSChart Graf1
    Left = 8520
    Top = 120
    Width = 7695
    Height = 7095
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptAforosyPagos.frx":0EB0
  End
  Begin VB.Image img1
    Left = 9600
    Top = 0
    Width = 735
    Height = 3135
    Visible = 0   'False
  End
End

Attribute VB_Name = "rptAforosyPagos"

Public bGenerado As Boolean

Private Type UDT_1_005618EC
  bStruc(56) As Byte ' String fields: 12
End Type


Private Sub cmdPdf_Click() '9E109C
  'Data Table: 4AB638
  loc_9E1080: LitI2_Byte 0
  loc_9E1082: PopTmpLdAd2 var_8A
  loc_9E1085: ILdRf Me
  loc_9E1088: CastAd
  loc_9E108B: FStAdFunc var_88
  loc_9E108E: FLdRfVar var_88
  loc_9E1091: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E1096: FFree1Ad var_88
  loc_9E1099: ExitProcHresult
End Sub

Private Sub FealCtctDesdeMsk_UnknownEvent_0 '9BB6E8
  'Data Table: 4AB638
  loc_9BB6D4: FLdPr Me
  loc_9BB6D7: VCallAd Control_ID_FealCtctDesdeMsk
  loc_9BB6DA: CVarAd
  loc_9BB6DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB6E3: FFree1Var var_94 = ""
  loc_9BB6E6: ExitProcHresult
  loc_9BB6E7: SetLastSystemError
End Sub

Private Function FealCtctDesdeMsk_UnknownEvent_8(arg_C) 'A63840
  'Data Table: 4AB638
  loc_A637E4: FLdPr Me
  loc_A637E7: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A637EA: FStAdFunc var_88
  loc_A637ED: FLdPr var_88
  loc_A637F0: LateIdLdVar var_98 DispID_15 0
  loc_A637F7: CStrVarTmp
  loc_A637F8: FStStrNoPop var_9C
  loc_A637FB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A63800: FStStrNoPop var_A0
  loc_A63803: FLdPr Me
  loc_A63806: MemStStrCopy
  loc_A6380A: FFreeStr var_9C = ""
  loc_A63811: FFree1Ad var_88
  loc_A63814: FFree1Var var_98 = ""
  loc_A63817: FLdPr Me
  loc_A6381A: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A6381D: FStAdFuncNoPop
  loc_A63820: CastAd
  loc_A63823: FStAdFunc var_A4
  loc_A63826: FLdRfVar var_A4
  loc_A63829: FLdPr Me
  loc_A6382C: MemLdStr global_144
  loc_A6382F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63834: IStI2 arg_C
  loc_A63837: FFreeAd var_88 = ""
  loc_A6383E: ExitProcHresult
End Function

Private Sub FealCtctDesdeMsk_KeyPress(KeyAscii As Integer) 'A14FEC
  'Data Table: 4AB638
  loc_A14FA8: ILdI2 KeyAscii
  loc_A14FAB: CI4UI1
  loc_A14FAC: LitI4 &H20
  loc_A14FB1: EqI4
  loc_A14FB2: BranchF loc_A14FE8
  loc_A14FB5: LitVar_Missing var_A4
  loc_A14FB8: PopAdLdVar
  loc_A14FB9: LitVarI4
  loc_A14FC1: PopAdLdVar
  loc_A14FC2: ImpAdLdRf MemVar_D930A4
  loc_A14FC5: NewIfNullPr frmCalendario
  loc_A14FC8: frmCalendario.Show from_stack_1, from_stack_2
  loc_A14FCD: ImpAdLdRf MemVar_D93028
  loc_A14FD0: CDargRef
  loc_A14FD4: FLdPr Me
  loc_A14FD7: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A14FDA: FStAdFunc var_A8
  loc_A14FDD: FLdPr var_A8
  loc_A14FE0: LateIdSt
  loc_A14FE5: FFree1Ad var_A8
  loc_A14FE8: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A041EC
  'Data Table: 4AB638
  loc_A041BC: LitVarStr var_94, "Cerrando..."
  loc_A041C1: PopAdLdVar
  loc_A041C2: FLdPr Me
  loc_A041C5: VCallAd Control_ID_statusBar
  loc_A041C8: FStAdFunc var_A8
  loc_A041CB: FLdPr var_A8
  loc_A041CE: LateIdSt
  loc_A041D3: FFree1Ad var_A8
  loc_A041D6: ILdRf Me
  loc_A041D9: FStAdNoPop
  loc_A041DD: ImpAdLdRf MemVar_D9C5D8
  loc_A041E0: NewIfNullPr Global
  loc_A041E3: Global.Unload from_stack_1
  loc_A041E8: FFree1Ad var_A8
  loc_A041EB: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A410B8
  'Data Table: 4AB638
  loc_A41064: LitI2_Byte 0
  loc_A41066: ILdRf Me
  loc_A41069: CastAd
  loc_A4106C: FStAdFunc var_88
  loc_A4106F: FLdRfVar var_88
  loc_A41072: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A41077: FFree1Ad var_88
  loc_A4107A: FLdRfVar var_8A
  loc_A4107D: FLdPr Me
  loc_A41080: VCallAd Control_ID_cmdPredeterminada
  loc_A41083: FStAdFunc var_88
  loc_A41086: FLdPr var_88
  loc_A41089:  = Me.Enabled
  loc_A4108E: FLdI2 var_8A
  loc_A41091: NotI4
  loc_A41092: FFree1Ad var_88
  loc_A41095: BranchF loc_A410A0
  loc_A41098: ImpAdCallFPR4 DoEvents()
  loc_A4109D: Branch loc_A4107A
  loc_A410A0: ILdRf Me
  loc_A410A3: FStAdNoPop
  loc_A410A7: ImpAdLdRf MemVar_D9C5D8
  loc_A410AA: NewIfNullPr Global
  loc_A410AD: Global.Unload from_stack_1
  loc_A410B2: FFree1Ad var_88
  loc_A410B5: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AEC054
  'Data Table: 4AB638
  loc_AEBEEC: LitI2_Byte 0
  loc_AEBEEE: FLdPr Me
  loc_AEBEF1: MemStI2 bGenerado
  loc_AEBEF4: LitI2_Byte 0
  loc_AEBEF6: ILdRf Me
  loc_AEBEF9: CastAd
  loc_AEBEFC: FStAdFunc var_88
  loc_AEBEFF: FLdRfVar var_88
  loc_AEBF02: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AEBF07: FFree1Ad var_88
  loc_AEBF0A: LitI2_Byte 0
  loc_AEBF0C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AEBF11: CVarDate var_A8
  loc_AEBF15: FLdRfVar var_B8
  loc_AEBF18: ImpAdCallFPR4  = Year()
  loc_AEBF1D: LitI2_Byte 0
  loc_AEBF1F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AEBF24: CVarDate var_D8
  loc_AEBF28: FLdRfVar var_E8
  loc_AEBF2B: ImpAdCallFPR4  = Month()
  loc_AEBF30: LitI2_Byte 1
  loc_AEBF32: FLdRfVar var_E8
  loc_AEBF35: CI2Var
  loc_AEBF36: FLdRfVar var_B8
  loc_AEBF39: CI2Var
  loc_AEBF3A: FLdRfVar var_F8
  loc_AEBF3D: ImpAdCallFPR4  = DateSerial(, , )
  loc_AEBF42: FLdRfVar var_F8
  loc_AEBF45: CStrVarTmp
  loc_AEBF46: CVarStr var_108
  loc_AEBF49: PopAdLdVar
  loc_AEBF4A: FLdPr Me
  loc_AEBF4D: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AEBF50: FStAdFunc var_88
  loc_AEBF53: FLdPr var_88
  loc_AEBF56: LateIdSt
  loc_AEBF5B: FFree1Ad var_88
  loc_AEBF5E: FFreeVar var_A8 = "": var_D8 = "": var_B8 = "": var_E8 = "": var_F8 = ""
  loc_AEBF6D: FLdPr Me
  loc_AEBF70: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AEBF73: FStAdFunc var_88
  loc_AEBF76: FLdPr var_88
  loc_AEBF79: LateIdLdVar var_A8 DispID_15 0
  loc_AEBF80: CStrVarTmp
  loc_AEBF81: CVarStr var_B8
  loc_AEBF84: FLdRfVar var_D8
  loc_AEBF87: ImpAdCallFPR4  = Year()
  loc_AEBF8C: FLdPr Me
  loc_AEBF8F: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AEBF92: FStAdFunc var_11C
  loc_AEBF95: FLdPr var_11C
  loc_AEBF98: LateIdLdVar var_E8 DispID_15 0
  loc_AEBF9F: CStrVarTmp
  loc_AEBFA0: CVarStr var_F8
  loc_AEBFA3: FLdRfVar var_108
  loc_AEBFA6: ImpAdCallFPR4  = Month()
  loc_AEBFAB: LitI2_Byte 1
  loc_AEBFAD: FLdRfVar var_108
  loc_AEBFB0: LitVarI2 var_98, 1
  loc_AEBFB5: AddVar var_12C
  loc_AEBFB9: CI2Var
  loc_AEBFBA: FLdRfVar var_D8
  loc_AEBFBD: CI2Var
  loc_AEBFBE: FLdRfVar var_13C
  loc_AEBFC1: ImpAdCallFPR4  = DateSerial(, , )
  loc_AEBFC6: FLdRfVar var_13C
  loc_AEBFC9: LitVarI2 var_C8, 1
  loc_AEBFCE: SubVar var_14C
  loc_AEBFD2: CStrVarTmp
  loc_AEBFD3: CVarStr var_15C
  loc_AEBFD6: PopAdLdVar
  loc_AEBFD7: FLdPr Me
  loc_AEBFDA: VCallAd Control_ID_FealCtctHastaMsk
  loc_AEBFDD: FStAdFunc var_160
  loc_AEBFE0: FLdPr var_160
  loc_AEBFE3: LateIdSt
  loc_AEBFE8: FFreeAd var_88 = "": var_11C = ""
  loc_AEBFF1: FFreeVar var_A8 = "": var_B8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_D8 = "": var_12C = "": var_13C = ""
  loc_AEC006: LitVarStr var_98, vbNullString
  loc_AEC00B: PopAdLdVar
  loc_AEC00C: FLdPr Me
  loc_AEC00F: VCallAd Control_ID_ActiConcMsk
  loc_AEC012: FStAdFunc var_88
  loc_AEC015: FLdPr var_88
  loc_AEC018: LateIdSt
  loc_AEC01D: FFree1Ad var_88
  loc_AEC020: LitStr vbNullString
  loc_AEC023: FLdPr Me
  loc_AEC026: VCallAd Control_ID_DetaActiLbl
  loc_AEC029: FStAdFunc var_88
  loc_AEC02C: FLdPr var_88
  loc_AEC02F: Me.Caption = from_stack_1
  loc_AEC034: FFree1Ad var_88
  loc_AEC037: Call HabilitarCriterio()
  loc_AEC03C: ILdRf Me
  loc_AEC03F: CastAd
  loc_AEC042: FStAdFunc var_88
  loc_AEC045: FLdRfVar var_88
  loc_AEC048: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AEC04D: FFree1Ad var_88
  loc_AEC050: ExitProcHresult
  loc_AEC051: CVarI2 arg_2AFF
End Sub

Private Sub cmdPrevia_Click() '9CC7CC
  'Data Table: 4AB638
  loc_9CC7B4: ILdRf Me
  loc_9CC7B7: CastAd
  loc_9CC7BA: FStAdFunc var_88
  loc_9CC7BD: FLdRfVar var_88
  loc_9CC7C0: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CC7C5: FFree1Ad var_88
  loc_9CC7C8: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A15328
  'Data Table: 4AB638
  loc_A152F0: FLdPr Me
  loc_A152F3: VCallAd Control_ID_statusBar
  loc_A152F6: FStAdFunc var_88
  loc_A152F9: FLdPr var_88
  loc_A152FC: LateIdLdVar var_98 DispID_1 0
  loc_A15303: CStrVarTmp
  loc_A15304: CVarStr var_A8
  loc_A15307: PopAdLdVar
  loc_A15308: FLdPr Me
  loc_A1530B: VCallAd Control_ID_statusBar
  loc_A1530E: FStAdFunc var_BC
  loc_A15311: FLdPr var_BC
  loc_A15314: LateIdSt
  loc_A15319: FFreeAd var_88 = ""
  loc_A15320: FFreeVar var_98 = ""
  loc_A15327: ExitProcHresult
End Sub

Private Sub ActiConcMsk_UnknownEvent_0 '9BBD18
  'Data Table: 4AB638
  loc_9BBD04: FLdPr Me
  loc_9BBD07: VCallAd Control_ID_ActiConcMsk
  loc_9BBD0A: CVarAd
  loc_9BBD0E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBD13: FFree1Var var_94 = ""
  loc_9BBD16: ExitProcHresult
End Sub

Private Sub ActiConcMsk_UnknownEvent_8 'AE9024
  'Data Table: 4AB638
  loc_AE8EC4: FLdPr Me
  loc_AE8EC7: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AE8ECA: FStAdFunc var_88
  loc_AE8ECD: FLdPr var_88
  loc_AE8ED0: LateIdLdVar var_98 DispID_15 0
  loc_AE8ED7: CStrVarTmp
  loc_AE8ED8: CVarStr var_A8
  loc_AE8EDB: FLdRfVar var_B8
  loc_AE8EDE: ImpAdCallFPR4  = Year()
  loc_AE8EE3: FLdPr Me
  loc_AE8EE6: VCallAd Control_ID_ActiConcMsk
  loc_AE8EE9: FStAdFunc var_BC
  loc_AE8EEC: FLdPr var_BC
  loc_AE8EEF: LateIdLdVar var_CC DispID_22 0
  loc_AE8EF6: PopAd
  loc_AE8EF8: LitI4 0
  loc_AE8EFD: LitI4 0
  loc_AE8F02: FLdRfVar var_D8
  loc_AE8F05: Redim
  loc_AE8F0F: LitVarStr var_E8, "1"
  loc_AE8F14: LitI4 0
  loc_AE8F19: ILdRf var_D8
  loc_AE8F1C: Ary1StVarCopy
  loc_AE8F1E: FLdRfVar var_D8
  loc_AE8F21: FLdRfVar var_CC
  loc_AE8F24: CStrVarTmp
  loc_AE8F25: FStStrNoPop var_D4
  loc_AE8F28: FLdRfVar var_B8
  loc_AE8F2B: CStrVarVal var_D0
  loc_AE8F2F: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AE8F34: FStStr var_EC
  loc_AE8F37: FLdRfVar var_D8
  loc_AE8F3A: Erase
  loc_AE8F3B: ILdRf var_EC
  loc_AE8F3E: FLdPr Me
  loc_AE8F41: MemStStrCopy
  loc_AE8F45: FFreeStr var_D0 = "": var_D4 = ""
  loc_AE8F4E: FFreeAd var_88 = ""
  loc_AE8F55: FFreeVar var_98 = "": var_A8 = "": var_CC = ""
  loc_AE8F60: FLdPr Me
  loc_AE8F63: MemLdStr global_144
  loc_AE8F66: LitStr vbNullString
  loc_AE8F69: NeStr
  loc_AE8F6B: BranchF loc_AE8FB5
  loc_AE8F6E: FLdPr Me
  loc_AE8F71: MemLdStr global_144
  loc_AE8F74: LitStr " Debe ingresar un cuenta contable de ACTIVO"
  loc_AE8F77: ConcatStr
  loc_AE8F78: FStStrNoPop var_D0
  loc_AE8F7B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE8F80: FFree1Str var_D0
  loc_AE8F83: LitStr vbNullString
  loc_AE8F86: FLdPr Me
  loc_AE8F89: VCallAd Control_ID_DetaActiLbl
  loc_AE8F8C: FStAdFunc var_88
  loc_AE8F8F: FLdPr var_88
  loc_AE8F92: Me.Caption = from_stack_1
  loc_AE8F97: FFree1Ad var_88
  loc_AE8F9A: FLdPr Me
  loc_AE8F9D: VCallAd Control_ID_ActiConcMsk
  loc_AE8FA0: CVarAd
  loc_AE8FA4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE8FA9: FFree1Var var_98 = ""
  loc_AE8FAC: LitI2_Byte &HFF
  loc_AE8FAE: IStI2 Button
  loc_AE8FB1: ExitProcHresult
  loc_AE8FB2: Branch loc_AE9023
  loc_AE8FB5: FLdPr Me
  loc_AE8FB8: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AE8FBB: FStAdFunc var_88
  loc_AE8FBE: FLdPr var_88
  loc_AE8FC1: LateIdLdVar var_98 DispID_15 0
  loc_AE8FC8: CStrVarTmp
  loc_AE8FC9: CVarStr var_A8
  loc_AE8FCC: FLdRfVar var_B8
  loc_AE8FCF: ImpAdCallFPR4  = Year()
  loc_AE8FD4: FLdPr Me
  loc_AE8FD7: VCallAd Control_ID_ActiConcMsk
  loc_AE8FDA: FStAdFunc var_BC
  loc_AE8FDD: FLdPr var_BC
  loc_AE8FE0: LateIdLdVar var_CC DispID_22 0
  loc_AE8FE7: CStrVarTmp
  loc_AE8FE8: FStStrNoPop var_D0
  loc_AE8FEB: FLdRfVar var_B8
  loc_AE8FEE: CI2Var
  loc_AE8FEF: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AE8FF4: FStStrNoPop var_D4
  loc_AE8FF7: FLdPr Me
  loc_AE8FFA: VCallAd Control_ID_DetaActiLbl
  loc_AE8FFD: FStAdFunc var_F0
  loc_AE9000: FLdPr var_F0
  loc_AE9003: Me.Caption = from_stack_1
  loc_AE9008: FFreeStr var_D0 = ""
  loc_AE900F: FFreeAd var_88 = "": var_BC = ""
  loc_AE9018: FFreeVar var_98 = "": var_A8 = "": var_CC = ""
  loc_AE9023: ExitProcHresult
End Sub

Private Sub ActiConcMsk_KeyPress(KeyAscii As Integer) 'AC1858
  'Data Table: 4AB638
  loc_AC176C: ILdI2 KeyAscii
  loc_AC176F: CI4UI1
  loc_AC1770: LitI4 &H20
  loc_AC1775: EqI4
  loc_AC1776: BranchF loc_AC1856
  loc_AC1779: ImpAdLdRf MemVar_D9468C
  loc_AC177C: NewIfNullAd
  loc_AC177F: FStAd var_88 
  loc_AC1783: LitStr "SELECT * FROM infogov.cuentacontable"
  loc_AC1786: LitStr " WHERE PeriInfo = "
  loc_AC1789: ConcatStr
  loc_AC178A: CVarStr var_CC
  loc_AC178D: FLdPr Me
  loc_AC1790: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AC1793: FStAdFunc var_8C
  loc_AC1796: FLdPr var_8C
  loc_AC1799: LateIdLdVar var_9C DispID_15 0
  loc_AC17A0: CStrVarTmp
  loc_AC17A1: CVarStr var_AC
  loc_AC17A4: FLdRfVar var_BC
  loc_AC17A7: ImpAdCallFPR4  = Year()
  loc_AC17AC: FLdRfVar var_BC
  loc_AC17AF: ConcatVar var_DC
  loc_AC17B3: LitVarStr var_EC, " ORDER BY DetaCuco"
  loc_AC17B8: ConcatVar var_FC
  loc_AC17BC: CStrVarVal var_100
  loc_AC17C0: FLdPr var_88
  loc_AC17C3: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AC17C8: FFree1Str var_100
  loc_AC17CB: FFree1Ad var_8C
  loc_AC17CE: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_BC = "": var_DC = ""
  loc_AC17DD: LitVar_Missing var_110
  loc_AC17E0: PopAdLdVar
  loc_AC17E1: LitVarI4
  loc_AC17E9: PopAdLdVar
  loc_AC17EA: FLdPr var_88
  loc_AC17ED: Me.Show from_stack_1, from_stack_2
  loc_AC17F2: FLdRfVar var_100
  loc_AC17F5: FLdPr var_88
  loc_AC17F8: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AC17FD: FLdZeroAd var_100
  loc_AC1800: CVarStr var_9C
  loc_AC1803: PopAdLdVar
  loc_AC1804: FLdPr Me
  loc_AC1807: VCallAd Control_ID_ActiConcMsk
  loc_AC180A: FStAdFunc var_8C
  loc_AC180D: FLdPr var_8C
  loc_AC1810: LateIdSt
  loc_AC1815: FFree1Ad var_8C
  loc_AC1818: FFree1Var var_9C = ""
  loc_AC181B: LitStr vbNullString
  loc_AC181E: FLdPr var_88
  loc_AC1821: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AC1826: FLdRfVar var_100
  loc_AC1829: FLdPr var_88
  loc_AC182C: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AC1831: ILdRf var_100
  loc_AC1834: FLdPr Me
  loc_AC1837: VCallAd Control_ID_DetaActiLbl
  loc_AC183A: FStAdFunc var_8C
  loc_AC183D: FLdPr var_8C
  loc_AC1840: Me.Caption = from_stack_1
  loc_AC1845: FFree1Str var_100
  loc_AC1848: FFree1Ad var_8C
  loc_AC184B: LitNothing
  loc_AC184D: FStAd var_88 
  loc_AC1851: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AC1856: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_0 '9BB658
  'Data Table: 4AB638
  loc_9BB644: FLdPr Me
  loc_9BB647: VCallAd Control_ID_FealCtctHastaMsk
  loc_9BB64A: CVarAd
  loc_9BB64E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB653: FFree1Var var_94 = ""
  loc_9BB656: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_8 'ACB840
  'Data Table: 4AB638
  loc_ACB740: FLdPr Me
  loc_ACB743: VCallAd Control_ID_FealCtctHastaMsk
  loc_ACB746: FStAdFunc var_88
  loc_ACB749: FLdPr var_88
  loc_ACB74C: LateIdLdVar var_98 DispID_15 0
  loc_ACB753: CStrVarTmp
  loc_ACB754: FStStrNoPop var_9C
  loc_ACB757: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_ACB75C: FStStrNoPop var_A0
  loc_ACB75F: FLdPr Me
  loc_ACB762: MemStStrCopy
  loc_ACB766: FFreeStr var_9C = ""
  loc_ACB76D: FFree1Ad var_88
  loc_ACB770: FFree1Var var_98 = ""
  loc_ACB773: FLdPr Me
  loc_ACB776: VCallAd Control_ID_FealCtctHastaMsk
  loc_ACB779: FStAdFuncNoPop
  loc_ACB77C: CastAd
  loc_ACB77F: FStAdFunc var_A4
  loc_ACB782: FLdRfVar var_A4
  loc_ACB785: FLdPr Me
  loc_ACB788: MemLdStr global_144
  loc_ACB78B: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACB790: IStI2 KeyAscii
  loc_ACB793: FFreeAd var_88 = ""
  loc_ACB79A: ILdI2 KeyAscii
  loc_ACB79D: NotI4
  loc_ACB79E: BranchF loc_ACB83E
  loc_ACB7A1: FLdPr Me
  loc_ACB7A4: VCallAd Control_ID_FealCtctDesdeMsk
  loc_ACB7A7: FStAdFunc var_88
  loc_ACB7AA: FLdPr var_88
  loc_ACB7AD: LateIdLdVar var_98 DispID_15 0
  loc_ACB7B4: CStrVarTmp
  loc_ACB7B5: CVarStr var_B4
  loc_ACB7B8: FLdRfVar var_C4
  loc_ACB7BB: ImpAdCallFPR4  = Year()
  loc_ACB7C0: FLdRfVar var_C4
  loc_ACB7C3: FLdPr Me
  loc_ACB7C6: VCallAd Control_ID_FealCtctHastaMsk
  loc_ACB7C9: FStAdFunc var_A4
  loc_ACB7CC: FLdPr var_A4
  loc_ACB7CF: LateIdLdVar var_D4 DispID_15 0
  loc_ACB7D6: CStrVarTmp
  loc_ACB7D7: CVarStr var_E4
  loc_ACB7DA: FLdRfVar var_F4
  loc_ACB7DD: ImpAdCallFPR4  = Year()
  loc_ACB7E2: FLdRfVar var_F4
  loc_ACB7E5: NeVarBool
  loc_ACB7E7: FFreeAd var_88 = ""
  loc_ACB7EE: FFreeVar var_98 = "": var_B4 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_ACB7FD: BranchF loc_ACB80D
  loc_ACB800: LitStr "Las fechas ingresadas deben corresponder al mismo año."
  loc_ACB803: FLdPr Me
  loc_ACB806: MemStStrCopy
  loc_ACB80A: Branch loc_ACB817
  loc_ACB80D: LitStr vbNullString
  loc_ACB810: FLdPr Me
  loc_ACB813: MemStStrCopy
  loc_ACB817: FLdPr Me
  loc_ACB81A: VCallAd Control_ID_FealCtctHastaMsk
  loc_ACB81D: FStAdFuncNoPop
  loc_ACB820: CastAd
  loc_ACB823: FStAdFunc var_A4
  loc_ACB826: FLdRfVar var_A4
  loc_ACB829: FLdPr Me
  loc_ACB82C: MemLdStr global_144
  loc_ACB82F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACB834: IStI2 KeyAscii
  loc_ACB837: FFreeAd var_88 = ""
  loc_ACB83E: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_KeyPress(KeyAscii As Integer) 'A15064
  'Data Table: 4AB638
  loc_A15020: ILdI2 KeyAscii
  loc_A15023: CI4UI1
  loc_A15024: LitI4 &H20
  loc_A15029: EqI4
  loc_A1502A: BranchF loc_A15060
  loc_A1502D: LitVar_Missing var_A4
  loc_A15030: PopAdLdVar
  loc_A15031: LitVarI4
  loc_A15039: PopAdLdVar
  loc_A1503A: ImpAdLdRf MemVar_D930A4
  loc_A1503D: NewIfNullPr frmCalendario
  loc_A15040: frmCalendario.Show from_stack_1, from_stack_2
  loc_A15045: ImpAdLdRf MemVar_D93028
  loc_A15048: CDargRef
  loc_A1504C: FLdPr Me
  loc_A1504F: VCallAd Control_ID_FealCtctHastaMsk
  loc_A15052: FStAdFunc var_A8
  loc_A15055: FLdPr var_A8
  loc_A15058: LateIdSt
  loc_A1505D: FFree1Ad var_A8
  loc_A15060: ExitProcHresult
  loc_A15063: SetLastSystemError
End Sub

Private Sub Form_Load() '9E113C
  'Data Table: 4AB638
  loc_9E1120: ILdRf Me
  loc_9E1123: CastAd
  loc_9E1126: FStAdFunc var_88
  loc_9E1129: FLdRfVar var_88
  loc_9E112C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E1131: FFree1Ad var_88
  loc_9E1134: Call cmdNueva_Click()
  loc_9E1139: ExitProcHresult
  loc_9E113A: ILdI4 var_3FF4
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CC780
  'Data Table: 4AB638
  loc_9CC768: FLdPr Me
  loc_9CC76B: VCallAd Control_ID_wbbReporte
  loc_9CC76E: FStAdFunc var_88
  loc_9CC771: FLdRfVar var_88
  loc_9CC774: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CC779: FFree1Ad var_88
  loc_9CC77C: ExitProcHresult
  loc_9CC77D: CI2R8
End Sub

Public Function bGeneradoGet() '4AC650
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4AC65F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5EE44
  'Data Table: 4AB638
  loc_A5EDF0: LitI4 0
  loc_A5EDF5: LitI4 2
  loc_A5EDFA: FLdRfVar var_88
  loc_A5EDFD: Redim
  loc_A5EE07: FLdPr Me
  loc_A5EE0A: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A5EE0D: CVarAd
  loc_A5EE11: ParmAry1St
  loc_A5EE17: FLdPr Me
  loc_A5EE1A: VCallAd Control_ID_FealCtctHastaMsk
  loc_A5EE1D: CVarAd
  loc_A5EE21: ParmAry1St
  loc_A5EE27: FLdPr Me
  loc_A5EE2A: VCallAd Control_ID_ActiConcMsk
  loc_A5EE2D: CVarAd
  loc_A5EE31: ParmAry1St
  loc_A5EE37: FLdRfVar var_88
  loc_A5EE3A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5EE3F: FLdRfVar var_88
  loc_A5EE42: Erase
  loc_A5EE43: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C33708
  'Data Table: 4AB638
  loc_C32BE8: FLdPr Me
  loc_C32BEB: MemLdI2 bGenerado
  loc_C32BEE: BranchF loc_C32BF2
  loc_C32BF1: ExitProcHresult
  loc_C32BF2: LitVarStr var_94, "Generando reporte..."
  loc_C32BF7: PopAdLdVar
  loc_C32BF8: FLdPr Me
  loc_C32BFB: VCallAd Control_ID_statusBar
  loc_C32BFE: FStAdFunc var_A8
  loc_C32C01: FLdPr var_A8
  loc_C32C04: LateIdSt
  loc_C32C09: FFree1Ad var_A8
  loc_C32C0C: LitI4 &HB
  loc_C32C11: CI2I4
  loc_C32C12: FLdPr Me
  loc_C32C15: Me.MousePointer = from_stack_1
  loc_C32C1A: LitI2_Byte 0
  loc_C32C1C: PopTmpLdAd2 var_AA
  loc_C32C1F: from_stack_2v = FealCtctDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C32C24: FLdPr Me
  loc_C32C27: MemLdStr global_144
  loc_C32C2A: LitStr vbNullString
  loc_C32C2D: NeStr
  loc_C32C2F: BranchF loc_C32C35
  loc_C32C32: Branch loc_C336DD
  loc_C32C35: LitI2_Byte 0
  loc_C32C37: PopTmpLdAd2 var_AA
  loc_C32C3A: Call FealCtctHastaMsk_UnknownEvent_8()
  loc_C32C3F: FLdPr Me
  loc_C32C42: MemLdStr global_144
  loc_C32C45: LitStr vbNullString
  loc_C32C48: NeStr
  loc_C32C4A: BranchF loc_C32C50
  loc_C32C4D: Branch loc_C336DD
  loc_C32C50: LitI2_Byte 0
  loc_C32C52: PopTmpLdAd2 var_AA
  loc_C32C55: Call ActiConcMsk_UnknownEvent_8()
  loc_C32C5A: FLdPr Me
  loc_C32C5D: MemLdStr global_144
  loc_C32C60: LitStr vbNullString
  loc_C32C63: NeStr
  loc_C32C65: BranchF loc_C32C6B
  loc_C32C68: Branch loc_C336DD
  loc_C32C6B: FLdPr Me
  loc_C32C6E: VCallAd Control_ID_FealCtctDesdeMsk
  loc_C32C71: FStAdFunc var_A8
  loc_C32C74: FLdPr var_A8
  loc_C32C77: LateIdLdVar var_BC DispID_15 0
  loc_C32C7E: PopAd
  loc_C32C80: LitI4 1
  loc_C32C85: LitI4 1
  loc_C32C8A: LitVarStr var_94, "yyyy-mm-dd"
  loc_C32C8F: FStVarCopyObj var_DC
  loc_C32C92: FLdRfVar var_DC
  loc_C32C95: FLdRfVar var_BC
  loc_C32C98: CStrVarTmp
  loc_C32C99: CVarStr var_CC
  loc_C32C9C: ImpAdCallI2 Format$(, )
  loc_C32CA1: FStStrNoPop var_E0
  loc_C32CA4: FLdPr Me
  loc_C32CA7: MemStStrCopy
  loc_C32CAB: FFree1Str var_E0
  loc_C32CAE: FFree1Ad var_A8
  loc_C32CB1: FFreeVar var_BC = "": var_CC = ""
  loc_C32CBA: FLdPr Me
  loc_C32CBD: VCallAd Control_ID_FealCtctHastaMsk
  loc_C32CC0: FStAdFunc var_A8
  loc_C32CC3: FLdPr var_A8
  loc_C32CC6: LateIdLdVar var_BC DispID_15 0
  loc_C32CCD: PopAd
  loc_C32CCF: LitI4 1
  loc_C32CD4: LitI4 1
  loc_C32CD9: LitVarStr var_94, "yyyy-mm-dd"
  loc_C32CDE: FStVarCopyObj var_DC
  loc_C32CE1: FLdRfVar var_DC
  loc_C32CE4: FLdRfVar var_BC
  loc_C32CE7: CStrVarTmp
  loc_C32CE8: CVarStr var_CC
  loc_C32CEB: ImpAdCallI2 Format$(, )
  loc_C32CF0: FStStrNoPop var_E0
  loc_C32CF3: FLdPr Me
  loc_C32CF6: MemStStrCopy
  loc_C32CFA: FFree1Str var_E0
  loc_C32CFD: FFree1Ad var_A8
  loc_C32D00: FFreeVar var_BC = "": var_CC = ""
  loc_C32D09: FLdPr Me
  loc_C32D0C: VCallAd Control_ID_FealCtctDesdeMsk
  loc_C32D0F: FStAdFunc var_A8
  loc_C32D12: FLdPr var_A8
  loc_C32D15: LateIdLdVar var_BC DispID_15 0
  loc_C32D1C: CStrVarTmp
  loc_C32D1D: CVarStr var_CC
  loc_C32D20: FLdRfVar var_DC
  loc_C32D23: ImpAdCallFPR4  = Year()
  loc_C32D28: FLdPr Me
  loc_C32D2B: VCallAd Control_ID_FealCtctDesdeMsk
  loc_C32D2E: FStAdFunc var_F4
  loc_C32D31: FLdPr var_F4
  loc_C32D34: LateIdLdVar var_104 DispID_15 0
  loc_C32D3B: CStrVarTmp
  loc_C32D3C: CVarStr var_114
  loc_C32D3F: FLdRfVar var_124
  loc_C32D42: ImpAdCallFPR4  = Month()
  loc_C32D47: FLdPr Me
  loc_C32D4A: VCallAd Control_ID_FealCtctDesdeMsk
  loc_C32D4D: FStAdFunc var_128
  loc_C32D50: FLdPr var_128
  loc_C32D53: LateIdLdVar var_138 DispID_15 0
  loc_C32D5A: CStrVarTmp
  loc_C32D5B: CVarStr var_148
  loc_C32D5E: FLdRfVar var_158
  loc_C32D61: ImpAdCallFPR4  = Day()
  loc_C32D66: FLdRfVar var_158
  loc_C32D69: CI2Var
  loc_C32D6A: FLdRfVar var_124
  loc_C32D6D: CI2Var
  loc_C32D6E: FLdRfVar var_DC
  loc_C32D71: LitVarI2 var_94, 1
  loc_C32D76: SubVar var_F0
  loc_C32D7A: CI2Var
  loc_C32D7B: FLdRfVar var_168
  loc_C32D7E: ImpAdCallFPR4  = DateSerial(, , )
  loc_C32D83: LitI4 1
  loc_C32D88: LitI4 1
  loc_C32D8D: LitVarStr var_A4, "yyyy-mm-dd"
  loc_C32D92: FStVarCopyObj var_178
  loc_C32D95: FLdRfVar var_178
  loc_C32D98: FLdRfVar var_168
  loc_C32D9B: ImpAdCallI2 Format$(, )
  loc_C32DA0: FStStrNoPop var_E0
  loc_C32DA3: FLdPr Me
  loc_C32DA6: MemStStrCopy
  loc_C32DAA: FFree1Str var_E0
  loc_C32DAD: FFreeAd var_A8 = "": var_F4 = ""
  loc_C32DB6: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_104 = "": var_114 = "": var_138 = "": var_148 = "": var_124 = "": var_158 = "": var_168 = ""
  loc_C32DCF: FLdPr Me
  loc_C32DD2: VCallAd Control_ID_FealCtctHastaMsk
  loc_C32DD5: FStAdFunc var_A8
  loc_C32DD8: FLdPr var_A8
  loc_C32DDB: LateIdLdVar var_BC DispID_15 0
  loc_C32DE2: CStrVarTmp
  loc_C32DE3: CVarStr var_CC
  loc_C32DE6: FLdRfVar var_DC
  loc_C32DE9: ImpAdCallFPR4  = Year()
  loc_C32DEE: FLdPr Me
  loc_C32DF1: VCallAd Control_ID_FealCtctHastaMsk
  loc_C32DF4: FStAdFunc var_F4
  loc_C32DF7: FLdPr var_F4
  loc_C32DFA: LateIdLdVar var_104 DispID_15 0
  loc_C32E01: CStrVarTmp
  loc_C32E02: CVarStr var_114
  loc_C32E05: FLdRfVar var_124
  loc_C32E08: ImpAdCallFPR4  = Month()
  loc_C32E0D: FLdPr Me
  loc_C32E10: VCallAd Control_ID_FealCtctHastaMsk
  loc_C32E13: FStAdFunc var_128
  loc_C32E16: FLdPr var_128
  loc_C32E19: LateIdLdVar var_138 DispID_15 0
  loc_C32E20: CStrVarTmp
  loc_C32E21: CVarStr var_148
  loc_C32E24: FLdRfVar var_158
  loc_C32E27: ImpAdCallFPR4  = Day()
  loc_C32E2C: FLdRfVar var_158
  loc_C32E2F: CI2Var
  loc_C32E30: FLdRfVar var_124
  loc_C32E33: CI2Var
  loc_C32E34: FLdRfVar var_DC
  loc_C32E37: LitVarI2 var_94, 1
  loc_C32E3C: SubVar var_F0
  loc_C32E40: CI2Var
  loc_C32E41: FLdRfVar var_168
  loc_C32E44: ImpAdCallFPR4  = DateSerial(, , )
  loc_C32E49: LitI4 1
  loc_C32E4E: LitI4 1
  loc_C32E53: LitVarStr var_A4, "yyyy-mm-dd"
  loc_C32E58: FStVarCopyObj var_178
  loc_C32E5B: FLdRfVar var_178
  loc_C32E5E: FLdRfVar var_168
  loc_C32E61: ImpAdCallI2 Format$(, )
  loc_C32E66: FStStrNoPop var_E0
  loc_C32E69: FLdPr Me
  loc_C32E6C: MemStStrCopy
  loc_C32E70: FFree1Str var_E0
  loc_C32E73: FFreeAd var_A8 = "": var_F4 = ""
  loc_C32E7C: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_104 = "": var_114 = "": var_138 = "": var_148 = "": var_124 = "": var_158 = "": var_168 = ""
  loc_C32E95: FLdPr Me
  loc_C32E98: MemLdRfVar from_stack_1.global_76
  loc_C32E9B: NewIfNullAd
  loc_C32E9E: FStAd var_17C 
  loc_C32EA2: LitStr "DROP TEMPORARY TABLE IF EXISTS c;"
  loc_C32EA5: LitStr " CREATE TEMPORARY TABLE c ("
  loc_C32EA8: ConcatStr
  loc_C32EA9: FStStrNoPop var_E0
  loc_C32EAC: LitStr "   odiOfic` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_C32EAF: ConcatStr
  loc_C32EB0: FStStrNoPop var_180
  loc_C32EB3: LitStr "   uenCtct` char(11) NOT NULL DEFAULT '',"
  loc_C32EB6: ConcatStr
  loc_C32EB7: FStStrNoPop var_184
  loc_C32EBA: LitStr "   eriCtct` year(4) NOT NULL DEFAULT '0000',"
  loc_C32EBD: ConcatStr
  loc_C32EBE: FStStrNoPop var_188
  loc_C32EC1: LitStr "   imeCtct` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_C32EC4: ConcatStr
  loc_C32EC5: FStStrNoPop var_18C
  loc_C32EC8: LitStr "   umeCtct` int(10) unsigned NOT NULL DEFAULT '0',"
  loc_C32ECB: ConcatStr
  loc_C32ECC: FStStrNoPop var_190
  loc_C32ECF: LitStr "   odiConc` char(8) NOT NULL default '', "
  loc_C32ED2: ConcatStr
  loc_C32ED3: FStStrNoPop var_194
  loc_C32ED6: LitStr "   ebeCtct` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_C32ED9: ConcatStr
  loc_C32EDA: FStStrNoPop var_198
  loc_C32EDD: LitStr "   redCtct` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_C32EE0: ConcatStr
  loc_C32EE1: FStStrNoPop var_19C
  loc_C32EE4: LitStr "   xenCtct` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_C32EE7: ConcatStr
  loc_C32EE8: FStStrNoPop var_1A0
  loc_C32EEB: LitStr "   escCtct` decimal(10,2) NOT NULL DEFAULT '0.00'"
  loc_C32EEE: ConcatStr
  loc_C32EEF: FStStrNoPop var_1A4
  loc_C32EF2: LitStr " ) ENGINE=memory DEFAULT CHARSET=latin1;"
  loc_C32EF5: ConcatStr
  loc_C32EF6: FStStrNoPop var_1A8
  loc_C32EF9: FLdPr var_17C
  loc_C32EFC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C32F01: FFreeStr var_E0 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = ""
  loc_C32F1C: LitVarStr var_94, "Consultando datos del periodo acutal..."
  loc_C32F21: PopAdLdVar
  loc_C32F22: FLdPr Me
  loc_C32F25: VCallAd Control_ID_statusBar
  loc_C32F28: FStAdFunc var_A8
  loc_C32F2B: FLdPr var_A8
  loc_C32F2E: LateIdSt
  loc_C32F33: FFree1Ad var_A8
  loc_C32F36: FLdPr Me
  loc_C32F39: MemLdStr global_140
  loc_C32F3C: FLdPr Me
  loc_C32F3F: MemLdStr global_136
  loc_C32F42: Call Proc_117_22_B0532C()
  loc_C32F47: LitStr "act"
  loc_C32F4A: Call Proc_117_23_B1F37C()
  loc_C32F4F: LitStr "DELETE FROM c;"
  loc_C32F52: FLdPr var_17C
  loc_C32F55: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C32F5A: LitVarStr var_94, "Consultando datos del periodo anterior..."
  loc_C32F5F: PopAdLdVar
  loc_C32F60: FLdPr Me
  loc_C32F63: VCallAd Control_ID_statusBar
  loc_C32F66: FStAdFunc var_A8
  loc_C32F69: FLdPr var_A8
  loc_C32F6C: LateIdSt
  loc_C32F71: FFree1Ad var_A8
  loc_C32F74: FLdPr Me
  loc_C32F77: MemLdStr global_132
  loc_C32F7A: FLdPr Me
  loc_C32F7D: MemLdStr global_128
  loc_C32F80: Call Proc_117_22_B0532C()
  loc_C32F85: LitStr "ant"
  loc_C32F88: Call Proc_117_23_B1F37C()
  loc_C32F8D: LitStr " DROP TEMPORARY TABLE IF EXISTS final; CREATE TEMPORARY TABLE final"
  loc_C32F90: LitStr " (SELECT CodiOfic, CuenCtct, sum(DebeCtct) as DebeCtct2, sum(CredCtct) as CredCtct2, sum(ExenCtct) as ExenCtct2, sum(DescCtct) as DescCtct2"
  loc_C32F93: ConcatStr
  loc_C32F94: FStStrNoPop var_E0
  loc_C32F97: LitStr " , sum(CredCtct)+sum(ExenCtct)+sum(DescCtct) as TotaCtct2"
  loc_C32F9A: ConcatStr
  loc_C32F9B: FStStrNoPop var_180
  loc_C32F9E: LitStr " , 0 as DebeCtct, 0 as CredCtct, 0 as ExenCtct, 0 as DescCtct, 0 as TotaCtct"
  loc_C32FA1: ConcatStr
  loc_C32FA2: FStStrNoPop var_184
  loc_C32FA5: LitStr " FROM act GROUP BY CuenCtct) UNION ALL"
  loc_C32FA8: ConcatStr
  loc_C32FA9: FStStrNoPop var_188
  loc_C32FAC: LitStr " (SELECT CodiOfic, CuenCtct, 0 as DebeCtct2, 0 as CredCtct2, 0 as ExenCtct2, 0 as DescCtct2, 0 as TotaCtct2"
  loc_C32FAF: ConcatStr
  loc_C32FB0: FStStrNoPop var_18C
  loc_C32FB3: LitStr " , sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(ExenCtct) as ExenCtct, sum(DescCtct) as DescCtct"
  loc_C32FB6: ConcatStr
  loc_C32FB7: FStStrNoPop var_190
  loc_C32FBA: LitStr " , sum(CredCtct)+sum(ExenCtct)+sum(DescCtct) as TotaCtct"
  loc_C32FBD: ConcatStr
  loc_C32FBE: FStStrNoPop var_194
  loc_C32FC1: LitStr " FROM ant GROUP BY CuenCtct);"
  loc_C32FC4: ConcatStr
  loc_C32FC5: FStStrNoPop var_198
  loc_C32FC8: LitStr " DROP TEMPORARY TABLE IF EXISTS c, act, ant;"
  loc_C32FCB: ConcatStr
  loc_C32FCC: FStStrNoPop var_19C
  loc_C32FCF: FLdPr var_17C
  loc_C32FD2: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C32FD7: FFreeStr var_E0 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_C32FEC: LitStr "SELECT final.CuenCtct, DetaPers, sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(ExenCtct) as ExenCtct, sum(DescCtct) as DescCtct"
  loc_C32FEF: LitStr " , sum(TotaCtct) as TotaCtct, sum(DebeCtct2) as DebeCtct2, sum(CredCtct2) as CredCtct2, sum(ExenCtct2) as ExenCtct2"
  loc_C32FF2: ConcatStr
  loc_C32FF3: FStStrNoPop var_E0
  loc_C32FF6: LitStr " , sum(DescCtct2) as DescCtct2, sum(TotaCtct2) as TotaCtct2"
  loc_C32FF9: ConcatStr
  loc_C32FFA: FStStrNoPop var_180
  loc_C32FFD: LitStr " FROM final LEFT JOIN relacion ON relacion.CodiOfic = final.CodiOfic AND relacion.CuenCtct = final.CuenCtct AND relacion.TipoRela = 'Titular'"
  loc_C33000: ConcatStr
  loc_C33001: FStStrNoPop var_184
  loc_C33004: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C33007: ConcatStr
  loc_C33008: FStStrNoPop var_188
  loc_C3300B: LitStr " GROUP BY CuenCtct ORDER BY cast(final.CuenCtct as unsigned integer);"
  loc_C3300E: ConcatStr
  loc_C3300F: FStStrNoPop var_18C
  loc_C33012: FLdPr var_17C
  loc_C33015: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C3301A: FFreeStr var_E0 = "": var_180 = "": var_184 = "": var_188 = ""
  loc_C33027: FLdRfVar var_1AC
  loc_C3302A: FLdPr var_17C
  loc_C3302D: from_stack_1 = clsctacte.RecordCount
  loc_C33032: ILdRf var_1AC
  loc_C33035: LitI4 0
  loc_C3303A: EqI4
  loc_C3303B: BranchF loc_C33049
  loc_C3303E: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C33041: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C33046: Branch loc_C336DD
  loc_C33049: LitI4 0
  loc_C3304E: LitI4 0
  loc_C33053: FLdPr Me
  loc_C33056: MemLdRfVar from_stack_1.global_88
  loc_C33059: Redim
  loc_C33063: LitI4 0
  loc_C33068: FLdPr Me
  loc_C3306B: MemStI4 global_92
  loc_C3306E: LitI4 0
  loc_C33073: FLdPr Me
  loc_C33076: MemStI4 global_96
  loc_C33079: LitI4 0
  loc_C3307E: FLdPr Me
  loc_C33081: MemStI4 global_100
  loc_C33084: LitI4 0
  loc_C33089: FLdPr Me
  loc_C3308C: MemStI4 global_104
  loc_C3308F: LitI4 0
  loc_C33094: FLdRfVar var_1AC
  loc_C33097: FLdPr var_17C
  loc_C3309A: from_stack_1 = clsctacte.RecordCount
  loc_C3309F: ILdRf var_1AC
  loc_C330A2: FLdPr Me
  loc_C330A5: MemLdRfVar from_stack_1.global_84
  loc_C330A8: Redim
  loc_C330B2: LitI4 1
  loc_C330B7: FLdPr Me
  loc_C330BA: MemLdRfVar from_stack_1.global_124
  loc_C330BD: FLdPr Me
  loc_C330C0: MemLdStr global_84
  loc_C330C3: LitI2_Byte 1
  loc_C330C5: FnUBound
  loc_C330C7: ForI4 var_1B4
  loc_C330CD: FLdRfVar var_E0
  loc_C330D0: FLdPr var_17C
  loc_C330D3: from_stack_1 = clsctacte.CuenCtct
  loc_C330D8: LitI2_Byte 0
  loc_C330DA: LitVar_Missing var_CC
  loc_C330DD: LitI2_Byte 0
  loc_C330DF: FLdZeroAd var_E0
  loc_C330E2: CVarStr var_BC
  loc_C330E5: PopAdLdVar
  loc_C330E6: FLdPr Me
  loc_C330E9: MemLdStr global_124
  loc_C330EC: FLdPr Me
  loc_C330EF: MemLdStr global_84
  loc_C330F2: AryLock
  loc_C330F5: Ary1LdPr
  loc_C330F6: MemLdRfVar from_stack_1.global_0
  loc_C330F9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C330FE: AryUnlock
  loc_C33101: FFreeVar var_BC = ""
  loc_C33108: FLdRfVar var_BC
  loc_C3310B: FLdPr var_17C
  loc_C3310E: from_stack_1 = clsctacte.DetaPers
  loc_C33113: LitI2_Byte 0
  loc_C33115: LitVar_Missing var_CC
  loc_C33118: LitI2_Byte 0
  loc_C3311A: FLdVar var_BC
  loc_C3311E: FLdPr Me
  loc_C33121: MemLdStr global_124
  loc_C33124: FLdPr Me
  loc_C33127: MemLdStr global_84
  loc_C3312A: AryLock
  loc_C3312D: Ary1LdPr
  loc_C3312E: MemLdRfVar from_stack_1.global_4
  loc_C33131: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C33136: AryUnlock
  loc_C33139: FFreeVar var_BC = ""
  loc_C33140: FLdRfVar var_1C0
  loc_C33143: FLdPr var_17C
  loc_C33146: from_stack_1 = clsctacte.DebeCtct
  loc_C3314B: LitI2_Byte 0
  loc_C3314D: LitI4 0
  loc_C33152: FLdPr Me
  loc_C33155: MemLdStr global_88
  loc_C33158: AryLock
  loc_C3315B: Ary1LdPr
  loc_C3315C: MemLdRfVar from_stack_1.global_8
  loc_C3315F: CVarRef
  loc_C33164: LitI2_Byte &HFF
  loc_C33166: FLdFPR8 var_1C0
  loc_C33169: CVarR8
  loc_C3316D: PopAdLdVar
  loc_C3316E: FLdPr Me
  loc_C33171: MemLdStr global_124
  loc_C33174: FLdPr Me
  loc_C33177: MemLdStr global_84
  loc_C3317A: AryLock
  loc_C3317D: Ary1LdPr
  loc_C3317E: MemLdRfVar from_stack_1.global_8
  loc_C33181: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C33186: AryUnlock
  loc_C33189: AryUnlock
  loc_C3318C: FLdRfVar var_1C0
  loc_C3318F: FLdPr var_17C
  loc_C33192: from_stack_1 = clsctacte.CredCtct
  loc_C33197: LitI2_Byte 0
  loc_C33199: LitI4 0
  loc_C3319E: FLdPr Me
  loc_C331A1: MemLdStr global_88
  loc_C331A4: AryLock
  loc_C331A7: Ary1LdPr
  loc_C331A8: MemLdRfVar from_stack_1.global_12
  loc_C331AB: CVarRef
  loc_C331B0: LitI2_Byte &HFF
  loc_C331B2: FLdFPR8 var_1C0
  loc_C331B5: CVarR8
  loc_C331B9: PopAdLdVar
  loc_C331BA: FLdPr Me
  loc_C331BD: MemLdStr global_124
  loc_C331C0: FLdPr Me
  loc_C331C3: MemLdStr global_84
  loc_C331C6: AryLock
  loc_C331C9: Ary1LdPr
  loc_C331CA: MemLdRfVar from_stack_1.global_12
  loc_C331CD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C331D2: AryUnlock
  loc_C331D5: AryUnlock
  loc_C331D8: FLdRfVar var_BC
  loc_C331DB: FLdPr var_17C
  loc_C331DE: from_stack_1 = clsctacte.ExenCtct
  loc_C331E3: LitI2_Byte 0
  loc_C331E5: LitI4 0
  loc_C331EA: FLdPr Me
  loc_C331ED: MemLdStr global_88
  loc_C331F0: AryLock
  loc_C331F3: Ary1LdPr
  loc_C331F4: MemLdRfVar from_stack_1.global_16
  loc_C331F7: CVarRef
  loc_C331FC: LitI2_Byte &HFF
  loc_C331FE: FLdVar var_BC
  loc_C33202: FLdPr Me
  loc_C33205: MemLdStr global_124
  loc_C33208: FLdPr Me
  loc_C3320B: MemLdStr global_84
  loc_C3320E: AryLock
  loc_C33211: Ary1LdPr
  loc_C33212: MemLdRfVar from_stack_1.global_16
  loc_C33215: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C3321A: AryUnlock
  loc_C3321D: AryUnlock
  loc_C33220: FFree1Var var_BC = ""
  loc_C33223: FLdRfVar var_BC
  loc_C33226: FLdPr var_17C
  loc_C33229: from_stack_1 = clsctacte.DescCtct
  loc_C3322E: LitI2_Byte 0
  loc_C33230: LitI4 0
  loc_C33235: FLdPr Me
  loc_C33238: MemLdStr global_88
  loc_C3323B: AryLock
  loc_C3323E: Ary1LdPr
  loc_C3323F: MemLdRfVar from_stack_1.global_20
  loc_C33242: CVarRef
  loc_C33247: LitI2_Byte &HFF
  loc_C33249: FLdVar var_BC
  loc_C3324D: FLdPr Me
  loc_C33250: MemLdStr global_124
  loc_C33253: FLdPr Me
  loc_C33256: MemLdStr global_84
  loc_C33259: AryLock
  loc_C3325C: Ary1LdPr
  loc_C3325D: MemLdRfVar from_stack_1.global_20
  loc_C33260: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C33265: AryUnlock
  loc_C33268: AryUnlock
  loc_C3326B: FFree1Var var_BC = ""
  loc_C3326E: FLdRfVar var_1C0
  loc_C33271: FLdPr var_17C
  loc_C33274: from_stack_1 = clsctacte.TotaCtct
  loc_C33279: LitI2_Byte 0
  loc_C3327B: LitI4 0
  loc_C33280: FLdPr Me
  loc_C33283: MemLdStr global_88
  loc_C33286: AryLock
  loc_C33289: Ary1LdPr
  loc_C3328A: MemLdRfVar from_stack_1.global_24
  loc_C3328D: CVarRef
  loc_C33292: LitI2_Byte &HFF
  loc_C33294: FLdFPR8 var_1C0
  loc_C33297: CVarR8
  loc_C3329B: PopAdLdVar
  loc_C3329C: FLdPr Me
  loc_C3329F: MemLdStr global_124
  loc_C332A2: FLdPr Me
  loc_C332A5: MemLdStr global_84
  loc_C332A8: AryLock
  loc_C332AB: Ary1LdPr
  loc_C332AC: MemLdRfVar from_stack_1.global_24
  loc_C332AF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C332B4: AryUnlock
  loc_C332B7: AryUnlock
  loc_C332BA: FLdRfVar var_1C0
  loc_C332BD: FLdPr var_17C
  loc_C332C0: from_stack_1 = clsctacte.DebeCtct
  loc_C332C5: FLdFPR8 var_1C0
  loc_C332C8: LitI2_Byte 0
  loc_C332CA: CR8I2
  loc_C332CB: GtR4
  loc_C332CC: BranchF loc_C3330E
  loc_C332CF: FLdPr Me
  loc_C332D2: MemLdStr global_92
  loc_C332D5: LitI4 1
  loc_C332DA: AddI4
  loc_C332DB: FLdPr Me
  loc_C332DE: MemStI4 global_92
  loc_C332E1: FLdRfVar var_1CC
  loc_C332E4: FLdPr var_17C
  loc_C332E7: from_stack_1 = clsctacte.TotaCtct
  loc_C332EC: FLdRfVar var_1C0
  loc_C332EF: FLdPr var_17C
  loc_C332F2: from_stack_1 = clsctacte.DebeCtct
  loc_C332F7: FLdFPR8 var_1C0
  loc_C332FA: FLdFPR8 var_1CC
  loc_C332FD: LeR8
  loc_C332FE: FLdPr Me
  loc_C33301: MemLdStr global_124
  loc_C33304: FLdPr Me
  loc_C33307: MemLdStr global_84
  loc_C3330A: Ary1LdPr
  loc_C3330B: MemStI2 global_28
  loc_C3330E: FLdPr Me
  loc_C33311: MemLdStr global_124
  loc_C33314: FLdPr Me
  loc_C33317: MemLdStr global_84
  loc_C3331A: Ary1LdPr
  loc_C3331B: MemLdI2 global_28
  loc_C3331E: BranchF loc_C33333
  loc_C33321: FLdPr Me
  loc_C33324: MemLdStr global_96
  loc_C33327: LitI4 1
  loc_C3332C: AddI4
  loc_C3332D: FLdPr Me
  loc_C33330: MemStI4 global_96
  loc_C33333: FLdRfVar var_BC
  loc_C33336: FLdPr var_17C
  loc_C33339: from_stack_1 = clsctacte.DebeCtct2
  loc_C3333E: LitI2_Byte 0
  loc_C33340: LitI4 0
  loc_C33345: FLdPr Me
  loc_C33348: MemLdStr global_88
  loc_C3334B: AryLock
  loc_C3334E: Ary1LdPr
  loc_C3334F: MemLdRfVar from_stack_1.global_32
  loc_C33352: CVarRef
  loc_C33357: LitI2_Byte &HFF
  loc_C33359: FLdVar var_BC
  loc_C3335D: FLdPr Me
  loc_C33360: MemLdStr global_124
  loc_C33363: FLdPr Me
  loc_C33366: MemLdStr global_84
  loc_C33369: AryLock
  loc_C3336C: Ary1LdPr
  loc_C3336D: MemLdRfVar from_stack_1.global_32
  loc_C33370: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C33375: AryUnlock
  loc_C33378: AryUnlock
  loc_C3337B: FFree1Var var_BC = ""
  loc_C3337E: FLdRfVar var_BC
  loc_C33381: FLdPr var_17C
  loc_C33384: from_stack_1 = clsctacte.CredCtct2
  loc_C33389: LitI2_Byte 0
  loc_C3338B: LitI4 0
  loc_C33390: FLdPr Me
  loc_C33393: MemLdStr global_88
  loc_C33396: AryLock
  loc_C33399: Ary1LdPr
  loc_C3339A: MemLdRfVar from_stack_1.global_36
  loc_C3339D: CVarRef
  loc_C333A2: LitI2_Byte &HFF
  loc_C333A4: FLdVar var_BC
  loc_C333A8: FLdPr Me
  loc_C333AB: MemLdStr global_124
  loc_C333AE: FLdPr Me
  loc_C333B1: MemLdStr global_84
  loc_C333B4: AryLock
  loc_C333B7: Ary1LdPr
  loc_C333B8: MemLdRfVar from_stack_1.global_36
  loc_C333BB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C333C0: AryUnlock
  loc_C333C3: AryUnlock
  loc_C333C6: FFree1Var var_BC = ""
  loc_C333C9: FLdRfVar var_BC
  loc_C333CC: FLdPr var_17C
  loc_C333CF: from_stack_1 = clsctacte.ExenCtct2
  loc_C333D4: LitI2_Byte 0
  loc_C333D6: LitI4 0
  loc_C333DB: FLdPr Me
  loc_C333DE: MemLdStr global_88
  loc_C333E1: AryLock
  loc_C333E4: Ary1LdPr
  loc_C333E5: MemLdRfVar from_stack_1.global_40
  loc_C333E8: CVarRef
  loc_C333ED: LitI2_Byte &HFF
  loc_C333EF: FLdVar var_BC
  loc_C333F3: FLdPr Me
  loc_C333F6: MemLdStr global_124
  loc_C333F9: FLdPr Me
  loc_C333FC: MemLdStr global_84
  loc_C333FF: AryLock
  loc_C33402: Ary1LdPr
  loc_C33403: MemLdRfVar from_stack_1.global_40
  loc_C33406: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C3340B: AryUnlock
  loc_C3340E: AryUnlock
  loc_C33411: FFree1Var var_BC = ""
  loc_C33414: FLdRfVar var_BC
  loc_C33417: FLdPr var_17C
  loc_C3341A: from_stack_1 = clsctacte.DescCtct2
  loc_C3341F: LitI2_Byte 0
  loc_C33421: LitI4 0
  loc_C33426: FLdPr Me
  loc_C33429: MemLdStr global_88
  loc_C3342C: AryLock
  loc_C3342F: Ary1LdPr
  loc_C33430: MemLdRfVar from_stack_1.global_44
  loc_C33433: CVarRef
  loc_C33438: LitI2_Byte &HFF
  loc_C3343A: FLdVar var_BC
  loc_C3343E: FLdPr Me
  loc_C33441: MemLdStr global_124
  loc_C33444: FLdPr Me
  loc_C33447: MemLdStr global_84
  loc_C3344A: AryLock
  loc_C3344D: Ary1LdPr
  loc_C3344E: MemLdRfVar from_stack_1.global_44
  loc_C33451: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C33456: AryUnlock
  loc_C33459: AryUnlock
  loc_C3345C: FFree1Var var_BC = ""
  loc_C3345F: FLdRfVar var_BC
  loc_C33462: FLdPr var_17C
  loc_C33465: from_stack_1 = clsctacte.TotaCtct2
  loc_C3346A: LitI2_Byte 0
  loc_C3346C: LitI4 0
  loc_C33471: FLdPr Me
  loc_C33474: MemLdStr global_88
  loc_C33477: AryLock
  loc_C3347A: Ary1LdPr
  loc_C3347B: MemLdRfVar from_stack_1.global_48
  loc_C3347E: CVarRef
  loc_C33483: LitI2_Byte &HFF
  loc_C33485: FLdVar var_BC
  loc_C33489: FLdPr Me
  loc_C3348C: MemLdStr global_124
  loc_C3348F: FLdPr Me
  loc_C33492: MemLdStr global_84
  loc_C33495: AryLock
  loc_C33498: Ary1LdPr
  loc_C33499: MemLdRfVar from_stack_1.global_48
  loc_C3349C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C334A1: AryUnlock
  loc_C334A4: AryUnlock
  loc_C334A7: FFree1Var var_BC = ""
  loc_C334AA: FLdRfVar var_BC
  loc_C334AD: FLdPr var_17C
  loc_C334B0: from_stack_1 = clsctacte.DebeCtct2
  loc_C334B5: FLdRfVar var_BC
  loc_C334B8: LitVarI2 var_94, 0
  loc_C334BD: HardType
  loc_C334BE: GtVarBool
  loc_C334C0: FFree1Var var_BC = ""
  loc_C334C3: BranchF loc_C33511
  loc_C334C6: FLdPr Me
  loc_C334C9: MemLdStr global_100
  loc_C334CC: LitI4 1
  loc_C334D1: AddI4
  loc_C334D2: FLdPr Me
  loc_C334D5: MemStI4 global_100
  loc_C334D8: FLdRfVar var_BC
  loc_C334DB: FLdPr var_17C
  loc_C334DE: from_stack_1 = clsctacte.DebeCtct2
  loc_C334E3: FLdRfVar var_BC
  loc_C334E6: FLdRfVar var_CC
  loc_C334E9: FLdPr var_17C
  loc_C334EC: from_stack_1 = clsctacte.TotaCtct2
  loc_C334F1: FLdRfVar var_CC
  loc_C334F4: LeVar var_DC
  loc_C334F8: CBoolVar
  loc_C334FA: FLdPr Me
  loc_C334FD: MemLdStr global_124
  loc_C33500: FLdPr Me
  loc_C33503: MemLdStr global_84
  loc_C33506: Ary1LdPr
  loc_C33507: MemStI2 bGenerado
  loc_C3350A: FFreeVar var_BC = ""
  loc_C33511: FLdPr Me
  loc_C33514: MemLdStr global_124
  loc_C33517: FLdPr Me
  loc_C3351A: MemLdStr global_84
  loc_C3351D: Ary1LdPr
  loc_C3351E: MemLdI2 bGenerado
  loc_C33521: BranchF loc_C33536
  loc_C33524: FLdPr Me
  loc_C33527: MemLdStr global_104
  loc_C3352A: LitI4 1
  loc_C3352F: AddI4
  loc_C33530: FLdPr Me
  loc_C33533: MemStI4 global_104
  loc_C33536: LitI2_Byte 1
  loc_C33538: PopTmpLdAd2 var_AA
  loc_C3353B: FLdPr var_17C
  loc_C3353E: Call clsctacte.Move(from_stack_1v)
  loc_C33543: FLdPr Me
  loc_C33546: MemLdRfVar from_stack_1.global_124
  loc_C33549: NextI4 var_1B4, loc_C330CD
  loc_C3354E: LitNothing
  loc_C33550: FStAd var_17C 
  loc_C33554: FLdPr Me
  loc_C33557: MemLdStr global_92
  loc_C3355A: LitI4 0
  loc_C3355F: EqI4
  loc_C33560: BranchF loc_C3356F
  loc_C33563: LitI2_Byte 0
  loc_C33565: CR8I2
  loc_C33566: FLdPr Me
  loc_C33569: MemStFPR8 global_108
  loc_C3356C: Branch loc_C33584
  loc_C3356F: FLdPr Me
  loc_C33572: MemLdStr global_96
  loc_C33575: CR8I4
  loc_C33576: FLdPr Me
  loc_C33579: MemLdStr global_92
  loc_C3357C: CR8I4
  loc_C3357D: DivR8
  loc_C3357E: FLdPr Me
  loc_C33581: MemStFPR8 global_108
  loc_C33584: FLdPr Me
  loc_C33587: MemLdStr global_100
  loc_C3358A: LitI4 0
  loc_C3358F: EqI4
  loc_C33590: BranchF loc_C3359F
  loc_C33593: LitI2_Byte 0
  loc_C33595: CR8I2
  loc_C33596: FLdPr Me
  loc_C33599: MemStFPR8 global_116
  loc_C3359C: Branch loc_C335B4
  loc_C3359F: FLdPr Me
  loc_C335A2: MemLdStr global_104
  loc_C335A5: CR8I4
  loc_C335A6: FLdPr Me
  loc_C335A9: MemLdStr global_100
  loc_C335AC: CR8I4
  loc_C335AD: DivR8
  loc_C335AE: FLdPr Me
  loc_C335B1: MemStFPR8 global_116
  loc_C335B4: FLdPrThis
  loc_C335B5: VCallAd Control_ID_Graf1
  loc_C335B8: FStAdFunc var_1D0
  loc_C335BB: LitVarI2 var_94, 1
  loc_C335C0: PopAdLdVar
  loc_C335C1: FLdPr var_1D0
  loc_C335C4: LateIdSt
  loc_C335C9: FLdPr Me
  loc_C335CC: MemLdRfVar from_stack_1.global_128
  loc_C335CF: CVarRef
  loc_C335D4: FLdRfVar var_BC
  loc_C335D7: ImpAdCallFPR4  = Year()
  loc_C335DC: FLdRfVar var_BC
  loc_C335DF: CStrVarTmp
  loc_C335E0: CVarStr var_CC
  loc_C335E3: PopAdLdVar
  loc_C335E4: FLdPr var_1D0
  loc_C335E7: LateIdSt
  loc_C335EC: FFreeVar var_BC = ""
  loc_C335F3: FLdPr Me
  loc_C335F6: MemLdFPR8 global_108
  loc_C335F9: CStrR8
  loc_C335FB: CVarStr var_BC
  loc_C335FE: PopAdLdVar
  loc_C335FF: FLdPr var_1D0
  loc_C33602: LateIdSt
  loc_C33607: FFree1Var var_BC = ""
  loc_C3360A: LitVarI2 var_94, 2
  loc_C3360F: PopAdLdVar
  loc_C33610: FLdPr var_1D0
  loc_C33613: LateIdSt
  loc_C33618: FLdPr Me
  loc_C3361B: MemLdRfVar from_stack_1.global_136
  loc_C3361E: CVarRef
  loc_C33623: FLdRfVar var_BC
  loc_C33626: ImpAdCallFPR4  = Year()
  loc_C3362B: FLdRfVar var_BC
  loc_C3362E: CStrVarTmp
  loc_C3362F: CVarStr var_CC
  loc_C33632: PopAdLdVar
  loc_C33633: FLdPr var_1D0
  loc_C33636: LateIdSt
  loc_C3363B: FFreeVar var_BC = ""
  loc_C33642: FLdPr Me
  loc_C33645: MemLdFPR8 global_116
  loc_C33648: CStrR8
  loc_C3364A: CVarStr var_BC
  loc_C3364D: PopAdLdVar
  loc_C3364E: FLdPr var_1D0
  loc_C33651: LateIdSt
  loc_C33656: FFree1Var var_BC = ""
  loc_C33659: LitI2_Byte &H19
  loc_C3365B: CR8I2
  loc_C3365C: PopFPR4
  loc_C3365D: LitI2_Byte &HF
  loc_C3365F: CR8I2
  loc_C33660: PopFPR4
  loc_C33661: FLdRfVar var_F4
  loc_C33664: FLdPr var_1D0
  loc_C33667: LateIdLdVar var_BC DispID_40 0
  loc_C3366E: CastAdVar Me
  loc_C33672: FStAdFunc var_A8
  loc_C33675: FLdPr var_A8
  loc_C33678:  = Me.Plot.View3d
  loc_C3367D: FLdPr var_F4
  loc_C33680: Me.Set from_stack_1s, from_stack_2s
  loc_C33685: FFreeAd var_A8 = ""
  loc_C3368C: FFree1Var var_BC = ""
  loc_C3368F: FLdPr var_1D0
  loc_C33692: LateIdCall
  loc_C3369A: LitNothing
  loc_C3369C: FStAd var_1D0 
  loc_C336A0: FLdPrThis
  loc_C336A1: VCallAd Control_ID_Graf1
  loc_C336A4: FStAdFunc var_128
  loc_C336A7: FLdPr Me
  loc_C336AA: VCallAd Control_ID_img1
  loc_C336AD: FStAdFunc var_1D4
  loc_C336B0: LitStr "graf1.bmp"
  loc_C336B3: FLdZeroAd var_1D4
  loc_C336B6: FStAdFunc var_F4
  loc_C336B9: FLdRfVar var_F4
  loc_C336BC: FLdZeroAd var_128
  loc_C336BF: FStAdFunc var_A8
  loc_C336C2: FLdRfVar var_A8
  loc_C336C5: ImpAdCallFPR4 Proc_272_52_AACEC8(, , )
  loc_C336CA: FFreeAd var_A8 = "": var_F4 = "": var_128 = ""
  loc_C336D5: LitI2_Byte &HFF
  loc_C336D7: FLdPr Me
  loc_C336DA: MemStI2 bGenerado
  loc_C336DD: LitI4 0
  loc_C336E2: CI2I4
  loc_C336E3: FLdPr Me
  loc_C336E6: Me.MousePointer = from_stack_1
  loc_C336EB: LitVarStr var_94, vbNullString
  loc_C336F0: PopAdLdVar
  loc_C336F1: FLdPr Me
  loc_C336F4: VCallAd Control_ID_statusBar
  loc_C336F7: FStAdFunc var_A8
  loc_C336FA: FLdPr var_A8
  loc_C336FD: LateIdSt
  loc_C33702: FFree1Ad var_A8
  loc_C33705: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'C0F3A0
  'Data Table: 4AB638
  loc_C0EA14: FLdRfVar var_88
  loc_C0EA17: LitI2_Byte 0
  loc_C0EA19: LitI2_Byte &HFF
  loc_C0EA1B: ImpAdLdI4 MemVar_D93C84
  loc_C0EA1E: FLdPr Me
  loc_C0EA21: MemLdRfVar from_stack_1.global_56
  loc_C0EA24: NewIfNullPr IFileSystem3
  loc_C0EA27: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C0EA2C: ILdRf var_88
  loc_C0EA2F: FLdPr Me
  loc_C0EA32: MemStVarAd
  loc_C0EA36: FFree1Ad var_88
  loc_C0EA39: LitI2_Byte &HFF
  loc_C0EA3B: ImpAdStI2 MemVar_D93C8A
  loc_C0EA3E: Call Proc_117_24_C043E0()
  loc_C0EA43: LitI4 1
  loc_C0EA48: FLdPr Me
  loc_C0EA4B: MemLdRfVar from_stack_1.global_124
  loc_C0EA4E: FLdPr Me
  loc_C0EA51: MemLdStr global_84
  loc_C0EA54: LitI2_Byte 1
  loc_C0EA56: FnUBound
  loc_C0EA58: ForI4 var_90
  loc_C0EA5E: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C0EA63: PopAdLdVar
  loc_C0EA64: FLdPr Me
  loc_C0EA67: MemLdRfVar from_stack_1.global_60
  loc_C0EA6A: LdPrVar
  loc_C0EA6C: LateMemCall
  loc_C0EA72: FLdPr Me
  loc_C0EA75: MemLdStr global_124
  loc_C0EA78: FLdPr Me
  loc_C0EA7B: MemLdStr global_84
  loc_C0EA7E: AryLock
  loc_C0EA81: Ary1LdRf
  loc_C0EA82: FStR4 var_B8
  loc_C0EA85: LitStr vbNullString
  loc_C0EA88: LitI2_Byte 0
  loc_C0EA8A: LitI2_Byte 0
  loc_C0EA8C: LitI2_Byte 0
  loc_C0EA8E: LitStr "right"
  loc_C0EA91: FMemLdR4 var_B8(0)
  loc_C0EA96: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EA9B: CVarStr var_C8
  loc_C0EA9E: PopAdLdVar
  loc_C0EA9F: FLdPr Me
  loc_C0EAA2: MemLdRfVar from_stack_1.global_60
  loc_C0EAA5: LdPrVar
  loc_C0EAA7: LateMemCall
  loc_C0EAAD: FFree1Var var_C8 = ""
  loc_C0EAB0: LitStr vbNullString
  loc_C0EAB3: LitI2_Byte 0
  loc_C0EAB5: LitI2_Byte 0
  loc_C0EAB7: LitI2_Byte 0
  loc_C0EAB9: LitStr "left"
  loc_C0EABC: FMemLdR4 var_B8(4)
  loc_C0EAC1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EAC6: CVarStr var_C8
  loc_C0EAC9: PopAdLdVar
  loc_C0EACA: FLdPr Me
  loc_C0EACD: MemLdRfVar from_stack_1.global_60
  loc_C0EAD0: LdPrVar
  loc_C0EAD2: LateMemCall
  loc_C0EAD8: FFree1Var var_C8 = ""
  loc_C0EADB: LitStr vbNullString
  loc_C0EADE: LitI2_Byte 0
  loc_C0EAE0: LitI2_Byte 0
  loc_C0EAE2: LitI2_Byte 0
  loc_C0EAE4: LitStr "right"
  loc_C0EAE7: FMemLdR4 var_B8(8)
  loc_C0EAEC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EAF1: CVarStr var_C8
  loc_C0EAF4: PopAdLdVar
  loc_C0EAF5: FLdPr Me
  loc_C0EAF8: MemLdRfVar from_stack_1.global_60
  loc_C0EAFB: LdPrVar
  loc_C0EAFD: LateMemCall
  loc_C0EB03: FFree1Var var_C8 = ""
  loc_C0EB06: LitStr vbNullString
  loc_C0EB09: LitI2_Byte 0
  loc_C0EB0B: LitI2_Byte 0
  loc_C0EB0D: LitI2_Byte 0
  loc_C0EB0F: LitStr "right"
  loc_C0EB12: FMemLdR4 var_B8(12)
  loc_C0EB17: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EB1C: CVarStr var_C8
  loc_C0EB1F: PopAdLdVar
  loc_C0EB20: FLdPr Me
  loc_C0EB23: MemLdRfVar from_stack_1.global_60
  loc_C0EB26: LdPrVar
  loc_C0EB28: LateMemCall
  loc_C0EB2E: FFree1Var var_C8 = ""
  loc_C0EB31: LitStr vbNullString
  loc_C0EB34: LitI2_Byte 0
  loc_C0EB36: LitI2_Byte 0
  loc_C0EB38: LitI2_Byte 0
  loc_C0EB3A: LitStr "right"
  loc_C0EB3D: FMemLdR4 var_B8(16)
  loc_C0EB42: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EB47: CVarStr var_C8
  loc_C0EB4A: PopAdLdVar
  loc_C0EB4B: FLdPr Me
  loc_C0EB4E: MemLdRfVar from_stack_1.global_60
  loc_C0EB51: LdPrVar
  loc_C0EB53: LateMemCall
  loc_C0EB59: FFree1Var var_C8 = ""
  loc_C0EB5C: LitStr vbNullString
  loc_C0EB5F: LitI2_Byte 0
  loc_C0EB61: LitI2_Byte 0
  loc_C0EB63: LitI2_Byte 0
  loc_C0EB65: LitStr "right"
  loc_C0EB68: FMemLdR4 var_B8(20)
  loc_C0EB6D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EB72: CVarStr var_C8
  loc_C0EB75: PopAdLdVar
  loc_C0EB76: FLdPr Me
  loc_C0EB79: MemLdRfVar from_stack_1.global_60
  loc_C0EB7C: LdPrVar
  loc_C0EB7E: LateMemCall
  loc_C0EB84: FFree1Var var_C8 = ""
  loc_C0EB87: LitStr vbNullString
  loc_C0EB8A: LitI2_Byte 0
  loc_C0EB8C: LitI2_Byte 0
  loc_C0EB8E: LitI2_Byte 0
  loc_C0EB90: LitStr "right"
  loc_C0EB93: FMemLdR4 var_B8(24)
  loc_C0EB98: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EB9D: CVarStr var_C8
  loc_C0EBA0: PopAdLdVar
  loc_C0EBA1: FLdPr Me
  loc_C0EBA4: MemLdRfVar from_stack_1.global_60
  loc_C0EBA7: LdPrVar
  loc_C0EBA9: LateMemCall
  loc_C0EBAF: FFree1Var var_C8 = ""
  loc_C0EBB2: LitVarStr var_108, "    <td class=""Tilde"" align=""center"">"
  loc_C0EBB7: LitVarStr var_D8, "<span style=""color:#FF0000"">&yacute;</span>"
  loc_C0EBBC: FStVarCopyObj var_E8
  loc_C0EBBF: FLdRfVar var_E8
  loc_C0EBC2: LitVarStr var_B0, "&thorn;"
  loc_C0EBC7: FStVarCopyObj var_C8
  loc_C0EBCA: FLdRfVar var_C8
  loc_C0EBCD: FMemLdRf 0
  loc_C0EBD2: CVarRef
  loc_C0EBD7: FLdRfVar var_F8
  loc_C0EBDA: ImpAdCallFPR4  = IIf(, , )
  loc_C0EBDF: FLdRfVar var_F8
  loc_C0EBE2: ConcatVar var_118
  loc_C0EBE6: LitVarStr var_128, "</td>"
  loc_C0EBEB: ConcatVar var_138
  loc_C0EBEF: PopAdLdVar
  loc_C0EBF0: FLdPr Me
  loc_C0EBF3: MemLdRfVar from_stack_1.global_60
  loc_C0EBF6: LdPrVar
  loc_C0EBF8: LateMemCall
  loc_C0EBFE: FFreeVar var_C8 = "": var_E8 = "": var_F8 = "": var_118 = ""
  loc_C0EC0B: LitStr vbNullString
  loc_C0EC0E: LitI2_Byte 0
  loc_C0EC10: LitI2_Byte 0
  loc_C0EC12: LitI2_Byte 0
  loc_C0EC14: LitStr "right"
  loc_C0EC17: FMemLdR4 var_B8(32)
  loc_C0EC1C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EC21: CVarStr var_C8
  loc_C0EC24: PopAdLdVar
  loc_C0EC25: FLdPr Me
  loc_C0EC28: MemLdRfVar from_stack_1.global_60
  loc_C0EC2B: LdPrVar
  loc_C0EC2D: LateMemCall
  loc_C0EC33: FFree1Var var_C8 = ""
  loc_C0EC36: LitStr vbNullString
  loc_C0EC39: LitI2_Byte 0
  loc_C0EC3B: LitI2_Byte 0
  loc_C0EC3D: LitI2_Byte 0
  loc_C0EC3F: LitStr "right"
  loc_C0EC42: FMemLdR4 var_B8(36)
  loc_C0EC47: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EC4C: CVarStr var_C8
  loc_C0EC4F: PopAdLdVar
  loc_C0EC50: FLdPr Me
  loc_C0EC53: MemLdRfVar from_stack_1.global_60
  loc_C0EC56: LdPrVar
  loc_C0EC58: LateMemCall
  loc_C0EC5E: FFree1Var var_C8 = ""
  loc_C0EC61: LitStr vbNullString
  loc_C0EC64: LitI2_Byte 0
  loc_C0EC66: LitI2_Byte 0
  loc_C0EC68: LitI2_Byte 0
  loc_C0EC6A: LitStr "right"
  loc_C0EC6D: FMemLdR4 var_B8(40)
  loc_C0EC72: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EC77: CVarStr var_C8
  loc_C0EC7A: PopAdLdVar
  loc_C0EC7B: FLdPr Me
  loc_C0EC7E: MemLdRfVar from_stack_1.global_60
  loc_C0EC81: LdPrVar
  loc_C0EC83: LateMemCall
  loc_C0EC89: FFree1Var var_C8 = ""
  loc_C0EC8C: LitStr vbNullString
  loc_C0EC8F: LitI2_Byte 0
  loc_C0EC91: LitI2_Byte 0
  loc_C0EC93: LitI2_Byte 0
  loc_C0EC95: LitStr "right"
  loc_C0EC98: FMemLdR4 var_B8(44)
  loc_C0EC9D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0ECA2: CVarStr var_C8
  loc_C0ECA5: PopAdLdVar
  loc_C0ECA6: FLdPr Me
  loc_C0ECA9: MemLdRfVar from_stack_1.global_60
  loc_C0ECAC: LdPrVar
  loc_C0ECAE: LateMemCall
  loc_C0ECB4: FFree1Var var_C8 = ""
  loc_C0ECB7: LitStr vbNullString
  loc_C0ECBA: LitI2_Byte 0
  loc_C0ECBC: LitI2_Byte 0
  loc_C0ECBE: LitI2_Byte 0
  loc_C0ECC0: LitStr "right"
  loc_C0ECC3: FMemLdR4 var_B8(48)
  loc_C0ECC8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0ECCD: CVarStr var_C8
  loc_C0ECD0: PopAdLdVar
  loc_C0ECD1: FLdPr Me
  loc_C0ECD4: MemLdRfVar from_stack_1.global_60
  loc_C0ECD7: LdPrVar
  loc_C0ECD9: LateMemCall
  loc_C0ECDF: FFree1Var var_C8 = ""
  loc_C0ECE2: LitVarStr var_108, "    <td class=""Tilde"" align=""center"">"
  loc_C0ECE7: LitVarStr var_D8, "<span style=""color:#FF0000"">&yacute;</span>"
  loc_C0ECEC: FStVarCopyObj var_E8
  loc_C0ECEF: FLdRfVar var_E8
  loc_C0ECF2: LitVarStr var_B0, "&thorn;"
  loc_C0ECF7: FStVarCopyObj var_C8
  loc_C0ECFA: FLdRfVar var_C8
  loc_C0ECFD: FMemLdRf 0
  loc_C0ED02: CVarRef
  loc_C0ED07: FLdRfVar var_F8
  loc_C0ED0A: ImpAdCallFPR4  = IIf(, , )
  loc_C0ED0F: FLdRfVar var_F8
  loc_C0ED12: ConcatVar var_118
  loc_C0ED16: LitVarStr var_128, "</td>"
  loc_C0ED1B: ConcatVar var_138
  loc_C0ED1F: PopAdLdVar
  loc_C0ED20: FLdPr Me
  loc_C0ED23: MemLdRfVar from_stack_1.global_60
  loc_C0ED26: LdPrVar
  loc_C0ED28: LateMemCall
  loc_C0ED2E: FFreeVar var_C8 = "": var_E8 = "": var_F8 = "": var_118 = ""
  loc_C0ED3B: LitI4 0
  loc_C0ED40: FStR4 var_B8
  loc_C0ED43: AryUnlock
  loc_C0ED46: LitVarStr var_A0, "     </tr>"
  loc_C0ED4B: PopAdLdVar
  loc_C0ED4C: FLdPr Me
  loc_C0ED4F: MemLdRfVar from_stack_1.global_60
  loc_C0ED52: LdPrVar
  loc_C0ED54: LateMemCall
  loc_C0ED5A: FLdPr Me
  loc_C0ED5D: MemLdRfVar from_stack_1.global_124
  loc_C0ED60: NextI4 var_90, loc_C0EA5E
  loc_C0ED65: LitVarStr var_A0, "    <tr class=""Totales"">"
  loc_C0ED6A: PopAdLdVar
  loc_C0ED6B: FLdPr Me
  loc_C0ED6E: MemLdRfVar from_stack_1.global_60
  loc_C0ED71: LdPrVar
  loc_C0ED73: LateMemCall
  loc_C0ED79: LitVarStr var_A0, "    <td colspan=""2"" align=""right"">Total</td>"
  loc_C0ED7E: PopAdLdVar
  loc_C0ED7F: FLdPr Me
  loc_C0ED82: MemLdRfVar from_stack_1.global_60
  loc_C0ED85: LdPrVar
  loc_C0ED87: LateMemCall
  loc_C0ED8D: LitI4 0
  loc_C0ED92: FLdPr Me
  loc_C0ED95: MemLdStr global_88
  loc_C0ED98: AryLock
  loc_C0ED9B: Ary1LdRf
  loc_C0ED9C: FStR4 var_150
  loc_C0ED9F: LitStr vbNullString
  loc_C0EDA2: LitI2_Byte 0
  loc_C0EDA4: LitI2_Byte 0
  loc_C0EDA6: LitI2_Byte 0
  loc_C0EDA8: LitStr "right"
  loc_C0EDAB: FMemLdR4 var_150(8)
  loc_C0EDB0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EDB5: CVarStr var_C8
  loc_C0EDB8: PopAdLdVar
  loc_C0EDB9: FLdPr Me
  loc_C0EDBC: MemLdRfVar from_stack_1.global_60
  loc_C0EDBF: LdPrVar
  loc_C0EDC1: LateMemCall
  loc_C0EDC7: FFree1Var var_C8 = ""
  loc_C0EDCA: LitStr vbNullString
  loc_C0EDCD: LitI2_Byte 0
  loc_C0EDCF: LitI2_Byte 0
  loc_C0EDD1: LitI2_Byte 0
  loc_C0EDD3: LitStr "right"
  loc_C0EDD6: FMemLdR4 var_150(12)
  loc_C0EDDB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EDE0: CVarStr var_C8
  loc_C0EDE3: PopAdLdVar
  loc_C0EDE4: FLdPr Me
  loc_C0EDE7: MemLdRfVar from_stack_1.global_60
  loc_C0EDEA: LdPrVar
  loc_C0EDEC: LateMemCall
  loc_C0EDF2: FFree1Var var_C8 = ""
  loc_C0EDF5: LitStr vbNullString
  loc_C0EDF8: LitI2_Byte 0
  loc_C0EDFA: LitI2_Byte 0
  loc_C0EDFC: LitI2_Byte 0
  loc_C0EDFE: LitStr "right"
  loc_C0EE01: FMemLdR4 var_150(16)
  loc_C0EE06: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EE0B: CVarStr var_C8
  loc_C0EE0E: PopAdLdVar
  loc_C0EE0F: FLdPr Me
  loc_C0EE12: MemLdRfVar from_stack_1.global_60
  loc_C0EE15: LdPrVar
  loc_C0EE17: LateMemCall
  loc_C0EE1D: FFree1Var var_C8 = ""
  loc_C0EE20: LitStr vbNullString
  loc_C0EE23: LitI2_Byte 0
  loc_C0EE25: LitI2_Byte 0
  loc_C0EE27: LitI2_Byte 0
  loc_C0EE29: LitStr "right"
  loc_C0EE2C: FMemLdR4 var_150(20)
  loc_C0EE31: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EE36: CVarStr var_C8
  loc_C0EE39: PopAdLdVar
  loc_C0EE3A: FLdPr Me
  loc_C0EE3D: MemLdRfVar from_stack_1.global_60
  loc_C0EE40: LdPrVar
  loc_C0EE42: LateMemCall
  loc_C0EE48: FFree1Var var_C8 = ""
  loc_C0EE4B: LitStr vbNullString
  loc_C0EE4E: LitI2_Byte 0
  loc_C0EE50: LitI2_Byte 0
  loc_C0EE52: LitI2_Byte 0
  loc_C0EE54: LitStr "right"
  loc_C0EE57: FMemLdR4 var_150(24)
  loc_C0EE5C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EE61: CVarStr var_C8
  loc_C0EE64: PopAdLdVar
  loc_C0EE65: FLdPr Me
  loc_C0EE68: MemLdRfVar from_stack_1.global_60
  loc_C0EE6B: LdPrVar
  loc_C0EE6D: LateMemCall
  loc_C0EE73: FFree1Var var_C8 = ""
  loc_C0EE76: LitStr vbNullString
  loc_C0EE79: LitI2_Byte 0
  loc_C0EE7B: LitI2_Byte 0
  loc_C0EE7D: LitI2_Byte 0
  loc_C0EE7F: LitStr "center"
  loc_C0EE82: LitStr vbNullString
  loc_C0EE85: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EE8A: CVarStr var_C8
  loc_C0EE8D: PopAdLdVar
  loc_C0EE8E: FLdPr Me
  loc_C0EE91: MemLdRfVar from_stack_1.global_60
  loc_C0EE94: LdPrVar
  loc_C0EE96: LateMemCall
  loc_C0EE9C: FFree1Var var_C8 = ""
  loc_C0EE9F: LitStr vbNullString
  loc_C0EEA2: LitI2_Byte 0
  loc_C0EEA4: LitI2_Byte 0
  loc_C0EEA6: LitI2_Byte 0
  loc_C0EEA8: LitStr "right"
  loc_C0EEAB: FMemLdR4 var_150(32)
  loc_C0EEB0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EEB5: CVarStr var_C8
  loc_C0EEB8: PopAdLdVar
  loc_C0EEB9: FLdPr Me
  loc_C0EEBC: MemLdRfVar from_stack_1.global_60
  loc_C0EEBF: LdPrVar
  loc_C0EEC1: LateMemCall
  loc_C0EEC7: FFree1Var var_C8 = ""
  loc_C0EECA: LitStr vbNullString
  loc_C0EECD: LitI2_Byte 0
  loc_C0EECF: LitI2_Byte 0
  loc_C0EED1: LitI2_Byte 0
  loc_C0EED3: LitStr "right"
  loc_C0EED6: FMemLdR4 var_150(36)
  loc_C0EEDB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EEE0: CVarStr var_C8
  loc_C0EEE3: PopAdLdVar
  loc_C0EEE4: FLdPr Me
  loc_C0EEE7: MemLdRfVar from_stack_1.global_60
  loc_C0EEEA: LdPrVar
  loc_C0EEEC: LateMemCall
  loc_C0EEF2: FFree1Var var_C8 = ""
  loc_C0EEF5: LitStr vbNullString
  loc_C0EEF8: LitI2_Byte 0
  loc_C0EEFA: LitI2_Byte 0
  loc_C0EEFC: LitI2_Byte 0
  loc_C0EEFE: LitStr "right"
  loc_C0EF01: FMemLdR4 var_150(40)
  loc_C0EF06: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EF0B: CVarStr var_C8
  loc_C0EF0E: PopAdLdVar
  loc_C0EF0F: FLdPr Me
  loc_C0EF12: MemLdRfVar from_stack_1.global_60
  loc_C0EF15: LdPrVar
  loc_C0EF17: LateMemCall
  loc_C0EF1D: FFree1Var var_C8 = ""
  loc_C0EF20: LitStr vbNullString
  loc_C0EF23: LitI2_Byte 0
  loc_C0EF25: LitI2_Byte 0
  loc_C0EF27: LitI2_Byte 0
  loc_C0EF29: LitStr "right"
  loc_C0EF2C: FMemLdR4 var_150(44)
  loc_C0EF31: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EF36: CVarStr var_C8
  loc_C0EF39: PopAdLdVar
  loc_C0EF3A: FLdPr Me
  loc_C0EF3D: MemLdRfVar from_stack_1.global_60
  loc_C0EF40: LdPrVar
  loc_C0EF42: LateMemCall
  loc_C0EF48: FFree1Var var_C8 = ""
  loc_C0EF4B: LitStr vbNullString
  loc_C0EF4E: LitI2_Byte 0
  loc_C0EF50: LitI2_Byte 0
  loc_C0EF52: LitI2_Byte 0
  loc_C0EF54: LitStr "right"
  loc_C0EF57: FMemLdR4 var_150(48)
  loc_C0EF5C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EF61: CVarStr var_C8
  loc_C0EF64: PopAdLdVar
  loc_C0EF65: FLdPr Me
  loc_C0EF68: MemLdRfVar from_stack_1.global_60
  loc_C0EF6B: LdPrVar
  loc_C0EF6D: LateMemCall
  loc_C0EF73: FFree1Var var_C8 = ""
  loc_C0EF76: LitStr vbNullString
  loc_C0EF79: LitI2_Byte 0
  loc_C0EF7B: LitI2_Byte 0
  loc_C0EF7D: LitI2_Byte 0
  loc_C0EF7F: LitStr "center"
  loc_C0EF82: LitStr vbNullString
  loc_C0EF85: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0EF8A: CVarStr var_C8
  loc_C0EF8D: PopAdLdVar
  loc_C0EF8E: FLdPr Me
  loc_C0EF91: MemLdRfVar from_stack_1.global_60
  loc_C0EF94: LdPrVar
  loc_C0EF96: LateMemCall
  loc_C0EF9C: FFree1Var var_C8 = ""
  loc_C0EF9F: LitI4 0
  loc_C0EFA4: FStR4 var_150
  loc_C0EFA7: AryUnlock
  loc_C0EFAA: LitVarStr var_A0, "     </tr>"
  loc_C0EFAF: PopAdLdVar
  loc_C0EFB0: FLdPr Me
  loc_C0EFB3: MemLdRfVar from_stack_1.global_60
  loc_C0EFB6: LdPrVar
  loc_C0EFB8: LateMemCall
  loc_C0EFBE: LitVarStr var_A0, "</table>"
  loc_C0EFC3: PopAdLdVar
  loc_C0EFC4: FLdPr Me
  loc_C0EFC7: MemLdRfVar from_stack_1.global_60
  loc_C0EFCA: LdPrVar
  loc_C0EFCC: LateMemCall
  loc_C0EFD2: LitVarStr var_A0, "<table align=""center"" border=""0"" class=""Normal"" cellpadding=""1"" cellspacing=""1"">"
  loc_C0EFD7: PopAdLdVar
  loc_C0EFD8: FLdPr Me
  loc_C0EFDB: MemLdRfVar from_stack_1.global_60
  loc_C0EFDE: LdPrVar
  loc_C0EFE0: LateMemCall
  loc_C0EFE6: LitVarStr var_A0, " <tr valign=""bottom"" align=""right"">"
  loc_C0EFEB: PopAdLdVar
  loc_C0EFEC: FLdPr Me
  loc_C0EFEF: MemLdRfVar from_stack_1.global_60
  loc_C0EFF2: LdPrVar
  loc_C0EFF4: LateMemCall
  loc_C0EFFA: LitVarStr var_A0, "   <td><table class=""Normal"" align=""left"" border=""1"" cellpadding=""5"" cellspacing=""0"">"
  loc_C0EFFF: PopAdLdVar
  loc_C0F000: FLdPr Me
  loc_C0F003: MemLdRfVar from_stack_1.global_60
  loc_C0F006: LdPrVar
  loc_C0F008: LateMemCall
  loc_C0F00E: LitVarStr var_A0, "    <tr valign=""top"" align=""center"">"
  loc_C0F013: PopAdLdVar
  loc_C0F014: FLdPr Me
  loc_C0F017: MemLdRfVar from_stack_1.global_60
  loc_C0F01A: LdPrVar
  loc_C0F01C: LateMemCall
  loc_C0F022: LitVarStr var_A0, "      <td>&nbsp;</td>"
  loc_C0F027: PopAdLdVar
  loc_C0F028: FLdPr Me
  loc_C0F02B: MemLdRfVar from_stack_1.global_60
  loc_C0F02E: LdPrVar
  loc_C0F030: LateMemCall
  loc_C0F036: LitVarStr var_A0, "      <td>Aforos</td>"
  loc_C0F03B: PopAdLdVar
  loc_C0F03C: FLdPr Me
  loc_C0F03F: MemLdRfVar from_stack_1.global_60
  loc_C0F042: LdPrVar
  loc_C0F044: LateMemCall
  loc_C0F04A: LitVarStr var_A0, "      <td>Pagos</td>"
  loc_C0F04F: PopAdLdVar
  loc_C0F050: FLdPr Me
  loc_C0F053: MemLdRfVar from_stack_1.global_60
  loc_C0F056: LdPrVar
  loc_C0F058: LateMemCall
  loc_C0F05E: LitVarStr var_A0, "      <td>Proporción</td>"
  loc_C0F063: PopAdLdVar
  loc_C0F064: FLdPr Me
  loc_C0F067: MemLdRfVar from_stack_1.global_60
  loc_C0F06A: LdPrVar
  loc_C0F06C: LateMemCall
  loc_C0F072: LitVarStr var_A0, "    </tr>"
  loc_C0F077: PopAdLdVar
  loc_C0F078: FLdPr Me
  loc_C0F07B: MemLdRfVar from_stack_1.global_60
  loc_C0F07E: LdPrVar
  loc_C0F080: LateMemCall
  loc_C0F086: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_C0F08B: PopAdLdVar
  loc_C0F08C: FLdPr Me
  loc_C0F08F: MemLdRfVar from_stack_1.global_60
  loc_C0F092: LdPrVar
  loc_C0F094: LateMemCall
  loc_C0F09A: LitVarStr var_B0, "      <td>"
  loc_C0F09F: FLdPr Me
  loc_C0F0A2: MemLdRfVar from_stack_1.global_128
  loc_C0F0A5: CVarRef
  loc_C0F0AA: FLdRfVar var_C8
  loc_C0F0AD: ImpAdCallFPR4  = Year()
  loc_C0F0B2: FLdRfVar var_C8
  loc_C0F0B5: ConcatVar var_E8
  loc_C0F0B9: LitVarStr var_D8, "</td>"
  loc_C0F0BE: ConcatVar var_F8
  loc_C0F0C2: PopAdLdVar
  loc_C0F0C3: FLdPr Me
  loc_C0F0C6: MemLdRfVar from_stack_1.global_60
  loc_C0F0C9: LdPrVar
  loc_C0F0CB: LateMemCall
  loc_C0F0D1: FFreeVar var_C8 = "": var_E8 = ""
  loc_C0F0DA: LitStr "      <td>"
  loc_C0F0DD: LitI4 -1
  loc_C0F0E2: LitI4 0
  loc_C0F0E7: LitI4 -1
  loc_C0F0EC: LitI4 0
  loc_C0F0F1: FLdPr Me
  loc_C0F0F4: MemLdRfVar from_stack_1.global_92
  loc_C0F0F7: CVarRef
  loc_C0F0FC: ImpAdCallI2 FormatNumber(, , , , )
  loc_C0F101: FStStrNoPop var_154
  loc_C0F104: ConcatStr
  loc_C0F105: FStStrNoPop var_158
  loc_C0F108: LitStr "</td>"
  loc_C0F10B: ConcatStr
  loc_C0F10C: CVarStr var_C8
  loc_C0F10F: PopAdLdVar
  loc_C0F110: FLdPr Me
  loc_C0F113: MemLdRfVar from_stack_1.global_60
  loc_C0F116: LdPrVar
  loc_C0F118: LateMemCall
  loc_C0F11E: FFreeStr var_154 = ""
  loc_C0F125: FFree1Var var_C8 = ""
  loc_C0F128: LitStr "      <td>"
  loc_C0F12B: LitI4 -1
  loc_C0F130: LitI4 0
  loc_C0F135: LitI4 -1
  loc_C0F13A: LitI4 0
  loc_C0F13F: FLdPr Me
  loc_C0F142: MemLdRfVar from_stack_1.global_96
  loc_C0F145: CVarRef
  loc_C0F14A: ImpAdCallI2 FormatNumber(, , , , )
  loc_C0F14F: FStStrNoPop var_154
  loc_C0F152: ConcatStr
  loc_C0F153: FStStrNoPop var_158
  loc_C0F156: LitStr "</td>"
  loc_C0F159: ConcatStr
  loc_C0F15A: CVarStr var_C8
  loc_C0F15D: PopAdLdVar
  loc_C0F15E: FLdPr Me
  loc_C0F161: MemLdRfVar from_stack_1.global_60
  loc_C0F164: LdPrVar
  loc_C0F166: LateMemCall
  loc_C0F16C: FFreeStr var_154 = ""
  loc_C0F173: FFree1Var var_C8 = ""
  loc_C0F176: LitStr "      <td align=""center"">"
  loc_C0F179: LitI4 1
  loc_C0F17E: LitI4 1
  loc_C0F183: LitVarStr var_B0, "##0" & Chr(37)
  loc_C0F188: FStVarCopyObj var_C8
  loc_C0F18B: FLdRfVar var_C8
  loc_C0F18E: FLdPr Me
  loc_C0F191: MemLdRfVar from_stack_1.global_108
  loc_C0F194: CVarRef
  loc_C0F199: ImpAdCallI2 Format$(, )
  loc_C0F19E: FStStrNoPop var_154
  loc_C0F1A1: ConcatStr
  loc_C0F1A2: FStStrNoPop var_158
  loc_C0F1A5: LitStr "</td>"
  loc_C0F1A8: ConcatStr
  loc_C0F1A9: CVarStr var_E8
  loc_C0F1AC: PopAdLdVar
  loc_C0F1AD: FLdPr Me
  loc_C0F1B0: MemLdRfVar from_stack_1.global_60
  loc_C0F1B3: LdPrVar
  loc_C0F1B5: LateMemCall
  loc_C0F1BB: FFreeStr var_154 = ""
  loc_C0F1C2: FFreeVar var_C8 = ""
  loc_C0F1C9: LitVarStr var_A0, "    </tr>"
  loc_C0F1CE: PopAdLdVar
  loc_C0F1CF: FLdPr Me
  loc_C0F1D2: MemLdRfVar from_stack_1.global_60
  loc_C0F1D5: LdPrVar
  loc_C0F1D7: LateMemCall
  loc_C0F1DD: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_C0F1E2: PopAdLdVar
  loc_C0F1E3: FLdPr Me
  loc_C0F1E6: MemLdRfVar from_stack_1.global_60
  loc_C0F1E9: LdPrVar
  loc_C0F1EB: LateMemCall
  loc_C0F1F1: LitVarStr var_B0, "      <td>"
  loc_C0F1F6: FLdPr Me
  loc_C0F1F9: MemLdRfVar from_stack_1.global_136
  loc_C0F1FC: CVarRef
  loc_C0F201: FLdRfVar var_C8
  loc_C0F204: ImpAdCallFPR4  = Year()
  loc_C0F209: FLdRfVar var_C8
  loc_C0F20C: ConcatVar var_E8
  loc_C0F210: LitVarStr var_D8, "</td>"
  loc_C0F215: ConcatVar var_F8
  loc_C0F219: PopAdLdVar
  loc_C0F21A: FLdPr Me
  loc_C0F21D: MemLdRfVar from_stack_1.global_60
  loc_C0F220: LdPrVar
  loc_C0F222: LateMemCall
  loc_C0F228: FFreeVar var_C8 = "": var_E8 = ""
  loc_C0F231: LitStr "      <td>"
  loc_C0F234: LitI4 -1
  loc_C0F239: LitI4 0
  loc_C0F23E: LitI4 -1
  loc_C0F243: LitI4 0
  loc_C0F248: FLdPr Me
  loc_C0F24B: MemLdRfVar from_stack_1.global_100
  loc_C0F24E: CVarRef
  loc_C0F253: ImpAdCallI2 FormatNumber(, , , , )
  loc_C0F258: FStStrNoPop var_154
  loc_C0F25B: ConcatStr
  loc_C0F25C: FStStrNoPop var_158
  loc_C0F25F: LitStr "</td>"
  loc_C0F262: ConcatStr
  loc_C0F263: CVarStr var_C8
  loc_C0F266: PopAdLdVar
  loc_C0F267: FLdPr Me
  loc_C0F26A: MemLdRfVar from_stack_1.global_60
  loc_C0F26D: LdPrVar
  loc_C0F26F: LateMemCall
  loc_C0F275: FFreeStr var_154 = ""
  loc_C0F27C: FFree1Var var_C8 = ""
  loc_C0F27F: LitStr "      <td>"
  loc_C0F282: LitI4 -1
  loc_C0F287: LitI4 0
  loc_C0F28C: LitI4 -1
  loc_C0F291: LitI4 0
  loc_C0F296: FLdPr Me
  loc_C0F299: MemLdRfVar from_stack_1.global_104
  loc_C0F29C: CVarRef
  loc_C0F2A1: ImpAdCallI2 FormatNumber(, , , , )
  loc_C0F2A6: FStStrNoPop var_154
  loc_C0F2A9: ConcatStr
  loc_C0F2AA: FStStrNoPop var_158
  loc_C0F2AD: LitStr "</td>"
  loc_C0F2B0: ConcatStr
  loc_C0F2B1: CVarStr var_C8
  loc_C0F2B4: PopAdLdVar
  loc_C0F2B5: FLdPr Me
  loc_C0F2B8: MemLdRfVar from_stack_1.global_60
  loc_C0F2BB: LdPrVar
  loc_C0F2BD: LateMemCall
  loc_C0F2C3: FFreeStr var_154 = ""
  loc_C0F2CA: FFree1Var var_C8 = ""
  loc_C0F2CD: LitStr "      <td align=""center"">"
  loc_C0F2D0: LitI4 1
  loc_C0F2D5: LitI4 1
  loc_C0F2DA: LitVarStr var_B0, "##0" & Chr(37)
  loc_C0F2DF: FStVarCopyObj var_C8
  loc_C0F2E2: FLdRfVar var_C8
  loc_C0F2E5: FLdPr Me
  loc_C0F2E8: MemLdRfVar from_stack_1.global_116
  loc_C0F2EB: CVarRef
  loc_C0F2F0: ImpAdCallI2 Format$(, )
  loc_C0F2F5: FStStrNoPop var_154
  loc_C0F2F8: ConcatStr
  loc_C0F2F9: FStStrNoPop var_158
  loc_C0F2FC: LitStr "</td>"
  loc_C0F2FF: ConcatStr
  loc_C0F300: CVarStr var_E8
  loc_C0F303: PopAdLdVar
  loc_C0F304: FLdPr Me
  loc_C0F307: MemLdRfVar from_stack_1.global_60
  loc_C0F30A: LdPrVar
  loc_C0F30C: LateMemCall
  loc_C0F312: FFreeStr var_154 = ""
  loc_C0F319: FFreeVar var_C8 = ""
  loc_C0F320: LitVarStr var_A0, "    </tr>"
  loc_C0F325: PopAdLdVar
  loc_C0F326: FLdPr Me
  loc_C0F329: MemLdRfVar from_stack_1.global_60
  loc_C0F32C: LdPrVar
  loc_C0F32E: LateMemCall
  loc_C0F334: LitVarStr var_A0, "   </table></td>"
  loc_C0F339: PopAdLdVar
  loc_C0F33A: FLdPr Me
  loc_C0F33D: MemLdRfVar from_stack_1.global_60
  loc_C0F340: LdPrVar
  loc_C0F342: LateMemCall
  loc_C0F348: LitVarStr var_A0, "   <td><img src=""graf1.bmp""></td>"
  loc_C0F34D: PopAdLdVar
  loc_C0F34E: FLdPr Me
  loc_C0F351: MemLdRfVar from_stack_1.global_60
  loc_C0F354: LdPrVar
  loc_C0F356: LateMemCall
  loc_C0F35C: LitVarStr var_A0, " </tr>"
  loc_C0F361: PopAdLdVar
  loc_C0F362: FLdPr Me
  loc_C0F365: MemLdRfVar from_stack_1.global_60
  loc_C0F368: LdPrVar
  loc_C0F36A: LateMemCall
  loc_C0F370: LitVarStr var_A0, "</table>"
  loc_C0F375: PopAdLdVar
  loc_C0F376: FLdPr Me
  loc_C0F379: MemLdRfVar from_stack_1.global_60
  loc_C0F37C: LdPrVar
  loc_C0F37E: LateMemCall
  loc_C0F384: Call Proc_117_25_A0DA98()
  loc_C0F389: FLdPr Me
  loc_C0F38C: MemLdRfVar from_stack_1.global_60
  loc_C0F38F: LdPrVar
  loc_C0F391: LateMemCall
  loc_C0F397: LitStr vbNullString
  loc_C0F39A: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_C0F39F: ExitProcHresult
End Sub

Private Function Proc_117_22_B0532C(arg_C, arg_10) 'B0532C
  'Data Table: 4AB638
  loc_B051B0: ILdRf arg_C
  loc_B051B3: FStStrCopy var_88
  loc_B051B6: ILdRf arg_10
  loc_B051B9: FStStrCopy var_8C
  loc_B051BC: FLdPr Me
  loc_B051BF: MemLdRfVar from_stack_1.global_76
  loc_B051C2: NewIfNullAd
  loc_B051C5: FStAd var_90 
  loc_B051C9: LitStr " INSERT INTO c"
  loc_B051CC: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, ctacte.CodiConc, sum(DebeCtct) as DebeCtct, 0 as CredCtct, 0 as ExenCtct, 0 as DescCtct"
  loc_B051CF: ConcatStr
  loc_B051D0: FStStrNoPop var_94
  loc_B051D3: LitStr " FROM ctacte "
  loc_B051D6: ConcatStr
  loc_B051D7: FStStrNoPop var_98
  loc_B051DA: LitStr " INNER JOIN concepto ON  concepto.PeriInfo = "
  loc_B051DD: ConcatStr
  loc_B051DE: FStStrNoPop var_9C
  loc_B051E1: ImpAdLdI2 MemVar_D93034
  loc_B051E4: CStrUI1
  loc_B051E6: FStStrNoPop var_A0
  loc_B051E9: ConcatStr
  loc_B051EA: FStStrNoPop var_A4
  loc_B051ED: LitStr " AND concepto.CodiConc = ctacte.CodiConc "
  loc_B051F0: ConcatStr
  loc_B051F1: FStStrNoPop var_A8
  loc_B051F4: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_B051F7: ConcatStr
  loc_B051F8: FStStrNoPop var_AC
  loc_B051FB: ILdRf var_88
  loc_B051FE: ConcatStr
  loc_B051FF: FStStrNoPop var_B0
  loc_B05202: LitStr "' AND '"
  loc_B05205: ConcatStr
  loc_B05206: FStStrNoPop var_B4
  loc_B05209: ILdRf var_8C
  loc_B0520C: ConcatStr
  loc_B0520D: FStStrNoPop var_B8
  loc_B05210: LitStr "' AND CodiTimo = 1"
  loc_B05213: ConcatStr
  loc_B05214: FStStrNoPop var_BC
  loc_B05217: LitStr " AND concepto.ActiConc = '"
  loc_B0521A: ConcatStr
  loc_B0521B: FStStrNoPop var_D4
  loc_B0521E: FLdPr Me
  loc_B05221: VCallAd Control_ID_ActiConcMsk
  loc_B05224: FStAdFunc var_C0
  loc_B05227: FLdPr var_C0
  loc_B0522A: LateIdLdVar var_D0 DispID_22 0
  loc_B05231: CStrVarTmp
  loc_B05232: FStStrNoPop var_D8
  loc_B05235: ConcatStr
  loc_B05236: FStStrNoPop var_DC
  loc_B05239: LitStr "'"
  loc_B0523C: ConcatStr
  loc_B0523D: FStStrNoPop var_E0
  loc_B05240: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, ctacte.CodiConc;"
  loc_B05243: ConcatStr
  loc_B05244: FStStrNoPop var_E4
  loc_B05247: LitStr " INSERT INTO c"
  loc_B0524A: ConcatStr
  loc_B0524B: FStStrNoPop var_E8
  loc_B0524E: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, histoctacte.CodiConc, sum(DebeCtct) as DebeCtct, 0 as CredCtct, 0 as ExenCtct, 0 as DescCtct"
  loc_B05251: ConcatStr
  loc_B05252: FStStrNoPop var_EC
  loc_B05255: LitStr " FROM recahisto.histoctacte "
  loc_B05258: ConcatStr
  loc_B05259: FStStrNoPop var_F0
  loc_B0525C: LitStr " INNER JOIN concepto ON  concepto.PeriInfo = "
  loc_B0525F: ConcatStr
  loc_B05260: FStStrNoPop var_F4
  loc_B05263: ImpAdLdI2 MemVar_D93034
  loc_B05266: CStrUI1
  loc_B05268: FStStrNoPop var_F8
  loc_B0526B: ConcatStr
  loc_B0526C: FStStrNoPop var_FC
  loc_B0526F: LitStr " AND concepto.CodiConc = histoctacte.CodiConc "
  loc_B05272: ConcatStr
  loc_B05273: FStStrNoPop var_100
  loc_B05276: LitStr " WHERE histoctacte.FealCtct BETWEEN '"
  loc_B05279: ConcatStr
  loc_B0527A: FStStrNoPop var_104
  loc_B0527D: ILdRf var_88
  loc_B05280: ConcatStr
  loc_B05281: FStStrNoPop var_108
  loc_B05284: LitStr "' AND '"
  loc_B05287: ConcatStr
  loc_B05288: FStStrNoPop var_10C
  loc_B0528B: ILdRf var_8C
  loc_B0528E: ConcatStr
  loc_B0528F: FStStrNoPop var_110
  loc_B05292: LitStr "' AND CodiTimo = 1"
  loc_B05295: ConcatStr
  loc_B05296: FStStrNoPop var_114
  loc_B05299: LitStr " AND concepto.ActiConc = '"
  loc_B0529C: ConcatStr
  loc_B0529D: FStStrNoPop var_12C
  loc_B052A0: FLdPr Me
  loc_B052A3: VCallAd Control_ID_ActiConcMsk
  loc_B052A6: FStAdFunc var_118
  loc_B052A9: FLdPr var_118
  loc_B052AC: LateIdLdVar var_128 DispID_22 0
  loc_B052B3: CStrVarTmp
  loc_B052B4: FStStrNoPop var_130
  loc_B052B7: ConcatStr
  loc_B052B8: FStStrNoPop var_134
  loc_B052BB: LitStr "'"
  loc_B052BE: ConcatStr
  loc_B052BF: FStStrNoPop var_138
  loc_B052C2: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, histoctacte.CodiConc;"
  loc_B052C5: ConcatStr
  loc_B052C6: FStStrNoPop var_13C
  loc_B052C9: FLdPr var_90
  loc_B052CC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B052D1: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_12C = ""
  loc_B05316: FFreeAd var_C0 = ""
  loc_B0531D: FFreeVar var_D0 = ""
  loc_B05324: LitNothing
  loc_B05326: FStAd var_90 
  loc_B0532A: ExitProcHresult
End Function

Private Function Proc_117_23_B1F37C(arg_C) 'B1F37C
  'Data Table: 4AB638
  loc_B1F120: ILdRf arg_C
  loc_B1F123: FStStrCopy var_88
  loc_B1F126: FLdPr Me
  loc_B1F129: MemLdRfVar from_stack_1.global_76
  loc_B1F12C: NewIfNullAd
  loc_B1F12F: FStAd var_8C 
  loc_B1F133: LitStr " DROP TEMPORARY TABLE IF EXISTS "
  loc_B1F136: ILdRf var_88
  loc_B1F139: ConcatStr
  loc_B1F13A: FStStrNoPop var_90
  loc_B1F13D: LitStr ";"
  loc_B1F140: ConcatStr
  loc_B1F141: FStStrNoPop var_94
  loc_B1F144: LitStr " CREATE TEMPORARY TABLE "
  loc_B1F147: ConcatStr
  loc_B1F148: FStStrNoPop var_98
  loc_B1F14B: ILdRf var_88
  loc_B1F14E: ConcatStr
  loc_B1F14F: FStStrNoPop var_9C
  loc_B1F152: LitStr " ("
  loc_B1F155: ConcatStr
  loc_B1F156: FStStrNoPop var_A0
  loc_B1F159: LitStr "   odiOfic` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_B1F15C: ConcatStr
  loc_B1F15D: FStStrNoPop var_A4
  loc_B1F160: LitStr "   uenCtct` char(11) NOT NULL DEFAULT '',"
  loc_B1F163: ConcatStr
  loc_B1F164: FStStrNoPop var_A8
  loc_B1F167: LitStr "   eriCtct` year(4) NOT NULL DEFAULT '0000',"
  loc_B1F16A: ConcatStr
  loc_B1F16B: FStStrNoPop var_AC
  loc_B1F16E: LitStr "   imeCtct` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_B1F171: ConcatStr
  loc_B1F172: FStStrNoPop var_B0
  loc_B1F175: LitStr "   umeCtct` int(10) unsigned NOT NULL DEFAULT '0',"
  loc_B1F178: ConcatStr
  loc_B1F179: FStStrNoPop var_B4
  loc_B1F17C: LitStr "   odiConc` char(8) NOT NULL default '', "
  loc_B1F17F: ConcatStr
  loc_B1F180: FStStrNoPop var_B8
  loc_B1F183: LitStr "   ebeCtct` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B1F186: ConcatStr
  loc_B1F187: FStStrNoPop var_BC
  loc_B1F18A: LitStr "   redCtct` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B1F18D: ConcatStr
  loc_B1F18E: FStStrNoPop var_C0
  loc_B1F191: LitStr "   xenCtct` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B1F194: ConcatStr
  loc_B1F195: FStStrNoPop var_C4
  loc_B1F198: LitStr "   escCtct` decimal(10,2) NOT NULL DEFAULT '0.00'"
  loc_B1F19B: ConcatStr
  loc_B1F19C: FStStrNoPop var_C8
  loc_B1F19F: LitStr " ) ENGINE=memory DEFAULT CHARSET=latin1;"
  loc_B1F1A2: ConcatStr
  loc_B1F1A3: FStStrNoPop var_CC
  loc_B1F1A6: LitStr " INSERT INTO "
  loc_B1F1A9: ConcatStr
  loc_B1F1AA: FStStrNoPop var_D0
  loc_B1F1AD: ILdRf var_88
  loc_B1F1B0: ConcatStr
  loc_B1F1B1: FStStrNoPop var_D4
  loc_B1F1B4: LitStr " SELECT * FROM c;"
  loc_B1F1B7: ConcatStr
  loc_B1F1B8: FStStrNoPop var_D8
  loc_B1F1BB: FLdPr var_8C
  loc_B1F1BE: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B1F1C3: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B1F1EC: LitStr " INSERT INTO "
  loc_B1F1EF: ILdRf var_88
  loc_B1F1F2: ConcatStr
  loc_B1F1F3: FStStrNoPop var_90
  loc_B1F1F6: LitStr " SELECT c.CodiOfic, c.CuenCtct, c.PeriCtct, c.BimeCtct, c.NumeCtct, c.CodiConc, 0 as DebeCtct, sum(ctacte.CredCtct) as CredCtct, 0 as ExenCtct, 0 as DescCtct"
  loc_B1F1F9: ConcatStr
  loc_B1F1FA: FStStrNoPop var_94
  loc_B1F1FD: LitStr " FROM c"
  loc_B1F200: ConcatStr
  loc_B1F201: FStStrNoPop var_98
  loc_B1F204: LitStr " LEFT JOIN ctacte ON ctacte.CodiOfic = c.CodiOfic AND ctacte.CuenCtct = c.CuenCtct AND ctacte.PeriCtct = c.PeriCtct AND ctacte.BimeCtct = c.BimeCtct AND ctacte.NumeCtct = c.NumeCtct AND ctacte.CodiConc = c.CodiConc"
  loc_B1F207: ConcatStr
  loc_B1F208: FStStrNoPop var_9C
  loc_B1F20B: LitStr " WHERE CodiTimo in (2,5,21)"
  loc_B1F20E: ConcatStr
  loc_B1F20F: FStStrNoPop var_A0
  loc_B1F212: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, CodiConc;"
  loc_B1F215: ConcatStr
  loc_B1F216: FStStrNoPop var_A4
  loc_B1F219: LitStr " INSERT INTO "
  loc_B1F21C: ConcatStr
  loc_B1F21D: FStStrNoPop var_A8
  loc_B1F220: ILdRf var_88
  loc_B1F223: ConcatStr
  loc_B1F224: FStStrNoPop var_AC
  loc_B1F227: LitStr " SELECT c.CodiOfic, c.CuenCtct, c.PeriCtct, c.BimeCtct, c.NumeCtct, c.CodiConc, 0 as DebeCtct, sum(histoctacte.CredCtct) as CredCtct, 0 as ExenCtct, 0 as DescCtct"
  loc_B1F22A: ConcatStr
  loc_B1F22B: FStStrNoPop var_B0
  loc_B1F22E: LitStr " FROM c"
  loc_B1F231: ConcatStr
  loc_B1F232: FStStrNoPop var_B4
  loc_B1F235: LitStr " LEFT JOIN recahisto.histoctacte ON histoctacte.CodiOfic = c.CodiOfic AND histoctacte.CuenCtct = c.CuenCtct AND histoctacte.PeriCtct = c.PeriCtct AND histoctacte.BimeCtct = c.BimeCtct AND histoctacte.NumeCtct = c.NumeCtct AND histoctacte.CodiConc = c.CodiConc"
  loc_B1F238: ConcatStr
  loc_B1F239: FStStrNoPop var_B8
  loc_B1F23C: LitStr " WHERE CodiTimo in (2,5,21) "
  loc_B1F23F: ConcatStr
  loc_B1F240: FStStrNoPop var_BC
  loc_B1F243: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, CodiConc;"
  loc_B1F246: ConcatStr
  loc_B1F247: FStStrNoPop var_C0
  loc_B1F24A: FLdPr var_8C
  loc_B1F24D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B1F252: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1F26F: LitStr " INSERT INTO "
  loc_B1F272: ILdRf var_88
  loc_B1F275: ConcatStr
  loc_B1F276: FStStrNoPop var_90
  loc_B1F279: LitStr " SELECT c.CodiOfic, c.CuenCtct, c.PeriCtct, c.BimeCtct, c.NumeCtct, c.CodiConc, 0 as DebeCtct, 0 as CredCtct, sum(ctacte.CredCtct) as ExenCtct, 0 as DescCtct"
  loc_B1F27C: ConcatStr
  loc_B1F27D: FStStrNoPop var_94
  loc_B1F280: LitStr " FROM c"
  loc_B1F283: ConcatStr
  loc_B1F284: FStStrNoPop var_98
  loc_B1F287: LitStr " LEFT JOIN ctacte ON ctacte.CodiOfic = c.CodiOfic AND ctacte.CuenCtct = c.CuenCtct AND ctacte.PeriCtct = c.PeriCtct AND ctacte.BimeCtct = c.BimeCtct AND ctacte.NumeCtct = c.NumeCtct AND ctacte.CodiConc = c.CodiConc"
  loc_B1F28A: ConcatStr
  loc_B1F28B: FStStrNoPop var_9C
  loc_B1F28E: LitStr " WHERE CodiTimo=15"
  loc_B1F291: ConcatStr
  loc_B1F292: FStStrNoPop var_A0
  loc_B1F295: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, CodiConc;"
  loc_B1F298: ConcatStr
  loc_B1F299: FStStrNoPop var_A4
  loc_B1F29C: LitStr " INSERT INTO "
  loc_B1F29F: ConcatStr
  loc_B1F2A0: FStStrNoPop var_A8
  loc_B1F2A3: ILdRf var_88
  loc_B1F2A6: ConcatStr
  loc_B1F2A7: FStStrNoPop var_AC
  loc_B1F2AA: LitStr " SELECT c.CodiOfic, c.CuenCtct, c.PeriCtct, c.BimeCtct, c.NumeCtct, c.CodiConc, 0 as DebeCtct, 0 as CredCtct, sum(histoctacte.CredCtct) as ExenCtct, 0 as DescCtct"
  loc_B1F2AD: ConcatStr
  loc_B1F2AE: FStStrNoPop var_B0
  loc_B1F2B1: LitStr " FROM c"
  loc_B1F2B4: ConcatStr
  loc_B1F2B5: FStStrNoPop var_B4
  loc_B1F2B8: LitStr " LEFT JOIN recahisto.histoctacte ON histoctacte.CodiOfic = c.CodiOfic AND histoctacte.CuenCtct = c.CuenCtct AND histoctacte.PeriCtct = c.PeriCtct AND histoctacte.BimeCtct = c.BimeCtct AND histoctacte.NumeCtct = c.NumeCtct AND histoctacte.CodiConc = c.CodiConc"
  loc_B1F2BB: ConcatStr
  loc_B1F2BC: FStStrNoPop var_B8
  loc_B1F2BF: LitStr " WHERE CodiTimo=15"
  loc_B1F2C2: ConcatStr
  loc_B1F2C3: FStStrNoPop var_BC
  loc_B1F2C6: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, CodiConc;"
  loc_B1F2C9: ConcatStr
  loc_B1F2CA: FStStrNoPop var_C0
  loc_B1F2CD: FLdPr var_8C
  loc_B1F2D0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B1F2D5: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1F2F2: LitStr " INSERT INTO "
  loc_B1F2F5: ILdRf var_88
  loc_B1F2F8: ConcatStr
  loc_B1F2F9: FStStrNoPop var_90
  loc_B1F2FC: LitStr " SELECT c.CodiOfic, c.CuenCtct, c.PeriCtct, c.BimeCtct, c.NumeCtct, c.CodiConc, 0 as DebeCtct, 0 as CredCtct, 0 as ExenCtct, sum(ctacte.CredCtct) as DescCtct"
  loc_B1F2FF: ConcatStr
  loc_B1F300: FStStrNoPop var_94
  loc_B1F303: LitStr " FROM c"
  loc_B1F306: ConcatStr
  loc_B1F307: FStStrNoPop var_98
  loc_B1F30A: LitStr " LEFT JOIN ctacte ON ctacte.CodiOfic = c.CodiOfic AND ctacte.CuenCtct = c.CuenCtct AND ctacte.PeriCtct = c.PeriCtct AND ctacte.BimeCtct = c.BimeCtct AND ctacte.NumeCtct = c.NumeCtct AND ctacte.CodiConc = c.CodiConc"
  loc_B1F30D: ConcatStr
  loc_B1F30E: FStStrNoPop var_9C
  loc_B1F311: LitStr " WHERE CodiTimo IN (6,11,14)"
  loc_B1F314: ConcatStr
  loc_B1F315: FStStrNoPop var_A0
  loc_B1F318: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, CodiConc;"
  loc_B1F31B: ConcatStr
  loc_B1F31C: FStStrNoPop var_A4
  loc_B1F31F: LitStr " INSERT INTO "
  loc_B1F322: ConcatStr
  loc_B1F323: FStStrNoPop var_A8
  loc_B1F326: ILdRf var_88
  loc_B1F329: ConcatStr
  loc_B1F32A: FStStrNoPop var_AC
  loc_B1F32D: LitStr " SELECT c.CodiOfic, c.CuenCtct, c.PeriCtct, c.BimeCtct, c.NumeCtct, c.CodiConc, 0 as DebeCtct, 0 as CredCtct, 0 as ExenCtct, sum(histoctacte.CredCtct) as DescCtct"
  loc_B1F330: ConcatStr
  loc_B1F331: FStStrNoPop var_B0
  loc_B1F334: LitStr " FROM c"
  loc_B1F337: ConcatStr
  loc_B1F338: FStStrNoPop var_B4
  loc_B1F33B: LitStr " LEFT JOIN recahisto.histoctacte ON histoctacte.CodiOfic = c.CodiOfic AND histoctacte.CuenCtct = c.CuenCtct AND histoctacte.PeriCtct = c.PeriCtct AND histoctacte.BimeCtct = c.BimeCtct AND histoctacte.NumeCtct = c.NumeCtct AND histoctacte.CodiConc = c.CodiConc"
  loc_B1F33E: ConcatStr
  loc_B1F33F: FStStrNoPop var_B8
  loc_B1F342: LitStr " WHERE CodiTimo IN (6,11,14)"
  loc_B1F345: ConcatStr
  loc_B1F346: FStStrNoPop var_BC
  loc_B1F349: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, CodiConc;"
  loc_B1F34C: ConcatStr
  loc_B1F34D: FStStrNoPop var_C0
  loc_B1F350: FLdPr var_8C
  loc_B1F353: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B1F358: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1F375: LitNothing
  loc_B1F377: FStAd var_8C 
  loc_B1F37B: ExitProcHresult
End Function

Private Function Proc_117_24_C043E0() 'C043E0
  'Data Table: 4AB638
  loc_C03AAC: LitVarStr var_94, "<html>"
  loc_C03AB1: PopAdLdVar
  loc_C03AB2: FLdPr Me
  loc_C03AB5: MemLdRfVar from_stack_1.global_60
  loc_C03AB8: LdPrVar
  loc_C03ABA: LateMemCall
  loc_C03AC0: LitVarStr var_94, "<head>"
  loc_C03AC5: PopAdLdVar
  loc_C03AC6: FLdPr Me
  loc_C03AC9: MemLdRfVar from_stack_1.global_60
  loc_C03ACC: LdPrVar
  loc_C03ACE: LateMemCall
  loc_C03AD4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C03AD9: PopAdLdVar
  loc_C03ADA: FLdPr Me
  loc_C03ADD: MemLdRfVar from_stack_1.global_60
  loc_C03AE0: LdPrVar
  loc_C03AE2: LateMemCall
  loc_C03AE8: LitStr "<title>"
  loc_C03AEB: FLdRfVar var_A8
  loc_C03AEE: FLdPr Me
  loc_C03AF1:  = Me.Caption
  loc_C03AF6: ILdRf var_A8
  loc_C03AF9: ConcatStr
  loc_C03AFA: FStStrNoPop var_AC
  loc_C03AFD: LitStr "</title>"
  loc_C03B00: ConcatStr
  loc_C03B01: CVarStr var_BC
  loc_C03B04: PopAdLdVar
  loc_C03B05: FLdPr Me
  loc_C03B08: MemLdRfVar from_stack_1.global_60
  loc_C03B0B: LdPrVar
  loc_C03B0D: LateMemCall
  loc_C03B13: FFreeStr var_A8 = ""
  loc_C03B1A: FFree1Var var_BC = ""
  loc_C03B1D: LitVarStr var_94, "<style type=""text/css"">"
  loc_C03B22: PopAdLdVar
  loc_C03B23: FLdPr Me
  loc_C03B26: MemLdRfVar from_stack_1.global_60
  loc_C03B29: LdPrVar
  loc_C03B2B: LateMemCall
  loc_C03B31: LitVarStr var_94, ".Titulo1 {"
  loc_C03B36: PopAdLdVar
  loc_C03B37: FLdPr Me
  loc_C03B3A: MemLdRfVar from_stack_1.global_60
  loc_C03B3D: LdPrVar
  loc_C03B3F: LateMemCall
  loc_C03B45: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C03B4A: PopAdLdVar
  loc_C03B4B: FLdPr Me
  loc_C03B4E: MemLdRfVar from_stack_1.global_60
  loc_C03B51: LdPrVar
  loc_C03B53: LateMemCall
  loc_C03B59: LitVarStr var_94, " font-size: 18px;"
  loc_C03B5E: PopAdLdVar
  loc_C03B5F: FLdPr Me
  loc_C03B62: MemLdRfVar from_stack_1.global_60
  loc_C03B65: LdPrVar
  loc_C03B67: LateMemCall
  loc_C03B6D: LitVarStr var_94, " font-weight: bold;"
  loc_C03B72: PopAdLdVar
  loc_C03B73: FLdPr Me
  loc_C03B76: MemLdRfVar from_stack_1.global_60
  loc_C03B79: LdPrVar
  loc_C03B7B: LateMemCall
  loc_C03B81: LitVarStr var_94, "}"
  loc_C03B86: PopAdLdVar
  loc_C03B87: FLdPr Me
  loc_C03B8A: MemLdRfVar from_stack_1.global_60
  loc_C03B8D: LdPrVar
  loc_C03B8F: LateMemCall
  loc_C03B95: LitVarStr var_94, ".Titulo2 {"
  loc_C03B9A: PopAdLdVar
  loc_C03B9B: FLdPr Me
  loc_C03B9E: MemLdRfVar from_stack_1.global_60
  loc_C03BA1: LdPrVar
  loc_C03BA3: LateMemCall
  loc_C03BA9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C03BAE: PopAdLdVar
  loc_C03BAF: FLdPr Me
  loc_C03BB2: MemLdRfVar from_stack_1.global_60
  loc_C03BB5: LdPrVar
  loc_C03BB7: LateMemCall
  loc_C03BBD: LitVarStr var_94, " font-size: 14px;"
  loc_C03BC2: PopAdLdVar
  loc_C03BC3: FLdPr Me
  loc_C03BC6: MemLdRfVar from_stack_1.global_60
  loc_C03BC9: LdPrVar
  loc_C03BCB: LateMemCall
  loc_C03BD1: LitVarStr var_94, " font-weight: bold;"
  loc_C03BD6: PopAdLdVar
  loc_C03BD7: FLdPr Me
  loc_C03BDA: MemLdRfVar from_stack_1.global_60
  loc_C03BDD: LdPrVar
  loc_C03BDF: LateMemCall
  loc_C03BE5: LitVarStr var_94, "}"
  loc_C03BEA: PopAdLdVar
  loc_C03BEB: FLdPr Me
  loc_C03BEE: MemLdRfVar from_stack_1.global_60
  loc_C03BF1: LdPrVar
  loc_C03BF3: LateMemCall
  loc_C03BF9: LitVarStr var_94, ".Normal {"
  loc_C03BFE: PopAdLdVar
  loc_C03BFF: FLdPr Me
  loc_C03C02: MemLdRfVar from_stack_1.global_60
  loc_C03C05: LdPrVar
  loc_C03C07: LateMemCall
  loc_C03C0D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C03C12: PopAdLdVar
  loc_C03C13: FLdPr Me
  loc_C03C16: MemLdRfVar from_stack_1.global_60
  loc_C03C19: LdPrVar
  loc_C03C1B: LateMemCall
  loc_C03C21: LitVarStr var_94, " font-size: 12px;"
  loc_C03C26: PopAdLdVar
  loc_C03C27: FLdPr Me
  loc_C03C2A: MemLdRfVar from_stack_1.global_60
  loc_C03C2D: LdPrVar
  loc_C03C2F: LateMemCall
  loc_C03C35: LitVarStr var_94, " font-style: normal;"
  loc_C03C3A: PopAdLdVar
  loc_C03C3B: FLdPr Me
  loc_C03C3E: MemLdRfVar from_stack_1.global_60
  loc_C03C41: LdPrVar
  loc_C03C43: LateMemCall
  loc_C03C49: LitVarStr var_94, " font-weight: normal;"
  loc_C03C4E: PopAdLdVar
  loc_C03C4F: FLdPr Me
  loc_C03C52: MemLdRfVar from_stack_1.global_60
  loc_C03C55: LdPrVar
  loc_C03C57: LateMemCall
  loc_C03C5D: LitVarStr var_94, " font-variant: normal;"
  loc_C03C62: PopAdLdVar
  loc_C03C63: FLdPr Me
  loc_C03C66: MemLdRfVar from_stack_1.global_60
  loc_C03C69: LdPrVar
  loc_C03C6B: LateMemCall
  loc_C03C71: LitVarStr var_94, "}"
  loc_C03C76: PopAdLdVar
  loc_C03C77: FLdPr Me
  loc_C03C7A: MemLdRfVar from_stack_1.global_60
  loc_C03C7D: LdPrVar
  loc_C03C7F: LateMemCall
  loc_C03C85: LitVarStr var_94, ".Encabezado {"
  loc_C03C8A: PopAdLdVar
  loc_C03C8B: FLdPr Me
  loc_C03C8E: MemLdRfVar from_stack_1.global_60
  loc_C03C91: LdPrVar
  loc_C03C93: LateMemCall
  loc_C03C99: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C03C9E: PopAdLdVar
  loc_C03C9F: FLdPr Me
  loc_C03CA2: MemLdRfVar from_stack_1.global_60
  loc_C03CA5: LdPrVar
  loc_C03CA7: LateMemCall
  loc_C03CAD: LitVarStr var_94, " font-size: 11px;"
  loc_C03CB2: PopAdLdVar
  loc_C03CB3: FLdPr Me
  loc_C03CB6: MemLdRfVar from_stack_1.global_60
  loc_C03CB9: LdPrVar
  loc_C03CBB: LateMemCall
  loc_C03CC1: LitVarStr var_94, " font-weight: bold;"
  loc_C03CC6: PopAdLdVar
  loc_C03CC7: FLdPr Me
  loc_C03CCA: MemLdRfVar from_stack_1.global_60
  loc_C03CCD: LdPrVar
  loc_C03CCF: LateMemCall
  loc_C03CD5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C03CDA: PopAdLdVar
  loc_C03CDB: FLdPr Me
  loc_C03CDE: MemLdRfVar from_stack_1.global_60
  loc_C03CE1: LdPrVar
  loc_C03CE3: LateMemCall
  loc_C03CE9: LitVarStr var_94, "}"
  loc_C03CEE: PopAdLdVar
  loc_C03CEF: FLdPr Me
  loc_C03CF2: MemLdRfVar from_stack_1.global_60
  loc_C03CF5: LdPrVar
  loc_C03CF7: LateMemCall
  loc_C03CFD: LitVarStr var_94, ".LineaDato {"
  loc_C03D02: PopAdLdVar
  loc_C03D03: FLdPr Me
  loc_C03D06: MemLdRfVar from_stack_1.global_60
  loc_C03D09: LdPrVar
  loc_C03D0B: LateMemCall
  loc_C03D11: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C03D16: PopAdLdVar
  loc_C03D17: FLdPr Me
  loc_C03D1A: MemLdRfVar from_stack_1.global_60
  loc_C03D1D: LdPrVar
  loc_C03D1F: LateMemCall
  loc_C03D25: LitVarStr var_94, " font-size: 10px;"
  loc_C03D2A: PopAdLdVar
  loc_C03D2B: FLdPr Me
  loc_C03D2E: MemLdRfVar from_stack_1.global_60
  loc_C03D31: LdPrVar
  loc_C03D33: LateMemCall
  loc_C03D39: LitVarStr var_94, "}"
  loc_C03D3E: PopAdLdVar
  loc_C03D3F: FLdPr Me
  loc_C03D42: MemLdRfVar from_stack_1.global_60
  loc_C03D45: LdPrVar
  loc_C03D47: LateMemCall
  loc_C03D4D: LitVarStr var_94, ".Totales {"
  loc_C03D52: PopAdLdVar
  loc_C03D53: FLdPr Me
  loc_C03D56: MemLdRfVar from_stack_1.global_60
  loc_C03D59: LdPrVar
  loc_C03D5B: LateMemCall
  loc_C03D61: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C03D66: PopAdLdVar
  loc_C03D67: FLdPr Me
  loc_C03D6A: MemLdRfVar from_stack_1.global_60
  loc_C03D6D: LdPrVar
  loc_C03D6F: LateMemCall
  loc_C03D75: LitVarStr var_94, " font-size: 12px;"
  loc_C03D7A: PopAdLdVar
  loc_C03D7B: FLdPr Me
  loc_C03D7E: MemLdRfVar from_stack_1.global_60
  loc_C03D81: LdPrVar
  loc_C03D83: LateMemCall
  loc_C03D89: LitVarStr var_94, " font-weight: bold;"
  loc_C03D8E: PopAdLdVar
  loc_C03D8F: FLdPr Me
  loc_C03D92: MemLdRfVar from_stack_1.global_60
  loc_C03D95: LdPrVar
  loc_C03D97: LateMemCall
  loc_C03D9D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C03DA2: PopAdLdVar
  loc_C03DA3: FLdPr Me
  loc_C03DA6: MemLdRfVar from_stack_1.global_60
  loc_C03DA9: LdPrVar
  loc_C03DAB: LateMemCall
  loc_C03DB1: LitVarStr var_94, "}"
  loc_C03DB6: PopAdLdVar
  loc_C03DB7: FLdPr Me
  loc_C03DBA: MemLdRfVar from_stack_1.global_60
  loc_C03DBD: LdPrVar
  loc_C03DBF: LateMemCall
  loc_C03DC5: LitVarStr var_94, ".SubTotales {"
  loc_C03DCA: PopAdLdVar
  loc_C03DCB: FLdPr Me
  loc_C03DCE: MemLdRfVar from_stack_1.global_60
  loc_C03DD1: LdPrVar
  loc_C03DD3: LateMemCall
  loc_C03DD9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C03DDE: PopAdLdVar
  loc_C03DDF: FLdPr Me
  loc_C03DE2: MemLdRfVar from_stack_1.global_60
  loc_C03DE5: LdPrVar
  loc_C03DE7: LateMemCall
  loc_C03DED: LitVarStr var_94, " font-size: 10px;"
  loc_C03DF2: PopAdLdVar
  loc_C03DF3: FLdPr Me
  loc_C03DF6: MemLdRfVar from_stack_1.global_60
  loc_C03DF9: LdPrVar
  loc_C03DFB: LateMemCall
  loc_C03E01: LitVarStr var_94, " font-weight: bold;"
  loc_C03E06: PopAdLdVar
  loc_C03E07: FLdPr Me
  loc_C03E0A: MemLdRfVar from_stack_1.global_60
  loc_C03E0D: LdPrVar
  loc_C03E0F: LateMemCall
  loc_C03E15: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C03E1A: PopAdLdVar
  loc_C03E1B: FLdPr Me
  loc_C03E1E: MemLdRfVar from_stack_1.global_60
  loc_C03E21: LdPrVar
  loc_C03E23: LateMemCall
  loc_C03E29: LitVarStr var_94, "}"
  loc_C03E2E: PopAdLdVar
  loc_C03E2F: FLdPr Me
  loc_C03E32: MemLdRfVar from_stack_1.global_60
  loc_C03E35: LdPrVar
  loc_C03E37: LateMemCall
  loc_C03E3D: LitVarStr var_94, ".Tilde {"
  loc_C03E42: PopAdLdVar
  loc_C03E43: FLdPr Me
  loc_C03E46: MemLdRfVar from_stack_1.global_60
  loc_C03E49: LdPrVar
  loc_C03E4B: LateMemCall
  loc_C03E51: LitVarStr var_94, " font-family: Wingdings;"
  loc_C03E56: PopAdLdVar
  loc_C03E57: FLdPr Me
  loc_C03E5A: MemLdRfVar from_stack_1.global_60
  loc_C03E5D: LdPrVar
  loc_C03E5F: LateMemCall
  loc_C03E65: LitVarStr var_94, " font-size: 16px;"
  loc_C03E6A: PopAdLdVar
  loc_C03E6B: FLdPr Me
  loc_C03E6E: MemLdRfVar from_stack_1.global_60
  loc_C03E71: LdPrVar
  loc_C03E73: LateMemCall
  loc_C03E79: LitVarStr var_94, "}"
  loc_C03E7E: PopAdLdVar
  loc_C03E7F: FLdPr Me
  loc_C03E82: MemLdRfVar from_stack_1.global_60
  loc_C03E85: LdPrVar
  loc_C03E87: LateMemCall
  loc_C03E8D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C03E92: PopAdLdVar
  loc_C03E93: FLdPr Me
  loc_C03E96: MemLdRfVar from_stack_1.global_60
  loc_C03E99: LdPrVar
  loc_C03E9B: LateMemCall
  loc_C03EA1: LitVarStr var_94, "</style>"
  loc_C03EA6: PopAdLdVar
  loc_C03EA7: FLdPr Me
  loc_C03EAA: MemLdRfVar from_stack_1.global_60
  loc_C03EAD: LdPrVar
  loc_C03EAF: LateMemCall
  loc_C03EB5: LitI4 0
  loc_C03EBA: FStStrCopy var_AC
  loc_C03EBD: FLdRfVar var_AC
  loc_C03EC0: LitI4 0
  loc_C03EC5: FStStrCopy var_A8
  loc_C03EC8: FLdRfVar var_A8
  loc_C03ECB: LitI2_Byte &HFF
  loc_C03ECD: PopTmpLdAd2 var_BE
  loc_C03ED0: FLdPr Me
  loc_C03ED3: MemLdRfVar from_stack_1.global_60
  loc_C03ED6: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C03EDB: FFreeStr var_A8 = ""
  loc_C03EE2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C03EE7: PopAdLdVar
  loc_C03EE8: FLdPr Me
  loc_C03EEB: MemLdRfVar from_stack_1.global_60
  loc_C03EEE: LdPrVar
  loc_C03EF0: LateMemCall
  loc_C03EF6: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C03EFB: PopAdLdVar
  loc_C03EFC: FLdPr Me
  loc_C03EFF: MemLdRfVar from_stack_1.global_60
  loc_C03F02: LdPrVar
  loc_C03F04: LateMemCall
  loc_C03F0A: LitStr "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C03F0D: LitI2_Byte &H5F
  loc_C03F0F: CStrUI1
  loc_C03F11: FStStrNoPop var_A8
  loc_C03F14: ConcatStr
  loc_C03F15: FStStrNoPop var_AC
  loc_C03F18: LitStr """ height="""
  loc_C03F1B: ConcatStr
  loc_C03F1C: FStStrNoPop var_C4
  loc_C03F1F: LitI2_Byte &H3C
  loc_C03F21: CStrUI1
  loc_C03F23: FStStrNoPop var_C8
  loc_C03F26: ConcatStr
  loc_C03F27: FStStrNoPop var_CC
  loc_C03F2A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C03F2D: ConcatStr
  loc_C03F2E: FStStrNoPop var_D0
  loc_C03F31: LitStr "Municipalidad de Guaymallén"
  loc_C03F34: ConcatStr
  loc_C03F35: FStStrNoPop var_D4
  loc_C03F38: LitStr "</p>"
  loc_C03F3B: ConcatStr
  loc_C03F3C: CVarStr var_BC
  loc_C03F3F: PopAdLdVar
  loc_C03F40: FLdPr Me
  loc_C03F43: MemLdRfVar from_stack_1.global_60
  loc_C03F46: LdPrVar
  loc_C03F48: LateMemCall
  loc_C03F4E: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C03F5F: FFree1Var var_BC = ""
  loc_C03F62: LitStr "    <p>"
  loc_C03F65: FLdRfVar var_A8
  loc_C03F68: FLdPr Me
  loc_C03F6B:  = Me.Caption
  loc_C03F70: ILdRf var_A8
  loc_C03F73: ConcatStr
  loc_C03F74: FStStrNoPop var_AC
  loc_C03F77: LitStr "</p></th>"
  loc_C03F7A: ConcatStr
  loc_C03F7B: CVarStr var_BC
  loc_C03F7E: PopAdLdVar
  loc_C03F7F: FLdPr Me
  loc_C03F82: MemLdRfVar from_stack_1.global_60
  loc_C03F85: LdPrVar
  loc_C03F87: LateMemCall
  loc_C03F8D: FFreeStr var_A8 = ""
  loc_C03F94: FFree1Var var_BC = ""
  loc_C03F97: LitVarStr var_94, "  </tr>"
  loc_C03F9C: PopAdLdVar
  loc_C03F9D: FLdPr Me
  loc_C03FA0: MemLdRfVar from_stack_1.global_60
  loc_C03FA3: LdPrVar
  loc_C03FA5: LateMemCall
  loc_C03FAB: LitVarStr var_94, "  <tr>"
  loc_C03FB0: PopAdLdVar
  loc_C03FB1: FLdPr Me
  loc_C03FB4: MemLdRfVar from_stack_1.global_60
  loc_C03FB7: LdPrVar
  loc_C03FB9: LateMemCall
  loc_C03FBF: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_C03FC4: PopAdLdVar
  loc_C03FC5: FLdPr Me
  loc_C03FC8: MemLdRfVar from_stack_1.global_60
  loc_C03FCB: LdPrVar
  loc_C03FCD: LateMemCall
  loc_C03FD3: LitVarStr var_94, "  </tr>"
  loc_C03FD8: PopAdLdVar
  loc_C03FD9: FLdPr Me
  loc_C03FDC: MemLdRfVar from_stack_1.global_60
  loc_C03FDF: LdPrVar
  loc_C03FE1: LateMemCall
  loc_C03FE7: LitVarStr var_94, "  <tr valign=""top"" align=""left"" class=""Normal"">"
  loc_C03FEC: PopAdLdVar
  loc_C03FED: FLdPr Me
  loc_C03FF0: MemLdRfVar from_stack_1.global_60
  loc_C03FF3: LdPrVar
  loc_C03FF5: LateMemCall
  loc_C03FFB: LitStr "    <td><strong>Desde: </strong>"
  loc_C03FFE: FLdPr Me
  loc_C04001: VCallAd Control_ID_FealCtctDesdeMsk
  loc_C04004: FStAdFunc var_D8
  loc_C04007: FLdPr var_D8
  loc_C0400A: LateIdLdVar var_BC DispID_15 0
  loc_C04011: CStrVarTmp
  loc_C04012: FStStrNoPop var_A8
  loc_C04015: ConcatStr
  loc_C04016: FStStrNoPop var_AC
  loc_C04019: LitStr "</td>"
  loc_C0401C: ConcatStr
  loc_C0401D: CVarStr var_E8
  loc_C04020: PopAdLdVar
  loc_C04021: FLdPr Me
  loc_C04024: MemLdRfVar from_stack_1.global_60
  loc_C04027: LdPrVar
  loc_C04029: LateMemCall
  loc_C0402F: FFreeStr var_A8 = ""
  loc_C04036: FFree1Ad var_D8
  loc_C04039: FFreeVar var_BC = ""
  loc_C04040: LitStr "    <td align=""center""><strong>Hasta: </strong>"
  loc_C04043: FLdPr Me
  loc_C04046: VCallAd Control_ID_FealCtctHastaMsk
  loc_C04049: FStAdFunc var_D8
  loc_C0404C: FLdPr var_D8
  loc_C0404F: LateIdLdVar var_BC DispID_15 0
  loc_C04056: CStrVarTmp
  loc_C04057: FStStrNoPop var_A8
  loc_C0405A: ConcatStr
  loc_C0405B: FStStrNoPop var_AC
  loc_C0405E: LitStr "</td>"
  loc_C04061: ConcatStr
  loc_C04062: CVarStr var_E8
  loc_C04065: PopAdLdVar
  loc_C04066: FLdPr Me
  loc_C04069: MemLdRfVar from_stack_1.global_60
  loc_C0406C: LdPrVar
  loc_C0406E: LateMemCall
  loc_C04074: FFreeStr var_A8 = ""
  loc_C0407B: FFree1Ad var_D8
  loc_C0407E: FFreeVar var_BC = ""
  loc_C04085: LitStr "    <td align=""right""><strong>Cuenta Contable: </strong>"
  loc_C04088: FLdPr Me
  loc_C0408B: VCallAd Control_ID_ActiConcMsk
  loc_C0408E: FStAdFunc var_D8
  loc_C04091: FLdPr var_D8
  loc_C04094: LateIdLdVar var_BC DispID_22 0
  loc_C0409B: CStrVarTmp
  loc_C0409C: FStStrNoPop var_A8
  loc_C0409F: ConcatStr
  loc_C040A0: FStStrNoPop var_AC
  loc_C040A3: LitStr " - "
  loc_C040A6: ConcatStr
  loc_C040A7: FStStrNoPop var_C8
  loc_C040AA: FLdRfVar var_C4
  loc_C040AD: FLdPr Me
  loc_C040B0: VCallAd Control_ID_DetaActiLbl
  loc_C040B3: FStAdFunc var_EC
  loc_C040B6: FLdPr var_EC
  loc_C040B9:  = Me.Caption
  loc_C040BE: ILdRf var_C4
  loc_C040C1: ConcatStr
  loc_C040C2: FStStrNoPop var_CC
  loc_C040C5: LitStr "</td>"
  loc_C040C8: ConcatStr
  loc_C040C9: CVarStr var_E8
  loc_C040CC: PopAdLdVar
  loc_C040CD: FLdPr Me
  loc_C040D0: MemLdRfVar from_stack_1.global_60
  loc_C040D3: LdPrVar
  loc_C040D5: LateMemCall
  loc_C040DB: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_C040E8: FFreeAd var_D8 = ""
  loc_C040EF: FFreeVar var_BC = ""
  loc_C040F6: LitVarStr var_94, "  </tr>"
  loc_C040FB: PopAdLdVar
  loc_C040FC: FLdPr Me
  loc_C040FF: MemLdRfVar from_stack_1.global_60
  loc_C04102: LdPrVar
  loc_C04104: LateMemCall
  loc_C0410A: LitVarStr var_94, "</table>"
  loc_C0410F: PopAdLdVar
  loc_C04110: FLdPr Me
  loc_C04113: MemLdRfVar from_stack_1.global_60
  loc_C04116: LdPrVar
  loc_C04118: LateMemCall
  loc_C0411E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C04123: PopAdLdVar
  loc_C04124: FLdPr Me
  loc_C04127: MemLdRfVar from_stack_1.global_60
  loc_C0412A: LdPrVar
  loc_C0412C: LateMemCall
  loc_C04132: LitVarStr var_94, "  <thead>"
  loc_C04137: PopAdLdVar
  loc_C04138: FLdPr Me
  loc_C0413B: MemLdRfVar from_stack_1.global_60
  loc_C0413E: LdPrVar
  loc_C04140: LateMemCall
  loc_C04146: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C0414B: PopAdLdVar
  loc_C0414C: FLdPr Me
  loc_C0414F: MemLdRfVar from_stack_1.global_60
  loc_C04152: LdPrVar
  loc_C04154: LateMemCall
  loc_C0415A: LitVarStr var_94, "    <th rowspan=""2"">Cuenta</th>"
  loc_C0415F: PopAdLdVar
  loc_C04160: FLdPr Me
  loc_C04163: MemLdRfVar from_stack_1.global_60
  loc_C04166: LdPrVar
  loc_C04168: LateMemCall
  loc_C0416E: LitVarStr var_94, "    <th rowspan=""2"">Apellido y Nombre</th>"
  loc_C04173: PopAdLdVar
  loc_C04174: FLdPr Me
  loc_C04177: MemLdRfVar from_stack_1.global_60
  loc_C0417A: LdPrVar
  loc_C0417C: LateMemCall
  loc_C04182: LitStr "    <th colspan=""6"">"
  loc_C04185: LitI4 1
  loc_C0418A: LitI4 1
  loc_C0418F: LitVarStr var_A4, "dd/mm/yyyy"
  loc_C04194: FStVarCopyObj var_BC
  loc_C04197: FLdRfVar var_BC
  loc_C0419A: FLdPr Me
  loc_C0419D: MemLdRfVar from_stack_1.global_128
  loc_C041A0: CVarRef
  loc_C041A5: ImpAdCallI2 Format$(, )
  loc_C041AA: FStStrNoPop var_A8
  loc_C041AD: ConcatStr
  loc_C041AE: FStStrNoPop var_AC
  loc_C041B1: LitStr " - "
  loc_C041B4: ConcatStr
  loc_C041B5: FStStrNoPop var_C4
  loc_C041B8: LitI4 1
  loc_C041BD: LitI4 1
  loc_C041C2: LitVarStr var_10C, "dd/mm/yyyy"
  loc_C041C7: FStVarCopyObj var_E8
  loc_C041CA: FLdRfVar var_E8
  loc_C041CD: FLdPr Me
  loc_C041D0: MemLdRfVar from_stack_1.global_132
  loc_C041D3: CVarRef
  loc_C041D8: ImpAdCallI2 Format$(, )
  loc_C041DD: FStStrNoPop var_C8
  loc_C041E0: ConcatStr
  loc_C041E1: FStStrNoPop var_CC
  loc_C041E4: LitStr "</th>"
  loc_C041E7: ConcatStr
  loc_C041E8: CVarStr var_11C
  loc_C041EB: PopAdLdVar
  loc_C041EC: FLdPr Me
  loc_C041EF: MemLdRfVar from_stack_1.global_60
  loc_C041F2: LdPrVar
  loc_C041F4: LateMemCall
  loc_C041FA: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_C04207: FFreeVar var_BC = "": var_E8 = ""
  loc_C04210: LitStr "    <th colspan=""6"">"
  loc_C04213: LitI4 1
  loc_C04218: LitI4 1
  loc_C0421D: LitVarStr var_A4, "dd/mm/yyyy"
  loc_C04222: FStVarCopyObj var_BC
  loc_C04225: FLdRfVar var_BC
  loc_C04228: FLdPr Me
  loc_C0422B: MemLdRfVar from_stack_1.global_136
  loc_C0422E: CVarRef
  loc_C04233: ImpAdCallI2 Format$(, )
  loc_C04238: FStStrNoPop var_A8
  loc_C0423B: ConcatStr
  loc_C0423C: FStStrNoPop var_AC
  loc_C0423F: LitStr " - "
  loc_C04242: ConcatStr
  loc_C04243: FStStrNoPop var_C4
  loc_C04246: LitI4 1
  loc_C0424B: LitI4 1
  loc_C04250: LitVarStr var_10C, "dd/mm/yyyy"
  loc_C04255: FStVarCopyObj var_E8
  loc_C04258: FLdRfVar var_E8
  loc_C0425B: FLdPr Me
  loc_C0425E: MemLdRfVar from_stack_1.global_140
  loc_C04261: CVarRef
  loc_C04266: ImpAdCallI2 Format$(, )
  loc_C0426B: FStStrNoPop var_C8
  loc_C0426E: ConcatStr
  loc_C0426F: FStStrNoPop var_CC
  loc_C04272: LitStr "</th>"
  loc_C04275: ConcatStr
  loc_C04276: CVarStr var_11C
  loc_C04279: PopAdLdVar
  loc_C0427A: FLdPr Me
  loc_C0427D: MemLdRfVar from_stack_1.global_60
  loc_C04280: LdPrVar
  loc_C04282: LateMemCall
  loc_C04288: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_C04295: FFreeVar var_BC = "": var_E8 = ""
  loc_C0429E: LitVarStr var_94, "  </tr>"
  loc_C042A3: PopAdLdVar
  loc_C042A4: FLdPr Me
  loc_C042A7: MemLdRfVar from_stack_1.global_60
  loc_C042AA: LdPrVar
  loc_C042AC: LateMemCall
  loc_C042B2: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C042B7: PopAdLdVar
  loc_C042B8: FLdPr Me
  loc_C042BB: MemLdRfVar from_stack_1.global_60
  loc_C042BE: LdPrVar
  loc_C042C0: LateMemCall
  loc_C042C6: LitVarStr var_94, "    <th>Aforo</th>"
  loc_C042CB: PopAdLdVar
  loc_C042CC: FLdPr Me
  loc_C042CF: MemLdRfVar from_stack_1.global_60
  loc_C042D2: LdPrVar
  loc_C042D4: LateMemCall
  loc_C042DA: LitVarStr var_94, "    <th>Pago</th>"
  loc_C042DF: PopAdLdVar
  loc_C042E0: FLdPr Me
  loc_C042E3: MemLdRfVar from_stack_1.global_60
  loc_C042E6: LdPrVar
  loc_C042E8: LateMemCall
  loc_C042EE: LitVarStr var_94, "    <th>Exen.</th>"
  loc_C042F3: PopAdLdVar
  loc_C042F4: FLdPr Me
  loc_C042F7: MemLdRfVar from_stack_1.global_60
  loc_C042FA: LdPrVar
  loc_C042FC: LateMemCall
  loc_C04302: LitVarStr var_94, "    <th>Desc.</th>"
  loc_C04307: PopAdLdVar
  loc_C04308: FLdPr Me
  loc_C0430B: MemLdRfVar from_stack_1.global_60
  loc_C0430E: LdPrVar
  loc_C04310: LateMemCall
  loc_C04316: LitVarStr var_94, "    <th>Pago<br>+Exen.<br>+Desc.</th>"
  loc_C0431B: PopAdLdVar
  loc_C0431C: FLdPr Me
  loc_C0431F: MemLdRfVar from_stack_1.global_60
  loc_C04322: LdPrVar
  loc_C04324: LateMemCall
  loc_C0432A: LitVarStr var_94, "    <th>Aforo<br>pagado</th>"
  loc_C0432F: PopAdLdVar
  loc_C04330: FLdPr Me
  loc_C04333: MemLdRfVar from_stack_1.global_60
  loc_C04336: LdPrVar
  loc_C04338: LateMemCall
  loc_C0433E: LitVarStr var_94, "    <th>Aforo</th>"
  loc_C04343: PopAdLdVar
  loc_C04344: FLdPr Me
  loc_C04347: MemLdRfVar from_stack_1.global_60
  loc_C0434A: LdPrVar
  loc_C0434C: LateMemCall
  loc_C04352: LitVarStr var_94, "    <th>Pago</th>"
  loc_C04357: PopAdLdVar
  loc_C04358: FLdPr Me
  loc_C0435B: MemLdRfVar from_stack_1.global_60
  loc_C0435E: LdPrVar
  loc_C04360: LateMemCall
  loc_C04366: LitVarStr var_94, "    <th>Exen.</th>"
  loc_C0436B: PopAdLdVar
  loc_C0436C: FLdPr Me
  loc_C0436F: MemLdRfVar from_stack_1.global_60
  loc_C04372: LdPrVar
  loc_C04374: LateMemCall
  loc_C0437A: LitVarStr var_94, "    <th>Desc.</th>"
  loc_C0437F: PopAdLdVar
  loc_C04380: FLdPr Me
  loc_C04383: MemLdRfVar from_stack_1.global_60
  loc_C04386: LdPrVar
  loc_C04388: LateMemCall
  loc_C0438E: LitVarStr var_94, "    <th>Pago<br>+Exen.<br>+Desc.</th>"
  loc_C04393: PopAdLdVar
  loc_C04394: FLdPr Me
  loc_C04397: MemLdRfVar from_stack_1.global_60
  loc_C0439A: LdPrVar
  loc_C0439C: LateMemCall
  loc_C043A2: LitVarStr var_94, "    <th>Aforo<br>pagado</th>"
  loc_C043A7: PopAdLdVar
  loc_C043A8: FLdPr Me
  loc_C043AB: MemLdRfVar from_stack_1.global_60
  loc_C043AE: LdPrVar
  loc_C043B0: LateMemCall
  loc_C043B6: LitVarStr var_94, "  </tr>"
  loc_C043BB: PopAdLdVar
  loc_C043BC: FLdPr Me
  loc_C043BF: MemLdRfVar from_stack_1.global_60
  loc_C043C2: LdPrVar
  loc_C043C4: LateMemCall
  loc_C043CA: LitVarStr var_94, "  </thead>"
  loc_C043CF: PopAdLdVar
  loc_C043D0: FLdPr Me
  loc_C043D3: MemLdRfVar from_stack_1.global_60
  loc_C043D6: LdPrVar
  loc_C043D8: LateMemCall
  loc_C043DE: ExitProcHresult
End Function

Private Function Proc_117_25_A0DA98() 'A0DA98
  'Data Table: 4AB638
  loc_A0DA58: LitVarStr var_94, "</table>"
  loc_A0DA5D: PopAdLdVar
  loc_A0DA5E: FLdPr Me
  loc_A0DA61: MemLdRfVar from_stack_1.global_60
  loc_A0DA64: LdPrVar
  loc_A0DA66: LateMemCall
  loc_A0DA6C: LitVarStr var_94, "</body>"
  loc_A0DA71: PopAdLdVar
  loc_A0DA72: FLdPr Me
  loc_A0DA75: MemLdRfVar from_stack_1.global_60
  loc_A0DA78: LdPrVar
  loc_A0DA7A: LateMemCall
  loc_A0DA80: LitVarStr var_94, "</html>"
  loc_A0DA85: PopAdLdVar
  loc_A0DA86: FLdPr Me
  loc_A0DA89: MemLdRfVar from_stack_1.global_60
  loc_A0DA8C: LdPrVar
  loc_A0DA8E: LateMemCall
  loc_A0DA94: ExitProcHresult
  loc_A0DA95: AddI4
End Function
