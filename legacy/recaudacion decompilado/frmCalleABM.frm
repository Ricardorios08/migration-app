VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmCalleABM
  Caption = "Calle"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmCalleABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12564
  ClientHeight = 9060
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 240
    Top = 840
    Width = 4575
    Height = 420
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
  Begin VB.Frame Frame1
    Left = 240
    Top = 4800
    Width = 9840
    Height = 2520
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
    Begin VB.CommandButton CodiBarrCmd
      Left = 3000
      Top = 1440
      Width = 450
      Height = 345
      TabIndex = 4
      Picture = "frmCalleABM.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiBarrTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 1440
      Width = 615
      Height = 360
      TabIndex = 3
      MaxLength = 3
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
    Begin VB.CommandButton CodiLocaCmd
      Left = 3000
      Top = 1920
      Width = 450
      Height = 345
      TabIndex = 6
      Picture = "frmCalleABM.frx":3344
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiLocaTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 1920
      Width = 615
      Height = 360
      TabIndex = 5
      MaxLength = 3
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
    Begin VB.TextBox DetaCallTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 960
      Width = 6375
      Height = 360
      TabIndex = 2
      MaxLength = 40
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
    Begin VB.TextBox CodiCallTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 480
      Width = 735
      Height = 360
      TabIndex = 1
      MaxLength = 5
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
    Begin VB.Label DetaBarrLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 3600
      Top = 1440
      Width = 4575
      Height = 360
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
    Begin VB.Label Label4
      Caption = "Código Barrio:"
      Left = 720
      Top = 1440
      Width = 1500
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
    Begin VB.Label DetaLocaLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 3600
      Top = 1920
      Width = 4455
      Height = 360
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
    Begin VB.Label Label1
      Caption = "Código Localidad:"
      Left = 360
      Top = 1920
      Width = 1890
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
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 1425
      Top = 960
      Width = 810
      Height = 300
      TabIndex = 9
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
      Caption = "Código Calle:"
      Left = 840
      Top = 480
      Width = 1395
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 240
    Top = 1440
    Width = 12240
    Height = 3195
    TabIndex = 0
    OleObjectBlob = "frmCalleABM.frx":343E
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmCalleABM.frx":3766
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12564
    Height = 528
    TabIndex = 14
    OleObjectBlob = "frmCalleABM.frx":B2E4
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 15
      TabStop = 0   'False
      Picture = "frmCalleABM.frx":B840
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4920
    Top = 840
    Width = 5775
    Height = 375
    TabIndex = 17
    OleObjectBlob = "frmCalleABM.frx":C10A
  End
End

Attribute VB_Name = "frmCalleABM"


Private Sub CodiCallTxt_GotFocus() '9C56F0
  'Data Table: 482FD8
  loc_9C56DC: FLdPr Me
  loc_9C56DF: VCallAd Control_ID_CodiCallTxt
  loc_9C56E2: CVarAd
  loc_9C56E6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C56EB: FFree1Var var_94 = ""
  loc_9C56EE: ExitProcHresult
End Sub

Private Sub CodiCallTxt_KeyPress(KeyAscii As Integer) '9D7D30
  'Data Table: 482FD8
  loc_9D7D18: LitStr "0123456789"
  loc_9D7D1B: FStStrCopy var_88
  loc_9D7D1E: FLdRfVar var_88
  loc_9D7D21: ILdRf KeyAscii
  loc_9D7D24: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D7D29: IStI2 KeyAscii
  loc_9D7D2C: FFree1Str var_88
  loc_9D7D2F: ExitProcHresult
End Sub

Private Sub CodiCallTxt_Validate(Cancel As Boolean) 'AE1AFC
  'Data Table: 482FD8
  loc_AE19A0: FLdRfVar var_8A
  loc_AE19A3: FLdPr Me
  loc_AE19A6: VCallAd Control_ID_cmdCancelar
  loc_AE19A9: FStAdFunc var_88
  loc_AE19AC: FLdPr var_88
  loc_AE19AF:  = Me.Value
  loc_AE19B4: FLdI2 var_8A
  loc_AE19B7: NotI4
  loc_AE19B8: FLdRfVar var_92
  loc_AE19BB: FLdPr Me
  loc_AE19BE: VCallAd Control_ID_CodiCallTxt
  loc_AE19C1: FStAdFunc var_90
  loc_AE19C4: FLdPr var_90
  loc_AE19C7:  = Me.Enabled
  loc_AE19CC: FLdI2 var_92
  loc_AE19CF: LitI2_Byte &HFF
  loc_AE19D1: EqI2
  loc_AE19D2: AndI4
  loc_AE19D3: FFreeAd var_88 = ""
  loc_AE19DA: BranchF loc_AE1AFB
  loc_AE19DD: FLdRfVar var_98
  loc_AE19E0: FLdPr Me
  loc_AE19E3: VCallAd Control_ID_CodiCallTxt
  loc_AE19E6: FStAdFunc var_88
  loc_AE19E9: FLdPr var_88
  loc_AE19EC:  = Me.Text
  loc_AE19F1: FLdZeroAd var_98
  loc_AE19F4: CVarStr var_A8
  loc_AE19F7: ImpAdCallI2 IsNumeric()
  loc_AE19FC: NotI4
  loc_AE19FD: FFree1Ad var_88
  loc_AE1A00: FFree1Var var_A8 = ""
  loc_AE1A03: BranchF loc_AE1A24
  loc_AE1A06: LitI2_Byte 0
  loc_AE1A08: CStrUI1
  loc_AE1A0A: FStStrNoPop var_98
  loc_AE1A0D: FLdPr Me
  loc_AE1A10: VCallAd Control_ID_CodiCallTxt
  loc_AE1A13: FStAdFunc var_88
  loc_AE1A16: FLdPr var_88
  loc_AE1A19: Me.Text = from_stack_1
  loc_AE1A1E: FFree1Str var_98
  loc_AE1A21: FFree1Ad var_88
  loc_AE1A24: FLdRfVar var_98
  loc_AE1A27: FLdPr Me
  loc_AE1A2A: VCallAd Control_ID_CodiCallTxt
  loc_AE1A2D: FStAdFunc var_88
  loc_AE1A30: FLdPr var_88
  loc_AE1A33:  = Me.Text
  loc_AE1A38: LitI2_Byte 0
  loc_AE1A3A: LitI2_Byte 0
  loc_AE1A3C: ILdRf var_98
  loc_AE1A3F: LitStr "codigo de la Calle"
  loc_AE1A42: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AE1A47: FStStrNoPop var_AC
  loc_AE1A4A: FLdPr Me
  loc_AE1A4D: MemStStrCopy
  loc_AE1A51: FFreeStr var_98 = ""
  loc_AE1A58: FFree1Ad var_88
  loc_AE1A5B: FLdPr Me
  loc_AE1A5E: MemLdStr global_60
  loc_AE1A61: LitStr vbNullString
  loc_AE1A64: NeStr
  loc_AE1A66: BranchF loc_AE1A8C
  loc_AE1A69: FLdPr Me
  loc_AE1A6C: MemLdStr global_60
  loc_AE1A6F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE1A74: FLdPr Me
  loc_AE1A77: VCallAd Control_ID_CodiCallTxt
  loc_AE1A7A: CVarAd
  loc_AE1A7E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE1A83: FFree1Var var_A8 = ""
  loc_AE1A86: LitI2_Byte &HFF
  loc_AE1A88: IStI2 Cancel
  loc_AE1A8B: ExitProcHresult
  loc_AE1A8C: FLdRfVar var_AC
  loc_AE1A8F: FLdRfVar var_98
  loc_AE1A92: FLdPr Me
  loc_AE1A95: VCallAd Control_ID_CodiCallTxt
  loc_AE1A98: FStAdFunc var_88
  loc_AE1A9B: FLdPr var_88
  loc_AE1A9E:  = Me.Text
  loc_AE1AA3: ILdRf var_98
  loc_AE1AA6: CI2Str
  loc_AE1AA8: FLdPr Me
  loc_AE1AAB: MemLdRfVar from_stack_1.global_52
  loc_AE1AAE: NewIfNullPr clscalle
  loc_AE1AB1: from_stack_2v = clscalle.ValidaClave(from_stack_1v)
  loc_AE1AB6: ILdRf var_AC
  loc_AE1AB9: FLdPr Me
  loc_AE1ABC: MemStStrCopy
  loc_AE1AC0: FFreeStr var_98 = ""
  loc_AE1AC7: FFree1Ad var_88
  loc_AE1ACA: FLdPr Me
  loc_AE1ACD: MemLdStr global_60
  loc_AE1AD0: LitStr vbNullString
  loc_AE1AD3: NeStr
  loc_AE1AD5: BranchF loc_AE1AFB
  loc_AE1AD8: FLdPr Me
  loc_AE1ADB: MemLdStr global_60
  loc_AE1ADE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE1AE3: FLdPr Me
  loc_AE1AE6: VCallAd Control_ID_CodiCallTxt
  loc_AE1AE9: CVarAd
  loc_AE1AED: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE1AF2: FFree1Var var_A8 = ""
  loc_AE1AF5: LitI2_Byte &HFF
  loc_AE1AF7: IStI2 Cancel
  loc_AE1AFA: ExitProcHresult
  loc_AE1AFB: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AA1F74
  'Data Table: 482FD8
  loc_AA1EC4: LitI2_Byte 0
  loc_AA1EC6: FLdPr Me
  loc_AA1EC9: MemStI2 global_56
  loc_AA1ECC: LitI2_Byte 0
  loc_AA1ECE: ILdRf Me
  loc_AA1ED1: CastAd
  loc_AA1ED4: FStAdFunc var_88
  loc_AA1ED7: FLdRfVar var_88
  loc_AA1EDA: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AA1EDF: FFree1Ad var_88
  loc_AA1EE2: LitI4 0
  loc_AA1EE7: LitI4 0
  loc_AA1EEC: FLdRfVar var_8C
  loc_AA1EEF: Redim
  loc_AA1EF9: FLdPr Me
  loc_AA1EFC: VCallAd Control_ID_dgdABMS
  loc_AA1EFF: CVarAd
  loc_AA1F03: ParmAry1St
  loc_AA1F09: FLdRfVar var_8C
  loc_AA1F0C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA1F11: FLdRfVar var_8C
  loc_AA1F14: Erase
  loc_AA1F15: Call EnlazaTodo()
  loc_AA1F1A: ILdRf Me
  loc_AA1F1D: CastAd
  loc_AA1F20: FStAdFunc var_88
  loc_AA1F23: FLdRfVar var_88
  loc_AA1F26: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AA1F2B: FFree1Ad var_88
  loc_AA1F2E: LitI4 0
  loc_AA1F33: LitI4 1
  loc_AA1F38: FLdRfVar var_8C
  loc_AA1F3B: Redim
  loc_AA1F45: FLdPr Me
  loc_AA1F48: VCallAd Control_ID_FiltroCbo
  loc_AA1F4B: CVarAd
  loc_AA1F4F: ParmAry1St
  loc_AA1F55: FLdPr Me
  loc_AA1F58: VCallAd Control_ID_FiltroMsk
  loc_AA1F5B: CVarAd
  loc_AA1F5F: ParmAry1St
  loc_AA1F65: FLdRfVar var_8C
  loc_AA1F68: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA1F6D: FLdRfVar var_8C
  loc_AA1F70: Erase
  loc_AA1F71: ExitProcHresult
End Sub

Private Sub DetaCallTxt_GotFocus() '9C5858
  'Data Table: 482FD8
  loc_9C5844: FLdPr Me
  loc_9C5847: VCallAd Control_ID_DetaCallTxt
  loc_9C584A: CVarAd
  loc_9C584E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5853: FFree1Var var_94 = ""
  loc_9C5856: ExitProcHresult
End Sub

Private Sub DetaCallTxt_Validate(Cancel As Boolean) 'A90A8C
  'Data Table: 482FD8
  loc_A909EC: FLdRfVar var_8A
  loc_A909EF: FLdPr Me
  loc_A909F2: VCallAd Control_ID_cmdCancelar
  loc_A909F5: FStAdFunc var_88
  loc_A909F8: FLdPr var_88
  loc_A909FB:  = Me.Value
  loc_A90A00: FLdI2 var_8A
  loc_A90A03: NotI4
  loc_A90A04: FLdRfVar var_92
  loc_A90A07: FLdPr Me
  loc_A90A0A: VCallAd Control_ID_DetaCallTxt
  loc_A90A0D: FStAdFunc var_90
  loc_A90A10: FLdPr var_90
  loc_A90A13:  = Me.Enabled
  loc_A90A18: FLdI2 var_92
  loc_A90A1B: AndI4
  loc_A90A1C: FFreeAd var_88 = ""
  loc_A90A23: BranchF loc_A90A89
  loc_A90A26: FLdRfVar var_98
  loc_A90A29: FLdPr Me
  loc_A90A2C: VCallAd Control_ID_DetaCallTxt
  loc_A90A2F: FStAdFunc var_88
  loc_A90A32: FLdPr var_88
  loc_A90A35:  = Me.Text
  loc_A90A3A: ILdRf var_98
  loc_A90A3D: LitStr "CALLE"
  loc_A90A40: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A90A45: FStStrNoPop var_9C
  loc_A90A48: FLdPr Me
  loc_A90A4B: MemStStrCopy
  loc_A90A4F: FFreeStr var_98 = ""
  loc_A90A56: FFree1Ad var_88
  loc_A90A59: FLdPr Me
  loc_A90A5C: MemLdStr global_60
  loc_A90A5F: LitStr vbNullString
  loc_A90A62: NeStr
  loc_A90A64: BranchF loc_A90A89
  loc_A90A67: FLdPr Me
  loc_A90A6A: MemLdStr global_60
  loc_A90A6D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A90A72: FLdPr Me
  loc_A90A75: VCallAd Control_ID_DetaCallTxt
  loc_A90A78: CVarAd
  loc_A90A7C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90A81: FFree1Var var_AC = ""
  loc_A90A84: LitI2_Byte &HFF
  loc_A90A86: IStI2 Cancel
  loc_A90A89: ExitProcHresult
End Sub

Private Sub CodiLocaTxt_GotFocus() '9C7868
  'Data Table: 482FD8
  loc_9C7854: FLdPr Me
  loc_9C7857: VCallAd Control_ID_CodiLocaTxt
  loc_9C785A: CVarAd
  loc_9C785E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7863: FFree1Var var_94 = ""
  loc_9C7866: ExitProcHresult
End Sub

Private Sub CodiLocaTxt_KeyPress(KeyAscii As Integer) '9D7DC8
  'Data Table: 482FD8
  loc_9D7DB0: LitStr "0123456789"
  loc_9D7DB3: FStStrCopy var_88
  loc_9D7DB6: FLdRfVar var_88
  loc_9D7DB9: ILdRf KeyAscii
  loc_9D7DBC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D7DC1: IStI2 KeyAscii
  loc_9D7DC4: FFree1Str var_88
  loc_9D7DC7: ExitProcHresult
End Sub

Private Sub CodiLocaTxt_Validate(Cancel As Boolean) 'AD8EF0
  'Data Table: 482FD8
  loc_AD8DB0: FLdRfVar var_8A
  loc_AD8DB3: FLdPr Me
  loc_AD8DB6: VCallAd Control_ID_cmdCancelar
  loc_AD8DB9: FStAdFunc var_88
  loc_AD8DBC: FLdPr var_88
  loc_AD8DBF:  = Me.Value
  loc_AD8DC4: FLdI2 var_8A
  loc_AD8DC7: NotI4
  loc_AD8DC8: FLdRfVar var_92
  loc_AD8DCB: FLdPr Me
  loc_AD8DCE: VCallAd Control_ID_CodiLocaTxt
  loc_AD8DD1: FStAdFunc var_90
  loc_AD8DD4: FLdPr var_90
  loc_AD8DD7:  = Me.Enabled
  loc_AD8DDC: FLdI2 var_92
  loc_AD8DDF: LitI2_Byte &HFF
  loc_AD8DE1: EqI2
  loc_AD8DE2: AndI4
  loc_AD8DE3: FFreeAd var_88 = ""
  loc_AD8DEA: BranchF loc_AD8EEF
  loc_AD8DED: FLdRfVar var_98
  loc_AD8DF0: FLdPr Me
  loc_AD8DF3: VCallAd Control_ID_CodiLocaTxt
  loc_AD8DF6: FStAdFunc var_88
  loc_AD8DF9: FLdPr var_88
  loc_AD8DFC:  = Me.Text
  loc_AD8E01: FLdZeroAd var_98
  loc_AD8E04: CVarStr var_A8
  loc_AD8E07: ImpAdCallI2 IsNumeric()
  loc_AD8E0C: NotI4
  loc_AD8E0D: FFree1Ad var_88
  loc_AD8E10: FFree1Var var_A8 = ""
  loc_AD8E13: BranchF loc_AD8E34
  loc_AD8E16: LitI2_Byte 0
  loc_AD8E18: CStrUI1
  loc_AD8E1A: FStStrNoPop var_98
  loc_AD8E1D: FLdPr Me
  loc_AD8E20: VCallAd Control_ID_CodiLocaTxt
  loc_AD8E23: FStAdFunc var_88
  loc_AD8E26: FLdPr var_88
  loc_AD8E29: Me.Text = from_stack_1
  loc_AD8E2E: FFree1Str var_98
  loc_AD8E31: FFree1Ad var_88
  loc_AD8E34: FLdRfVar var_98
  loc_AD8E37: FLdPr Me
  loc_AD8E3A: VCallAd Control_ID_CodiLocaTxt
  loc_AD8E3D: FStAdFunc var_88
  loc_AD8E40: FLdPr var_88
  loc_AD8E43:  = Me.Text
  loc_AD8E48: ILdRf var_98
  loc_AD8E4B: ImpAdCallI2 Proc_18_22_A588CC()
  loc_AD8E50: FStStrNoPop var_AC
  loc_AD8E53: FLdPr Me
  loc_AD8E56: MemStStrCopy
  loc_AD8E5A: FFreeStr var_98 = ""
  loc_AD8E61: FFree1Ad var_88
  loc_AD8E64: FLdPr Me
  loc_AD8E67: MemLdStr global_60
  loc_AD8E6A: LitStr vbNullString
  loc_AD8E6D: NeStr
  loc_AD8E6F: BranchF loc_AD8EAF
  loc_AD8E72: FLdPr Me
  loc_AD8E75: MemLdStr global_60
  loc_AD8E78: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD8E7D: LitStr vbNullString
  loc_AD8E80: FLdPr Me
  loc_AD8E83: VCallAd Control_ID_DetaLocaLbl
  loc_AD8E86: FStAdFunc var_88
  loc_AD8E89: FLdPr var_88
  loc_AD8E8C: Me.Caption = from_stack_1
  loc_AD8E91: FFree1Ad var_88
  loc_AD8E94: FLdPr Me
  loc_AD8E97: VCallAd Control_ID_CodiLocaTxt
  loc_AD8E9A: CVarAd
  loc_AD8E9E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD8EA3: FFree1Var var_A8 = ""
  loc_AD8EA6: LitI2_Byte &HFF
  loc_AD8EA8: IStI2 Cancel
  loc_AD8EAB: ExitProcHresult
  loc_AD8EAC: Branch loc_AD8EEF
  loc_AD8EAF: FLdRfVar var_98
  loc_AD8EB2: FLdPr Me
  loc_AD8EB5: VCallAd Control_ID_CodiLocaTxt
  loc_AD8EB8: FStAdFunc var_88
  loc_AD8EBB: FLdPr var_88
  loc_AD8EBE:  = Me.Text
  loc_AD8EC3: ILdRf var_98
  loc_AD8EC6: CI2Str
  loc_AD8EC8: ImpAdCallI2 Proc_270_30_A7AC80()
  loc_AD8ECD: FStStrNoPop var_AC
  loc_AD8ED0: FLdPr Me
  loc_AD8ED3: VCallAd Control_ID_DetaLocaLbl
  loc_AD8ED6: FStAdFunc var_90
  loc_AD8ED9: FLdPr var_90
  loc_AD8EDC: Me.Caption = from_stack_1
  loc_AD8EE1: FFreeStr var_98 = ""
  loc_AD8EE8: FFreeAd var_88 = ""
  loc_AD8EEF: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B8D2F4
  'Data Table: 482FD8
  loc_B8CDC0: ILdRf Button
  loc_B8CDC3: FStAd var_88 
  loc_B8CDC7: FLdRfVar var_90
  loc_B8CDCA: FLdPr var_88
  loc_B8CDCD:  = Me.Key
  loc_B8CDD2: FLdZeroAd var_90
  loc_B8CDD5: FStStr var_94
  loc_B8CDD8: ILdRf var_94
  loc_B8CDDB: LitStr "btnCrear"
  loc_B8CDDE: EqStr
  loc_B8CDE0: BranchF loc_B8CF3E
  loc_B8CDE3: LitI2_Byte 1
  loc_B8CDE5: FLdPr Me
  loc_B8CDE8: MemStI2 global_56
  loc_B8CDEB: ILdRf Me
  loc_B8CDEE: CastAd
  loc_B8CDF1: FStAdFunc var_98
  loc_B8CDF4: FLdRfVar var_98
  loc_B8CDF7: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B8CDFC: FFree1Ad var_98
  loc_B8CDFF: LitI4 0
  loc_B8CE04: LitI4 0
  loc_B8CE09: FLdRfVar var_9C
  loc_B8CE0C: Redim
  loc_B8CE16: FLdPr Me
  loc_B8CE19: VCallAd Control_ID_dgdABMS
  loc_B8CE1C: CVarAd
  loc_B8CE20: ParmAry1St
  loc_B8CE26: FLdRfVar var_9C
  loc_B8CE29: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8CE2E: FLdRfVar var_9C
  loc_B8CE31: Erase
  loc_B8CE32: ILdRf Me
  loc_B8CE35: CastAd
  loc_B8CE38: FStAdFunc var_98
  loc_B8CE3B: FLdRfVar var_98
  loc_B8CE3E: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B8CE43: FFree1Ad var_98
  loc_B8CE46: ILdRf Me
  loc_B8CE49: CastAd
  loc_B8CE4C: FStAdFunc var_98
  loc_B8CE4F: FLdRfVar var_98
  loc_B8CE52: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B8CE57: FFree1Ad var_98
  loc_B8CE5A: FLdRfVar var_B0
  loc_B8CE5D: FLdPr Me
  loc_B8CE60: MemLdRfVar from_stack_1.global_52
  loc_B8CE63: NewIfNullPr clscalle
  loc_B8CE66: from_stack_1v = clscalle.NuevoRegistro()
  loc_B8CE6B: ILdRf var_B0
  loc_B8CE6E: CStrI4
  loc_B8CE70: FStStrNoPop var_90
  loc_B8CE73: FLdPr Me
  loc_B8CE76: VCallAd Control_ID_CodiCallTxt
  loc_B8CE79: FStAdFunc var_98
  loc_B8CE7C: FLdPr var_98
  loc_B8CE7F: Me.Text = from_stack_1
  loc_B8CE84: FFree1Str var_90
  loc_B8CE87: FFree1Ad var_98
  loc_B8CE8A: LitStr "0"
  loc_B8CE8D: FLdPr Me
  loc_B8CE90: VCallAd Control_ID_CodiBarrTxt
  loc_B8CE93: FStAdFunc var_98
  loc_B8CE96: FLdPr var_98
  loc_B8CE99: Me.Text = from_stack_1
  loc_B8CE9E: FFree1Ad var_98
  loc_B8CEA1: LitStr "0"
  loc_B8CEA4: FLdPr Me
  loc_B8CEA7: VCallAd Control_ID_CodiLocaTxt
  loc_B8CEAA: FStAdFunc var_98
  loc_B8CEAD: FLdPr var_98
  loc_B8CEB0: Me.Text = from_stack_1
  loc_B8CEB5: FFree1Ad var_98
  loc_B8CEB8: LitI4 0
  loc_B8CEBD: LitI4 5
  loc_B8CEC2: FLdRfVar var_9C
  loc_B8CEC5: Redim
  loc_B8CECF: FLdPr Me
  loc_B8CED2: VCallAd Control_ID_CodiCallTxt
  loc_B8CED5: CVarAd
  loc_B8CED9: ParmAry1St
  loc_B8CEDF: FLdPr Me
  loc_B8CEE2: VCallAd Control_ID_DetaCallTxt
  loc_B8CEE5: CVarAd
  loc_B8CEE9: ParmAry1St
  loc_B8CEEF: FLdPr Me
  loc_B8CEF2: VCallAd Control_ID_CodiBarrTxt
  loc_B8CEF5: CVarAd
  loc_B8CEF9: ParmAry1St
  loc_B8CEFF: FLdPr Me
  loc_B8CF02: VCallAd Control_ID_CodiLocaTxt
  loc_B8CF05: CVarAd
  loc_B8CF09: ParmAry1St
  loc_B8CF0F: FLdPr Me
  loc_B8CF12: VCallAd Control_ID_CodiLocaCmd
  loc_B8CF15: CVarAd
  loc_B8CF19: ParmAry1St
  loc_B8CF1F: FLdPr Me
  loc_B8CF22: VCallAd Control_ID_CodiBarrCmd
  loc_B8CF25: CVarAd
  loc_B8CF29: ParmAry1St
  loc_B8CF2F: FLdRfVar var_9C
  loc_B8CF32: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8CF37: FLdRfVar var_9C
  loc_B8CF3A: Erase
  loc_B8CF3B: Branch loc_B8D2F0
  loc_B8CF3E: ILdRf var_94
  loc_B8CF41: LitStr "btnModificar"
  loc_B8CF44: EqStr
  loc_B8CF46: BranchF loc_B8D03F
  loc_B8CF49: FLdRfVar var_B0
  loc_B8CF4C: FLdPr Me
  loc_B8CF4F: MemLdRfVar from_stack_1.global_52
  loc_B8CF52: NewIfNullPr clscalle
  loc_B8CF55: from_stack_1 = clscalle.RecordCount
  loc_B8CF5A: ILdRf var_B0
  loc_B8CF5D: LitI4 0
  loc_B8CF62: GtI4
  loc_B8CF63: BranchF loc_B8D03C
  loc_B8CF66: LitI2_Byte 2
  loc_B8CF68: FLdPr Me
  loc_B8CF6B: MemStI2 global_56
  loc_B8CF6E: ILdRf Me
  loc_B8CF71: CastAd
  loc_B8CF74: FStAdFunc var_98
  loc_B8CF77: FLdRfVar var_98
  loc_B8CF7A: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B8CF7F: FFree1Ad var_98
  loc_B8CF82: LitI4 0
  loc_B8CF87: LitI4 0
  loc_B8CF8C: FLdRfVar var_9C
  loc_B8CF8F: Redim
  loc_B8CF99: FLdPr Me
  loc_B8CF9C: VCallAd Control_ID_dgdABMS
  loc_B8CF9F: CVarAd
  loc_B8CFA3: ParmAry1St
  loc_B8CFA9: FLdRfVar var_9C
  loc_B8CFAC: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8CFB1: FLdRfVar var_9C
  loc_B8CFB4: Erase
  loc_B8CFB5: ILdRf Me
  loc_B8CFB8: CastAd
  loc_B8CFBB: FStAdFunc var_98
  loc_B8CFBE: FLdRfVar var_98
  loc_B8CFC1: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B8CFC6: FFree1Ad var_98
  loc_B8CFC9: LitI4 0
  loc_B8CFCE: LitI4 4
  loc_B8CFD3: FLdRfVar var_9C
  loc_B8CFD6: Redim
  loc_B8CFE0: FLdPr Me
  loc_B8CFE3: VCallAd Control_ID_DetaCallTxt
  loc_B8CFE6: CVarAd
  loc_B8CFEA: ParmAry1St
  loc_B8CFF0: FLdPr Me
  loc_B8CFF3: VCallAd Control_ID_CodiBarrTxt
  loc_B8CFF6: CVarAd
  loc_B8CFFA: ParmAry1St
  loc_B8D000: FLdPr Me
  loc_B8D003: VCallAd Control_ID_CodiLocaTxt
  loc_B8D006: CVarAd
  loc_B8D00A: ParmAry1St
  loc_B8D010: FLdPr Me
  loc_B8D013: VCallAd Control_ID_CodiLocaCmd
  loc_B8D016: CVarAd
  loc_B8D01A: ParmAry1St
  loc_B8D020: FLdPr Me
  loc_B8D023: VCallAd Control_ID_CodiBarrCmd
  loc_B8D026: CVarAd
  loc_B8D02A: ParmAry1St
  loc_B8D030: FLdRfVar var_9C
  loc_B8D033: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8D038: FLdRfVar var_9C
  loc_B8D03B: Erase
  loc_B8D03C: Branch loc_B8D2F0
  loc_B8D03F: ILdRf var_94
  loc_B8D042: LitStr "btnEliminar"
  loc_B8D045: EqStr
  loc_B8D047: BranchF loc_B8D04D
  loc_B8D04A: Branch loc_B8D2F0
  loc_B8D04D: ILdRf var_94
  loc_B8D050: LitStr "btnGuardar"
  loc_B8D053: EqStr
  loc_B8D055: BranchF loc_B8D1EC
  loc_B8D058: LitI2_Byte 0
  loc_B8D05A: PopTmpLdAd2 var_102
  loc_B8D05D: Call CodiCallTxt_Validate(from_stack_1v)
  loc_B8D062: FLdPr Me
  loc_B8D065: MemLdStr global_60
  loc_B8D068: LitStr vbNullString
  loc_B8D06B: NeStr
  loc_B8D06D: BranchF loc_B8D071
  loc_B8D070: ExitProcHresult
  loc_B8D071: LitI2_Byte 0
  loc_B8D073: PopTmpLdAd2 var_102
  loc_B8D076: Call DetaCallTxt_Validate(from_stack_1v)
  loc_B8D07B: FLdPr Me
  loc_B8D07E: MemLdStr global_60
  loc_B8D081: LitStr vbNullString
  loc_B8D084: NeStr
  loc_B8D086: BranchF loc_B8D08A
  loc_B8D089: ExitProcHresult
  loc_B8D08A: LitI2_Byte 0
  loc_B8D08C: PopTmpLdAd2 var_102
  loc_B8D08F: Call CodiBarrTxt_Validate(from_stack_1v)
  loc_B8D094: FLdPr Me
  loc_B8D097: MemLdStr global_60
  loc_B8D09A: LitStr vbNullString
  loc_B8D09D: NeStr
  loc_B8D09F: BranchF loc_B8D0A3
  loc_B8D0A2: ExitProcHresult
  loc_B8D0A3: LitI2_Byte 0
  loc_B8D0A5: PopTmpLdAd2 var_102
  loc_B8D0A8: Call CodiLocaTxt_Validate(from_stack_1v)
  loc_B8D0AD: FLdPr Me
  loc_B8D0B0: MemLdStr global_60
  loc_B8D0B3: LitStr vbNullString
  loc_B8D0B6: NeStr
  loc_B8D0B8: BranchF loc_B8D0BC
  loc_B8D0BB: ExitProcHresult
  loc_B8D0BC: FLdPr Me
  loc_B8D0BF: MemLdI2 global_56
  loc_B8D0C2: FStI2 var_104
  loc_B8D0C5: FLdI2 var_104
  loc_B8D0C8: LitI2_Byte 1
  loc_B8D0CA: EqI2
  loc_B8D0CB: BranchF loc_B8D156
  loc_B8D0CE: FLdRfVar var_90
  loc_B8D0D1: FLdPr Me
  loc_B8D0D4: VCallAd Control_ID_CodiCallTxt
  loc_B8D0D7: FStAdFunc var_98
  loc_B8D0DA: FLdPr var_98
  loc_B8D0DD:  = Me.Text
  loc_B8D0E2: FLdRfVar var_10C
  loc_B8D0E5: FLdPr Me
  loc_B8D0E8: VCallAd Control_ID_DetaCallTxt
  loc_B8D0EB: FStAdFunc var_108
  loc_B8D0EE: FLdPr var_108
  loc_B8D0F1:  = Me.Text
  loc_B8D0F6: FLdRfVar var_114
  loc_B8D0F9: FLdPr Me
  loc_B8D0FC: VCallAd Control_ID_CodiBarrTxt
  loc_B8D0FF: FStAdFunc var_110
  loc_B8D102: FLdPr var_110
  loc_B8D105:  = Me.Text
  loc_B8D10A: FLdRfVar var_11C
  loc_B8D10D: FLdPr Me
  loc_B8D110: VCallAd Control_ID_CodiLocaTxt
  loc_B8D113: FStAdFunc var_118
  loc_B8D116: FLdPr var_118
  loc_B8D119:  = Me.Text
  loc_B8D11E: ILdRf var_11C
  loc_B8D121: CI2Str
  loc_B8D123: ILdRf var_114
  loc_B8D126: CI2Str
  loc_B8D128: ILdRf var_10C
  loc_B8D12B: ILdRf var_90
  loc_B8D12E: CI4Str
  loc_B8D12F: FLdPr Me
  loc_B8D132: MemLdRfVar from_stack_1.global_52
  loc_B8D135: NewIfNullPr clscalle
  loc_B8D138: Call clscalle.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B8D13D: FFreeStr var_90 = "": var_10C = "": var_114 = ""
  loc_B8D148: FFreeAd var_98 = "": var_108 = "": var_110 = ""
  loc_B8D153: Branch loc_B8D1E4
  loc_B8D156: FLdI2 var_104
  loc_B8D159: LitI2_Byte 2
  loc_B8D15B: EqI2
  loc_B8D15C: BranchF loc_B8D1E4
  loc_B8D15F: FLdRfVar var_90
  loc_B8D162: FLdPr Me
  loc_B8D165: VCallAd Control_ID_CodiCallTxt
  loc_B8D168: FStAdFunc var_98
  loc_B8D16B: FLdPr var_98
  loc_B8D16E:  = Me.Text
  loc_B8D173: FLdRfVar var_10C
  loc_B8D176: FLdPr Me
  loc_B8D179: VCallAd Control_ID_DetaCallTxt
  loc_B8D17C: FStAdFunc var_108
  loc_B8D17F: FLdPr var_108
  loc_B8D182:  = Me.Text
  loc_B8D187: FLdRfVar var_114
  loc_B8D18A: FLdPr Me
  loc_B8D18D: VCallAd Control_ID_CodiBarrTxt
  loc_B8D190: FStAdFunc var_110
  loc_B8D193: FLdPr var_110
  loc_B8D196:  = Me.Text
  loc_B8D19B: FLdRfVar var_11C
  loc_B8D19E: FLdPr Me
  loc_B8D1A1: VCallAd Control_ID_CodiLocaTxt
  loc_B8D1A4: FStAdFunc var_118
  loc_B8D1A7: FLdPr var_118
  loc_B8D1AA:  = Me.Text
  loc_B8D1AF: ILdRf var_11C
  loc_B8D1B2: CI2Str
  loc_B8D1B4: ILdRf var_114
  loc_B8D1B7: CI2Str
  loc_B8D1B9: ILdRf var_10C
  loc_B8D1BC: ILdRf var_90
  loc_B8D1BF: CI4Str
  loc_B8D1C0: FLdPr Me
  loc_B8D1C3: MemLdRfVar from_stack_1.global_52
  loc_B8D1C6: NewIfNullPr clscalle
  loc_B8D1C9: Call clscalle.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B8D1CE: FFreeStr var_90 = "": var_10C = "": var_114 = ""
  loc_B8D1D9: FFreeAd var_98 = "": var_108 = "": var_110 = ""
  loc_B8D1E4: Call cmdCancelar_Click()
  loc_B8D1E9: Branch loc_B8D2F0
  loc_B8D1EC: ILdRf var_94
  loc_B8D1EF: LitStr "btnCancelar"
  loc_B8D1F2: EqStr
  loc_B8D1F4: BranchF loc_B8D1FF
  loc_B8D1F7: Call cmdCancelar_Click()
  loc_B8D1FC: Branch loc_B8D2F0
  loc_B8D1FF: ILdRf var_94
  loc_B8D202: LitStr "btnPrimero"
  loc_B8D205: EqStr
  loc_B8D207: BranchF loc_B8D21B
  loc_B8D20A: FLdPr Me
  loc_B8D20D: MemLdRfVar from_stack_1.global_52
  loc_B8D210: NewIfNullPr clscalle
  loc_B8D213: Call clscalle.MoveFirst()
  loc_B8D218: Branch loc_B8D2F0
  loc_B8D21B: ILdRf var_94
  loc_B8D21E: LitStr "btnAnterior"
  loc_B8D221: EqStr
  loc_B8D223: BranchF loc_B8D237
  loc_B8D226: FLdPr Me
  loc_B8D229: MemLdRfVar from_stack_1.global_52
  loc_B8D22C: NewIfNullPr clscalle
  loc_B8D22F: Call clscalle.MovePrevious()
  loc_B8D234: Branch loc_B8D2F0
  loc_B8D237: ILdRf var_94
  loc_B8D23A: LitStr "btnSiguiente"
  loc_B8D23D: EqStr
  loc_B8D23F: BranchF loc_B8D253
  loc_B8D242: FLdPr Me
  loc_B8D245: MemLdRfVar from_stack_1.global_52
  loc_B8D248: NewIfNullPr clscalle
  loc_B8D24B: Call clscalle.MoveNext()
  loc_B8D250: Branch loc_B8D2F0
  loc_B8D253: ILdRf var_94
  loc_B8D256: LitStr "btnUltimo"
  loc_B8D259: EqStr
  loc_B8D25B: BranchF loc_B8D26F
  loc_B8D25E: FLdPr Me
  loc_B8D261: MemLdRfVar from_stack_1.global_52
  loc_B8D264: NewIfNullPr clscalle
  loc_B8D267: Call clscalle.MoveLast()
  loc_B8D26C: Branch loc_B8D2F0
  loc_B8D26F: ILdRf var_94
  loc_B8D272: LitStr "btnFiltrar"
  loc_B8D275: EqStr
  loc_B8D277: BranchF loc_B8D27D
  loc_B8D27A: Branch loc_B8D2F0
  loc_B8D27D: ILdRf var_94
  loc_B8D280: LitStr "btnBuscar"
  loc_B8D283: EqStr
  loc_B8D285: BranchF loc_B8D28B
  loc_B8D288: Branch loc_B8D2F0
  loc_B8D28B: ILdRf var_94
  loc_B8D28E: LitStr "btnImprimir"
  loc_B8D291: EqStr
  loc_B8D293: BranchF loc_B8D299
  loc_B8D296: Branch loc_B8D2F0
  loc_B8D299: ILdRf var_94
  loc_B8D29C: LitStr "btnAyuda"
  loc_B8D29F: EqStr
  loc_B8D2A1: BranchF loc_B8D2D0
  loc_B8D2A4: LitVar_Missing var_E0
  loc_B8D2A7: LitVar_Missing var_D0
  loc_B8D2AA: LitVar_Missing var_C0
  loc_B8D2AD: LitI4 0
  loc_B8D2B2: LitVarStr var_12C, "Opcion no disponible en esta version."
  loc_B8D2B7: FStVarCopyObj var_AC
  loc_B8D2BA: FLdRfVar var_AC
  loc_B8D2BD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B8D2C2: FFreeVar var_AC = "": var_C0 = "": var_D0 = ""
  loc_B8D2CD: Branch loc_B8D2F0
  loc_B8D2D0: ILdRf var_94
  loc_B8D2D3: LitStr "btnSalir"
  loc_B8D2D6: EqStr
  loc_B8D2D8: BranchF loc_B8D2F0
  loc_B8D2DB: ILdRf Me
  loc_B8D2DE: FStAdNoPop
  loc_B8D2E2: ImpAdLdRf MemVar_D9C5D8
  loc_B8D2E5: NewIfNullPr Global
  loc_B8D2E8: Global.Unload from_stack_1
  loc_B8D2ED: FFree1Ad var_98
  loc_B8D2F0: ExitProcHresult
End Sub

Private Sub CodiBarrCmd_Click() 'AA7F94
  'Data Table: 482FD8
  loc_AA7ECC: LitVar_Missing var_A4
  loc_AA7ECF: PopAdLdVar
  loc_AA7ED0: LitVarI4
  loc_AA7ED8: PopAdLdVar
  loc_AA7ED9: ImpAdLdRf MemVar_D9428C
  loc_AA7EDC: NewIfNullPr dlgBuscarBarrio
  loc_AA7EDF: dlgBuscarBarrio.Show from_stack_1, from_stack_2
  loc_AA7EE4: FLdRfVar var_AC
  loc_AA7EE7: FLdRfVar var_A8
  loc_AA7EEA: ImpAdLdRf MemVar_D9428C
  loc_AA7EED: NewIfNullPr dlgBuscarBarrio
  loc_AA7EF0: from_stack_1v = dlgBuscarBarrio.global_4295556Get()
  loc_AA7EF5: FLdPr var_A8
  loc_AA7EF8: from_stack_1 = clsBarrio.RecordCount
  loc_AA7EFD: ILdRf var_AC
  loc_AA7F00: LitI4 0
  loc_AA7F05: GtI4
  loc_AA7F06: FFree1Ad var_A8
  loc_AA7F09: BranchF loc_AA7F7F
  loc_AA7F0C: FLdRfVar var_AE
  loc_AA7F0F: FLdRfVar var_A8
  loc_AA7F12: ImpAdLdRf MemVar_D9428C
  loc_AA7F15: NewIfNullPr dlgBuscarBarrio
  loc_AA7F18: from_stack_1v = dlgBuscarBarrio.global_4295556Get()
  loc_AA7F1D: FLdPr var_A8
  loc_AA7F20: from_stack_1 = clsBarrio.CodiBarr
  loc_AA7F25: FLdI2 var_AE
  loc_AA7F28: CStrUI1
  loc_AA7F2A: FStStrNoPop var_B4
  loc_AA7F2D: FLdPr Me
  loc_AA7F30: VCallAd Control_ID_CodiBarrTxt
  loc_AA7F33: FStAdFunc var_B8
  loc_AA7F36: FLdPr var_B8
  loc_AA7F39: Me.Text = from_stack_1
  loc_AA7F3E: FFree1Str var_B4
  loc_AA7F41: FFreeAd var_A8 = ""
  loc_AA7F48: FLdRfVar var_B4
  loc_AA7F4B: FLdRfVar var_A8
  loc_AA7F4E: ImpAdLdRf MemVar_D9428C
  loc_AA7F51: NewIfNullPr dlgBuscarBarrio
  loc_AA7F54: from_stack_1v = dlgBuscarBarrio.global_4295556Get()
  loc_AA7F59: FLdPr var_A8
  loc_AA7F5C: from_stack_1 = clsBarrio.DetaBarr
  loc_AA7F61: ILdRf var_B4
  loc_AA7F64: FLdPr Me
  loc_AA7F67: VCallAd Control_ID_DetaBarrLbl
  loc_AA7F6A: FStAdFunc var_B8
  loc_AA7F6D: FLdPr var_B8
  loc_AA7F70: Me.Caption = from_stack_1
  loc_AA7F75: FFree1Str var_B4
  loc_AA7F78: FFreeAd var_A8 = ""
  loc_AA7F7F: FLdPr Me
  loc_AA7F82: VCallAd Control_ID_CodiBarrTxt
  loc_AA7F85: CVarAd
  loc_AA7F89: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA7F8E: FFree1Var var_C8 = ""
  loc_AA7F91: ExitProcHresult
End Sub

Private Sub CodiBarrTxt_GotFocus() '9C5780
  'Data Table: 482FD8
  loc_9C576C: FLdPr Me
  loc_9C576F: VCallAd Control_ID_CodiBarrTxt
  loc_9C5772: CVarAd
  loc_9C5776: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C577B: FFree1Var var_94 = ""
  loc_9C577E: ExitProcHresult
End Sub

Private Sub CodiBarrTxt_KeyPress(KeyAscii As Integer) '9D7E60
  'Data Table: 482FD8
  loc_9D7E48: LitStr "0123456789"
  loc_9D7E4B: FStStrCopy var_88
  loc_9D7E4E: FLdRfVar var_88
  loc_9D7E51: ILdRf KeyAscii
  loc_9D7E54: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D7E59: IStI2 KeyAscii
  loc_9D7E5C: FFree1Str var_88
  loc_9D7E5F: ExitProcHresult
End Sub

Private Sub CodiBarrTxt_Validate(Cancel As Boolean) 'AE9918
  'Data Table: 482FD8
  loc_AE9798: FLdRfVar var_8A
  loc_AE979B: FLdPr Me
  loc_AE979E: VCallAd Control_ID_cmdCancelar
  loc_AE97A1: FStAdFunc var_88
  loc_AE97A4: FLdPr var_88
  loc_AE97A7:  = Me.Value
  loc_AE97AC: FLdI2 var_8A
  loc_AE97AF: NotI4
  loc_AE97B0: FLdRfVar var_92
  loc_AE97B3: FLdPr Me
  loc_AE97B6: VCallAd Control_ID_CodiBarrTxt
  loc_AE97B9: FStAdFunc var_90
  loc_AE97BC: FLdPr var_90
  loc_AE97BF:  = Me.Enabled
  loc_AE97C4: FLdI2 var_92
  loc_AE97C7: LitI2_Byte &HFF
  loc_AE97C9: EqI2
  loc_AE97CA: AndI4
  loc_AE97CB: FFreeAd var_88 = ""
  loc_AE97D2: BranchF loc_AE9916
  loc_AE97D5: FLdRfVar var_98
  loc_AE97D8: FLdPr Me
  loc_AE97DB: VCallAd Control_ID_CodiBarrTxt
  loc_AE97DE: FStAdFunc var_88
  loc_AE97E1: FLdPr var_88
  loc_AE97E4:  = Me.Text
  loc_AE97E9: FLdZeroAd var_98
  loc_AE97EC: CVarStr var_A8
  loc_AE97EF: ImpAdCallI2 IsNumeric()
  loc_AE97F4: NotI4
  loc_AE97F5: FFree1Ad var_88
  loc_AE97F8: FFree1Var var_A8 = ""
  loc_AE97FB: BranchF loc_AE981C
  loc_AE97FE: LitI2_Byte 0
  loc_AE9800: CStrUI1
  loc_AE9802: FStStrNoPop var_98
  loc_AE9805: FLdPr Me
  loc_AE9808: VCallAd Control_ID_CodiBarrTxt
  loc_AE980B: FStAdFunc var_88
  loc_AE980E: FLdPr var_88
  loc_AE9811: Me.Text = from_stack_1
  loc_AE9816: FFree1Str var_98
  loc_AE9819: FFree1Ad var_88
  loc_AE981C: FLdRfVar var_98
  loc_AE981F: FLdPr Me
  loc_AE9822: VCallAd Control_ID_CodiBarrTxt
  loc_AE9825: FStAdFunc var_88
  loc_AE9828: FLdPr var_88
  loc_AE982B:  = Me.Text
  loc_AE9830: ILdRf var_98
  loc_AE9833: LitStr "0"
  loc_AE9836: NeStr
  loc_AE9838: FFree1Str var_98
  loc_AE983B: FFree1Ad var_88
  loc_AE983E: BranchF loc_AE98FF
  loc_AE9841: FLdRfVar var_98
  loc_AE9844: FLdPr Me
  loc_AE9847: VCallAd Control_ID_CodiBarrTxt
  loc_AE984A: FStAdFunc var_88
  loc_AE984D: FLdPr var_88
  loc_AE9850:  = Me.Text
  loc_AE9855: ILdRf var_98
  loc_AE9858: ImpAdCallI2 Proc_18_21_A58FBC()
  loc_AE985D: FStStrNoPop var_AC
  loc_AE9860: FLdPr Me
  loc_AE9863: MemStStrCopy
  loc_AE9867: FFreeStr var_98 = ""
  loc_AE986E: FFree1Ad var_88
  loc_AE9871: FLdPr Me
  loc_AE9874: MemLdStr global_60
  loc_AE9877: LitStr vbNullString
  loc_AE987A: NeStr
  loc_AE987C: BranchF loc_AE98BC
  loc_AE987F: FLdPr Me
  loc_AE9882: MemLdStr global_60
  loc_AE9885: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE988A: LitStr vbNullString
  loc_AE988D: FLdPr Me
  loc_AE9890: VCallAd Control_ID_DetaBarrLbl
  loc_AE9893: FStAdFunc var_88
  loc_AE9896: FLdPr var_88
  loc_AE9899: Me.Caption = from_stack_1
  loc_AE989E: FFree1Ad var_88
  loc_AE98A1: FLdPr Me
  loc_AE98A4: VCallAd Control_ID_CodiBarrTxt
  loc_AE98A7: CVarAd
  loc_AE98AB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE98B0: FFree1Var var_A8 = ""
  loc_AE98B3: LitI2_Byte &HFF
  loc_AE98B5: IStI2 Cancel
  loc_AE98B8: ExitProcHresult
  loc_AE98B9: Branch loc_AE98FC
  loc_AE98BC: FLdRfVar var_98
  loc_AE98BF: FLdPr Me
  loc_AE98C2: VCallAd Control_ID_CodiBarrTxt
  loc_AE98C5: FStAdFunc var_88
  loc_AE98C8: FLdPr var_88
  loc_AE98CB:  = Me.Text
  loc_AE98D0: ILdRf var_98
  loc_AE98D3: CI2Str
  loc_AE98D5: ImpAdCallI2 Proc_270_23_A7AD38()
  loc_AE98DA: FStStrNoPop var_AC
  loc_AE98DD: FLdPr Me
  loc_AE98E0: VCallAd Control_ID_DetaBarrLbl
  loc_AE98E3: FStAdFunc var_90
  loc_AE98E6: FLdPr var_90
  loc_AE98E9: Me.Caption = from_stack_1
  loc_AE98EE: FFreeStr var_98 = ""
  loc_AE98F5: FFreeAd var_88 = ""
  loc_AE98FC: Branch loc_AE9916
  loc_AE98FF: LitStr vbNullString
  loc_AE9902: FLdPr Me
  loc_AE9905: VCallAd Control_ID_DetaBarrLbl
  loc_AE9908: FStAdFunc var_88
  loc_AE990B: FLdPr var_88
  loc_AE990E: Me.Caption = from_stack_1
  loc_AE9913: FFree1Ad var_88
  loc_AE9916: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AA83BC
  'Data Table: 482FD8
  loc_AA82EC: LitVarStr var_94, vbNullString
  loc_AA82F1: PopAdLdVar
  loc_AA82F2: FLdPr Me
  loc_AA82F5: VCallAd Control_ID_FiltroMsk
  loc_AA82F8: FStAdFunc var_A8
  loc_AA82FB: FLdPr var_A8
  loc_AA82FE: LateIdSt
  loc_AA8303: FFree1Ad var_A8
  loc_AA8306: LitVarStr var_94, vbNullString
  loc_AA830B: PopAdLdVar
  loc_AA830C: FLdPr Me
  loc_AA830F: VCallAd Control_ID_FiltroMsk
  loc_AA8312: FStAdFunc var_A8
  loc_AA8315: FLdPr var_A8
  loc_AA8318: LateIdSt
  loc_AA831D: FFree1Ad var_A8
  loc_AA8320: FLdRfVar var_AA
  loc_AA8323: FLdPr Me
  loc_AA8326: VCallAd Control_ID_FiltroCbo
  loc_AA8329: FStAdFunc var_A8
  loc_AA832C: FLdPr var_A8
  loc_AA832F:  = Me.ListIndex
  loc_AA8334: FLdI2 var_AA
  loc_AA8337: FStI2 var_AC
  loc_AA833A: FFree1Ad var_A8
  loc_AA833D: FLdI2 var_AC
  loc_AA8340: LitI2_Byte 0
  loc_AA8342: EqI2
  loc_AA8343: BranchF loc_AA837D
  loc_AA8346: LitVarStr var_94, "#####"
  loc_AA834B: PopAdLdVar
  loc_AA834C: FLdPr Me
  loc_AA834F: VCallAd Control_ID_FiltroMsk
  loc_AA8352: FStAdFunc var_A8
  loc_AA8355: FLdPr var_A8
  loc_AA8358: LateIdSt
  loc_AA835D: FFree1Ad var_A8
  loc_AA8360: LitStr "CodiCall"
  loc_AA8363: FStStrCopy var_B0
  loc_AA8366: FLdRfVar var_B0
  loc_AA8369: FLdPr Me
  loc_AA836C: MemLdRfVar from_stack_1.global_52
  loc_AA836F: NewIfNullPr clscalle
  loc_AA8372: Call clscalle.Sort(from_stack_1v)
  loc_AA8377: FFree1Str var_B0
  loc_AA837A: Branch loc_AA83BA
  loc_AA837D: FLdI2 var_AC
  loc_AA8380: LitI2_Byte 1
  loc_AA8382: EqI2
  loc_AA8383: BranchF loc_AA83BA
  loc_AA8386: LitVarStr var_94, vbNullString
  loc_AA838B: PopAdLdVar
  loc_AA838C: FLdPr Me
  loc_AA838F: VCallAd Control_ID_FiltroMsk
  loc_AA8392: FStAdFunc var_A8
  loc_AA8395: FLdPr var_A8
  loc_AA8398: LateIdSt
  loc_AA839D: FFree1Ad var_A8
  loc_AA83A0: LitStr "DetaCall"
  loc_AA83A3: FStStrCopy var_B0
  loc_AA83A6: FLdRfVar var_B0
  loc_AA83A9: FLdPr Me
  loc_AA83AC: MemLdRfVar from_stack_1.global_52
  loc_AA83AF: NewIfNullPr clscalle
  loc_AA83B2: Call clscalle.Sort(from_stack_1v)
  loc_AA83B7: FFree1Str var_B0
  loc_AA83BA: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C7FB8
  'Data Table: 482FD8
  loc_9C7FA4: FLdPr Me
  loc_9C7FA7: VCallAd Control_ID_FiltroMsk
  loc_9C7FAA: CVarAd
  loc_9C7FAE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7FB3: FFree1Var var_94 = ""
  loc_9C7FB6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B0BBB8
  'Data Table: 482FD8
  loc_B0B998: ILdRf Me
  loc_B0B99B: CastAd
  loc_B0B99E: FStAdFunc var_88
  loc_B0B9A1: FLdRfVar var_88
  loc_B0B9A4: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B0B9A9: FFree1Ad var_88
  loc_B0B9AC: FLdPr Me
  loc_B0B9AF: VCallAd Control_ID_FiltroMsk
  loc_B0B9B2: FStAdFunc var_88
  loc_B0B9B5: FLdPr var_88
  loc_B0B9B8: LateIdLdVar var_98 DispID_20 0
  loc_B0B9BF: CStrVarTmp
  loc_B0B9C0: CVarStr var_A8
  loc_B0B9C3: FLdRfVar var_B8
  loc_B0B9C6: ImpAdCallFPR4  = Trim()
  loc_B0B9CB: FLdRfVar var_B8
  loc_B0B9CE: LitVarStr var_C8, vbNullString
  loc_B0B9D3: HardType
  loc_B0B9D4: NeVarBool
  loc_B0B9D6: FFree1Ad var_88
  loc_B0B9D9: FFreeVar var_98 = "": var_A8 = ""
  loc_B0B9E2: BranchF loc_B0BB36
  loc_B0B9E5: FLdRfVar var_DA
  loc_B0B9E8: FLdPr Me
  loc_B0B9EB: VCallAd Control_ID_FiltroCbo
  loc_B0B9EE: FStAdFunc var_88
  loc_B0B9F1: FLdPr var_88
  loc_B0B9F4:  = Me.ListIndex
  loc_B0B9F9: FLdI2 var_DA
  loc_B0B9FC: LitI2_Byte 0
  loc_B0B9FE: EqI2
  loc_B0B9FF: FFree1Ad var_88
  loc_B0BA02: BranchF loc_B0BA89
  loc_B0BA05: LitStr "CodiCall >= "
  loc_B0BA08: FLdPr Me
  loc_B0BA0B: VCallAd Control_ID_FiltroMsk
  loc_B0BA0E: FStAdFunc var_88
  loc_B0BA11: FLdPr var_88
  loc_B0BA14: LateIdLdVar var_98 DispID_22 0
  loc_B0BA1B: CStrVarTmp
  loc_B0BA1C: FStStrNoPop var_E0
  loc_B0BA1F: ConcatStr
  loc_B0BA20: PopTmpLdAdStr
  loc_B0BA24: FLdPr Me
  loc_B0BA27: MemLdRfVar from_stack_1.global_52
  loc_B0BA2A: NewIfNullPr clscalle
  loc_B0BA2D: Call clscalle.Filter(from_stack_1v)
  loc_B0BA32: FFreeStr var_E0 = ""
  loc_B0BA39: FFree1Ad var_88
  loc_B0BA3C: FFree1Var var_98 = ""
  loc_B0BA3F: LitVarStr var_C8, "Numero de Cuenta que es mayor o igual a: "
  loc_B0BA44: FLdPr Me
  loc_B0BA47: VCallAd Control_ID_FiltroMsk
  loc_B0BA4A: FStAdFunc var_88
  loc_B0BA4D: FLdPr var_88
  loc_B0BA50: LateIdLdVar var_98 DispID_22 0
  loc_B0BA57: CStrVarTmp
  loc_B0BA58: CVarStr var_A8
  loc_B0BA5B: FLdRfVar var_B8
  loc_B0BA5E: ImpAdCallFPR4  = Trim()
  loc_B0BA63: FLdRfVar var_B8
  loc_B0BA66: ConcatVar var_D8
  loc_B0BA6A: CStrVarTmp
  loc_B0BA6B: FStStrNoPop var_E0
  loc_B0BA6E: FLdPr Me
  loc_B0BA71: MemStStrCopy
  loc_B0BA75: FFree1Str var_E0
  loc_B0BA78: FFree1Ad var_88
  loc_B0BA7B: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B0BA86: Branch loc_B0BB33
  loc_B0BA89: FLdRfVar var_DA
  loc_B0BA8C: FLdPr Me
  loc_B0BA8F: VCallAd Control_ID_FiltroCbo
  loc_B0BA92: FStAdFunc var_88
  loc_B0BA95: FLdPr var_88
  loc_B0BA98:  = Me.ListIndex
  loc_B0BA9D: FLdI2 var_DA
  loc_B0BAA0: LitI2_Byte 1
  loc_B0BAA2: EqI2
  loc_B0BAA3: FFree1Ad var_88
  loc_B0BAA6: BranchF loc_B0BB33
  loc_B0BAA9: LitStr "DetaCall LIKE '" & Chr(37)
  loc_B0BAAC: FLdPr Me
  loc_B0BAAF: VCallAd Control_ID_FiltroMsk
  loc_B0BAB2: FStAdFunc var_88
  loc_B0BAB5: FLdPr var_88
  loc_B0BAB8: LateIdLdVar var_98 DispID_22 0
  loc_B0BABF: CStrVarTmp
  loc_B0BAC0: FStStrNoPop var_E0
  loc_B0BAC3: ConcatStr
  loc_B0BAC4: FStStrNoPop var_E4
  loc_B0BAC7: LitStr Chr(37) & "'"
  loc_B0BACA: ConcatStr
  loc_B0BACB: PopTmpLdAdStr
  loc_B0BACF: FLdPr Me
  loc_B0BAD2: MemLdRfVar from_stack_1.global_52
  loc_B0BAD5: NewIfNullPr clscalle
  loc_B0BAD8: Call clscalle.Filter(from_stack_1v)
  loc_B0BADD: FFreeStr var_E0 = "": var_E4 = ""
  loc_B0BAE6: FFree1Ad var_88
  loc_B0BAE9: FFree1Var var_98 = ""
  loc_B0BAEC: LitVarStr var_C8, "Detalle de calle que contiene. "
  loc_B0BAF1: FLdPr Me
  loc_B0BAF4: VCallAd Control_ID_FiltroMsk
  loc_B0BAF7: FStAdFunc var_88
  loc_B0BAFA: FLdPr var_88
  loc_B0BAFD: LateIdLdVar var_98 DispID_22 0
  loc_B0BB04: CStrVarTmp
  loc_B0BB05: CVarStr var_A8
  loc_B0BB08: FLdRfVar var_B8
  loc_B0BB0B: ImpAdCallFPR4  = Trim()
  loc_B0BB10: FLdRfVar var_B8
  loc_B0BB13: ConcatVar var_D8
  loc_B0BB17: CStrVarTmp
  loc_B0BB18: FStStrNoPop var_E0
  loc_B0BB1B: FLdPr Me
  loc_B0BB1E: MemStStrCopy
  loc_B0BB22: FFree1Str var_E0
  loc_B0BB25: FFree1Ad var_88
  loc_B0BB28: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B0BB33: Branch loc_B0BB5A
  loc_B0BB36: LitStr vbNullString
  loc_B0BB39: FStStrCopy var_E0
  loc_B0BB3C: FLdRfVar var_E0
  loc_B0BB3F: FLdPr Me
  loc_B0BB42: MemLdRfVar from_stack_1.global_52
  loc_B0BB45: NewIfNullPr clscalle
  loc_B0BB48: Call clscalle.Filter(from_stack_1v)
  loc_B0BB4D: FFree1Str var_E0
  loc_B0BB50: LitStr vbNullString
  loc_B0BB53: FLdPr Me
  loc_B0BB56: MemStStrCopy
  loc_B0BB5A: FLdRfVar var_EC
  loc_B0BB5D: FLdPr Me
  loc_B0BB60: MemLdRfVar from_stack_1.global_52
  loc_B0BB63: NewIfNullPr clscalle
  loc_B0BB66: from_stack_1 = clscalle.RecordCount
  loc_B0BB6B: ILdRf var_EC
  loc_B0BB6E: LitI4 0
  loc_B0BB73: GtI4
  loc_B0BB74: BranchF loc_B0BB7F
  loc_B0BB77: Call EnlazaTodo()
  loc_B0BB7C: Branch loc_B0BB93
  loc_B0BB7F: ILdRf Me
  loc_B0BB82: CastAd
  loc_B0BB85: FStAdFunc var_88
  loc_B0BB88: FLdRfVar var_88
  loc_B0BB8B: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B0BB90: FFree1Ad var_88
  loc_B0BB93: FLdPr Me
  loc_B0BB96: VCallAd Control_ID_dgdABMS
  loc_B0BB99: FStAdFunc var_F0
  loc_B0BB9C: FLdPr Me
  loc_B0BB9F: MemLdStr global_64
  loc_B0BBA2: FLdZeroAd var_F0
  loc_B0BBA5: FStAdFunc var_88
  loc_B0BBA8: FLdRfVar var_88
  loc_B0BBAB: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B0BBB0: FFreeAd var_88 = ""
  loc_B0BBB7: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A677FC
  'Data Table: 482FD8
  loc_A677A0: FLdRfVar var_B4
  loc_A677A3: FLdRfVar var_B0
  loc_A677A6: FLdI2 ColIndex
  loc_A677A9: CVarI2 var_A8
  loc_A677AC: PopAdLdVar
  loc_A677AD: FLdPr Me
  loc_A677B0: VCallAd Control_ID_dgdABMS
  loc_A677B3: FStAdFunc var_88
  loc_A677B6: FLdPr var_88
  loc_A677B9: LateIdLdVar var_98 DispID_105 0
  loc_A677C0: CastAdVar Me
  loc_A677C4: FStAdFunc var_AC
  loc_A677C7: FLdPr var_AC
  loc_A677CA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A677CF: FLdPr var_B0
  loc_A677D2:  = Me.DataField
  loc_A677D7: FLdZeroAd var_B4
  loc_A677DA: PopTmpLdAdStr
  loc_A677DE: FLdPr Me
  loc_A677E1: MemLdRfVar from_stack_1.global_52
  loc_A677E4: NewIfNullPr clscalle
  loc_A677E7: Call clscalle.Sort(from_stack_1v)
  loc_A677EC: FFree1Str var_B8
  loc_A677EF: FFreeAd var_88 = "": var_AC = ""
  loc_A677F8: FFree1Var var_98 = ""
  loc_A677FB: ExitProcHresult
End Sub

Private Sub Form_Load() 'AFA8B8
  'Data Table: 482FD8
  loc_AFA6E4: LitI2_Byte 0
  loc_AFA6E6: CR8I2
  loc_AFA6E7: PopFPR4
  loc_AFA6E8: FLdPr Me
  loc_AFA6EB: Me.Left = from_stack_1s
  loc_AFA6F0: LitI2_Byte 0
  loc_AFA6F2: CR8I2
  loc_AFA6F3: PopFPR4
  loc_AFA6F4: FLdPr Me
  loc_AFA6F7: Me.Top = from_stack_1s
  loc_AFA6FC: LitStr "SELECT infogov.calle.CodiCall, infogov.calle.DetaCall, infogov.calle.CodiBarr, infogov.barrio.DetaBarr, infogov.calle.CodiLoca, infogov.localidad.DetaLoca FROM infogov.calle LEFT JOIN infogov.barrio ON infogov.barrio.CodiBarr = infogov.calle.CodiBarr LEFT JOIN infogov.localidad ON infogov.localidad.CodiLoca = infogov.calle.CodiLoca ORDER BY infogov.calle.CodiCall"
  loc_AFA6FF: FLdPr Me
  loc_AFA702: MemLdRfVar from_stack_1.global_52
  loc_AFA705: NewIfNullPr clscalle
  loc_AFA708: Call clscalle.RedefineRS(from_stack_1v)
  loc_AFA70D: LitStr "CodiCall"
  loc_AFA710: FLdPr Me
  loc_AFA713: VCallAd Control_ID_CodiCallTxt
  loc_AFA716: FStAdFunc var_88
  loc_AFA719: FLdPr var_88
  loc_AFA71C: Me.DataField = from_stack_1
  loc_AFA721: FFree1Ad var_88
  loc_AFA724: LitStr "DetaCall"
  loc_AFA727: FLdPr Me
  loc_AFA72A: VCallAd Control_ID_DetaCallTxt
  loc_AFA72D: FStAdFunc var_88
  loc_AFA730: FLdPr var_88
  loc_AFA733: Me.DataField = from_stack_1
  loc_AFA738: FFree1Ad var_88
  loc_AFA73B: LitStr "CodiBarr"
  loc_AFA73E: FLdPr Me
  loc_AFA741: VCallAd Control_ID_CodiBarrTxt
  loc_AFA744: FStAdFunc var_88
  loc_AFA747: FLdPr var_88
  loc_AFA74A: Me.DataField = from_stack_1
  loc_AFA74F: FFree1Ad var_88
  loc_AFA752: LitStr "DetaBarr"
  loc_AFA755: FLdPr Me
  loc_AFA758: VCallAd Control_ID_DetaBarrLbl
  loc_AFA75B: FStAdFunc var_88
  loc_AFA75E: FLdPr var_88
  loc_AFA761: Me.DataField = from_stack_1
  loc_AFA766: FFree1Ad var_88
  loc_AFA769: LitStr "CodiLoca"
  loc_AFA76C: FLdPr Me
  loc_AFA76F: VCallAd Control_ID_CodiLocaTxt
  loc_AFA772: FStAdFunc var_88
  loc_AFA775: FLdPr var_88
  loc_AFA778: Me.DataField = from_stack_1
  loc_AFA77D: FFree1Ad var_88
  loc_AFA780: LitStr "DetaLoca"
  loc_AFA783: FLdPr Me
  loc_AFA786: VCallAd Control_ID_DetaLocaLbl
  loc_AFA789: FStAdFunc var_88
  loc_AFA78C: FLdPr var_88
  loc_AFA78F: Me.DataField = from_stack_1
  loc_AFA794: FFree1Ad var_88
  loc_AFA797: LitI4 0
  loc_AFA79C: LitI4 1
  loc_AFA7A1: FLdRfVar var_8C
  loc_AFA7A4: Redim
  loc_AFA7AE: FLdPr Me
  loc_AFA7B1: MemLdRfVar from_stack_1.global_52
  loc_AFA7B4: NewIfNullAd
  loc_AFA7B7: FStAd var_88 
  loc_AFA7BB: FLdRfVar var_88
  loc_AFA7BE: CVarRef
  loc_AFA7C3: ParmAry1St
  loc_AFA7C9: FLdPr Me
  loc_AFA7CC: VCallAd Control_ID_dgdABMS
  loc_AFA7CF: CVarAd
  loc_AFA7D3: ParmAry1St
  loc_AFA7D9: FLdRfVar var_8C
  loc_AFA7DC: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AFA7E1: ILdRf var_88
  loc_AFA7E4: CastAd
  loc_AFA7E7: FLdPr Me
  loc_AFA7EA: MemStAdFunc
  loc_AFA7EE: FLdRfVar var_8C
  loc_AFA7F1: Erase
  loc_AFA7F2: FFree1Ad var_88
  loc_AFA7F5: Call EnlazaTodo()
  loc_AFA7FA: ILdRf Me
  loc_AFA7FD: CastAd
  loc_AFA800: FStAdFunc var_88
  loc_AFA803: FLdRfVar var_88
  loc_AFA806: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AFA80B: FFree1Ad var_88
  loc_AFA80E: LitI2_Byte 0
  loc_AFA810: ILdRf Me
  loc_AFA813: CastAd
  loc_AFA816: FStAdFunc var_88
  loc_AFA819: FLdRfVar var_88
  loc_AFA81C: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AFA821: FFree1Ad var_88
  loc_AFA824: LitVarI2 var_9C, 0
  loc_AFA829: PopAdLdVar
  loc_AFA82A: LitStr "Código"
  loc_AFA82D: FLdPr Me
  loc_AFA830: VCallAd Control_ID_FiltroCbo
  loc_AFA833: FStAdFunc var_88
  loc_AFA836: FLdPr var_88
  loc_AFA839: Me.AddItem from_stack_1, from_stack_2
  loc_AFA83E: FFree1Ad var_88
  loc_AFA841: LitVarI2 var_9C, 1
  loc_AFA846: PopAdLdVar
  loc_AFA847: LitStr "Calle"
  loc_AFA84A: FLdPr Me
  loc_AFA84D: VCallAd Control_ID_FiltroCbo
  loc_AFA850: FStAdFunc var_88
  loc_AFA853: FLdPr var_88
  loc_AFA856: Me.AddItem from_stack_1, from_stack_2
  loc_AFA85B: FFree1Ad var_88
  loc_AFA85E: LitI2_Byte 0
  loc_AFA860: FLdPr Me
  loc_AFA863: VCallAd Control_ID_FiltroCbo
  loc_AFA866: FStAdFunc var_88
  loc_AFA869: FLdPr var_88
  loc_AFA86C: Me.ListIndex = from_stack_1
  loc_AFA871: FFree1Ad var_88
  loc_AFA874: LitI4 0
  loc_AFA879: LitI4 1
  loc_AFA87E: FLdRfVar var_8C
  loc_AFA881: Redim
  loc_AFA88B: FLdPr Me
  loc_AFA88E: VCallAd Control_ID_FiltroCbo
  loc_AFA891: CVarAd
  loc_AFA895: ParmAry1St
  loc_AFA89B: FLdPr Me
  loc_AFA89E: VCallAd Control_ID_FiltroMsk
  loc_AFA8A1: CVarAd
  loc_AFA8A5: ParmAry1St
  loc_AFA8AB: FLdRfVar var_8C
  loc_AFA8AE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AFA8B3: FLdRfVar var_8C
  loc_AFA8B6: Erase
  loc_AFA8B7: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A64100
  'Data Table: 482FD8
  loc_A640A4: FLdRfVar var_C2
  loc_A640A7: FLdRfVar var_C0
  loc_A640AA: LitVarI2 var_B8, 1
  loc_A640AF: FLdPr Me
  loc_A640B2: VCallAd Control_ID_tlbABMS
  loc_A640B5: FStAdFunc var_88
  loc_A640B8: FLdPr var_88
  loc_A640BB: LateIdLdVar var_98 DispID_3 0
  loc_A640C2: CastAdVar Me
  loc_A640C6: FStAdFunc var_BC
  loc_A640C9: FLdPr var_BC
  loc_A640CC:  = Me.Buttons.ControlDefault
  loc_A640D1: FLdPr var_C0
  loc_A640D4:  = Me.Enabled
  loc_A640D9: FLdI2 var_C2
  loc_A640DC: FFreeAd var_88 = "": var_BC = ""
  loc_A640E5: FFreeVar var_98 = ""
  loc_A640EC: BranchF loc_A640FD
  loc_A640EF: FLdPr Me
  loc_A640F2: MemLdRfVar from_stack_1.global_52
  loc_A640F5: NewIfNullPr clscalle
  loc_A640F8: Call clscalle.Requery()
  loc_A640FD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D7F44
  'Data Table: 482FD8
  loc_9D7F2C: ILdI2 KeyCode
  loc_9D7F2F: ILdRf Me
  loc_9D7F32: CastAd
  loc_9D7F35: FStAdFunc var_88
  loc_9D7F38: FLdRfVar var_88
  loc_9D7F3B: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D7F40: FFree1Ad var_88
  loc_9D7F43: ExitProcHresult
End Sub

Private Sub CodiLocaCmd_Click() 'AA9014
  'Data Table: 482FD8
  loc_AA8F4C: LitVar_Missing var_A4
  loc_AA8F4F: PopAdLdVar
  loc_AA8F50: LitVarI4
  loc_AA8F58: PopAdLdVar
  loc_AA8F59: ImpAdLdRf MemVar_D94228
  loc_AA8F5C: NewIfNullPr dlgBuscarLocalidad
  loc_AA8F5F: dlgBuscarLocalidad.Show from_stack_1, from_stack_2
  loc_AA8F64: FLdRfVar var_AC
  loc_AA8F67: FLdRfVar var_A8
  loc_AA8F6A: ImpAdLdRf MemVar_D94228
  loc_AA8F6D: NewIfNullPr dlgBuscarLocalidad
  loc_AA8F70: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA8F75: FLdPr var_A8
  loc_AA8F78: from_stack_1 = clslocalidad.RecordCount
  loc_AA8F7D: ILdRf var_AC
  loc_AA8F80: LitI4 0
  loc_AA8F85: GtI4
  loc_AA8F86: FFree1Ad var_A8
  loc_AA8F89: BranchF loc_AA8FFF
  loc_AA8F8C: FLdRfVar var_AE
  loc_AA8F8F: FLdRfVar var_A8
  loc_AA8F92: ImpAdLdRf MemVar_D94228
  loc_AA8F95: NewIfNullPr dlgBuscarLocalidad
  loc_AA8F98: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA8F9D: FLdPr var_A8
  loc_AA8FA0: from_stack_1 = clslocalidad.CodiLoca
  loc_AA8FA5: FLdI2 var_AE
  loc_AA8FA8: CStrUI1
  loc_AA8FAA: FStStrNoPop var_B4
  loc_AA8FAD: FLdPr Me
  loc_AA8FB0: VCallAd Control_ID_CodiLocaTxt
  loc_AA8FB3: FStAdFunc var_B8
  loc_AA8FB6: FLdPr var_B8
  loc_AA8FB9: Me.Text = from_stack_1
  loc_AA8FBE: FFree1Str var_B4
  loc_AA8FC1: FFreeAd var_A8 = ""
  loc_AA8FC8: FLdRfVar var_B4
  loc_AA8FCB: FLdRfVar var_A8
  loc_AA8FCE: ImpAdLdRf MemVar_D94228
  loc_AA8FD1: NewIfNullPr dlgBuscarLocalidad
  loc_AA8FD4: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA8FD9: FLdPr var_A8
  loc_AA8FDC: from_stack_1 = clslocalidad.DetaLoca
  loc_AA8FE1: ILdRf var_B4
  loc_AA8FE4: FLdPr Me
  loc_AA8FE7: VCallAd Control_ID_DetaLocaLbl
  loc_AA8FEA: FStAdFunc var_B8
  loc_AA8FED: FLdPr var_B8
  loc_AA8FF0: Me.Caption = from_stack_1
  loc_AA8FF5: FFree1Str var_B4
  loc_AA8FF8: FFreeAd var_A8 = ""
  loc_AA8FFF: FLdPr Me
  loc_AA9002: VCallAd Control_ID_CodiLocaTxt
  loc_AA9005: CVarAd
  loc_AA9009: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA900E: FFree1Var var_C8 = ""
  loc_AA9011: ExitProcHresult
  loc_AA9012: ILdRf arg_6000
End Sub

Public Sub EnlazaTodo() 'AA752C
  'Data Table: 482FD8
  loc_AA747C: LitI4 0
  loc_AA7481: LitI4 6
  loc_AA7486: FLdRfVar var_88
  loc_AA7489: Redim
  loc_AA7493: FLdPr Me
  loc_AA7496: MemLdRfVar from_stack_1.global_52
  loc_AA7499: NewIfNullAd
  loc_AA749C: FStAd var_8C 
  loc_AA74A0: FLdRfVar var_8C
  loc_AA74A3: CVarRef
  loc_AA74A8: ParmAry1St
  loc_AA74AE: FLdPr Me
  loc_AA74B1: VCallAd Control_ID_CodiCallTxt
  loc_AA74B4: CVarAd
  loc_AA74B8: ParmAry1St
  loc_AA74BE: FLdPr Me
  loc_AA74C1: VCallAd Control_ID_DetaCallTxt
  loc_AA74C4: CVarAd
  loc_AA74C8: ParmAry1St
  loc_AA74CE: FLdPr Me
  loc_AA74D1: VCallAd Control_ID_CodiBarrTxt
  loc_AA74D4: CVarAd
  loc_AA74D8: ParmAry1St
  loc_AA74DE: FLdPr Me
  loc_AA74E1: VCallAd Control_ID_DetaBarrLbl
  loc_AA74E4: CVarAd
  loc_AA74E8: ParmAry1St
  loc_AA74EE: FLdPr Me
  loc_AA74F1: VCallAd Control_ID_CodiLocaTxt
  loc_AA74F4: CVarAd
  loc_AA74F8: ParmAry1St
  loc_AA74FE: FLdPr Me
  loc_AA7501: VCallAd Control_ID_DetaLocaLbl
  loc_AA7504: CVarAd
  loc_AA7508: ParmAry1St
  loc_AA750E: FLdRfVar var_88
  loc_AA7511: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AA7516: ILdRf var_8C
  loc_AA7519: CastAd
  loc_AA751C: FLdPr Me
  loc_AA751F: MemStAdFunc
  loc_AA7523: FLdRfVar var_88
  loc_AA7526: Erase
  loc_AA7527: FFree1Ad var_8C
  loc_AA752A: ExitProcHresult
End Sub
