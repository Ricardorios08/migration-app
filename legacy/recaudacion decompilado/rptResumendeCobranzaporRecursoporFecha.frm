VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeCobranzaporRecursoporFecha
  Caption = "Resumen de Cobranza por Recurso por Fecha"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeCobranzaporRecursoporFecha.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9972
  ClientHeight = 4452
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4200
    Width = 9975
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptResumendeCobranzaporRecursoporFecha.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7200
    Top = 3120
    Width = 855
    Height = 735
    TabIndex = 10
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptResumendeCobranzaporRecursoporFecha.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeCobranzaporRecursoporFecha.frx":0B9C
    Left = 8040
    Top = 3240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2880
    Width = 1815
    Height = 1215
    TabIndex = 13
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2880
    Width = 4095
    Height = 1215
    TabIndex = 12
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 7
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 6
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9735
    Height = 2775
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton CodiConcCmd
      Left = 2760
      Top = 2160
      Width = 450
      Height = 360
      TabIndex = 5
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 7,8
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "rptResumendeCobranzaporRecursoporFecha.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.Frame FechaEmisionFra
      Caption = "Fecha de Envío"
      Left = 240
      Top = 240
      Width = 3255
      Height = 1575
      TabIndex = 16
      Begin VB.CommandButton DesdeFechaCmd
        Left = 2640
        Top = 480
        Width = 375
        Height = 375
        TabIndex = 1
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptResumendeCobranzaporRecursoporFecha.frx":0CFA
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaFechaCmd
        Left = 2640
        Top = 1005
        Width = 375
        Height = 375
        TabIndex = 3
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptResumendeCobranzaporRecursoporFecha.frx":123C
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FeenAcpaDesdeMsk
        Left = 1200
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptResumendeCobranzaporRecursoporFecha.frx":177E
      End
      Begin MSMask.MaskEdBox FeenAcpaHastaMsk
        Left = 1200
        Top = 1005
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptResumendeCobranzaporRecursoporFecha.frx":182E
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 360
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 18
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 420
        Top = 1005
        Width = 705
        Height = 300
        TabIndex = 17
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7920
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 9
    End
    Begin MSMask.MaskEdBox CodiConcMsk
      Left = 1440
      Top = 2160
      Width = 1215
      Height = 360
      TabIndex = 4
      OleObjectBlob = "rptResumendeCobranzaporRecursoporFecha.frx":18DE
    End
    Begin VB.Label Label2
      Caption = "Concepto:"
      Left = 270
      Top = 2160
      Width = 1095
      Height = 300
      TabIndex = 20
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label DetaConcLbl
      Left = 3360
      Top = 2160
      Width = 6135
      Height = 375
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7320
    Top = 3360
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptResumendeCobranzaporRecursoporFecha.frx":1976
  End
End

Attribute VB_Name = "rptResumendeCobranzaporRecursoporFecha"

Public bGenerado As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type

Private Type UDT_2_00567DA0
  bStruc(56) As Byte ' String fields: 3
End Type

Private Type UDT_3_00567DEC
  bStruc(68) As Byte ' String fields: 6
End Type


Private Sub HastaFechaCmd_Click() 'A0B3A4
  'Data Table: 4A2388
  loc_A0B368: LitVar_Missing var_A4
  loc_A0B36B: PopAdLdVar
  loc_A0B36C: LitVarI4
  loc_A0B374: PopAdLdVar
  loc_A0B375: ImpAdLdRf MemVar_D930A4
  loc_A0B378: NewIfNullPr frmCalendario
  loc_A0B37B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0B380: ImpAdLdRf MemVar_D93028
  loc_A0B383: CDargRef
  loc_A0B387: FLdPr Me
  loc_A0B38A: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A0B38D: FStAdFunc var_A8
  loc_A0B390: FLdPr var_A8
  loc_A0B393: LateIdSt
  loc_A0B398: FFree1Ad var_A8
  loc_A0B39B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0B3A0: ExitProcHresult
  loc_A0B3A1: UMiCy
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9C1D00
  'Data Table: 4A2388
  loc_9C1CEC: FLdPr Me
  loc_9C1CEF: VCallAd Control_ID_CodiConcMsk
  loc_9C1CF2: CVarAd
  loc_9C1CF6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1CFB: FFree1Var var_94 = ""
  loc_9C1CFE: ExitProcHresult
End Sub

Private Function CodiConcMsk_UnknownEvent_8(arg_C) 'AD9064
  'Data Table: 4A2388
  loc_AD8F34: FLdPr Me
  loc_AD8F37: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AD8F3A: FStAdFunc var_88
  loc_AD8F3D: FLdPr var_88
  loc_AD8F40: LateIdLdVar var_98 DispID_15 0
  loc_AD8F47: CStrVarTmp
  loc_AD8F48: CVarStr var_A8
  loc_AD8F4B: FLdRfVar var_B8
  loc_AD8F4E: ImpAdCallFPR4  = Year()
  loc_AD8F53: FLdPr Me
  loc_AD8F56: VCallAd Control_ID_CodiConcMsk
  loc_AD8F59: FStAdFunc var_BC
  loc_AD8F5C: FLdPr var_BC
  loc_AD8F5F: LateIdLdVar var_CC DispID_22 0
  loc_AD8F66: PopAd
  loc_AD8F68: LitI2_Byte 0
  loc_AD8F6A: LitI2_Byte 0
  loc_AD8F6C: LitI2_Byte 0
  loc_AD8F6E: LitI2_Byte 0
  loc_AD8F70: LitI2_Byte 0
  loc_AD8F72: LitI2_Byte 0
  loc_AD8F74: LitI2_Byte 0
  loc_AD8F76: LitI2_Byte 0
  loc_AD8F78: LitI2_Byte 0
  loc_AD8F7A: FLdRfVar var_CC
  loc_AD8F7D: CStrVarTmp
  loc_AD8F7E: FStStrNoPop var_D0
  loc_AD8F81: FLdRfVar var_B8
  loc_AD8F84: CI2Var
  loc_AD8F85: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AD8F8A: FStStrNoPop var_D4
  loc_AD8F8D: FLdPr Me
  loc_AD8F90: MemStStrCopy
  loc_AD8F94: FFreeStr var_D0 = ""
  loc_AD8F9B: FFreeAd var_88 = ""
  loc_AD8FA2: FFreeVar var_98 = "": var_A8 = "": var_CC = ""
  loc_AD8FAD: FLdPr Me
  loc_AD8FB0: MemLdStr global_104
  loc_AD8FB3: LitStr vbNullString
  loc_AD8FB6: NeStr
  loc_AD8FB8: BranchF loc_AD8FF5
  loc_AD8FBB: FLdPr Me
  loc_AD8FBE: MemLdStr global_104
  loc_AD8FC1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD8FC6: LitStr vbNullString
  loc_AD8FC9: FLdPr Me
  loc_AD8FCC: VCallAd Control_ID_DetaConcLbl
  loc_AD8FCF: FStAdFunc var_88
  loc_AD8FD2: FLdPr var_88
  loc_AD8FD5: Me.Caption = from_stack_1
  loc_AD8FDA: FFree1Ad var_88
  loc_AD8FDD: FLdPr Me
  loc_AD8FE0: VCallAd Control_ID_CodiConcMsk
  loc_AD8FE3: CVarAd
  loc_AD8FE7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD8FEC: FFree1Var var_98 = ""
  loc_AD8FEF: LitI2_Byte &HFF
  loc_AD8FF1: IStI2 arg_C
  loc_AD8FF4: ExitProcHresult
  loc_AD8FF5: FLdPr Me
  loc_AD8FF8: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AD8FFB: FStAdFunc var_88
  loc_AD8FFE: FLdPr var_88
  loc_AD9001: LateIdLdVar var_98 DispID_15 0
  loc_AD9008: CStrVarTmp
  loc_AD9009: CVarStr var_A8
  loc_AD900C: FLdRfVar var_B8
  loc_AD900F: ImpAdCallFPR4  = Year()
  loc_AD9014: FLdPr Me
  loc_AD9017: VCallAd Control_ID_CodiConcMsk
  loc_AD901A: FStAdFunc var_BC
  loc_AD901D: FLdPr var_BC
  loc_AD9020: LateIdLdVar var_CC DispID_22 0
  loc_AD9027: CStrVarTmp
  loc_AD9028: FStStrNoPop var_D0
  loc_AD902B: FLdRfVar var_B8
  loc_AD902E: CI2Var
  loc_AD902F: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AD9034: FStStrNoPop var_D4
  loc_AD9037: FLdPr Me
  loc_AD903A: VCallAd Control_ID_DetaConcLbl
  loc_AD903D: FStAdFunc var_D8
  loc_AD9040: FLdPr var_D8
  loc_AD9043: Me.Caption = from_stack_1
  loc_AD9048: FFreeStr var_D0 = ""
  loc_AD904F: FFreeAd var_88 = "": var_BC = ""
  loc_AD9058: FFreeVar var_98 = "": var_A8 = "": var_CC = ""
  loc_AD9063: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '9E34DC
  'Data Table: 4A2388
  loc_9E34C0: LitI2_Byte 0
  loc_9E34C2: PopTmpLdAd2 var_8A
  loc_9E34C5: ILdRf Me
  loc_9E34C8: CastAd
  loc_9E34CB: FStAdFunc var_88
  loc_9E34CE: FLdRfVar var_88
  loc_9E34D1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E34D6: FFree1Ad var_88
  loc_9E34D9: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A15C88
  'Data Table: 4A2388
  loc_A15C50: FLdPr Me
  loc_A15C53: VCallAd Control_ID_statusBar
  loc_A15C56: FStAdFunc var_88
  loc_A15C59: FLdPr var_88
  loc_A15C5C: LateIdLdVar var_98 DispID_1 0
  loc_A15C63: CStrVarTmp
  loc_A15C64: CVarStr var_A8
  loc_A15C67: PopAdLdVar
  loc_A15C68: FLdPr Me
  loc_A15C6B: VCallAd Control_ID_statusBar
  loc_A15C6E: FStAdFunc var_BC
  loc_A15C71: FLdPr var_BC
  loc_A15C74: LateIdSt
  loc_A15C79: FFreeAd var_88 = ""
  loc_A15C80: FFreeVar var_98 = ""
  loc_A15C87: ExitProcHresult
End Sub

Private Sub Form_Load() '9F53A0
  'Data Table: 4A2388
  loc_9F5378: ILdRf Me
  loc_9F537B: CastAd
  loc_9F537E: FStAdFunc var_88
  loc_9F5381: FLdRfVar var_88
  loc_9F5384: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9F5389: FFree1Ad var_88
  loc_9F538C: Call cmdNueva_Click()
  loc_9F5391: ImpAdLdI2 MemVar_D93C8E
  loc_9F5394: FLdPr Me
  loc_9F5397: MemStI2 global_108
  loc_9F539A: LitI2_Byte &HFF
  loc_9F539C: ImpAdStI2 MemVar_D93C8E
  loc_9F539F: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9E7220
  'Data Table: 4A2388
  loc_9E7200: FLdPr Me
  loc_9E7203: VCallAd Control_ID_wbbReporte
  loc_9E7206: FStAdFunc var_88
  loc_9E7209: FLdRfVar var_88
  loc_9E720C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9E7211: FFree1Ad var_88
  loc_9E7214: FLdPr Me
  loc_9E7217: MemLdI2 global_108
  loc_9E721A: ImpAdStI2 MemVar_D93C8E
  loc_9E721D: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9D3850
  'Data Table: 4A2388
  loc_9D3838: LitI2_Byte 0
  loc_9D383A: ILdRf Me
  loc_9D383D: CastAd
  loc_9D3840: FStAdFunc var_88
  loc_9D3843: FLdRfVar var_88
  loc_9D3846: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D384B: FFree1Ad var_88
  loc_9D384E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AA5EDC
  'Data Table: 4A2388
  loc_AA5E18: LitI2_Byte 0
  loc_AA5E1A: FLdPr Me
  loc_AA5E1D: MemStI2 bGenerado
  loc_AA5E20: LitI2_Byte 0
  loc_AA5E22: ILdRf Me
  loc_AA5E25: CastAd
  loc_AA5E28: FStAdFunc var_88
  loc_AA5E2B: FLdRfVar var_88
  loc_AA5E2E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AA5E33: FFree1Ad var_88
  loc_AA5E36: LitI2_Byte 0
  loc_AA5E38: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA5E3D: CStrDate
  loc_AA5E3F: CVarStr var_98
  loc_AA5E42: PopAdLdVar
  loc_AA5E43: FLdPr Me
  loc_AA5E46: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AA5E49: FStAdFunc var_88
  loc_AA5E4C: FLdPr var_88
  loc_AA5E4F: LateIdSt
  loc_AA5E54: FFree1Ad var_88
  loc_AA5E57: FFree1Var var_98 = ""
  loc_AA5E5A: FLdPr Me
  loc_AA5E5D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AA5E60: FStAdFunc var_88
  loc_AA5E63: FLdPr var_88
  loc_AA5E66: LateIdLdVar var_98 DispID_0 0
  loc_AA5E6D: CStrVarTmp
  loc_AA5E6E: CVarStr var_B8
  loc_AA5E71: PopAdLdVar
  loc_AA5E72: FLdPr Me
  loc_AA5E75: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AA5E78: FStAdFunc var_BC
  loc_AA5E7B: FLdPr var_BC
  loc_AA5E7E: LateIdSt
  loc_AA5E83: FFreeAd var_88 = ""
  loc_AA5E8A: FFreeVar var_98 = ""
  loc_AA5E91: LitVarStr var_A8, vbNullString
  loc_AA5E96: PopAdLdVar
  loc_AA5E97: FLdPr Me
  loc_AA5E9A: VCallAd Control_ID_CodiConcMsk
  loc_AA5E9D: FStAdFunc var_88
  loc_AA5EA0: FLdPr var_88
  loc_AA5EA3: LateIdSt
  loc_AA5EA8: FFree1Ad var_88
  loc_AA5EAB: LitStr vbNullString
  loc_AA5EAE: FLdPr Me
  loc_AA5EB1: VCallAd Control_ID_DetaConcLbl
  loc_AA5EB4: FStAdFunc var_88
  loc_AA5EB7: FLdPr var_88
  loc_AA5EBA: Me.Caption = from_stack_1
  loc_AA5EBF: FFree1Ad var_88
  loc_AA5EC2: Call HabilitarCriterio()
  loc_AA5EC7: ILdRf Me
  loc_AA5ECA: CastAd
  loc_AA5ECD: FStAdFunc var_88
  loc_AA5ED0: FLdRfVar var_88
  loc_AA5ED3: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AA5ED8: FFree1Ad var_88
  loc_AA5EDB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D37B8
  'Data Table: 4A2388
  loc_9D37A0: ILdRf Me
  loc_9D37A3: CastAd
  loc_9D37A6: FStAdFunc var_88
  loc_9D37A9: FLdRfVar var_88
  loc_9D37AC: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D37B1: FFree1Ad var_88
  loc_9D37B4: ExitProcHresult
  loc_9D37B5: CVarCy cmdPrevia_ClickC2
End Sub

Private Sub FeenAcpaDesdeMsk_UnknownEvent_0 '9C1C28
  'Data Table: 4A2388
  loc_9C1C14: FLdPr Me
  loc_9C1C17: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_9C1C1A: CVarAd
  loc_9C1C1E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1C23: FFree1Var var_94 = ""
  loc_9C1C26: ExitProcHresult
End Sub

Private Function FeenAcpaDesdeMsk_UnknownEvent_8(arg_C) 'A63F20
  'Data Table: 4A2388
  loc_A63EC4: FLdPr Me
  loc_A63EC7: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A63ECA: FStAdFunc var_88
  loc_A63ECD: FLdPr var_88
  loc_A63ED0: LateIdLdVar var_98 DispID_15 0
  loc_A63ED7: CStrVarTmp
  loc_A63ED8: FStStrNoPop var_9C
  loc_A63EDB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A63EE0: FStStrNoPop var_A0
  loc_A63EE3: FLdPr Me
  loc_A63EE6: MemStStrCopy
  loc_A63EEA: FFreeStr var_9C = ""
  loc_A63EF1: FFree1Ad var_88
  loc_A63EF4: FFree1Var var_98 = ""
  loc_A63EF7: FLdPr Me
  loc_A63EFA: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A63EFD: FStAdFuncNoPop
  loc_A63F00: CastAd
  loc_A63F03: FStAdFunc var_A4
  loc_A63F06: FLdRfVar var_A4
  loc_A63F09: FLdPr Me
  loc_A63F0C: MemLdStr global_104
  loc_A63F0F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63F14: IStI2 arg_C
  loc_A63F17: FFreeAd var_88 = ""
  loc_A63F1E: ExitProcHresult
End Function

Private Sub cmdSalir_Click() '9FEE54
  'Data Table: 4A2388
  loc_9FEE24: LitVarStr var_94, "Cerrando..."
  loc_9FEE29: PopAdLdVar
  loc_9FEE2A: FLdPr Me
  loc_9FEE2D: VCallAd Control_ID_statusBar
  loc_9FEE30: FStAdFunc var_A8
  loc_9FEE33: FLdPr var_A8
  loc_9FEE36: LateIdSt
  loc_9FEE3B: FFree1Ad var_A8
  loc_9FEE3E: ILdRf Me
  loc_9FEE41: FStAdNoPop
  loc_9FEE45: ImpAdLdRf MemVar_D9C5D8
  loc_9FEE48: NewIfNullPr Global
  loc_9FEE4B: Global.Unload from_stack_1
  loc_9FEE50: FFree1Ad var_A8
  loc_9FEE53: ExitProcHresult
End Sub

Private Sub FeenAcpaHastaMsk_UnknownEvent_0 '9C1B08
  'Data Table: 4A2388
  loc_9C1AF4: FLdPr Me
  loc_9C1AF7: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_9C1AFA: CVarAd
  loc_9C1AFE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1B03: FFree1Var var_94 = ""
  loc_9C1B06: ExitProcHresult
End Sub

Private Function FeenAcpaHastaMsk_UnknownEvent_8(arg_C) 'AC7804
  'Data Table: 4A2388
  loc_AC7710: FLdPr Me
  loc_AC7713: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC7716: FStAdFunc var_88
  loc_AC7719: FLdPr var_88
  loc_AC771C: LateIdLdVar var_98 DispID_15 0
  loc_AC7723: CStrVarTmp
  loc_AC7724: FStStrNoPop var_9C
  loc_AC7727: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_AC772C: FStStrNoPop var_A0
  loc_AC772F: FLdPr Me
  loc_AC7732: MemStStrCopy
  loc_AC7736: FFreeStr var_9C = ""
  loc_AC773D: FFree1Ad var_88
  loc_AC7740: FFree1Var var_98 = ""
  loc_AC7743: FLdPr Me
  loc_AC7746: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC7749: FStAdFuncNoPop
  loc_AC774C: CastAd
  loc_AC774F: FStAdFunc var_A4
  loc_AC7752: FLdRfVar var_A4
  loc_AC7755: FLdPr Me
  loc_AC7758: MemLdStr global_104
  loc_AC775B: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC7760: IStI2 arg_C
  loc_AC7763: FFreeAd var_88 = ""
  loc_AC776A: ILdI2 arg_C
  loc_AC776D: NotI4
  loc_AC776E: BranchF loc_AC7801
  loc_AC7771: FLdPr Me
  loc_AC7774: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC7777: FStAdFunc var_88
  loc_AC777A: FLdPr var_88
  loc_AC777D: LateIdLdVar var_98 DispID_15 0
  loc_AC7784: CStrVarTmp
  loc_AC7785: CVarStr var_B4
  loc_AC7788: FLdRfVar var_C4
  loc_AC778B: ImpAdCallFPR4  = Year()
  loc_AC7790: FLdRfVar var_C4
  loc_AC7793: FLdPr Me
  loc_AC7796: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC7799: FStAdFunc var_A4
  loc_AC779C: FLdPr var_A4
  loc_AC779F: LateIdLdVar var_D4 DispID_15 0
  loc_AC77A6: CStrVarTmp
  loc_AC77A7: CVarStr var_E4
  loc_AC77AA: FLdRfVar var_F4
  loc_AC77AD: ImpAdCallFPR4  = Year()
  loc_AC77B2: FLdRfVar var_F4
  loc_AC77B5: NeVarBool
  loc_AC77B7: FFreeAd var_88 = ""
  loc_AC77BE: FFreeVar var_98 = "": var_B4 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_AC77CD: BranchF loc_AC7801
  loc_AC77D0: LitStr "Las fechas ingresadas deben corresponder al mismo año."
  loc_AC77D3: FLdPr Me
  loc_AC77D6: MemStStrCopy
  loc_AC77DA: FLdPr Me
  loc_AC77DD: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC77E0: FStAdFuncNoPop
  loc_AC77E3: CastAd
  loc_AC77E6: FStAdFunc var_A4
  loc_AC77E9: FLdRfVar var_A4
  loc_AC77EC: FLdPr Me
  loc_AC77EF: MemLdStr global_104
  loc_AC77F2: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC77F7: IStI2 arg_C
  loc_AC77FA: FFreeAd var_88 = ""
  loc_AC7801: ExitProcHresult
  loc_AC7802: EqR4
End Function

Private Sub CodiConcCmd_Click() 'AC0AC4
  'Data Table: 4A2388
  loc_AC09D0: FLdPr Me
  loc_AC09D3: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC09D6: FStAdFunc var_88
  loc_AC09D9: FLdPr var_88
  loc_AC09DC: LateIdLdVar var_98 DispID_15 0
  loc_AC09E3: CStrVarTmp
  loc_AC09E4: CVarStr var_A8
  loc_AC09E7: FLdRfVar var_B8
  loc_AC09EA: ImpAdCallFPR4  = Year()
  loc_AC09EF: FLdRfVar var_B8
  loc_AC09F2: CI2Var
  loc_AC09F3: ImpAdLdRf MemVar_D94354
  loc_AC09F6: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC09F9: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC09FE: FFree1Ad var_88
  loc_AC0A01: FFreeVar var_98 = "": var_A8 = ""
  loc_AC0A0A: LitVar_Missing var_D8
  loc_AC0A0D: PopAdLdVar
  loc_AC0A0E: LitVarI4
  loc_AC0A16: PopAdLdVar
  loc_AC0A17: ImpAdLdRf MemVar_D94354
  loc_AC0A1A: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC0A1D: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC0A22: FLdRfVar var_DC
  loc_AC0A25: FLdRfVar var_88
  loc_AC0A28: ImpAdLdRf MemVar_D94354
  loc_AC0A2B: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC0A2E: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC0A33: FLdPr var_88
  loc_AC0A36: from_stack_1 = clsconcepto.RecordCount
  loc_AC0A3B: ILdRf var_DC
  loc_AC0A3E: LitI4 0
  loc_AC0A43: GtI4
  loc_AC0A44: FFree1Ad var_88
  loc_AC0A47: BranchF loc_AC0ABC
  loc_AC0A4A: FLdRfVar var_E0
  loc_AC0A4D: FLdRfVar var_88
  loc_AC0A50: ImpAdLdRf MemVar_D94354
  loc_AC0A53: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC0A56: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC0A5B: FLdPr var_88
  loc_AC0A5E: from_stack_1 = clsconcepto.CodiConc
  loc_AC0A63: FLdZeroAd var_E0
  loc_AC0A66: CVarStr var_98
  loc_AC0A69: PopAdLdVar
  loc_AC0A6A: FLdPr Me
  loc_AC0A6D: VCallAd Control_ID_CodiConcMsk
  loc_AC0A70: FStAdFunc var_E4
  loc_AC0A73: FLdPr var_E4
  loc_AC0A76: LateIdSt
  loc_AC0A7B: FFreeAd var_88 = ""
  loc_AC0A82: FFree1Var var_98 = ""
  loc_AC0A85: FLdRfVar var_E0
  loc_AC0A88: FLdRfVar var_88
  loc_AC0A8B: ImpAdLdRf MemVar_D94354
  loc_AC0A8E: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC0A91: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC0A96: FLdPr var_88
  loc_AC0A99: from_stack_1 = clsconcepto.DetaConc
  loc_AC0A9E: ILdRf var_E0
  loc_AC0AA1: FLdPr Me
  loc_AC0AA4: VCallAd Control_ID_DetaConcLbl
  loc_AC0AA7: FStAdFunc var_E4
  loc_AC0AAA: FLdPr var_E4
  loc_AC0AAD: Me.Caption = from_stack_1
  loc_AC0AB2: FFree1Str var_E0
  loc_AC0AB5: FFreeAd var_88 = ""
  loc_AC0ABC: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AC0AC1: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0E744
  'Data Table: 4A2388
  loc_A0E708: LitVar_Missing var_A4
  loc_A0E70B: PopAdLdVar
  loc_A0E70C: LitVarI4
  loc_A0E714: PopAdLdVar
  loc_A0E715: ImpAdLdRf MemVar_D930A4
  loc_A0E718: NewIfNullPr frmCalendario
  loc_A0E71B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0E720: ImpAdLdRf MemVar_D93028
  loc_A0E723: CDargRef
  loc_A0E727: FLdPr Me
  loc_A0E72A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A0E72D: FStAdFunc var_A8
  loc_A0E730: FLdPr var_A8
  loc_A0E733: LateIdSt
  loc_A0E738: FFree1Ad var_A8
  loc_A0E73B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0E740: ExitProcHresult
  loc_A0E741: UMiCy
  loc_A0E742: EqR4
End Sub

Public Function bGeneradoGet() '4A3324
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A3333
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A8B1B0
  'Data Table: 4A2388
  loc_A8B12C: LitI4 0
  loc_A8B131: LitI4 5
  loc_A8B136: FLdRfVar var_88
  loc_A8B139: Redim
  loc_A8B143: FLdPr Me
  loc_A8B146: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A8B149: CVarAd
  loc_A8B14D: ParmAry1St
  loc_A8B153: FLdPr Me
  loc_A8B156: VCallAd Control_ID_DesdeFechaCmd
  loc_A8B159: CVarAd
  loc_A8B15D: ParmAry1St
  loc_A8B163: FLdPr Me
  loc_A8B166: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A8B169: CVarAd
  loc_A8B16D: ParmAry1St
  loc_A8B173: FLdPr Me
  loc_A8B176: VCallAd Control_ID_HastaFechaCmd
  loc_A8B179: CVarAd
  loc_A8B17D: ParmAry1St
  loc_A8B183: FLdPr Me
  loc_A8B186: VCallAd Control_ID_CodiConcMsk
  loc_A8B189: CVarAd
  loc_A8B18D: ParmAry1St
  loc_A8B193: FLdPr Me
  loc_A8B196: VCallAd Control_ID_CodiConcCmd
  loc_A8B199: CVarAd
  loc_A8B19D: ParmAry1St
  loc_A8B1A3: FLdRfVar var_88
  loc_A8B1A6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A8B1AB: FLdRfVar var_88
  loc_A8B1AE: Erase
  loc_A8B1AF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'CA74AC
  'Data Table: 4A2388
  loc_CA585C: FLdPr Me
  loc_CA585F: MemLdI2 bGenerado
  loc_CA5862: BranchF loc_CA5866
  loc_CA5865: ExitProcHresult
  loc_CA5866: LitVarStr var_98, "Generando reporte..."
  loc_CA586B: PopAdLdVar
  loc_CA586C: FLdPr Me
  loc_CA586F: VCallAd Control_ID_statusBar
  loc_CA5872: FStAdFunc var_AC
  loc_CA5875: FLdPr var_AC
  loc_CA5878: LateIdSt
  loc_CA587D: FFree1Ad var_AC
  loc_CA5880: LitI4 &HB
  loc_CA5885: CI2I4
  loc_CA5886: FLdPr Me
  loc_CA5889: Me.MousePointer = from_stack_1
  loc_CA588E: LitI2_Byte 0
  loc_CA5890: PopTmpLdAd2 var_AE
  loc_CA5893: from_stack_2v = FeenAcpaDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_CA5898: FLdPr Me
  loc_CA589B: MemLdStr global_104
  loc_CA589E: LitStr vbNullString
  loc_CA58A1: NeStr
  loc_CA58A3: BranchF loc_CA58A9
  loc_CA58A6: Branch loc_CA7481
  loc_CA58A9: LitI2_Byte 0
  loc_CA58AB: PopTmpLdAd2 var_AE
  loc_CA58AE: from_stack_2v = FeenAcpaHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_CA58B3: FLdPr Me
  loc_CA58B6: MemLdStr global_104
  loc_CA58B9: LitStr vbNullString
  loc_CA58BC: NeStr
  loc_CA58BE: BranchF loc_CA58C4
  loc_CA58C1: Branch loc_CA7481
  loc_CA58C4: LitI2_Byte 0
  loc_CA58C6: PopTmpLdAd2 var_AE
  loc_CA58C9: from_stack_2v = CodiConcMsk_UnknownEvent_8(from_stack_1v)
  loc_CA58CE: FLdPr Me
  loc_CA58D1: MemLdStr global_104
  loc_CA58D4: LitStr vbNullString
  loc_CA58D7: NeStr
  loc_CA58D9: BranchF loc_CA58DF
  loc_CA58DC: Branch loc_CA7481
  loc_CA58DF: LitStr " deta.CodiConc = '"
  loc_CA58E2: FLdPr Me
  loc_CA58E5: VCallAd Control_ID_CodiConcMsk
  loc_CA58E8: FStAdFunc var_AC
  loc_CA58EB: FLdPr var_AC
  loc_CA58EE: LateIdLdVar var_C0 DispID_22 0
  loc_CA58F5: CStrVarTmp
  loc_CA58F6: FStStrNoPop var_C4
  loc_CA58F9: ConcatStr
  loc_CA58FA: FStStrNoPop var_C8
  loc_CA58FD: LitStr "'"
  loc_CA5900: ConcatStr
  loc_CA5901: FStStr var_88
  loc_CA5904: FFreeStr var_C4 = ""
  loc_CA590B: FFree1Ad var_AC
  loc_CA590E: FFree1Var var_C0 = ""
  loc_CA5911: FLdPr Me
  loc_CA5914: MemLdRfVar from_stack_1.global_76
  loc_CA5917: NewIfNullAd
  loc_CA591A: FStAd var_CC 
  loc_CA591E: FLdPr Me
  loc_CA5921: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5924: FStAdFunc var_AC
  loc_CA5927: FLdPr var_AC
  loc_CA592A: LateIdLdVar var_C0 DispID_15 0
  loc_CA5931: PopAd
  loc_CA5933: FLdPr Me
  loc_CA5936: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA5939: FStAdFunc var_104
  loc_CA593C: FLdPr var_104
  loc_CA593F: LateIdLdVar var_114 DispID_15 0
  loc_CA5946: PopAd
  loc_CA5948: LitStr "DROP TEMPORARY TABLE IF EXISTS deta;"
  loc_CA594B: LitStr " CREATE TEMPORARY TABLE deta"
  loc_CA594E: ConcatStr
  loc_CA594F: FStStrNoPop var_C4
  loc_CA5952: LitStr " SELECT detapago.CodiConc, sum(CapiDepa-DecaDepa-ExenDepa) as TotaDepa, "
  loc_CA5955: ConcatStr
  loc_CA5956: FStStrNoPop var_C8
  loc_CA5959: LitStr " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, sum(CapiDepa) as CapiDepa, sum(DecaDepa) as DecaDepa, sum(ExenDepa) as ExenDepa"
  loc_CA595C: ConcatStr
  loc_CA595D: FStStrNoPop var_D0
  loc_CA5960: LitStr " FROM detapago"
  loc_CA5963: ConcatStr
  loc_CA5964: FStStrNoPop var_D4
  loc_CA5967: LitStr " WHERE FeenAcpa BETWEEN '"
  loc_CA596A: ConcatStr
  loc_CA596B: FStStrNoPop var_F8
  loc_CA596E: LitI4 1
  loc_CA5973: LitI4 1
  loc_CA5978: LitVarStr var_98, "yyyy-mm-dd"
  loc_CA597D: FStVarCopyObj var_F4
  loc_CA5980: FLdRfVar var_F4
  loc_CA5983: FLdRfVar var_C0
  loc_CA5986: CStrVarTmp
  loc_CA5987: CVarStr var_E4
  loc_CA598A: ImpAdCallI2 Format$(, )
  loc_CA598F: FStStrNoPop var_FC
  loc_CA5992: ConcatStr
  loc_CA5993: FStStrNoPop var_100
  loc_CA5996: LitStr "' AND '"
  loc_CA5999: ConcatStr
  loc_CA599A: FStStrNoPop var_138
  loc_CA599D: LitI4 1
  loc_CA59A2: LitI4 1
  loc_CA59A7: LitVarStr var_A8, "yyyy-mm-dd"
  loc_CA59AC: FStVarCopyObj var_134
  loc_CA59AF: FLdRfVar var_134
  loc_CA59B2: FLdRfVar var_114
  loc_CA59B5: CStrVarTmp
  loc_CA59B6: CVarStr var_124
  loc_CA59B9: ImpAdCallI2 Format$(, )
  loc_CA59BE: FStStrNoPop var_13C
  loc_CA59C1: ConcatStr
  loc_CA59C2: FStStrNoPop var_140
  loc_CA59C5: LitStr "'"
  loc_CA59C8: ConcatStr
  loc_CA59C9: FStStrNoPop var_144
  loc_CA59CC: LitStr " GROUP BY detapago.CodiConc, PeriBole, NumeBole;"
  loc_CA59CF: ConcatStr
  loc_CA59D0: FStStrNoPop var_148
  loc_CA59D3: FLdPr var_CC
  loc_CA59D6: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CA59DB: FFreeStr var_C4 = "": var_C8 = "": var_D0 = "": var_D4 = "": var_F8 = "": var_FC = "": var_100 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_CA59F6: FFreeAd var_AC = ""
  loc_CA59FD: FFreeVar var_C0 = "": var_E4 = "": var_F4 = "": var_114 = "": var_124 = ""
  loc_CA5A0C: LitStr "Municipalidad de Guaymallén"
  loc_CA5A0F: LitStr "Municipalidad de Rivadavia"
  loc_CA5A12: EqStr
  loc_CA5A14: LitStr "Municipalidad de Guaymallén"
  loc_CA5A17: LitStr "Municipalidad de Tunuyán"
  loc_CA5A1A: EqStr
  loc_CA5A1C: OrI4
  loc_CA5A1D: BranchF loc_CA5F79
  loc_CA5A20: FLdPr Me
  loc_CA5A23: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5A26: FStAdFunc var_104
  loc_CA5A29: FLdPr var_104
  loc_CA5A2C: LateIdLdVar var_158 DispID_15 0
  loc_CA5A33: PopAd
  loc_CA5A35: FLdPr Me
  loc_CA5A38: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA5A3B: FStAdFunc var_1BC
  loc_CA5A3E: FLdPr var_1BC
  loc_CA5A41: LateIdLdVar var_1CC DispID_15 0
  loc_CA5A48: PopAd
  loc_CA5A4A: FLdPr Me
  loc_CA5A4D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5A50: FStAdFunc var_344
  loc_CA5A53: FLdPr var_344
  loc_CA5A56: LateIdLdVar var_354 DispID_15 0
  loc_CA5A5D: PopAd
  loc_CA5A5F: FLdPr Me
  loc_CA5A62: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA5A65: FStAdFunc var_3C8
  loc_CA5A68: FLdPr var_3C8
  loc_CA5A6B: LateIdLdVar var_3D8 DispID_15 0
  loc_CA5A72: PopAd
  loc_CA5A74: FLdPr Me
  loc_CA5A77: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5A7A: FStAdFunc var_550
  loc_CA5A7D: FLdPr var_550
  loc_CA5A80: LateIdLdVar var_560 DispID_15 0
  loc_CA5A87: PopAd
  loc_CA5A89: FLdPr Me
  loc_CA5A8C: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA5A8F: FStAdFunc var_5D4
  loc_CA5A92: FLdPr var_5D4
  loc_CA5A95: LateIdLdVar var_5E4 DispID_15 0
  loc_CA5A9C: PopAd
  loc_CA5A9E: FLdPr Me
  loc_CA5AA1: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5AA4: FStAdFunc var_75C
  loc_CA5AA7: FLdPr var_75C
  loc_CA5AAA: LateIdLdVar var_76C DispID_15 0
  loc_CA5AB1: PopAd
  loc_CA5AB3: FLdPr Me
  loc_CA5AB6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA5AB9: FStAdFunc var_7E0
  loc_CA5ABC: FLdPr var_7E0
  loc_CA5ABF: LateIdLdVar var_7F0 DispID_15 0
  loc_CA5AC6: PopAd
  loc_CA5AC8: FLdPr Me
  loc_CA5ACB: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5ACE: FStAdFunc var_8E8
  loc_CA5AD1: FLdPr var_8E8
  loc_CA5AD4: LateIdLdVar var_8F8 DispID_15 0
  loc_CA5ADB: PopAd
  loc_CA5ADD: FLdPr Me
  loc_CA5AE0: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA5AE3: FStAdFunc var_96C
  loc_CA5AE6: FLdPr var_96C
  loc_CA5AE9: LateIdLdVar var_97C DispID_15 0
  loc_CA5AF0: PopAd
  loc_CA5AF2: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa,"
  loc_CA5AF5: LitStr " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA5AF8: ConcatStr
  loc_CA5AF9: FStStrNoPop var_C4
  loc_CA5AFC: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA5AFF: ConcatStr
  loc_CA5B00: CVarStr var_114
  loc_CA5B03: FLdPr Me
  loc_CA5B06: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5B09: FStAdFunc var_AC
  loc_CA5B0C: FLdPr var_AC
  loc_CA5B0F: LateIdLdVar var_C0 DispID_15 0
  loc_CA5B16: CStrVarTmp
  loc_CA5B17: CVarStr var_E4
  loc_CA5B1A: FLdRfVar var_F4
  loc_CA5B1D: ImpAdCallFPR4  = Year()
  loc_CA5B22: FLdRfVar var_F4
  loc_CA5B25: ConcatVar var_124
  loc_CA5B29: LitVarStr var_98, " WHERE FeenAcpa BETWEEN '"
  loc_CA5B2E: ConcatVar var_134
  loc_CA5B32: LitI4 1
  loc_CA5B37: LitI4 1
  loc_CA5B3C: LitVarStr var_A8, "yyyy-mm-dd"
  loc_CA5B41: FStVarCopyObj var_178
  loc_CA5B44: FLdRfVar var_178
  loc_CA5B47: FLdRfVar var_158
  loc_CA5B4A: CStrVarTmp
  loc_CA5B4B: CVarStr var_168
  loc_CA5B4E: ImpAdCallI2 Format$(, )
  loc_CA5B53: CVarStr var_188
  loc_CA5B56: ConcatVar var_198
  loc_CA5B5A: LitVarStr var_1A8, "' AND '"
  loc_CA5B5F: ConcatVar var_1B8
  loc_CA5B63: LitI4 1
  loc_CA5B68: LitI4 1
  loc_CA5B6D: LitVarStr var_1EC, "yyyy-mm-dd"
  loc_CA5B72: FStVarCopyObj var_1FC
  loc_CA5B75: FLdRfVar var_1FC
  loc_CA5B78: FLdRfVar var_1CC
  loc_CA5B7B: CStrVarTmp
  loc_CA5B7C: CVarStr var_1DC
  loc_CA5B7F: ImpAdCallI2 Format$(, )
  loc_CA5B84: CVarStr var_20C
  loc_CA5B87: ConcatVar var_21C
  loc_CA5B8B: LitVarStr var_22C, "'"
  loc_CA5B90: ConcatVar var_23C
  loc_CA5B94: LitVarStr var_24C, " GROUP BY TRUE;"
  loc_CA5B99: ConcatVar var_25C
  loc_CA5B9D: LitVarStr var_26C, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, "
  loc_CA5BA2: ConcatVar var_27C
  loc_CA5BA6: LitVarStr var_28C, " FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA5BAB: ConcatVar var_29C
  loc_CA5BAF: LitVarStr var_2AC, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA5BB4: ConcatVar var_2BC
  loc_CA5BB8: FLdPr Me
  loc_CA5BBB: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5BBE: FStAdFunc var_2C0
  loc_CA5BC1: FLdPr var_2C0
  loc_CA5BC4: LateIdLdVar var_2D0 DispID_15 0
  loc_CA5BCB: CStrVarTmp
  loc_CA5BCC: CVarStr var_2E0
  loc_CA5BCF: FLdRfVar var_2F0
  loc_CA5BD2: ImpAdCallFPR4  = Year()
  loc_CA5BD7: FLdRfVar var_2F0
  loc_CA5BDA: ConcatVar var_300
  loc_CA5BDE: LitVarStr var_310, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CA5BE3: ConcatVar var_320
  loc_CA5BE7: LitVarStr var_330, " WHERE FeenAcpa BETWEEN '"
  loc_CA5BEC: ConcatVar var_340
  loc_CA5BF0: LitI4 1
  loc_CA5BF5: LitI4 1
  loc_CA5BFA: LitVarStr var_374, "yyyy-mm-dd"
  loc_CA5BFF: FStVarCopyObj var_384
  loc_CA5C02: FLdRfVar var_384
  loc_CA5C05: FLdRfVar var_354
  loc_CA5C08: CStrVarTmp
  loc_CA5C09: CVarStr var_364
  loc_CA5C0C: ImpAdCallI2 Format$(, )
  loc_CA5C11: CVarStr var_394
  loc_CA5C14: ConcatVar var_3A4
  loc_CA5C18: LitVarStr var_3B4, "' AND '"
  loc_CA5C1D: ConcatVar var_3C4
  loc_CA5C21: LitI4 1
  loc_CA5C26: LitI4 1
  loc_CA5C2B: LitVarStr var_3F8, "yyyy-mm-dd"
  loc_CA5C30: FStVarCopyObj var_408
  loc_CA5C33: FLdRfVar var_408
  loc_CA5C36: FLdRfVar var_3D8
  loc_CA5C39: CStrVarTmp
  loc_CA5C3A: CVarStr var_3E8
  loc_CA5C3D: ImpAdCallI2 Format$(, )
  loc_CA5C42: CVarStr var_418
  loc_CA5C45: ConcatVar var_428
  loc_CA5C49: LitVarStr var_438, "'"
  loc_CA5C4E: ConcatVar var_448
  loc_CA5C52: LitVarStr var_458, " GROUP BY TRUE;"
  loc_CA5C57: ConcatVar var_468
  loc_CA5C5B: LitVarStr var_478, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_CA5C60: ConcatVar var_488
  loc_CA5C64: LitVarStr var_498, " FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA5C69: ConcatVar var_4A8
  loc_CA5C6D: LitVarStr var_4B8, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA5C72: ConcatVar var_4C8
  loc_CA5C76: FLdPr Me
  loc_CA5C79: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5C7C: FStAdFunc var_4CC
  loc_CA5C7F: FLdPr var_4CC
  loc_CA5C82: LateIdLdVar var_4DC DispID_15 0
  loc_CA5C89: CStrVarTmp
  loc_CA5C8A: CVarStr var_4EC
  loc_CA5C8D: FLdRfVar var_4FC
  loc_CA5C90: ImpAdCallFPR4  = Year()
  loc_CA5C95: FLdRfVar var_4FC
  loc_CA5C98: ConcatVar var_50C
  loc_CA5C9C: LitVarStr var_51C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CA5CA1: ConcatVar var_52C
  loc_CA5CA5: LitVarStr var_53C, " WHERE FeenAcpa BETWEEN '"
  loc_CA5CAA: ConcatVar var_54C
  loc_CA5CAE: LitI4 1
  loc_CA5CB3: LitI4 1
  loc_CA5CB8: LitVarStr var_580, "yyyy-mm-dd"
  loc_CA5CBD: FStVarCopyObj var_590
  loc_CA5CC0: FLdRfVar var_590
  loc_CA5CC3: FLdRfVar var_560
  loc_CA5CC6: CStrVarTmp
  loc_CA5CC7: CVarStr var_570
  loc_CA5CCA: ImpAdCallI2 Format$(, )
  loc_CA5CCF: CVarStr var_5A0
  loc_CA5CD2: ConcatVar var_5B0
  loc_CA5CD6: LitVarStr var_5C0, "' AND '"
  loc_CA5CDB: ConcatVar var_5D0
  loc_CA5CDF: LitI4 1
  loc_CA5CE4: LitI4 1
  loc_CA5CE9: LitVarStr var_604, "yyyy-mm-dd"
  loc_CA5CEE: FStVarCopyObj var_614
  loc_CA5CF1: FLdRfVar var_614
  loc_CA5CF4: FLdRfVar var_5E4
  loc_CA5CF7: CStrVarTmp
  loc_CA5CF8: CVarStr var_5F4
  loc_CA5CFB: ImpAdCallI2 Format$(, )
  loc_CA5D00: CVarStr var_624
  loc_CA5D03: ConcatVar var_634
  loc_CA5D07: LitVarStr var_644, "'"
  loc_CA5D0C: ConcatVar var_654
  loc_CA5D10: LitVarStr var_664, " GROUP BY TRUE;"
  loc_CA5D15: ConcatVar var_674
  loc_CA5D19: LitVarStr var_684, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CA5D1E: ConcatVar var_694
  loc_CA5D22: LitVarStr var_6A4, " FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA5D27: ConcatVar var_6B4
  loc_CA5D2B: LitVarStr var_6C4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA5D30: ConcatVar var_6D4
  loc_CA5D34: FLdPr Me
  loc_CA5D37: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5D3A: FStAdFunc var_6D8
  loc_CA5D3D: FLdPr var_6D8
  loc_CA5D40: LateIdLdVar var_6E8 DispID_15 0
  loc_CA5D47: CStrVarTmp
  loc_CA5D48: CVarStr var_6F8
  loc_CA5D4B: FLdRfVar var_708
  loc_CA5D4E: ImpAdCallFPR4  = Year()
  loc_CA5D53: FLdRfVar var_708
  loc_CA5D56: ConcatVar var_718
  loc_CA5D5A: LitVarStr var_728, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CA5D5F: ConcatVar var_738
  loc_CA5D63: LitVarStr var_748, " WHERE FeenAcpa BETWEEN '"
  loc_CA5D68: ConcatVar var_758
  loc_CA5D6C: LitI4 1
  loc_CA5D71: LitI4 1
  loc_CA5D76: LitVarStr var_78C, "yyyy-mm-dd"
  loc_CA5D7B: FStVarCopyObj var_79C
  loc_CA5D7E: FLdRfVar var_79C
  loc_CA5D81: FLdRfVar var_76C
  loc_CA5D84: CStrVarTmp
  loc_CA5D85: CVarStr var_77C
  loc_CA5D88: ImpAdCallI2 Format$(, )
  loc_CA5D8D: CVarStr var_7AC
  loc_CA5D90: ConcatVar var_7BC
  loc_CA5D94: LitVarStr var_7CC, "' AND '"
  loc_CA5D99: ConcatVar var_7DC
  loc_CA5D9D: LitI4 1
  loc_CA5DA2: LitI4 1
  loc_CA5DA7: LitVarStr var_810, "yyyy-mm-dd"
  loc_CA5DAC: FStVarCopyObj var_820
  loc_CA5DAF: FLdRfVar var_820
  loc_CA5DB2: FLdRfVar var_7F0
  loc_CA5DB5: CStrVarTmp
  loc_CA5DB6: CVarStr var_800
  loc_CA5DB9: ImpAdCallI2 Format$(, )
  loc_CA5DBE: CVarStr var_830
  loc_CA5DC1: ConcatVar var_840
  loc_CA5DC5: LitVarStr var_850, "'"
  loc_CA5DCA: ConcatVar var_860
  loc_CA5DCE: LitVarStr var_870, " GROUP BY TRUE; INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA5DD3: ConcatVar var_880
  loc_CA5DD7: FLdPr Me
  loc_CA5DDA: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5DDD: FStAdFunc var_884
  loc_CA5DE0: FLdPr var_884
  loc_CA5DE3: LateIdLdVar var_894 DispID_15 0
  loc_CA5DEA: CStrVarTmp
  loc_CA5DEB: CVarStr var_8A4
  loc_CA5DEE: FLdRfVar var_8B4
  loc_CA5DF1: ImpAdCallFPR4  = Year()
  loc_CA5DF6: FLdRfVar var_8B4
  loc_CA5DF9: ConcatVar var_8C4
  loc_CA5DFD: LitVarStr var_8D4, " WHERE FeenAcpa BETWEEN '"
  loc_CA5E02: ConcatVar var_8E4
  loc_CA5E06: LitI4 1
  loc_CA5E0B: LitI4 1
  loc_CA5E10: LitVarStr var_918, "yyyy-mm-dd"
  loc_CA5E15: FStVarCopyObj var_928
  loc_CA5E18: FLdRfVar var_928
  loc_CA5E1B: FLdRfVar var_8F8
  loc_CA5E1E: CStrVarTmp
  loc_CA5E1F: CVarStr var_908
  loc_CA5E22: ImpAdCallI2 Format$(, )
  loc_CA5E27: CVarStr var_938
  loc_CA5E2A: ConcatVar var_948
  loc_CA5E2E: LitVarStr var_958, "' AND '"
  loc_CA5E33: ConcatVar var_968
  loc_CA5E37: LitI4 1
  loc_CA5E3C: LitI4 1
  loc_CA5E41: LitVarStr var_99C, "yyyy-mm-dd"
  loc_CA5E46: FStVarCopyObj var_9AC
  loc_CA5E49: FLdRfVar var_9AC
  loc_CA5E4C: FLdRfVar var_97C
  loc_CA5E4F: CStrVarTmp
  loc_CA5E50: CVarStr var_98C
  loc_CA5E53: ImpAdCallI2 Format$(, )
  loc_CA5E58: CVarStr var_9BC
  loc_CA5E5B: ConcatVar var_9CC
  loc_CA5E5F: LitVarStr var_9DC, "'"
  loc_CA5E64: ConcatVar var_9EC
  loc_CA5E68: LitVarStr var_9FC, " GROUP BY TRUE;"
  loc_CA5E6D: ConcatVar var_A0C
  loc_CA5E71: CStrVarVal var_C8
  loc_CA5E75: FLdPr var_CC
  loc_CA5E78: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CA5E7D: FFreeStr var_C4 = ""
  loc_CA5E84: FFreeAd var_AC = "": var_104 = "": var_1BC = "": var_2C0 = "": var_344 = "": var_3C8 = "": var_4CC = "": var_550 = "": var_5D4 = "": var_6D8 = "": var_75C = "": var_7E0 = "": var_884 = "": var_8E8 = ""
  loc_CA5EA5: FFreeVar var_908 = "": var_928 = "": var_8E4 = "": var_938 = "": var_948 = "": var_97C = "": var_98C = "": var_9AC = "": var_968 = "": var_9BC = "": var_9CC = "": var_9EC = "": var_A0C = "": var_634 = "": var_654 = "": var_674 = "": var_694 = "": var_6B4 = "": var_6E8 = "": var_6F8 = "": var_6D4 = "": var_708 = "": var_718 = "": var_738 = "": var_76C = "": var_77C = "": var_79C = "": var_758 = "": var_7AC = "": var_7BC = "": var_7F0 = "": var_800 = "": var_820 = "": var_7DC = "": var_830 = "": var_840 = "": var_860 = "": var_894 = "": var_8A4 = "": var_880 = "": var_8B4 = "": var_8C4 = "": var_8F8 = "": var_340 = "": var_394 = "": var_3A4 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C4 = "": var_418 = "": var_428 = "": var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4DC = "": var_4EC = "": var_4C8 = "": var_4FC = "": var_50C = "": var_52C = "": var_560 = "": var_570 = "": var_590 = "": var_54C = "": var_5A0 = "": var_5B0 = "": var_5E4 = "": var_5F4 = "": var_614 = "": var_5D0 = "": var_624 = "": var_C0 = "": var_E4 = "": var_114 = "": var_F4 = "": var_124 = "": var_158 = "": var_168 = "": var_178 = "": var_134 = "": var_188 = "": var_198 = "": var_1CC = "": var_1DC = "": var_1FC = "": var_1B8 = "": var_20C = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2D0 = "": var_2E0 = "": var_2BC = "": var_2F0 = "": var_300 = "": var_320 = "": var_354 = "": var_364 = ""
  loc_CA5F76: Branch loc_CA72BC
  loc_CA5F79: LitStr "Municipalidad de Guaymallén"
  loc_CA5F7C: LitStr "Municipalidad de Guaymallén"
  loc_CA5F7F: EqStr
  loc_CA5F81: BranchF loc_CA64C7
  loc_CA5F84: FLdPr Me
  loc_CA5F87: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5F8A: FStAdFunc var_104
  loc_CA5F8D: FLdPr var_104
  loc_CA5F90: LateIdLdVar var_158 DispID_15 0
  loc_CA5F97: PopAd
  loc_CA5F99: FLdPr Me
  loc_CA5F9C: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA5F9F: FStAdFunc var_1BC
  loc_CA5FA2: FLdPr var_1BC
  loc_CA5FA5: LateIdLdVar var_1CC DispID_15 0
  loc_CA5FAC: PopAd
  loc_CA5FAE: FLdPr Me
  loc_CA5FB1: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5FB4: FStAdFunc var_344
  loc_CA5FB7: FLdPr var_344
  loc_CA5FBA: LateIdLdVar var_340 DispID_15 0
  loc_CA5FC1: PopAd
  loc_CA5FC3: FLdPr Me
  loc_CA5FC6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA5FC9: FStAdFunc var_3C8
  loc_CA5FCC: FLdPr var_3C8
  loc_CA5FCF: LateIdLdVar var_3C4 DispID_15 0
  loc_CA5FD6: PopAd
  loc_CA5FD8: FLdPr Me
  loc_CA5FDB: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA5FDE: FStAdFunc var_550
  loc_CA5FE1: FLdPr var_550
  loc_CA5FE4: LateIdLdVar var_54C DispID_15 0
  loc_CA5FEB: PopAd
  loc_CA5FED: FLdPr Me
  loc_CA5FF0: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA5FF3: FStAdFunc var_5D4
  loc_CA5FF6: FLdPr var_5D4
  loc_CA5FF9: LateIdLdVar var_5D0 DispID_15 0
  loc_CA6000: PopAd
  loc_CA6002: FLdPr Me
  loc_CA6005: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6008: FStAdFunc var_75C
  loc_CA600B: FLdPr var_75C
  loc_CA600E: LateIdLdVar var_758 DispID_15 0
  loc_CA6015: PopAd
  loc_CA6017: FLdPr Me
  loc_CA601A: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA601D: FStAdFunc var_7E0
  loc_CA6020: FLdPr var_7E0
  loc_CA6023: LateIdLdVar var_7DC DispID_15 0
  loc_CA602A: PopAd
  loc_CA602C: FLdPr Me
  loc_CA602F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6032: FStAdFunc var_8E8
  loc_CA6035: FLdPr var_8E8
  loc_CA6038: LateIdLdVar var_8E4 DispID_15 0
  loc_CA603F: PopAd
  loc_CA6041: FLdPr Me
  loc_CA6044: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6047: FStAdFunc var_96C
  loc_CA604A: FLdPr var_96C
  loc_CA604D: LateIdLdVar var_968 DispID_15 0
  loc_CA6054: PopAd
  loc_CA6056: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA6059: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA605C: ConcatStr
  loc_CA605D: CVarStr var_114
  loc_CA6060: FLdPr Me
  loc_CA6063: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6066: FStAdFunc var_AC
  loc_CA6069: FLdPr var_AC
  loc_CA606C: LateIdLdVar var_C0 DispID_15 0
  loc_CA6073: CStrVarTmp
  loc_CA6074: CVarStr var_E4
  loc_CA6077: FLdRfVar var_F4
  loc_CA607A: ImpAdCallFPR4  = Year()
  loc_CA607F: FLdRfVar var_F4
  loc_CA6082: ConcatVar var_124
  loc_CA6086: LitVarStr var_98, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CA608B: ConcatVar var_134
  loc_CA608F: LitI4 1
  loc_CA6094: LitI4 1
  loc_CA6099: LitVarStr var_A8, "yyyy-mm-dd"
  loc_CA609E: FStVarCopyObj var_178
  loc_CA60A1: FLdRfVar var_178
  loc_CA60A4: FLdRfVar var_158
  loc_CA60A7: CStrVarTmp
  loc_CA60A8: CVarStr var_168
  loc_CA60AB: ImpAdCallI2 Format$(, )
  loc_CA60B0: CVarStr var_188
  loc_CA60B3: ConcatVar var_198
  loc_CA60B7: LitVarStr var_1A8, "' AND '"
  loc_CA60BC: ConcatVar var_1B8
  loc_CA60C0: LitI4 1
  loc_CA60C5: LitI4 1
  loc_CA60CA: LitVarStr var_1EC, "yyyy-mm-dd"
  loc_CA60CF: FStVarCopyObj var_1FC
  loc_CA60D2: FLdRfVar var_1FC
  loc_CA60D5: FLdRfVar var_1CC
  loc_CA60D8: CStrVarTmp
  loc_CA60D9: CVarStr var_1DC
  loc_CA60DC: ImpAdCallI2 Format$(, )
  loc_CA60E1: CVarStr var_20C
  loc_CA60E4: ConcatVar var_21C
  loc_CA60E8: LitVarStr var_22C, "'"
  loc_CA60ED: ConcatVar var_23C
  loc_CA60F1: LitVarStr var_24C, " GROUP BY TRUE;"
  loc_CA60F6: ConcatVar var_25C
  loc_CA60FA: LitVarStr var_26C, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, SUM(CoadBoap+IcomBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA60FF: ConcatVar var_27C
  loc_CA6103: LitVarStr var_28C, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6108: ConcatVar var_29C
  loc_CA610C: FLdPr Me
  loc_CA610F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6112: FStAdFunc var_2C0
  loc_CA6115: FLdPr var_2C0
  loc_CA6118: LateIdLdVar var_2BC DispID_15 0
  loc_CA611F: CStrVarTmp
  loc_CA6120: CVarStr var_2D0
  loc_CA6123: FLdRfVar var_2E0
  loc_CA6126: ImpAdCallFPR4  = Year()
  loc_CA612B: FLdRfVar var_2E0
  loc_CA612E: ConcatVar var_2F0
  loc_CA6132: LitVarStr var_2AC, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CA6137: ConcatVar var_300
  loc_CA613B: LitVarStr var_310, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CA6140: ConcatVar var_320
  loc_CA6144: LitI4 1
  loc_CA6149: LitI4 1
  loc_CA614E: LitVarStr var_330, "yyyy-mm-dd"
  loc_CA6153: FStVarCopyObj var_364
  loc_CA6156: FLdRfVar var_364
  loc_CA6159: FLdRfVar var_340
  loc_CA615C: CStrVarTmp
  loc_CA615D: CVarStr var_354
  loc_CA6160: ImpAdCallI2 Format$(, )
  loc_CA6165: CVarStr var_384
  loc_CA6168: ConcatVar var_394
  loc_CA616C: LitVarStr var_374, "' AND '"
  loc_CA6171: ConcatVar var_3A4
  loc_CA6175: LitI4 1
  loc_CA617A: LitI4 1
  loc_CA617F: LitVarStr var_3B4, "yyyy-mm-dd"
  loc_CA6184: FStVarCopyObj var_3E8
  loc_CA6187: FLdRfVar var_3E8
  loc_CA618A: FLdRfVar var_3C4
  loc_CA618D: CStrVarTmp
  loc_CA618E: CVarStr var_3D8
  loc_CA6191: ImpAdCallI2 Format$(, )
  loc_CA6196: CVarStr var_408
  loc_CA6199: ConcatVar var_418
  loc_CA619D: LitVarStr var_3F8, "'"
  loc_CA61A2: ConcatVar var_428
  loc_CA61A6: LitVarStr var_438, " GROUP BY TRUE;"
  loc_CA61AB: ConcatVar var_448
  loc_CA61AF: LitVarStr var_458, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap) as TotaDepa, "
  loc_CA61B4: ConcatVar var_468
  loc_CA61B8: LitVarStr var_478, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA61BD: ConcatVar var_488
  loc_CA61C1: LitVarStr var_498, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA61C6: ConcatVar var_4A8
  loc_CA61CA: FLdPr Me
  loc_CA61CD: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA61D0: FStAdFunc var_4CC
  loc_CA61D3: FLdPr var_4CC
  loc_CA61D6: LateIdLdVar var_4C8 DispID_15 0
  loc_CA61DD: CStrVarTmp
  loc_CA61DE: CVarStr var_4DC
  loc_CA61E1: FLdRfVar var_4EC
  loc_CA61E4: ImpAdCallFPR4  = Year()
  loc_CA61E9: FLdRfVar var_4EC
  loc_CA61EC: ConcatVar var_4FC
  loc_CA61F0: LitVarStr var_4B8, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CA61F5: ConcatVar var_50C
  loc_CA61F9: LitVarStr var_51C, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CA61FE: ConcatVar var_52C
  loc_CA6202: LitI4 1
  loc_CA6207: LitI4 1
  loc_CA620C: LitVarStr var_53C, "yyyy-mm-dd"
  loc_CA6211: FStVarCopyObj var_570
  loc_CA6214: FLdRfVar var_570
  loc_CA6217: FLdRfVar var_54C
  loc_CA621A: CStrVarTmp
  loc_CA621B: CVarStr var_560
  loc_CA621E: ImpAdCallI2 Format$(, )
  loc_CA6223: CVarStr var_590
  loc_CA6226: ConcatVar var_5A0
  loc_CA622A: LitVarStr var_580, "' AND '"
  loc_CA622F: ConcatVar var_5B0
  loc_CA6233: LitI4 1
  loc_CA6238: LitI4 1
  loc_CA623D: LitVarStr var_5C0, "yyyy-mm-dd"
  loc_CA6242: FStVarCopyObj var_5F4
  loc_CA6245: FLdRfVar var_5F4
  loc_CA6248: FLdRfVar var_5D0
  loc_CA624B: CStrVarTmp
  loc_CA624C: CVarStr var_5E4
  loc_CA624F: ImpAdCallI2 Format$(, )
  loc_CA6254: CVarStr var_614
  loc_CA6257: ConcatVar var_624
  loc_CA625B: LitVarStr var_604, "'"
  loc_CA6260: ConcatVar var_634
  loc_CA6264: LitVarStr var_644, " GROUP BY TRUE;"
  loc_CA6269: ConcatVar var_654
  loc_CA626D: LitVarStr var_664, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CA6272: ConcatVar var_674
  loc_CA6276: LitVarStr var_684, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA627B: ConcatVar var_694
  loc_CA627F: LitVarStr var_6A4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6284: ConcatVar var_6B4
  loc_CA6288: FLdPr Me
  loc_CA628B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA628E: FStAdFunc var_6D8
  loc_CA6291: FLdPr var_6D8
  loc_CA6294: LateIdLdVar var_6D4 DispID_15 0
  loc_CA629B: CStrVarTmp
  loc_CA629C: CVarStr var_6E8
  loc_CA629F: FLdRfVar var_6F8
  loc_CA62A2: ImpAdCallFPR4  = Year()
  loc_CA62A7: FLdRfVar var_6F8
  loc_CA62AA: ConcatVar var_708
  loc_CA62AE: LitVarStr var_6C4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CA62B3: ConcatVar var_718
  loc_CA62B7: LitVarStr var_728, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CA62BC: ConcatVar var_738
  loc_CA62C0: LitI4 1
  loc_CA62C5: LitI4 1
  loc_CA62CA: LitVarStr var_748, "yyyy-mm-dd"
  loc_CA62CF: FStVarCopyObj var_77C
  loc_CA62D2: FLdRfVar var_77C
  loc_CA62D5: FLdRfVar var_758
  loc_CA62D8: CStrVarTmp
  loc_CA62D9: CVarStr var_76C
  loc_CA62DC: ImpAdCallI2 Format$(, )
  loc_CA62E1: CVarStr var_79C
  loc_CA62E4: ConcatVar var_7AC
  loc_CA62E8: LitVarStr var_78C, "' AND '"
  loc_CA62ED: ConcatVar var_7BC
  loc_CA62F1: LitI4 1
  loc_CA62F6: LitI4 1
  loc_CA62FB: LitVarStr var_7CC, "yyyy-mm-dd"
  loc_CA6300: FStVarCopyObj var_800
  loc_CA6303: FLdRfVar var_800
  loc_CA6306: FLdRfVar var_7DC
  loc_CA6309: CStrVarTmp
  loc_CA630A: CVarStr var_7F0
  loc_CA630D: ImpAdCallI2 Format$(, )
  loc_CA6312: CVarStr var_820
  loc_CA6315: ConcatVar var_830
  loc_CA6319: LitVarStr var_810, "'"
  loc_CA631E: ConcatVar var_840
  loc_CA6322: LitVarStr var_850, " GROUP BY TRUE; INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6327: ConcatVar var_860
  loc_CA632B: FLdPr Me
  loc_CA632E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6331: FStAdFunc var_884
  loc_CA6334: FLdPr var_884
  loc_CA6337: LateIdLdVar var_880 DispID_15 0
  loc_CA633E: CStrVarTmp
  loc_CA633F: CVarStr var_894
  loc_CA6342: FLdRfVar var_8A4
  loc_CA6345: ImpAdCallFPR4  = Year()
  loc_CA634A: FLdRfVar var_8A4
  loc_CA634D: ConcatVar var_8B4
  loc_CA6351: LitVarStr var_870, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CA6356: ConcatVar var_8C4
  loc_CA635A: LitI4 1
  loc_CA635F: LitI4 1
  loc_CA6364: LitVarStr var_8D4, "yyyy-mm-dd"
  loc_CA6369: FStVarCopyObj var_908
  loc_CA636C: FLdRfVar var_908
  loc_CA636F: FLdRfVar var_8E4
  loc_CA6372: CStrVarTmp
  loc_CA6373: CVarStr var_8F8
  loc_CA6376: ImpAdCallI2 Format$(, )
  loc_CA637B: CVarStr var_928
  loc_CA637E: ConcatVar var_938
  loc_CA6382: LitVarStr var_918, "' AND '"
  loc_CA6387: ConcatVar var_948
  loc_CA638B: LitI4 1
  loc_CA6390: LitI4 1
  loc_CA6395: LitVarStr var_958, "yyyy-mm-dd"
  loc_CA639A: FStVarCopyObj var_98C
  loc_CA639D: FLdRfVar var_98C
  loc_CA63A0: FLdRfVar var_968
  loc_CA63A3: CStrVarTmp
  loc_CA63A4: CVarStr var_97C
  loc_CA63A7: ImpAdCallI2 Format$(, )
  loc_CA63AC: CVarStr var_9AC
  loc_CA63AF: ConcatVar var_9BC
  loc_CA63B3: LitVarStr var_99C, "'"
  loc_CA63B8: ConcatVar var_9CC
  loc_CA63BC: LitVarStr var_9DC, " GROUP BY TRUE;"
  loc_CA63C1: ConcatVar var_9EC
  loc_CA63C5: CStrVarVal var_C4
  loc_CA63C9: FLdPr var_CC
  loc_CA63CC: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CA63D1: FFree1Str var_C4
  loc_CA63D4: FFreeAd var_AC = "": var_104 = "": var_1BC = "": var_2C0 = "": var_344 = "": var_3C8 = "": var_4CC = "": var_550 = "": var_5D4 = "": var_6D8 = "": var_75C = "": var_7E0 = "": var_884 = "": var_8E8 = ""
  loc_CA63F5: FFreeVar var_908 = "": var_8C4 = "": var_928 = "": var_938 = "": var_968 = "": var_97C = "": var_98C = "": var_948 = "": var_9AC = "": var_9BC = "": var_9CC = "": var_9EC = "": var_634 = "": var_654 = "": var_674 = "": var_694 = "": var_6D4 = "": var_6E8 = "": var_6B4 = "": var_6F8 = "": var_708 = "": var_718 = "": var_758 = "": var_76C = "": var_77C = "": var_738 = "": var_79C = "": var_7AC = "": var_7DC = "": var_7F0 = "": var_800 = "": var_7BC = "": var_820 = "": var_830 = "": var_840 = "": var_880 = "": var_894 = "": var_860 = "": var_8A4 = "": var_8B4 = "": var_8E4 = "": var_8F8 = "": var_384 = "": var_394 = "": var_3C4 = "": var_3D8 = "": var_3E8 = "": var_3A4 = "": var_408 = "": var_418 = "": var_428 = "": var_448 = "": var_468 = "": var_488 = "": var_4C8 = "": var_4DC = "": var_4A8 = "": var_4EC = "": var_4FC = "": var_50C = "": var_54C = "": var_560 = "": var_570 = "": var_52C = "": var_590 = "": var_5A0 = "": var_5D0 = "": var_5E4 = "": var_5F4 = "": var_5B0 = "": var_614 = "": var_624 = "": var_C0 = "": var_E4 = "": var_114 = "": var_F4 = "": var_124 = "": var_158 = "": var_168 = "": var_178 = "": var_134 = "": var_188 = "": var_198 = "": var_1CC = "": var_1DC = "": var_1FC = "": var_1B8 = "": var_20C = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_2BC = "": var_2D0 = "": var_29C = "": var_2E0 = "": var_2F0 = "": var_300 = "": var_340 = "": var_354 = "": var_364 = ""
  loc_CA64C4: Branch loc_CA72BC
  loc_CA64C7: LitStr "Municipalidad de Guaymallén"
  loc_CA64CA: LitStr "Municipalidad de General Alvear"
  loc_CA64CD: EqStr
  loc_CA64CF: BranchF loc_CA6A15
  loc_CA64D2: FLdPr Me
  loc_CA64D5: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA64D8: FStAdFunc var_104
  loc_CA64DB: FLdPr var_104
  loc_CA64DE: LateIdLdVar var_158 DispID_15 0
  loc_CA64E5: PopAd
  loc_CA64E7: FLdPr Me
  loc_CA64EA: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA64ED: FStAdFunc var_1BC
  loc_CA64F0: FLdPr var_1BC
  loc_CA64F3: LateIdLdVar var_1CC DispID_15 0
  loc_CA64FA: PopAd
  loc_CA64FC: FLdPr Me
  loc_CA64FF: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6502: FStAdFunc var_344
  loc_CA6505: FLdPr var_344
  loc_CA6508: LateIdLdVar var_340 DispID_15 0
  loc_CA650F: PopAd
  loc_CA6511: FLdPr Me
  loc_CA6514: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6517: FStAdFunc var_3C8
  loc_CA651A: FLdPr var_3C8
  loc_CA651D: LateIdLdVar var_3C4 DispID_15 0
  loc_CA6524: PopAd
  loc_CA6526: FLdPr Me
  loc_CA6529: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA652C: FStAdFunc var_550
  loc_CA652F: FLdPr var_550
  loc_CA6532: LateIdLdVar var_54C DispID_15 0
  loc_CA6539: PopAd
  loc_CA653B: FLdPr Me
  loc_CA653E: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6541: FStAdFunc var_5D4
  loc_CA6544: FLdPr var_5D4
  loc_CA6547: LateIdLdVar var_5D0 DispID_15 0
  loc_CA654E: PopAd
  loc_CA6550: FLdPr Me
  loc_CA6553: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6556: FStAdFunc var_75C
  loc_CA6559: FLdPr var_75C
  loc_CA655C: LateIdLdVar var_758 DispID_15 0
  loc_CA6563: PopAd
  loc_CA6565: FLdPr Me
  loc_CA6568: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA656B: FStAdFunc var_7E0
  loc_CA656E: FLdPr var_7E0
  loc_CA6571: LateIdLdVar var_7DC DispID_15 0
  loc_CA6578: PopAd
  loc_CA657A: FLdPr Me
  loc_CA657D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6580: FStAdFunc var_8E8
  loc_CA6583: FLdPr var_8E8
  loc_CA6586: LateIdLdVar var_8E4 DispID_15 0
  loc_CA658D: PopAd
  loc_CA658F: FLdPr Me
  loc_CA6592: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6595: FStAdFunc var_96C
  loc_CA6598: FLdPr var_96C
  loc_CA659B: LateIdLdVar var_968 DispID_15 0
  loc_CA65A2: PopAd
  loc_CA65A4: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA65A7: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA65AA: ConcatStr
  loc_CA65AB: CVarStr var_114
  loc_CA65AE: FLdPr Me
  loc_CA65B1: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA65B4: FStAdFunc var_AC
  loc_CA65B7: FLdPr var_AC
  loc_CA65BA: LateIdLdVar var_C0 DispID_15 0
  loc_CA65C1: CStrVarTmp
  loc_CA65C2: CVarStr var_E4
  loc_CA65C5: FLdRfVar var_F4
  loc_CA65C8: ImpAdCallFPR4  = Year()
  loc_CA65CD: FLdRfVar var_F4
  loc_CA65D0: ConcatVar var_124
  loc_CA65D4: LitVarStr var_98, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CA65D9: ConcatVar var_134
  loc_CA65DD: LitI4 1
  loc_CA65E2: LitI4 1
  loc_CA65E7: LitVarStr var_A8, "yyyy-mm-dd"
  loc_CA65EC: FStVarCopyObj var_178
  loc_CA65EF: FLdRfVar var_178
  loc_CA65F2: FLdRfVar var_158
  loc_CA65F5: CStrVarTmp
  loc_CA65F6: CVarStr var_168
  loc_CA65F9: ImpAdCallI2 Format$(, )
  loc_CA65FE: CVarStr var_188
  loc_CA6601: ConcatVar var_198
  loc_CA6605: LitVarStr var_1A8, "' AND '"
  loc_CA660A: ConcatVar var_1B8
  loc_CA660E: LitI4 1
  loc_CA6613: LitI4 1
  loc_CA6618: LitVarStr var_1EC, "yyyy-mm-dd"
  loc_CA661D: FStVarCopyObj var_1FC
  loc_CA6620: FLdRfVar var_1FC
  loc_CA6623: FLdRfVar var_1CC
  loc_CA6626: CStrVarTmp
  loc_CA6627: CVarStr var_1DC
  loc_CA662A: ImpAdCallI2 Format$(, )
  loc_CA662F: CVarStr var_20C
  loc_CA6632: ConcatVar var_21C
  loc_CA6636: LitVarStr var_22C, "'"
  loc_CA663B: ConcatVar var_23C
  loc_CA663F: LitVarStr var_24C, " GROUP BY TRUE;"
  loc_CA6644: ConcatVar var_25C
  loc_CA6648: LitVarStr var_26C, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, SUM(CoadBoap+HoreBoap+HoofBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA664D: ConcatVar var_27C
  loc_CA6651: LitVarStr var_28C, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6656: ConcatVar var_29C
  loc_CA665A: FLdPr Me
  loc_CA665D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6660: FStAdFunc var_2C0
  loc_CA6663: FLdPr var_2C0
  loc_CA6666: LateIdLdVar var_2BC DispID_15 0
  loc_CA666D: CStrVarTmp
  loc_CA666E: CVarStr var_2D0
  loc_CA6671: FLdRfVar var_2E0
  loc_CA6674: ImpAdCallFPR4  = Year()
  loc_CA6679: FLdRfVar var_2E0
  loc_CA667C: ConcatVar var_2F0
  loc_CA6680: LitVarStr var_2AC, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CA6685: ConcatVar var_300
  loc_CA6689: LitVarStr var_310, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CA668E: ConcatVar var_320
  loc_CA6692: LitI4 1
  loc_CA6697: LitI4 1
  loc_CA669C: LitVarStr var_330, "yyyy-mm-dd"
  loc_CA66A1: FStVarCopyObj var_364
  loc_CA66A4: FLdRfVar var_364
  loc_CA66A7: FLdRfVar var_340
  loc_CA66AA: CStrVarTmp
  loc_CA66AB: CVarStr var_354
  loc_CA66AE: ImpAdCallI2 Format$(, )
  loc_CA66B3: CVarStr var_384
  loc_CA66B6: ConcatVar var_394
  loc_CA66BA: LitVarStr var_374, "' AND '"
  loc_CA66BF: ConcatVar var_3A4
  loc_CA66C3: LitI4 1
  loc_CA66C8: LitI4 1
  loc_CA66CD: LitVarStr var_3B4, "yyyy-mm-dd"
  loc_CA66D2: FStVarCopyObj var_3E8
  loc_CA66D5: FLdRfVar var_3E8
  loc_CA66D8: FLdRfVar var_3C4
  loc_CA66DB: CStrVarTmp
  loc_CA66DC: CVarStr var_3D8
  loc_CA66DF: ImpAdCallI2 Format$(, )
  loc_CA66E4: CVarStr var_408
  loc_CA66E7: ConcatVar var_418
  loc_CA66EB: LitVarStr var_3F8, "'"
  loc_CA66F0: ConcatVar var_428
  loc_CA66F4: LitVarStr var_438, " GROUP BY TRUE;"
  loc_CA66F9: ConcatVar var_448
  loc_CA66FD: LitVarStr var_458, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(MoreBoap+MoofBoap) as TotaDepa, "
  loc_CA6702: ConcatVar var_468
  loc_CA6706: LitVarStr var_478, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA670B: ConcatVar var_488
  loc_CA670F: LitVarStr var_498, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6714: ConcatVar var_4A8
  loc_CA6718: FLdPr Me
  loc_CA671B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA671E: FStAdFunc var_4CC
  loc_CA6721: FLdPr var_4CC
  loc_CA6724: LateIdLdVar var_4C8 DispID_15 0
  loc_CA672B: CStrVarTmp
  loc_CA672C: CVarStr var_4DC
  loc_CA672F: FLdRfVar var_4EC
  loc_CA6732: ImpAdCallFPR4  = Year()
  loc_CA6737: FLdRfVar var_4EC
  loc_CA673A: ConcatVar var_4FC
  loc_CA673E: LitVarStr var_4B8, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CA6743: ConcatVar var_50C
  loc_CA6747: LitVarStr var_51C, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CA674C: ConcatVar var_52C
  loc_CA6750: LitI4 1
  loc_CA6755: LitI4 1
  loc_CA675A: LitVarStr var_53C, "yyyy-mm-dd"
  loc_CA675F: FStVarCopyObj var_570
  loc_CA6762: FLdRfVar var_570
  loc_CA6765: FLdRfVar var_54C
  loc_CA6768: CStrVarTmp
  loc_CA6769: CVarStr var_560
  loc_CA676C: ImpAdCallI2 Format$(, )
  loc_CA6771: CVarStr var_590
  loc_CA6774: ConcatVar var_5A0
  loc_CA6778: LitVarStr var_580, "' AND '"
  loc_CA677D: ConcatVar var_5B0
  loc_CA6781: LitI4 1
  loc_CA6786: LitI4 1
  loc_CA678B: LitVarStr var_5C0, "yyyy-mm-dd"
  loc_CA6790: FStVarCopyObj var_5F4
  loc_CA6793: FLdRfVar var_5F4
  loc_CA6796: FLdRfVar var_5D0
  loc_CA6799: CStrVarTmp
  loc_CA679A: CVarStr var_5E4
  loc_CA679D: ImpAdCallI2 Format$(, )
  loc_CA67A2: CVarStr var_614
  loc_CA67A5: ConcatVar var_624
  loc_CA67A9: LitVarStr var_604, "'"
  loc_CA67AE: ConcatVar var_634
  loc_CA67B2: LitVarStr var_644, " GROUP BY TRUE;"
  loc_CA67B7: ConcatVar var_654
  loc_CA67BB: LitVarStr var_664, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CA67C0: ConcatVar var_674
  loc_CA67C4: LitVarStr var_684, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA67C9: ConcatVar var_694
  loc_CA67CD: LitVarStr var_6A4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA67D2: ConcatVar var_6B4
  loc_CA67D6: FLdPr Me
  loc_CA67D9: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA67DC: FStAdFunc var_6D8
  loc_CA67DF: FLdPr var_6D8
  loc_CA67E2: LateIdLdVar var_6D4 DispID_15 0
  loc_CA67E9: CStrVarTmp
  loc_CA67EA: CVarStr var_6E8
  loc_CA67ED: FLdRfVar var_6F8
  loc_CA67F0: ImpAdCallFPR4  = Year()
  loc_CA67F5: FLdRfVar var_6F8
  loc_CA67F8: ConcatVar var_708
  loc_CA67FC: LitVarStr var_6C4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CA6801: ConcatVar var_718
  loc_CA6805: LitVarStr var_728, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CA680A: ConcatVar var_738
  loc_CA680E: LitI4 1
  loc_CA6813: LitI4 1
  loc_CA6818: LitVarStr var_748, "yyyy-mm-dd"
  loc_CA681D: FStVarCopyObj var_77C
  loc_CA6820: FLdRfVar var_77C
  loc_CA6823: FLdRfVar var_758
  loc_CA6826: CStrVarTmp
  loc_CA6827: CVarStr var_76C
  loc_CA682A: ImpAdCallI2 Format$(, )
  loc_CA682F: CVarStr var_79C
  loc_CA6832: ConcatVar var_7AC
  loc_CA6836: LitVarStr var_78C, "' AND '"
  loc_CA683B: ConcatVar var_7BC
  loc_CA683F: LitI4 1
  loc_CA6844: LitI4 1
  loc_CA6849: LitVarStr var_7CC, "yyyy-mm-dd"
  loc_CA684E: FStVarCopyObj var_800
  loc_CA6851: FLdRfVar var_800
  loc_CA6854: FLdRfVar var_7DC
  loc_CA6857: CStrVarTmp
  loc_CA6858: CVarStr var_7F0
  loc_CA685B: ImpAdCallI2 Format$(, )
  loc_CA6860: CVarStr var_820
  loc_CA6863: ConcatVar var_830
  loc_CA6867: LitVarStr var_810, "'"
  loc_CA686C: ConcatVar var_840
  loc_CA6870: LitVarStr var_850, " GROUP BY TRUE; INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6875: ConcatVar var_860
  loc_CA6879: FLdPr Me
  loc_CA687C: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA687F: FStAdFunc var_884
  loc_CA6882: FLdPr var_884
  loc_CA6885: LateIdLdVar var_880 DispID_15 0
  loc_CA688C: CStrVarTmp
  loc_CA688D: CVarStr var_894
  loc_CA6890: FLdRfVar var_8A4
  loc_CA6893: ImpAdCallFPR4  = Year()
  loc_CA6898: FLdRfVar var_8A4
  loc_CA689B: ConcatVar var_8B4
  loc_CA689F: LitVarStr var_870, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CA68A4: ConcatVar var_8C4
  loc_CA68A8: LitI4 1
  loc_CA68AD: LitI4 1
  loc_CA68B2: LitVarStr var_8D4, "yyyy-mm-dd"
  loc_CA68B7: FStVarCopyObj var_908
  loc_CA68BA: FLdRfVar var_908
  loc_CA68BD: FLdRfVar var_8E4
  loc_CA68C0: CStrVarTmp
  loc_CA68C1: CVarStr var_8F8
  loc_CA68C4: ImpAdCallI2 Format$(, )
  loc_CA68C9: CVarStr var_928
  loc_CA68CC: ConcatVar var_938
  loc_CA68D0: LitVarStr var_918, "' AND '"
  loc_CA68D5: ConcatVar var_948
  loc_CA68D9: LitI4 1
  loc_CA68DE: LitI4 1
  loc_CA68E3: LitVarStr var_958, "yyyy-mm-dd"
  loc_CA68E8: FStVarCopyObj var_98C
  loc_CA68EB: FLdRfVar var_98C
  loc_CA68EE: FLdRfVar var_968
  loc_CA68F1: CStrVarTmp
  loc_CA68F2: CVarStr var_97C
  loc_CA68F5: ImpAdCallI2 Format$(, )
  loc_CA68FA: CVarStr var_9AC
  loc_CA68FD: ConcatVar var_9BC
  loc_CA6901: LitVarStr var_99C, "'"
  loc_CA6906: ConcatVar var_9CC
  loc_CA690A: LitVarStr var_9DC, " GROUP BY TRUE;"
  loc_CA690F: ConcatVar var_9EC
  loc_CA6913: CStrVarVal var_C4
  loc_CA6917: FLdPr var_CC
  loc_CA691A: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CA691F: FFree1Str var_C4
  loc_CA6922: FFreeAd var_AC = "": var_104 = "": var_1BC = "": var_2C0 = "": var_344 = "": var_3C8 = "": var_4CC = "": var_550 = "": var_5D4 = "": var_6D8 = "": var_75C = "": var_7E0 = "": var_884 = "": var_8E8 = ""
  loc_CA6943: FFreeVar var_908 = "": var_8C4 = "": var_928 = "": var_938 = "": var_968 = "": var_97C = "": var_98C = "": var_948 = "": var_9AC = "": var_9BC = "": var_9CC = "": var_9EC = "": var_634 = "": var_654 = "": var_674 = "": var_694 = "": var_6D4 = "": var_6E8 = "": var_6B4 = "": var_6F8 = "": var_708 = "": var_718 = "": var_758 = "": var_76C = "": var_77C = "": var_738 = "": var_79C = "": var_7AC = "": var_7DC = "": var_7F0 = "": var_800 = "": var_7BC = "": var_820 = "": var_830 = "": var_840 = "": var_880 = "": var_894 = "": var_860 = "": var_8A4 = "": var_8B4 = "": var_8E4 = "": var_8F8 = "": var_384 = "": var_394 = "": var_3C4 = "": var_3D8 = "": var_3E8 = "": var_3A4 = "": var_408 = "": var_418 = "": var_428 = "": var_448 = "": var_468 = "": var_488 = "": var_4C8 = "": var_4DC = "": var_4A8 = "": var_4EC = "": var_4FC = "": var_50C = "": var_54C = "": var_560 = "": var_570 = "": var_52C = "": var_590 = "": var_5A0 = "": var_5D0 = "": var_5E4 = "": var_5F4 = "": var_5B0 = "": var_614 = "": var_624 = "": var_C0 = "": var_E4 = "": var_114 = "": var_F4 = "": var_124 = "": var_158 = "": var_168 = "": var_178 = "": var_134 = "": var_188 = "": var_198 = "": var_1CC = "": var_1DC = "": var_1FC = "": var_1B8 = "": var_20C = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_2BC = "": var_2D0 = "": var_29C = "": var_2E0 = "": var_2F0 = "": var_300 = "": var_340 = "": var_354 = "": var_364 = ""
  loc_CA6A12: Branch loc_CA72BC
  loc_CA6A15: LitStr "Municipalidad de Guaymallén"
  loc_CA6A18: LitStr "Municipalidad de San Martin"
  loc_CA6A1B: EqStr
  loc_CA6A1D: BranchF loc_CA6E5F
  loc_CA6A20: FLdPr Me
  loc_CA6A23: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6A26: FStAdFunc var_104
  loc_CA6A29: FLdPr var_104
  loc_CA6A2C: LateIdLdVar var_158 DispID_15 0
  loc_CA6A33: PopAd
  loc_CA6A35: FLdPr Me
  loc_CA6A38: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6A3B: FStAdFunc var_1BC
  loc_CA6A3E: FLdPr var_1BC
  loc_CA6A41: LateIdLdVar var_1CC DispID_15 0
  loc_CA6A48: PopAd
  loc_CA6A4A: FLdPr Me
  loc_CA6A4D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6A50: FStAdFunc var_344
  loc_CA6A53: FLdPr var_344
  loc_CA6A56: LateIdLdVar var_354 DispID_15 0
  loc_CA6A5D: PopAd
  loc_CA6A5F: FLdPr Me
  loc_CA6A62: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6A65: FStAdFunc var_3C8
  loc_CA6A68: FLdPr var_3C8
  loc_CA6A6B: LateIdLdVar var_3D8 DispID_15 0
  loc_CA6A72: PopAd
  loc_CA6A74: FLdPr Me
  loc_CA6A77: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6A7A: FStAdFunc var_550
  loc_CA6A7D: FLdPr var_550
  loc_CA6A80: LateIdLdVar var_560 DispID_15 0
  loc_CA6A87: PopAd
  loc_CA6A89: FLdPr Me
  loc_CA6A8C: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6A8F: FStAdFunc var_5D4
  loc_CA6A92: FLdPr var_5D4
  loc_CA6A95: LateIdLdVar var_5E4 DispID_15 0
  loc_CA6A9C: PopAd
  loc_CA6A9E: FLdPr Me
  loc_CA6AA1: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6AA4: FStAdFunc var_75C
  loc_CA6AA7: FLdPr var_75C
  loc_CA6AAA: LateIdLdVar var_718 DispID_15 0
  loc_CA6AB1: PopAd
  loc_CA6AB3: FLdPr Me
  loc_CA6AB6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6AB9: FStAdFunc var_7E0
  loc_CA6ABC: FLdPr var_7E0
  loc_CA6ABF: LateIdLdVar var_7AC DispID_15 0
  loc_CA6AC6: PopAd
  loc_CA6AC8: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA6ACB: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6ACE: ConcatStr
  loc_CA6ACF: CVarStr var_114
  loc_CA6AD2: FLdPr Me
  loc_CA6AD5: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6AD8: FStAdFunc var_AC
  loc_CA6ADB: FLdPr var_AC
  loc_CA6ADE: LateIdLdVar var_C0 DispID_15 0
  loc_CA6AE5: CStrVarTmp
  loc_CA6AE6: CVarStr var_E4
  loc_CA6AE9: FLdRfVar var_F4
  loc_CA6AEC: ImpAdCallFPR4  = Year()
  loc_CA6AF1: FLdRfVar var_F4
  loc_CA6AF4: ConcatVar var_124
  loc_CA6AF8: LitVarStr var_98, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CA6AFD: ConcatVar var_134
  loc_CA6B01: LitI4 1
  loc_CA6B06: LitI4 1
  loc_CA6B0B: LitVarStr var_A8, "yyyy-mm-dd"
  loc_CA6B10: FStVarCopyObj var_178
  loc_CA6B13: FLdRfVar var_178
  loc_CA6B16: FLdRfVar var_158
  loc_CA6B19: CStrVarTmp
  loc_CA6B1A: CVarStr var_168
  loc_CA6B1D: ImpAdCallI2 Format$(, )
  loc_CA6B22: CVarStr var_188
  loc_CA6B25: ConcatVar var_198
  loc_CA6B29: LitVarStr var_1A8, "' AND '"
  loc_CA6B2E: ConcatVar var_1B8
  loc_CA6B32: LitI4 1
  loc_CA6B37: LitI4 1
  loc_CA6B3C: LitVarStr var_1EC, "yyyy-mm-dd"
  loc_CA6B41: FStVarCopyObj var_1FC
  loc_CA6B44: FLdRfVar var_1FC
  loc_CA6B47: FLdRfVar var_1CC
  loc_CA6B4A: CStrVarTmp
  loc_CA6B4B: CVarStr var_1DC
  loc_CA6B4E: ImpAdCallI2 Format$(, )
  loc_CA6B53: CVarStr var_20C
  loc_CA6B56: ConcatVar var_21C
  loc_CA6B5A: LitVarStr var_22C, "'"
  loc_CA6B5F: ConcatVar var_23C
  loc_CA6B63: LitVarStr var_24C, " GROUP BY TRUE;"
  loc_CA6B68: ConcatVar var_25C
  loc_CA6B6C: LitVarStr var_26C, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+HoofBoapDema+MoreBoap+MoofBoap+MoofBoapDema+IrecBoap+IofiBoap+TrabBoap) as TotaDepa, "
  loc_CA6B71: ConcatVar var_27C
  loc_CA6B75: LitVarStr var_28C, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA6B7A: ConcatVar var_29C
  loc_CA6B7E: LitVarStr var_2AC, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6B83: ConcatVar var_2BC
  loc_CA6B87: FLdPr Me
  loc_CA6B8A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6B8D: FStAdFunc var_2C0
  loc_CA6B90: FLdPr var_2C0
  loc_CA6B93: LateIdLdVar var_2D0 DispID_15 0
  loc_CA6B9A: CStrVarTmp
  loc_CA6B9B: CVarStr var_2E0
  loc_CA6B9E: FLdRfVar var_2F0
  loc_CA6BA1: ImpAdCallFPR4  = Year()
  loc_CA6BA6: FLdRfVar var_2F0
  loc_CA6BA9: ConcatVar var_300
  loc_CA6BAD: LitVarStr var_310, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CA6BB2: ConcatVar var_320
  loc_CA6BB6: LitVarStr var_330, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CA6BBB: ConcatVar var_340
  loc_CA6BBF: LitI4 1
  loc_CA6BC4: LitI4 1
  loc_CA6BC9: LitVarStr var_374, "yyyy-mm-dd"
  loc_CA6BCE: FStVarCopyObj var_384
  loc_CA6BD1: FLdRfVar var_384
  loc_CA6BD4: FLdRfVar var_354
  loc_CA6BD7: CStrVarTmp
  loc_CA6BD8: CVarStr var_364
  loc_CA6BDB: ImpAdCallI2 Format$(, )
  loc_CA6BE0: CVarStr var_394
  loc_CA6BE3: ConcatVar var_3A4
  loc_CA6BE7: LitVarStr var_3B4, "' AND '"
  loc_CA6BEC: ConcatVar var_3C4
  loc_CA6BF0: LitI4 1
  loc_CA6BF5: LitI4 1
  loc_CA6BFA: LitVarStr var_3F8, "yyyy-mm-dd"
  loc_CA6BFF: FStVarCopyObj var_408
  loc_CA6C02: FLdRfVar var_408
  loc_CA6C05: FLdRfVar var_3D8
  loc_CA6C08: CStrVarTmp
  loc_CA6C09: CVarStr var_3E8
  loc_CA6C0C: ImpAdCallI2 Format$(, )
  loc_CA6C11: CVarStr var_418
  loc_CA6C14: ConcatVar var_428
  loc_CA6C18: LitVarStr var_438, "'"
  loc_CA6C1D: ConcatVar var_448
  loc_CA6C21: LitVarStr var_458, " GROUP BY TRUE;"
  loc_CA6C26: ConcatVar var_468
  loc_CA6C2A: LitVarStr var_478, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(CoadBoap+IcomBoap+ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CA6C2F: ConcatVar var_488
  loc_CA6C33: LitVarStr var_498, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA6C38: ConcatVar var_4A8
  loc_CA6C3C: LitVarStr var_4B8, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6C41: ConcatVar var_4C8
  loc_CA6C45: FLdPr Me
  loc_CA6C48: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6C4B: FStAdFunc var_4CC
  loc_CA6C4E: FLdPr var_4CC
  loc_CA6C51: LateIdLdVar var_4DC DispID_15 0
  loc_CA6C58: CStrVarTmp
  loc_CA6C59: CVarStr var_4EC
  loc_CA6C5C: FLdRfVar var_4FC
  loc_CA6C5F: ImpAdCallFPR4  = Year()
  loc_CA6C64: FLdRfVar var_4FC
  loc_CA6C67: ConcatVar var_50C
  loc_CA6C6B: LitVarStr var_51C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CA6C70: ConcatVar var_52C
  loc_CA6C74: LitVarStr var_53C, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CA6C79: ConcatVar var_54C
  loc_CA6C7D: LitI4 1
  loc_CA6C82: LitI4 1
  loc_CA6C87: LitVarStr var_580, "yyyy-mm-dd"
  loc_CA6C8C: FStVarCopyObj var_590
  loc_CA6C8F: FLdRfVar var_590
  loc_CA6C92: FLdRfVar var_560
  loc_CA6C95: CStrVarTmp
  loc_CA6C96: CVarStr var_570
  loc_CA6C99: ImpAdCallI2 Format$(, )
  loc_CA6C9E: CVarStr var_5A0
  loc_CA6CA1: ConcatVar var_5B0
  loc_CA6CA5: LitVarStr var_5C0, "' AND '"
  loc_CA6CAA: ConcatVar var_5D0
  loc_CA6CAE: LitI4 1
  loc_CA6CB3: LitI4 1
  loc_CA6CB8: LitVarStr var_604, "yyyy-mm-dd"
  loc_CA6CBD: FStVarCopyObj var_614
  loc_CA6CC0: FLdRfVar var_614
  loc_CA6CC3: FLdRfVar var_5E4
  loc_CA6CC6: CStrVarTmp
  loc_CA6CC7: CVarStr var_5F4
  loc_CA6CCA: ImpAdCallI2 Format$(, )
  loc_CA6CCF: CVarStr var_624
  loc_CA6CD2: ConcatVar var_634
  loc_CA6CD6: LitVarStr var_644, "'"
  loc_CA6CDB: ConcatVar var_654
  loc_CA6CDF: LitVarStr var_664, " GROUP BY TRUE; "
  loc_CA6CE4: ConcatVar var_674
  loc_CA6CE8: LitVarStr var_684, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6CED: ConcatVar var_694
  loc_CA6CF1: FLdPr Me
  loc_CA6CF4: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6CF7: FStAdFunc var_6D8
  loc_CA6CFA: FLdPr var_6D8
  loc_CA6CFD: LateIdLdVar var_6B4 DispID_15 0
  loc_CA6D04: CStrVarTmp
  loc_CA6D05: CVarStr var_6D4
  loc_CA6D08: FLdRfVar var_6E8
  loc_CA6D0B: ImpAdCallFPR4  = Year()
  loc_CA6D10: FLdRfVar var_6E8
  loc_CA6D13: ConcatVar var_6F8
  loc_CA6D17: LitVarStr var_6A4, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CA6D1C: ConcatVar var_708
  loc_CA6D20: LitI4 1
  loc_CA6D25: LitI4 1
  loc_CA6D2A: LitVarStr var_6C4, "yyyy-mm-dd"
  loc_CA6D2F: FStVarCopyObj var_758
  loc_CA6D32: FLdRfVar var_758
  loc_CA6D35: FLdRfVar var_718
  loc_CA6D38: CStrVarTmp
  loc_CA6D39: CVarStr var_738
  loc_CA6D3C: ImpAdCallI2 Format$(, )
  loc_CA6D41: CVarStr var_76C
  loc_CA6D44: ConcatVar var_77C
  loc_CA6D48: LitVarStr var_728, "' AND '"
  loc_CA6D4D: ConcatVar var_79C
  loc_CA6D51: LitI4 1
  loc_CA6D56: LitI4 1
  loc_CA6D5B: LitVarStr var_748, "yyyy-mm-dd"
  loc_CA6D60: FStVarCopyObj var_7DC
  loc_CA6D63: FLdRfVar var_7DC
  loc_CA6D66: FLdRfVar var_7AC
  loc_CA6D69: CStrVarTmp
  loc_CA6D6A: CVarStr var_7BC
  loc_CA6D6D: ImpAdCallI2 Format$(, )
  loc_CA6D72: CVarStr var_7F0
  loc_CA6D75: ConcatVar var_800
  loc_CA6D79: LitVarStr var_78C, "'"
  loc_CA6D7E: ConcatVar var_820
  loc_CA6D82: LitVarStr var_7CC, " GROUP BY TRUE;"
  loc_CA6D87: ConcatVar var_830
  loc_CA6D8B: CStrVarVal var_C4
  loc_CA6D8F: FLdPr var_CC
  loc_CA6D92: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CA6D97: FFree1Str var_C4
  loc_CA6D9A: FFreeAd var_AC = "": var_104 = "": var_1BC = "": var_2C0 = "": var_344 = "": var_3C8 = "": var_4CC = "": var_550 = "": var_5D4 = "": var_6D8 = "": var_75C = ""
  loc_CA6DB5: FFreeVar var_634 = "": var_654 = "": var_674 = "": var_6B4 = "": var_6D4 = "": var_694 = "": var_6E8 = "": var_6F8 = "": var_718 = "": var_738 = "": var_758 = "": var_708 = "": var_76C = "": var_77C = "": var_7AC = "": var_7BC = "": var_7DC = "": var_79C = "": var_7F0 = "": var_800 = "": var_820 = "": var_830 = "": var_340 = "": var_394 = "": var_3A4 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C4 = "": var_418 = "": var_428 = "": var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4DC = "": var_4EC = "": var_4C8 = "": var_4FC = "": var_50C = "": var_52C = "": var_560 = "": var_570 = "": var_590 = "": var_54C = "": var_5A0 = "": var_5B0 = "": var_5E4 = "": var_5F4 = "": var_614 = "": var_5D0 = "": var_624 = "": var_C0 = "": var_E4 = "": var_114 = "": var_F4 = "": var_124 = "": var_158 = "": var_168 = "": var_178 = "": var_134 = "": var_188 = "": var_198 = "": var_1CC = "": var_1DC = "": var_1FC = "": var_1B8 = "": var_20C = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2D0 = "": var_2E0 = "": var_2BC = "": var_2F0 = "": var_300 = "": var_320 = "": var_354 = "": var_364 = ""
  loc_CA6E5C: Branch loc_CA72BC
  loc_CA6E5F: FLdPr Me
  loc_CA6E62: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6E65: FStAdFunc var_104
  loc_CA6E68: FLdPr var_104
  loc_CA6E6B: LateIdLdVar var_158 DispID_15 0
  loc_CA6E72: PopAd
  loc_CA6E74: FLdPr Me
  loc_CA6E77: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6E7A: FStAdFunc var_1BC
  loc_CA6E7D: FLdPr var_1BC
  loc_CA6E80: LateIdLdVar var_1CC DispID_15 0
  loc_CA6E87: PopAd
  loc_CA6E89: FLdPr Me
  loc_CA6E8C: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6E8F: FStAdFunc var_344
  loc_CA6E92: FLdPr var_344
  loc_CA6E95: LateIdLdVar var_354 DispID_15 0
  loc_CA6E9C: PopAd
  loc_CA6E9E: FLdPr Me
  loc_CA6EA1: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6EA4: FStAdFunc var_3C8
  loc_CA6EA7: FLdPr var_3C8
  loc_CA6EAA: LateIdLdVar var_3D8 DispID_15 0
  loc_CA6EB1: PopAd
  loc_CA6EB3: FLdPr Me
  loc_CA6EB6: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6EB9: FStAdFunc var_550
  loc_CA6EBC: FLdPr var_550
  loc_CA6EBF: LateIdLdVar var_560 DispID_15 0
  loc_CA6EC6: PopAd
  loc_CA6EC8: FLdPr Me
  loc_CA6ECB: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6ECE: FStAdFunc var_5D4
  loc_CA6ED1: FLdPr var_5D4
  loc_CA6ED4: LateIdLdVar var_5E4 DispID_15 0
  loc_CA6EDB: PopAd
  loc_CA6EDD: FLdPr Me
  loc_CA6EE0: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6EE3: FStAdFunc var_75C
  loc_CA6EE6: FLdPr var_75C
  loc_CA6EE9: LateIdLdVar var_758 DispID_15 0
  loc_CA6EF0: PopAd
  loc_CA6EF2: FLdPr Me
  loc_CA6EF5: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CA6EF8: FStAdFunc var_7E0
  loc_CA6EFB: FLdPr var_7E0
  loc_CA6EFE: LateIdLdVar var_7DC DispID_15 0
  loc_CA6F05: PopAd
  loc_CA6F07: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa,"
  loc_CA6F0A: LitStr " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA6F0D: ConcatStr
  loc_CA6F0E: FStStrNoPop var_C4
  loc_CA6F11: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6F14: ConcatStr
  loc_CA6F15: CVarStr var_114
  loc_CA6F18: FLdPr Me
  loc_CA6F1B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6F1E: FStAdFunc var_AC
  loc_CA6F21: FLdPr var_AC
  loc_CA6F24: LateIdLdVar var_C0 DispID_15 0
  loc_CA6F2B: CStrVarTmp
  loc_CA6F2C: CVarStr var_E4
  loc_CA6F2F: FLdRfVar var_F4
  loc_CA6F32: ImpAdCallFPR4  = Year()
  loc_CA6F37: FLdRfVar var_F4
  loc_CA6F3A: ConcatVar var_124
  loc_CA6F3E: LitVarStr var_98, " WHERE FeenAcpa BETWEEN '"
  loc_CA6F43: ConcatVar var_134
  loc_CA6F47: LitI4 1
  loc_CA6F4C: LitI4 1
  loc_CA6F51: LitVarStr var_A8, "yyyy-mm-dd"
  loc_CA6F56: FStVarCopyObj var_178
  loc_CA6F59: FLdRfVar var_178
  loc_CA6F5C: FLdRfVar var_158
  loc_CA6F5F: CStrVarTmp
  loc_CA6F60: CVarStr var_168
  loc_CA6F63: ImpAdCallI2 Format$(, )
  loc_CA6F68: CVarStr var_188
  loc_CA6F6B: ConcatVar var_198
  loc_CA6F6F: LitVarStr var_1A8, "' AND '"
  loc_CA6F74: ConcatVar var_1B8
  loc_CA6F78: LitI4 1
  loc_CA6F7D: LitI4 1
  loc_CA6F82: LitVarStr var_1EC, "yyyy-mm-dd"
  loc_CA6F87: FStVarCopyObj var_1FC
  loc_CA6F8A: FLdRfVar var_1FC
  loc_CA6F8D: FLdRfVar var_1CC
  loc_CA6F90: CStrVarTmp
  loc_CA6F91: CVarStr var_1DC
  loc_CA6F94: ImpAdCallI2 Format$(, )
  loc_CA6F99: CVarStr var_20C
  loc_CA6F9C: ConcatVar var_21C
  loc_CA6FA0: LitVarStr var_22C, "'"
  loc_CA6FA5: ConcatVar var_23C
  loc_CA6FA9: LitVarStr var_24C, " GROUP BY TRUE;"
  loc_CA6FAE: ConcatVar var_25C
  loc_CA6FB2: LitVarStr var_26C, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, "
  loc_CA6FB7: ConcatVar var_27C
  loc_CA6FBB: LitVarStr var_28C, " FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA6FC0: ConcatVar var_29C
  loc_CA6FC4: LitVarStr var_2AC, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA6FC9: ConcatVar var_2BC
  loc_CA6FCD: FLdPr Me
  loc_CA6FD0: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA6FD3: FStAdFunc var_2C0
  loc_CA6FD6: FLdPr var_2C0
  loc_CA6FD9: LateIdLdVar var_2D0 DispID_15 0
  loc_CA6FE0: CStrVarTmp
  loc_CA6FE1: CVarStr var_2E0
  loc_CA6FE4: FLdRfVar var_2F0
  loc_CA6FE7: ImpAdCallFPR4  = Year()
  loc_CA6FEC: FLdRfVar var_2F0
  loc_CA6FEF: ConcatVar var_300
  loc_CA6FF3: LitVarStr var_310, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CA6FF8: ConcatVar var_320
  loc_CA6FFC: LitVarStr var_330, " WHERE FeenAcpa BETWEEN '"
  loc_CA7001: ConcatVar var_340
  loc_CA7005: LitI4 1
  loc_CA700A: LitI4 1
  loc_CA700F: LitVarStr var_374, "yyyy-mm-dd"
  loc_CA7014: FStVarCopyObj var_384
  loc_CA7017: FLdRfVar var_384
  loc_CA701A: FLdRfVar var_354
  loc_CA701D: CStrVarTmp
  loc_CA701E: CVarStr var_364
  loc_CA7021: ImpAdCallI2 Format$(, )
  loc_CA7026: CVarStr var_394
  loc_CA7029: ConcatVar var_3A4
  loc_CA702D: LitVarStr var_3B4, "' AND '"
  loc_CA7032: ConcatVar var_3C4
  loc_CA7036: LitI4 1
  loc_CA703B: LitI4 1
  loc_CA7040: LitVarStr var_3F8, "yyyy-mm-dd"
  loc_CA7045: FStVarCopyObj var_408
  loc_CA7048: FLdRfVar var_408
  loc_CA704B: FLdRfVar var_3D8
  loc_CA704E: CStrVarTmp
  loc_CA704F: CVarStr var_3E8
  loc_CA7052: ImpAdCallI2 Format$(, )
  loc_CA7057: CVarStr var_418
  loc_CA705A: ConcatVar var_428
  loc_CA705E: LitVarStr var_438, "'"
  loc_CA7063: ConcatVar var_448
  loc_CA7067: LitVarStr var_458, " GROUP BY TRUE;"
  loc_CA706C: ConcatVar var_468
  loc_CA7070: LitVarStr var_478, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_CA7075: ConcatVar var_488
  loc_CA7079: LitVarStr var_498, " FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA707E: ConcatVar var_4A8
  loc_CA7082: LitVarStr var_4B8, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA7087: ConcatVar var_4C8
  loc_CA708B: FLdPr Me
  loc_CA708E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA7091: FStAdFunc var_4CC
  loc_CA7094: FLdPr var_4CC
  loc_CA7097: LateIdLdVar var_4DC DispID_15 0
  loc_CA709E: CStrVarTmp
  loc_CA709F: CVarStr var_4EC
  loc_CA70A2: FLdRfVar var_4FC
  loc_CA70A5: ImpAdCallFPR4  = Year()
  loc_CA70AA: FLdRfVar var_4FC
  loc_CA70AD: ConcatVar var_50C
  loc_CA70B1: LitVarStr var_51C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CA70B6: ConcatVar var_52C
  loc_CA70BA: LitVarStr var_53C, " WHERE FeenAcpa BETWEEN '"
  loc_CA70BF: ConcatVar var_54C
  loc_CA70C3: LitI4 1
  loc_CA70C8: LitI4 1
  loc_CA70CD: LitVarStr var_580, "yyyy-mm-dd"
  loc_CA70D2: FStVarCopyObj var_590
  loc_CA70D5: FLdRfVar var_590
  loc_CA70D8: FLdRfVar var_560
  loc_CA70DB: CStrVarTmp
  loc_CA70DC: CVarStr var_570
  loc_CA70DF: ImpAdCallI2 Format$(, )
  loc_CA70E4: CVarStr var_5A0
  loc_CA70E7: ConcatVar var_5B0
  loc_CA70EB: LitVarStr var_5C0, "' AND '"
  loc_CA70F0: ConcatVar var_5D0
  loc_CA70F4: LitI4 1
  loc_CA70F9: LitI4 1
  loc_CA70FE: LitVarStr var_604, "yyyy-mm-dd"
  loc_CA7103: FStVarCopyObj var_614
  loc_CA7106: FLdRfVar var_614
  loc_CA7109: FLdRfVar var_5E4
  loc_CA710C: CStrVarTmp
  loc_CA710D: CVarStr var_5F4
  loc_CA7110: ImpAdCallI2 Format$(, )
  loc_CA7115: CVarStr var_624
  loc_CA7118: ConcatVar var_634
  loc_CA711C: LitVarStr var_644, "'"
  loc_CA7121: ConcatVar var_654
  loc_CA7125: LitVarStr var_664, " GROUP BY TRUE;"
  loc_CA712A: ConcatVar var_674
  loc_CA712E: LitVarStr var_684, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, "
  loc_CA7133: ConcatVar var_694
  loc_CA7137: LitVarStr var_6A4, " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CA713C: ConcatVar var_6B4
  loc_CA7140: LitVarStr var_6C4, " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CA7145: ConcatVar var_6D4
  loc_CA7149: FLdPr Me
  loc_CA714C: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA714F: FStAdFunc var_6D8
  loc_CA7152: FLdPr var_6D8
  loc_CA7155: LateIdLdVar var_6E8 DispID_15 0
  loc_CA715C: CStrVarTmp
  loc_CA715D: CVarStr var_6F8
  loc_CA7160: FLdRfVar var_708
  loc_CA7163: ImpAdCallFPR4  = Year()
  loc_CA7168: FLdRfVar var_708
  loc_CA716B: ConcatVar var_718
  loc_CA716F: LitVarStr var_728, " WHERE FeenAcpa BETWEEN '"
  loc_CA7174: ConcatVar var_738
  loc_CA7178: LitI4 1
  loc_CA717D: LitI4 1
  loc_CA7182: LitVarStr var_748, "yyyy-mm-dd"
  loc_CA7187: FStVarCopyObj var_77C
  loc_CA718A: FLdRfVar var_77C
  loc_CA718D: FLdRfVar var_758
  loc_CA7190: CStrVarTmp
  loc_CA7191: CVarStr var_76C
  loc_CA7194: ImpAdCallI2 Format$(, )
  loc_CA7199: CVarStr var_79C
  loc_CA719C: ConcatVar var_7AC
  loc_CA71A0: LitVarStr var_78C, "' AND '"
  loc_CA71A5: ConcatVar var_7BC
  loc_CA71A9: LitI4 1
  loc_CA71AE: LitI4 1
  loc_CA71B3: LitVarStr var_7CC, "yyyy-mm-dd"
  loc_CA71B8: FStVarCopyObj var_800
  loc_CA71BB: FLdRfVar var_800
  loc_CA71BE: FLdRfVar var_7DC
  loc_CA71C1: CStrVarTmp
  loc_CA71C2: CVarStr var_7F0
  loc_CA71C5: ImpAdCallI2 Format$(, )
  loc_CA71CA: CVarStr var_820
  loc_CA71CD: ConcatVar var_830
  loc_CA71D1: LitVarStr var_810, "'"
  loc_CA71D6: ConcatVar var_840
  loc_CA71DA: LitVarStr var_850, " GROUP BY TRUE;"
  loc_CA71DF: ConcatVar var_860
  loc_CA71E3: CStrVarVal var_C8
  loc_CA71E7: FLdPr var_CC
  loc_CA71EA: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CA71EF: FFreeStr var_C4 = ""
  loc_CA71F6: FFreeAd var_AC = "": var_104 = "": var_1BC = "": var_2C0 = "": var_344 = "": var_3C8 = "": var_4CC = "": var_550 = "": var_5D4 = "": var_6D8 = "": var_75C = ""
  loc_CA7211: FFreeVar var_634 = "": var_654 = "": var_674 = "": var_694 = "": var_6B4 = "": var_6E8 = "": var_6F8 = "": var_6D4 = "": var_708 = "": var_718 = "": var_758 = "": var_76C = "": var_77C = "": var_738 = "": var_79C = "": var_7AC = "": var_7DC = "": var_7F0 = "": var_800 = "": var_7BC = "": var_820 = "": var_830 = "": var_840 = "": var_860 = "": var_340 = "": var_394 = "": var_3A4 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C4 = "": var_418 = "": var_428 = "": var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4DC = "": var_4EC = "": var_4C8 = "": var_4FC = "": var_50C = "": var_52C = "": var_560 = "": var_570 = "": var_590 = "": var_54C = "": var_5A0 = "": var_5B0 = "": var_5E4 = "": var_5F4 = "": var_614 = "": var_5D0 = "": var_624 = "": var_C0 = "": var_E4 = "": var_114 = "": var_F4 = "": var_124 = "": var_158 = "": var_168 = "": var_178 = "": var_134 = "": var_188 = "": var_198 = "": var_1CC = "": var_1DC = "": var_1FC = "": var_1B8 = "": var_20C = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2D0 = "": var_2E0 = "": var_2BC = "": var_2F0 = "": var_300 = "": var_320 = "": var_354 = "": var_364 = ""
  loc_CA72BC: LitStr "SELECT deta.CodiConc, ifnull(DetaConc,'') as DetaConc, TotaDepa, ifnull(IngrConc,'') as IngrConc, "
  loc_CA72BF: LitStr " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, CapiDepa, DecaDepa, ExenDepa FROM deta"
  loc_CA72C2: ConcatStr
  loc_CA72C3: FStStrNoPop var_C4
  loc_CA72C6: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CA72C9: ConcatStr
  loc_CA72CA: CVarStr var_114
  loc_CA72CD: FLdPr Me
  loc_CA72D0: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CA72D3: FStAdFunc var_AC
  loc_CA72D6: FLdPr var_AC
  loc_CA72D9: LateIdLdVar var_C0 DispID_15 0
  loc_CA72E0: CStrVarTmp
  loc_CA72E1: CVarStr var_E4
  loc_CA72E4: FLdRfVar var_F4
  loc_CA72E7: ImpAdCallFPR4  = Year()
  loc_CA72EC: FLdRfVar var_F4
  loc_CA72EF: ConcatVar var_124
  loc_CA72F3: LitVarStr var_98, " AND concepto.CodiConc = deta.CodiConc"
  loc_CA72F8: ConcatVar var_134
  loc_CA72FC: LitVarStr var_A8, " WHERE "
  loc_CA7301: ConcatVar var_158
  loc_CA7305: ILdRf var_88
  loc_CA7308: CVarStr var_1A8
  loc_CA730B: ConcatVar var_168
  loc_CA730F: LitVarStr var_1EC, " ORDER BY FeenAcpa;"
  loc_CA7314: ConcatVar var_178
  loc_CA7318: CStrVarVal var_C8
  loc_CA731C: FLdPr var_CC
  loc_CA731F: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CA7324: FFreeStr var_C4 = ""
  loc_CA732B: FFree1Ad var_AC
  loc_CA732E: FFreeVar var_C0 = "": var_E4 = "": var_114 = "": var_F4 = "": var_124 = "": var_134 = "": var_158 = "": var_168 = ""
  loc_CA7343: FLdRfVar var_A10
  loc_CA7346: FLdPr var_CC
  loc_CA7349: from_stack_1 = clsconcepto.RecordCount
  loc_CA734E: ILdRf var_A10
  loc_CA7351: LitI4 0
  loc_CA7356: EqI4
  loc_CA7357: BranchF loc_CA7365
  loc_CA735A: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CA735D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CA7362: Branch loc_CA7481
  loc_CA7365: LitI2_Byte 0
  loc_CA7367: CStrUI1
  loc_CA7369: FStStrNoPop var_C4
  loc_CA736C: FLdPr Me
  loc_CA736F: MemStStrCopy
  loc_CA7373: FFree1Str var_C4
  loc_CA7376: LitI2_Byte 0
  loc_CA7378: FLdPr Me
  loc_CA737B: MemStI2 global_92
  loc_CA737E: LitI4 0
  loc_CA7383: LitI4 0
  loc_CA7388: FLdPr Me
  loc_CA738B: MemLdRfVar from_stack_1.global_84
  loc_CA738E: Redim
  loc_CA7398: Call Proc_159_22_AC5258()
  loc_CA739D: FLdRfVar var_AE
  loc_CA73A0: FLdPr var_CC
  loc_CA73A3: from_stack_1 = clsconcepto.EOF
  loc_CA73A8: FLdI2 var_AE
  loc_CA73AB: NotI4
  loc_CA73AC: BranchF loc_CA7420
  loc_CA73AF: FLdRfVar var_C4
  loc_CA73B2: FLdPr var_CC
  loc_CA73B5: from_stack_1 = clsconcepto.CodiConc
  loc_CA73BA: ILdRf var_C4
  loc_CA73BD: FLdPr Me
  loc_CA73C0: MemLdI2 global_92
  loc_CA73C3: CI4UI1
  loc_CA73C4: FLdPr Me
  loc_CA73C7: MemLdStr global_84
  loc_CA73CA: Ary1LdPr
  loc_CA73CB: MemLdStr global_0
  loc_CA73CE: NeStr
  loc_CA73D0: FFree1Str var_C4
  loc_CA73D3: BranchF loc_CA73DE
  loc_CA73D6: Call Proc_159_22_AC5258()
  loc_CA73DB: Branch loc_CA741D
  loc_CA73DE: FLdRfVar var_C4
  loc_CA73E1: FLdPr var_CC
  loc_CA73E4: from_stack_1 = clsconcepto.FeenAcpa
  loc_CA73E9: ILdRf var_C4
  loc_CA73EC: FLdPr Me
  loc_CA73EF: MemLdI2 global_94
  loc_CA73F2: CI4UI1
  loc_CA73F3: FLdPr Me
  loc_CA73F6: MemLdI2 global_92
  loc_CA73F9: CI4UI1
  loc_CA73FA: FLdPr Me
  loc_CA73FD: MemLdStr global_84
  loc_CA7400: Ary1LdPr
  loc_CA7401: MemLdStr global_16
  loc_CA7404: Ary1LdPr
  loc_CA7405: MemLdStr global_0
  loc_CA7408: NeStr
  loc_CA740A: FFree1Str var_C4
  loc_CA740D: BranchF loc_CA7418
  loc_CA7410: Call Proc_159_23_A8EAC0()
  loc_CA7415: Branch loc_CA741D
  loc_CA7418: Call Proc_159_24_B2E2F0()
  loc_CA741D: Branch loc_CA739D
  loc_CA7420: LitNothing
  loc_CA7422: FStAd var_CC 
  loc_CA7426: LitI2_Byte 1
  loc_CA7428: FLdPr Me
  loc_CA742B: MemLdRfVar from_stack_1.global_92
  loc_CA742E: FLdPr Me
  loc_CA7431: MemLdStr global_84
  loc_CA7434: LitI2_Byte 1
  loc_CA7436: FnUBound
  loc_CA7438: CI2I4
  loc_CA7439: ForI2 var_A14
  loc_CA743F: LitI2_Byte 0
  loc_CA7441: FLdPr Me
  loc_CA7444: MemLdRfVar from_stack_1.global_88
  loc_CA7447: CVarRef
  loc_CA744C: LitI2_Byte &HFF
  loc_CA744E: FLdPr Me
  loc_CA7451: MemLdI2 global_92
  loc_CA7454: CI4UI1
  loc_CA7455: FLdPr Me
  loc_CA7458: MemLdStr global_84
  loc_CA745B: Ary1LdPr
  loc_CA745C: MemLdStr global_64
  loc_CA745F: CVarStr var_98
  loc_CA7462: PopAdLdVar
  loc_CA7463: FLdPr Me
  loc_CA7466: MemLdRfVar from_stack_1.global_100
  loc_CA7469: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CA746E: FLdPr Me
  loc_CA7471: MemLdRfVar from_stack_1.global_92
  loc_CA7474: NextI2 var_A14, loc_CA743F
  loc_CA7479: LitI2_Byte &HFF
  loc_CA747B: FLdPr Me
  loc_CA747E: MemStI2 bGenerado
  loc_CA7481: LitI4 0
  loc_CA7486: CI2I4
  loc_CA7487: FLdPr Me
  loc_CA748A: Me.MousePointer = from_stack_1
  loc_CA748F: LitVarStr var_98, vbNullString
  loc_CA7494: PopAdLdVar
  loc_CA7495: FLdPr Me
  loc_CA7498: VCallAd Control_ID_statusBar
  loc_CA749B: FStAdFunc var_AC
  loc_CA749E: FLdPr var_AC
  loc_CA74A1: LateIdSt
  loc_CA74A6: FFree1Ad var_AC
  loc_CA74A9: ExitProcHresult
  loc_CA74AA: CastAd
End Sub

Public Sub GeneraHTML() 'B60AE4
  'Data Table: 4A2388
  loc_B606BC: FLdRfVar var_88
  loc_B606BF: LitI2_Byte 0
  loc_B606C1: LitI2_Byte &HFF
  loc_B606C3: ImpAdLdI4 MemVar_D93C84
  loc_B606C6: FLdPr Me
  loc_B606C9: MemLdRfVar from_stack_1.global_56
  loc_B606CC: NewIfNullPr IFileSystem3
  loc_B606CF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B606D4: ILdRf var_88
  loc_B606D7: FLdPr Me
  loc_B606DA: MemStVarAd
  loc_B606DE: FFree1Ad var_88
  loc_B606E1: LitI2_Byte &HFF
  loc_B606E3: ImpAdStI2 MemVar_D93C8A
  loc_B606E6: Call Proc_159_25_BDEF28()
  loc_B606EB: LitI2_Byte 1
  loc_B606ED: FLdPr Me
  loc_B606F0: MemLdRfVar from_stack_1.global_92
  loc_B606F3: FLdPr Me
  loc_B606F6: MemLdStr global_84
  loc_B606F9: LitI2_Byte 1
  loc_B606FB: FnUBound
  loc_B606FD: CI2I4
  loc_B606FE: ForI2 var_8C
  loc_B60704: LitI2_Byte 1
  loc_B60706: FLdPr Me
  loc_B60709: MemLdRfVar from_stack_1.global_94
  loc_B6070C: FLdPr Me
  loc_B6070F: MemLdI2 global_92
  loc_B60712: CI4UI1
  loc_B60713: FLdPr Me
  loc_B60716: MemLdStr global_84
  loc_B60719: Ary1LdPr
  loc_B6071A: MemLdStr global_16
  loc_B6071D: LitI2_Byte 1
  loc_B6071F: FnUBound
  loc_B60721: CI2I4
  loc_B60722: ForI2 var_90
  loc_B60728: LitVarStr var_A0, "  <tr align=""right"" class=""Encabezado"">"
  loc_B6072D: PopAdLdVar
  loc_B6072E: FLdPr Me
  loc_B60731: MemLdRfVar from_stack_1.global_60
  loc_B60734: LdPrVar
  loc_B60736: LateMemCall
  loc_B6073C: LitStr "   <td align=""left"" colspan=""3"">Fecha: "
  loc_B6073F: FLdPr Me
  loc_B60742: MemLdI2 global_94
  loc_B60745: CI4UI1
  loc_B60746: FLdPr Me
  loc_B60749: MemLdI2 global_92
  loc_B6074C: CI4UI1
  loc_B6074D: FLdPr Me
  loc_B60750: MemLdStr global_84
  loc_B60753: Ary1LdPr
  loc_B60754: MemLdStr global_16
  loc_B60757: Ary1LdPr
  loc_B60758: MemLdStr global_0
  loc_B6075B: ConcatStr
  loc_B6075C: FStStrNoPop var_B4
  loc_B6075F: LitStr "</td>"
  loc_B60762: ConcatStr
  loc_B60763: CVarStr var_C4
  loc_B60766: PopAdLdVar
  loc_B60767: FLdPr Me
  loc_B6076A: MemLdRfVar from_stack_1.global_60
  loc_B6076D: LdPrVar
  loc_B6076F: LateMemCall
  loc_B60775: FFree1Str var_B4
  loc_B60778: FFree1Var var_C4 = ""
  loc_B6077B: FLdPr Me
  loc_B6077E: MemLdI2 global_94
  loc_B60781: CI4UI1
  loc_B60782: FLdPr Me
  loc_B60785: MemLdI2 global_92
  loc_B60788: CI4UI1
  loc_B60789: FLdPr Me
  loc_B6078C: MemLdStr global_84
  loc_B6078F: AryLock
  loc_B60792: Ary1LdPr
  loc_B60793: MemLdStr global_16
  loc_B60796: AryLock
  loc_B60799: Ary1LdPr
  loc_B6079A: MemLdRfVar from_stack_1.global_8
  loc_B6079D: FStR4 var_D0
  loc_B607A0: LitStr "   <td class=""Totales"">"
  loc_B607A3: FMemLdR4 var_D0(16)
  loc_B607A8: ConcatStr
  loc_B607A9: FStStrNoPop var_B4
  loc_B607AC: LitStr "</td>"
  loc_B607AF: ConcatStr
  loc_B607B0: CVarStr var_C4
  loc_B607B3: PopAdLdVar
  loc_B607B4: FLdPr Me
  loc_B607B7: MemLdRfVar from_stack_1.global_60
  loc_B607BA: LdPrVar
  loc_B607BC: LateMemCall
  loc_B607C2: FFree1Str var_B4
  loc_B607C5: FFree1Var var_C4 = ""
  loc_B607C8: LitStr "   <td class=""Totales"">"
  loc_B607CB: FMemLdR4 var_D0(20)
  loc_B607D0: ConcatStr
  loc_B607D1: FStStrNoPop var_B4
  loc_B607D4: LitStr "</td>"
  loc_B607D7: ConcatStr
  loc_B607D8: CVarStr var_C4
  loc_B607DB: PopAdLdVar
  loc_B607DC: FLdPr Me
  loc_B607DF: MemLdRfVar from_stack_1.global_60
  loc_B607E2: LdPrVar
  loc_B607E4: LateMemCall
  loc_B607EA: FFree1Str var_B4
  loc_B607ED: FFree1Var var_C4 = ""
  loc_B607F0: LitStr "   <td class=""Totales"">"
  loc_B607F3: FMemLdR4 var_D0(36)
  loc_B607F8: ConcatStr
  loc_B607F9: FStStrNoPop var_B4
  loc_B607FC: LitStr "</td>"
  loc_B607FF: ConcatStr
  loc_B60800: CVarStr var_C4
  loc_B60803: PopAdLdVar
  loc_B60804: FLdPr Me
  loc_B60807: MemLdRfVar from_stack_1.global_60
  loc_B6080A: LdPrVar
  loc_B6080C: LateMemCall
  loc_B60812: FFree1Str var_B4
  loc_B60815: FFree1Var var_C4 = ""
  loc_B60818: LitStr "   <td class=""Totales"">"
  loc_B6081B: FMemLdR4 var_D0(44)
  loc_B60820: ConcatStr
  loc_B60821: FStStrNoPop var_B4
  loc_B60824: LitStr "</td>"
  loc_B60827: ConcatStr
  loc_B60828: CVarStr var_C4
  loc_B6082B: PopAdLdVar
  loc_B6082C: FLdPr Me
  loc_B6082F: MemLdRfVar from_stack_1.global_60
  loc_B60832: LdPrVar
  loc_B60834: LateMemCall
  loc_B6083A: FFree1Str var_B4
  loc_B6083D: FFree1Var var_C4 = ""
  loc_B60840: LitI4 0
  loc_B60845: FStR4 var_D0
  loc_B60848: AryUnlock
  loc_B6084B: AryUnlock
  loc_B6084E: LitVarStr var_A0, "     </tr>"
  loc_B60853: PopAdLdVar
  loc_B60854: FLdPr Me
  loc_B60857: MemLdRfVar from_stack_1.global_60
  loc_B6085A: LdPrVar
  loc_B6085C: LateMemCall
  loc_B60862: LitI4 1
  loc_B60867: FLdPr Me
  loc_B6086A: MemLdRfVar from_stack_1.global_96
  loc_B6086D: FLdPr Me
  loc_B60870: MemLdI2 global_94
  loc_B60873: CI4UI1
  loc_B60874: FLdPr Me
  loc_B60877: MemLdI2 global_92
  loc_B6087A: CI4UI1
  loc_B6087B: FLdPr Me
  loc_B6087E: MemLdStr global_84
  loc_B60881: Ary1LdPr
  loc_B60882: MemLdStr global_16
  loc_B60885: Ary1LdPr
  loc_B60886: MemLdStr global_4
  loc_B60889: LitI2_Byte 1
  loc_B6088B: FnUBound
  loc_B6088D: ForI4 var_D8
  loc_B60893: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B60898: PopAdLdVar
  loc_B60899: FLdPr Me
  loc_B6089C: MemLdRfVar from_stack_1.global_60
  loc_B6089F: LdPrVar
  loc_B608A1: LateMemCall
  loc_B608A7: FLdPr Me
  loc_B608AA: MemLdStr global_96
  loc_B608AD: FLdPr Me
  loc_B608B0: MemLdI2 global_94
  loc_B608B3: CI4UI1
  loc_B608B4: FLdPr Me
  loc_B608B7: MemLdI2 global_92
  loc_B608BA: CI4UI1
  loc_B608BB: FLdPr Me
  loc_B608BE: MemLdStr global_84
  loc_B608C1: AryLock
  loc_B608C4: Ary1LdPr
  loc_B608C5: MemLdStr global_16
  loc_B608C8: AryLock
  loc_B608CB: Ary1LdPr
  loc_B608CC: MemLdStr global_4
  loc_B608CF: AryLock
  loc_B608D2: Ary1LdRf
  loc_B608D3: FStR4 var_E8
  loc_B608D6: LitStr vbNullString
  loc_B608D9: LitI2_Byte 0
  loc_B608DB: LitI2_Byte 0
  loc_B608DD: LitI2_Byte 0
  loc_B608DF: LitStr "right"
  loc_B608E2: FMemLdR4 var_E8(0)
  loc_B608E7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B608EC: CVarStr var_C4
  loc_B608EF: PopAdLdVar
  loc_B608F0: FLdPr Me
  loc_B608F3: MemLdRfVar from_stack_1.global_60
  loc_B608F6: LdPrVar
  loc_B608F8: LateMemCall
  loc_B608FE: FFree1Var var_C4 = ""
  loc_B60901: LitStr vbNullString
  loc_B60904: LitI2_Byte 0
  loc_B60906: LitI2_Byte 0
  loc_B60908: LitI2_Byte 0
  loc_B6090A: LitStr "right"
  loc_B6090D: FMemLdR4 var_E8(4)
  loc_B60912: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B60917: CVarStr var_C4
  loc_B6091A: PopAdLdVar
  loc_B6091B: FLdPr Me
  loc_B6091E: MemLdRfVar from_stack_1.global_60
  loc_B60921: LdPrVar
  loc_B60923: LateMemCall
  loc_B60929: FFree1Var var_C4 = ""
  loc_B6092C: LitStr vbNullString
  loc_B6092F: LitI2_Byte 0
  loc_B60931: LitI2_Byte 0
  loc_B60933: LitI2_Byte 0
  loc_B60935: LitStr "right"
  loc_B60938: FMemLdR4 var_E8(8)
  loc_B6093D: LitStr "/"
  loc_B60940: ConcatStr
  loc_B60941: FStStrNoPop var_B4
  loc_B60944: FMemLdR4 var_E8(12)
  loc_B60949: ConcatStr
  loc_B6094A: FStStrNoPop var_EC
  loc_B6094D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B60952: CVarStr var_C4
  loc_B60955: PopAdLdVar
  loc_B60956: FLdPr Me
  loc_B60959: MemLdRfVar from_stack_1.global_60
  loc_B6095C: LdPrVar
  loc_B6095E: LateMemCall
  loc_B60964: FFreeStr var_B4 = ""
  loc_B6096B: FFree1Var var_C4 = ""
  loc_B6096E: LitStr vbNullString
  loc_B60971: LitI2_Byte 0
  loc_B60973: LitI2_Byte 0
  loc_B60975: LitI2_Byte 0
  loc_B60977: LitStr "right"
  loc_B6097A: FMemLdR4 var_E8(16)
  loc_B6097F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B60984: CVarStr var_C4
  loc_B60987: PopAdLdVar
  loc_B60988: FLdPr Me
  loc_B6098B: MemLdRfVar from_stack_1.global_60
  loc_B6098E: LdPrVar
  loc_B60990: LateMemCall
  loc_B60996: FFree1Var var_C4 = ""
  loc_B60999: LitStr vbNullString
  loc_B6099C: LitI2_Byte 0
  loc_B6099E: LitI2_Byte 0
  loc_B609A0: LitI2_Byte 0
  loc_B609A2: LitStr "right"
  loc_B609A5: FMemLdR4 var_E8(20)
  loc_B609AA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B609AF: CVarStr var_C4
  loc_B609B2: PopAdLdVar
  loc_B609B3: FLdPr Me
  loc_B609B6: MemLdRfVar from_stack_1.global_60
  loc_B609B9: LdPrVar
  loc_B609BB: LateMemCall
  loc_B609C1: FFree1Var var_C4 = ""
  loc_B609C4: LitStr vbNullString
  loc_B609C7: LitI2_Byte 0
  loc_B609C9: LitI2_Byte 0
  loc_B609CB: LitI2_Byte 0
  loc_B609CD: LitStr "right"
  loc_B609D0: FMemLdR4 var_E8(36)
  loc_B609D5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B609DA: CVarStr var_C4
  loc_B609DD: PopAdLdVar
  loc_B609DE: FLdPr Me
  loc_B609E1: MemLdRfVar from_stack_1.global_60
  loc_B609E4: LdPrVar
  loc_B609E6: LateMemCall
  loc_B609EC: FFree1Var var_C4 = ""
  loc_B609EF: LitStr vbNullString
  loc_B609F2: LitI2_Byte 0
  loc_B609F4: LitI2_Byte 0
  loc_B609F6: LitI2_Byte 0
  loc_B609F8: LitStr "right"
  loc_B609FB: FMemLdR4 var_E8(44)
  loc_B60A00: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B60A05: CVarStr var_C4
  loc_B60A08: PopAdLdVar
  loc_B60A09: FLdPr Me
  loc_B60A0C: MemLdRfVar from_stack_1.global_60
  loc_B60A0F: LdPrVar
  loc_B60A11: LateMemCall
  loc_B60A17: FFree1Var var_C4 = ""
  loc_B60A1A: LitI4 0
  loc_B60A1F: FStR4 var_E8
  loc_B60A22: AryUnlock
  loc_B60A25: AryUnlock
  loc_B60A28: AryUnlock
  loc_B60A2B: LitVarStr var_A0, "     </tr>"
  loc_B60A30: PopAdLdVar
  loc_B60A31: FLdPr Me
  loc_B60A34: MemLdRfVar from_stack_1.global_60
  loc_B60A37: LdPrVar
  loc_B60A39: LateMemCall
  loc_B60A3F: FLdPr Me
  loc_B60A42: MemLdRfVar from_stack_1.global_96
  loc_B60A45: NextI4 var_D8, loc_B60893
  loc_B60A4A: FLdPr Me
  loc_B60A4D: MemLdRfVar from_stack_1.global_94
  loc_B60A50: NextI2 var_90, loc_B60728
  loc_B60A55: FLdPr Me
  loc_B60A58: MemLdRfVar from_stack_1.global_92
  loc_B60A5B: NextI2 var_8C, loc_B60704
  loc_B60A60: LitVarStr var_A0, "    <tr class=""Totales"">"
  loc_B60A65: PopAdLdVar
  loc_B60A66: FLdPr Me
  loc_B60A69: MemLdRfVar from_stack_1.global_60
  loc_B60A6C: LdPrVar
  loc_B60A6E: LateMemCall
  loc_B60A74: LitVarStr var_A0, "    <td colspan=""6"" align=""right"">Total</td>"
  loc_B60A79: PopAdLdVar
  loc_B60A7A: FLdPr Me
  loc_B60A7D: MemLdRfVar from_stack_1.global_60
  loc_B60A80: LdPrVar
  loc_B60A82: LateMemCall
  loc_B60A88: LitStr vbNullString
  loc_B60A8B: LitI2_Byte 0
  loc_B60A8D: LitI2_Byte 0
  loc_B60A8F: LitI2_Byte 0
  loc_B60A91: LitStr "right"
  loc_B60A94: FLdPr Me
  loc_B60A97: MemLdStr global_88
  loc_B60A9A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B60A9F: CVarStr var_C4
  loc_B60AA2: PopAdLdVar
  loc_B60AA3: FLdPr Me
  loc_B60AA6: MemLdRfVar from_stack_1.global_60
  loc_B60AA9: LdPrVar
  loc_B60AAB: LateMemCall
  loc_B60AB1: FFree1Var var_C4 = ""
  loc_B60AB4: LitVarStr var_A0, "     </tr>"
  loc_B60AB9: PopAdLdVar
  loc_B60ABA: FLdPr Me
  loc_B60ABD: MemLdRfVar from_stack_1.global_60
  loc_B60AC0: LdPrVar
  loc_B60AC2: LateMemCall
  loc_B60AC8: Call Proc_159_26_A0DC58()
  loc_B60ACD: FLdPr Me
  loc_B60AD0: MemLdRfVar from_stack_1.global_60
  loc_B60AD3: LdPrVar
  loc_B60AD5: LateMemCall
  loc_B60ADB: LitStr vbNullString
  loc_B60ADE: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B60AE3: ExitProcHresult
End Sub

Private Function Proc_159_22_AC5258() 'AC5258
  'Data Table: 4A2388
  loc_AC5158: FLdPr Me
  loc_AC515B: MemLdI2 global_92
  loc_AC515E: LitI2_Byte 1
  loc_AC5160: AddI2
  loc_AC5161: FLdPr Me
  loc_AC5164: MemStI2 global_92
  loc_AC5167: LitI2_Byte 0
  loc_AC5169: FLdPr Me
  loc_AC516C: MemStI2 global_94
  loc_AC516F: LitI4 0
  loc_AC5174: FLdPr Me
  loc_AC5177: MemLdI2 global_92
  loc_AC517A: CI4UI1
  loc_AC517B: FLdPr Me
  loc_AC517E: MemLdRfVar from_stack_1.global_84
  loc_AC5181: RedimPreserve
  loc_AC518B: FLdPr Me
  loc_AC518E: MemLdRfVar from_stack_1.global_76
  loc_AC5191: NewIfNullAd
  loc_AC5194: FStAd var_88 
  loc_AC5198: FLdRfVar var_8C
  loc_AC519B: FLdPr var_88
  loc_AC519E: from_stack_1 = clsconcepto.CodiConc
  loc_AC51A3: LitI2_Byte 0
  loc_AC51A5: LitVar_Missing var_C0
  loc_AC51A8: LitI2_Byte 0
  loc_AC51AA: FLdZeroAd var_8C
  loc_AC51AD: CVarStr var_A0
  loc_AC51B0: PopAdLdVar
  loc_AC51B1: FLdPr Me
  loc_AC51B4: MemLdI2 global_92
  loc_AC51B7: CI4UI1
  loc_AC51B8: FLdPr Me
  loc_AC51BB: MemLdStr global_84
  loc_AC51BE: AryLock
  loc_AC51C1: Ary1LdPr
  loc_AC51C2: MemLdRfVar from_stack_1.global_0
  loc_AC51C5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC51CA: AryUnlock
  loc_AC51CD: FFreeVar var_A0 = ""
  loc_AC51D4: FLdRfVar var_8C
  loc_AC51D7: FLdPr var_88
  loc_AC51DA: from_stack_1 = clsconcepto.DetaConc
  loc_AC51DF: LitI2_Byte 0
  loc_AC51E1: LitVar_Missing var_C0
  loc_AC51E4: LitI2_Byte 0
  loc_AC51E6: FLdZeroAd var_8C
  loc_AC51E9: CVarStr var_A0
  loc_AC51EC: PopAdLdVar
  loc_AC51ED: FLdPr Me
  loc_AC51F0: MemLdI2 global_92
  loc_AC51F3: CI4UI1
  loc_AC51F4: FLdPr Me
  loc_AC51F7: MemLdStr global_84
  loc_AC51FA: AryLock
  loc_AC51FD: Ary1LdPr
  loc_AC51FE: MemLdRfVar from_stack_1.global_4
  loc_AC5201: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC5206: AryUnlock
  loc_AC5209: FFreeVar var_A0 = ""
  loc_AC5210: FLdRfVar var_8C
  loc_AC5213: FLdPr var_88
  loc_AC5216: from_stack_1 = clsconcepto.IngrConc
  loc_AC521B: LitI2_Byte 0
  loc_AC521D: LitVar_Missing var_C0
  loc_AC5220: LitI2_Byte 0
  loc_AC5222: FLdZeroAd var_8C
  loc_AC5225: CVarStr var_A0
  loc_AC5228: PopAdLdVar
  loc_AC5229: FLdPr Me
  loc_AC522C: MemLdI2 global_92
  loc_AC522F: CI4UI1
  loc_AC5230: FLdPr Me
  loc_AC5233: MemLdStr global_84
  loc_AC5236: AryLock
  loc_AC5239: Ary1LdPr
  loc_AC523A: MemLdRfVar from_stack_1.global_12
  loc_AC523D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC5242: AryUnlock
  loc_AC5245: FFreeVar var_A0 = ""
  loc_AC524C: LitNothing
  loc_AC524E: FStAd var_88 
  loc_AC5252: Call Proc_159_23_A8EAC0()
  loc_AC5257: ExitProcHresult
End Function

Private Function Proc_159_23_A8EAC0(arg_10) 'A8EAC0
  'Data Table: 4A2388
  loc_A8EA24: FLdPr Me
  loc_A8EA27: MemLdI2 global_94
  loc_A8EA2A: LitI2_Byte 1
  loc_A8EA2C: AddI2
  loc_A8EA2D: FLdPr Me
  loc_A8EA30: MemStI2 global_94
  loc_A8EA33: LitI4 0
  loc_A8EA38: FLdPr Me
  loc_A8EA3B: MemStI4 global_96
  loc_A8EA3E: LitI4 0
  loc_A8EA43: FLdPr Me
  loc_A8EA46: MemLdI2 global_94
  loc_A8EA49: CI4UI1
  loc_A8EA4A: FLdPr Me
  loc_A8EA4D: MemLdI2 global_92
  loc_A8EA50: CI4UI1
  loc_A8EA51: FLdPr Me
  loc_A8EA54: MemLdStr global_84
  loc_A8EA57: Ary1LdPr
  loc_A8EA58: MemLdRfVar from_stack_1.global_16
  loc_A8EA5B: RedimPreserve
  loc_A8EA65: FLdRfVar var_88
  loc_A8EA68: FLdPr Me
  loc_A8EA6B: MemLdRfVar from_stack_1.global_76
  loc_A8EA6E: NewIfNullPr clsconcepto
  loc_A8EA71: from_stack_1 = clsconcepto.FeenAcpa
  loc_A8EA76: LitI2_Byte 0
  loc_A8EA78: LitVar_Missing var_C0
  loc_A8EA7B: LitI2_Byte 0
  loc_A8EA7D: FLdZeroAd var_88
  loc_A8EA80: CVarStr var_A0
  loc_A8EA83: PopAdLdVar
  loc_A8EA84: FLdPr Me
  loc_A8EA87: MemLdI2 global_94
  loc_A8EA8A: CI4UI1
  loc_A8EA8B: FLdPr Me
  loc_A8EA8E: MemLdI2 global_92
  loc_A8EA91: CI4UI1
  loc_A8EA92: FLdPr Me
  loc_A8EA95: MemLdStr global_84
  loc_A8EA98: AryLock
  loc_A8EA9B: Ary1LdPr
  loc_A8EA9C: MemLdStr global_16
  loc_A8EA9F: AryLock
  loc_A8EAA2: Ary1LdPr
  loc_A8EAA3: MemLdRfVar from_stack_1.global_0
  loc_A8EAA6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_A8EAAB: AryUnlock
  loc_A8EAAE: AryUnlock
  loc_A8EAB1: FFreeVar var_A0 = ""
  loc_A8EAB8: Call Proc_159_24_B2E2F0()
  loc_A8EABD: ExitProcHresult
  loc_A8EABE: FStStrNoPop arg_103C
End Function

Private Function Proc_159_24_B2E2F0(arg_10) 'B2E2F0
  'Data Table: 4A2388
  loc_B2E01C: FLdPr Me
  loc_B2E01F: MemLdStr global_96
  loc_B2E022: LitI4 1
  loc_B2E027: AddI4
  loc_B2E028: FLdPr Me
  loc_B2E02B: MemStI4 global_96
  loc_B2E02E: LitI4 0
  loc_B2E033: FLdPr Me
  loc_B2E036: MemLdStr global_96
  loc_B2E039: FLdPr Me
  loc_B2E03C: MemLdI2 global_94
  loc_B2E03F: CI4UI1
  loc_B2E040: FLdPr Me
  loc_B2E043: MemLdI2 global_92
  loc_B2E046: CI4UI1
  loc_B2E047: FLdPr Me
  loc_B2E04A: MemLdStr global_84
  loc_B2E04D: Ary1LdPr
  loc_B2E04E: MemLdStr global_16
  loc_B2E051: Ary1LdPr
  loc_B2E052: MemLdRfVar from_stack_1.global_4
  loc_B2E055: RedimPreserve
  loc_B2E05F: FLdPr Me
  loc_B2E062: MemLdStr global_96
  loc_B2E065: FLdPr Me
  loc_B2E068: MemLdI2 global_94
  loc_B2E06B: CI4UI1
  loc_B2E06C: FLdPr Me
  loc_B2E06F: MemLdI2 global_92
  loc_B2E072: CI4UI1
  loc_B2E073: FLdPr Me
  loc_B2E076: MemLdStr global_84
  loc_B2E079: AryLock
  loc_B2E07C: Ary1LdPr
  loc_B2E07D: MemLdStr global_16
  loc_B2E080: AryLock
  loc_B2E083: Ary1LdPr
  loc_B2E084: MemLdStr global_4
  loc_B2E087: AryLock
  loc_B2E08A: Ary1LdRf
  loc_B2E08B: FStR4 var_94
  loc_B2E08E: FLdRfVar var_96
  loc_B2E091: FLdPr Me
  loc_B2E094: MemLdRfVar from_stack_1.global_76
  loc_B2E097: NewIfNullPr clsconcepto
  loc_B2E09A: from_stack_1 = clsconcepto.CodiOfic
  loc_B2E09F: LitI2_Byte 0
  loc_B2E0A1: LitVar_Missing var_C8
  loc_B2E0A4: LitI2_Byte 0
  loc_B2E0A6: FLdUI1
  loc_B2E0AA: CVarUI1
  loc_B2E0AE: PopAdLdVar
  loc_B2E0AF: FMemLdRf 0
  loc_B2E0B4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2E0B9: FFree1Var var_C8 = ""
  loc_B2E0BC: FLdRfVar var_CC
  loc_B2E0BF: FLdPr Me
  loc_B2E0C2: MemLdRfVar from_stack_1.global_76
  loc_B2E0C5: NewIfNullPr clsconcepto
  loc_B2E0C8: from_stack_1 = clsconcepto.CuenCtct
  loc_B2E0CD: LitI2_Byte 0
  loc_B2E0CF: LitVar_Missing var_DC
  loc_B2E0D2: LitI2_Byte 0
  loc_B2E0D4: FLdZeroAd var_CC
  loc_B2E0D7: CVarStr var_C8
  loc_B2E0DA: PopAdLdVar
  loc_B2E0DB: FMemLdRf 0
  loc_B2E0E0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2E0E5: FFreeVar var_C8 = ""
  loc_B2E0EC: FLdRfVar var_96
  loc_B2E0EF: FLdPr Me
  loc_B2E0F2: MemLdRfVar from_stack_1.global_76
  loc_B2E0F5: NewIfNullPr clsconcepto
  loc_B2E0F8: from_stack_1 = clsconcepto.PeriBole
  loc_B2E0FD: LitI2_Byte 0
  loc_B2E0FF: LitVar_Missing var_C8
  loc_B2E102: LitI2_Byte 0
  loc_B2E104: FLdI2 var_96
  loc_B2E107: CVarI2 var_A8
  loc_B2E10A: PopAdLdVar
  loc_B2E10B: FMemLdRf 0
  loc_B2E110: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2E115: FFree1Var var_C8 = ""
  loc_B2E118: FLdRfVar var_E0
  loc_B2E11B: FLdPr Me
  loc_B2E11E: MemLdRfVar from_stack_1.global_76
  loc_B2E121: NewIfNullPr clsconcepto
  loc_B2E124: from_stack_1 = clsconcepto.NumeBole
  loc_B2E129: LitI2_Byte 0
  loc_B2E12B: LitVar_Missing var_C8
  loc_B2E12E: LitI2_Byte 0
  loc_B2E130: ILdRf var_E0
  loc_B2E133: CVarI4
  loc_B2E137: PopAdLdVar
  loc_B2E138: FMemLdRf 0
  loc_B2E13D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2E142: FFree1Var var_C8 = ""
  loc_B2E145: FLdRfVar var_E8
  loc_B2E148: FLdPr Me
  loc_B2E14B: MemLdRfVar from_stack_1.global_76
  loc_B2E14E: NewIfNullPr clsconcepto
  loc_B2E151: from_stack_1 = clsconcepto.CapiDepa
  loc_B2E156: LitI2_Byte 0
  loc_B2E158: FLdPr Me
  loc_B2E15B: MemLdI2 global_94
  loc_B2E15E: CI4UI1
  loc_B2E15F: FLdPr Me
  loc_B2E162: MemLdI2 global_92
  loc_B2E165: CI4UI1
  loc_B2E166: FLdPr Me
  loc_B2E169: MemLdStr global_84
  loc_B2E16C: AryLock
  loc_B2E16F: Ary1LdPr
  loc_B2E170: MemLdStr global_16
  loc_B2E173: AryLock
  loc_B2E176: Ary1LdPr
  loc_B2E177: MemLdRfVar from_stack_1.global_24
  loc_B2E17A: CVarRef
  loc_B2E17F: LitI2_Byte &HFF
  loc_B2E181: FLdFPR8 var_E8
  loc_B2E184: CVarR8
  loc_B2E188: PopAdLdVar
  loc_B2E189: FMemLdRf 0
  loc_B2E18E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2E193: AryUnlock
  loc_B2E196: AryUnlock
  loc_B2E199: FLdRfVar var_E8
  loc_B2E19C: FLdPr Me
  loc_B2E19F: MemLdRfVar from_stack_1.global_76
  loc_B2E1A2: NewIfNullPr clsconcepto
  loc_B2E1A5: from_stack_1 = clsconcepto.DecaDepa
  loc_B2E1AA: LitI2_Byte 0
  loc_B2E1AC: FLdPr Me
  loc_B2E1AF: MemLdI2 global_94
  loc_B2E1B2: CI4UI1
  loc_B2E1B3: FLdPr Me
  loc_B2E1B6: MemLdI2 global_92
  loc_B2E1B9: CI4UI1
  loc_B2E1BA: FLdPr Me
  loc_B2E1BD: MemLdStr global_84
  loc_B2E1C0: AryLock
  loc_B2E1C3: Ary1LdPr
  loc_B2E1C4: MemLdStr global_16
  loc_B2E1C7: AryLock
  loc_B2E1CA: Ary1LdPr
  loc_B2E1CB: MemLdRfVar from_stack_1.global_28
  loc_B2E1CE: CVarRef
  loc_B2E1D3: LitI2_Byte &HFF
  loc_B2E1D5: FLdFPR8 var_E8
  loc_B2E1D8: CVarR8
  loc_B2E1DC: PopAdLdVar
  loc_B2E1DD: FMemLdRf 0
  loc_B2E1E2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2E1E7: AryUnlock
  loc_B2E1EA: AryUnlock
  loc_B2E1ED: FLdRfVar var_E8
  loc_B2E1F0: FLdPr Me
  loc_B2E1F3: MemLdRfVar from_stack_1.global_76
  loc_B2E1F6: NewIfNullPr clsconcepto
  loc_B2E1F9: from_stack_1 = clsconcepto.ExenDepa
  loc_B2E1FE: LitI2_Byte 0
  loc_B2E200: FLdPr Me
  loc_B2E203: MemLdI2 global_94
  loc_B2E206: CI4UI1
  loc_B2E207: FLdPr Me
  loc_B2E20A: MemLdI2 global_92
  loc_B2E20D: CI4UI1
  loc_B2E20E: FLdPr Me
  loc_B2E211: MemLdStr global_84
  loc_B2E214: AryLock
  loc_B2E217: Ary1LdPr
  loc_B2E218: MemLdStr global_16
  loc_B2E21B: AryLock
  loc_B2E21E: Ary1LdPr
  loc_B2E21F: MemLdRfVar from_stack_1.global_44
  loc_B2E222: CVarRef
  loc_B2E227: LitI2_Byte &HFF
  loc_B2E229: FLdFPR8 var_E8
  loc_B2E22C: CVarR8
  loc_B2E230: PopAdLdVar
  loc_B2E231: FMemLdRf 0
  loc_B2E236: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2E23B: AryUnlock
  loc_B2E23E: AryUnlock
  loc_B2E241: FLdRfVar var_C8
  loc_B2E244: FLdPr Me
  loc_B2E247: MemLdRfVar from_stack_1.global_76
  loc_B2E24A: NewIfNullPr clsconcepto
  loc_B2E24D: from_stack_1 = clsconcepto.TotaDepa
  loc_B2E252: LitI2_Byte 0
  loc_B2E254: FLdPr Me
  loc_B2E257: MemLdI2 global_94
  loc_B2E25A: CI4UI1
  loc_B2E25B: FLdPr Me
  loc_B2E25E: MemLdI2 global_92
  loc_B2E261: CI4UI1
  loc_B2E262: FLdPr Me
  loc_B2E265: MemLdStr global_84
  loc_B2E268: AryLock
  loc_B2E26B: Ary1LdPr
  loc_B2E26C: MemLdStr global_16
  loc_B2E26F: AryLock
  loc_B2E272: Ary1LdPr
  loc_B2E273: MemLdRfVar from_stack_1.bGenerado
  loc_B2E276: CVarRef
  loc_B2E27B: LitI2_Byte &HFF
  loc_B2E27D: FLdVar var_C8
  loc_B2E281: FMemLdRf 0
  loc_B2E286: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2E28B: AryUnlock
  loc_B2E28E: AryUnlock
  loc_B2E291: FFree1Var var_C8 = ""
  loc_B2E294: LitI2_Byte 0
  loc_B2E296: FLdPr Me
  loc_B2E299: MemLdI2 global_92
  loc_B2E29C: CI4UI1
  loc_B2E29D: FLdPr Me
  loc_B2E2A0: MemLdStr global_84
  loc_B2E2A3: AryLock
  loc_B2E2A6: Ary1LdPr
  loc_B2E2A7: MemLdRfVar from_stack_1.global_64
  loc_B2E2AA: CVarRef
  loc_B2E2AF: LitI2_Byte &HFF
  loc_B2E2B1: FMemLdR4 var_94(44)
  loc_B2E2B6: CVarStr var_A8
  loc_B2E2B9: PopAdLdVar
  loc_B2E2BA: FLdPr Me
  loc_B2E2BD: MemLdRfVar from_stack_1.global_100
  loc_B2E2C0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2E2C5: AryUnlock
  loc_B2E2C8: LitI4 0
  loc_B2E2CD: FStR4 var_94
  loc_B2E2D0: AryUnlock
  loc_B2E2D3: AryUnlock
  loc_B2E2D6: AryUnlock
  loc_B2E2D9: LitI2_Byte 1
  loc_B2E2DB: PopTmpLdAd2 var_96
  loc_B2E2DE: FLdPr Me
  loc_B2E2E1: MemLdRfVar from_stack_1.global_76
  loc_B2E2E4: NewIfNullPr clsconcepto
  loc_B2E2E7: Call clsconcepto.Move(from_stack_1v)
  loc_B2E2EC: ExitProcHresult
  loc_B2E2ED: ConcatVar arg_103C
End Function

Private Function Proc_159_25_BDEF28() 'BDEF28
  'Data Table: 4A2388
  loc_BDE79C: LitVarStr var_94, "<html>"
  loc_BDE7A1: PopAdLdVar
  loc_BDE7A2: FLdPr Me
  loc_BDE7A5: MemLdRfVar from_stack_1.global_60
  loc_BDE7A8: LdPrVar
  loc_BDE7AA: LateMemCall
  loc_BDE7B0: LitVarStr var_94, "<head>"
  loc_BDE7B5: PopAdLdVar
  loc_BDE7B6: FLdPr Me
  loc_BDE7B9: MemLdRfVar from_stack_1.global_60
  loc_BDE7BC: LdPrVar
  loc_BDE7BE: LateMemCall
  loc_BDE7C4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BDE7C9: PopAdLdVar
  loc_BDE7CA: FLdPr Me
  loc_BDE7CD: MemLdRfVar from_stack_1.global_60
  loc_BDE7D0: LdPrVar
  loc_BDE7D2: LateMemCall
  loc_BDE7D8: LitStr "<title>"
  loc_BDE7DB: FLdRfVar var_A8
  loc_BDE7DE: FLdPr Me
  loc_BDE7E1:  = Me.Caption
  loc_BDE7E6: ILdRf var_A8
  loc_BDE7E9: ConcatStr
  loc_BDE7EA: FStStrNoPop var_AC
  loc_BDE7ED: LitStr "</title>"
  loc_BDE7F0: ConcatStr
  loc_BDE7F1: CVarStr var_BC
  loc_BDE7F4: PopAdLdVar
  loc_BDE7F5: FLdPr Me
  loc_BDE7F8: MemLdRfVar from_stack_1.global_60
  loc_BDE7FB: LdPrVar
  loc_BDE7FD: LateMemCall
  loc_BDE803: FFreeStr var_A8 = ""
  loc_BDE80A: FFree1Var var_BC = ""
  loc_BDE80D: LitVarStr var_94, "<style type=""text/css"">"
  loc_BDE812: PopAdLdVar
  loc_BDE813: FLdPr Me
  loc_BDE816: MemLdRfVar from_stack_1.global_60
  loc_BDE819: LdPrVar
  loc_BDE81B: LateMemCall
  loc_BDE821: LitVarStr var_94, ".Titulo1 {"
  loc_BDE826: PopAdLdVar
  loc_BDE827: FLdPr Me
  loc_BDE82A: MemLdRfVar from_stack_1.global_60
  loc_BDE82D: LdPrVar
  loc_BDE82F: LateMemCall
  loc_BDE835: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDE83A: PopAdLdVar
  loc_BDE83B: FLdPr Me
  loc_BDE83E: MemLdRfVar from_stack_1.global_60
  loc_BDE841: LdPrVar
  loc_BDE843: LateMemCall
  loc_BDE849: LitVarStr var_94, " font-size: 18px;"
  loc_BDE84E: PopAdLdVar
  loc_BDE84F: FLdPr Me
  loc_BDE852: MemLdRfVar from_stack_1.global_60
  loc_BDE855: LdPrVar
  loc_BDE857: LateMemCall
  loc_BDE85D: LitVarStr var_94, " font-weight: bold;"
  loc_BDE862: PopAdLdVar
  loc_BDE863: FLdPr Me
  loc_BDE866: MemLdRfVar from_stack_1.global_60
  loc_BDE869: LdPrVar
  loc_BDE86B: LateMemCall
  loc_BDE871: LitVarStr var_94, "}"
  loc_BDE876: PopAdLdVar
  loc_BDE877: FLdPr Me
  loc_BDE87A: MemLdRfVar from_stack_1.global_60
  loc_BDE87D: LdPrVar
  loc_BDE87F: LateMemCall
  loc_BDE885: LitVarStr var_94, ".Titulo2 {"
  loc_BDE88A: PopAdLdVar
  loc_BDE88B: FLdPr Me
  loc_BDE88E: MemLdRfVar from_stack_1.global_60
  loc_BDE891: LdPrVar
  loc_BDE893: LateMemCall
  loc_BDE899: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDE89E: PopAdLdVar
  loc_BDE89F: FLdPr Me
  loc_BDE8A2: MemLdRfVar from_stack_1.global_60
  loc_BDE8A5: LdPrVar
  loc_BDE8A7: LateMemCall
  loc_BDE8AD: LitVarStr var_94, " font-size: 14px;"
  loc_BDE8B2: PopAdLdVar
  loc_BDE8B3: FLdPr Me
  loc_BDE8B6: MemLdRfVar from_stack_1.global_60
  loc_BDE8B9: LdPrVar
  loc_BDE8BB: LateMemCall
  loc_BDE8C1: LitVarStr var_94, " font-weight: bold;"
  loc_BDE8C6: PopAdLdVar
  loc_BDE8C7: FLdPr Me
  loc_BDE8CA: MemLdRfVar from_stack_1.global_60
  loc_BDE8CD: LdPrVar
  loc_BDE8CF: LateMemCall
  loc_BDE8D5: LitVarStr var_94, "}"
  loc_BDE8DA: PopAdLdVar
  loc_BDE8DB: FLdPr Me
  loc_BDE8DE: MemLdRfVar from_stack_1.global_60
  loc_BDE8E1: LdPrVar
  loc_BDE8E3: LateMemCall
  loc_BDE8E9: LitVarStr var_94, ".Normal {"
  loc_BDE8EE: PopAdLdVar
  loc_BDE8EF: FLdPr Me
  loc_BDE8F2: MemLdRfVar from_stack_1.global_60
  loc_BDE8F5: LdPrVar
  loc_BDE8F7: LateMemCall
  loc_BDE8FD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDE902: PopAdLdVar
  loc_BDE903: FLdPr Me
  loc_BDE906: MemLdRfVar from_stack_1.global_60
  loc_BDE909: LdPrVar
  loc_BDE90B: LateMemCall
  loc_BDE911: LitVarStr var_94, " font-size: 12px;"
  loc_BDE916: PopAdLdVar
  loc_BDE917: FLdPr Me
  loc_BDE91A: MemLdRfVar from_stack_1.global_60
  loc_BDE91D: LdPrVar
  loc_BDE91F: LateMemCall
  loc_BDE925: LitVarStr var_94, " font-style: normal;"
  loc_BDE92A: PopAdLdVar
  loc_BDE92B: FLdPr Me
  loc_BDE92E: MemLdRfVar from_stack_1.global_60
  loc_BDE931: LdPrVar
  loc_BDE933: LateMemCall
  loc_BDE939: LitVarStr var_94, " font-weight: normal;"
  loc_BDE93E: PopAdLdVar
  loc_BDE93F: FLdPr Me
  loc_BDE942: MemLdRfVar from_stack_1.global_60
  loc_BDE945: LdPrVar
  loc_BDE947: LateMemCall
  loc_BDE94D: LitVarStr var_94, " font-variant: normal;"
  loc_BDE952: PopAdLdVar
  loc_BDE953: FLdPr Me
  loc_BDE956: MemLdRfVar from_stack_1.global_60
  loc_BDE959: LdPrVar
  loc_BDE95B: LateMemCall
  loc_BDE961: LitVarStr var_94, "}"
  loc_BDE966: PopAdLdVar
  loc_BDE967: FLdPr Me
  loc_BDE96A: MemLdRfVar from_stack_1.global_60
  loc_BDE96D: LdPrVar
  loc_BDE96F: LateMemCall
  loc_BDE975: LitVarStr var_94, ".Encabezado {"
  loc_BDE97A: PopAdLdVar
  loc_BDE97B: FLdPr Me
  loc_BDE97E: MemLdRfVar from_stack_1.global_60
  loc_BDE981: LdPrVar
  loc_BDE983: LateMemCall
  loc_BDE989: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BDE98E: PopAdLdVar
  loc_BDE98F: FLdPr Me
  loc_BDE992: MemLdRfVar from_stack_1.global_60
  loc_BDE995: LdPrVar
  loc_BDE997: LateMemCall
  loc_BDE99D: LitVarStr var_94, " font-size: 11px;"
  loc_BDE9A2: PopAdLdVar
  loc_BDE9A3: FLdPr Me
  loc_BDE9A6: MemLdRfVar from_stack_1.global_60
  loc_BDE9A9: LdPrVar
  loc_BDE9AB: LateMemCall
  loc_BDE9B1: LitVarStr var_94, " font-weight: bold;"
  loc_BDE9B6: PopAdLdVar
  loc_BDE9B7: FLdPr Me
  loc_BDE9BA: MemLdRfVar from_stack_1.global_60
  loc_BDE9BD: LdPrVar
  loc_BDE9BF: LateMemCall
  loc_BDE9C5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BDE9CA: PopAdLdVar
  loc_BDE9CB: FLdPr Me
  loc_BDE9CE: MemLdRfVar from_stack_1.global_60
  loc_BDE9D1: LdPrVar
  loc_BDE9D3: LateMemCall
  loc_BDE9D9: LitVarStr var_94, "}"
  loc_BDE9DE: PopAdLdVar
  loc_BDE9DF: FLdPr Me
  loc_BDE9E2: MemLdRfVar from_stack_1.global_60
  loc_BDE9E5: LdPrVar
  loc_BDE9E7: LateMemCall
  loc_BDE9ED: LitVarStr var_94, ".LineaDato {"
  loc_BDE9F2: PopAdLdVar
  loc_BDE9F3: FLdPr Me
  loc_BDE9F6: MemLdRfVar from_stack_1.global_60
  loc_BDE9F9: LdPrVar
  loc_BDE9FB: LateMemCall
  loc_BDEA01: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDEA06: PopAdLdVar
  loc_BDEA07: FLdPr Me
  loc_BDEA0A: MemLdRfVar from_stack_1.global_60
  loc_BDEA0D: LdPrVar
  loc_BDEA0F: LateMemCall
  loc_BDEA15: LitVarStr var_94, " font-size: 10px;"
  loc_BDEA1A: PopAdLdVar
  loc_BDEA1B: FLdPr Me
  loc_BDEA1E: MemLdRfVar from_stack_1.global_60
  loc_BDEA21: LdPrVar
  loc_BDEA23: LateMemCall
  loc_BDEA29: LitVarStr var_94, "}"
  loc_BDEA2E: PopAdLdVar
  loc_BDEA2F: FLdPr Me
  loc_BDEA32: MemLdRfVar from_stack_1.global_60
  loc_BDEA35: LdPrVar
  loc_BDEA37: LateMemCall
  loc_BDEA3D: LitVarStr var_94, ".Totales {"
  loc_BDEA42: PopAdLdVar
  loc_BDEA43: FLdPr Me
  loc_BDEA46: MemLdRfVar from_stack_1.global_60
  loc_BDEA49: LdPrVar
  loc_BDEA4B: LateMemCall
  loc_BDEA51: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDEA56: PopAdLdVar
  loc_BDEA57: FLdPr Me
  loc_BDEA5A: MemLdRfVar from_stack_1.global_60
  loc_BDEA5D: LdPrVar
  loc_BDEA5F: LateMemCall
  loc_BDEA65: LitVarStr var_94, " font-size: 12px;"
  loc_BDEA6A: PopAdLdVar
  loc_BDEA6B: FLdPr Me
  loc_BDEA6E: MemLdRfVar from_stack_1.global_60
  loc_BDEA71: LdPrVar
  loc_BDEA73: LateMemCall
  loc_BDEA79: LitVarStr var_94, " font-weight: bold;"
  loc_BDEA7E: PopAdLdVar
  loc_BDEA7F: FLdPr Me
  loc_BDEA82: MemLdRfVar from_stack_1.global_60
  loc_BDEA85: LdPrVar
  loc_BDEA87: LateMemCall
  loc_BDEA8D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BDEA92: PopAdLdVar
  loc_BDEA93: FLdPr Me
  loc_BDEA96: MemLdRfVar from_stack_1.global_60
  loc_BDEA99: LdPrVar
  loc_BDEA9B: LateMemCall
  loc_BDEAA1: LitVarStr var_94, "}"
  loc_BDEAA6: PopAdLdVar
  loc_BDEAA7: FLdPr Me
  loc_BDEAAA: MemLdRfVar from_stack_1.global_60
  loc_BDEAAD: LdPrVar
  loc_BDEAAF: LateMemCall
  loc_BDEAB5: LitVarStr var_94, ".SubTotales {"
  loc_BDEABA: PopAdLdVar
  loc_BDEABB: FLdPr Me
  loc_BDEABE: MemLdRfVar from_stack_1.global_60
  loc_BDEAC1: LdPrVar
  loc_BDEAC3: LateMemCall
  loc_BDEAC9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDEACE: PopAdLdVar
  loc_BDEACF: FLdPr Me
  loc_BDEAD2: MemLdRfVar from_stack_1.global_60
  loc_BDEAD5: LdPrVar
  loc_BDEAD7: LateMemCall
  loc_BDEADD: LitVarStr var_94, " font-size: 10px;"
  loc_BDEAE2: PopAdLdVar
  loc_BDEAE3: FLdPr Me
  loc_BDEAE6: MemLdRfVar from_stack_1.global_60
  loc_BDEAE9: LdPrVar
  loc_BDEAEB: LateMemCall
  loc_BDEAF1: LitVarStr var_94, " font-weight: bold;"
  loc_BDEAF6: PopAdLdVar
  loc_BDEAF7: FLdPr Me
  loc_BDEAFA: MemLdRfVar from_stack_1.global_60
  loc_BDEAFD: LdPrVar
  loc_BDEAFF: LateMemCall
  loc_BDEB05: LitVarStr var_94, " background-color: #7DC3E1;"
  loc_BDEB0A: PopAdLdVar
  loc_BDEB0B: FLdPr Me
  loc_BDEB0E: MemLdRfVar from_stack_1.global_60
  loc_BDEB11: LdPrVar
  loc_BDEB13: LateMemCall
  loc_BDEB19: LitVarStr var_94, "}"
  loc_BDEB1E: PopAdLdVar
  loc_BDEB1F: FLdPr Me
  loc_BDEB22: MemLdRfVar from_stack_1.global_60
  loc_BDEB25: LdPrVar
  loc_BDEB27: LateMemCall
  loc_BDEB2D: LitVarStr var_94, ".SubTotales {"
  loc_BDEB32: PopAdLdVar
  loc_BDEB33: FLdPr Me
  loc_BDEB36: MemLdRfVar from_stack_1.global_60
  loc_BDEB39: LdPrVar
  loc_BDEB3B: LateMemCall
  loc_BDEB41: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDEB46: PopAdLdVar
  loc_BDEB47: FLdPr Me
  loc_BDEB4A: MemLdRfVar from_stack_1.global_60
  loc_BDEB4D: LdPrVar
  loc_BDEB4F: LateMemCall
  loc_BDEB55: LitVarStr var_94, " font-size: 10px;"
  loc_BDEB5A: PopAdLdVar
  loc_BDEB5B: FLdPr Me
  loc_BDEB5E: MemLdRfVar from_stack_1.global_60
  loc_BDEB61: LdPrVar
  loc_BDEB63: LateMemCall
  loc_BDEB69: LitVarStr var_94, " font-weight: bold;"
  loc_BDEB6E: PopAdLdVar
  loc_BDEB6F: FLdPr Me
  loc_BDEB72: MemLdRfVar from_stack_1.global_60
  loc_BDEB75: LdPrVar
  loc_BDEB77: LateMemCall
  loc_BDEB7D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BDEB82: PopAdLdVar
  loc_BDEB83: FLdPr Me
  loc_BDEB86: MemLdRfVar from_stack_1.global_60
  loc_BDEB89: LdPrVar
  loc_BDEB8B: LateMemCall
  loc_BDEB91: LitVarStr var_94, "}"
  loc_BDEB96: PopAdLdVar
  loc_BDEB97: FLdPr Me
  loc_BDEB9A: MemLdRfVar from_stack_1.global_60
  loc_BDEB9D: LdPrVar
  loc_BDEB9F: LateMemCall
  loc_BDEBA5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BDEBAA: PopAdLdVar
  loc_BDEBAB: FLdPr Me
  loc_BDEBAE: MemLdRfVar from_stack_1.global_60
  loc_BDEBB1: LdPrVar
  loc_BDEBB3: LateMemCall
  loc_BDEBB9: LitVarStr var_94, "</style>"
  loc_BDEBBE: PopAdLdVar
  loc_BDEBBF: FLdPr Me
  loc_BDEBC2: MemLdRfVar from_stack_1.global_60
  loc_BDEBC5: LdPrVar
  loc_BDEBC7: LateMemCall
  loc_BDEBCD: LitI4 0
  loc_BDEBD2: FStStrCopy var_AC
  loc_BDEBD5: FLdRfVar var_AC
  loc_BDEBD8: LitI4 0
  loc_BDEBDD: FStStrCopy var_A8
  loc_BDEBE0: FLdRfVar var_A8
  loc_BDEBE3: LitI2_Byte 0
  loc_BDEBE5: PopTmpLdAd2 var_BE
  loc_BDEBE8: FLdPr Me
  loc_BDEBEB: MemLdRfVar from_stack_1.global_60
  loc_BDEBEE: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BDEBF3: FFreeStr var_A8 = ""
  loc_BDEBFA: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BDEBFF: PopAdLdVar
  loc_BDEC00: FLdPr Me
  loc_BDEC03: MemLdRfVar from_stack_1.global_60
  loc_BDEC06: LdPrVar
  loc_BDEC08: LateMemCall
  loc_BDEC0E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BDEC13: PopAdLdVar
  loc_BDEC14: FLdPr Me
  loc_BDEC17: MemLdRfVar from_stack_1.global_60
  loc_BDEC1A: LdPrVar
  loc_BDEC1C: LateMemCall
  loc_BDEC22: LitStr "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BDEC25: LitI2_Byte &H5F
  loc_BDEC27: CStrUI1
  loc_BDEC29: FStStrNoPop var_A8
  loc_BDEC2C: ConcatStr
  loc_BDEC2D: FStStrNoPop var_AC
  loc_BDEC30: LitStr """ height="""
  loc_BDEC33: ConcatStr
  loc_BDEC34: FStStrNoPop var_C4
  loc_BDEC37: LitI2_Byte &H3C
  loc_BDEC39: CStrUI1
  loc_BDEC3B: FStStrNoPop var_C8
  loc_BDEC3E: ConcatStr
  loc_BDEC3F: FStStrNoPop var_CC
  loc_BDEC42: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BDEC45: ConcatStr
  loc_BDEC46: FStStrNoPop var_D0
  loc_BDEC49: LitStr "Municipalidad de Guaymallén"
  loc_BDEC4C: ConcatStr
  loc_BDEC4D: FStStrNoPop var_D4
  loc_BDEC50: LitStr "</p>"
  loc_BDEC53: ConcatStr
  loc_BDEC54: CVarStr var_BC
  loc_BDEC57: PopAdLdVar
  loc_BDEC58: FLdPr Me
  loc_BDEC5B: MemLdRfVar from_stack_1.global_60
  loc_BDEC5E: LdPrVar
  loc_BDEC60: LateMemCall
  loc_BDEC66: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BDEC77: FFree1Var var_BC = ""
  loc_BDEC7A: LitStr "    <p>"
  loc_BDEC7D: FLdRfVar var_A8
  loc_BDEC80: FLdPr Me
  loc_BDEC83:  = Me.Caption
  loc_BDEC88: ILdRf var_A8
  loc_BDEC8B: ConcatStr
  loc_BDEC8C: FStStrNoPop var_AC
  loc_BDEC8F: LitStr "</p></th>"
  loc_BDEC92: ConcatStr
  loc_BDEC93: CVarStr var_BC
  loc_BDEC96: PopAdLdVar
  loc_BDEC97: FLdPr Me
  loc_BDEC9A: MemLdRfVar from_stack_1.global_60
  loc_BDEC9D: LdPrVar
  loc_BDEC9F: LateMemCall
  loc_BDECA5: FFreeStr var_A8 = ""
  loc_BDECAC: FFree1Var var_BC = ""
  loc_BDECAF: LitVarStr var_94, "  </tr>"
  loc_BDECB4: PopAdLdVar
  loc_BDECB5: FLdPr Me
  loc_BDECB8: MemLdRfVar from_stack_1.global_60
  loc_BDECBB: LdPrVar
  loc_BDECBD: LateMemCall
  loc_BDECC3: LitVarStr var_94, "  <tr>"
  loc_BDECC8: PopAdLdVar
  loc_BDECC9: FLdPr Me
  loc_BDECCC: MemLdRfVar from_stack_1.global_60
  loc_BDECCF: LdPrVar
  loc_BDECD1: LateMemCall
  loc_BDECD7: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><hr></th>"
  loc_BDECDC: PopAdLdVar
  loc_BDECDD: FLdPr Me
  loc_BDECE0: MemLdRfVar from_stack_1.global_60
  loc_BDECE3: LdPrVar
  loc_BDECE5: LateMemCall
  loc_BDECEB: LitVarStr var_94, "  </tr>"
  loc_BDECF0: PopAdLdVar
  loc_BDECF1: FLdPr Me
  loc_BDECF4: MemLdRfVar from_stack_1.global_60
  loc_BDECF7: LdPrVar
  loc_BDECF9: LateMemCall
  loc_BDECFF: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BDED04: PopAdLdVar
  loc_BDED05: FLdPr Me
  loc_BDED08: MemLdRfVar from_stack_1.global_60
  loc_BDED0B: LdPrVar
  loc_BDED0D: LateMemCall
  loc_BDED13: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BDED16: FLdPr Me
  loc_BDED19: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_BDED1C: FStAdFunc var_D8
  loc_BDED1F: FLdPr var_D8
  loc_BDED22: LateIdLdVar var_BC DispID_15 0
  loc_BDED29: CStrVarTmp
  loc_BDED2A: FStStrNoPop var_A8
  loc_BDED2D: ConcatStr
  loc_BDED2E: FStStrNoPop var_AC
  loc_BDED31: LitStr "<br>"
  loc_BDED34: ConcatStr
  loc_BDED35: CVarStr var_E8
  loc_BDED38: PopAdLdVar
  loc_BDED39: FLdPr Me
  loc_BDED3C: MemLdRfVar from_stack_1.global_60
  loc_BDED3F: LdPrVar
  loc_BDED41: LateMemCall
  loc_BDED47: FFreeStr var_A8 = ""
  loc_BDED4E: FFree1Ad var_D8
  loc_BDED51: FFreeVar var_BC = ""
  loc_BDED58: LitStr "                                      <strong>Hasta: </strong>"
  loc_BDED5B: FLdPr Me
  loc_BDED5E: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_BDED61: FStAdFunc var_D8
  loc_BDED64: FLdPr var_D8
  loc_BDED67: LateIdLdVar var_BC DispID_15 0
  loc_BDED6E: CStrVarTmp
  loc_BDED6F: FStStrNoPop var_A8
  loc_BDED72: ConcatStr
  loc_BDED73: FStStrNoPop var_AC
  loc_BDED76: LitStr "<br></td>"
  loc_BDED79: ConcatStr
  loc_BDED7A: CVarStr var_E8
  loc_BDED7D: PopAdLdVar
  loc_BDED7E: FLdPr Me
  loc_BDED81: MemLdRfVar from_stack_1.global_60
  loc_BDED84: LdPrVar
  loc_BDED86: LateMemCall
  loc_BDED8C: FFreeStr var_A8 = ""
  loc_BDED93: FFree1Ad var_D8
  loc_BDED96: FFreeVar var_BC = ""
  loc_BDED9D: LitStr "    <td align=""right"" valign=""top""><strong>Concepto: </strong>"
  loc_BDEDA0: FLdPr Me
  loc_BDEDA3: VCallAd Control_ID_CodiConcMsk
  loc_BDEDA6: FStAdFunc var_D8
  loc_BDEDA9: FLdPr var_D8
  loc_BDEDAC: LateIdLdVar var_BC DispID_22 0
  loc_BDEDB3: CStrVarTmp
  loc_BDEDB4: FStStrNoPop var_A8
  loc_BDEDB7: ConcatStr
  loc_BDEDB8: FStStrNoPop var_AC
  loc_BDEDBB: LitStr " - "
  loc_BDEDBE: ConcatStr
  loc_BDEDBF: FStStrNoPop var_C8
  loc_BDEDC2: FLdRfVar var_C4
  loc_BDEDC5: FLdPr Me
  loc_BDEDC8: VCallAd Control_ID_DetaConcLbl
  loc_BDEDCB: FStAdFunc var_EC
  loc_BDEDCE: FLdPr var_EC
  loc_BDEDD1:  = Me.Caption
  loc_BDEDD6: ILdRf var_C4
  loc_BDEDD9: ConcatStr
  loc_BDEDDA: FStStrNoPop var_CC
  loc_BDEDDD: LitStr "</td>"
  loc_BDEDE0: ConcatStr
  loc_BDEDE1: CVarStr var_E8
  loc_BDEDE4: PopAdLdVar
  loc_BDEDE5: FLdPr Me
  loc_BDEDE8: MemLdRfVar from_stack_1.global_60
  loc_BDEDEB: LdPrVar
  loc_BDEDED: LateMemCall
  loc_BDEDF3: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_BDEE00: FFreeAd var_D8 = ""
  loc_BDEE07: FFreeVar var_BC = ""
  loc_BDEE0E: LitVarStr var_94, "  </tr>"
  loc_BDEE13: PopAdLdVar
  loc_BDEE14: FLdPr Me
  loc_BDEE17: MemLdRfVar from_stack_1.global_60
  loc_BDEE1A: LdPrVar
  loc_BDEE1C: LateMemCall
  loc_BDEE22: LitVarStr var_94, "</table>"
  loc_BDEE27: PopAdLdVar
  loc_BDEE28: FLdPr Me
  loc_BDEE2B: MemLdRfVar from_stack_1.global_60
  loc_BDEE2E: LdPrVar
  loc_BDEE30: LateMemCall
  loc_BDEE36: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BDEE3B: PopAdLdVar
  loc_BDEE3C: FLdPr Me
  loc_BDEE3F: MemLdRfVar from_stack_1.global_60
  loc_BDEE42: LdPrVar
  loc_BDEE44: LateMemCall
  loc_BDEE4A: LitVarStr var_94, "  <thead>"
  loc_BDEE4F: PopAdLdVar
  loc_BDEE50: FLdPr Me
  loc_BDEE53: MemLdRfVar from_stack_1.global_60
  loc_BDEE56: LdPrVar
  loc_BDEE58: LateMemCall
  loc_BDEE5E: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BDEE63: PopAdLdVar
  loc_BDEE64: FLdPr Me
  loc_BDEE67: MemLdRfVar from_stack_1.global_60
  loc_BDEE6A: LdPrVar
  loc_BDEE6C: LateMemCall
  loc_BDEE72: LitVarStr var_94, "    <th>Ofic.</th>"
  loc_BDEE77: PopAdLdVar
  loc_BDEE78: FLdPr Me
  loc_BDEE7B: MemLdRfVar from_stack_1.global_60
  loc_BDEE7E: LdPrVar
  loc_BDEE80: LateMemCall
  loc_BDEE86: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BDEE8B: PopAdLdVar
  loc_BDEE8C: FLdPr Me
  loc_BDEE8F: MemLdRfVar from_stack_1.global_60
  loc_BDEE92: LdPrVar
  loc_BDEE94: LateMemCall
  loc_BDEE9A: LitVarStr var_94, "    <th>Boleto</th>"
  loc_BDEE9F: PopAdLdVar
  loc_BDEEA0: FLdPr Me
  loc_BDEEA3: MemLdRfVar from_stack_1.global_60
  loc_BDEEA6: LdPrVar
  loc_BDEEA8: LateMemCall
  loc_BDEEAE: LitVarStr var_94, "    <th>Capital</th>"
  loc_BDEEB3: PopAdLdVar
  loc_BDEEB4: FLdPr Me
  loc_BDEEB7: MemLdRfVar from_stack_1.global_60
  loc_BDEEBA: LdPrVar
  loc_BDEEBC: LateMemCall
  loc_BDEEC2: LitVarStr var_94, "    <th>Desc. de<br>capital</th>"
  loc_BDEEC7: PopAdLdVar
  loc_BDEEC8: FLdPr Me
  loc_BDEECB: MemLdRfVar from_stack_1.global_60
  loc_BDEECE: LdPrVar
  loc_BDEED0: LateMemCall
  loc_BDEED6: LitVarStr var_94, "    <th>Exen.</th>"
  loc_BDEEDB: PopAdLdVar
  loc_BDEEDC: FLdPr Me
  loc_BDEEDF: MemLdRfVar from_stack_1.global_60
  loc_BDEEE2: LdPrVar
  loc_BDEEE4: LateMemCall
  loc_BDEEEA: LitVarStr var_94, "    <th>Total</th>"
  loc_BDEEEF: PopAdLdVar
  loc_BDEEF0: FLdPr Me
  loc_BDEEF3: MemLdRfVar from_stack_1.global_60
  loc_BDEEF6: LdPrVar
  loc_BDEEF8: LateMemCall
  loc_BDEEFE: LitVarStr var_94, "  </tr>"
  loc_BDEF03: PopAdLdVar
  loc_BDEF04: FLdPr Me
  loc_BDEF07: MemLdRfVar from_stack_1.global_60
  loc_BDEF0A: LdPrVar
  loc_BDEF0C: LateMemCall
  loc_BDEF12: LitVarStr var_94, "  </thead>"
  loc_BDEF17: PopAdLdVar
  loc_BDEF18: FLdPr Me
  loc_BDEF1B: MemLdRfVar from_stack_1.global_60
  loc_BDEF1E: LdPrVar
  loc_BDEF20: LateMemCall
  loc_BDEF26: ExitProcHresult
End Function

Private Function Proc_159_26_A0DC58(arg_10) 'A0DC58
  'Data Table: 4A2388
  loc_A0DC18: LitVarStr var_94, "</table>"
  loc_A0DC1D: PopAdLdVar
  loc_A0DC1E: FLdPr Me
  loc_A0DC21: MemLdRfVar from_stack_1.global_60
  loc_A0DC24: LdPrVar
  loc_A0DC26: LateMemCall
  loc_A0DC2C: LitVarStr var_94, "</body>"
  loc_A0DC31: PopAdLdVar
  loc_A0DC32: FLdPr Me
  loc_A0DC35: MemLdRfVar from_stack_1.global_60
  loc_A0DC38: LdPrVar
  loc_A0DC3A: LateMemCall
  loc_A0DC40: LitVarStr var_94, "</html>"
  loc_A0DC45: PopAdLdVar
  loc_A0DC46: FLdPr Me
  loc_A0DC49: MemLdRfVar from_stack_1.global_60
  loc_A0DC4C: LdPrVar
  loc_A0DC4E: LateMemCall
  loc_A0DC54: ExitProcHresult
  loc_A0DC55: IStDargCopy arg_10FD
End Function
