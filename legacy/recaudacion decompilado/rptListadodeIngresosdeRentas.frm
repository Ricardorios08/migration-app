VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeIngresosdeRentas
  Caption = "Listado de Ingresos de Rentas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeIngresosdeRentas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9228
  ClientHeight = 3372
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3120
    Width = 9228
    Height = 252
    TabIndex = 13
    OleObjectBlob = "rptListadodeIngresosdeRentas.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 2040
    Width = 855
    Height = 735
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptListadodeIngresosdeRentas.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeIngresosdeRentas.frx":0B9C
    Left = 8280
    Top = 1920
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1800
    Width = 3252
    Height = 1215
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
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 16
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 6
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
    Left = 120
    Top = 1800
    Width = 4095
    Height = 1215
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 5
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
      TabIndex = 4
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
    Width = 8892
    Height = 1695
    TabIndex = 9
    Begin VB.CommandButton HastaFechaCmd
      Left = 3240
      Top = 885
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptListadodeIngresosdeRentas.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeFechaCmd
      Left = 3240
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 1
      Picture = "rptListadodeIngresosdeRentas.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5760
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 7
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
    Begin MSMask.MaskEdBox FechInreDesdeMsk
      Left = 1800
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptListadodeIngresosdeRentas.frx":1684
    End
    Begin MSMask.MaskEdBox FechInreHastaMsk
      Left = 1800
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptListadodeIngresosdeRentas.frx":1734
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1020
      Top = 885
      Width = 705
      Height = 300
      TabIndex = 15
      AutoSize = -1  'True
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
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 960
      Top = 360
      Width = 765
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
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
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8400
    Top = 2280
    Width = 492
    Height = 252
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptListadodeIngresosdeRentas.frx":17E4
  End
End

Attribute VB_Name = "rptListadodeIngresosdeRentas"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_0056645C
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdSalir_Click() 'A0531C
  'Data Table: 47981C
  loc_A052EC: LitVarStr var_94, "Cerrando..."
  loc_A052F1: PopAdLdVar
  loc_A052F2: FLdPr Me
  loc_A052F5: VCallAd Control_ID_statusBar
  loc_A052F8: FStAdFunc var_A8
  loc_A052FB: FLdPr var_A8
  loc_A052FE: LateIdSt
  loc_A05303: FFree1Ad var_A8
  loc_A05306: ILdRf Me
  loc_A05309: FStAdNoPop
  loc_A0530D: ImpAdLdRf MemVar_D9C5D8
  loc_A05310: NewIfNullPr Global
  loc_A05313: Global.Unload from_stack_1
  loc_A05318: FFree1Ad var_A8
  loc_A0531B: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0FC44
  'Data Table: 47981C
  loc_A0FC08: LitVar_Missing var_A4
  loc_A0FC0B: PopAdLdVar
  loc_A0FC0C: LitVarI4
  loc_A0FC14: PopAdLdVar
  loc_A0FC15: ImpAdLdRf MemVar_D930A4
  loc_A0FC18: NewIfNullPr frmCalendario
  loc_A0FC1B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0FC20: ImpAdLdRf MemVar_D93028
  loc_A0FC23: CDargRef
  loc_A0FC27: FLdPr Me
  loc_A0FC2A: VCallAd Control_ID_FechInreDesdeMsk
  loc_A0FC2D: FStAdFunc var_A8
  loc_A0FC30: FLdPr var_A8
  loc_A0FC33: LateIdSt
  loc_A0FC38: FFree1Ad var_A8
  loc_A0FC3B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0FC40: ExitProcHresult
  loc_A0FC41: UMiCy
  loc_A0FC42: BranchFVar
End Sub

Private Sub HastaFechaCmd_Click() 'A0FFC4
  'Data Table: 47981C
  loc_A0FF88: LitVar_Missing var_A4
  loc_A0FF8B: PopAdLdVar
  loc_A0FF8C: LitVarI4
  loc_A0FF94: PopAdLdVar
  loc_A0FF95: ImpAdLdRf MemVar_D930A4
  loc_A0FF98: NewIfNullPr frmCalendario
  loc_A0FF9B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0FFA0: ImpAdLdRf MemVar_D93028
  loc_A0FFA3: CDargRef
  loc_A0FFA7: FLdPr Me
  loc_A0FFAA: VCallAd Control_ID_FechInreHastaMsk
  loc_A0FFAD: FStAdFunc var_A8
  loc_A0FFB0: FLdPr var_A8
  loc_A0FFB3: LateIdSt
  loc_A0FFB8: FFree1Ad var_A8
  loc_A0FFBB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0FFC0: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A41470
  'Data Table: 47981C
  loc_A4141C: LitI2_Byte 0
  loc_A4141E: ILdRf Me
  loc_A41421: CastAd
  loc_A41424: FStAdFunc var_88
  loc_A41427: FLdRfVar var_88
  loc_A4142A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A4142F: FFree1Ad var_88
  loc_A41432: FLdRfVar var_8A
  loc_A41435: FLdPr Me
  loc_A41438: VCallAd Control_ID_cmdPredeterminada
  loc_A4143B: FStAdFunc var_88
  loc_A4143E: FLdPr var_88
  loc_A41441:  = Me.Enabled
  loc_A41446: FLdI2 var_8A
  loc_A41449: NotI4
  loc_A4144A: FFree1Ad var_88
  loc_A4144D: BranchF loc_A41458
  loc_A41450: ImpAdCallFPR4 DoEvents()
  loc_A41455: Branch loc_A41432
  loc_A41458: ILdRf Me
  loc_A4145B: FStAdNoPop
  loc_A4145F: ImpAdLdRf MemVar_D9C5D8
  loc_A41462: NewIfNullPr Global
  loc_A41465: Global.Unload from_stack_1
  loc_A4146A: FFree1Ad var_88
  loc_A4146D: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E0D7C
  'Data Table: 47981C
  loc_9E0D60: LitI2_Byte 0
  loc_9E0D62: PopTmpLdAd2 var_8A
  loc_9E0D65: ILdRf Me
  loc_9E0D68: CastAd
  loc_9E0D6B: FStAdFunc var_88
  loc_9E0D6E: FLdRfVar var_88
  loc_9E0D71: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E0D76: FFree1Ad var_88
  loc_9E0D79: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E0AAC
  'Data Table: 47981C
  loc_9E0A90: LitI2_Byte &HFF
  loc_9E0A92: LitI2_Byte 0
  loc_9E0A94: ILdRf Me
  loc_9E0A97: CastAd
  loc_9E0A9A: FStAdFunc var_88
  loc_9E0A9D: FLdRfVar var_88
  loc_9E0AA0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E0AA5: FFree1Ad var_88
  loc_9E0AA8: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A7E380
  'Data Table: 47981C
  loc_A7E2F8: LitI2_Byte 0
  loc_A7E2FA: FLdPr Me
  loc_A7E2FD: MemStI2 bGenerado
  loc_A7E300: LitI2_Byte &HFF
  loc_A7E302: FLdPr Me
  loc_A7E305: MemStI2 bLogos
  loc_A7E308: LitI2_Byte 0
  loc_A7E30A: ILdRf Me
  loc_A7E30D: CastAd
  loc_A7E310: FStAdFunc var_88
  loc_A7E313: FLdRfVar var_88
  loc_A7E316: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A7E31B: FFree1Ad var_88
  loc_A7E31E: LitI2_Byte 0
  loc_A7E320: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A7E325: CStrDate
  loc_A7E327: CVarStr var_98
  loc_A7E32A: PopAdLdVar
  loc_A7E32B: FLdPr Me
  loc_A7E32E: VCallAd Control_ID_FechInreDesdeMsk
  loc_A7E331: FStAdFunc var_88
  loc_A7E334: FLdPr var_88
  loc_A7E337: LateIdSt
  loc_A7E33C: FFree1Ad var_88
  loc_A7E33F: FFree1Var var_98 = ""
  loc_A7E342: LitI2_Byte 0
  loc_A7E344: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A7E349: CStrDate
  loc_A7E34B: CVarStr var_98
  loc_A7E34E: PopAdLdVar
  loc_A7E34F: FLdPr Me
  loc_A7E352: VCallAd Control_ID_FechInreHastaMsk
  loc_A7E355: FStAdFunc var_88
  loc_A7E358: FLdPr var_88
  loc_A7E35B: LateIdSt
  loc_A7E360: FFree1Ad var_88
  loc_A7E363: FFree1Var var_98 = ""
  loc_A7E366: Call HabilitarCriterio()
  loc_A7E36B: ILdRf Me
  loc_A7E36E: CastAd
  loc_A7E371: FStAdFunc var_88
  loc_A7E374: FLdRfVar var_88
  loc_A7E377: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A7E37C: FFree1Ad var_88
  loc_A7E37F: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A15D00
  'Data Table: 47981C
  loc_A15CC8: FLdPr Me
  loc_A15CCB: VCallAd Control_ID_statusBar
  loc_A15CCE: FStAdFunc var_88
  loc_A15CD1: FLdPr var_88
  loc_A15CD4: LateIdLdVar var_98 DispID_1 0
  loc_A15CDB: CStrVarTmp
  loc_A15CDC: CVarStr var_A8
  loc_A15CDF: PopAdLdVar
  loc_A15CE0: FLdPr Me
  loc_A15CE3: VCallAd Control_ID_statusBar
  loc_A15CE6: FStAdFunc var_BC
  loc_A15CE9: FLdPr var_BC
  loc_A15CEC: LateIdSt
  loc_A15CF1: FFreeAd var_88 = ""
  loc_A15CF8: FFreeVar var_98 = ""
  loc_A15CFF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CB85C
  'Data Table: 47981C
  loc_9CB844: ILdRf Me
  loc_9CB847: CastAd
  loc_9CB84A: FStAdFunc var_88
  loc_9CB84D: FLdRfVar var_88
  loc_9CB850: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CB855: FFree1Ad var_88
  loc_9CB858: ExitProcHresult
End Sub

Private Sub Form_Load() '9E0B4C
  'Data Table: 47981C
  loc_9E0B30: ILdRf Me
  loc_9E0B33: CastAd
  loc_9E0B36: FStAdFunc var_88
  loc_9E0B39: FLdRfVar var_88
  loc_9E0B3C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E0B41: FFree1Ad var_88
  loc_9E0B44: Call cmdNueva_Click()
  loc_9E0B49: ExitProcHresult
  loc_9E0B4A: ExitProcI2
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CBA70
  'Data Table: 47981C
  loc_9CBA58: FLdPr Me
  loc_9CBA5B: VCallAd Control_ID_wbbReporte
  loc_9CBA5E: FStAdFunc var_88
  loc_9CBA61: FLdRfVar var_88
  loc_9CBA64: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CBA69: FFree1Ad var_88
  loc_9CBA6C: ExitProcHresult
End Sub

Private Sub FechInreDesdeMsk_UnknownEvent_0 '9C80D8
  'Data Table: 47981C
  loc_9C80C4: FLdPr Me
  loc_9C80C7: VCallAd Control_ID_FechInreDesdeMsk
  loc_9C80CA: CVarAd
  loc_9C80CE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C80D3: FFree1Var var_94 = ""
  loc_9C80D6: ExitProcHresult
End Sub

Private Sub FechInreDesdeMsk_UnknownEvent_8 'A66E68
  'Data Table: 47981C
  loc_A66E04: FLdPr Me
  loc_A66E07: VCallAd Control_ID_FechInreDesdeMsk
  loc_A66E0A: FStAdFunc var_88
  loc_A66E0D: FLdPr var_88
  loc_A66E10: LateIdLdVar var_98 DispID_15 0
  loc_A66E17: CStrVarTmp
  loc_A66E18: FStStrNoPop var_9C
  loc_A66E1B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A66E20: FStStrNoPop var_A0
  loc_A66E23: FLdPr Me
  loc_A66E26: MemStStrCopy
  loc_A66E2A: FFreeStr var_9C = ""
  loc_A66E31: FFree1Ad var_88
  loc_A66E34: FFree1Var var_98 = ""
  loc_A66E37: FLdPr Me
  loc_A66E3A: MemLdStr global_96
  loc_A66E3D: LitStr vbNullString
  loc_A66E40: NeStr
  loc_A66E42: BranchF loc_A66E67
  loc_A66E45: FLdPr Me
  loc_A66E48: MemLdStr global_96
  loc_A66E4B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A66E50: FLdPr Me
  loc_A66E53: VCallAd Control_ID_FechInreDesdeMsk
  loc_A66E56: CVarAd
  loc_A66E5A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A66E5F: FFree1Var var_98 = ""
  loc_A66E62: LitI2_Byte &HFF
  loc_A66E64: IStI2 Cancel
  loc_A66E67: ExitProcHresult
End Sub

Private Sub FechInreHastaMsk_UnknownEvent_0 '9C78F8
  'Data Table: 47981C
  loc_9C78E4: FLdPr Me
  loc_9C78E7: VCallAd Control_ID_FechInreHastaMsk
  loc_9C78EA: CVarAd
  loc_9C78EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C78F3: FFree1Var var_94 = ""
  loc_9C78F6: ExitProcHresult
End Sub

Private Sub FechInreHastaMsk_UnknownEvent_8 'A66DC4
  'Data Table: 47981C
  loc_A66D60: FLdPr Me
  loc_A66D63: VCallAd Control_ID_FechInreHastaMsk
  loc_A66D66: FStAdFunc var_88
  loc_A66D69: FLdPr var_88
  loc_A66D6C: LateIdLdVar var_98 DispID_15 0
  loc_A66D73: CStrVarTmp
  loc_A66D74: FStStrNoPop var_9C
  loc_A66D77: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A66D7C: FStStrNoPop var_A0
  loc_A66D7F: FLdPr Me
  loc_A66D82: MemStStrCopy
  loc_A66D86: FFreeStr var_9C = ""
  loc_A66D8D: FFree1Ad var_88
  loc_A66D90: FFree1Var var_98 = ""
  loc_A66D93: FLdPr Me
  loc_A66D96: MemLdStr global_96
  loc_A66D99: LitStr vbNullString
  loc_A66D9C: NeStr
  loc_A66D9E: BranchF loc_A66DC3
  loc_A66DA1: FLdPr Me
  loc_A66DA4: MemLdStr global_96
  loc_A66DA7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A66DAC: FLdPr Me
  loc_A66DAF: VCallAd Control_ID_FechInreHastaMsk
  loc_A66DB2: CVarAd
  loc_A66DB6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A66DBB: FFree1Var var_98 = ""
  loc_A66DBE: LitI2_Byte &HFF
  loc_A66DC0: IStI2 Cancel
  loc_A66DC3: ExitProcHresult
End Sub

Public Function bGeneradoGet() '47A4C4
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47A4D3
  bGenerado = Value
End Sub

Public Function bLogosGet() '47A4E2
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '47A4F1
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A74AF8
  'Data Table: 47981C
  loc_A74A94: LitI4 0
  loc_A74A99: LitI4 3
  loc_A74A9E: FLdRfVar var_88
  loc_A74AA1: Redim
  loc_A74AAB: FLdPr Me
  loc_A74AAE: VCallAd Control_ID_FechInreDesdeMsk
  loc_A74AB1: CVarAd
  loc_A74AB5: ParmAry1St
  loc_A74ABB: FLdPr Me
  loc_A74ABE: VCallAd Control_ID_DesdeFechaCmd
  loc_A74AC1: CVarAd
  loc_A74AC5: ParmAry1St
  loc_A74ACB: FLdPr Me
  loc_A74ACE: VCallAd Control_ID_FechInreHastaMsk
  loc_A74AD1: CVarAd
  loc_A74AD5: ParmAry1St
  loc_A74ADB: FLdPr Me
  loc_A74ADE: VCallAd Control_ID_HastaFechaCmd
  loc_A74AE1: CVarAd
  loc_A74AE5: ParmAry1St
  loc_A74AEB: FLdRfVar var_88
  loc_A74AEE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A74AF3: FLdRfVar var_88
  loc_A74AF6: Erase
  loc_A74AF7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B731F0
  'Data Table: 47981C
  loc_B72D60: FLdPr Me
  loc_B72D63: MemLdI2 bGenerado
  loc_B72D66: BranchF loc_B72D6A
  loc_B72D69: ExitProcHresult
  loc_B72D6A: LitVarStr var_98, "Generando reporte..."
  loc_B72D6F: PopAdLdVar
  loc_B72D70: FLdPr Me
  loc_B72D73: VCallAd Control_ID_statusBar
  loc_B72D76: FStAdFunc var_AC
  loc_B72D79: FLdPr var_AC
  loc_B72D7C: LateIdSt
  loc_B72D81: FFree1Ad var_AC
  loc_B72D84: LitI4 &HB
  loc_B72D89: CI2I4
  loc_B72D8A: FLdPr Me
  loc_B72D8D: Me.MousePointer = from_stack_1
  loc_B72D92: FLdPr Me
  loc_B72D95: MemLdRfVar from_stack_1.global_76
  loc_B72D98: NewIfNullAd
  loc_B72D9B: FStAd var_B0 
  loc_B72D9F: FLdPr Me
  loc_B72DA2: VCallAd Control_ID_FechInreDesdeMsk
  loc_B72DA5: FStAdFunc var_AC
  loc_B72DA8: FLdPr var_AC
  loc_B72DAB: LateIdLdVar var_C0 DispID_15 0
  loc_B72DB2: PopAd
  loc_B72DB4: FLdPr Me
  loc_B72DB7: VCallAd Control_ID_FechInreHastaMsk
  loc_B72DBA: FStAdFunc var_EC
  loc_B72DBD: FLdPr var_EC
  loc_B72DC0: LateIdLdVar var_FC DispID_15 0
  loc_B72DC7: PopAd
  loc_B72DC9: LitStr "SELECT FechInre, if(ActuInre='No','No','Sí') as ActuInre FROM ingrrent WHERE FechInre BETWEEN '"
  loc_B72DCC: LitI4 1
  loc_B72DD1: LitI4 1
  loc_B72DD6: LitVarStr var_98, "yyyy-mm-dd"
  loc_B72DDB: FStVarCopyObj var_E0
  loc_B72DDE: FLdRfVar var_E0
  loc_B72DE1: FLdRfVar var_C0
  loc_B72DE4: CStrVarTmp
  loc_B72DE5: CVarStr var_D0
  loc_B72DE8: ImpAdCallI2 Format$(, )
  loc_B72DED: FStStrNoPop var_E4
  loc_B72DF0: ConcatStr
  loc_B72DF1: FStStrNoPop var_E8
  loc_B72DF4: LitStr "' AND '"
  loc_B72DF7: ConcatStr
  loc_B72DF8: FStStrNoPop var_120
  loc_B72DFB: LitI4 1
  loc_B72E00: LitI4 1
  loc_B72E05: LitVarStr var_A8, "yyyy-mm-dd"
  loc_B72E0A: FStVarCopyObj var_11C
  loc_B72E0D: FLdRfVar var_11C
  loc_B72E10: FLdRfVar var_FC
  loc_B72E13: CStrVarTmp
  loc_B72E14: CVarStr var_10C
  loc_B72E17: ImpAdCallI2 Format$(, )
  loc_B72E1C: FStStrNoPop var_124
  loc_B72E1F: ConcatStr
  loc_B72E20: FStStrNoPop var_128
  loc_B72E23: LitStr "' GROUP BY FechInre"
  loc_B72E26: ConcatStr
  loc_B72E27: FStStrNoPop var_12C
  loc_B72E2A: FLdPr var_B0
  loc_B72E2D: Call clsingrrent.RedefineRS(from_stack_1v)
  loc_B72E32: FFreeStr var_E4 = "": var_E8 = "": var_120 = "": var_124 = "": var_128 = ""
  loc_B72E41: FFreeAd var_AC = ""
  loc_B72E48: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_FC = "": var_10C = ""
  loc_B72E57: FLdRfVar var_130
  loc_B72E5A: FLdPr var_B0
  loc_B72E5D: from_stack_1 = clsingrrent.RecordCount
  loc_B72E62: ILdRf var_130
  loc_B72E65: LitI4 0
  loc_B72E6A: EqI4
  loc_B72E6B: BranchF loc_B72E79
  loc_B72E6E: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B72E71: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B72E76: Branch loc_B731C7
  loc_B72E79: LitI2_Byte 0
  loc_B72E7B: CStrUI1
  loc_B72E7D: FStStrNoPop var_E4
  loc_B72E80: FLdPr Me
  loc_B72E83: MemStStrCopy
  loc_B72E87: FFree1Str var_E4
  loc_B72E8A: LitI4 1
  loc_B72E8F: FLdRfVar var_130
  loc_B72E92: FLdPr var_B0
  loc_B72E95: from_stack_1 = clsingrrent.RecordCount
  loc_B72E9A: ILdRf var_130
  loc_B72E9D: FLdPr Me
  loc_B72EA0: MemLdRfVar from_stack_1.global_84
  loc_B72EA3: Redim
  loc_B72EAD: FLdPr var_B0
  loc_B72EB0: Call clsingrrent.MoveFirst()
  loc_B72EB5: LitI2_Byte 1
  loc_B72EB7: FLdPr Me
  loc_B72EBA: MemLdRfVar from_stack_1.global_88
  loc_B72EBD: FLdPr Me
  loc_B72EC0: MemLdStr global_84
  loc_B72EC3: LitI2_Byte 1
  loc_B72EC5: FnUBound
  loc_B72EC7: CI2I4
  loc_B72EC8: ForI2 var_134
  loc_B72ECE: FLdRfVar var_E4
  loc_B72ED1: FLdPr var_B0
  loc_B72ED4: from_stack_1 = clsingrrent.FechInre
  loc_B72ED9: LitI2_Byte 0
  loc_B72EDB: LitVar_Missing var_D0
  loc_B72EDE: LitI2_Byte 0
  loc_B72EE0: FLdZeroAd var_E4
  loc_B72EE3: CVarStr var_C0
  loc_B72EE6: PopAdLdVar
  loc_B72EE7: FLdPr Me
  loc_B72EEA: MemLdI2 global_88
  loc_B72EED: CI4UI1
  loc_B72EEE: FLdPr Me
  loc_B72EF1: MemLdStr global_84
  loc_B72EF4: AryLock
  loc_B72EF7: Ary1LdPr
  loc_B72EF8: MemLdRfVar from_stack_1.global_0
  loc_B72EFB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B72F00: AryUnlock
  loc_B72F03: FFreeVar var_C0 = ""
  loc_B72F0A: FLdRfVar var_E4
  loc_B72F0D: FLdPr var_B0
  loc_B72F10: from_stack_1 = clsingrrent.ActuInre
  loc_B72F15: LitI2_Byte 0
  loc_B72F17: LitVar_Missing var_D0
  loc_B72F1A: LitI2_Byte 0
  loc_B72F1C: FLdZeroAd var_E4
  loc_B72F1F: CVarStr var_C0
  loc_B72F22: PopAdLdVar
  loc_B72F23: FLdPr Me
  loc_B72F26: MemLdI2 global_88
  loc_B72F29: CI4UI1
  loc_B72F2A: FLdPr Me
  loc_B72F2D: MemLdStr global_84
  loc_B72F30: AryLock
  loc_B72F33: Ary1LdPr
  loc_B72F34: MemLdRfVar from_stack_1.global_4
  loc_B72F37: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B72F3C: AryUnlock
  loc_B72F3F: FFreeVar var_C0 = ""
  loc_B72F46: FLdPr Me
  loc_B72F49: MemLdRfVar from_stack_1.global_80
  loc_B72F4C: NewIfNullAd
  loc_B72F4F: FStAd var_13C 
  loc_B72F53: LitStr "SELECT detainre.CodiCuco, DetaCuco, sum(TotaDeir) as TotaDeir FROM detainre"
  loc_B72F56: LitStr " LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = year(FechInre) AND c.CodiCuco = detainre.CodiCuco"
  loc_B72F59: ConcatStr
  loc_B72F5A: FStStrNoPop var_E4
  loc_B72F5D: LitStr " WHERE FechInre = '"
  loc_B72F60: ConcatStr
  loc_B72F61: FStStrNoPop var_120
  loc_B72F64: LitI4 1
  loc_B72F69: LitI4 1
  loc_B72F6E: LitVarStr var_A8, "yyyy-mm-dd"
  loc_B72F73: FStVarCopyObj var_C0
  loc_B72F76: FLdRfVar var_C0
  loc_B72F79: FLdPr Me
  loc_B72F7C: MemLdI2 global_88
  loc_B72F7F: CI4UI1
  loc_B72F80: FLdPr Me
  loc_B72F83: MemLdStr global_84
  loc_B72F86: AryLock
  loc_B72F89: Ary1LdPr
  loc_B72F8A: MemLdRfVar from_stack_1.global_0
  loc_B72F8D: CVarRef
  loc_B72F92: ImpAdCallI2 Format$(, )
  loc_B72F97: FStStr var_E8
  loc_B72F9A: AryUnlock
  loc_B72F9D: ILdRf var_E8
  loc_B72FA0: ConcatStr
  loc_B72FA1: FStStrNoPop var_124
  loc_B72FA4: LitStr "'"
  loc_B72FA7: ConcatStr
  loc_B72FA8: FStStrNoPop var_128
  loc_B72FAB: LitStr " GROUP BY detainre.CodiCuco ORDER BY CodiCuco"
  loc_B72FAE: ConcatStr
  loc_B72FAF: FStStrNoPop var_12C
  loc_B72FB2: FLdPr var_13C
  loc_B72FB5: Call clsdetainre.RedefineRS(from_stack_1v)
  loc_B72FBA: FFreeStr var_E4 = "": var_120 = "": var_E8 = "": var_124 = "": var_128 = ""
  loc_B72FC9: FFree1Var var_C0 = ""
  loc_B72FCC: FLdRfVar var_130
  loc_B72FCF: FLdPr var_13C
  loc_B72FD2: from_stack_1 = clsdetainre.RecordCount
  loc_B72FD7: ILdRf var_130
  loc_B72FDA: LitI4 0
  loc_B72FDF: EqI4
  loc_B72FE0: BranchF loc_B73006
  loc_B72FE3: LitStr "No hay detalle para la fecha "
  loc_B72FE6: FLdPr Me
  loc_B72FE9: MemLdI2 global_88
  loc_B72FEC: CI4UI1
  loc_B72FED: FLdPr Me
  loc_B72FF0: MemLdStr global_84
  loc_B72FF3: Ary1LdPr
  loc_B72FF4: MemLdStr global_0
  loc_B72FF7: ConcatStr
  loc_B72FF8: FStStrNoPop var_E4
  loc_B72FFB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B73000: FFree1Str var_E4
  loc_B73003: Branch loc_B731C7
  loc_B73006: FLdRfVar var_130
  loc_B73009: FLdPr var_13C
  loc_B7300C: from_stack_1 = clsdetainre.RecordCount
  loc_B73011: LitI4 1
  loc_B73016: ILdRf var_130
  loc_B73019: FLdPr Me
  loc_B7301C: MemLdI2 global_88
  loc_B7301F: CI4UI1
  loc_B73020: FLdPr Me
  loc_B73023: MemLdStr global_84
  loc_B73026: Ary1LdPr
  loc_B73027: MemLdRfVar from_stack_1.global_8
  loc_B7302A: Redim
  loc_B73034: FLdPr var_13C
  loc_B73037: Call clsdetainre.MoveFirst()
  loc_B7303C: LitI2_Byte 1
  loc_B7303E: FLdPr Me
  loc_B73041: MemLdRfVar from_stack_1.global_90
  loc_B73044: FLdPr Me
  loc_B73047: MemLdI2 global_88
  loc_B7304A: CI4UI1
  loc_B7304B: FLdPr Me
  loc_B7304E: MemLdStr global_84
  loc_B73051: Ary1LdPr
  loc_B73052: MemLdStr global_8
  loc_B73055: LitI2_Byte 1
  loc_B73057: FnUBound
  loc_B73059: CI2I4
  loc_B7305A: ForI2 var_140
  loc_B73060: FLdRfVar var_E4
  loc_B73063: FLdPr var_13C
  loc_B73066: from_stack_1 = clsdetainre.CodiCuco
  loc_B7306B: LitI2_Byte 0
  loc_B7306D: LitVar_Missing var_D0
  loc_B73070: LitI2_Byte 0
  loc_B73072: FLdZeroAd var_E4
  loc_B73075: CVarStr var_C0
  loc_B73078: PopAdLdVar
  loc_B73079: FLdPr Me
  loc_B7307C: MemLdI2 global_90
  loc_B7307F: CI4UI1
  loc_B73080: FLdPr Me
  loc_B73083: MemLdI2 global_88
  loc_B73086: CI4UI1
  loc_B73087: FLdPr Me
  loc_B7308A: MemLdStr global_84
  loc_B7308D: AryLock
  loc_B73090: Ary1LdPr
  loc_B73091: MemLdStr global_8
  loc_B73094: AryLock
  loc_B73097: Ary1LdPr
  loc_B73098: MemLdRfVar from_stack_1.global_0
  loc_B7309B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B730A0: AryUnlock
  loc_B730A3: AryUnlock
  loc_B730A6: FFreeVar var_C0 = ""
  loc_B730AD: FLdRfVar var_C0
  loc_B730B0: FLdPr var_13C
  loc_B730B3: from_stack_1 = clsdetainre.DetaCuco
  loc_B730B8: LitI2_Byte 0
  loc_B730BA: LitVar_Missing var_D0
  loc_B730BD: LitI2_Byte 0
  loc_B730BF: FLdVar var_C0
  loc_B730C3: FLdPr Me
  loc_B730C6: MemLdI2 global_90
  loc_B730C9: CI4UI1
  loc_B730CA: FLdPr Me
  loc_B730CD: MemLdI2 global_88
  loc_B730D0: CI4UI1
  loc_B730D1: FLdPr Me
  loc_B730D4: MemLdStr global_84
  loc_B730D7: AryLock
  loc_B730DA: Ary1LdPr
  loc_B730DB: MemLdStr global_8
  loc_B730DE: AryLock
  loc_B730E1: Ary1LdPr
  loc_B730E2: MemLdRfVar from_stack_1.global_4
  loc_B730E5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B730EA: AryUnlock
  loc_B730ED: AryUnlock
  loc_B730F0: FFreeVar var_C0 = ""
  loc_B730F7: FLdRfVar var_14C
  loc_B730FA: FLdPr var_13C
  loc_B730FD: from_stack_1 = clsdetainre.TotaDeir
  loc_B73102: LitI2_Byte 0
  loc_B73104: FLdPr Me
  loc_B73107: MemLdI2 global_88
  loc_B7310A: CI4UI1
  loc_B7310B: FLdPr Me
  loc_B7310E: MemLdStr global_84
  loc_B73111: AryLock
  loc_B73114: Ary1LdPr
  loc_B73115: MemLdRfVar from_stack_1.global_12
  loc_B73118: CVarRef
  loc_B7311D: LitI2_Byte &HFF
  loc_B7311F: FLdFPR8 var_14C
  loc_B73122: CVarR8
  loc_B73126: PopAdLdVar
  loc_B73127: FLdPr Me
  loc_B7312A: MemLdI2 global_90
  loc_B7312D: CI4UI1
  loc_B7312E: FLdPr Me
  loc_B73131: MemLdI2 global_88
  loc_B73134: CI4UI1
  loc_B73135: FLdPr Me
  loc_B73138: MemLdStr global_84
  loc_B7313B: AryLock
  loc_B7313E: Ary1LdPr
  loc_B7313F: MemLdStr global_8
  loc_B73142: AryLock
  loc_B73145: Ary1LdPr
  loc_B73146: MemLdRfVar from_stack_1.global_8
  loc_B73149: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7314E: AryUnlock
  loc_B73151: AryUnlock
  loc_B73154: AryUnlock
  loc_B73157: LitI2_Byte 1
  loc_B73159: PopTmpLdAd2 var_152
  loc_B7315C: FLdPr var_13C
  loc_B7315F: Call clsdetainre.Move(from_stack_1v)
  loc_B73164: FLdPr Me
  loc_B73167: MemLdRfVar from_stack_1.global_90
  loc_B7316A: NextI2 var_140, loc_B73060
  loc_B7316F: LitNothing
  loc_B73171: FStAd var_13C 
  loc_B73175: LitI2_Byte 1
  loc_B73177: PopTmpLdAd2 var_152
  loc_B7317A: FLdPr var_B0
  loc_B7317D: Call clsingrrent.Move(from_stack_1v)
  loc_B73182: LitI2_Byte 0
  loc_B73184: FLdPr Me
  loc_B73187: MemLdRfVar from_stack_1.global_92
  loc_B7318A: CVarRef
  loc_B7318F: LitI2_Byte &HFF
  loc_B73191: FLdPr Me
  loc_B73194: MemLdI2 global_88
  loc_B73197: CI4UI1
  loc_B73198: FLdPr Me
  loc_B7319B: MemLdStr global_84
  loc_B7319E: Ary1LdPr
  loc_B7319F: MemLdStr global_12
  loc_B731A2: CVarStr var_98
  loc_B731A5: PopAdLdVar
  loc_B731A6: FLdRfVar var_88
  loc_B731A9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B731AE: FLdPr Me
  loc_B731B1: MemLdRfVar from_stack_1.global_88
  loc_B731B4: NextI2 var_134, loc_B72ECE
  loc_B731B9: LitNothing
  loc_B731BB: FStAd var_B0 
  loc_B731BF: LitI2_Byte &HFF
  loc_B731C1: FLdPr Me
  loc_B731C4: MemStI2 bGenerado
  loc_B731C7: LitI4 0
  loc_B731CC: CI2I4
  loc_B731CD: FLdPr Me
  loc_B731D0: Me.MousePointer = from_stack_1
  loc_B731D5: LitVarStr var_98, vbNullString
  loc_B731DA: PopAdLdVar
  loc_B731DB: FLdPr Me
  loc_B731DE: VCallAd Control_ID_statusBar
  loc_B731E1: FStAdFunc var_AC
  loc_B731E4: FLdPr var_AC
  loc_B731E7: LateIdSt
  loc_B731EC: FFree1Ad var_AC
  loc_B731EF: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B384FC
  'Data Table: 47981C
  loc_B381F8: FLdRfVar var_88
  loc_B381FB: LitI2_Byte 0
  loc_B381FD: LitI2_Byte &HFF
  loc_B381FF: ImpAdLdI4 MemVar_D93C84
  loc_B38202: FLdPr Me
  loc_B38205: MemLdRfVar from_stack_1.global_56
  loc_B38208: NewIfNullPr IFileSystem3
  loc_B3820B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B38210: ILdRf var_88
  loc_B38213: FLdPr Me
  loc_B38216: MemStVarAd
  loc_B3821A: FFree1Ad var_88
  loc_B3821D: LitI2_Byte &HFF
  loc_B3821F: ImpAdStI2 MemVar_D93C8A
  loc_B38222: Call Proc_87_23_BAE8AC()
  loc_B38227: LitI2_Byte 1
  loc_B38229: FLdPr Me
  loc_B3822C: MemLdRfVar from_stack_1.global_88
  loc_B3822F: FLdPr Me
  loc_B38232: MemLdStr global_84
  loc_B38235: LitI2_Byte 1
  loc_B38237: FnUBound
  loc_B38239: CI2I4
  loc_B3823A: ForI2 var_8C
  loc_B38240: FLdPr Me
  loc_B38243: MemLdI2 global_88
  loc_B38246: CI4UI1
  loc_B38247: FLdPr Me
  loc_B3824A: MemLdStr global_84
  loc_B3824D: AryLock
  loc_B38250: Ary1LdRf
  loc_B38251: FStR4 var_94
  loc_B38254: LitVarStr var_A4, "  <tr valign=""top"" class=""Encabezado"">"
  loc_B38259: PopAdLdVar
  loc_B3825A: FLdPr Me
  loc_B3825D: MemLdRfVar from_stack_1.global_60
  loc_B38260: LdPrVar
  loc_B38262: LateMemCall
  loc_B38268: LitStr "   <td colspan=""2"">Fecha: "
  loc_B3826B: FMemLdR4 var_94(0)
  loc_B38270: ConcatStr
  loc_B38271: FStStrNoPop var_B8
  loc_B38274: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Actualizado: "
  loc_B38277: ConcatStr
  loc_B38278: FStStrNoPop var_BC
  loc_B3827B: FMemLdR4 var_94(4)
  loc_B38280: ConcatStr
  loc_B38281: FStStrNoPop var_C0
  loc_B38284: LitStr "</td>"
  loc_B38287: ConcatStr
  loc_B38288: CVarStr var_D0
  loc_B3828B: PopAdLdVar
  loc_B3828C: FLdPr Me
  loc_B3828F: MemLdRfVar from_stack_1.global_60
  loc_B38292: LdPrVar
  loc_B38294: LateMemCall
  loc_B3829A: FFreeStr var_B8 = "": var_BC = ""
  loc_B382A3: FFree1Var var_D0 = ""
  loc_B382A6: LitVarStr var_A4, "  </tr>"
  loc_B382AB: PopAdLdVar
  loc_B382AC: FLdPr Me
  loc_B382AF: MemLdRfVar from_stack_1.global_60
  loc_B382B2: LdPrVar
  loc_B382B4: LateMemCall
  loc_B382BA: LitI2_Byte 1
  loc_B382BC: FLdPr Me
  loc_B382BF: MemLdRfVar from_stack_1.global_90
  loc_B382C2: FMemLdR4 var_94(8)
  loc_B382C7: LitI2_Byte 1
  loc_B382C9: FnUBound
  loc_B382CB: CI2I4
  loc_B382CC: ForI2 var_D4
  loc_B382D2: FLdPr Me
  loc_B382D5: MemLdI2 global_90
  loc_B382D8: CI4UI1
  loc_B382D9: FMemLdR4 var_94(8)
  loc_B382DE: AryLock
  loc_B382E1: Ary1LdRf
  loc_B382E2: FStR4 var_DC
  loc_B382E5: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B382EA: PopAdLdVar
  loc_B382EB: FLdPr Me
  loc_B382EE: MemLdRfVar from_stack_1.global_60
  loc_B382F1: LdPrVar
  loc_B382F3: LateMemCall
  loc_B382F9: LitStr vbNullString
  loc_B382FC: LitI2_Byte 0
  loc_B382FE: LitI2_Byte 0
  loc_B38300: LitI2_Byte 0
  loc_B38302: LitStr "left"
  loc_B38305: FMemLdR4 var_DC(0)
  loc_B3830A: LitStr " - "
  loc_B3830D: ConcatStr
  loc_B3830E: FStStrNoPop var_B8
  loc_B38311: FMemLdR4 var_DC(4)
  loc_B38316: ConcatStr
  loc_B38317: FStStrNoPop var_BC
  loc_B3831A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3831F: CVarStr var_D0
  loc_B38322: PopAdLdVar
  loc_B38323: FLdPr Me
  loc_B38326: MemLdRfVar from_stack_1.global_60
  loc_B38329: LdPrVar
  loc_B3832B: LateMemCall
  loc_B38331: FFreeStr var_B8 = ""
  loc_B38338: FFree1Var var_D0 = ""
  loc_B3833B: LitStr vbNullString
  loc_B3833E: LitI2_Byte 0
  loc_B38340: LitI2_Byte 0
  loc_B38342: LitI2_Byte 0
  loc_B38344: LitStr "right"
  loc_B38347: FMemLdR4 var_DC(8)
  loc_B3834C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38351: CVarStr var_D0
  loc_B38354: PopAdLdVar
  loc_B38355: FLdPr Me
  loc_B38358: MemLdRfVar from_stack_1.global_60
  loc_B3835B: LdPrVar
  loc_B3835D: LateMemCall
  loc_B38363: FFree1Var var_D0 = ""
  loc_B38366: LitVarStr var_A4, "     </tr>"
  loc_B3836B: PopAdLdVar
  loc_B3836C: FLdPr Me
  loc_B3836F: MemLdRfVar from_stack_1.global_60
  loc_B38372: LdPrVar
  loc_B38374: LateMemCall
  loc_B3837A: LitI4 0
  loc_B3837F: FStR4 var_DC
  loc_B38382: AryUnlock
  loc_B38385: FLdPr Me
  loc_B38388: MemLdRfVar from_stack_1.global_90
  loc_B3838B: NextI2 var_D4, loc_B382D2
  loc_B38390: FLdPr Me
  loc_B38393: MemLdStr global_84
  loc_B38396: LitI2_Byte 1
  loc_B38398: FnUBound
  loc_B3839A: LitI4 1
  loc_B3839F: GtI4
  loc_B383A0: BranchF loc_B38442
  loc_B383A3: LitVarStr var_A4, "  <tr valign=""top"" class=""Subtotales"">"
  loc_B383A8: PopAdLdVar
  loc_B383A9: FLdPr Me
  loc_B383AC: MemLdRfVar from_stack_1.global_60
  loc_B383AF: LdPrVar
  loc_B383B1: LateMemCall
  loc_B383B7: LitStr vbNullString
  loc_B383BA: LitI2_Byte 0
  loc_B383BC: LitI2_Byte 0
  loc_B383BE: LitI2_Byte 0
  loc_B383C0: LitStr "right"
  loc_B383C3: LitStr "Subtotal "
  loc_B383C6: FLdPr Me
  loc_B383C9: MemLdI2 global_88
  loc_B383CC: CI4UI1
  loc_B383CD: FLdPr Me
  loc_B383D0: MemLdStr global_84
  loc_B383D3: Ary1LdPr
  loc_B383D4: MemLdStr global_0
  loc_B383D7: ConcatStr
  loc_B383D8: FStStrNoPop var_B8
  loc_B383DB: LitStr "&nbsp;"
  loc_B383DE: ConcatStr
  loc_B383DF: FStStrNoPop var_BC
  loc_B383E2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B383E7: CVarStr var_D0
  loc_B383EA: PopAdLdVar
  loc_B383EB: FLdPr Me
  loc_B383EE: MemLdRfVar from_stack_1.global_60
  loc_B383F1: LdPrVar
  loc_B383F3: LateMemCall
  loc_B383F9: FFreeStr var_B8 = ""
  loc_B38400: FFree1Var var_D0 = ""
  loc_B38403: LitStr vbNullString
  loc_B38406: LitI2_Byte 0
  loc_B38408: LitI2_Byte 0
  loc_B3840A: LitI2_Byte 0
  loc_B3840C: LitStr "right"
  loc_B3840F: FMemLdR4 var_94(12)
  loc_B38414: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38419: CVarStr var_D0
  loc_B3841C: PopAdLdVar
  loc_B3841D: FLdPr Me
  loc_B38420: MemLdRfVar from_stack_1.global_60
  loc_B38423: LdPrVar
  loc_B38425: LateMemCall
  loc_B3842B: FFree1Var var_D0 = ""
  loc_B3842E: LitVarStr var_A4, "  </tr>"
  loc_B38433: PopAdLdVar
  loc_B38434: FLdPr Me
  loc_B38437: MemLdRfVar from_stack_1.global_60
  loc_B3843A: LdPrVar
  loc_B3843C: LateMemCall
  loc_B38442: LitI4 0
  loc_B38447: FStR4 var_94
  loc_B3844A: AryUnlock
  loc_B3844D: FLdPr Me
  loc_B38450: MemLdRfVar from_stack_1.global_88
  loc_B38453: NextI2 var_8C, loc_B38240
  loc_B38458: LitVarStr var_A4, "  <tr valign=""top"" class=""Totales"">"
  loc_B3845D: PopAdLdVar
  loc_B3845E: FLdPr Me
  loc_B38461: MemLdRfVar from_stack_1.global_60
  loc_B38464: LdPrVar
  loc_B38466: LateMemCall
  loc_B3846C: LitStr vbNullString
  loc_B3846F: LitI2_Byte 0
  loc_B38471: LitI2_Byte 0
  loc_B38473: LitI2_Byte 0
  loc_B38475: LitStr "right"
  loc_B38478: LitStr "TOTAL"
  loc_B3847B: LitStr "&nbsp;"
  loc_B3847E: ConcatStr
  loc_B3847F: FStStrNoPop var_B8
  loc_B38482: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38487: CVarStr var_D0
  loc_B3848A: PopAdLdVar
  loc_B3848B: FLdPr Me
  loc_B3848E: MemLdRfVar from_stack_1.global_60
  loc_B38491: LdPrVar
  loc_B38493: LateMemCall
  loc_B38499: FFree1Str var_B8
  loc_B3849C: FFree1Var var_D0 = ""
  loc_B3849F: LitStr vbNullString
  loc_B384A2: LitI2_Byte 0
  loc_B384A4: LitI2_Byte 0
  loc_B384A6: LitI2_Byte 0
  loc_B384A8: LitStr "right"
  loc_B384AB: FLdPr Me
  loc_B384AE: MemLdStr global_92
  loc_B384B1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B384B6: CVarStr var_D0
  loc_B384B9: PopAdLdVar
  loc_B384BA: FLdPr Me
  loc_B384BD: MemLdRfVar from_stack_1.global_60
  loc_B384C0: LdPrVar
  loc_B384C2: LateMemCall
  loc_B384C8: FFree1Var var_D0 = ""
  loc_B384CB: LitVarStr var_A4, "  </tr>"
  loc_B384D0: PopAdLdVar
  loc_B384D1: FLdPr Me
  loc_B384D4: MemLdRfVar from_stack_1.global_60
  loc_B384D7: LdPrVar
  loc_B384D9: LateMemCall
  loc_B384DF: Call Proc_87_24_A0F7E8()
  loc_B384E4: FLdPr Me
  loc_B384E7: MemLdRfVar from_stack_1.global_60
  loc_B384EA: LdPrVar
  loc_B384EC: LateMemCall
  loc_B384F2: LitStr vbNullString
  loc_B384F5: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B384FA: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C5BBC
  'Data Table: 47981C
  loc_9C5BA4: LitI2_Byte 0
  loc_9C5BA6: FLdPr Me
  loc_9C5BA9: MemStI2 bLogos
  loc_9C5BAC: Call GeneraHTML()
  loc_9C5BB1: LitI2_Byte &HFF
  loc_9C5BB3: FLdPr Me
  loc_9C5BB6: MemStI2 bLogos
  loc_9C5BB9: ExitProcHresult
  loc_9C5BBA: MemLdRfVar from_stack_1.global_-23488
End Sub

Private Function Proc_87_23_BAE8AC() 'BAE8AC
  'Data Table: 47981C
  loc_BAE248: LitVarStr var_98, "<html>"
  loc_BAE24D: PopAdLdVar
  loc_BAE24E: FLdPr Me
  loc_BAE251: MemLdRfVar from_stack_1.global_60
  loc_BAE254: LdPrVar
  loc_BAE256: LateMemCall
  loc_BAE25C: LitVarStr var_98, "<head>"
  loc_BAE261: PopAdLdVar
  loc_BAE262: FLdPr Me
  loc_BAE265: MemLdRfVar from_stack_1.global_60
  loc_BAE268: LdPrVar
  loc_BAE26A: LateMemCall
  loc_BAE270: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BAE275: PopAdLdVar
  loc_BAE276: FLdPr Me
  loc_BAE279: MemLdRfVar from_stack_1.global_60
  loc_BAE27C: LdPrVar
  loc_BAE27E: LateMemCall
  loc_BAE284: LitStr "<title>"
  loc_BAE287: FLdRfVar var_AC
  loc_BAE28A: FLdPr Me
  loc_BAE28D:  = Me.Caption
  loc_BAE292: ILdRf var_AC
  loc_BAE295: ConcatStr
  loc_BAE296: FStStrNoPop var_B0
  loc_BAE299: LitStr "</title>"
  loc_BAE29C: ConcatStr
  loc_BAE29D: CVarStr var_C0
  loc_BAE2A0: PopAdLdVar
  loc_BAE2A1: FLdPr Me
  loc_BAE2A4: MemLdRfVar from_stack_1.global_60
  loc_BAE2A7: LdPrVar
  loc_BAE2A9: LateMemCall
  loc_BAE2AF: FFreeStr var_AC = ""
  loc_BAE2B6: FFree1Var var_C0 = ""
  loc_BAE2B9: LitVarStr var_98, "<style type=""text/css"">"
  loc_BAE2BE: PopAdLdVar
  loc_BAE2BF: FLdPr Me
  loc_BAE2C2: MemLdRfVar from_stack_1.global_60
  loc_BAE2C5: LdPrVar
  loc_BAE2C7: LateMemCall
  loc_BAE2CD: LitVarStr var_98, ".Titulo1 {"
  loc_BAE2D2: PopAdLdVar
  loc_BAE2D3: FLdPr Me
  loc_BAE2D6: MemLdRfVar from_stack_1.global_60
  loc_BAE2D9: LdPrVar
  loc_BAE2DB: LateMemCall
  loc_BAE2E1: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BAE2E6: PopAdLdVar
  loc_BAE2E7: FLdPr Me
  loc_BAE2EA: MemLdRfVar from_stack_1.global_60
  loc_BAE2ED: LdPrVar
  loc_BAE2EF: LateMemCall
  loc_BAE2F5: LitVarStr var_98, " font-size: 18px;"
  loc_BAE2FA: PopAdLdVar
  loc_BAE2FB: FLdPr Me
  loc_BAE2FE: MemLdRfVar from_stack_1.global_60
  loc_BAE301: LdPrVar
  loc_BAE303: LateMemCall
  loc_BAE309: LitVarStr var_98, " font-weight: bold;"
  loc_BAE30E: PopAdLdVar
  loc_BAE30F: FLdPr Me
  loc_BAE312: MemLdRfVar from_stack_1.global_60
  loc_BAE315: LdPrVar
  loc_BAE317: LateMemCall
  loc_BAE31D: LitVarStr var_98, "}"
  loc_BAE322: PopAdLdVar
  loc_BAE323: FLdPr Me
  loc_BAE326: MemLdRfVar from_stack_1.global_60
  loc_BAE329: LdPrVar
  loc_BAE32B: LateMemCall
  loc_BAE331: LitVarStr var_98, ".Titulo2 {"
  loc_BAE336: PopAdLdVar
  loc_BAE337: FLdPr Me
  loc_BAE33A: MemLdRfVar from_stack_1.global_60
  loc_BAE33D: LdPrVar
  loc_BAE33F: LateMemCall
  loc_BAE345: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BAE34A: PopAdLdVar
  loc_BAE34B: FLdPr Me
  loc_BAE34E: MemLdRfVar from_stack_1.global_60
  loc_BAE351: LdPrVar
  loc_BAE353: LateMemCall
  loc_BAE359: LitVarStr var_98, " font-size: 14px;"
  loc_BAE35E: PopAdLdVar
  loc_BAE35F: FLdPr Me
  loc_BAE362: MemLdRfVar from_stack_1.global_60
  loc_BAE365: LdPrVar
  loc_BAE367: LateMemCall
  loc_BAE36D: LitVarStr var_98, " font-weight: bold;"
  loc_BAE372: PopAdLdVar
  loc_BAE373: FLdPr Me
  loc_BAE376: MemLdRfVar from_stack_1.global_60
  loc_BAE379: LdPrVar
  loc_BAE37B: LateMemCall
  loc_BAE381: LitVarStr var_98, "}"
  loc_BAE386: PopAdLdVar
  loc_BAE387: FLdPr Me
  loc_BAE38A: MemLdRfVar from_stack_1.global_60
  loc_BAE38D: LdPrVar
  loc_BAE38F: LateMemCall
  loc_BAE395: LitVarStr var_98, ".Normal {"
  loc_BAE39A: PopAdLdVar
  loc_BAE39B: FLdPr Me
  loc_BAE39E: MemLdRfVar from_stack_1.global_60
  loc_BAE3A1: LdPrVar
  loc_BAE3A3: LateMemCall
  loc_BAE3A9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BAE3AE: PopAdLdVar
  loc_BAE3AF: FLdPr Me
  loc_BAE3B2: MemLdRfVar from_stack_1.global_60
  loc_BAE3B5: LdPrVar
  loc_BAE3B7: LateMemCall
  loc_BAE3BD: LitVarStr var_98, " font-size: 12px;"
  loc_BAE3C2: PopAdLdVar
  loc_BAE3C3: FLdPr Me
  loc_BAE3C6: MemLdRfVar from_stack_1.global_60
  loc_BAE3C9: LdPrVar
  loc_BAE3CB: LateMemCall
  loc_BAE3D1: LitVarStr var_98, " font-style: normal;"
  loc_BAE3D6: PopAdLdVar
  loc_BAE3D7: FLdPr Me
  loc_BAE3DA: MemLdRfVar from_stack_1.global_60
  loc_BAE3DD: LdPrVar
  loc_BAE3DF: LateMemCall
  loc_BAE3E5: LitVarStr var_98, " font-weight: normal;"
  loc_BAE3EA: PopAdLdVar
  loc_BAE3EB: FLdPr Me
  loc_BAE3EE: MemLdRfVar from_stack_1.global_60
  loc_BAE3F1: LdPrVar
  loc_BAE3F3: LateMemCall
  loc_BAE3F9: LitVarStr var_98, " font-variant: normal;"
  loc_BAE3FE: PopAdLdVar
  loc_BAE3FF: FLdPr Me
  loc_BAE402: MemLdRfVar from_stack_1.global_60
  loc_BAE405: LdPrVar
  loc_BAE407: LateMemCall
  loc_BAE40D: LitVarStr var_98, "}"
  loc_BAE412: PopAdLdVar
  loc_BAE413: FLdPr Me
  loc_BAE416: MemLdRfVar from_stack_1.global_60
  loc_BAE419: LdPrVar
  loc_BAE41B: LateMemCall
  loc_BAE421: LitVarStr var_98, ".Encabezado {"
  loc_BAE426: PopAdLdVar
  loc_BAE427: FLdPr Me
  loc_BAE42A: MemLdRfVar from_stack_1.global_60
  loc_BAE42D: LdPrVar
  loc_BAE42F: LateMemCall
  loc_BAE435: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BAE43A: PopAdLdVar
  loc_BAE43B: FLdPr Me
  loc_BAE43E: MemLdRfVar from_stack_1.global_60
  loc_BAE441: LdPrVar
  loc_BAE443: LateMemCall
  loc_BAE449: LitVarStr var_98, " font-size: 11px;"
  loc_BAE44E: PopAdLdVar
  loc_BAE44F: FLdPr Me
  loc_BAE452: MemLdRfVar from_stack_1.global_60
  loc_BAE455: LdPrVar
  loc_BAE457: LateMemCall
  loc_BAE45D: LitVarStr var_98, " font-weight: bold;"
  loc_BAE462: PopAdLdVar
  loc_BAE463: FLdPr Me
  loc_BAE466: MemLdRfVar from_stack_1.global_60
  loc_BAE469: LdPrVar
  loc_BAE46B: LateMemCall
  loc_BAE471: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BAE476: PopAdLdVar
  loc_BAE477: FLdPr Me
  loc_BAE47A: MemLdRfVar from_stack_1.global_60
  loc_BAE47D: LdPrVar
  loc_BAE47F: LateMemCall
  loc_BAE485: LitVarStr var_98, "}"
  loc_BAE48A: PopAdLdVar
  loc_BAE48B: FLdPr Me
  loc_BAE48E: MemLdRfVar from_stack_1.global_60
  loc_BAE491: LdPrVar
  loc_BAE493: LateMemCall
  loc_BAE499: LitVarStr var_98, ".LineaDato {"
  loc_BAE49E: PopAdLdVar
  loc_BAE49F: FLdPr Me
  loc_BAE4A2: MemLdRfVar from_stack_1.global_60
  loc_BAE4A5: LdPrVar
  loc_BAE4A7: LateMemCall
  loc_BAE4AD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BAE4B2: PopAdLdVar
  loc_BAE4B3: FLdPr Me
  loc_BAE4B6: MemLdRfVar from_stack_1.global_60
  loc_BAE4B9: LdPrVar
  loc_BAE4BB: LateMemCall
  loc_BAE4C1: LitVarStr var_98, " font-size: 10px;"
  loc_BAE4C6: PopAdLdVar
  loc_BAE4C7: FLdPr Me
  loc_BAE4CA: MemLdRfVar from_stack_1.global_60
  loc_BAE4CD: LdPrVar
  loc_BAE4CF: LateMemCall
  loc_BAE4D5: LitVarStr var_98, "}"
  loc_BAE4DA: PopAdLdVar
  loc_BAE4DB: FLdPr Me
  loc_BAE4DE: MemLdRfVar from_stack_1.global_60
  loc_BAE4E1: LdPrVar
  loc_BAE4E3: LateMemCall
  loc_BAE4E9: LitVarStr var_98, ".Totales {"
  loc_BAE4EE: PopAdLdVar
  loc_BAE4EF: FLdPr Me
  loc_BAE4F2: MemLdRfVar from_stack_1.global_60
  loc_BAE4F5: LdPrVar
  loc_BAE4F7: LateMemCall
  loc_BAE4FD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BAE502: PopAdLdVar
  loc_BAE503: FLdPr Me
  loc_BAE506: MemLdRfVar from_stack_1.global_60
  loc_BAE509: LdPrVar
  loc_BAE50B: LateMemCall
  loc_BAE511: LitVarStr var_98, " font-size: 12px;"
  loc_BAE516: PopAdLdVar
  loc_BAE517: FLdPr Me
  loc_BAE51A: MemLdRfVar from_stack_1.global_60
  loc_BAE51D: LdPrVar
  loc_BAE51F: LateMemCall
  loc_BAE525: LitVarStr var_98, " font-weight: bold;"
  loc_BAE52A: PopAdLdVar
  loc_BAE52B: FLdPr Me
  loc_BAE52E: MemLdRfVar from_stack_1.global_60
  loc_BAE531: LdPrVar
  loc_BAE533: LateMemCall
  loc_BAE539: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BAE53E: PopAdLdVar
  loc_BAE53F: FLdPr Me
  loc_BAE542: MemLdRfVar from_stack_1.global_60
  loc_BAE545: LdPrVar
  loc_BAE547: LateMemCall
  loc_BAE54D: LitVarStr var_98, "}"
  loc_BAE552: PopAdLdVar
  loc_BAE553: FLdPr Me
  loc_BAE556: MemLdRfVar from_stack_1.global_60
  loc_BAE559: LdPrVar
  loc_BAE55B: LateMemCall
  loc_BAE561: LitVarStr var_98, ".SubTotales {"
  loc_BAE566: PopAdLdVar
  loc_BAE567: FLdPr Me
  loc_BAE56A: MemLdRfVar from_stack_1.global_60
  loc_BAE56D: LdPrVar
  loc_BAE56F: LateMemCall
  loc_BAE575: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BAE57A: PopAdLdVar
  loc_BAE57B: FLdPr Me
  loc_BAE57E: MemLdRfVar from_stack_1.global_60
  loc_BAE581: LdPrVar
  loc_BAE583: LateMemCall
  loc_BAE589: LitVarStr var_98, " font-size: 10px;"
  loc_BAE58E: PopAdLdVar
  loc_BAE58F: FLdPr Me
  loc_BAE592: MemLdRfVar from_stack_1.global_60
  loc_BAE595: LdPrVar
  loc_BAE597: LateMemCall
  loc_BAE59D: LitVarStr var_98, " font-weight: bold;"
  loc_BAE5A2: PopAdLdVar
  loc_BAE5A3: FLdPr Me
  loc_BAE5A6: MemLdRfVar from_stack_1.global_60
  loc_BAE5A9: LdPrVar
  loc_BAE5AB: LateMemCall
  loc_BAE5B1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BAE5B6: PopAdLdVar
  loc_BAE5B7: FLdPr Me
  loc_BAE5BA: MemLdRfVar from_stack_1.global_60
  loc_BAE5BD: LdPrVar
  loc_BAE5BF: LateMemCall
  loc_BAE5C5: LitVarStr var_98, "}"
  loc_BAE5CA: PopAdLdVar
  loc_BAE5CB: FLdPr Me
  loc_BAE5CE: MemLdRfVar from_stack_1.global_60
  loc_BAE5D1: LdPrVar
  loc_BAE5D3: LateMemCall
  loc_BAE5D9: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BAE5DE: PopAdLdVar
  loc_BAE5DF: FLdPr Me
  loc_BAE5E2: MemLdRfVar from_stack_1.global_60
  loc_BAE5E5: LdPrVar
  loc_BAE5E7: LateMemCall
  loc_BAE5ED: LitVarStr var_98, "</style>"
  loc_BAE5F2: PopAdLdVar
  loc_BAE5F3: FLdPr Me
  loc_BAE5F6: MemLdRfVar from_stack_1.global_60
  loc_BAE5F9: LdPrVar
  loc_BAE5FB: LateMemCall
  loc_BAE601: LitI4 0
  loc_BAE606: FStStrCopy var_B0
  loc_BAE609: FLdRfVar var_B0
  loc_BAE60C: LitI4 0
  loc_BAE611: FStStrCopy var_AC
  loc_BAE614: FLdRfVar var_AC
  loc_BAE617: LitI2_Byte 0
  loc_BAE619: PopTmpLdAd2 var_C2
  loc_BAE61C: FLdPr Me
  loc_BAE61F: MemLdRfVar from_stack_1.global_60
  loc_BAE622: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BAE627: FFreeStr var_AC = ""
  loc_BAE62E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BAE633: PopAdLdVar
  loc_BAE634: FLdPr Me
  loc_BAE637: MemLdRfVar from_stack_1.global_60
  loc_BAE63A: LdPrVar
  loc_BAE63C: LateMemCall
  loc_BAE642: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BAE647: PopAdLdVar
  loc_BAE648: FLdPr Me
  loc_BAE64B: MemLdRfVar from_stack_1.global_60
  loc_BAE64E: LdPrVar
  loc_BAE650: LateMemCall
  loc_BAE656: LitVarStr var_98, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BAE65B: PopAdLdVar
  loc_BAE65C: FLdPr Me
  loc_BAE65F: MemLdRfVar from_stack_1.global_60
  loc_BAE662: LdPrVar
  loc_BAE664: LateMemCall
  loc_BAE66A: FLdPr Me
  loc_BAE66D: MemLdI2 bLogos
  loc_BAE670: BranchF loc_BAE6B9
  loc_BAE673: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BAE676: LitI2_Byte &H5F
  loc_BAE678: CStrUI1
  loc_BAE67A: FStStrNoPop var_AC
  loc_BAE67D: ConcatStr
  loc_BAE67E: FStStrNoPop var_B0
  loc_BAE681: LitStr """ height="""
  loc_BAE684: ConcatStr
  loc_BAE685: FStStrNoPop var_C8
  loc_BAE688: LitI2_Byte &H3C
  loc_BAE68A: CStrUI1
  loc_BAE68C: FStStrNoPop var_CC
  loc_BAE68F: ConcatStr
  loc_BAE690: FStStrNoPop var_D0
  loc_BAE693: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BAE696: ConcatStr
  loc_BAE697: CVarStr var_C0
  loc_BAE69A: PopAdLdVar
  loc_BAE69B: FLdPr Me
  loc_BAE69E: MemLdRfVar from_stack_1.global_60
  loc_BAE6A1: LdPrVar
  loc_BAE6A3: LateMemCall
  loc_BAE6A9: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = ""
  loc_BAE6B6: FFree1Var var_C0 = ""
  loc_BAE6B9: LitStr "    <br>"
  loc_BAE6BC: LitStr "Municipalidad de Guaymallén"
  loc_BAE6BF: ConcatStr
  loc_BAE6C0: FStStrNoPop var_AC
  loc_BAE6C3: LitStr "</p>"
  loc_BAE6C6: ConcatStr
  loc_BAE6C7: CVarStr var_C0
  loc_BAE6CA: PopAdLdVar
  loc_BAE6CB: FLdPr Me
  loc_BAE6CE: MemLdRfVar from_stack_1.global_60
  loc_BAE6D1: LdPrVar
  loc_BAE6D3: LateMemCall
  loc_BAE6D9: FFree1Str var_AC
  loc_BAE6DC: FFree1Var var_C0 = ""
  loc_BAE6DF: LitStr "    <p>"
  loc_BAE6E2: FLdRfVar var_AC
  loc_BAE6E5: FLdPr Me
  loc_BAE6E8:  = Me.Caption
  loc_BAE6ED: ILdRf var_AC
  loc_BAE6F0: ConcatStr
  loc_BAE6F1: FStStrNoPop var_B0
  loc_BAE6F4: LitStr "</p></th>"
  loc_BAE6F7: ConcatStr
  loc_BAE6F8: CVarStr var_C0
  loc_BAE6FB: PopAdLdVar
  loc_BAE6FC: FLdPr Me
  loc_BAE6FF: MemLdRfVar from_stack_1.global_60
  loc_BAE702: LdPrVar
  loc_BAE704: LateMemCall
  loc_BAE70A: FFreeStr var_AC = ""
  loc_BAE711: FFree1Var var_C0 = ""
  loc_BAE714: LitVarStr var_98, "  </tr>"
  loc_BAE719: PopAdLdVar
  loc_BAE71A: FLdPr Me
  loc_BAE71D: MemLdRfVar from_stack_1.global_60
  loc_BAE720: LdPrVar
  loc_BAE722: LateMemCall
  loc_BAE728: LitVarStr var_98, "  <tr>"
  loc_BAE72D: PopAdLdVar
  loc_BAE72E: FLdPr Me
  loc_BAE731: MemLdRfVar from_stack_1.global_60
  loc_BAE734: LdPrVar
  loc_BAE736: LateMemCall
  loc_BAE73C: LitVarStr var_98, "    <th><hr></th>"
  loc_BAE741: PopAdLdVar
  loc_BAE742: FLdPr Me
  loc_BAE745: MemLdRfVar from_stack_1.global_60
  loc_BAE748: LdPrVar
  loc_BAE74A: LateMemCall
  loc_BAE750: LitVarStr var_98, "  </tr>"
  loc_BAE755: PopAdLdVar
  loc_BAE756: FLdPr Me
  loc_BAE759: MemLdRfVar from_stack_1.global_60
  loc_BAE75C: LdPrVar
  loc_BAE75E: LateMemCall
  loc_BAE764: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BAE769: PopAdLdVar
  loc_BAE76A: FLdPr Me
  loc_BAE76D: MemLdRfVar from_stack_1.global_60
  loc_BAE770: LdPrVar
  loc_BAE772: LateMemCall
  loc_BAE778: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BAE77B: FLdPr Me
  loc_BAE77E: VCallAd Control_ID_FechInreDesdeMsk
  loc_BAE781: FStAdFunc var_D4
  loc_BAE784: FLdPr var_D4
  loc_BAE787: LateIdLdVar var_C0 DispID_15 0
  loc_BAE78E: CStrVarTmp
  loc_BAE78F: FStStrNoPop var_AC
  loc_BAE792: ConcatStr
  loc_BAE793: CVarStr var_E4
  loc_BAE796: PopAdLdVar
  loc_BAE797: FLdPr Me
  loc_BAE79A: MemLdRfVar from_stack_1.global_60
  loc_BAE79D: LdPrVar
  loc_BAE79F: LateMemCall
  loc_BAE7A5: FFree1Str var_AC
  loc_BAE7A8: FFree1Ad var_D4
  loc_BAE7AB: FFreeVar var_C0 = ""
  loc_BAE7B2: LitStr "                                      &nbsp;&nbsp;&nbsp;&nbsp;<strong>Hasta: </strong>"
  loc_BAE7B5: FLdPr Me
  loc_BAE7B8: VCallAd Control_ID_FechInreHastaMsk
  loc_BAE7BB: FStAdFunc var_D4
  loc_BAE7BE: FLdPr var_D4
  loc_BAE7C1: LateIdLdVar var_C0 DispID_15 0
  loc_BAE7C8: CStrVarTmp
  loc_BAE7C9: FStStrNoPop var_AC
  loc_BAE7CC: ConcatStr
  loc_BAE7CD: FStStrNoPop var_B0
  loc_BAE7D0: LitStr "</td>"
  loc_BAE7D3: ConcatStr
  loc_BAE7D4: CVarStr var_E4
  loc_BAE7D7: PopAdLdVar
  loc_BAE7D8: FLdPr Me
  loc_BAE7DB: MemLdRfVar from_stack_1.global_60
  loc_BAE7DE: LdPrVar
  loc_BAE7E0: LateMemCall
  loc_BAE7E6: FFreeStr var_AC = ""
  loc_BAE7ED: FFree1Ad var_D4
  loc_BAE7F0: FFreeVar var_C0 = ""
  loc_BAE7F7: LitVarStr var_98, "  </tr>"
  loc_BAE7FC: PopAdLdVar
  loc_BAE7FD: FLdPr Me
  loc_BAE800: MemLdRfVar from_stack_1.global_60
  loc_BAE803: LdPrVar
  loc_BAE805: LateMemCall
  loc_BAE80B: LitVarStr var_98, "</table>"
  loc_BAE810: PopAdLdVar
  loc_BAE811: FLdPr Me
  loc_BAE814: MemLdRfVar from_stack_1.global_60
  loc_BAE817: LdPrVar
  loc_BAE819: LateMemCall
  loc_BAE81F: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BAE824: PopAdLdVar
  loc_BAE825: FLdPr Me
  loc_BAE828: MemLdRfVar from_stack_1.global_60
  loc_BAE82B: LdPrVar
  loc_BAE82D: LateMemCall
  loc_BAE833: LitVarStr var_98, "  <thead>"
  loc_BAE838: PopAdLdVar
  loc_BAE839: FLdPr Me
  loc_BAE83C: MemLdRfVar from_stack_1.global_60
  loc_BAE83F: LdPrVar
  loc_BAE841: LateMemCall
  loc_BAE847: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BAE84C: PopAdLdVar
  loc_BAE84D: FLdPr Me
  loc_BAE850: MemLdRfVar from_stack_1.global_60
  loc_BAE853: LdPrVar
  loc_BAE855: LateMemCall
  loc_BAE85B: LitVarStr var_98, "    <th>Cuenta Contable</th>"
  loc_BAE860: PopAdLdVar
  loc_BAE861: FLdPr Me
  loc_BAE864: MemLdRfVar from_stack_1.global_60
  loc_BAE867: LdPrVar
  loc_BAE869: LateMemCall
  loc_BAE86F: LitVarStr var_98, "    <th>Importe</th>"
  loc_BAE874: PopAdLdVar
  loc_BAE875: FLdPr Me
  loc_BAE878: MemLdRfVar from_stack_1.global_60
  loc_BAE87B: LdPrVar
  loc_BAE87D: LateMemCall
  loc_BAE883: LitVarStr var_98, "  </tr>"
  loc_BAE888: PopAdLdVar
  loc_BAE889: FLdPr Me
  loc_BAE88C: MemLdRfVar from_stack_1.global_60
  loc_BAE88F: LdPrVar
  loc_BAE891: LateMemCall
  loc_BAE897: LitVarStr var_98, "  </thead>"
  loc_BAE89C: PopAdLdVar
  loc_BAE89D: FLdPr Me
  loc_BAE8A0: MemLdRfVar from_stack_1.global_60
  loc_BAE8A3: LdPrVar
  loc_BAE8A5: LateMemCall
  loc_BAE8AB: ExitProcHresult
End Function

Private Function Proc_87_24_A0F7E8() 'A0F7E8
  'Data Table: 47981C
  loc_A0F7A8: LitVarStr var_94, "</table>"
  loc_A0F7AD: PopAdLdVar
  loc_A0F7AE: FLdPr Me
  loc_A0F7B1: MemLdRfVar from_stack_1.global_60
  loc_A0F7B4: LdPrVar
  loc_A0F7B6: LateMemCall
  loc_A0F7BC: LitVarStr var_94, "</body>"
  loc_A0F7C1: PopAdLdVar
  loc_A0F7C2: FLdPr Me
  loc_A0F7C5: MemLdRfVar from_stack_1.global_60
  loc_A0F7C8: LdPrVar
  loc_A0F7CA: LateMemCall
  loc_A0F7D0: LitVarStr var_94, "</html>"
  loc_A0F7D5: PopAdLdVar
  loc_A0F7D6: FLdPr Me
  loc_A0F7D9: MemLdRfVar from_stack_1.global_60
  loc_A0F7DC: LdPrVar
  loc_A0F7DE: LateMemCall
  loc_A0F7E4: ExitProcHresult
End Function
