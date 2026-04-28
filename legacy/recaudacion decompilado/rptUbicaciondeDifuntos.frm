VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptUbicaciondeDifuntos
  Caption = "Ubicación de Difuntos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptUbicaciondeDifuntos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10248
  ClientHeight = 4092
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
  Begin VB.Frame Frame6
    Left = 120
    Top = 0
    Width = 9855
    Height = 2055
    TabIndex = 0
    Begin VB.TextBox NumeDifuTxt
      ForeColor = &HFF0000&
      Left = 6495
      Top = 1200
      Width = 660
      Height = 360
      TabIndex = 10
      MaxLength = 3
    End
    Begin VB.TextBox FilaDifuTxt
      ForeColor = &HFF0000&
      Left = 7920
      Top = 1200
      Width = 540
      Height = 360
      TabIndex = 12
      MaxLength = 2
      ToolTipText = "Padrón Territorial"
    End
    Begin VB.TextBox SeccDifuTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1200
      Width = 660
      Height = 360
      TabIndex = 6
      MaxLength = 3
      ToolTipText = "Padrón Territorial"
    End
    Begin VB.ComboBox PlanDifuCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 3720
      Top = 1200
      Width = 1695
      Height = 420
      TabIndex = 8
    End
    Begin VB.TextBox CodiTiseTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 480
      Width = 540
      Height = 360
      TabIndex = 3
      MaxLength = 2
      ToolTipText = "Padrón Territorial"
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7920
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 1
    End
    Begin VB.Label Label6
      Caption = "Planta:"
      Left = 2880
      Top = 1200
      Width = 750
      Height = 300
      TabIndex = 7
      Alignment = 2 'Center
      AutoSize = -1  'True
    End
    Begin VB.Label Label7
      Caption = "Fila:"
      Left = 7455
      Top = 1200
      Width = 450
      Height = 300
      TabIndex = 11
      Alignment = 2 'Center
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Sector:"
      Left = 1320
      Top = 1200
      Width = 780
      Height = 300
      TabIndex = 5
      Alignment = 2 'Center
      AutoSize = -1  'True
    End
    Begin VB.Label Label29
      Caption = "Numero:"
      Left = 5535
      Top = 1200
      Width = 900
      Height = 300
      TabIndex = 9
      Alignment = 2 'Center
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Tipo de Sepultura:"
      Index = 12
      Left = 120
      Top = 480
      Width = 1950
      Height = 300
      TabIndex = 2
      Alignment = 2 'Center
      AutoSize = -1  'True
    End
    Begin VB.Label DetaTiseLbl
      Caption = "DetaTiseLbl"
      ForeColor = &HFF0000&
      Left = 2880
      Top = 480
      Width = 3495
      Height = 345
      TabIndex = 4
      WordWrap = -1  'True
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3840
    Width = 10245
    Height = 255
    TabIndex = 20
    OleObjectBlob = "rptUbicaciondeDifuntos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6360
    Top = 2520
    Width = 855
    Height = 735
    TabIndex = 19
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
    Picture = "rptUbicaciondeDifuntos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptUbicaciondeDifuntos.frx":0B9C
    Left = 6960
    Top = 1560
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2280
    Width = 1815
    Height = 1215
    TabIndex = 17
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2280
    Width = 4095
    Height = 1215
    TabIndex = 14
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 15
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6600
    Top = 2880
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptUbicaciondeDifuntos.frx":0C00
  End
End

Attribute VB_Name = "rptUbicaciondeDifuntos"

Public bGenerado As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub CodiTiseTxt_GotFocus() '9C5390
  'Data Table: 4A7EC8
  loc_9C537C: FLdPr Me
  loc_9C537F: VCallAd Control_ID_CodiTiseTxt
  loc_9C5382: CVarAd
  loc_9C5386: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C538B: FFree1Var var_94 = ""
  loc_9C538E: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_KeyPress(KeyAscii As Integer) 'A96EBC
  'Data Table: 4A7EC8
  loc_A96E08: LitStr "0123456789"
  loc_A96E0B: FStStrCopy var_88
  loc_A96E0E: FLdRfVar var_88
  loc_A96E11: ILdRf KeyAscii
  loc_A96E14: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A96E19: IStI2 KeyAscii
  loc_A96E1C: FFree1Str var_88
  loc_A96E1F: ILdI2 KeyAscii
  loc_A96E22: LitI2_Byte &H20
  loc_A96E24: EqI2
  loc_A96E25: BranchF loc_A96EB9
  loc_A96E28: LitI2_Byte 0
  loc_A96E2A: IStI2 KeyAscii
  loc_A96E2D: LitVar_Missing var_A8
  loc_A96E30: PopAdLdVar
  loc_A96E31: LitVarI4
  loc_A96E39: PopAdLdVar
  loc_A96E3A: ImpAdLdRf MemVar_D94A88
  loc_A96E3D: NewIfNullPr dlgBuscarTipoSepu
  loc_A96E40: dlgBuscarTipoSepu.Show from_stack_1, from_stack_2
  loc_A96E45: FLdRfVar var_AE
  loc_A96E48: FLdRfVar var_AC
  loc_A96E4B: ImpAdLdRf MemVar_D94A88
  loc_A96E4E: NewIfNullPr dlgBuscarTipoSepu
  loc_A96E51: from_stack_1v = dlgBuscarTipoSepu.global_4278044Get()
  loc_A96E56: FLdPr var_AC
  loc_A96E59: from_stack_1 = clstiposepu.CodiTise
  loc_A96E5E: FLdUI1
  loc_A96E62: CStrI2
  loc_A96E64: FStStrNoPop var_88
  loc_A96E67: FLdPr Me
  loc_A96E6A: VCallAd Control_ID_CodiTiseTxt
  loc_A96E6D: FStAdFunc var_B4
  loc_A96E70: FLdPr var_B4
  loc_A96E73: Me.Text = from_stack_1
  loc_A96E78: FFree1Str var_88
  loc_A96E7B: FFreeAd var_AC = ""
  loc_A96E82: FLdRfVar var_88
  loc_A96E85: FLdRfVar var_AC
  loc_A96E88: ImpAdLdRf MemVar_D94A88
  loc_A96E8B: NewIfNullPr dlgBuscarTipoSepu
  loc_A96E8E: from_stack_1v = dlgBuscarTipoSepu.global_4278044Get()
  loc_A96E93: FLdPr var_AC
  loc_A96E96: from_stack_1 = clstiposepu.DetaTise
  loc_A96E9B: ILdRf var_88
  loc_A96E9E: FLdPr Me
  loc_A96EA1: VCallAd Control_ID_DetaTiseLbl
  loc_A96EA4: FStAdFunc var_B4
  loc_A96EA7: FLdPr var_B4
  loc_A96EAA: Me.Caption = from_stack_1
  loc_A96EAF: FFree1Str var_88
  loc_A96EB2: FFreeAd var_AC = ""
  loc_A96EB9: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_LostFocus() 'B0B960
  'Data Table: 4A7EC8
  loc_B0B728: FLdRfVar var_8C
  loc_B0B72B: FLdPr Me
  loc_B0B72E: VCallAd Control_ID_CodiTiseTxt
  loc_B0B731: FStAdFunc var_88
  loc_B0B734: FLdPr var_88
  loc_B0B737:  = Me.Text
  loc_B0B73C: ILdRf var_8C
  loc_B0B73F: CR8Str
  loc_B0B741: LitI2_Byte 3
  loc_B0B743: CR8I2
  loc_B0B744: LeR8
  loc_B0B745: FFree1Str var_8C
  loc_B0B748: FFree1Ad var_88
  loc_B0B74B: BranchF loc_B0B863
  loc_B0B74E: LitI2_Byte &HFF
  loc_B0B750: FLdPr Me
  loc_B0B753: VCallAd Control_ID_Label8
  loc_B0B756: FStAdFunc var_88
  loc_B0B759: FLdPr var_88
  loc_B0B75C: Me.Visible = from_stack_1b
  loc_B0B761: FFree1Ad var_88
  loc_B0B764: LitI2_Byte &HFF
  loc_B0B766: FLdPr Me
  loc_B0B769: VCallAd Control_ID_Label6
  loc_B0B76C: FStAdFunc var_88
  loc_B0B76F: FLdPr var_88
  loc_B0B772: Me.Visible = from_stack_1b
  loc_B0B777: FFree1Ad var_88
  loc_B0B77A: LitI2_Byte &HFF
  loc_B0B77C: FLdPr Me
  loc_B0B77F: VCallAd Control_ID_Label7
  loc_B0B782: FStAdFunc var_88
  loc_B0B785: FLdPr var_88
  loc_B0B788: Me.Visible = from_stack_1b
  loc_B0B78D: FFree1Ad var_88
  loc_B0B790: LitI2_Byte &HFF
  loc_B0B792: FLdPr Me
  loc_B0B795: VCallAd Control_ID_Label29
  loc_B0B798: FStAdFunc var_88
  loc_B0B79B: FLdPr var_88
  loc_B0B79E: Me.Visible = from_stack_1b
  loc_B0B7A3: FFree1Ad var_88
  loc_B0B7A6: LitI2_Byte &HFF
  loc_B0B7A8: FLdPr Me
  loc_B0B7AB: VCallAd Control_ID_SeccDifuTxt
  loc_B0B7AE: FStAdFunc var_88
  loc_B0B7B1: FLdPr var_88
  loc_B0B7B4: Me.Visible = from_stack_1b
  loc_B0B7B9: FFree1Ad var_88
  loc_B0B7BC: LitI2_Byte &HFF
  loc_B0B7BE: FLdPr Me
  loc_B0B7C1: VCallAd Control_ID_PlanDifuCbo
  loc_B0B7C4: FStAdFunc var_88
  loc_B0B7C7: FLdPr var_88
  loc_B0B7CA: Me.Visible = from_stack_1b
  loc_B0B7CF: FFree1Ad var_88
  loc_B0B7D2: LitI2_Byte &HFF
  loc_B0B7D4: FLdPr Me
  loc_B0B7D7: VCallAd Control_ID_NumeDifuTxt
  loc_B0B7DA: FStAdFunc var_88
  loc_B0B7DD: FLdPr var_88
  loc_B0B7E0: Me.Visible = from_stack_1b
  loc_B0B7E5: FFree1Ad var_88
  loc_B0B7E8: LitI2_Byte &HFF
  loc_B0B7EA: FLdPr Me
  loc_B0B7ED: VCallAd Control_ID_FilaDifuTxt
  loc_B0B7F0: FStAdFunc var_88
  loc_B0B7F3: FLdPr var_88
  loc_B0B7F6: Me.Visible = from_stack_1b
  loc_B0B7FB: FFree1Ad var_88
  loc_B0B7FE: LitStr "Sector:"
  loc_B0B801: FLdPr Me
  loc_B0B804: VCallAd Control_ID_Label8
  loc_B0B807: FStAdFunc var_88
  loc_B0B80A: FLdPr var_88
  loc_B0B80D: Me.Caption = from_stack_1
  loc_B0B812: FFree1Ad var_88
  loc_B0B815: LitI2 5640
  loc_B0B818: CR8I2
  loc_B0B819: PopFPR4
  loc_B0B81A: FLdPr Me
  loc_B0B81D: VCallAd Control_ID_Label29
  loc_B0B820: FStAdFunc var_88
  loc_B0B823: FLdPr var_88
  loc_B0B826: Me.Left = from_stack_1s
  loc_B0B82B: FFree1Ad var_88
  loc_B0B82E: LitI2 6600
  loc_B0B831: CR8I2
  loc_B0B832: PopFPR4
  loc_B0B833: FLdPr Me
  loc_B0B836: VCallAd Control_ID_NumeDifuTxt
  loc_B0B839: FStAdFunc var_88
  loc_B0B83C: FLdPr var_88
  loc_B0B83F: Me.Left = from_stack_1s
  loc_B0B844: FFree1Ad var_88
  loc_B0B847: LitI2 360
  loc_B0B84A: CR8I2
  loc_B0B84B: PopFPR4
  loc_B0B84C: FLdPr Me
  loc_B0B84F: VCallAd Control_ID_NumeDifuTxt
  loc_B0B852: FStAdFunc var_88
  loc_B0B855: FLdPr var_88
  loc_B0B858: Me.Height = from_stack_1s
  loc_B0B85D: FFree1Ad var_88
  loc_B0B860: Branch loc_B0B95C
  loc_B0B863: LitI2_Byte 0
  loc_B0B865: FLdPr Me
  loc_B0B868: VCallAd Control_ID_Label6
  loc_B0B86B: FStAdFunc var_88
  loc_B0B86E: FLdPr var_88
  loc_B0B871: Me.Visible = from_stack_1b
  loc_B0B876: FFree1Ad var_88
  loc_B0B879: LitI2_Byte 0
  loc_B0B87B: FLdPr Me
  loc_B0B87E: VCallAd Control_ID_Label7
  loc_B0B881: FStAdFunc var_88
  loc_B0B884: FLdPr var_88
  loc_B0B887: Me.Visible = from_stack_1b
  loc_B0B88C: FFree1Ad var_88
  loc_B0B88F: LitI2_Byte &HFF
  loc_B0B891: FLdPr Me
  loc_B0B894: VCallAd Control_ID_Label8
  loc_B0B897: FStAdFunc var_88
  loc_B0B89A: FLdPr var_88
  loc_B0B89D: Me.Visible = from_stack_1b
  loc_B0B8A2: FFree1Ad var_88
  loc_B0B8A5: LitI2_Byte &HFF
  loc_B0B8A7: FLdPr Me
  loc_B0B8AA: VCallAd Control_ID_Label29
  loc_B0B8AD: FStAdFunc var_88
  loc_B0B8B0: FLdPr var_88
  loc_B0B8B3: Me.Visible = from_stack_1b
  loc_B0B8B8: FFree1Ad var_88
  loc_B0B8BB: LitI2_Byte &HFF
  loc_B0B8BD: FLdPr Me
  loc_B0B8C0: VCallAd Control_ID_SeccDifuTxt
  loc_B0B8C3: FStAdFunc var_88
  loc_B0B8C6: FLdPr var_88
  loc_B0B8C9: Me.Visible = from_stack_1b
  loc_B0B8CE: FFree1Ad var_88
  loc_B0B8D1: LitI2_Byte 0
  loc_B0B8D3: FLdPr Me
  loc_B0B8D6: VCallAd Control_ID_PlanDifuCbo
  loc_B0B8D9: FStAdFunc var_88
  loc_B0B8DC: FLdPr var_88
  loc_B0B8DF: Me.Visible = from_stack_1b
  loc_B0B8E4: FFree1Ad var_88
  loc_B0B8E7: LitI2_Byte &HFF
  loc_B0B8E9: FLdPr Me
  loc_B0B8EC: VCallAd Control_ID_NumeDifuTxt
  loc_B0B8EF: FStAdFunc var_88
  loc_B0B8F2: FLdPr var_88
  loc_B0B8F5: Me.Visible = from_stack_1b
  loc_B0B8FA: FFree1Ad var_88
  loc_B0B8FD: LitI2_Byte 0
  loc_B0B8FF: FLdPr Me
  loc_B0B902: VCallAd Control_ID_FilaDifuTxt
  loc_B0B905: FStAdFunc var_88
  loc_B0B908: FLdPr var_88
  loc_B0B90B: Me.Visible = from_stack_1b
  loc_B0B910: FFree1Ad var_88
  loc_B0B913: LitStr "Cuadro:"
  loc_B0B916: FLdPr Me
  loc_B0B919: VCallAd Control_ID_Label8
  loc_B0B91C: FStAdFunc var_88
  loc_B0B91F: FLdPr var_88
  loc_B0B922: Me.Caption = from_stack_1
  loc_B0B927: FFree1Ad var_88
  loc_B0B92A: LitI2 4000
  loc_B0B92D: CR8I2
  loc_B0B92E: PopFPR4
  loc_B0B92F: FLdPr Me
  loc_B0B932: VCallAd Control_ID_NumeDifuTxt
  loc_B0B935: FStAdFunc var_88
  loc_B0B938: FLdPr var_88
  loc_B0B93B: Me.Left = from_stack_1s
  loc_B0B940: FFree1Ad var_88
  loc_B0B943: LitI2 360
  loc_B0B946: CR8I2
  loc_B0B947: PopFPR4
  loc_B0B948: FLdPr Me
  loc_B0B94B: VCallAd Control_ID_NumeDifuTxt
  loc_B0B94E: FStAdFunc var_88
  loc_B0B951: FLdPr var_88
  loc_B0B954: Me.Height = from_stack_1s
  loc_B0B959: FFree1Ad var_88
  loc_B0B95C: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_Validate(Cancel As Boolean) 'AA4DA4
  'Data Table: 4A7EC8
  loc_AA4CE8: FLdRfVar var_8C
  loc_AA4CEB: FLdPr Me
  loc_AA4CEE: VCallAd Control_ID_CodiTiseTxt
  loc_AA4CF1: FStAdFunc var_88
  loc_AA4CF4: FLdPr var_88
  loc_AA4CF7:  = Me.Text
  loc_AA4CFC: ILdRf var_8C
  loc_AA4CFF: ImpAdCallI2 Proc_18_28_A555EC()
  loc_AA4D04: FStStrNoPop var_90
  loc_AA4D07: FLdPr Me
  loc_AA4D0A: MemStStrCopy
  loc_AA4D0E: FFreeStr var_8C = ""
  loc_AA4D15: FFree1Ad var_88
  loc_AA4D18: FLdPr Me
  loc_AA4D1B: MemLdStr global_104
  loc_AA4D1E: LitStr vbNullString
  loc_AA4D21: NeStr
  loc_AA4D23: BranchF loc_AA4D63
  loc_AA4D26: FLdPr Me
  loc_AA4D29: MemLdStr global_104
  loc_AA4D2C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA4D31: LitStr vbNullString
  loc_AA4D34: FLdPr Me
  loc_AA4D37: VCallAd Control_ID_DetaTiseLbl
  loc_AA4D3A: FStAdFunc var_88
  loc_AA4D3D: FLdPr var_88
  loc_AA4D40: Me.Caption = from_stack_1
  loc_AA4D45: FFree1Ad var_88
  loc_AA4D48: FLdPr Me
  loc_AA4D4B: VCallAd Control_ID_CodiTiseTxt
  loc_AA4D4E: CVarAd
  loc_AA4D52: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA4D57: FFree1Var var_A0 = ""
  loc_AA4D5A: LitI2_Byte &HFF
  loc_AA4D5C: IStI2 Cancel
  loc_AA4D5F: ExitProcHresult
  loc_AA4D60: Branch loc_AA4DA3
  loc_AA4D63: FLdRfVar var_8C
  loc_AA4D66: FLdPr Me
  loc_AA4D69: VCallAd Control_ID_CodiTiseTxt
  loc_AA4D6C: FStAdFunc var_88
  loc_AA4D6F: FLdPr var_88
  loc_AA4D72:  = Me.Text
  loc_AA4D77: ILdRf var_8C
  loc_AA4D7A: CI2Str
  loc_AA4D7C: ImpAdCallI2 Proc_270_28_A79F90()
  loc_AA4D81: FStStrNoPop var_90
  loc_AA4D84: FLdPr Me
  loc_AA4D87: VCallAd Control_ID_DetaTiseLbl
  loc_AA4D8A: FStAdFunc var_A4
  loc_AA4D8D: FLdPr var_A4
  loc_AA4D90: Me.Caption = from_stack_1
  loc_AA4D95: FFreeStr var_8C = ""
  loc_AA4D9C: FFreeAd var_88 = ""
  loc_AA4DA3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E159C
  'Data Table: 4A7EC8
  loc_9E1580: LitI2_Byte 0
  loc_9E1582: PopTmpLdAd2 var_8A
  loc_9E1585: ILdRf Me
  loc_9E1588: CastAd
  loc_9E158B: FStAdFunc var_88
  loc_9E158E: FLdRfVar var_88
  loc_9E1591: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E1596: FFree1Ad var_88
  loc_9E1599: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1E1A8
  'Data Table: 4A7EC8
  loc_A1E170: FLdPr Me
  loc_A1E173: VCallAd Control_ID_statusBar
  loc_A1E176: FStAdFunc var_88
  loc_A1E179: FLdPr var_88
  loc_A1E17C: LateIdLdVar var_98 DispID_1 0
  loc_A1E183: CStrVarTmp
  loc_A1E184: CVarStr var_A8
  loc_A1E187: PopAdLdVar
  loc_A1E188: FLdPr Me
  loc_A1E18B: VCallAd Control_ID_statusBar
  loc_A1E18E: FStAdFunc var_BC
  loc_A1E191: FLdPr var_BC
  loc_A1E194: LateIdSt
  loc_A1E199: FFreeAd var_88 = ""
  loc_A1E1A0: FFreeVar var_98 = ""
  loc_A1E1A7: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CCC40
  'Data Table: 4A7EC8
  loc_9CCC28: LitI2_Byte 0
  loc_9CCC2A: ILdRf Me
  loc_9CCC2D: CastAd
  loc_9CCC30: FStAdFunc var_88
  loc_9CCC33: FLdRfVar var_88
  loc_9CCC36: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CCC3B: FFree1Ad var_88
  loc_9CCC3E: ExitProcHresult
End Sub

Private Sub SeccDifuTxt_GotFocus() '9C7670
  'Data Table: 4A7EC8
  loc_9C765C: FLdPr Me
  loc_9C765F: VCallAd Control_ID_SeccDifuTxt
  loc_9C7662: CVarAd
  loc_9C7666: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C766B: FFree1Var var_94 = ""
  loc_9C766E: ExitProcHresult
End Sub

Private Sub SeccDifuTxt_Validate(Cancel As Boolean) 'A85348
  'Data Table: 4A7EC8
  loc_A852BC: FLdRfVar var_8C
  loc_A852BF: FLdPr Me
  loc_A852C2: VCallAd Control_ID_SeccDifuTxt
  loc_A852C5: FStAdFunc var_88
  loc_A852C8: FLdPr var_88
  loc_A852CB:  = Me.Text
  loc_A852D0: ILdRf var_8C
  loc_A852D3: LitStr vbNullString
  loc_A852D6: NeStr
  loc_A852D8: FFree1Str var_8C
  loc_A852DB: FFree1Ad var_88
  loc_A852DE: BranchF loc_A85345
  loc_A852E1: FLdRfVar var_8C
  loc_A852E4: FLdPr Me
  loc_A852E7: VCallAd Control_ID_SeccDifuTxt
  loc_A852EA: FStAdFunc var_88
  loc_A852ED: FLdPr var_88
  loc_A852F0:  = Me.Text
  loc_A852F5: ILdRf var_8C
  loc_A852F8: LitStr "ingrese el sector"
  loc_A852FB: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A85300: FStStrNoPop var_90
  loc_A85303: FLdPr Me
  loc_A85306: MemStStrCopy
  loc_A8530A: FFreeStr var_8C = ""
  loc_A85311: FFree1Ad var_88
  loc_A85314: FLdPr Me
  loc_A85317: MemLdStr global_104
  loc_A8531A: LitStr vbNullString
  loc_A8531D: NeStr
  loc_A8531F: BranchF loc_A85345
  loc_A85322: FLdPr Me
  loc_A85325: MemLdStr global_104
  loc_A85328: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8532D: FLdPr Me
  loc_A85330: VCallAd Control_ID_SeccDifuTxt
  loc_A85333: CVarAd
  loc_A85337: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8533C: FFree1Var var_A0 = ""
  loc_A8533F: LitI2_Byte &HFF
  loc_A85341: IStI2 Cancel
  loc_A85344: ExitProcHresult
  loc_A85345: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_GotFocus() '9C7790
  'Data Table: 4A7EC8
  loc_9C777C: FLdPr Me
  loc_9C777F: VCallAd Control_ID_FilaDifuTxt
  loc_9C7782: CVarAd
  loc_9C7786: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C778B: FFree1Var var_94 = ""
  loc_9C778E: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_KeyPress(KeyAscii As Integer) '9CCA78
  'Data Table: 4A7EC8
  loc_9CCA60: LitStr "0123456789"
  loc_9CCA63: FStStrCopy var_88
  loc_9CCA66: FLdRfVar var_88
  loc_9CCA69: ILdRf KeyAscii
  loc_9CCA6C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CCA71: IStI2 KeyAscii
  loc_9CCA74: FFree1Str var_88
  loc_9CCA77: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_Validate(Cancel As Boolean) 'A88168
  'Data Table: 4A7EC8
  loc_A880D8: FLdRfVar var_8C
  loc_A880DB: FLdPr Me
  loc_A880DE: VCallAd Control_ID_FilaDifuTxt
  loc_A880E1: FStAdFunc var_88
  loc_A880E4: FLdPr var_88
  loc_A880E7:  = Me.Text
  loc_A880EC: ILdRf var_8C
  loc_A880EF: LitStr vbNullString
  loc_A880F2: NeStr
  loc_A880F4: FFree1Str var_8C
  loc_A880F7: FFree1Ad var_88
  loc_A880FA: BranchF loc_A88165
  loc_A880FD: FLdRfVar var_8C
  loc_A88100: FLdPr Me
  loc_A88103: VCallAd Control_ID_FilaDifuTxt
  loc_A88106: FStAdFunc var_88
  loc_A88109: FLdPr var_88
  loc_A8810C:  = Me.Text
  loc_A88111: LitI2_Byte &HFF
  loc_A88113: LitI2_Byte 0
  loc_A88115: ILdRf var_8C
  loc_A88118: LitStr "ingrese la FILA"
  loc_A8811B: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_A88120: FStStrNoPop var_90
  loc_A88123: FLdPr Me
  loc_A88126: MemStStrCopy
  loc_A8812A: FFreeStr var_8C = ""
  loc_A88131: FFree1Ad var_88
  loc_A88134: FLdPr Me
  loc_A88137: MemLdStr global_104
  loc_A8813A: LitStr vbNullString
  loc_A8813D: NeStr
  loc_A8813F: BranchF loc_A88165
  loc_A88142: FLdPr Me
  loc_A88145: MemLdStr global_104
  loc_A88148: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8814D: FLdPr Me
  loc_A88150: VCallAd Control_ID_FilaDifuTxt
  loc_A88153: CVarAd
  loc_A88157: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8815C: FFree1Var var_A0 = ""
  loc_A8815F: LitI2_Byte &HFF
  loc_A88161: IStI2 Cancel
  loc_A88164: ExitProcHresult
  loc_A88165: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A016F4
  'Data Table: 4A7EC8
  loc_A016C4: LitVarStr var_94, "Cerrando..."
  loc_A016C9: PopAdLdVar
  loc_A016CA: FLdPr Me
  loc_A016CD: VCallAd Control_ID_statusBar
  loc_A016D0: FStAdFunc var_A8
  loc_A016D3: FLdPr var_A8
  loc_A016D6: LateIdSt
  loc_A016DB: FFree1Ad var_A8
  loc_A016DE: ILdRf Me
  loc_A016E1: FStAdNoPop
  loc_A016E5: ImpAdLdRf MemVar_D9C5D8
  loc_A016E8: NewIfNullPr Global
  loc_A016EB: Global.Unload from_stack_1
  loc_A016F0: FFree1Ad var_A8
  loc_A016F3: ExitProcHresult
End Sub

Private Sub NumeDifuTxt_GotFocus() '9C7700
  'Data Table: 4A7EC8
  loc_9C76EC: FLdPr Me
  loc_9C76EF: VCallAd Control_ID_NumeDifuTxt
  loc_9C76F2: CVarAd
  loc_9C76F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C76FB: FFree1Var var_94 = ""
  loc_9C76FE: ExitProcHresult
End Sub

Private Sub NumeDifuTxt_KeyPress(KeyAscii As Integer) '9CCB10
  'Data Table: 4A7EC8
  loc_9CCAF8: LitStr "0123456789"
  loc_9CCAFB: FStStrCopy var_88
  loc_9CCAFE: FLdRfVar var_88
  loc_9CCB01: ILdRf KeyAscii
  loc_9CCB04: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CCB09: IStI2 KeyAscii
  loc_9CCB0C: FFree1Str var_88
  loc_9CCB0F: ExitProcHresult
End Sub

Private Sub NumeDifuTxt_Validate(Cancel As Boolean) 'A86C48
  'Data Table: 4A7EC8
  loc_A86BB8: FLdRfVar var_8C
  loc_A86BBB: FLdPr Me
  loc_A86BBE: VCallAd Control_ID_NumeDifuTxt
  loc_A86BC1: FStAdFunc var_88
  loc_A86BC4: FLdPr var_88
  loc_A86BC7:  = Me.Text
  loc_A86BCC: ILdRf var_8C
  loc_A86BCF: LitStr vbNullString
  loc_A86BD2: NeStr
  loc_A86BD4: FFree1Str var_8C
  loc_A86BD7: FFree1Ad var_88
  loc_A86BDA: BranchF loc_A86C45
  loc_A86BDD: FLdRfVar var_8C
  loc_A86BE0: FLdPr Me
  loc_A86BE3: VCallAd Control_ID_NumeDifuTxt
  loc_A86BE6: FStAdFunc var_88
  loc_A86BE9: FLdPr var_88
  loc_A86BEC:  = Me.Text
  loc_A86BF1: LitI2_Byte &HFF
  loc_A86BF3: LitI2_Byte 0
  loc_A86BF5: ILdRf var_8C
  loc_A86BF8: LitStr "ingrese el NUMERO"
  loc_A86BFB: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A86C00: FStStrNoPop var_90
  loc_A86C03: FLdPr Me
  loc_A86C06: MemStStrCopy
  loc_A86C0A: FFreeStr var_8C = ""
  loc_A86C11: FFree1Ad var_88
  loc_A86C14: FLdPr Me
  loc_A86C17: MemLdStr global_104
  loc_A86C1A: LitStr vbNullString
  loc_A86C1D: NeStr
  loc_A86C1F: BranchF loc_A86C45
  loc_A86C22: FLdPr Me
  loc_A86C25: MemLdStr global_104
  loc_A86C28: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A86C2D: FLdPr Me
  loc_A86C30: VCallAd Control_ID_NumeDifuTxt
  loc_A86C33: CVarAd
  loc_A86C37: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A86C3C: FFree1Var var_A0 = ""
  loc_A86C3F: LitI2_Byte &HFF
  loc_A86C41: IStI2 Cancel
  loc_A86C44: ExitProcHresult
  loc_A86C45: ExitProcHresult
  loc_A86C46: LdPrVar
End Sub

Private Sub cmdNueva_Click() 'A8E3D0
  'Data Table: 4A7EC8
  loc_A8E324: LitI2_Byte 0
  loc_A8E326: FLdPr Me
  loc_A8E329: MemStI2 bGenerado
  loc_A8E32C: LitI2_Byte 0
  loc_A8E32E: ILdRf Me
  loc_A8E331: CastAd
  loc_A8E334: FStAdFunc var_88
  loc_A8E337: FLdRfVar var_88
  loc_A8E33A: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A8E33F: FFree1Ad var_88
  loc_A8E342: LitStr "0"
  loc_A8E345: FLdPr Me
  loc_A8E348: VCallAd Control_ID_CodiTiseTxt
  loc_A8E34B: FStAdFunc var_88
  loc_A8E34E: FLdPr var_88
  loc_A8E351: Me.Text = from_stack_1
  loc_A8E356: FFree1Ad var_88
  loc_A8E359: LitI2_Byte 2
  loc_A8E35B: FLdPr Me
  loc_A8E35E: VCallAd Control_ID_PlanDifuCbo
  loc_A8E361: FStAdFunc var_88
  loc_A8E364: FLdPr var_88
  loc_A8E367: Me.ListIndex = from_stack_1
  loc_A8E36C: FFree1Ad var_88
  loc_A8E36F: LitStr vbNullString
  loc_A8E372: FLdPr Me
  loc_A8E375: VCallAd Control_ID_SeccDifuTxt
  loc_A8E378: FStAdFunc var_88
  loc_A8E37B: FLdPr var_88
  loc_A8E37E: Me.Text = from_stack_1
  loc_A8E383: FFree1Ad var_88
  loc_A8E386: LitStr vbNullString
  loc_A8E389: FLdPr Me
  loc_A8E38C: VCallAd Control_ID_NumeDifuTxt
  loc_A8E38F: FStAdFunc var_88
  loc_A8E392: FLdPr var_88
  loc_A8E395: Me.Text = from_stack_1
  loc_A8E39A: FFree1Ad var_88
  loc_A8E39D: LitStr vbNullString
  loc_A8E3A0: FLdPr Me
  loc_A8E3A3: VCallAd Control_ID_FilaDifuTxt
  loc_A8E3A6: FStAdFunc var_88
  loc_A8E3A9: FLdPr var_88
  loc_A8E3AC: Me.Text = from_stack_1
  loc_A8E3B1: FFree1Ad var_88
  loc_A8E3B4: Call HabilitarCriterio()
  loc_A8E3B9: ILdRf Me
  loc_A8E3BC: CastAd
  loc_A8E3BF: FStAdFunc var_88
  loc_A8E3C2: FLdRfVar var_88
  loc_A8E3C5: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A8E3CA: FFree1Ad var_88
  loc_A8E3CD: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CCBF4
  'Data Table: 4A7EC8
  loc_9CCBDC: ILdRf Me
  loc_9CCBDF: CastAd
  loc_9CCBE2: FStAdFunc var_88
  loc_9CCBE5: FLdRfVar var_88
  loc_9CCBE8: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CCBED: FFree1Ad var_88
  loc_9CCBF0: ExitProcHresult
End Sub

Private Sub Form_Load() 'A630D0
  'Data Table: 4A7EC8
  loc_A63064: ILdRf Me
  loc_A63067: CastAd
  loc_A6306A: FStAdFunc var_8C
  loc_A6306D: FLdRfVar var_8C
  loc_A63070: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A63075: FFree1Ad var_8C
  loc_A63078: LitVar_Missing var_9C
  loc_A6307B: PopAdLdVar
  loc_A6307C: LitStr "Planta Baja"
  loc_A6307F: FLdPr Me
  loc_A63082: VCallAd Control_ID_PlanDifuCbo
  loc_A63085: FStAdFunc var_8C
  loc_A63088: FLdPr var_8C
  loc_A6308B: Me.AddItem from_stack_1, from_stack_2
  loc_A63090: FFree1Ad var_8C
  loc_A63093: LitVar_Missing var_9C
  loc_A63096: PopAdLdVar
  loc_A63097: LitStr "Planta Alta"
  loc_A6309A: FLdPr Me
  loc_A6309D: VCallAd Control_ID_PlanDifuCbo
  loc_A630A0: FStAdFunc var_8C
  loc_A630A3: FLdPr var_8C
  loc_A630A6: Me.AddItem from_stack_1, from_stack_2
  loc_A630AB: FFree1Ad var_8C
  loc_A630AE: LitVar_Missing var_9C
  loc_A630B1: PopAdLdVar
  loc_A630B2: LitStr "TODOS"
  loc_A630B5: FLdPr Me
  loc_A630B8: VCallAd Control_ID_PlanDifuCbo
  loc_A630BB: FStAdFunc var_8C
  loc_A630BE: FLdPr var_8C
  loc_A630C1: Me.AddItem from_stack_1, from_stack_2
  loc_A630C6: FFree1Ad var_8C
  loc_A630C9: Call cmdNueva_Click()
  loc_A630CE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CCCD8
  'Data Table: 4A7EC8
  loc_9CCCC0: FLdPr Me
  loc_9CCCC3: VCallAd Control_ID_wbbReporte
  loc_9CCCC6: FStAdFunc var_88
  loc_9CCCC9: FLdRfVar var_88
  loc_9CCCCC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CCCD1: FFree1Ad var_88
  loc_9CCCD4: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4A8EAC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A8EBB
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A7F4E8
  'Data Table: 4A7EC8
  loc_A7F474: LitI4 0
  loc_A7F479: LitI4 4
  loc_A7F47E: FLdRfVar var_88
  loc_A7F481: Redim
  loc_A7F48B: FLdPr Me
  loc_A7F48E: VCallAd Control_ID_CodiTiseTxt
  loc_A7F491: CVarAd
  loc_A7F495: ParmAry1St
  loc_A7F49B: FLdPr Me
  loc_A7F49E: VCallAd Control_ID_SeccDifuTxt
  loc_A7F4A1: CVarAd
  loc_A7F4A5: ParmAry1St
  loc_A7F4AB: FLdPr Me
  loc_A7F4AE: VCallAd Control_ID_PlanDifuCbo
  loc_A7F4B1: CVarAd
  loc_A7F4B5: ParmAry1St
  loc_A7F4BB: FLdPr Me
  loc_A7F4BE: VCallAd Control_ID_NumeDifuTxt
  loc_A7F4C1: CVarAd
  loc_A7F4C5: ParmAry1St
  loc_A7F4CB: FLdPr Me
  loc_A7F4CE: VCallAd Control_ID_FilaDifuTxt
  loc_A7F4D1: CVarAd
  loc_A7F4D5: ParmAry1St
  loc_A7F4DB: FLdRfVar var_88
  loc_A7F4DE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A7F4E3: FLdRfVar var_88
  loc_A7F4E6: Erase
  loc_A7F4E7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BE9924
  'Data Table: 4A7EC8
  loc_BE9164: FLdPr Me
  loc_BE9167: MemLdI2 bGenerado
  loc_BE916A: BranchF loc_BE916E
  loc_BE916D: ExitProcHresult
  loc_BE916E: LitVarStr var_A8, "Generando reporte..."
  loc_BE9173: PopAdLdVar
  loc_BE9174: FLdPr Me
  loc_BE9177: VCallAd Control_ID_statusBar
  loc_BE917A: FStAdFunc var_BC
  loc_BE917D: FLdPr var_BC
  loc_BE9180: LateIdSt
  loc_BE9185: FFree1Ad var_BC
  loc_BE9188: LitI4 &HB
  loc_BE918D: CI2I4
  loc_BE918E: FLdPr Me
  loc_BE9191: Me.MousePointer = from_stack_1
  loc_BE9196: FLdPr Me
  loc_BE9199: MemLdRfVar from_stack_1.global_76
  loc_BE919C: NewIfNullAd
  loc_BE919F: FStAd var_C0 
  loc_BE91A3: FLdRfVar var_C4
  loc_BE91A6: FLdPr Me
  loc_BE91A9: VCallAd Control_ID_SeccDifuTxt
  loc_BE91AC: FStAdFunc var_BC
  loc_BE91AF: FLdPr var_BC
  loc_BE91B2:  = Me.Text
  loc_BE91B7: FLdRfVar var_CC
  loc_BE91BA: FLdPr Me
  loc_BE91BD: VCallAd Control_ID_SeccDifuTxt
  loc_BE91C0: FStAdFunc var_C8
  loc_BE91C3: FLdPr var_C8
  loc_BE91C6:  = Me.Text
  loc_BE91CB: LitVarStr var_B8, vbNullString
  loc_BE91D0: FStVarCopyObj var_F0
  loc_BE91D3: FLdRfVar var_F0
  loc_BE91D6: LitStr " AND SeccDifu = '"
  loc_BE91D9: ILdRf var_CC
  loc_BE91DC: ConcatStr
  loc_BE91DD: FStStrNoPop var_D0
  loc_BE91E0: LitStr "'"
  loc_BE91E3: ConcatStr
  loc_BE91E4: CVarStr var_E0
  loc_BE91E7: ILdRf var_C4
  loc_BE91EA: LitStr vbNullString
  loc_BE91ED: NeStr
  loc_BE91EF: CVarBoolI2 var_A8
  loc_BE91F3: FLdRfVar var_100
  loc_BE91F6: ImpAdCallFPR4  = IIf(, , )
  loc_BE91FB: FLdRfVar var_100
  loc_BE91FE: CStrVarTmp
  loc_BE91FF: FStStr var_90
  loc_BE9202: FFreeStr var_C4 = "": var_CC = ""
  loc_BE920B: FFreeAd var_BC = ""
  loc_BE9212: FFreeVar var_A8 = "": var_E0 = "": var_F0 = ""
  loc_BE921D: FLdRfVar var_C4
  loc_BE9220: FLdPr Me
  loc_BE9223: VCallAd Control_ID_PlanDifuCbo
  loc_BE9226: FStAdFunc var_BC
  loc_BE9229: FLdPr var_BC
  loc_BE922C:  = Me.Text
  loc_BE9231: FLdRfVar var_102
  loc_BE9234: FLdPr Me
  loc_BE9237: VCallAd Control_ID_PlanDifuCbo
  loc_BE923A: FStAdFunc var_C8
  loc_BE923D: FLdPr var_C8
  loc_BE9240:  = Me.ListIndex
  loc_BE9245: LitVarStr var_B8, vbNullString
  loc_BE924A: FStVarCopyObj var_F0
  loc_BE924D: FLdRfVar var_F0
  loc_BE9250: LitStr " AND PlanDifu = "
  loc_BE9253: FLdI2 var_102
  loc_BE9256: CStrUI1
  loc_BE9258: FStStrNoPop var_CC
  loc_BE925B: ConcatStr
  loc_BE925C: CVarStr var_E0
  loc_BE925F: ILdRf var_C4
  loc_BE9262: LitStr "TODOS"
  loc_BE9265: NeStr
  loc_BE9267: CVarBoolI2 var_A8
  loc_BE926B: FLdRfVar var_100
  loc_BE926E: ImpAdCallFPR4  = IIf(, , )
  loc_BE9273: FLdRfVar var_100
  loc_BE9276: CStrVarTmp
  loc_BE9277: FStStr var_98
  loc_BE927A: FFreeStr var_C4 = ""
  loc_BE9281: FFreeAd var_BC = ""
  loc_BE9288: FFreeVar var_A8 = "": var_E0 = "": var_F0 = ""
  loc_BE9293: FLdRfVar var_C4
  loc_BE9296: FLdPr Me
  loc_BE9299: VCallAd Control_ID_NumeDifuTxt
  loc_BE929C: FStAdFunc var_BC
  loc_BE929F: FLdPr var_BC
  loc_BE92A2:  = Me.Text
  loc_BE92A7: FLdRfVar var_CC
  loc_BE92AA: FLdPr Me
  loc_BE92AD: VCallAd Control_ID_NumeDifuTxt
  loc_BE92B0: FStAdFunc var_C8
  loc_BE92B3: FLdPr var_C8
  loc_BE92B6:  = Me.Text
  loc_BE92BB: LitVarStr var_B8, vbNullString
  loc_BE92C0: FStVarCopyObj var_F0
  loc_BE92C3: FLdRfVar var_F0
  loc_BE92C6: LitStr " AND NumeDifu = "
  loc_BE92C9: ILdRf var_CC
  loc_BE92CC: ConcatStr
  loc_BE92CD: CVarStr var_E0
  loc_BE92D0: ILdRf var_C4
  loc_BE92D3: LitStr vbNullString
  loc_BE92D6: NeStr
  loc_BE92D8: CVarBoolI2 var_A8
  loc_BE92DC: FLdRfVar var_100
  loc_BE92DF: ImpAdCallFPR4  = IIf(, , )
  loc_BE92E4: FLdRfVar var_100
  loc_BE92E7: CStrVarTmp
  loc_BE92E8: FStStr var_88
  loc_BE92EB: FFreeStr var_C4 = ""
  loc_BE92F2: FFreeAd var_BC = ""
  loc_BE92F9: FFreeVar var_A8 = "": var_E0 = "": var_F0 = ""
  loc_BE9304: FLdRfVar var_C4
  loc_BE9307: FLdPr Me
  loc_BE930A: VCallAd Control_ID_FilaDifuTxt
  loc_BE930D: FStAdFunc var_BC
  loc_BE9310: FLdPr var_BC
  loc_BE9313:  = Me.Text
  loc_BE9318: FLdRfVar var_CC
  loc_BE931B: FLdPr Me
  loc_BE931E: VCallAd Control_ID_FilaDifuTxt
  loc_BE9321: FStAdFunc var_C8
  loc_BE9324: FLdPr var_C8
  loc_BE9327:  = Me.Text
  loc_BE932C: LitVarStr var_B8, vbNullString
  loc_BE9331: FStVarCopyObj var_F0
  loc_BE9334: FLdRfVar var_F0
  loc_BE9337: LitStr " AND FilaDifu = "
  loc_BE933A: ILdRf var_CC
  loc_BE933D: ConcatStr
  loc_BE933E: CVarStr var_E0
  loc_BE9341: ILdRf var_C4
  loc_BE9344: LitStr vbNullString
  loc_BE9347: NeStr
  loc_BE9349: CVarBoolI2 var_A8
  loc_BE934D: FLdRfVar var_100
  loc_BE9350: ImpAdCallFPR4  = IIf(, , )
  loc_BE9355: FLdRfVar var_100
  loc_BE9358: CStrVarTmp
  loc_BE9359: FStStr var_8C
  loc_BE935C: FFreeStr var_C4 = ""
  loc_BE9363: FFreeAd var_BC = ""
  loc_BE936A: FFreeVar var_A8 = "": var_E0 = "": var_F0 = ""
  loc_BE9375: LitStr "SELECT SeccDifu,if(difunto.CodiTise<=3,if(PlanDifu=0,'Planta Baja','Planta Alta'),'') as Planta ,NumeDifu,FilaDifu,difunto.CodiDifu,FeveDifu,DetaPers,DecpDifu as DecaPost,NupoDifu as NumePost,DetaDedi,FefaDedi,AnioDedi"
  loc_BE9378: LitStr " FROM difunto"
  loc_BE937B: ConcatStr
  loc_BE937C: FStStrNoPop var_C4
  loc_BE937F: LitStr " LEFT JOIN infogov.persona ON infogov.persona.cucupers = difunto.CucuPers"
  loc_BE9382: ConcatStr
  loc_BE9383: FStStrNoPop var_CC
  loc_BE9386: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu"
  loc_BE9389: ConcatStr
  loc_BE938A: FStStrNoPop var_D0
  loc_BE938D: LitStr " WHERE difunto.CodiTise = "
  loc_BE9390: ConcatStr
  loc_BE9391: FStStrNoPop var_10C
  loc_BE9394: FLdRfVar var_108
  loc_BE9397: FLdPr Me
  loc_BE939A: VCallAd Control_ID_CodiTiseTxt
  loc_BE939D: FStAdFunc var_BC
  loc_BE93A0: FLdPr var_BC
  loc_BE93A3:  = Me.Text
  loc_BE93A8: ILdRf var_108
  loc_BE93AB: ConcatStr
  loc_BE93AC: FStStrNoPop var_110
  loc_BE93AF: ILdRf var_88
  loc_BE93B2: ConcatStr
  loc_BE93B3: FStStrNoPop var_114
  loc_BE93B6: ILdRf var_98
  loc_BE93B9: ConcatStr
  loc_BE93BA: FStStrNoPop var_118
  loc_BE93BD: ILdRf var_8C
  loc_BE93C0: ConcatStr
  loc_BE93C1: FStStrNoPop var_11C
  loc_BE93C4: ILdRf var_90
  loc_BE93C7: ConcatStr
  loc_BE93C8: FStStrNoPop var_120
  loc_BE93CB: LitStr " ORDER BY difunto.CodiDifu "
  loc_BE93CE: ConcatStr
  loc_BE93CF: FStStrNoPop var_124
  loc_BE93D2: FLdPr var_C0
  loc_BE93D5: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_BE93DA: FFreeStr var_C4 = "": var_CC = "": var_D0 = "": var_10C = "": var_108 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_BE93F3: FFree1Ad var_BC
  loc_BE93F6: FLdRfVar var_128
  loc_BE93F9: FLdPr var_C0
  loc_BE93FC: from_stack_1 = clsdifunto.RecordCount
  loc_BE9401: ILdRf var_128
  loc_BE9404: LitI4 0
  loc_BE9409: EqI4
  loc_BE940A: BranchF loc_BE9418
  loc_BE940D: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BE9410: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BE9415: Branch loc_BE98F8
  loc_BE9418: LitI4 0
  loc_BE941D: FLdRfVar var_128
  loc_BE9420: FLdPr var_C0
  loc_BE9423: from_stack_1 = clsdifunto.RecordCount
  loc_BE9428: ILdRf var_128
  loc_BE942B: FLdPr Me
  loc_BE942E: MemLdRfVar from_stack_1.global_80
  loc_BE9431: Redim
  loc_BE943B: FLdPr var_C0
  loc_BE943E: Call clsdifunto.MoveFirst()
  loc_BE9443: LitI4 1
  loc_BE9448: FLdPr Me
  loc_BE944B: MemLdRfVar from_stack_1.global_84
  loc_BE944E: FLdPr Me
  loc_BE9451: MemLdStr global_80
  loc_BE9454: LitI2_Byte 1
  loc_BE9456: FnUBound
  loc_BE9458: ForI4 var_130
  loc_BE945E: FLdRfVar var_134
  loc_BE9461: LitVarStr var_A8, "SeccDifu"
  loc_BE9466: PopAdLdVar
  loc_BE9467: FLdRfVar var_C8
  loc_BE946A: FLdRfVar var_BC
  loc_BE946D: FLdPr var_C0
  loc_BE9470: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE9475: FLdPr var_BC
  loc_BE9478:  = Me.Fields
  loc_BE947D: FLdPr var_C8
  loc_BE9480: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9485: LitI2_Byte 0
  loc_BE9487: LitVar_Missing var_F0
  loc_BE948A: LitI2_Byte 0
  loc_BE948C: FLdZeroAd var_134
  loc_BE948F: CVarAd
  loc_BE9493: PopAdLdVar
  loc_BE9494: FLdPr Me
  loc_BE9497: MemLdStr global_84
  loc_BE949A: FLdPr Me
  loc_BE949D: MemLdStr global_80
  loc_BE94A0: AryLock
  loc_BE94A3: Ary1LdPr
  loc_BE94A4: MemLdRfVar from_stack_1.global_0
  loc_BE94A7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE94AC: AryUnlock
  loc_BE94AF: FFreeAd var_BC = ""
  loc_BE94B6: FFreeVar var_E0 = ""
  loc_BE94BD: FLdRfVar var_134
  loc_BE94C0: LitVarStr var_A8, "Planta"
  loc_BE94C5: PopAdLdVar
  loc_BE94C6: FLdRfVar var_C8
  loc_BE94C9: FLdRfVar var_BC
  loc_BE94CC: FLdPr var_C0
  loc_BE94CF: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE94D4: FLdPr var_BC
  loc_BE94D7:  = Me.Fields
  loc_BE94DC: FLdPr var_C8
  loc_BE94DF: from_stack_2 = Me.Item(from_stack_1)
  loc_BE94E4: LitI2_Byte 0
  loc_BE94E6: LitVar_Missing var_F0
  loc_BE94E9: LitI2_Byte 0
  loc_BE94EB: FLdZeroAd var_134
  loc_BE94EE: CVarAd
  loc_BE94F2: PopAdLdVar
  loc_BE94F3: FLdPr Me
  loc_BE94F6: MemLdStr global_84
  loc_BE94F9: FLdPr Me
  loc_BE94FC: MemLdStr global_80
  loc_BE94FF: AryLock
  loc_BE9502: Ary1LdPr
  loc_BE9503: MemLdRfVar from_stack_1.global_4
  loc_BE9506: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE950B: AryUnlock
  loc_BE950E: FFreeAd var_BC = ""
  loc_BE9515: FFreeVar var_E0 = ""
  loc_BE951C: FLdRfVar var_134
  loc_BE951F: LitVarStr var_A8, "NumeDifu"
  loc_BE9524: PopAdLdVar
  loc_BE9525: FLdRfVar var_C8
  loc_BE9528: FLdRfVar var_BC
  loc_BE952B: FLdPr var_C0
  loc_BE952E: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE9533: FLdPr var_BC
  loc_BE9536:  = Me.Fields
  loc_BE953B: FLdPr var_C8
  loc_BE953E: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9543: LitI2_Byte 0
  loc_BE9545: LitVar_Missing var_F0
  loc_BE9548: LitI2_Byte 0
  loc_BE954A: FLdZeroAd var_134
  loc_BE954D: CVarAd
  loc_BE9551: PopAdLdVar
  loc_BE9552: FLdPr Me
  loc_BE9555: MemLdStr global_84
  loc_BE9558: FLdPr Me
  loc_BE955B: MemLdStr global_80
  loc_BE955E: AryLock
  loc_BE9561: Ary1LdPr
  loc_BE9562: MemLdRfVar from_stack_1.global_8
  loc_BE9565: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE956A: AryUnlock
  loc_BE956D: FFreeAd var_BC = ""
  loc_BE9574: FFreeVar var_E0 = ""
  loc_BE957B: FLdRfVar var_134
  loc_BE957E: LitVarStr var_A8, "FilaDifu"
  loc_BE9583: PopAdLdVar
  loc_BE9584: FLdRfVar var_C8
  loc_BE9587: FLdRfVar var_BC
  loc_BE958A: FLdPr var_C0
  loc_BE958D: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE9592: FLdPr var_BC
  loc_BE9595:  = Me.Fields
  loc_BE959A: FLdPr var_C8
  loc_BE959D: from_stack_2 = Me.Item(from_stack_1)
  loc_BE95A2: LitI2_Byte 0
  loc_BE95A4: LitVar_Missing var_F0
  loc_BE95A7: LitI2_Byte 0
  loc_BE95A9: FLdZeroAd var_134
  loc_BE95AC: CVarAd
  loc_BE95B0: PopAdLdVar
  loc_BE95B1: FLdPr Me
  loc_BE95B4: MemLdStr global_84
  loc_BE95B7: FLdPr Me
  loc_BE95BA: MemLdStr global_80
  loc_BE95BD: AryLock
  loc_BE95C0: Ary1LdPr
  loc_BE95C1: MemLdRfVar from_stack_1.global_12
  loc_BE95C4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE95C9: AryUnlock
  loc_BE95CC: FFreeAd var_BC = ""
  loc_BE95D3: FFreeVar var_E0 = ""
  loc_BE95DA: FLdRfVar var_134
  loc_BE95DD: LitVarStr var_A8, "CodiDifu"
  loc_BE95E2: PopAdLdVar
  loc_BE95E3: FLdRfVar var_C8
  loc_BE95E6: FLdRfVar var_BC
  loc_BE95E9: FLdPr var_C0
  loc_BE95EC: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE95F1: FLdPr var_BC
  loc_BE95F4:  = Me.Fields
  loc_BE95F9: FLdPr var_C8
  loc_BE95FC: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9601: LitI2_Byte 0
  loc_BE9603: LitVar_Missing var_F0
  loc_BE9606: LitI2_Byte 0
  loc_BE9608: FLdZeroAd var_134
  loc_BE960B: CVarAd
  loc_BE960F: PopAdLdVar
  loc_BE9610: FLdPr Me
  loc_BE9613: MemLdStr global_84
  loc_BE9616: FLdPr Me
  loc_BE9619: MemLdStr global_80
  loc_BE961C: AryLock
  loc_BE961F: Ary1LdPr
  loc_BE9620: MemLdRfVar from_stack_1.global_16
  loc_BE9623: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE9628: AryUnlock
  loc_BE962B: FFreeAd var_BC = ""
  loc_BE9632: FFreeVar var_E0 = ""
  loc_BE9639: FLdRfVar var_134
  loc_BE963C: LitVarStr var_A8, "FeveDifu"
  loc_BE9641: PopAdLdVar
  loc_BE9642: FLdRfVar var_C8
  loc_BE9645: FLdRfVar var_BC
  loc_BE9648: FLdPr var_C0
  loc_BE964B: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE9650: FLdPr var_BC
  loc_BE9653:  = Me.Fields
  loc_BE9658: FLdPr var_C8
  loc_BE965B: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9660: LitI2_Byte 0
  loc_BE9662: LitVar_Missing var_F0
  loc_BE9665: LitI2_Byte 0
  loc_BE9667: FLdZeroAd var_134
  loc_BE966A: CVarAd
  loc_BE966E: PopAdLdVar
  loc_BE966F: FLdPr Me
  loc_BE9672: MemLdStr global_84
  loc_BE9675: FLdPr Me
  loc_BE9678: MemLdStr global_80
  loc_BE967B: AryLock
  loc_BE967E: Ary1LdPr
  loc_BE967F: MemLdRfVar from_stack_1.global_20
  loc_BE9682: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE9687: AryUnlock
  loc_BE968A: FFreeAd var_BC = ""
  loc_BE9691: FFreeVar var_E0 = ""
  loc_BE9698: FLdRfVar var_134
  loc_BE969B: LitVarStr var_A8, "DetaPers"
  loc_BE96A0: PopAdLdVar
  loc_BE96A1: FLdRfVar var_C8
  loc_BE96A4: FLdRfVar var_BC
  loc_BE96A7: FLdPr var_C0
  loc_BE96AA: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE96AF: FLdPr var_BC
  loc_BE96B2:  = Me.Fields
  loc_BE96B7: FLdPr var_C8
  loc_BE96BA: from_stack_2 = Me.Item(from_stack_1)
  loc_BE96BF: LitI2_Byte 0
  loc_BE96C1: LitVar_Missing var_F0
  loc_BE96C4: LitI2_Byte 0
  loc_BE96C6: FLdZeroAd var_134
  loc_BE96C9: CVarAd
  loc_BE96CD: PopAdLdVar
  loc_BE96CE: FLdPr Me
  loc_BE96D1: MemLdStr global_84
  loc_BE96D4: FLdPr Me
  loc_BE96D7: MemLdStr global_80
  loc_BE96DA: AryLock
  loc_BE96DD: Ary1LdPr
  loc_BE96DE: MemLdRfVar from_stack_1.global_24
  loc_BE96E1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE96E6: AryUnlock
  loc_BE96E9: FFreeAd var_BC = ""
  loc_BE96F0: FFreeVar var_E0 = ""
  loc_BE96F7: FLdRfVar var_134
  loc_BE96FA: LitVarStr var_A8, "DecaPost"
  loc_BE96FF: PopAdLdVar
  loc_BE9700: FLdRfVar var_C8
  loc_BE9703: FLdRfVar var_BC
  loc_BE9706: FLdPr var_C0
  loc_BE9709: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE970E: FLdPr var_BC
  loc_BE9711:  = Me.Fields
  loc_BE9716: FLdPr var_C8
  loc_BE9719: from_stack_2 = Me.Item(from_stack_1)
  loc_BE971E: LitI2_Byte 0
  loc_BE9720: LitVar_Missing var_F0
  loc_BE9723: LitI2_Byte 0
  loc_BE9725: FLdZeroAd var_134
  loc_BE9728: CVarAd
  loc_BE972C: PopAdLdVar
  loc_BE972D: FLdPr Me
  loc_BE9730: MemLdStr global_84
  loc_BE9733: FLdPr Me
  loc_BE9736: MemLdStr global_80
  loc_BE9739: AryLock
  loc_BE973C: Ary1LdPr
  loc_BE973D: MemLdRfVar from_stack_1.global_28
  loc_BE9740: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE9745: AryUnlock
  loc_BE9748: FFreeAd var_BC = ""
  loc_BE974F: FFreeVar var_E0 = ""
  loc_BE9756: FLdRfVar var_134
  loc_BE9759: LitVarStr var_A8, "NumePost"
  loc_BE975E: PopAdLdVar
  loc_BE975F: FLdRfVar var_C8
  loc_BE9762: FLdRfVar var_BC
  loc_BE9765: FLdPr var_C0
  loc_BE9768: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE976D: FLdPr var_BC
  loc_BE9770:  = Me.Fields
  loc_BE9775: FLdPr var_C8
  loc_BE9778: from_stack_2 = Me.Item(from_stack_1)
  loc_BE977D: LitI2_Byte 0
  loc_BE977F: LitVar_Missing var_F0
  loc_BE9782: LitI2_Byte 0
  loc_BE9784: FLdZeroAd var_134
  loc_BE9787: CVarAd
  loc_BE978B: PopAdLdVar
  loc_BE978C: FLdPr Me
  loc_BE978F: MemLdStr global_84
  loc_BE9792: FLdPr Me
  loc_BE9795: MemLdStr global_80
  loc_BE9798: AryLock
  loc_BE979B: Ary1LdPr
  loc_BE979C: MemLdRfVar from_stack_1.global_32
  loc_BE979F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE97A4: AryUnlock
  loc_BE97A7: FFreeAd var_BC = ""
  loc_BE97AE: FFreeVar var_E0 = ""
  loc_BE97B5: FLdRfVar var_134
  loc_BE97B8: LitVarStr var_A8, "DetaDedi"
  loc_BE97BD: PopAdLdVar
  loc_BE97BE: FLdRfVar var_C8
  loc_BE97C1: FLdRfVar var_BC
  loc_BE97C4: FLdPr var_C0
  loc_BE97C7: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE97CC: FLdPr var_BC
  loc_BE97CF:  = Me.Fields
  loc_BE97D4: FLdPr var_C8
  loc_BE97D7: from_stack_2 = Me.Item(from_stack_1)
  loc_BE97DC: LitI2_Byte 0
  loc_BE97DE: LitVar_Missing var_F0
  loc_BE97E1: LitI2_Byte 0
  loc_BE97E3: FLdZeroAd var_134
  loc_BE97E6: CVarAd
  loc_BE97EA: PopAdLdVar
  loc_BE97EB: FLdPr Me
  loc_BE97EE: MemLdStr global_84
  loc_BE97F1: FLdPr Me
  loc_BE97F4: MemLdStr global_80
  loc_BE97F7: AryLock
  loc_BE97FA: Ary1LdPr
  loc_BE97FB: MemLdRfVar from_stack_1.global_36
  loc_BE97FE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE9803: AryUnlock
  loc_BE9806: FFreeAd var_BC = ""
  loc_BE980D: FFreeVar var_E0 = ""
  loc_BE9814: FLdRfVar var_134
  loc_BE9817: LitVarStr var_A8, "FefaDedi"
  loc_BE981C: PopAdLdVar
  loc_BE981D: FLdRfVar var_C8
  loc_BE9820: FLdRfVar var_BC
  loc_BE9823: FLdPr var_C0
  loc_BE9826: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE982B: FLdPr var_BC
  loc_BE982E:  = Me.Fields
  loc_BE9833: FLdPr var_C8
  loc_BE9836: from_stack_2 = Me.Item(from_stack_1)
  loc_BE983B: LitI2_Byte 0
  loc_BE983D: LitVar_Missing var_F0
  loc_BE9840: LitI2_Byte 0
  loc_BE9842: FLdZeroAd var_134
  loc_BE9845: CVarAd
  loc_BE9849: PopAdLdVar
  loc_BE984A: FLdPr Me
  loc_BE984D: MemLdStr global_84
  loc_BE9850: FLdPr Me
  loc_BE9853: MemLdStr global_80
  loc_BE9856: AryLock
  loc_BE9859: Ary1LdPr
  loc_BE985A: MemLdRfVar from_stack_1.global_40
  loc_BE985D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE9862: AryUnlock
  loc_BE9865: FFreeAd var_BC = ""
  loc_BE986C: FFreeVar var_E0 = ""
  loc_BE9873: FLdRfVar var_134
  loc_BE9876: LitVarStr var_A8, "AnioDedi"
  loc_BE987B: PopAdLdVar
  loc_BE987C: FLdRfVar var_C8
  loc_BE987F: FLdRfVar var_BC
  loc_BE9882: FLdPr var_C0
  loc_BE9885: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BE988A: FLdPr var_BC
  loc_BE988D:  = Me.Fields
  loc_BE9892: FLdPr var_C8
  loc_BE9895: from_stack_2 = Me.Item(from_stack_1)
  loc_BE989A: LitI2_Byte 0
  loc_BE989C: LitVar_Missing var_F0
  loc_BE989F: LitI2_Byte 0
  loc_BE98A1: FLdZeroAd var_134
  loc_BE98A4: CVarAd
  loc_BE98A8: PopAdLdVar
  loc_BE98A9: FLdPr Me
  loc_BE98AC: MemLdStr global_84
  loc_BE98AF: FLdPr Me
  loc_BE98B2: MemLdStr global_80
  loc_BE98B5: AryLock
  loc_BE98B8: Ary1LdPr
  loc_BE98B9: MemLdRfVar from_stack_1.global_44
  loc_BE98BC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BE98C1: AryUnlock
  loc_BE98C4: FFreeAd var_BC = ""
  loc_BE98CB: FFreeVar var_E0 = ""
  loc_BE98D2: LitI2_Byte 1
  loc_BE98D4: PopTmpLdAd2 var_102
  loc_BE98D7: FLdPr var_C0
  loc_BE98DA: Call clsdifunto.Move(from_stack_1v)
  loc_BE98DF: FLdPr Me
  loc_BE98E2: MemLdRfVar from_stack_1.global_84
  loc_BE98E5: NextI4 var_130, loc_BE945E
  loc_BE98EA: LitNothing
  loc_BE98EC: FStAd var_C0 
  loc_BE98F0: LitI2_Byte &HFF
  loc_BE98F2: FLdPr Me
  loc_BE98F5: MemStI2 bGenerado
  loc_BE98F8: LitI4 0
  loc_BE98FD: CI2I4
  loc_BE98FE: FLdPr Me
  loc_BE9901: Me.MousePointer = from_stack_1
  loc_BE9906: LitVarStr var_A8, vbNullString
  loc_BE990B: PopAdLdVar
  loc_BE990C: FLdPr Me
  loc_BE990F: VCallAd Control_ID_statusBar
  loc_BE9912: FStAdFunc var_BC
  loc_BE9915: FLdPr var_BC
  loc_BE9918: LateIdSt
  loc_BE991D: FFree1Ad var_BC
  loc_BE9920: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B4A41C
  'Data Table: 4A7EC8
  loc_B4A0A8: FLdRfVar var_88
  loc_B4A0AB: LitI2_Byte 0
  loc_B4A0AD: LitI2_Byte &HFF
  loc_B4A0AF: ImpAdLdI4 MemVar_D93C84
  loc_B4A0B2: FLdPr Me
  loc_B4A0B5: MemLdRfVar from_stack_1.global_56
  loc_B4A0B8: NewIfNullPr IFileSystem3
  loc_B4A0BB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B4A0C0: ILdRf var_88
  loc_B4A0C3: FLdPr Me
  loc_B4A0C6: MemStVarAd
  loc_B4A0CA: FFree1Ad var_88
  loc_B4A0CD: LitI2_Byte &HFF
  loc_B4A0CF: ImpAdStI2 MemVar_D93C8A
  loc_B4A0D2: Call Proc_200_25_C1580C()
  loc_B4A0D7: LitI4 1
  loc_B4A0DC: FLdPr Me
  loc_B4A0DF: MemLdRfVar from_stack_1.global_84
  loc_B4A0E2: FLdPr Me
  loc_B4A0E5: MemLdStr global_80
  loc_B4A0E8: LitI2_Byte 1
  loc_B4A0EA: FnUBound
  loc_B4A0EC: ForI4 var_90
  loc_B4A0F2: FLdPr Me
  loc_B4A0F5: MemLdStr global_84
  loc_B4A0F8: FLdPr Me
  loc_B4A0FB: MemLdStr global_80
  loc_B4A0FE: AryLock
  loc_B4A101: Ary1LdRf
  loc_B4A102: FStR4 var_98
  loc_B4A105: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B4A10A: PopAdLdVar
  loc_B4A10B: FLdPr Me
  loc_B4A10E: MemLdRfVar from_stack_1.global_60
  loc_B4A111: LdPrVar
  loc_B4A113: LateMemCall
  loc_B4A119: LitStr vbNullString
  loc_B4A11C: LitI2_Byte 0
  loc_B4A11E: LitI2_Byte 0
  loc_B4A120: LitI2_Byte 0
  loc_B4A122: LitStr "right"
  loc_B4A125: FMemLdR4 var_98(0)
  loc_B4A12A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A12F: CVarStr var_C8
  loc_B4A132: PopAdLdVar
  loc_B4A133: FLdPr Me
  loc_B4A136: MemLdRfVar from_stack_1.global_60
  loc_B4A139: LdPrVar
  loc_B4A13B: LateMemCall
  loc_B4A141: FFree1Var var_C8 = ""
  loc_B4A144: LitStr vbNullString
  loc_B4A147: LitI2_Byte 0
  loc_B4A149: LitI2_Byte 0
  loc_B4A14B: LitI2_Byte 0
  loc_B4A14D: LitStr "right"
  loc_B4A150: FMemLdR4 var_98(4)
  loc_B4A155: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A15A: CVarStr var_C8
  loc_B4A15D: PopAdLdVar
  loc_B4A15E: FLdPr Me
  loc_B4A161: MemLdRfVar from_stack_1.global_60
  loc_B4A164: LdPrVar
  loc_B4A166: LateMemCall
  loc_B4A16C: FFree1Var var_C8 = ""
  loc_B4A16F: LitStr vbNullString
  loc_B4A172: LitI2_Byte 0
  loc_B4A174: LitI2_Byte 0
  loc_B4A176: LitI2_Byte 0
  loc_B4A178: LitStr "right"
  loc_B4A17B: FMemLdR4 var_98(8)
  loc_B4A180: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A185: CVarStr var_C8
  loc_B4A188: PopAdLdVar
  loc_B4A189: FLdPr Me
  loc_B4A18C: MemLdRfVar from_stack_1.global_60
  loc_B4A18F: LdPrVar
  loc_B4A191: LateMemCall
  loc_B4A197: FFree1Var var_C8 = ""
  loc_B4A19A: LitStr vbNullString
  loc_B4A19D: LitI2_Byte 0
  loc_B4A19F: LitI2_Byte 0
  loc_B4A1A1: LitI2_Byte 0
  loc_B4A1A3: LitStr "right"
  loc_B4A1A6: FMemLdR4 var_98(12)
  loc_B4A1AB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A1B0: CVarStr var_C8
  loc_B4A1B3: PopAdLdVar
  loc_B4A1B4: FLdPr Me
  loc_B4A1B7: MemLdRfVar from_stack_1.global_60
  loc_B4A1BA: LdPrVar
  loc_B4A1BC: LateMemCall
  loc_B4A1C2: FFree1Var var_C8 = ""
  loc_B4A1C5: LitStr vbNullString
  loc_B4A1C8: LitI2_Byte 0
  loc_B4A1CA: LitI2_Byte 0
  loc_B4A1CC: LitI2_Byte 0
  loc_B4A1CE: LitStr "right"
  loc_B4A1D1: FMemLdR4 var_98(16)
  loc_B4A1D6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A1DB: CVarStr var_C8
  loc_B4A1DE: PopAdLdVar
  loc_B4A1DF: FLdPr Me
  loc_B4A1E2: MemLdRfVar from_stack_1.global_60
  loc_B4A1E5: LdPrVar
  loc_B4A1E7: LateMemCall
  loc_B4A1ED: FFree1Var var_C8 = ""
  loc_B4A1F0: LitStr vbNullString
  loc_B4A1F3: LitI2_Byte 0
  loc_B4A1F5: LitI2_Byte 0
  loc_B4A1F7: LitI2_Byte 0
  loc_B4A1F9: LitStr "center"
  loc_B4A1FC: FMemLdR4 var_98(20)
  loc_B4A201: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A206: CVarStr var_C8
  loc_B4A209: PopAdLdVar
  loc_B4A20A: FLdPr Me
  loc_B4A20D: MemLdRfVar from_stack_1.global_60
  loc_B4A210: LdPrVar
  loc_B4A212: LateMemCall
  loc_B4A218: FFree1Var var_C8 = ""
  loc_B4A21B: LitStr vbNullString
  loc_B4A21E: LitI2_Byte 0
  loc_B4A220: LitI2_Byte 0
  loc_B4A222: LitI2_Byte 0
  loc_B4A224: LitStr "left"
  loc_B4A227: FMemLdR4 var_98(24)
  loc_B4A22C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A231: CVarStr var_C8
  loc_B4A234: PopAdLdVar
  loc_B4A235: FLdPr Me
  loc_B4A238: MemLdRfVar from_stack_1.global_60
  loc_B4A23B: LdPrVar
  loc_B4A23D: LateMemCall
  loc_B4A243: FFree1Var var_C8 = ""
  loc_B4A246: LitStr vbNullString
  loc_B4A249: LitI2_Byte 0
  loc_B4A24B: LitI2_Byte 0
  loc_B4A24D: LitI2_Byte 0
  loc_B4A24F: LitStr "left"
  loc_B4A252: FMemLdR4 var_98(28)
  loc_B4A257: LitStr " "
  loc_B4A25A: ConcatStr
  loc_B4A25B: FStStrNoPop var_CC
  loc_B4A25E: FMemLdR4 var_98(32)
  loc_B4A263: ConcatStr
  loc_B4A264: FStStrNoPop var_D0
  loc_B4A267: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A26C: CVarStr var_C8
  loc_B4A26F: PopAdLdVar
  loc_B4A270: FLdPr Me
  loc_B4A273: MemLdRfVar from_stack_1.global_60
  loc_B4A276: LdPrVar
  loc_B4A278: LateMemCall
  loc_B4A27E: FFreeStr var_CC = ""
  loc_B4A285: FFree1Var var_C8 = ""
  loc_B4A288: LitStr vbNullString
  loc_B4A28B: LitI2_Byte 0
  loc_B4A28D: LitI2_Byte 0
  loc_B4A28F: LitI2_Byte 0
  loc_B4A291: LitStr "left"
  loc_B4A294: FMemLdR4 var_98(36)
  loc_B4A299: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A29E: CVarStr var_C8
  loc_B4A2A1: PopAdLdVar
  loc_B4A2A2: FLdPr Me
  loc_B4A2A5: MemLdRfVar from_stack_1.global_60
  loc_B4A2A8: LdPrVar
  loc_B4A2AA: LateMemCall
  loc_B4A2B0: FFree1Var var_C8 = ""
  loc_B4A2B3: LitStr vbNullString
  loc_B4A2B6: LitI2_Byte 0
  loc_B4A2B8: LitI2_Byte 0
  loc_B4A2BA: LitI2_Byte 0
  loc_B4A2BC: LitStr "center"
  loc_B4A2BF: FMemLdR4 var_98(40)
  loc_B4A2C4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A2C9: CVarStr var_C8
  loc_B4A2CC: PopAdLdVar
  loc_B4A2CD: FLdPr Me
  loc_B4A2D0: MemLdRfVar from_stack_1.global_60
  loc_B4A2D3: LdPrVar
  loc_B4A2D5: LateMemCall
  loc_B4A2DB: FFree1Var var_C8 = ""
  loc_B4A2DE: LitStr vbNullString
  loc_B4A2E1: LitI2_Byte 0
  loc_B4A2E3: LitI2_Byte 0
  loc_B4A2E5: LitI2_Byte 0
  loc_B4A2E7: LitStr "right"
  loc_B4A2EA: FMemLdR4 var_98(44)
  loc_B4A2EF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4A2F4: CVarStr var_C8
  loc_B4A2F7: PopAdLdVar
  loc_B4A2F8: FLdPr Me
  loc_B4A2FB: MemLdRfVar from_stack_1.global_60
  loc_B4A2FE: LdPrVar
  loc_B4A300: LateMemCall
  loc_B4A306: FFree1Var var_C8 = ""
  loc_B4A309: LitVarStr var_A8, "     </tr>"
  loc_B4A30E: PopAdLdVar
  loc_B4A30F: FLdPr Me
  loc_B4A312: MemLdRfVar from_stack_1.global_60
  loc_B4A315: LdPrVar
  loc_B4A317: LateMemCall
  loc_B4A31D: LitI4 0
  loc_B4A322: FStR4 var_98
  loc_B4A325: AryUnlock
  loc_B4A328: FLdPr Me
  loc_B4A32B: MemLdRfVar from_stack_1.global_84
  loc_B4A32E: NextI4 var_90, loc_B4A0F2
  loc_B4A333: LitVarStr var_A8, "  <tr align=""center"" class=""Totales"">"
  loc_B4A338: PopAdLdVar
  loc_B4A339: FLdPr Me
  loc_B4A33C: MemLdRfVar from_stack_1.global_60
  loc_B4A33F: LdPrVar
  loc_B4A341: LateMemCall
  loc_B4A347: LitStr "    <th colspan=""11"">"
  loc_B4A34A: LitI4 -1
  loc_B4A34F: LitI4 0
  loc_B4A354: LitI4 -1
  loc_B4A359: LitI4 0
  loc_B4A35E: FLdPr Me
  loc_B4A361: MemLdStr global_80
  loc_B4A364: LitI2_Byte 1
  loc_B4A366: FnUBound
  loc_B4A368: CVarI4
  loc_B4A36C: ImpAdCallI2 FormatNumber(, , , , )
  loc_B4A371: FStStrNoPop var_CC
  loc_B4A374: ConcatStr
  loc_B4A375: FStStrNoPop var_D0
  loc_B4A378: LitStr " registro"
  loc_B4A37B: ConcatStr
  loc_B4A37C: CVarStr var_130
  loc_B4A37F: LitVarStr var_100, vbNullString
  loc_B4A384: FStVarCopyObj var_110
  loc_B4A387: FLdRfVar var_110
  loc_B4A38A: LitVarStr var_E0, "s"
  loc_B4A38F: FStVarCopyObj var_F0
  loc_B4A392: FLdRfVar var_F0
  loc_B4A395: FLdPr Me
  loc_B4A398: MemLdStr global_80
  loc_B4A39B: LitI2_Byte 1
  loc_B4A39D: FnUBound
  loc_B4A39F: LitI4 1
  loc_B4A3A4: GtI4
  loc_B4A3A5: CVarBoolI2 var_B8
  loc_B4A3A9: FLdRfVar var_120
  loc_B4A3AC: ImpAdCallFPR4  = IIf(, , )
  loc_B4A3B1: FLdRfVar var_120
  loc_B4A3B4: ConcatVar var_140
  loc_B4A3B8: LitVarStr var_150, ".</th>"
  loc_B4A3BD: ConcatVar var_160
  loc_B4A3C1: PopAdLdVar
  loc_B4A3C2: FLdPr Me
  loc_B4A3C5: MemLdRfVar from_stack_1.global_60
  loc_B4A3C8: LdPrVar
  loc_B4A3CA: LateMemCall
  loc_B4A3D0: FFreeStr var_CC = ""
  loc_B4A3D7: FFreeVar var_C8 = "": var_B8 = "": var_F0 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = ""
  loc_B4A3EA: LitVarStr var_A8, "  </tr>"
  loc_B4A3EF: PopAdLdVar
  loc_B4A3F0: FLdPr Me
  loc_B4A3F3: MemLdRfVar from_stack_1.global_60
  loc_B4A3F6: LdPrVar
  loc_B4A3F8: LateMemCall
  loc_B4A3FE: Call Proc_200_26_A0F078()
  loc_B4A403: FLdPr Me
  loc_B4A406: MemLdRfVar from_stack_1.global_60
  loc_B4A409: LdPrVar
  loc_B4A40B: LateMemCall
  loc_B4A411: LitStr vbNullString
  loc_B4A414: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B4A419: ExitProcHresult
End Sub

Private Function Proc_200_25_C1580C() 'C1580C
  'Data Table: 4A7EC8
  loc_C14E80: LitVarStr var_98, "<html>"
  loc_C14E85: PopAdLdVar
  loc_C14E86: FLdPr Me
  loc_C14E89: MemLdRfVar from_stack_1.global_60
  loc_C14E8C: LdPrVar
  loc_C14E8E: LateMemCall
  loc_C14E94: LitVarStr var_98, "<head>"
  loc_C14E99: PopAdLdVar
  loc_C14E9A: FLdPr Me
  loc_C14E9D: MemLdRfVar from_stack_1.global_60
  loc_C14EA0: LdPrVar
  loc_C14EA2: LateMemCall
  loc_C14EA8: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C14EAD: PopAdLdVar
  loc_C14EAE: FLdPr Me
  loc_C14EB1: MemLdRfVar from_stack_1.global_60
  loc_C14EB4: LdPrVar
  loc_C14EB6: LateMemCall
  loc_C14EBC: LitStr "<title>"
  loc_C14EBF: FLdRfVar var_AC
  loc_C14EC2: FLdPr Me
  loc_C14EC5:  = Me.Caption
  loc_C14ECA: ILdRf var_AC
  loc_C14ECD: ConcatStr
  loc_C14ECE: FStStrNoPop var_B0
  loc_C14ED1: LitStr "</title>"
  loc_C14ED4: ConcatStr
  loc_C14ED5: CVarStr var_C0
  loc_C14ED8: PopAdLdVar
  loc_C14ED9: FLdPr Me
  loc_C14EDC: MemLdRfVar from_stack_1.global_60
  loc_C14EDF: LdPrVar
  loc_C14EE1: LateMemCall
  loc_C14EE7: FFreeStr var_AC = ""
  loc_C14EEE: FFree1Var var_C0 = ""
  loc_C14EF1: LitVarStr var_98, "<style type=""text/css"">"
  loc_C14EF6: PopAdLdVar
  loc_C14EF7: FLdPr Me
  loc_C14EFA: MemLdRfVar from_stack_1.global_60
  loc_C14EFD: LdPrVar
  loc_C14EFF: LateMemCall
  loc_C14F05: LitVarStr var_98, ".Titulo1 {"
  loc_C14F0A: PopAdLdVar
  loc_C14F0B: FLdPr Me
  loc_C14F0E: MemLdRfVar from_stack_1.global_60
  loc_C14F11: LdPrVar
  loc_C14F13: LateMemCall
  loc_C14F19: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C14F1E: PopAdLdVar
  loc_C14F1F: FLdPr Me
  loc_C14F22: MemLdRfVar from_stack_1.global_60
  loc_C14F25: LdPrVar
  loc_C14F27: LateMemCall
  loc_C14F2D: LitVarStr var_98, " font-size: 18px;"
  loc_C14F32: PopAdLdVar
  loc_C14F33: FLdPr Me
  loc_C14F36: MemLdRfVar from_stack_1.global_60
  loc_C14F39: LdPrVar
  loc_C14F3B: LateMemCall
  loc_C14F41: LitVarStr var_98, " font-weight: bold;"
  loc_C14F46: PopAdLdVar
  loc_C14F47: FLdPr Me
  loc_C14F4A: MemLdRfVar from_stack_1.global_60
  loc_C14F4D: LdPrVar
  loc_C14F4F: LateMemCall
  loc_C14F55: LitVarStr var_98, "}"
  loc_C14F5A: PopAdLdVar
  loc_C14F5B: FLdPr Me
  loc_C14F5E: MemLdRfVar from_stack_1.global_60
  loc_C14F61: LdPrVar
  loc_C14F63: LateMemCall
  loc_C14F69: LitVarStr var_98, ".Titulo2 {"
  loc_C14F6E: PopAdLdVar
  loc_C14F6F: FLdPr Me
  loc_C14F72: MemLdRfVar from_stack_1.global_60
  loc_C14F75: LdPrVar
  loc_C14F77: LateMemCall
  loc_C14F7D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C14F82: PopAdLdVar
  loc_C14F83: FLdPr Me
  loc_C14F86: MemLdRfVar from_stack_1.global_60
  loc_C14F89: LdPrVar
  loc_C14F8B: LateMemCall
  loc_C14F91: LitVarStr var_98, " font-size: 14px;"
  loc_C14F96: PopAdLdVar
  loc_C14F97: FLdPr Me
  loc_C14F9A: MemLdRfVar from_stack_1.global_60
  loc_C14F9D: LdPrVar
  loc_C14F9F: LateMemCall
  loc_C14FA5: LitVarStr var_98, " font-weight: bold;"
  loc_C14FAA: PopAdLdVar
  loc_C14FAB: FLdPr Me
  loc_C14FAE: MemLdRfVar from_stack_1.global_60
  loc_C14FB1: LdPrVar
  loc_C14FB3: LateMemCall
  loc_C14FB9: LitVarStr var_98, "}"
  loc_C14FBE: PopAdLdVar
  loc_C14FBF: FLdPr Me
  loc_C14FC2: MemLdRfVar from_stack_1.global_60
  loc_C14FC5: LdPrVar
  loc_C14FC7: LateMemCall
  loc_C14FCD: LitVarStr var_98, ".Normal {"
  loc_C14FD2: PopAdLdVar
  loc_C14FD3: FLdPr Me
  loc_C14FD6: MemLdRfVar from_stack_1.global_60
  loc_C14FD9: LdPrVar
  loc_C14FDB: LateMemCall
  loc_C14FE1: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C14FE6: PopAdLdVar
  loc_C14FE7: FLdPr Me
  loc_C14FEA: MemLdRfVar from_stack_1.global_60
  loc_C14FED: LdPrVar
  loc_C14FEF: LateMemCall
  loc_C14FF5: LitVarStr var_98, " font-size: 12px;"
  loc_C14FFA: PopAdLdVar
  loc_C14FFB: FLdPr Me
  loc_C14FFE: MemLdRfVar from_stack_1.global_60
  loc_C15001: LdPrVar
  loc_C15003: LateMemCall
  loc_C15009: LitVarStr var_98, " font-style: normal;"
  loc_C1500E: PopAdLdVar
  loc_C1500F: FLdPr Me
  loc_C15012: MemLdRfVar from_stack_1.global_60
  loc_C15015: LdPrVar
  loc_C15017: LateMemCall
  loc_C1501D: LitVarStr var_98, " font-weight: normal;"
  loc_C15022: PopAdLdVar
  loc_C15023: FLdPr Me
  loc_C15026: MemLdRfVar from_stack_1.global_60
  loc_C15029: LdPrVar
  loc_C1502B: LateMemCall
  loc_C15031: LitVarStr var_98, " font-variant: normal;"
  loc_C15036: PopAdLdVar
  loc_C15037: FLdPr Me
  loc_C1503A: MemLdRfVar from_stack_1.global_60
  loc_C1503D: LdPrVar
  loc_C1503F: LateMemCall
  loc_C15045: LitVarStr var_98, "}"
  loc_C1504A: PopAdLdVar
  loc_C1504B: FLdPr Me
  loc_C1504E: MemLdRfVar from_stack_1.global_60
  loc_C15051: LdPrVar
  loc_C15053: LateMemCall
  loc_C15059: LitVarStr var_98, ".Encabezado {"
  loc_C1505E: PopAdLdVar
  loc_C1505F: FLdPr Me
  loc_C15062: MemLdRfVar from_stack_1.global_60
  loc_C15065: LdPrVar
  loc_C15067: LateMemCall
  loc_C1506D: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_C15072: PopAdLdVar
  loc_C15073: FLdPr Me
  loc_C15076: MemLdRfVar from_stack_1.global_60
  loc_C15079: LdPrVar
  loc_C1507B: LateMemCall
  loc_C15081: LitVarStr var_98, " font-size: 11px;"
  loc_C15086: PopAdLdVar
  loc_C15087: FLdPr Me
  loc_C1508A: MemLdRfVar from_stack_1.global_60
  loc_C1508D: LdPrVar
  loc_C1508F: LateMemCall
  loc_C15095: LitVarStr var_98, " font-weight: bold;"
  loc_C1509A: PopAdLdVar
  loc_C1509B: FLdPr Me
  loc_C1509E: MemLdRfVar from_stack_1.global_60
  loc_C150A1: LdPrVar
  loc_C150A3: LateMemCall
  loc_C150A9: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_C150AE: PopAdLdVar
  loc_C150AF: FLdPr Me
  loc_C150B2: MemLdRfVar from_stack_1.global_60
  loc_C150B5: LdPrVar
  loc_C150B7: LateMemCall
  loc_C150BD: LitVarStr var_98, "}"
  loc_C150C2: PopAdLdVar
  loc_C150C3: FLdPr Me
  loc_C150C6: MemLdRfVar from_stack_1.global_60
  loc_C150C9: LdPrVar
  loc_C150CB: LateMemCall
  loc_C150D1: LitVarStr var_98, ".LineaDato {"
  loc_C150D6: PopAdLdVar
  loc_C150D7: FLdPr Me
  loc_C150DA: MemLdRfVar from_stack_1.global_60
  loc_C150DD: LdPrVar
  loc_C150DF: LateMemCall
  loc_C150E5: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C150EA: PopAdLdVar
  loc_C150EB: FLdPr Me
  loc_C150EE: MemLdRfVar from_stack_1.global_60
  loc_C150F1: LdPrVar
  loc_C150F3: LateMemCall
  loc_C150F9: LitVarStr var_98, " font-size: 10px;"
  loc_C150FE: PopAdLdVar
  loc_C150FF: FLdPr Me
  loc_C15102: MemLdRfVar from_stack_1.global_60
  loc_C15105: LdPrVar
  loc_C15107: LateMemCall
  loc_C1510D: LitVarStr var_98, "}"
  loc_C15112: PopAdLdVar
  loc_C15113: FLdPr Me
  loc_C15116: MemLdRfVar from_stack_1.global_60
  loc_C15119: LdPrVar
  loc_C1511B: LateMemCall
  loc_C15121: LitVarStr var_98, ".Totales {"
  loc_C15126: PopAdLdVar
  loc_C15127: FLdPr Me
  loc_C1512A: MemLdRfVar from_stack_1.global_60
  loc_C1512D: LdPrVar
  loc_C1512F: LateMemCall
  loc_C15135: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C1513A: PopAdLdVar
  loc_C1513B: FLdPr Me
  loc_C1513E: MemLdRfVar from_stack_1.global_60
  loc_C15141: LdPrVar
  loc_C15143: LateMemCall
  loc_C15149: LitVarStr var_98, " font-size: 12px;"
  loc_C1514E: PopAdLdVar
  loc_C1514F: FLdPr Me
  loc_C15152: MemLdRfVar from_stack_1.global_60
  loc_C15155: LdPrVar
  loc_C15157: LateMemCall
  loc_C1515D: LitVarStr var_98, " font-weight: bold;"
  loc_C15162: PopAdLdVar
  loc_C15163: FLdPr Me
  loc_C15166: MemLdRfVar from_stack_1.global_60
  loc_C15169: LdPrVar
  loc_C1516B: LateMemCall
  loc_C15171: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C15176: PopAdLdVar
  loc_C15177: FLdPr Me
  loc_C1517A: MemLdRfVar from_stack_1.global_60
  loc_C1517D: LdPrVar
  loc_C1517F: LateMemCall
  loc_C15185: LitVarStr var_98, "}"
  loc_C1518A: PopAdLdVar
  loc_C1518B: FLdPr Me
  loc_C1518E: MemLdRfVar from_stack_1.global_60
  loc_C15191: LdPrVar
  loc_C15193: LateMemCall
  loc_C15199: LitVarStr var_98, ".SubTotales {"
  loc_C1519E: PopAdLdVar
  loc_C1519F: FLdPr Me
  loc_C151A2: MemLdRfVar from_stack_1.global_60
  loc_C151A5: LdPrVar
  loc_C151A7: LateMemCall
  loc_C151AD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C151B2: PopAdLdVar
  loc_C151B3: FLdPr Me
  loc_C151B6: MemLdRfVar from_stack_1.global_60
  loc_C151B9: LdPrVar
  loc_C151BB: LateMemCall
  loc_C151C1: LitVarStr var_98, " font-size: 10px;"
  loc_C151C6: PopAdLdVar
  loc_C151C7: FLdPr Me
  loc_C151CA: MemLdRfVar from_stack_1.global_60
  loc_C151CD: LdPrVar
  loc_C151CF: LateMemCall
  loc_C151D5: LitVarStr var_98, " font-weight: bold;"
  loc_C151DA: PopAdLdVar
  loc_C151DB: FLdPr Me
  loc_C151DE: MemLdRfVar from_stack_1.global_60
  loc_C151E1: LdPrVar
  loc_C151E3: LateMemCall
  loc_C151E9: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C151EE: PopAdLdVar
  loc_C151EF: FLdPr Me
  loc_C151F2: MemLdRfVar from_stack_1.global_60
  loc_C151F5: LdPrVar
  loc_C151F7: LateMemCall
  loc_C151FD: LitVarStr var_98, "}"
  loc_C15202: PopAdLdVar
  loc_C15203: FLdPr Me
  loc_C15206: MemLdRfVar from_stack_1.global_60
  loc_C15209: LdPrVar
  loc_C1520B: LateMemCall
  loc_C15211: LitVarStr var_98, ".Tilde {"
  loc_C15216: PopAdLdVar
  loc_C15217: FLdPr Me
  loc_C1521A: MemLdRfVar from_stack_1.global_60
  loc_C1521D: LdPrVar
  loc_C1521F: LateMemCall
  loc_C15225: LitVarStr var_98, " font-family: Wingdings;"
  loc_C1522A: PopAdLdVar
  loc_C1522B: FLdPr Me
  loc_C1522E: MemLdRfVar from_stack_1.global_60
  loc_C15231: LdPrVar
  loc_C15233: LateMemCall
  loc_C15239: LitVarStr var_98, " font-size: 12px;"
  loc_C1523E: PopAdLdVar
  loc_C1523F: FLdPr Me
  loc_C15242: MemLdRfVar from_stack_1.global_60
  loc_C15245: LdPrVar
  loc_C15247: LateMemCall
  loc_C1524D: LitVarStr var_98, "}"
  loc_C15252: PopAdLdVar
  loc_C15253: FLdPr Me
  loc_C15256: MemLdRfVar from_stack_1.global_60
  loc_C15259: LdPrVar
  loc_C1525B: LateMemCall
  loc_C15261: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_C15266: PopAdLdVar
  loc_C15267: FLdPr Me
  loc_C1526A: MemLdRfVar from_stack_1.global_60
  loc_C1526D: LdPrVar
  loc_C1526F: LateMemCall
  loc_C15275: LitVarStr var_98, "</style>"
  loc_C1527A: PopAdLdVar
  loc_C1527B: FLdPr Me
  loc_C1527E: MemLdRfVar from_stack_1.global_60
  loc_C15281: LdPrVar
  loc_C15283: LateMemCall
  loc_C15289: LitI4 0
  loc_C1528E: FStStrCopy var_B0
  loc_C15291: FLdRfVar var_B0
  loc_C15294: LitI4 0
  loc_C15299: FStStrCopy var_AC
  loc_C1529C: FLdRfVar var_AC
  loc_C1529F: LitI2_Byte &HFF
  loc_C152A1: PopTmpLdAd2 var_C2
  loc_C152A4: FLdPr Me
  loc_C152A7: MemLdRfVar from_stack_1.global_60
  loc_C152AA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C152AF: FFreeStr var_AC = ""
  loc_C152B6: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C152BB: PopAdLdVar
  loc_C152BC: FLdPr Me
  loc_C152BF: MemLdRfVar from_stack_1.global_60
  loc_C152C2: LdPrVar
  loc_C152C4: LateMemCall
  loc_C152CA: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_C152CF: PopAdLdVar
  loc_C152D0: FLdPr Me
  loc_C152D3: MemLdRfVar from_stack_1.global_60
  loc_C152D6: LdPrVar
  loc_C152D8: LateMemCall
  loc_C152DE: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C152E1: LitI2_Byte &H5F
  loc_C152E3: CStrUI1
  loc_C152E5: FStStrNoPop var_AC
  loc_C152E8: ConcatStr
  loc_C152E9: FStStrNoPop var_B0
  loc_C152EC: LitStr """ height="""
  loc_C152EF: ConcatStr
  loc_C152F0: FStStrNoPop var_C8
  loc_C152F3: LitI2_Byte &H3C
  loc_C152F5: CStrUI1
  loc_C152F7: FStStrNoPop var_CC
  loc_C152FA: ConcatStr
  loc_C152FB: FStStrNoPop var_D0
  loc_C152FE: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C15301: ConcatStr
  loc_C15302: FStStrNoPop var_D4
  loc_C15305: LitStr "Municipalidad de Guaymallén"
  loc_C15308: ConcatStr
  loc_C15309: FStStrNoPop var_D8
  loc_C1530C: LitStr "</p>"
  loc_C1530F: ConcatStr
  loc_C15310: CVarStr var_C0
  loc_C15313: PopAdLdVar
  loc_C15314: FLdPr Me
  loc_C15317: MemLdRfVar from_stack_1.global_60
  loc_C1531A: LdPrVar
  loc_C1531C: LateMemCall
  loc_C15322: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_C15333: FFree1Var var_C0 = ""
  loc_C15336: LitStr "    <p>"
  loc_C15339: FLdRfVar var_AC
  loc_C1533C: FLdPr Me
  loc_C1533F:  = Me.Caption
  loc_C15344: ILdRf var_AC
  loc_C15347: ConcatStr
  loc_C15348: FStStrNoPop var_B0
  loc_C1534B: LitStr "</p></th>"
  loc_C1534E: ConcatStr
  loc_C1534F: CVarStr var_C0
  loc_C15352: PopAdLdVar
  loc_C15353: FLdPr Me
  loc_C15356: MemLdRfVar from_stack_1.global_60
  loc_C15359: LdPrVar
  loc_C1535B: LateMemCall
  loc_C15361: FFreeStr var_AC = ""
  loc_C15368: FFree1Var var_C0 = ""
  loc_C1536B: LitVarStr var_98, "  </tr>"
  loc_C15370: PopAdLdVar
  loc_C15371: FLdPr Me
  loc_C15374: MemLdRfVar from_stack_1.global_60
  loc_C15377: LdPrVar
  loc_C15379: LateMemCall
  loc_C1537F: LitVarStr var_98, "  <tr>"
  loc_C15384: PopAdLdVar
  loc_C15385: FLdPr Me
  loc_C15388: MemLdRfVar from_stack_1.global_60
  loc_C1538B: LdPrVar
  loc_C1538D: LateMemCall
  loc_C15393: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_C15398: PopAdLdVar
  loc_C15399: FLdPr Me
  loc_C1539C: MemLdRfVar from_stack_1.global_60
  loc_C1539F: LdPrVar
  loc_C153A1: LateMemCall
  loc_C153A7: LitVarStr var_98, "  </tr>"
  loc_C153AC: PopAdLdVar
  loc_C153AD: FLdPr Me
  loc_C153B0: MemLdRfVar from_stack_1.global_60
  loc_C153B3: LdPrVar
  loc_C153B5: LateMemCall
  loc_C153BB: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_C153C0: PopAdLdVar
  loc_C153C1: FLdPr Me
  loc_C153C4: MemLdRfVar from_stack_1.global_60
  loc_C153C7: LdPrVar
  loc_C153C9: LateMemCall
  loc_C153CF: LitStr "    <td align=""left""><strong>Tipo de Sep.: </strong>"
  loc_C153D2: FLdRfVar var_AC
  loc_C153D5: FLdPr Me
  loc_C153D8: VCallAd Control_ID_CodiTiseTxt
  loc_C153DB: FStAdFunc var_DC
  loc_C153DE: FLdPr var_DC
  loc_C153E1:  = Me.Text
  loc_C153E6: ILdRf var_AC
  loc_C153E9: ConcatStr
  loc_C153EA: FStStrNoPop var_B0
  loc_C153ED: LitStr " - "
  loc_C153F0: ConcatStr
  loc_C153F1: FStStrNoPop var_CC
  loc_C153F4: FLdRfVar var_C8
  loc_C153F7: FLdPr Me
  loc_C153FA: VCallAd Control_ID_DetaTiseLbl
  loc_C153FD: FStAdFunc var_E0
  loc_C15400: FLdPr var_E0
  loc_C15403:  = Me.Caption
  loc_C15408: ILdRf var_C8
  loc_C1540B: ConcatStr
  loc_C1540C: FStStrNoPop var_D0
  loc_C1540F: LitStr "<br>"
  loc_C15412: ConcatStr
  loc_C15413: CVarStr var_C0
  loc_C15416: PopAdLdVar
  loc_C15417: FLdPr Me
  loc_C1541A: MemLdRfVar from_stack_1.global_60
  loc_C1541D: LdPrVar
  loc_C1541F: LateMemCall
  loc_C15425: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_C15432: FFreeAd var_DC = ""
  loc_C15439: FFree1Var var_C0 = ""
  loc_C1543C: FLdRfVar var_AC
  loc_C1543F: FLdPr Me
  loc_C15442: VCallAd Control_ID_SeccDifuTxt
  loc_C15445: FStAdFunc var_DC
  loc_C15448: FLdPr var_DC
  loc_C1544B:  = Me.Text
  loc_C15450: FLdRfVar var_B0
  loc_C15453: FLdPr Me
  loc_C15456: VCallAd Control_ID_SeccDifuTxt
  loc_C15459: FStAdFunc var_E0
  loc_C1545C: FLdPr var_E0
  loc_C1545F:  = Me.Text
  loc_C15464: FLdRfVar var_C8
  loc_C15467: FLdPr Me
  loc_C1546A: VCallAd Control_ID_PlanDifuCbo
  loc_C1546D: FStAdFunc var_124
  loc_C15470: FLdPr var_124
  loc_C15473:  = Me.Text
  loc_C15478: FLdRfVar var_CC
  loc_C1547B: FLdPr Me
  loc_C1547E: VCallAd Control_ID_CodiTiseTxt
  loc_C15481: FStAdFunc var_128
  loc_C15484: FLdPr var_128
  loc_C15487:  = Me.Text
  loc_C1548C: FLdRfVar var_D0
  loc_C1548F: FLdPr Me
  loc_C15492: VCallAd Control_ID_PlanDifuCbo
  loc_C15495: FStAdFunc var_12C
  loc_C15498: FLdPr var_12C
  loc_C1549B:  = Me.Text
  loc_C154A0: FLdRfVar var_D4
  loc_C154A3: FLdPr Me
  loc_C154A6: VCallAd Control_ID_NumeDifuTxt
  loc_C154A9: FStAdFunc var_190
  loc_C154AC: FLdPr var_190
  loc_C154AF:  = Me.Text
  loc_C154B4: FLdRfVar var_D8
  loc_C154B7: FLdPr Me
  loc_C154BA: VCallAd Control_ID_NumeDifuTxt
  loc_C154BD: FStAdFunc var_194
  loc_C154C0: FLdPr var_194
  loc_C154C3:  = Me.Text
  loc_C154C8: FLdRfVar var_1FC
  loc_C154CB: FLdPr Me
  loc_C154CE: VCallAd Control_ID_FilaDifuTxt
  loc_C154D1: FStAdFunc var_1F8
  loc_C154D4: FLdPr var_1F8
  loc_C154D7:  = Me.Text
  loc_C154DC: FLdRfVar var_204
  loc_C154DF: FLdPr Me
  loc_C154E2: VCallAd Control_ID_CodiTiseTxt
  loc_C154E5: FStAdFunc var_200
  loc_C154E8: FLdPr var_200
  loc_C154EB:  = Me.Text
  loc_C154F0: FLdRfVar var_20C
  loc_C154F3: FLdPr Me
  loc_C154F6: VCallAd Control_ID_FilaDifuTxt
  loc_C154F9: FStAdFunc var_208
  loc_C154FC: FLdPr var_208
  loc_C154FF:  = Me.Text
  loc_C15504: LitVarStr var_110, "                       <strong> "
  loc_C15509: LitVarStr var_A8, vbNullString
  loc_C1550E: FStVarCopyObj var_F0
  loc_C15511: FLdRfVar var_F0
  loc_C15514: LitStr "Sección o Sector: </strong>"
  loc_C15517: ILdRf var_B0
  loc_C1551A: ConcatStr
  loc_C1551B: CVarStr var_C0
  loc_C1551E: ILdRf var_AC
  loc_C15521: LitStr vbNullString
  loc_C15524: NeStr
  loc_C15526: CVarBoolI2 var_98
  loc_C1552A: FLdRfVar var_100
  loc_C1552D: ImpAdCallFPR4  = IIf(, , )
  loc_C15532: FLdRfVar var_100
  loc_C15535: ConcatVar var_120
  loc_C15539: LitVarStr var_15C, vbNullString
  loc_C1553E: FStVarCopyObj var_16C
  loc_C15541: FLdRfVar var_16C
  loc_C15544: LitStr "<strong>&nbsp;&nbsp;&nbsp;Planta: </strong>"
  loc_C15547: ILdRf var_D0
  loc_C1554A: ConcatStr
  loc_C1554B: CVarStr var_14C
  loc_C1554E: ILdRf var_C8
  loc_C15551: LitStr vbNullString
  loc_C15554: NeStr
  loc_C15556: ILdRf var_CC
  loc_C15559: CR8Str
  loc_C1555B: LitI2_Byte 3
  loc_C1555D: CR8I2
  loc_C1555E: LeR8
  loc_C1555F: AndI4
  loc_C15560: CVarBoolI2 var_13C
  loc_C15564: FLdRfVar var_17C
  loc_C15567: ImpAdCallFPR4  = IIf(, , )
  loc_C1556C: FLdRfVar var_17C
  loc_C1556F: ConcatVar var_18C
  loc_C15573: LitVarStr var_1C4, vbNullString
  loc_C15578: FStVarCopyObj var_1D4
  loc_C1557B: FLdRfVar var_1D4
  loc_C1557E: LitStr "<strong>&nbsp;&nbsp;&nbsp;Número: </strong>"
  loc_C15581: ILdRf var_D8
  loc_C15584: ConcatStr
  loc_C15585: CVarStr var_1B4
  loc_C15588: ILdRf var_D4
  loc_C1558B: LitStr vbNullString
  loc_C1558E: NeStr
  loc_C15590: CVarBoolI2 var_1A4
  loc_C15594: FLdRfVar var_1E4
  loc_C15597: ImpAdCallFPR4  = IIf(, , )
  loc_C1559C: FLdRfVar var_1E4
  loc_C1559F: ConcatVar var_1F4
  loc_C155A3: LitVarStr var_23C, vbNullString
  loc_C155A8: FStVarCopyObj var_24C
  loc_C155AB: FLdRfVar var_24C
  loc_C155AE: LitStr "<strong>&nbsp;&nbsp;&nbsp;Fila: </strong>"
  loc_C155B1: ILdRf var_20C
  loc_C155B4: ConcatStr
  loc_C155B5: CVarStr var_22C
  loc_C155B8: ILdRf var_1FC
  loc_C155BB: LitStr vbNullString
  loc_C155BE: NeStr
  loc_C155C0: ILdRf var_204
  loc_C155C3: CR8Str
  loc_C155C5: LitI2_Byte 3
  loc_C155C7: CR8I2
  loc_C155C8: LeR8
  loc_C155C9: AndI4
  loc_C155CA: CVarBoolI2 var_21C
  loc_C155CE: FLdRfVar var_25C
  loc_C155D1: ImpAdCallFPR4  = IIf(, , )
  loc_C155D6: FLdRfVar var_25C
  loc_C155D9: ConcatVar var_26C
  loc_C155DD: LitVarStr var_27C, "</td>"
  loc_C155E2: ConcatVar var_28C
  loc_C155E6: PopAdLdVar
  loc_C155E7: FLdPr Me
  loc_C155EA: MemLdRfVar from_stack_1.global_60
  loc_C155ED: LdPrVar
  loc_C155EF: LateMemCall
  loc_C155F5: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_1FC = "": var_204 = ""
  loc_C1560C: FFreeAd var_DC = "": var_E0 = "": var_124 = "": var_128 = "": var_12C = "": var_190 = "": var_194 = "": var_1F8 = "": var_200 = ""
  loc_C15623: FFreeVar var_98 = "": var_C0 = "": var_F0 = "": var_100 = "": var_13C = "": var_14C = "": var_16C = "": var_120 = "": var_17C = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_18C = "": var_1E4 = "": var_21C = "": var_22C = "": var_24C = "": var_1F4 = "": var_25C = "": var_26C = ""
  loc_C15650: LitVarStr var_98, "  </tr>"
  loc_C15655: PopAdLdVar
  loc_C15656: FLdPr Me
  loc_C15659: MemLdRfVar from_stack_1.global_60
  loc_C1565C: LdPrVar
  loc_C1565E: LateMemCall
  loc_C15664: LitVarStr var_98, "</table>"
  loc_C15669: PopAdLdVar
  loc_C1566A: FLdPr Me
  loc_C1566D: MemLdRfVar from_stack_1.global_60
  loc_C15670: LdPrVar
  loc_C15672: LateMemCall
  loc_C15678: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C1567D: PopAdLdVar
  loc_C1567E: FLdPr Me
  loc_C15681: MemLdRfVar from_stack_1.global_60
  loc_C15684: LdPrVar
  loc_C15686: LateMemCall
  loc_C1568C: LitVarStr var_98, "  <thead>"
  loc_C15691: PopAdLdVar
  loc_C15692: FLdPr Me
  loc_C15695: MemLdRfVar from_stack_1.global_60
  loc_C15698: LdPrVar
  loc_C1569A: LateMemCall
  loc_C156A0: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C156A5: PopAdLdVar
  loc_C156A6: FLdPr Me
  loc_C156A9: MemLdRfVar from_stack_1.global_60
  loc_C156AC: LdPrVar
  loc_C156AE: LateMemCall
  loc_C156B4: LitVarStr var_98, "    <th rowspan=""2"">Sección<br>o Sector</th>"
  loc_C156B9: PopAdLdVar
  loc_C156BA: FLdPr Me
  loc_C156BD: MemLdRfVar from_stack_1.global_60
  loc_C156C0: LdPrVar
  loc_C156C2: LateMemCall
  loc_C156C8: LitVarStr var_98, "    <th rowspan=""2"">Planta</th>"
  loc_C156CD: PopAdLdVar
  loc_C156CE: FLdPr Me
  loc_C156D1: MemLdRfVar from_stack_1.global_60
  loc_C156D4: LdPrVar
  loc_C156D6: LateMemCall
  loc_C156DC: LitVarStr var_98, "    <th rowspan=""2"">Numero</th>"
  loc_C156E1: PopAdLdVar
  loc_C156E2: FLdPr Me
  loc_C156E5: MemLdRfVar from_stack_1.global_60
  loc_C156E8: LdPrVar
  loc_C156EA: LateMemCall
  loc_C156F0: LitVarStr var_98, "    <th rowspan=""2"">Fila</th>"
  loc_C156F5: PopAdLdVar
  loc_C156F6: FLdPr Me
  loc_C156F9: MemLdRfVar from_stack_1.global_60
  loc_C156FC: LdPrVar
  loc_C156FE: LateMemCall
  loc_C15704: LitVarStr var_98, "    <th rowspan=""2"">Código</th>"
  loc_C15709: PopAdLdVar
  loc_C1570A: FLdPr Me
  loc_C1570D: MemLdRfVar from_stack_1.global_60
  loc_C15710: LdPrVar
  loc_C15712: LateMemCall
  loc_C15718: LitVarStr var_98, "    <th rowspan=""2"">Vto. Conc.</th>"
  loc_C1571D: PopAdLdVar
  loc_C1571E: FLdPr Me
  loc_C15721: MemLdRfVar from_stack_1.global_60
  loc_C15724: LdPrVar
  loc_C15726: LateMemCall
  loc_C1572C: LitVarStr var_98, "    <th colspan=""2"">Datos del Titular</th>"
  loc_C15731: PopAdLdVar
  loc_C15732: FLdPr Me
  loc_C15735: MemLdRfVar from_stack_1.global_60
  loc_C15738: LdPrVar
  loc_C1573A: LateMemCall
  loc_C15740: LitVarStr var_98, "    <th colspan=""3"">Datos del Difunto</th>"
  loc_C15745: PopAdLdVar
  loc_C15746: FLdPr Me
  loc_C15749: MemLdRfVar from_stack_1.global_60
  loc_C1574C: LdPrVar
  loc_C1574E: LateMemCall
  loc_C15754: LitVarStr var_98, "  </tr>"
  loc_C15759: PopAdLdVar
  loc_C1575A: FLdPr Me
  loc_C1575D: MemLdRfVar from_stack_1.global_60
  loc_C15760: LdPrVar
  loc_C15762: LateMemCall
  loc_C15768: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C1576D: PopAdLdVar
  loc_C1576E: FLdPr Me
  loc_C15771: MemLdRfVar from_stack_1.global_60
  loc_C15774: LdPrVar
  loc_C15776: LateMemCall
  loc_C1577C: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_C15781: PopAdLdVar
  loc_C15782: FLdPr Me
  loc_C15785: MemLdRfVar from_stack_1.global_60
  loc_C15788: LdPrVar
  loc_C1578A: LateMemCall
  loc_C15790: LitVarStr var_98, "    <th>Dirección Postal</th>"
  loc_C15795: PopAdLdVar
  loc_C15796: FLdPr Me
  loc_C15799: MemLdRfVar from_stack_1.global_60
  loc_C1579C: LdPrVar
  loc_C1579E: LateMemCall
  loc_C157A4: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_C157A9: PopAdLdVar
  loc_C157AA: FLdPr Me
  loc_C157AD: MemLdRfVar from_stack_1.global_60
  loc_C157B0: LdPrVar
  loc_C157B2: LateMemCall
  loc_C157B8: LitVarStr var_98, "    <th>Fecha de Fallecido</th>"
  loc_C157BD: PopAdLdVar
  loc_C157BE: FLdPr Me
  loc_C157C1: MemLdRfVar from_stack_1.global_60
  loc_C157C4: LdPrVar
  loc_C157C6: LateMemCall
  loc_C157CC: LitVarStr var_98, "    <th>Años</th>"
  loc_C157D1: PopAdLdVar
  loc_C157D2: FLdPr Me
  loc_C157D5: MemLdRfVar from_stack_1.global_60
  loc_C157D8: LdPrVar
  loc_C157DA: LateMemCall
  loc_C157E0: LitVarStr var_98, "  </tr>"
  loc_C157E5: PopAdLdVar
  loc_C157E6: FLdPr Me
  loc_C157E9: MemLdRfVar from_stack_1.global_60
  loc_C157EC: LdPrVar
  loc_C157EE: LateMemCall
  loc_C157F4: LitVarStr var_98, "  </thead>"
  loc_C157F9: PopAdLdVar
  loc_C157FA: FLdPr Me
  loc_C157FD: MemLdRfVar from_stack_1.global_60
  loc_C15800: LdPrVar
  loc_C15802: LateMemCall
  loc_C15808: ExitProcHresult
  loc_C15809: MemLdStr global_845
End Function

Private Function Proc_200_26_A0F078() 'A0F078
  'Data Table: 4A7EC8
  loc_A0F038: LitVarStr var_94, "</table>"
  loc_A0F03D: PopAdLdVar
  loc_A0F03E: FLdPr Me
  loc_A0F041: MemLdRfVar from_stack_1.global_60
  loc_A0F044: LdPrVar
  loc_A0F046: LateMemCall
  loc_A0F04C: LitVarStr var_94, "</body>"
  loc_A0F051: PopAdLdVar
  loc_A0F052: FLdPr Me
  loc_A0F055: MemLdRfVar from_stack_1.global_60
  loc_A0F058: LdPrVar
  loc_A0F05A: LateMemCall
  loc_A0F060: LitVarStr var_94, "</html>"
  loc_A0F065: PopAdLdVar
  loc_A0F066: FLdPr Me
  loc_A0F069: MemLdRfVar from_stack_1.global_60
  loc_A0F06C: LdPrVar
  loc_A0F06E: LateMemCall
  loc_A0F074: ExitProcHresult
End Function
