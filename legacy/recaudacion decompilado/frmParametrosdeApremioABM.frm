VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmParametrosdeApremioABM
  Caption = "Parametros de Apremio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmParametrosdeApremioABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15372
  ClientHeight = 9144
  Begin VB.TextBox LeyeTiliTxt
    ForeColor = &HFF0000&
    Left = 5160
    Top = 6120
    Width = 9735
    Height = 2175
    TabIndex = 19
    MultiLine = -1  'True
    ScrollBars = 2
    DataField = "LeyePaap"
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
  Begin VB.TextBox HrmaPaapTxt
    ForeColor = &HFF0000&
    Left = 5160
    Top = 4920
    Width = 2055
    Height = 420
    TabIndex = 17
    MaxLength = 10
    DataField = "HrmaPaap"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox HrmiPaapTxt
    ForeColor = &HFF0000&
    Left = 5160
    Top = 4320
    Width = 2055
    Height = 420
    TabIndex = 15
    MaxLength = 6
    DataField = "HrmiPaap"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox TajuPaapTxt
    ForeColor = &HFF0000&
    Left = 5160
    Top = 3120
    Width = 1815
    Height = 420
    TabIndex = 9
    MaxLength = 10
    DataField = "TajuPaap"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox PeriPaapTxt
    ForeColor = &HFF0000&
    Left = 5160
    Top = 3720
    Width = 1815
    Height = 420
    TabIndex = 11
    MaxLength = 10
    DataField = "PeriPaap"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox DefiPaapTxt
    ForeColor = &HFF0000&
    Left = 5175
    Top = 2520
    Width = 1815
    Height = 420
    TabIndex = 7
    MaxLength = 10
    DataField = "DefiPaap"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox AplePaapTxt
    ForeColor = &HFF0000&
    Left = 5160
    Top = 1920
    Width = 1815
    Height = 420
    TabIndex = 5
    MaxLength = 10
    DataField = "AplePaap"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.CommandButton AceptarCmd
    Left = 5160
    Top = 8520
    Width = 1815
    Height = 495
    TabIndex = 13
    Picture = "frmParametrosdeApremioABM.frx":324A
    Style = 1
  End
  Begin VB.TextBox CamaPaapTxt
    ForeColor = &HFF0000&
    Left = 5160
    Top = 1320
    Width = 1815
    Height = 420
    TabIndex = 3
    MaxLength = 14
    DataField = "CamaPaap"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.CommandButton SalirCmd
    Left = 11760
    Top = 720
    Width = 735
    Height = 615
    TabIndex = 14
    Picture = "frmParametrosdeApremioABM.frx":3578
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox CamiPaapTxt
    ForeColor = &HFF0000&
    Left = 5160
    Top = 720
    Width = 1815
    Height = 420
    TabIndex = 1
    MaxLength = 6
    DataField = "CamiPaap"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin MSMask.MaskEdBox FechaTopeMsk
    Left = 5160
    Top = 5520
    Width = 1455
    Height = 345
    TabIndex = 22
    OleObjectBlob = "frmParametrosdeApremioABM.frx":37CA
    DataField = "FetoPaap"
  End
  Begin VB.Label Label10
    Caption = "Fecha Tope:"
    Left = 3720
    Top = 5520
    Width = 1335
    Height = 300
    TabIndex = 21
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
  Begin VB.Label Label9
    Caption = "Leyenda:"
    Left = 4080
    Top = 6120
    Width = 975
    Height = 300
    TabIndex = 20
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
  Begin VB.Label Label8
    Caption = "Honorarios del Recaudador Máximo:"
    Left = 1200
    Top = 4920
    Width = 3855
    Height = 300
    TabIndex = 18
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
  Begin VB.Label Label7
    Caption = "Honorarios del Recaudador Mínimo:"
    Left = 1320
    Top = 4320
    Width = 3795
    Height = 300
    TabIndex = 16
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
    Caption = "Tasa de Justicia:"
    Left = 3240
    Top = 3120
    Width = 1770
    Height = 300
    TabIndex = 8
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
  Begin VB.Label Label4
    Caption = "Indica hasta que periodo es ogligatorio seleccionar una deuda"
    Left = 7080
    Top = 3720
    Width = 6555
    Height = 300
    TabIndex = 12
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
  Begin VB.Label Label3
    Caption = "Periodo de selección de Deuda:"
    Left = 1680
    Top = 3720
    Width = 3360
    Height = 300
    TabIndex = 10
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
  Begin VB.Label Label2
    Caption = "Derecho Fijo:"
    Left = 3600
    Top = 2520
    Width = 1410
    Height = 300
    TabIndex = 6
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
  Begin VB.Label Label5
    Caption = "Aporte de Ley:"
    Left = 3465
    Top = 1920
    Width = 1545
    Height = 300
    TabIndex = 4
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
  Begin VB.Label Label1
    Caption = "Comisión administrativa Máximo:"
    Left = 1590
    Top = 1320
    Width = 3420
    Height = 300
    TabIndex = 2
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
  Begin VB.Label Label12
    Caption = "Comisión administrativa Mínimo:"
    Left = 1650
    Top = 720
    Width = 3360
    Height = 300
    TabIndex = 0
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

Attribute VB_Name = "frmParametrosdeApremioABM"


Private Sub CamiPaapTxt_GotFocus() '9C2FD8
  'Data Table: 4A9138
  loc_9C2FC4: FLdPr Me
  loc_9C2FC7: VCallAd Control_ID_CamiPaapTxt
  loc_9C2FCA: CVarAd
  loc_9C2FCE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2FD3: FFree1Var var_94 = ""
  loc_9C2FD6: ExitProcHresult
End Sub

Private Sub CamiPaapTxt_KeyPress(KeyAscii As Integer) 'A07718
  'Data Table: 4A9138
  loc_A076E4: LitStr "1234567890,."
  loc_A076E7: FStStrCopy var_88
  loc_A076EA: FLdRfVar var_88
  loc_A076ED: ILdRf KeyAscii
  loc_A076F0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A076F5: IStI2 KeyAscii
  loc_A076F8: FFree1Str var_88
  loc_A076FB: ILdI2 KeyAscii
  loc_A076FE: LitStr "."
  loc_A07701: ImpAdCallI2 Asc()
  loc_A07706: EqI2
  loc_A07707: BranchF loc_A07715
  loc_A0770A: LitStr ","
  loc_A0770D: ImpAdCallI2 Asc()
  loc_A07712: IStI2 KeyAscii
  loc_A07715: ExitProcHresult
End Sub

Private Sub CamiPaapTxt_Validate(Cancel As Boolean) 'A84034
  'Data Table: 4A9138
  loc_A83FAC: FLdRfVar var_8A
  loc_A83FAF: FLdPr Me
  loc_A83FB2: VCallAd Control_ID_CamiPaapTxt
  loc_A83FB5: FStAdFunc var_88
  loc_A83FB8: FLdPr var_88
  loc_A83FBB:  = Me.Enabled
  loc_A83FC0: FLdI2 var_8A
  loc_A83FC3: FFree1Ad var_88
  loc_A83FC6: BranchF loc_A84031
  loc_A83FC9: FLdRfVar var_90
  loc_A83FCC: FLdPr Me
  loc_A83FCF: VCallAd Control_ID_CamiPaapTxt
  loc_A83FD2: FStAdFunc var_88
  loc_A83FD5: FLdPr var_88
  loc_A83FD8:  = Me.Text
  loc_A83FDD: LitI2_Byte &HFF
  loc_A83FDF: LitI2_Byte 0
  loc_A83FE1: ILdRf var_90
  loc_A83FE4: LitStr "Comisión administravia Mínimo"
  loc_A83FE7: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A83FEC: FStStrNoPop var_94
  loc_A83FEF: FLdPr Me
  loc_A83FF2: MemStStrCopy
  loc_A83FF6: FFreeStr var_90 = ""
  loc_A83FFD: FFree1Ad var_88
  loc_A84000: FLdPr Me
  loc_A84003: MemLdStr global_56
  loc_A84006: LitStr vbNullString
  loc_A84009: NeStr
  loc_A8400B: BranchF loc_A84031
  loc_A8400E: FLdPr Me
  loc_A84011: MemLdStr global_56
  loc_A84014: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A84019: FLdPr Me
  loc_A8401C: VCallAd Control_ID_CamiPaapTxt
  loc_A8401F: CVarAd
  loc_A84023: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A84028: FFree1Var var_A4 = ""
  loc_A8402B: LitI2_Byte &HFF
  loc_A8402D: IStI2 Cancel
  loc_A84030: ExitProcHresult
  loc_A84031: ExitProcHresult
End Sub

Private Sub CamaPaapTxt_GotFocus() '9C2F90
  'Data Table: 4A9138
  loc_9C2F7C: FLdPr Me
  loc_9C2F7F: VCallAd Control_ID_CamaPaapTxt
  loc_9C2F82: CVarAd
  loc_9C2F86: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2F8B: FFree1Var var_94 = ""
  loc_9C2F8E: ExitProcHresult
End Sub

Private Sub CamaPaapTxt_KeyPress(KeyAscii As Integer) 'A07510
  'Data Table: 4A9138
  loc_A074DC: LitStr "1234567890,."
  loc_A074DF: FStStrCopy var_88
  loc_A074E2: FLdRfVar var_88
  loc_A074E5: ILdRf KeyAscii
  loc_A074E8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A074ED: IStI2 KeyAscii
  loc_A074F0: FFree1Str var_88
  loc_A074F3: ILdI2 KeyAscii
  loc_A074F6: LitStr "."
  loc_A074F9: ImpAdCallI2 Asc()
  loc_A074FE: EqI2
  loc_A074FF: BranchF loc_A0750D
  loc_A07502: LitStr ","
  loc_A07505: ImpAdCallI2 Asc()
  loc_A0750A: IStI2 KeyAscii
  loc_A0750D: ExitProcHresult
  loc_A0750E: CVarI2 var_3FD8
End Sub

Private Sub CamaPaapTxt_Validate(Cancel As Boolean) 'AB9C7C
  'Data Table: 4A9138
  loc_AB9B90: FLdRfVar var_8A
  loc_AB9B93: FLdPr Me
  loc_AB9B96: VCallAd Control_ID_CamaPaapTxt
  loc_AB9B99: FStAdFunc var_88
  loc_AB9B9C: FLdPr var_88
  loc_AB9B9F:  = Me.Enabled
  loc_AB9BA4: FLdI2 var_8A
  loc_AB9BA7: FFree1Ad var_88
  loc_AB9BAA: BranchF loc_AB9C79
  loc_AB9BAD: FLdRfVar var_90
  loc_AB9BB0: FLdPr Me
  loc_AB9BB3: VCallAd Control_ID_CamaPaapTxt
  loc_AB9BB6: FStAdFunc var_88
  loc_AB9BB9: FLdPr var_88
  loc_AB9BBC:  = Me.Text
  loc_AB9BC1: LitI2_Byte 0
  loc_AB9BC3: LitI2_Byte 0
  loc_AB9BC5: ILdRf var_90
  loc_AB9BC8: LitStr "Comisión administrativa Máximo"
  loc_AB9BCB: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB9BD0: FStStrNoPop var_94
  loc_AB9BD3: FLdPr Me
  loc_AB9BD6: MemStStrCopy
  loc_AB9BDA: FFreeStr var_90 = ""
  loc_AB9BE1: FFree1Ad var_88
  loc_AB9BE4: FLdPr Me
  loc_AB9BE7: MemLdStr global_56
  loc_AB9BEA: LitStr vbNullString
  loc_AB9BED: NeStr
  loc_AB9BEF: BranchF loc_AB9C15
  loc_AB9BF2: FLdPr Me
  loc_AB9BF5: MemLdStr global_56
  loc_AB9BF8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB9BFD: FLdPr Me
  loc_AB9C00: VCallAd Control_ID_CamaPaapTxt
  loc_AB9C03: CVarAd
  loc_AB9C07: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB9C0C: FFree1Var var_A4 = ""
  loc_AB9C0F: LitI2_Byte &HFF
  loc_AB9C11: IStI2 Cancel
  loc_AB9C14: ExitProcHresult
  loc_AB9C15: FLdRfVar var_94
  loc_AB9C18: FLdPr Me
  loc_AB9C1B: VCallAd Control_ID_CamiPaapTxt
  loc_AB9C1E: FStAdFunc var_A8
  loc_AB9C21: FLdPr var_A8
  loc_AB9C24:  = Me.Text
  loc_AB9C29: FLdRfVar var_90
  loc_AB9C2C: FLdPr Me
  loc_AB9C2F: VCallAd Control_ID_CamaPaapTxt
  loc_AB9C32: FStAdFunc var_88
  loc_AB9C35: FLdPr var_88
  loc_AB9C38:  = Me.Text
  loc_AB9C3D: ILdRf var_90
  loc_AB9C40: CR8Str
  loc_AB9C42: ILdRf var_94
  loc_AB9C45: CR8Str
  loc_AB9C47: LtR8
  loc_AB9C48: FFreeStr var_90 = ""
  loc_AB9C4F: FFreeAd var_88 = ""
  loc_AB9C56: BranchF loc_AB9C79
  loc_AB9C59: LitStr "La cantidad máxima no puede ser menor a la cantidad mínima"
  loc_AB9C5C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB9C61: FLdPr Me
  loc_AB9C64: VCallAd Control_ID_CamaPaapTxt
  loc_AB9C67: CVarAd
  loc_AB9C6B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB9C70: FFree1Var var_A4 = ""
  loc_AB9C73: LitI2_Byte &HFF
  loc_AB9C75: IStI2 Cancel
  loc_AB9C78: ExitProcHresult
  loc_AB9C79: ExitProcHresult
End Sub

Private Sub AplePaapTxt_GotFocus() '9C3068
  'Data Table: 4A9138
  loc_9C3054: FLdPr Me
  loc_9C3057: VCallAd Control_ID_AplePaapTxt
  loc_9C305A: CVarAd
  loc_9C305E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3063: FFree1Var var_94 = ""
  loc_9C3066: ExitProcHresult
End Sub

Private Sub AplePaapTxt_KeyPress(KeyAscii As Integer) 'A07648
  'Data Table: 4A9138
  loc_A07614: LitStr "1234567890,."
  loc_A07617: FStStrCopy var_88
  loc_A0761A: FLdRfVar var_88
  loc_A0761D: ILdRf KeyAscii
  loc_A07620: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07625: IStI2 KeyAscii
  loc_A07628: FFree1Str var_88
  loc_A0762B: ILdI2 KeyAscii
  loc_A0762E: LitStr "."
  loc_A07631: ImpAdCallI2 Asc()
  loc_A07636: EqI2
  loc_A07637: BranchF loc_A07645
  loc_A0763A: LitStr ","
  loc_A0763D: ImpAdCallI2 Asc()
  loc_A07642: IStI2 KeyAscii
  loc_A07645: ExitProcHresult
  loc_A07646: VCallAd Control_ID_
End Sub

Private Sub AplePaapTxt_LostFocus() 'A75C28
  'Data Table: 4A9138
  loc_A75BC4: FLdRfVar var_8C
  loc_A75BC7: FLdPr Me
  loc_A75BCA: VCallAd Control_ID_AplePaapTxt
  loc_A75BCD: FStAdFunc var_88
  loc_A75BD0: FLdPr var_88
  loc_A75BD3:  = Me.Text
  loc_A75BD8: LitI4 1
  loc_A75BDD: LitI4 1
  loc_A75BE2: LitVarStr var_AC, "0.00"
  loc_A75BE7: FStVarCopyObj var_BC
  loc_A75BEA: FLdRfVar var_BC
  loc_A75BED: FLdZeroAd var_8C
  loc_A75BF0: CVarStr var_9C
  loc_A75BF3: FLdRfVar var_CC
  loc_A75BF6: ImpAdCallFPR4  = Format(, )
  loc_A75BFB: FLdRfVar var_CC
  loc_A75BFE: CStrVarVal var_D0
  loc_A75C02: FLdPr Me
  loc_A75C05: VCallAd Control_ID_AplePaapTxt
  loc_A75C08: FStAdFunc var_D4
  loc_A75C0B: FLdPr var_D4
  loc_A75C0E: Me.Text = from_stack_1
  loc_A75C13: FFree1Str var_D0
  loc_A75C16: FFreeAd var_88 = ""
  loc_A75C1D: FFreeVar var_9C = "": var_BC = ""
  loc_A75C26: ExitProcHresult
End Sub

Private Sub AplePaapTxt_Validate(Cancel As Boolean) 'A83F6C
  'Data Table: 4A9138
  loc_A83EE4: FLdRfVar var_8A
  loc_A83EE7: FLdPr Me
  loc_A83EEA: VCallAd Control_ID_AplePaapTxt
  loc_A83EED: FStAdFunc var_88
  loc_A83EF0: FLdPr var_88
  loc_A83EF3:  = Me.Enabled
  loc_A83EF8: FLdI2 var_8A
  loc_A83EFB: FFree1Ad var_88
  loc_A83EFE: BranchF loc_A83F69
  loc_A83F01: FLdRfVar var_90
  loc_A83F04: FLdPr Me
  loc_A83F07: VCallAd Control_ID_AplePaapTxt
  loc_A83F0A: FStAdFunc var_88
  loc_A83F0D: FLdPr var_88
  loc_A83F10:  = Me.Text
  loc_A83F15: LitI2_Byte &HFF
  loc_A83F17: LitI2_Byte 0
  loc_A83F19: ILdRf var_90
  loc_A83F1C: LitStr "Aporte de Ley"
  loc_A83F1F: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A83F24: FStStrNoPop var_94
  loc_A83F27: FLdPr Me
  loc_A83F2A: MemStStrCopy
  loc_A83F2E: FFreeStr var_90 = ""
  loc_A83F35: FFree1Ad var_88
  loc_A83F38: FLdPr Me
  loc_A83F3B: MemLdStr global_56
  loc_A83F3E: LitStr vbNullString
  loc_A83F41: NeStr
  loc_A83F43: BranchF loc_A83F69
  loc_A83F46: FLdPr Me
  loc_A83F49: MemLdStr global_56
  loc_A83F4C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A83F51: FLdPr Me
  loc_A83F54: VCallAd Control_ID_AplePaapTxt
  loc_A83F57: CVarAd
  loc_A83F5B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A83F60: FFree1Var var_A4 = ""
  loc_A83F63: LitI2_Byte &HFF
  loc_A83F65: IStI2 Cancel
  loc_A83F68: ExitProcHresult
  loc_A83F69: ExitProcHresult
  loc_A83F6A: MemStI4 global_-16280
End Sub

Private Sub DefiPaapTxt_GotFocus() '9C2EB8
  'Data Table: 4A9138
  loc_9C2EA4: FLdPr Me
  loc_9C2EA7: VCallAd Control_ID_DefiPaapTxt
  loc_9C2EAA: CVarAd
  loc_9C2EAE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2EB3: FFree1Var var_94 = ""
  loc_9C2EB6: ExitProcHresult
End Sub

Private Sub DefiPaapTxt_KeyPress(KeyAscii As Integer) 'A074A8
  'Data Table: 4A9138
  loc_A07474: LitStr "1234567890,."
  loc_A07477: FStStrCopy var_88
  loc_A0747A: FLdRfVar var_88
  loc_A0747D: ILdRf KeyAscii
  loc_A07480: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07485: IStI2 KeyAscii
  loc_A07488: FFree1Str var_88
  loc_A0748B: ILdI2 KeyAscii
  loc_A0748E: LitStr "."
  loc_A07491: ImpAdCallI2 Asc()
  loc_A07496: EqI2
  loc_A07497: BranchF loc_A074A5
  loc_A0749A: LitStr ","
  loc_A0749D: ImpAdCallI2 Asc()
  loc_A074A2: IStI2 KeyAscii
  loc_A074A5: ExitProcHresult
End Sub

Private Sub DefiPaapTxt_Validate(Cancel As Boolean) 'A82734
  'Data Table: 4A9138
  loc_A826AC: FLdRfVar var_8A
  loc_A826AF: FLdPr Me
  loc_A826B2: VCallAd Control_ID_DefiPaapTxt
  loc_A826B5: FStAdFunc var_88
  loc_A826B8: FLdPr var_88
  loc_A826BB:  = Me.Enabled
  loc_A826C0: FLdI2 var_8A
  loc_A826C3: FFree1Ad var_88
  loc_A826C6: BranchF loc_A82731
  loc_A826C9: FLdRfVar var_90
  loc_A826CC: FLdPr Me
  loc_A826CF: VCallAd Control_ID_DefiPaapTxt
  loc_A826D2: FStAdFunc var_88
  loc_A826D5: FLdPr var_88
  loc_A826D8:  = Me.Text
  loc_A826DD: LitI2_Byte &HFF
  loc_A826DF: LitI2_Byte 0
  loc_A826E1: ILdRf var_90
  loc_A826E4: LitStr "Derecho Fijo"
  loc_A826E7: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A826EC: FStStrNoPop var_94
  loc_A826EF: FLdPr Me
  loc_A826F2: MemStStrCopy
  loc_A826F6: FFreeStr var_90 = ""
  loc_A826FD: FFree1Ad var_88
  loc_A82700: FLdPr Me
  loc_A82703: MemLdStr global_56
  loc_A82706: LitStr vbNullString
  loc_A82709: NeStr
  loc_A8270B: BranchF loc_A82731
  loc_A8270E: FLdPr Me
  loc_A82711: MemLdStr global_56
  loc_A82714: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82719: FLdPr Me
  loc_A8271C: VCallAd Control_ID_DefiPaapTxt
  loc_A8271F: CVarAd
  loc_A82723: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82728: FFree1Var var_A4 = ""
  loc_A8272B: LitI2_Byte &HFF
  loc_A8272D: IStI2 Cancel
  loc_A82730: ExitProcHresult
  loc_A82731: ExitProcHresult
End Sub

Private Sub TajuPaapTxt_GotFocus() '9C6E90
  'Data Table: 4A9138
  loc_9C6E7C: FLdPr Me
  loc_9C6E7F: VCallAd Control_ID_TajuPaapTxt
  loc_9C6E82: CVarAd
  loc_9C6E86: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6E8B: FFree1Var var_94 = ""
  loc_9C6E8E: ExitProcHresult
End Sub

Private Sub TajuPaapTxt_KeyPress(KeyAscii As Integer) '9D05D8
  'Data Table: 4A9138
  loc_9D05C0: LitStr "1234567890"
  loc_9D05C3: FStStrCopy var_88
  loc_9D05C6: FLdRfVar var_88
  loc_9D05C9: ILdRf KeyAscii
  loc_9D05CC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D05D1: IStI2 KeyAscii
  loc_9D05D4: FFree1Str var_88
  loc_9D05D7: ExitProcHresult
End Sub

Private Sub TajuPaapTxt_Validate(Cancel As Boolean) 'A82284
  'Data Table: 4A9138
  loc_A821FC: FLdRfVar var_8A
  loc_A821FF: FLdPr Me
  loc_A82202: VCallAd Control_ID_TajuPaapTxt
  loc_A82205: FStAdFunc var_88
  loc_A82208: FLdPr var_88
  loc_A8220B:  = Me.Enabled
  loc_A82210: FLdI2 var_8A
  loc_A82213: FFree1Ad var_88
  loc_A82216: BranchF loc_A82281
  loc_A82219: FLdRfVar var_90
  loc_A8221C: FLdPr Me
  loc_A8221F: VCallAd Control_ID_TajuPaapTxt
  loc_A82222: FStAdFunc var_88
  loc_A82225: FLdPr var_88
  loc_A82228:  = Me.Text
  loc_A8222D: LitI2_Byte &HFF
  loc_A8222F: LitI2_Byte 0
  loc_A82231: ILdRf var_90
  loc_A82234: LitStr "Tasa de Justicia"
  loc_A82237: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A8223C: FStStrNoPop var_94
  loc_A8223F: FLdPr Me
  loc_A82242: MemStStrCopy
  loc_A82246: FFreeStr var_90 = ""
  loc_A8224D: FFree1Ad var_88
  loc_A82250: FLdPr Me
  loc_A82253: MemLdStr global_56
  loc_A82256: LitStr vbNullString
  loc_A82259: NeStr
  loc_A8225B: BranchF loc_A82281
  loc_A8225E: FLdPr Me
  loc_A82261: MemLdStr global_56
  loc_A82264: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82269: FLdPr Me
  loc_A8226C: VCallAd Control_ID_TajuPaapTxt
  loc_A8226F: CVarAd
  loc_A82273: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82278: FFree1Var var_A4 = ""
  loc_A8227B: LitI2_Byte &HFF
  loc_A8227D: IStI2 Cancel
  loc_A82280: ExitProcHresult
  loc_A82281: ExitProcHresult
  loc_A82282: LitVar_Missing var_3F10
End Sub

Private Sub SalirCmd_Click() '9D0540
  'Data Table: 4A9138
  loc_9D0528: ILdRf Me
  loc_9D052B: FStAdNoPop
  loc_9D052F: ImpAdLdRf MemVar_D9C5D8
  loc_9D0532: NewIfNullPr Global
  loc_9D0535: Global.Unload from_stack_1
  loc_9D053A: FFree1Ad var_88
  loc_9D053D: ExitProcHresult
  loc_9D053E: BranchF loc_9DC528
End Sub

Private Sub PeriPaapTxt_GotFocus() '9C2D98
  'Data Table: 4A9138
  loc_9C2D84: FLdPr Me
  loc_9C2D87: VCallAd Control_ID_PeriPaapTxt
  loc_9C2D8A: CVarAd
  loc_9C2D8E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2D93: FFree1Var var_94 = ""
  loc_9C2D96: ExitProcHresult
End Sub

Private Sub PeriPaapTxt_KeyPress(KeyAscii As Integer) '9D04F4
  'Data Table: 4A9138
  loc_9D04DC: LitStr "1234567890"
  loc_9D04DF: FStStrCopy var_88
  loc_9D04E2: FLdRfVar var_88
  loc_9D04E5: ILdRf KeyAscii
  loc_9D04E8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D04ED: IStI2 KeyAscii
  loc_9D04F0: FFree1Str var_88
  loc_9D04F3: ExitProcHresult
End Sub

Private Sub PeriPaapTxt_Validate(Cancel As Boolean) 'A8202C
  'Data Table: 4A9138
  loc_A81FA4: FLdRfVar var_8A
  loc_A81FA7: FLdPr Me
  loc_A81FAA: VCallAd Control_ID_PeriPaapTxt
  loc_A81FAD: FStAdFunc var_88
  loc_A81FB0: FLdPr var_88
  loc_A81FB3:  = Me.Enabled
  loc_A81FB8: FLdI2 var_8A
  loc_A81FBB: FFree1Ad var_88
  loc_A81FBE: BranchF loc_A82029
  loc_A81FC1: FLdRfVar var_90
  loc_A81FC4: FLdPr Me
  loc_A81FC7: VCallAd Control_ID_PeriPaapTxt
  loc_A81FCA: FStAdFunc var_88
  loc_A81FCD: FLdPr var_88
  loc_A81FD0:  = Me.Text
  loc_A81FD5: LitI2_Byte &HFF
  loc_A81FD7: LitI2_Byte 0
  loc_A81FD9: ILdRf var_90
  loc_A81FDC: LitStr " Periodo de Selección de Deuda"
  loc_A81FDF: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A81FE4: FStStrNoPop var_94
  loc_A81FE7: FLdPr Me
  loc_A81FEA: MemStStrCopy
  loc_A81FEE: FFreeStr var_90 = ""
  loc_A81FF5: FFree1Ad var_88
  loc_A81FF8: FLdPr Me
  loc_A81FFB: MemLdStr global_56
  loc_A81FFE: LitStr vbNullString
  loc_A82001: NeStr
  loc_A82003: BranchF loc_A82029
  loc_A82006: FLdPr Me
  loc_A82009: MemLdStr global_56
  loc_A8200C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82011: FLdPr Me
  loc_A82014: VCallAd Control_ID_PeriPaapTxt
  loc_A82017: CVarAd
  loc_A8201B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82020: FFree1Var var_A4 = ""
  loc_A82023: LitI2_Byte &HFF
  loc_A82025: IStI2 Cancel
  loc_A82028: ExitProcHresult
  loc_A82029: ExitProcHresult
End Sub

Private Sub HrmiPaapTxt_GotFocus() '9C6E00
  'Data Table: 4A9138
  loc_9C6DEC: FLdPr Me
  loc_9C6DEF: VCallAd Control_ID_HrmiPaapTxt
  loc_9C6DF2: CVarAd
  loc_9C6DF6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6DFB: FFree1Var var_94 = ""
  loc_9C6DFE: ExitProcHresult
End Sub

Private Sub HrmiPaapTxt_KeyPress(KeyAscii As Integer) 'A073D8
  'Data Table: 4A9138
  loc_A073A4: LitStr "1234567890,."
  loc_A073A7: FStStrCopy var_88
  loc_A073AA: FLdRfVar var_88
  loc_A073AD: ILdRf KeyAscii
  loc_A073B0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A073B5: IStI2 KeyAscii
  loc_A073B8: FFree1Str var_88
  loc_A073BB: ILdI2 KeyAscii
  loc_A073BE: LitStr "."
  loc_A073C1: ImpAdCallI2 Asc()
  loc_A073C6: EqI2
  loc_A073C7: BranchF loc_A073D5
  loc_A073CA: LitStr ","
  loc_A073CD: ImpAdCallI2 Asc()
  loc_A073D2: IStI2 KeyAscii
  loc_A073D5: ExitProcHresult
  loc_A073D6: FnLBound
End Sub

Private Sub HrmiPaapTxt_Validate(Cancel As Boolean) 'A8379C
  'Data Table: 4A9138
  loc_A83714: FLdRfVar var_8A
  loc_A83717: FLdPr Me
  loc_A8371A: VCallAd Control_ID_HrmaPaapTxt
  loc_A8371D: FStAdFunc var_88
  loc_A83720: FLdPr var_88
  loc_A83723:  = Me.Enabled
  loc_A83728: FLdI2 var_8A
  loc_A8372B: FFree1Ad var_88
  loc_A8372E: BranchF loc_A83799
  loc_A83731: FLdRfVar var_90
  loc_A83734: FLdPr Me
  loc_A83737: VCallAd Control_ID_HrmaPaapTxt
  loc_A8373A: FStAdFunc var_88
  loc_A8373D: FLdPr var_88
  loc_A83740:  = Me.Text
  loc_A83745: LitI2_Byte &HFF
  loc_A83747: LitI2_Byte 0
  loc_A83749: ILdRf var_90
  loc_A8374C: LitStr "Honorario del Recaudador Máximo"
  loc_A8374F: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A83754: FStStrNoPop var_94
  loc_A83757: FLdPr Me
  loc_A8375A: MemStStrCopy
  loc_A8375E: FFreeStr var_90 = ""
  loc_A83765: FFree1Ad var_88
  loc_A83768: FLdPr Me
  loc_A8376B: MemLdStr global_56
  loc_A8376E: LitStr vbNullString
  loc_A83771: NeStr
  loc_A83773: BranchF loc_A83799
  loc_A83776: FLdPr Me
  loc_A83779: MemLdStr global_56
  loc_A8377C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A83781: FLdPr Me
  loc_A83784: VCallAd Control_ID_HrmaPaapTxt
  loc_A83787: CVarAd
  loc_A8378B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A83790: FFree1Var var_A4 = ""
  loc_A83793: LitI2_Byte &HFF
  loc_A83795: IStI2 Cancel
  loc_A83798: ExitProcHresult
  loc_A83799: ExitProcHresult
  loc_A8379A: CastAd
End Sub

Private Sub HrmaPaapTxt_GotFocus() '9C6ED8
  'Data Table: 4A9138
  loc_9C6EC4: FLdPr Me
  loc_9C6EC7: VCallAd Control_ID_HrmaPaapTxt
  loc_9C6ECA: CVarAd
  loc_9C6ECE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6ED3: FFree1Var var_94 = ""
  loc_9C6ED6: ExitProcHresult
End Sub

Private Sub HrmaPaapTxt_KeyPress(KeyAscii As Integer) 'A07370
  'Data Table: 4A9138
  loc_A0733C: LitStr "1234567890,."
  loc_A0733F: FStStrCopy var_88
  loc_A07342: FLdRfVar var_88
  loc_A07345: ILdRf KeyAscii
  loc_A07348: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0734D: IStI2 KeyAscii
  loc_A07350: FFree1Str var_88
  loc_A07353: ILdI2 KeyAscii
  loc_A07356: LitStr "."
  loc_A07359: ImpAdCallI2 Asc()
  loc_A0735E: EqI2
  loc_A0735F: BranchF loc_A0736D
  loc_A07362: LitStr ","
  loc_A07365: ImpAdCallI2 Asc()
  loc_A0736A: IStI2 KeyAscii
  loc_A0736D: ExitProcHresult
  loc_A0736E: ExitProcHresult
End Sub

Private Sub HrmaPaapTxt_Validate(Cancel As Boolean) 'A83ABC
  'Data Table: 4A9138
  loc_A83A34: FLdRfVar var_8A
  loc_A83A37: FLdPr Me
  loc_A83A3A: VCallAd Control_ID_HrmiPaapTxt
  loc_A83A3D: FStAdFunc var_88
  loc_A83A40: FLdPr var_88
  loc_A83A43:  = Me.Enabled
  loc_A83A48: FLdI2 var_8A
  loc_A83A4B: FFree1Ad var_88
  loc_A83A4E: BranchF loc_A83AB9
  loc_A83A51: FLdRfVar var_90
  loc_A83A54: FLdPr Me
  loc_A83A57: VCallAd Control_ID_HrmiPaapTxt
  loc_A83A5A: FStAdFunc var_88
  loc_A83A5D: FLdPr var_88
  loc_A83A60:  = Me.Text
  loc_A83A65: LitI2_Byte &HFF
  loc_A83A67: LitI2_Byte 0
  loc_A83A69: ILdRf var_90
  loc_A83A6C: LitStr "Honorario del Recaudador Mínimo"
  loc_A83A6F: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A83A74: FStStrNoPop var_94
  loc_A83A77: FLdPr Me
  loc_A83A7A: MemStStrCopy
  loc_A83A7E: FFreeStr var_90 = ""
  loc_A83A85: FFree1Ad var_88
  loc_A83A88: FLdPr Me
  loc_A83A8B: MemLdStr global_56
  loc_A83A8E: LitStr vbNullString
  loc_A83A91: NeStr
  loc_A83A93: BranchF loc_A83AB9
  loc_A83A96: FLdPr Me
  loc_A83A99: MemLdStr global_56
  loc_A83A9C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A83AA1: FLdPr Me
  loc_A83AA4: VCallAd Control_ID_HrmiPaapTxt
  loc_A83AA7: CVarAd
  loc_A83AAB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A83AB0: FFree1Var var_A4 = ""
  loc_A83AB3: LitI2_Byte &HFF
  loc_A83AB5: IStI2 Cancel
  loc_A83AB8: ExitProcHresult
  loc_A83AB9: ExitProcHresult
End Sub

Private Sub Form_Load() 'AD331C
  'Data Table: 4A9138
  loc_AD31F4: LitI2_Byte 0
  loc_AD31F6: CR8I2
  loc_AD31F7: PopFPR4
  loc_AD31F8: FLdPr Me
  loc_AD31FB: Me.Left = from_stack_1s
  loc_AD3200: LitI2_Byte 0
  loc_AD3202: CR8I2
  loc_AD3203: PopFPR4
  loc_AD3204: FLdPr Me
  loc_AD3207: Me.Top = from_stack_1s
  loc_AD320C: ImpAdLdI4 MemVar_D9302C
  loc_AD320F: LitStr "hchavero"
  loc_AD3212: EqStr
  loc_AD3214: BranchF loc_AD324D
  loc_AD3217: LitI4 0
  loc_AD321C: LitI4 0
  loc_AD3221: FLdRfVar var_88
  loc_AD3224: Redim
  loc_AD322E: FLdPr Me
  loc_AD3231: VCallAd Control_ID_AceptarCmd
  loc_AD3234: CVarAd
  loc_AD3238: ParmAry1St
  loc_AD323E: FLdRfVar var_88
  loc_AD3241: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AD3246: FLdRfVar var_88
  loc_AD3249: Erase
  loc_AD324A: Branch loc_AD3280
  loc_AD324D: LitI4 0
  loc_AD3252: LitI4 0
  loc_AD3257: FLdRfVar var_88
  loc_AD325A: Redim
  loc_AD3264: FLdPr Me
  loc_AD3267: VCallAd Control_ID_AceptarCmd
  loc_AD326A: CVarAd
  loc_AD326E: ParmAry1St
  loc_AD3274: FLdRfVar var_88
  loc_AD3277: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AD327C: FLdRfVar var_88
  loc_AD327F: Erase
  loc_AD3280: LitStr "SELECT CodiPaap, CamiPaap, CamaPaap, AplePaap, DefiPaap, TajuPaap, PeriPaap, HrmiPaap, HrmaPaap, LeyePaap, FetoPaap FROM paraapre"
  loc_AD3283: FLdPr Me
  loc_AD3286: MemLdRfVar from_stack_1.global_52
  loc_AD3289: NewIfNullPr clsparaapre
  loc_AD328C: Call clsparaapre.RedefineRS(from_stack_1v)
  loc_AD3291: LitI4 0
  loc_AD3296: LitI4 0
  loc_AD329B: FLdRfVar var_88
  loc_AD329E: Redim
  loc_AD32A8: FLdPr Me
  loc_AD32AB: MemLdRfVar from_stack_1.global_52
  loc_AD32AE: NewIfNullAd
  loc_AD32B1: FStAd var_9C 
  loc_AD32B5: FLdRfVar var_9C
  loc_AD32B8: CVarRef
  loc_AD32BD: ParmAry1St
  loc_AD32C3: FLdRfVar var_88
  loc_AD32C6: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AD32CB: ILdRf var_9C
  loc_AD32CE: CastAd
  loc_AD32D1: FLdPr Me
  loc_AD32D4: MemStAdFunc
  loc_AD32D8: FLdRfVar var_88
  loc_AD32DB: Erase
  loc_AD32DC: FFree1Ad var_9C
  loc_AD32DF: FLdPr Me
  loc_AD32E2: MemLdRfVar from_stack_1.global_52
  loc_AD32E5: NewIfNullAd
  loc_AD32E8: FStAd var_B0 
  loc_AD32EC: FLdRfVar var_B0
  loc_AD32EF: CVarRef
  loc_AD32F4: ILdRf Me
  loc_AD32F7: CastAd
  loc_AD32FA: FStAdFunc var_9C
  loc_AD32FD: FLdRfVar var_9C
  loc_AD3300: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AD3305: ILdRf var_B0
  loc_AD3308: CastAd
  loc_AD330B: FLdPr Me
  loc_AD330E: MemStAdFunc
  loc_AD3312: FFreeAd var_9C = ""
  loc_AD3319: ExitProcHresult
End Sub

Private Sub Form_Activate() '9B3B78
  'Data Table: 4A9138
  loc_9B3B68: FLdPr Me
  loc_9B3B6B: MemLdRfVar from_stack_1.global_52
  loc_9B3B6E: NewIfNullPr clsparaapre
  loc_9B3B71: Call clsparaapre.Requery()
  loc_9B3B76: ExitProcHresult
End Sub

Private Sub LeyeTiliTxt_GotFocus() '9C30B0
  'Data Table: 4A9138
  loc_9C309C: FLdPr Me
  loc_9C309F: VCallAd Control_ID_LeyeTiliTxt
  loc_9C30A2: CVarAd
  loc_9C30A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C30AB: FFree1Var var_94 = ""
  loc_9C30AE: ExitProcHresult
End Sub

Private Sub AceptarCmd_Click() 'B12798
  'Data Table: 4A9138
  loc_B1257C: LitStr vbNullString
  loc_B1257F: FLdPr Me
  loc_B12582: MemStStrCopy
  loc_B12586: LitI2_Byte 0
  loc_B12588: PopTmpLdAd2 var_86
  loc_B1258B: Call CamiPaapTxt_Validate(from_stack_1v)
  loc_B12590: FLdPr Me
  loc_B12593: MemLdStr global_56
  loc_B12596: LitStr vbNullString
  loc_B12599: NeStr
  loc_B1259B: BranchF loc_B1259F
  loc_B1259E: ExitProcHresult
  loc_B1259F: LitI2_Byte 0
  loc_B125A1: PopTmpLdAd2 var_86
  loc_B125A4: Call CamaPaapTxt_Validate(from_stack_1v)
  loc_B125A9: FLdPr Me
  loc_B125AC: MemLdStr global_56
  loc_B125AF: LitStr vbNullString
  loc_B125B2: NeStr
  loc_B125B4: BranchF loc_B125B8
  loc_B125B7: ExitProcHresult
  loc_B125B8: LitI2_Byte 0
  loc_B125BA: PopTmpLdAd2 var_86
  loc_B125BD: Call AplePaapTxt_Validate(from_stack_1v)
  loc_B125C2: FLdPr Me
  loc_B125C5: MemLdStr global_56
  loc_B125C8: LitStr vbNullString
  loc_B125CB: NeStr
  loc_B125CD: BranchF loc_B125D1
  loc_B125D0: ExitProcHresult
  loc_B125D1: LitI2_Byte 0
  loc_B125D3: PopTmpLdAd2 var_86
  loc_B125D6: Call DefiPaapTxt_Validate(from_stack_1v)
  loc_B125DB: FLdPr Me
  loc_B125DE: MemLdStr global_56
  loc_B125E1: LitStr vbNullString
  loc_B125E4: NeStr
  loc_B125E6: BranchF loc_B125EA
  loc_B125E9: ExitProcHresult
  loc_B125EA: LitI2_Byte 0
  loc_B125EC: PopTmpLdAd2 var_86
  loc_B125EF: Call PeriPaapTxt_Validate(from_stack_1v)
  loc_B125F4: FLdPr Me
  loc_B125F7: MemLdStr global_56
  loc_B125FA: LitStr vbNullString
  loc_B125FD: NeStr
  loc_B125FF: BranchF loc_B12603
  loc_B12602: ExitProcHresult
  loc_B12603: LitI2_Byte 0
  loc_B12605: PopTmpLdAd2 var_86
  loc_B12608: Call TajuPaapTxt_Validate(from_stack_1v)
  loc_B1260D: FLdPr Me
  loc_B12610: MemLdStr global_56
  loc_B12613: LitStr vbNullString
  loc_B12616: NeStr
  loc_B12618: BranchF loc_B1261C
  loc_B1261B: ExitProcHresult
  loc_B1261C: LitI2_Byte 0
  loc_B1261E: PopTmpLdAd2 var_86
  loc_B12621: Call HrmiPaapTxt_Validate(from_stack_1v)
  loc_B12626: FLdPr Me
  loc_B12629: MemLdStr global_56
  loc_B1262C: LitStr vbNullString
  loc_B1262F: NeStr
  loc_B12631: BranchF loc_B12635
  loc_B12634: ExitProcHresult
  loc_B12635: LitI2_Byte 0
  loc_B12637: PopTmpLdAd2 var_86
  loc_B1263A: Call HrmaPaapTxt_Validate(from_stack_1v)
  loc_B1263F: FLdPr Me
  loc_B12642: MemLdStr global_56
  loc_B12645: LitStr vbNullString
  loc_B12648: NeStr
  loc_B1264A: BranchF loc_B1264E
  loc_B1264D: ExitProcHresult
  loc_B1264E: FLdRfVar var_90
  loc_B12651: FLdPr Me
  loc_B12654: VCallAd Control_ID_CamiPaapTxt
  loc_B12657: FStAdFunc var_8C
  loc_B1265A: FLdPr var_8C
  loc_B1265D:  = Me.Text
  loc_B12662: FLdRfVar var_98
  loc_B12665: FLdPr Me
  loc_B12668: VCallAd Control_ID_CamaPaapTxt
  loc_B1266B: FStAdFunc var_94
  loc_B1266E: FLdPr var_94
  loc_B12671:  = Me.Text
  loc_B12676: FLdRfVar var_A0
  loc_B12679: FLdPr Me
  loc_B1267C: VCallAd Control_ID_AplePaapTxt
  loc_B1267F: FStAdFunc var_9C
  loc_B12682: FLdPr var_9C
  loc_B12685:  = Me.Text
  loc_B1268A: FLdRfVar var_A8
  loc_B1268D: FLdPr Me
  loc_B12690: VCallAd Control_ID_DefiPaapTxt
  loc_B12693: FStAdFunc var_A4
  loc_B12696: FLdPr var_A4
  loc_B12699:  = Me.Text
  loc_B1269E: FLdRfVar var_B0
  loc_B126A1: FLdPr Me
  loc_B126A4: VCallAd Control_ID_TajuPaapTxt
  loc_B126A7: FStAdFunc var_AC
  loc_B126AA: FLdPr var_AC
  loc_B126AD:  = Me.Text
  loc_B126B2: FLdRfVar var_B8
  loc_B126B5: FLdPr Me
  loc_B126B8: VCallAd Control_ID_PeriPaapTxt
  loc_B126BB: FStAdFunc var_B4
  loc_B126BE: FLdPr var_B4
  loc_B126C1:  = Me.Text
  loc_B126C6: FLdRfVar var_C0
  loc_B126C9: FLdPr Me
  loc_B126CC: VCallAd Control_ID_HrmiPaapTxt
  loc_B126CF: FStAdFunc var_BC
  loc_B126D2: FLdPr var_BC
  loc_B126D5:  = Me.Text
  loc_B126DA: FLdRfVar var_E4
  loc_B126DD: FLdPr Me
  loc_B126E0: VCallAd Control_ID_HrmaPaapTxt
  loc_B126E3: FStAdFunc var_E0
  loc_B126E6: FLdPr var_E0
  loc_B126E9:  = Me.Text
  loc_B126EE: FLdRfVar var_C8
  loc_B126F1: FLdPr Me
  loc_B126F4: VCallAd Control_ID_LeyeTiliTxt
  loc_B126F7: FStAdFunc var_C4
  loc_B126FA: FLdPr var_C4
  loc_B126FD:  = Me.Text
  loc_B12702: FLdPr Me
  loc_B12705: VCallAd Control_ID_FechaTopeMsk
  loc_B12708: FStAdFunc var_CC
  loc_B1270B: FLdPr var_CC
  loc_B1270E: LateIdLdVar var_DC DispID_15 0
  loc_B12715: CStrVarTmp
  loc_B12716: FStStrNoPop var_E8
  loc_B12719: ILdRf var_C8
  loc_B1271C: ILdRf var_E4
  loc_B1271F: CR8Str
  loc_B12721: PopFPR8
  loc_B12722: ILdRf var_C0
  loc_B12725: CR8Str
  loc_B12727: PopFPR8
  loc_B12728: ILdRf var_B8
  loc_B1272B: CR8Str
  loc_B1272D: PopFPR8
  loc_B1272E: ILdRf var_B0
  loc_B12731: CR8Str
  loc_B12733: PopFPR8
  loc_B12734: ILdRf var_A8
  loc_B12737: CR8Str
  loc_B12739: PopFPR8
  loc_B1273A: ILdRf var_A0
  loc_B1273D: CR8Str
  loc_B1273F: PopFPR8
  loc_B12740: ILdRf var_98
  loc_B12743: CR8Str
  loc_B12745: PopFPR8
  loc_B12746: ILdRf var_90
  loc_B12749: CR8Str
  loc_B1274B: PopFPR8
  loc_B1274C: LitI2_Byte 1
  loc_B1274E: FLdPr Me
  loc_B12751: MemLdRfVar from_stack_1.global_52
  loc_B12754: NewIfNullPr clsparaapre
  loc_B12757: Call clsparaapre.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v)
  loc_B1275C: FFreeStr var_90 = "": var_98 = "": var_A0 = "": var_A8 = "": var_B0 = "": var_B8 = "": var_C0 = "": var_E4 = "": var_C8 = ""
  loc_B12773: FFreeAd var_8C = "": var_94 = "": var_9C = "": var_A4 = "": var_AC = "": var_B4 = "": var_BC = "": var_C4 = "": var_CC = ""
  loc_B1278A: FFree1Var var_DC = ""
  loc_B1278D: LitStr "Se modificaron los valores del parámetro de apremio"
  loc_B12790: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B12795: ExitProcHresult
  loc_B12796: FLdRfVar var_3FE7
End Sub

Private Sub FechaTopeMsk_UnknownEvent_0 '9C31D0
  'Data Table: 4A9138
  loc_9C31BC: FLdPr Me
  loc_9C31BF: VCallAd Control_ID_FechaTopeMsk
  loc_9C31C2: CVarAd
  loc_9C31C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C31CB: FFree1Var var_94 = ""
  loc_9C31CE: ExitProcHresult
End Sub

Private Function FechaTopeMsk_UnknownEvent_8(arg_C) 'ABEAE4
  'Data Table: 4A9138
  loc_ABE9EC: FLdPr Me
  loc_ABE9EF: VCallAd Control_ID_FechaTopeMsk
  loc_ABE9F2: FStAdFunc var_88
  loc_ABE9F5: FLdPr var_88
  loc_ABE9F8: LateIdLdVar var_98 DispID_13 -32767
  loc_ABE9FF: CBoolVar
  loc_ABEA01: LitI2_Byte &HFF
  loc_ABEA03: EqI2
  loc_ABEA04: FFree1Ad var_88
  loc_ABEA07: FFree1Var var_98 = ""
  loc_ABEA0A: BranchF loc_ABEAE2
  loc_ABEA0D: LitVarStr var_A8, vbNullString
  loc_ABEA12: PopAdLdVar
  loc_ABEA13: FLdPr Me
  loc_ABEA16: VCallAd Control_ID_FechaTopeMsk
  loc_ABEA19: FStAdFunc var_88
  loc_ABEA1C: FLdPr var_88
  loc_ABEA1F: LateIdSt
  loc_ABEA24: FFree1Ad var_88
  loc_ABEA27: FLdPr Me
  loc_ABEA2A: VCallAd Control_ID_FechaTopeMsk
  loc_ABEA2D: FStAdFunc var_88
  loc_ABEA30: FLdPr var_88
  loc_ABEA33: LateIdLdVar var_98 DispID_22 0
  loc_ABEA3A: CStrVarTmp
  loc_ABEA3B: FStStrNoPop var_BC
  loc_ABEA3E: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABEA43: FStStrNoPop var_C0
  loc_ABEA46: FLdPr Me
  loc_ABEA49: MemStStrCopy
  loc_ABEA4D: FFreeStr var_BC = ""
  loc_ABEA54: FFree1Ad var_88
  loc_ABEA57: FFree1Var var_98 = ""
  loc_ABEA5A: LitVarStr var_A8, "##/##/####"
  loc_ABEA5F: PopAdLdVar
  loc_ABEA60: FLdPr Me
  loc_ABEA63: VCallAd Control_ID_FechaTopeMsk
  loc_ABEA66: FStAdFunc var_88
  loc_ABEA69: FLdPr var_88
  loc_ABEA6C: LateIdSt
  loc_ABEA71: FFree1Ad var_88
  loc_ABEA74: LitVarI2 var_A8, 10
  loc_ABEA79: PopAdLdVar
  loc_ABEA7A: FLdPr Me
  loc_ABEA7D: VCallAd Control_ID_FechaTopeMsk
  loc_ABEA80: FStAdFunc var_88
  loc_ABEA83: FLdPr var_88
  loc_ABEA86: LateIdSt
  loc_ABEA8B: FFree1Ad var_88
  loc_ABEA8E: FLdPr Me
  loc_ABEA91: MemLdStr global_56
  loc_ABEA94: LitStr vbNullString
  loc_ABEA97: NeStr
  loc_ABEA99: BranchF loc_ABEAE2
  loc_ABEA9C: FLdPr Me
  loc_ABEA9F: MemLdStr global_56
  loc_ABEAA2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABEAA7: LitI2_Byte 0
  loc_ABEAA9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABEAAE: CStrDate
  loc_ABEAB0: CVarStr var_98
  loc_ABEAB3: PopAdLdVar
  loc_ABEAB4: FLdPr Me
  loc_ABEAB7: VCallAd Control_ID_FechaTopeMsk
  loc_ABEABA: FStAdFunc var_88
  loc_ABEABD: FLdPr var_88
  loc_ABEAC0: LateIdSt
  loc_ABEAC5: FFree1Ad var_88
  loc_ABEAC8: FFree1Var var_98 = ""
  loc_ABEACB: FLdPr Me
  loc_ABEACE: VCallAd Control_ID_FechaTopeMsk
  loc_ABEAD1: CVarAd
  loc_ABEAD5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABEADA: FFree1Var var_98 = ""
  loc_ABEADD: LitI2_Byte &HFF
  loc_ABEADF: IStI2 arg_C
  loc_ABEAE2: ExitProcHresult
End Function
