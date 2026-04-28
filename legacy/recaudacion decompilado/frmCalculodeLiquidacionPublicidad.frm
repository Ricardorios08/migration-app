VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmCalculodeLiquidacionPublicidad
  Caption = "Calculo de liquidacion de Publicidad"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 348
  ClientWidth = 11400
  ClientHeight = 9300
  Begin VB.CommandButton cmdSalir
    Left = 11280
    Top = 840
    Width = 975
    Height = 855
    TabIndex = 21
    Picture = "frmCalculodeLiquidacionPublicidad.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame1
    Caption = "CÁLCULO DE PUBLICIDAD 10-11-2025 version vieja NO EJECUTAR"
    Left = 240
    Top = 720
    Width = 10935
    Height = 8295
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame
      Left = 120
      Top = 3600
      Width = 10695
      Height = 3375
      TabIndex = 22
      Begin VB.CommandButton BuscarCmd
        Left = 2880
        Top = 240
        Width = 450
        Height = 345
        TabIndex = 24
        Picture = "frmCalculodeLiquidacionPublicidad.frx":0252
        Style = 1
      End
      Begin VB.TextBox NumeCtaTxt
        ForeColor = &HFF0000&
        Left = 1080
        Top = 240
        Width = 1695
        Height = 345
        TabIndex = 23
        MaxLength = 11
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
      Begin MSFlexGridLib.MSFlexGrid CuentasFlex
        Left = 240
        Top = 960
        Width = 8775
        Height = 2175
        TabIndex = 25
        OleObjectBlob = "frmCalculodeLiquidacionPublicidad.frx":0334
        Appearance = 0 'Flat
      End
      Begin VB.Label DetaPersLbl
        ForeColor = &HFF0000&
        Left = 3480
        Top = 600
        Width = 5175
        Height = 315
        TabIndex = 28
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
      Begin VB.Label CucuPersLbl
        ForeColor = &HFF0000&
        Left = 3480
        Top = 240
        Width = 1695
        Height = 315
        TabIndex = 27
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
        Caption = "Cuenta:"
        Left = 120
        Top = 240
        Width = 840
        Height = 300
        TabIndex = 26
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
    Begin VB.TextBox PeriLiquTxt
      ForeColor = &HFF0000&
      Left = 2580
      Top = 1080
      Width = 735
      Height = 360
      TabIndex = 4
      MaxLength = 4
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
    Begin VB.TextBox BimeLiquTxt
      ForeColor = &HFF0000&
      Left = 2580
      Top = 1560
      Width = 375
      Height = 360
      TabIndex = 6
      MaxLength = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      CausesValidation = 0   'False
    End
    Begin VB.OptionButton ParcialOpt
      Caption = "Parcial"
      Left = 1920
      Top = 600
      Width = 1335
      Height = 375
      TabIndex = 1
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13,8
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton CompletaOpt
      Caption = "Completa"
      Left = 4800
      Top = 600
      Width = 1815
      Height = 375
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13,8
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton CodiTiliCmd
      Left = 3120
      Top = 2040
      Width = 450
      Height = 345
      TabIndex = 9
      Picture = "frmCalculodeLiquidacionPublicidad.frx":0420
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiTiliTxt
      ForeColor = &HFF0000&
      Left = 2580
      Top = 2040
      Width = 375
      Height = 420
      TabIndex = 8
      MaxLength = 2
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
    Begin VB.CommandButton CalculoCmd
      Left = 3840
      Top = 7680
      Width = 1335
      Height = 495
      TabIndex = 20
      Picture = "frmCalculodeLiquidacionPublicidad.frx":051A
      Style = 1
    End
    Begin VB.TextBox HastaCodiComeTxt
      ForeColor = &HFF0000&
      Left = 2580
      Top = 3000
      Width = 1455
      Height = 360
      TabIndex = 16
      MaxLength = 8
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
    Begin VB.TextBox DesdeCodiComeTxt
      ForeColor = &HFF0000&
      Left = 2580
      Top = 2520
      Width = 1455
      Height = 360
      TabIndex = 12
      MaxLength = 8
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
    Begin MSMask.MaskEdBox FeveVencMsk
      Left = 6960
      Top = 2520
      Width = 1335
      Height = 345
      Visible = 0   'False
      TabIndex = 14
      OleObjectBlob = "frmCalculodeLiquidacionPublicidad.frx":0848
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 480
      Top = 7080
      Width = 8775
      Height = 495
      Visible = 0   'False
      TabIndex = 19
      OleObjectBlob = "frmCalculodeLiquidacionPublicidad.frx":08F8
    End
    Begin MSMask.MaskEdBox FeanVencMsk
      Left = 7680
      Top = 3000
      Width = 1335
      Height = 345
      Visible = 0   'False
      TabIndex = 18
      OleObjectBlob = "frmCalculodeLiquidacionPublicidad.frx":0960
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin VB.Label Label13
      Caption = "Periodo:"
      Left = 1635
      Top = 1080
      Width = 870
      Height = 300
      TabIndex = 3
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
      Caption = "Desde Bimestre:"
      Left = 720
      Top = 1560
      Width = 1770
      Height = 300
      TabIndex = 5
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
      Caption = "Fecha de Vencimiento Anual:"
      Left = 4440
      Top = 3000
      Width = 3120
      Height = 300
      Visible = 0   'False
      TabIndex = 17
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
      Caption = "Fecha de Vencimiento:"
      Left = 4440
      Top = 2520
      Width = 2445
      Height = 300
      Visible = 0   'False
      TabIndex = 13
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
    Begin VB.Label DetaTiliLbl
      Left = 3720
      Top = 2040
      Width = 5535
      Height = 345
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
    Begin VB.Label Label3
      Caption = "Tipo de Liquidacion:"
      Left = 360
      Top = 2040
      Width = 2100
      Height = 360
      TabIndex = 7
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
      Caption = "Hasta Cuenta:"
      Left = 960
      Top = 3000
      Width = 1545
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
    Begin VB.Label Label1
      Caption = "Desde Cuenta:"
      Left = 900
      Top = 2520
      Width = 1605
      Height = 300
      TabIndex = 11
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
End

Attribute VB_Name = "frmCalculodeLiquidacionPublicidad"


Private Sub CuentasFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A86D1C
  'Data Table: 4D76AC
  loc_A86C88: ILdI2 KeyCode
  loc_A86C8B: CI4UI1
  loc_A86C8C: LitI4 &H2E
  loc_A86C91: EqI4
  loc_A86C92: BranchF loc_A86CF4
  loc_A86C95: FLdPr Me
  loc_A86C98: VCallAd Control_ID_CuentasFlex
  loc_A86C9B: FStAdFunc var_88
  loc_A86C9E: FLdPr var_88
  loc_A86CA1: LateIdLdVar var_98 DispID_4 0
  loc_A86CA8: CI4Var
  loc_A86CAA: LitI4 1
  loc_A86CAF: GtI4
  loc_A86CB0: FFree1Ad var_88
  loc_A86CB3: FFree1Var var_98 = ""
  loc_A86CB6: BranchF loc_A86CF4
  loc_A86CB9: OnErrorGoto loc_A86CF4
  loc_A86CBC: FLdPr Me
  loc_A86CBF: VCallAd Control_ID_CuentasFlex
  loc_A86CC2: FStAdFunc var_88
  loc_A86CC5: FLdPr var_88
  loc_A86CC8: LateIdLdVar var_98 DispID_10 0
  loc_A86CCF: CI4Var
  loc_A86CD1: CVarI4
  loc_A86CD5: PopAdLdVar
  loc_A86CD6: FLdPr Me
  loc_A86CD9: VCallAd Control_ID_CuentasFlex
  loc_A86CDC: FStAdFunc var_BC
  loc_A86CDF: FLdPr var_BC
  loc_A86CE2: LateIdCall
  loc_A86CEA: FFreeAd var_88 = ""
  loc_A86CF1: FFree1Var var_98 = ""
  loc_A86CF4: FLdRfVar var_C0
  loc_A86CF7: ImpAdCallI2 Err 'rtcErrObj
  loc_A86CFC: FStAdFunc var_88
  loc_A86CFF: FLdPr var_88
  loc_A86D02:  = Err.Number
  loc_A86D07: ILdRf var_C0
  loc_A86D0A: LitI4 &H753F
  loc_A86D0F: EqI4
  loc_A86D10: FFree1Ad var_88
  loc_A86D13: BranchF loc_A86D1B
  loc_A86D16: Call Proc_227_24_A6B13C()
  loc_A86D1B: ExitProcHresult
End Sub

Private Sub HastaCodiComeTxt_GotFocus() '9BC9C0
  'Data Table: 4D76AC
  loc_9BC9AC: FLdPr Me
  loc_9BC9AF: VCallAd Control_ID_HastaCodiComeTxt
  loc_9BC9B2: CVarAd
  loc_9BC9B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC9BB: FFree1Var var_94 = ""
  loc_9BC9BE: ExitProcHresult
End Sub

Private Sub HastaCodiComeTxt_KeyPress(KeyAscii As Integer) '9CA09C
  'Data Table: 4D76AC
  loc_9CA084: LitStr "1234567890"
  loc_9CA087: FStStrCopy var_88
  loc_9CA08A: FLdRfVar var_88
  loc_9CA08D: ILdRf KeyAscii
  loc_9CA090: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CA095: IStI2 KeyAscii
  loc_9CA098: FFree1Str var_88
  loc_9CA09B: ExitProcHresult
End Sub

Private Sub HastaCodiComeTxt_Validate(Cancel As Boolean) 'A82D74
  'Data Table: 4D76AC
  loc_A82CEC: FLdRfVar var_8A
  loc_A82CEF: FLdPr Me
  loc_A82CF2: VCallAd Control_ID_HastaCodiComeTxt
  loc_A82CF5: FStAdFunc var_88
  loc_A82CF8: FLdPr var_88
  loc_A82CFB:  = Me.Enabled
  loc_A82D00: FLdI2 var_8A
  loc_A82D03: LitI2_Byte &HFF
  loc_A82D05: EqI2
  loc_A82D06: FFree1Ad var_88
  loc_A82D09: BranchF loc_A82D73
  loc_A82D0C: FLdRfVar var_90
  loc_A82D0F: FLdPr Me
  loc_A82D12: VCallAd Control_ID_HastaCodiComeTxt
  loc_A82D15: FStAdFunc var_88
  loc_A82D18: FLdPr var_88
  loc_A82D1B:  = Me.Text
  loc_A82D20: LitI2_Byte 0
  loc_A82D22: LitI2_Byte 0
  loc_A82D24: ILdRf var_90
  loc_A82D27: LitStr "Hasta Cuenta de antena"
  loc_A82D2A: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A82D2F: FStStrNoPop var_94
  loc_A82D32: FLdPr Me
  loc_A82D35: MemStStrCopy
  loc_A82D39: FFreeStr var_90 = ""
  loc_A82D40: FFree1Ad var_88
  loc_A82D43: FLdPr Me
  loc_A82D46: MemLdStr global_100
  loc_A82D49: LitStr vbNullString
  loc_A82D4C: NeStr
  loc_A82D4E: BranchF loc_A82D73
  loc_A82D51: FLdPr Me
  loc_A82D54: MemLdStr global_100
  loc_A82D57: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82D5C: FLdPr Me
  loc_A82D5F: VCallAd Control_ID_HastaCodiComeTxt
  loc_A82D62: CVarAd
  loc_A82D66: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82D6B: FFree1Var var_A4 = ""
  loc_A82D6E: LitI2_Byte &HFF
  loc_A82D70: IStI2 Cancel
  loc_A82D73: ExitProcHresult
End Sub

Private Sub DesdeCodiComeTxt_GotFocus() '9BC618
  'Data Table: 4D76AC
  loc_9BC604: FLdPr Me
  loc_9BC607: VCallAd Control_ID_DesdeCodiComeTxt
  loc_9BC60A: CVarAd
  loc_9BC60E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC613: FFree1Var var_94 = ""
  loc_9BC616: ExitProcHresult
End Sub

Private Sub DesdeCodiComeTxt_KeyPress(KeyAscii As Integer) '9C9F20
  'Data Table: 4D76AC
  loc_9C9F08: LitStr "1234567890"
  loc_9C9F0B: FStStrCopy var_88
  loc_9C9F0E: FLdRfVar var_88
  loc_9C9F11: ILdRf KeyAscii
  loc_9C9F14: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C9F19: IStI2 KeyAscii
  loc_9C9F1C: FFree1Str var_88
  loc_9C9F1F: ExitProcHresult
End Sub

Private Sub DesdeCodiComeTxt_Validate(Cancel As Boolean) 'A82E3C
  'Data Table: 4D76AC
  loc_A82DB4: FLdRfVar var_8A
  loc_A82DB7: FLdPr Me
  loc_A82DBA: VCallAd Control_ID_DesdeCodiComeTxt
  loc_A82DBD: FStAdFunc var_88
  loc_A82DC0: FLdPr var_88
  loc_A82DC3:  = Me.Enabled
  loc_A82DC8: FLdI2 var_8A
  loc_A82DCB: LitI2_Byte &HFF
  loc_A82DCD: EqI2
  loc_A82DCE: FFree1Ad var_88
  loc_A82DD1: BranchF loc_A82E3B
  loc_A82DD4: FLdRfVar var_90
  loc_A82DD7: FLdPr Me
  loc_A82DDA: VCallAd Control_ID_DesdeCodiComeTxt
  loc_A82DDD: FStAdFunc var_88
  loc_A82DE0: FLdPr var_88
  loc_A82DE3:  = Me.Text
  loc_A82DE8: LitI2_Byte &HFF
  loc_A82DEA: LitI2_Byte 0
  loc_A82DEC: ILdRf var_90
  loc_A82DEF: LitStr "Desde Cuenta de antena"
  loc_A82DF2: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A82DF7: FStStrNoPop var_94
  loc_A82DFA: FLdPr Me
  loc_A82DFD: MemStStrCopy
  loc_A82E01: FFreeStr var_90 = ""
  loc_A82E08: FFree1Ad var_88
  loc_A82E0B: FLdPr Me
  loc_A82E0E: MemLdStr global_100
  loc_A82E11: LitStr vbNullString
  loc_A82E14: NeStr
  loc_A82E16: BranchF loc_A82E3B
  loc_A82E19: FLdPr Me
  loc_A82E1C: MemLdStr global_100
  loc_A82E1F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82E24: FLdPr Me
  loc_A82E27: VCallAd Control_ID_DesdeCodiComeTxt
  loc_A82E2A: CVarAd
  loc_A82E2E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82E33: FFree1Var var_A4 = ""
  loc_A82E36: LitI2_Byte &HFF
  loc_A82E38: IStI2 Cancel
  loc_A82E3B: ExitProcHresult
End Sub

Private Sub CalculoCmd_Click() 'CE97BC
  'Data Table: 4D76AC
  loc_CE6BEC: LitI2_Byte 0
  loc_CE6BEE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CE6BF3: FStFPR8 var_108
  loc_CE6BF6: LitI2_Byte 0
  loc_CE6BF8: PopTmpLdAd2 var_172
  loc_CE6BFB: Call PeriLiquTxt_Validate(from_stack_1v)
  loc_CE6C00: FLdPr Me
  loc_CE6C03: MemLdStr global_100
  loc_CE6C06: LitStr vbNullString
  loc_CE6C09: NeStr
  loc_CE6C0B: BranchF loc_CE6C0F
  loc_CE6C0E: ExitProcHresult
  loc_CE6C0F: LitI2_Byte 0
  loc_CE6C11: PopTmpLdAd2 var_172
  loc_CE6C14: Call BimeLiquTxt_Validate(from_stack_1v)
  loc_CE6C19: FLdPr Me
  loc_CE6C1C: MemLdStr global_100
  loc_CE6C1F: LitStr vbNullString
  loc_CE6C22: NeStr
  loc_CE6C24: BranchF loc_CE6C28
  loc_CE6C27: ExitProcHresult
  loc_CE6C28: LitI2_Byte 0
  loc_CE6C2A: PopTmpLdAd2 var_172
  loc_CE6C2D: Call CodiTiliTxt_Validate(from_stack_1v)
  loc_CE6C32: FLdPr Me
  loc_CE6C35: MemLdStr global_100
  loc_CE6C38: LitStr vbNullString
  loc_CE6C3B: NeStr
  loc_CE6C3D: BranchF loc_CE6C41
  loc_CE6C40: ExitProcHresult
  loc_CE6C41: LitStr vbNullString
  loc_CE6C44: FStStrCopy var_160
  loc_CE6C47: LitI2_Byte 1
  loc_CE6C49: FLdPr Me
  loc_CE6C4C: MemLdRfVar from_stack_1.global_92
  loc_CE6C4F: FLdPr Me
  loc_CE6C52: VCallAd Control_ID_CuentasFlex
  loc_CE6C55: FStAdFunc var_178
  loc_CE6C58: FLdPr var_178
  loc_CE6C5B: LateIdLdVar var_188 DispID_4 0
  loc_CE6C62: CI4Var
  loc_CE6C64: LitI4 1
  loc_CE6C69: SubI4
  loc_CE6C6A: CI2I4
  loc_CE6C6B: FFree1Ad var_178
  loc_CE6C6E: FFree1Var var_188 = ""
  loc_CE6C71: ForI2 var_18C
  loc_CE6C77: FLdPr Me
  loc_CE6C7A: MemLdI2 global_92
  loc_CE6C7D: CI4UI1
  loc_CE6C7E: CVarI4
  loc_CE6C82: PopAdLdVar
  loc_CE6C83: LitVarI4
  loc_CE6C8B: PopAdLdVar
  loc_CE6C8C: FLdPr Me
  loc_CE6C8F: VCallAd Control_ID_CuentasFlex
  loc_CE6C92: FStAdFunc var_178
  loc_CE6C95: FLdPr var_178
  loc_CE6C98: LateIdCallLdVar
  loc_CE6CA2: PopAd
  loc_CE6CA4: ILdRf var_160
  loc_CE6CA7: CVarStr var_274
  loc_CE6CAA: LitStr ","
  loc_CE6CAD: FLdPr Me
  loc_CE6CB0: MemLdI2 global_92
  loc_CE6CB3: CI4UI1
  loc_CE6CB4: CVarI4
  loc_CE6CB8: PopAdLdVar
  loc_CE6CB9: LitVarI4
  loc_CE6CC1: PopAdLdVar
  loc_CE6CC2: FLdPr Me
  loc_CE6CC5: VCallAd Control_ID_CuentasFlex
  loc_CE6CC8: FStAdFunc var_210
  loc_CE6CCB: FLdPr var_210
  loc_CE6CCE: LateIdCallLdVar
  loc_CE6CD8: CStrVarTmp
  loc_CE6CD9: FStStrNoPop var_224
  loc_CE6CDC: ConcatStr
  loc_CE6CDD: CVarStr var_254
  loc_CE6CE0: FLdRfVar var_188
  loc_CE6CE3: CStrVarTmp
  loc_CE6CE4: CVarStr var_244
  loc_CE6CE7: ILdRf var_160
  loc_CE6CEA: LitStr vbNullString
  loc_CE6CED: EqStr
  loc_CE6CEF: CVarBoolI2 var_234
  loc_CE6CF3: FLdRfVar var_264
  loc_CE6CF6: ImpAdCallFPR4  = IIf(, , )
  loc_CE6CFB: FLdRfVar var_264
  loc_CE6CFE: ConcatVar var_284
  loc_CE6D02: CStrVarTmp
  loc_CE6D03: FStStr var_160
  loc_CE6D06: FFree1Str var_224
  loc_CE6D09: FFreeAd var_178 = ""
  loc_CE6D10: FFreeVar var_188 = "": var_220 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = ""
  loc_CE6D21: FLdPr Me
  loc_CE6D24: MemLdRfVar from_stack_1.global_92
  loc_CE6D27: NextI2 var_18C, loc_CE6C77
  loc_CE6D2C: LitStr "SELECT ConcTili, CoreTili, DescTili, DeanTili, GastTili, CogaTili FROM tipoliqu "
  loc_CE6D2F: LitStr " WHERE CodiOfic = 6"
  loc_CE6D32: ConcatStr
  loc_CE6D33: FStStrNoPop var_224
  loc_CE6D36: LitStr " AND CodiTili = "
  loc_CE6D39: ConcatStr
  loc_CE6D3A: FStStrNoPop var_28C
  loc_CE6D3D: FLdRfVar var_288
  loc_CE6D40: FLdPr Me
  loc_CE6D43: VCallAd Control_ID_CodiTiliTxt
  loc_CE6D46: FStAdFunc var_178
  loc_CE6D49: FLdPr var_178
  loc_CE6D4C:  = Me.Text
  loc_CE6D51: ILdRf var_288
  loc_CE6D54: ConcatStr
  loc_CE6D55: FStStrNoPop var_290
  loc_CE6D58: LitStr " ORDER BY CodiOfic, CodiTili"
  loc_CE6D5B: ConcatStr
  loc_CE6D5C: FStStrNoPop var_294
  loc_CE6D5F: FLdPr Me
  loc_CE6D62: MemLdRfVar from_stack_1.global_60
  loc_CE6D65: NewIfNullPr clstipoliqu
  loc_CE6D68: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_CE6D6D: FFreeStr var_224 = "": var_28C = "": var_288 = "": var_290 = ""
  loc_CE6D7A: FFree1Ad var_178
  loc_CE6D7D: FLdRfVar var_298
  loc_CE6D80: FLdPr Me
  loc_CE6D83: MemLdRfVar from_stack_1.global_60
  loc_CE6D86: NewIfNullPr clstipoliqu
  loc_CE6D89: from_stack_1 = clstipoliqu.RecordCount
  loc_CE6D8E: ILdRf var_298
  loc_CE6D91: LitI4 1
  loc_CE6D96: EqI4
  loc_CE6D97: BranchF loc_CE6E88
  loc_CE6D9A: FLdRfVar var_2A0
  loc_CE6D9D: FLdPr Me
  loc_CE6DA0: MemLdRfVar from_stack_1.global_60
  loc_CE6DA3: NewIfNullPr clstipoliqu
  loc_CE6DA6: from_stack_1 = clstipoliqu.DescTili
  loc_CE6DAB: FLdFPR8 var_2A0
  loc_CE6DAE: FnCDblR8
  loc_CE6DB0: FStFPR8 var_AC
  loc_CE6DB3: FLdRfVar var_2A0
  loc_CE6DB6: FLdPr Me
  loc_CE6DB9: MemLdRfVar from_stack_1.global_60
  loc_CE6DBC: NewIfNullPr clstipoliqu
  loc_CE6DBF: from_stack_1 = clstipoliqu.DeanTili
  loc_CE6DC4: FLdFPR8 var_2A0
  loc_CE6DC7: FnCDblR8
  loc_CE6DC9: FStFPR8 var_170
  loc_CE6DCC: FLdRfVar var_2A0
  loc_CE6DCF: FLdPr Me
  loc_CE6DD2: MemLdRfVar from_stack_1.global_60
  loc_CE6DD5: NewIfNullPr clstipoliqu
  loc_CE6DD8: from_stack_1 = clstipoliqu.GastTili
  loc_CE6DDD: FLdFPR8 var_2A0
  loc_CE6DE0: FnCDblR8
  loc_CE6DE2: FStFPR8 var_BC
  loc_CE6DE5: FLdRfVar var_224
  loc_CE6DE8: FLdPr Me
  loc_CE6DEB: MemLdRfVar from_stack_1.global_60
  loc_CE6DEE: NewIfNullPr clstipoliqu
  loc_CE6DF1: from_stack_1 = clstipoliqu.CogaTili
  loc_CE6DF6: ILdRf var_224
  loc_CE6DF9: CI2Str
  loc_CE6DFB: FStI2 var_BE
  loc_CE6DFE: FFree1Str var_224
  loc_CE6E01: FLdRfVar var_224
  loc_CE6E04: FLdPr Me
  loc_CE6E07: MemLdRfVar from_stack_1.global_60
  loc_CE6E0A: NewIfNullPr clstipoliqu
  loc_CE6E0D: from_stack_1 = clstipoliqu.CoreTili
  loc_CE6E12: ILdRf var_224
  loc_CE6E15: LitStr vbNullString
  loc_CE6E18: EqStr
  loc_CE6E1A: FFree1Str var_224
  loc_CE6E1D: BranchF loc_CE6E2C
  loc_CE6E20: LitStr "El concepto de recargo no esta parametrizado en el tipo de liquidacion. Verifique"
  loc_CE6E23: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE6E28: ExitProcHresult
  loc_CE6E29: Branch loc_CE6E43
  loc_CE6E2C: FLdRfVar var_224
  loc_CE6E2F: FLdPr Me
  loc_CE6E32: MemLdRfVar from_stack_1.global_60
  loc_CE6E35: NewIfNullPr clstipoliqu
  loc_CE6E38: from_stack_1 = clstipoliqu.CoreTili
  loc_CE6E3D: FLdZeroAd var_224
  loc_CE6E40: FStStr var_CC
  loc_CE6E43: FLdRfVar var_224
  loc_CE6E46: FLdPr Me
  loc_CE6E49: MemLdRfVar from_stack_1.global_60
  loc_CE6E4C: NewIfNullPr clstipoliqu
  loc_CE6E4F: from_stack_1 = clstipoliqu.ConcTili
  loc_CE6E54: ILdRf var_224
  loc_CE6E57: LitStr vbNullString
  loc_CE6E5A: EqStr
  loc_CE6E5C: FFree1Str var_224
  loc_CE6E5F: BranchF loc_CE6E6E
  loc_CE6E62: LitStr "El concepto no esta parametrizado en el tipo de liquidacion. Verifique"
  loc_CE6E65: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE6E6A: ExitProcHresult
  loc_CE6E6B: Branch loc_CE6E85
  loc_CE6E6E: FLdRfVar var_224
  loc_CE6E71: FLdPr Me
  loc_CE6E74: MemLdRfVar from_stack_1.global_60
  loc_CE6E77: NewIfNullPr clstipoliqu
  loc_CE6E7A: from_stack_1 = clstipoliqu.ConcTili
  loc_CE6E7F: FLdZeroAd var_224
  loc_CE6E82: FStStr var_D0
  loc_CE6E85: Branch loc_CE6E9F
  loc_CE6E88: LitI2_Byte 0
  loc_CE6E8A: CR8I2
  loc_CE6E8B: FStFPR8 var_AC
  loc_CE6E8E: LitI2_Byte 0
  loc_CE6E90: CR8I2
  loc_CE6E91: FStFPR8 var_170
  loc_CE6E94: LitI2_Byte 0
  loc_CE6E96: CR8I2
  loc_CE6E97: FStFPR8 var_BC
  loc_CE6E9A: LitI2_Byte 0
  loc_CE6E9C: FStI2 var_BE
  loc_CE6E9F: ImpAdCallFPR4 Proc_270_19_A5AB74()
  loc_CE6EA4: FStFPR8 var_C8
  loc_CE6EA7: LitI2_Byte 0
  loc_CE6EA9: CR8I2
  loc_CE6EAA: FStFPR8 var_94
  loc_CE6EAD: FLdRfVar var_224
  loc_CE6EB0: FLdPr Me
  loc_CE6EB3: VCallAd Control_ID_PeriLiquTxt
  loc_CE6EB6: FStAdFunc var_178
  loc_CE6EB9: FLdPr var_178
  loc_CE6EBC:  = Me.Text
  loc_CE6EC1: FLdRfVar var_288
  loc_CE6EC4: FLdPr Me
  loc_CE6EC7: VCallAd Control_ID_CodiTiliTxt
  loc_CE6ECA: FStAdFunc var_210
  loc_CE6ECD: FLdPr var_210
  loc_CE6ED0:  = Me.Text
  loc_CE6ED5: ILdRf var_288
  loc_CE6ED8: CUI1Str
  loc_CE6EDA: ILdRf var_224
  loc_CE6EDD: CI2Str
  loc_CE6EDF: FLdPr Me
  loc_CE6EE2: MemLdRfVar from_stack_1.global_68
  loc_CE6EE5: NewIfNullPr clsliqupubl
  loc_CE6EE8: Call clsliqupubl.BorraLiquidacion(from_stack_1v, from_stack_2v)
  loc_CE6EED: FFreeStr var_224 = ""
  loc_CE6EF4: FFreeAd var_178 = ""
  loc_CE6EFB: FLdRfVar var_224
  loc_CE6EFE: FLdPr Me
  loc_CE6F01: VCallAd Control_ID_PeriLiquTxt
  loc_CE6F04: FStAdFunc var_178
  loc_CE6F07: FLdPr var_178
  loc_CE6F0A:  = Me.Text
  loc_CE6F0F: FLdRfVar var_288
  loc_CE6F12: FLdPr Me
  loc_CE6F15: VCallAd Control_ID_CodiTiliTxt
  loc_CE6F18: FStAdFunc var_210
  loc_CE6F1B: FLdPr var_210
  loc_CE6F1E:  = Me.Text
  loc_CE6F23: FLdRfVar var_172
  loc_CE6F26: ILdRf var_288
  loc_CE6F29: CUI1Str
  loc_CE6F2B: LitI2_Byte 6
  loc_CE6F2D: CUI1I2
  loc_CE6F2F: ILdRf var_224
  loc_CE6F32: CI2Str
  loc_CE6F34: FLdPr Me
  loc_CE6F37: MemLdRfVar from_stack_1.global_52
  loc_CE6F3A: NewIfNullPr clsliquidacion
  loc_CE6F3D: from_stack_4v = clsliquidacion.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CE6F42: FLdI2 var_172
  loc_CE6F45: FStI2 var_8A
  loc_CE6F48: FFreeStr var_224 = ""
  loc_CE6F4F: FFreeAd var_178 = ""
  loc_CE6F56: FLdRfVar var_224
  loc_CE6F59: FLdPr Me
  loc_CE6F5C: VCallAd Control_ID_PeriLiquTxt
  loc_CE6F5F: FStAdFunc var_178
  loc_CE6F62: FLdPr var_178
  loc_CE6F65:  = Me.Text
  loc_CE6F6A: FLdRfVar var_288
  loc_CE6F6D: FLdPr Me
  loc_CE6F70: VCallAd Control_ID_CodiTiliTxt
  loc_CE6F73: FStAdFunc var_210
  loc_CE6F76: FLdPr var_210
  loc_CE6F79:  = Me.Text
  loc_CE6F7E: FLdRfVar var_28C
  loc_CE6F81: FLdPr Me
  loc_CE6F84: VCallAd Control_ID_BimeLiquTxt
  loc_CE6F87: FStAdFunc var_2A4
  loc_CE6F8A: FLdPr var_2A4
  loc_CE6F8D:  = Me.Text
  loc_CE6F92: FLdRfVar var_172
  loc_CE6F95: FLdPr Me
  loc_CE6F98: VCallAd Control_ID_CompletaOpt
  loc_CE6F9B: FStAdFunc var_2A8
  loc_CE6F9E: FLdPr var_2A8
  loc_CE6FA1:  = Me.Value
  loc_CE6FA6: LitVarI2 var_220, 1
  loc_CE6FAB: LitVarI2 var_188, 0
  loc_CE6FB0: FLdI2 var_172
  loc_CE6FB3: LitI2_Byte &HFF
  loc_CE6FB5: EqI2
  loc_CE6FB6: CVarBoolI2 var_19C
  loc_CE6FBA: FLdRfVar var_244
  loc_CE6FBD: ImpAdCallFPR4  = IIf(, , )
  loc_CE6FC2: FLdRfVar var_244
  loc_CE6FC5: CUI1Var
  loc_CE6FC7: ILdRf var_28C
  loc_CE6FCA: CI2Str
  loc_CE6FCC: FLdI2 var_8A
  loc_CE6FCF: ILdRf var_288
  loc_CE6FD2: CUI1Str
  loc_CE6FD4: LitI2_Byte 6
  loc_CE6FD6: CUI1I2
  loc_CE6FD8: ILdRf var_224
  loc_CE6FDB: CI2Str
  loc_CE6FDD: FLdPr Me
  loc_CE6FE0: MemLdRfVar from_stack_1.global_52
  loc_CE6FE3: NewIfNullPr clsliquidacion
  loc_CE6FE6: Call clsliquidacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CE6FEB: FFreeStr var_224 = "": var_288 = ""
  loc_CE6FF4: FFreeAd var_178 = "": var_210 = "": var_2A4 = ""
  loc_CE6FFF: FFreeVar var_19C = "": var_188 = "": var_220 = ""
  loc_CE700A: ILdRf var_160
  loc_CE700D: LitStr vbNullString
  loc_CE7010: NeStr
  loc_CE7012: BranchF loc_CE702C
  loc_CE7015: LitStr " WHERE publicidad.CodiCome IN ("
  loc_CE7018: ILdRf var_160
  loc_CE701B: ConcatStr
  loc_CE701C: FStStrNoPop var_224
  loc_CE701F: LitStr ")"
  loc_CE7022: ConcatStr
  loc_CE7023: FStStr var_164
  loc_CE7026: FFree1Str var_224
  loc_CE7029: Branch loc_CE707E
  loc_CE702C: LitStr " WHERE publicidad.CodiCome >= "
  loc_CE702F: FLdRfVar var_224
  loc_CE7032: FLdPr Me
  loc_CE7035: VCallAd Control_ID_DesdeCodiComeTxt
  loc_CE7038: FStAdFunc var_178
  loc_CE703B: FLdPr var_178
  loc_CE703E:  = Me.Text
  loc_CE7043: ILdRf var_224
  loc_CE7046: ConcatStr
  loc_CE7047: FStStrNoPop var_288
  loc_CE704A: LitStr " AND publicidad.CodiCome <= "
  loc_CE704D: ConcatStr
  loc_CE704E: FStStrNoPop var_290
  loc_CE7051: FLdRfVar var_28C
  loc_CE7054: FLdPr Me
  loc_CE7057: VCallAd Control_ID_HastaCodiComeTxt
  loc_CE705A: FStAdFunc var_210
  loc_CE705D: FLdPr var_210
  loc_CE7060:  = Me.Text
  loc_CE7065: ILdRf var_28C
  loc_CE7068: ConcatStr
  loc_CE7069: FStStr var_164
  loc_CE706C: FFreeStr var_224 = "": var_288 = "": var_290 = ""
  loc_CE7077: FFreeAd var_178 = ""
  loc_CE707E: FLdRfVar var_224
  loc_CE7081: FLdPr Me
  loc_CE7084: VCallAd Control_ID_PeriLiquTxt
  loc_CE7087: FStAdFunc var_178
  loc_CE708A: FLdPr var_178
  loc_CE708D:  = Me.Text
  loc_CE7092: FLdRfVar var_288
  loc_CE7095: FLdPr Me
  loc_CE7098: VCallAd Control_ID_BimeLiquTxt
  loc_CE709B: FStAdFunc var_210
  loc_CE709E: FLdPr var_210
  loc_CE70A1:  = Me.Text
  loc_CE70A6: FLdRfVar var_28C
  loc_CE70A9: FLdPr Me
  loc_CE70AC: VCallAd Control_ID_CodiTiliTxt
  loc_CE70AF: FStAdFunc var_2A4
  loc_CE70B2: FLdPr var_2A4
  loc_CE70B5:  = Me.Text
  loc_CE70BA: ILdRf var_28C
  loc_CE70BD: CUI1Str
  loc_CE70BF: LitI2_Byte 6
  loc_CE70C1: CUI1I2
  loc_CE70C3: ILdRf var_288
  loc_CE70C6: CUI1Str
  loc_CE70C8: ILdRf var_224
  loc_CE70CB: CI2Str
  loc_CE70CD: ImpAdCallI2 Proc_270_63_ABD38C(, , , )
  loc_CE70D2: FStStr var_11C
  loc_CE70D5: FFreeStr var_224 = "": var_288 = ""
  loc_CE70DE: FFreeAd var_178 = "": var_210 = ""
  loc_CE70E7: FLdRfVar var_172
  loc_CE70EA: FLdPr Me
  loc_CE70ED: VCallAd Control_ID_ParcialOpt
  loc_CE70F0: FStAdFunc var_178
  loc_CE70F3: FLdPr var_178
  loc_CE70F6:  = Me.Value
  loc_CE70FB: FLdI2 var_172
  loc_CE70FE: LitI2_Byte &HFF
  loc_CE7100: EqI2
  loc_CE7101: FFree1Ad var_178
  loc_CE7104: BranchF loc_CE7107
  loc_CE7107: FLdRfVar var_172
  loc_CE710A: FLdPr Me
  loc_CE710D: VCallAd Control_ID_CompletaOpt
  loc_CE7110: FStAdFunc var_178
  loc_CE7113: FLdPr var_178
  loc_CE7116:  = Me.Value
  loc_CE711B: FLdI2 var_172
  loc_CE711E: LitI2_Byte &HFF
  loc_CE7120: EqI2
  loc_CE7121: FFree1Ad var_178
  loc_CE7124: BranchF loc_CE7156
  loc_CE7127: LitStr "SELECT Importe, publicidad.* FROM migracion.publicidad"
  loc_CE712A: LitStr " INNER JOIN publicidad ON publicidad.CodiCome = migracion.publicidad.cuenta"
  loc_CE712D: ConcatStr
  loc_CE712E: FStStrNoPop var_224
  loc_CE7131: ILdRf var_164
  loc_CE7134: ConcatStr
  loc_CE7135: FStStrNoPop var_288
  loc_CE7138: LitStr " AND publicidad.FebaCome IS NULL ORDER BY publicidad.CodiCome"
  loc_CE713B: ConcatStr
  loc_CE713C: FStStrNoPop var_28C
  loc_CE713F: FLdPr Me
  loc_CE7142: MemLdRfVar from_stack_1.global_56
  loc_CE7145: NewIfNullPr clscomercio
  loc_CE7148: Call clscomercio.RedefineRS(from_stack_1v)
  loc_CE714D: FFreeStr var_224 = "": var_288 = ""
  loc_CE7156: FLdRfVar var_298
  loc_CE7159: FLdPr Me
  loc_CE715C: MemLdRfVar from_stack_1.global_56
  loc_CE715F: NewIfNullPr clscomercio
  loc_CE7162: from_stack_1 = clscomercio.RecordCount
  loc_CE7167: ILdRf var_298
  loc_CE716A: LitI4 0
  loc_CE716F: GtI4
  loc_CE7170: BranchF loc_CE975D
  loc_CE7173: LitI2_Byte &HB
  loc_CE7175: FLdPr Me
  loc_CE7178: Me.MousePointer = from_stack_1
  loc_CE717D: LitI4 0
  loc_CE7182: LitI4 0
  loc_CE7187: FLdRfVar var_2AC
  loc_CE718A: Redim
  loc_CE7194: FLdPr Me
  loc_CE7197: VCallAd Control_ID_CalculoCmd
  loc_CE719A: CVarAd
  loc_CE719E: ParmAry1St
  loc_CE71A4: FLdRfVar var_2AC
  loc_CE71A7: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE71AC: FLdRfVar var_2AC
  loc_CE71AF: Erase
  loc_CE71B0: LitVar_TRUE var_19C
  loc_CE71B3: PopAdLdVar
  loc_CE71B4: FLdPr Me
  loc_CE71B7: VCallAd Control_ID_ProgressBar
  loc_CE71BA: FStAdFunc var_178
  loc_CE71BD: FLdPr var_178
  loc_CE71C0: LateIdSt
  loc_CE71C5: FFree1Ad var_178
  loc_CE71C8: LitI2_Byte 0
  loc_CE71CA: CR8I2
  loc_CE71CB: CVarR4
  loc_CE71CF: PopAdLdVar
  loc_CE71D0: FLdPr Me
  loc_CE71D3: VCallAd Control_ID_ProgressBar
  loc_CE71D6: FStAdFunc var_178
  loc_CE71D9: FLdPr var_178
  loc_CE71DC: LateIdSt
  loc_CE71E1: FFree1Ad var_178
  loc_CE71E4: FLdRfVar var_298
  loc_CE71E7: FLdPr Me
  loc_CE71EA: MemLdRfVar from_stack_1.global_56
  loc_CE71ED: NewIfNullPr clscomercio
  loc_CE71F0: from_stack_1 = clscomercio.RecordCount
  loc_CE71F5: ILdRf var_298
  loc_CE71F8: CR8I4
  loc_CE71F9: CVarR4
  loc_CE71FD: PopAdLdVar
  loc_CE71FE: FLdPr Me
  loc_CE7201: VCallAd Control_ID_ProgressBar
  loc_CE7204: FStAdFunc var_178
  loc_CE7207: FLdPr var_178
  loc_CE720A: LateIdSt
  loc_CE720F: FFree1Ad var_178
  loc_CE7212: LitI2_Byte 0
  loc_CE7214: CR8I2
  loc_CE7215: CVarR4
  loc_CE7219: PopAdLdVar
  loc_CE721A: FLdPr Me
  loc_CE721D: VCallAd Control_ID_ProgressBar
  loc_CE7220: FStAdFunc var_178
  loc_CE7223: FLdPr var_178
  loc_CE7226: LateIdSt
  loc_CE722B: FFree1Ad var_178
  loc_CE722E: LitI4 0
  loc_CE7233: FStR4 var_88
  loc_CE7236: FLdPr Me
  loc_CE7239: MemLdRfVar from_stack_1.global_56
  loc_CE723C: NewIfNullPr clscomercio
  loc_CE723F: Call clscomercio.MoveFirst()
  loc_CE7244: FLdRfVar var_172
  loc_CE7247: FLdPr Me
  loc_CE724A: MemLdRfVar from_stack_1.global_56
  loc_CE724D: NewIfNullPr clscomercio
  loc_CE7250: from_stack_1 = clscomercio.EOF
  loc_CE7255: FLdI2 var_172
  loc_CE7258: NotI4
  loc_CE7259: BranchF loc_CE975D
  loc_CE725C: ILdRf var_88
  loc_CE725F: CR8I4
  loc_CE7260: CVarR4
  loc_CE7264: PopAdLdVar
  loc_CE7265: FLdPr Me
  loc_CE7268: VCallAd Control_ID_ProgressBar
  loc_CE726B: FStAdFunc var_178
  loc_CE726E: FLdPr var_178
  loc_CE7271: LateIdSt
  loc_CE7276: FFree1Ad var_178
  loc_CE7279: ILdRf var_88
  loc_CE727C: LitI4 1
  loc_CE7281: AddI4
  loc_CE7282: FStR4 var_88
  loc_CE7285: LitStr "SELECT CocrPers, NurePers, DecrPers, CobrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers FROM infogov.persona"
  loc_CE7288: LitStr " WHERE infogov.persona.CucuPers = "
  loc_CE728B: ConcatStr
  loc_CE728C: CVarStr var_220
  loc_CE728F: FLdRfVar var_188
  loc_CE7292: FLdRfVar var_2A4
  loc_CE7295: LitVarStr var_19C, "CucuPers"
  loc_CE729A: PopAdLdVar
  loc_CE729B: FLdRfVar var_210
  loc_CE729E: FLdRfVar var_178
  loc_CE72A1: FLdPr Me
  loc_CE72A4: MemLdRfVar from_stack_1.global_56
  loc_CE72A7: NewIfNullPr clscomercio
  loc_CE72AA: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE72AF: FLdPr var_178
  loc_CE72B2:  = Me.Fields
  loc_CE72B7: FLdPr var_210
  loc_CE72BA: from_stack_2 = Me.Item(from_stack_1)
  loc_CE72BF: FLdPr var_2A4
  loc_CE72C2:  = Me.Value
  loc_CE72C7: FLdRfVar var_188
  loc_CE72CA: ConcatVar var_244
  loc_CE72CE: LitVarStr var_1AC, " ORDER BY CucuPers"
  loc_CE72D3: ConcatVar var_254
  loc_CE72D7: CStrVarVal var_224
  loc_CE72DB: FLdPr Me
  loc_CE72DE: MemLdRfVar from_stack_1.global_72
  loc_CE72E1: NewIfNullPr clspersonas
  loc_CE72E4: Call clspersonas.RedefineRS(from_stack_1v)
  loc_CE72E9: FFree1Str var_224
  loc_CE72EC: FFreeAd var_178 = "": var_210 = ""
  loc_CE72F5: FFreeVar var_220 = "": var_188 = "": var_244 = ""
  loc_CE7300: FLdRfVar var_188
  loc_CE7303: FLdRfVar var_2A4
  loc_CE7306: LitVarStr var_19C, "CodiCome"
  loc_CE730B: PopAdLdVar
  loc_CE730C: FLdRfVar var_210
  loc_CE730F: FLdRfVar var_178
  loc_CE7312: FLdPr Me
  loc_CE7315: MemLdRfVar from_stack_1.global_56
  loc_CE7318: NewIfNullPr clscomercio
  loc_CE731B: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7320: FLdPr var_178
  loc_CE7323:  = Me.Fields
  loc_CE7328: FLdPr var_210
  loc_CE732B: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7330: FLdPr var_2A4
  loc_CE7333:  = Me.Value
  loc_CE7338: FLdRfVar var_172
  loc_CE733B: FLdRfVar var_188
  loc_CE733E: CStrVarTmp
  loc_CE733F: FStStrNoPop var_224
  loc_CE7342: LitI2_Byte 6
  loc_CE7344: CUI1I2
  loc_CE7346: FLdPr Me
  loc_CE7349: MemLdRfVar from_stack_1.global_64
  loc_CE734C: NewIfNullPr clsrelacion
  loc_CE734F: from_stack_3v = clsrelacion.BuscaDatosRelacion(from_stack_1v, from_stack_2v)
  loc_CE7354: FLdI2 var_172
  loc_CE7357: LitI2_Byte &HFF
  loc_CE7359: EqI2
  loc_CE735A: FFree1Str var_224
  loc_CE735D: FFreeAd var_178 = "": var_210 = ""
  loc_CE7366: FFree1Var var_188 = ""
  loc_CE7369: BranchF loc_CE964C
  loc_CE736C: FLdRfVar var_188
  loc_CE736F: FLdRfVar var_2A4
  loc_CE7372: LitVarStr var_19C, "CodiCome"
  loc_CE7377: PopAdLdVar
  loc_CE7378: FLdRfVar var_210
  loc_CE737B: FLdRfVar var_178
  loc_CE737E: FLdPr Me
  loc_CE7381: MemLdRfVar from_stack_1.global_56
  loc_CE7384: NewIfNullPr clscomercio
  loc_CE7387: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE738C: FLdPr var_178
  loc_CE738F:  = Me.Fields
  loc_CE7394: FLdPr var_210
  loc_CE7397: from_stack_2 = Me.Item(from_stack_1)
  loc_CE739C: FLdPr var_2A4
  loc_CE739F:  = Me.Value
  loc_CE73A4: FLdFPR8 var_108
  loc_CE73A7: CStrDate
  loc_CE73A9: FStStrNoPop var_288
  loc_CE73AC: FLdRfVar var_188
  loc_CE73AF: CStrVarTmp
  loc_CE73B0: FStStrNoPop var_224
  loc_CE73B3: LitI2_Byte 6
  loc_CE73B5: CUI1I2
  loc_CE73B7: ImpAdCallFPR4 Proc_270_104_B20D90(, , )
  loc_CE73BC: FStFPR8 var_A4
  loc_CE73BF: FFreeStr var_224 = ""
  loc_CE73C6: FFreeAd var_178 = "": var_210 = ""
  loc_CE73CF: FFree1Var var_188 = ""
  loc_CE73D2: FLdRfVar var_188
  loc_CE73D5: FLdRfVar var_2A4
  loc_CE73D8: LitVarStr var_19C, "CodiCome"
  loc_CE73DD: PopAdLdVar
  loc_CE73DE: FLdRfVar var_210
  loc_CE73E1: FLdRfVar var_178
  loc_CE73E4: FLdPr Me
  loc_CE73E7: MemLdRfVar from_stack_1.global_56
  loc_CE73EA: NewIfNullPr clscomercio
  loc_CE73ED: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE73F2: FLdPr var_178
  loc_CE73F5:  = Me.Fields
  loc_CE73FA: FLdPr var_210
  loc_CE73FD: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7402: FLdPr var_2A4
  loc_CE7405:  = Me.Value
  loc_CE740A: FLdRfVar var_2A0
  loc_CE740D: FLdRfVar var_188
  loc_CE7410: CStrVarTmp
  loc_CE7411: FStStrNoPop var_224
  loc_CE7414: LitI2_Byte 6
  loc_CE7416: FLdPr Me
  loc_CE7419: MemLdRfVar from_stack_1.global_80
  loc_CE741C: NewIfNullPr clsrecabole
  loc_CE741F: from_stack_3v = clsrecabole.BuscaImporteRecabole(from_stack_1v, from_stack_2v)
  loc_CE7424: FLdFPR8 var_2A0
  loc_CE7427: FStFPR8 var_F0
  loc_CE742A: FFree1Str var_224
  loc_CE742D: FFreeAd var_178 = "": var_210 = ""
  loc_CE7436: FFree1Var var_188 = ""
  loc_CE7439: LitI2_Byte 0
  loc_CE743B: CR8I2
  loc_CE743C: FStFPR8 var_F0
  loc_CE743F: LitI2_Byte 0
  loc_CE7441: CR8I2
  loc_CE7442: FStFPR8 var_15C
  loc_CE7445: LitI2_Byte 0
  loc_CE7447: CR8I2
  loc_CE7448: FStFPR8 var_E0
  loc_CE744B: LitI2_Byte 0
  loc_CE744D: CR8I2
  loc_CE744E: FStFPR8 var_E8
  loc_CE7451: LitI2_Byte 0
  loc_CE7453: CR8I2
  loc_CE7454: FStFPR8 var_B4
  loc_CE7457: FLdRfVar var_188
  loc_CE745A: FLdRfVar var_2A4
  loc_CE745D: LitVarStr var_19C, "Importe"
  loc_CE7462: PopAdLdVar
  loc_CE7463: FLdRfVar var_210
  loc_CE7466: FLdRfVar var_178
  loc_CE7469: FLdPr Me
  loc_CE746C: MemLdRfVar from_stack_1.global_56
  loc_CE746F: NewIfNullPr clscomercio
  loc_CE7472: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7477: FLdPr var_178
  loc_CE747A:  = Me.Fields
  loc_CE747F: FLdPr var_210
  loc_CE7482: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7487: FLdPr var_2A4
  loc_CE748A:  = Me.Value
  loc_CE748F: LitI4 0
  loc_CE7494: LitI4 -1
  loc_CE7499: LitI4 1
  loc_CE749E: LitStr ","
  loc_CE74A1: LitStr "."
  loc_CE74A4: FLdRfVar var_188
  loc_CE74A7: CStrVarTmp
  loc_CE74A8: FStStrNoPop var_224
  loc_CE74AB: ImpAdCallI2 Replace(, , , , , )
  loc_CE74B0: FStStrNoPop var_288
  loc_CE74B3: CR8Str
  loc_CE74B5: FStFPR8 var_E8
  loc_CE74B8: FFreeStr var_224 = ""
  loc_CE74BF: FFreeAd var_178 = "": var_210 = ""
  loc_CE74C8: FFree1Var var_188 = ""
  loc_CE74CB: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') CodiCalle, IFNULL(domicilio.calle,'') as DecaPost, IFNULL(domicilio.NumeCalle,'0') as NumePost, IFNULL(domicilio.CodiBarrio,'0') CobpPost, IFNULL(domicilio.barrio,'') as DebaPost, IFNULL(domicilio.Manzana,'') as ManzPost, IFNULL(domicilio.Casa,'') as CasaPost, "
  loc_CE74CE: LitStr " concat(domicilio.Monoblock,"
  loc_CE74D1: ConcatStr
  loc_CE74D2: FStStrNoPop var_224
  loc_CE74D5: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_CE74D8: ConcatStr
  loc_CE74D9: FStStrNoPop var_288
  loc_CE74DC: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_CE74DF: ConcatStr
  loc_CE74E0: FStStrNoPop var_28C
  loc_CE74E3: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_CE74E6: ConcatStr
  loc_CE74E7: FStStrNoPop var_290
  loc_CE74EA: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_CE74ED: ConcatStr
  loc_CE74EE: FStStrNoPop var_294
  loc_CE74F1: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta)  as UbicPost,"
  loc_CE74F4: ConcatStr
  loc_CE74F5: FStStrNoPop var_2B0
  loc_CE74F8: LitStr " IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') ColpPost, IFNULL(domicilio.Localidad,'') as DeloPost, IFNULL(domicilio.CodPostal,'0') as CopoPost, "
  loc_CE74FB: ConcatStr
  loc_CE74FC: FStStrNoPop var_2B4
  loc_CE74FF: LitStr " inmurentas.CodiExce, inmurentas.FfExInmu, PorcExce, IFNULL(inmurentas.Emite,'1') as Emite, domicilio.vinculo "
  loc_CE7502: ConcatStr
  loc_CE7503: FStStrNoPop var_2B8
  loc_CE7506: LitStr " FROM domicilio"
  loc_CE7509: ConcatStr
  loc_CE750A: FStStrNoPop var_2BC
  loc_CE750D: LitStr " LEFT JOIN inmurentas ON inmurentas.CodiInmu = domicilio.CodiCome"
  loc_CE7510: ConcatStr
  loc_CE7511: FStStrNoPop var_2C0
  loc_CE7514: LitStr " LEFT JOIN eximicion ON eximicion.CodiExce = inmurentas.CodiExce"
  loc_CE7517: ConcatStr
  loc_CE7518: FStStrNoPop var_2C4
  loc_CE751B: LitStr " WHERE CodiOfic = 6"
  loc_CE751E: ConcatStr
  loc_CE751F: FStStrNoPop var_2C8
  loc_CE7522: LitStr " AND CodiCome = "
  loc_CE7525: ConcatStr
  loc_CE7526: CVarStr var_220
  loc_CE7529: FLdRfVar var_188
  loc_CE752C: FLdRfVar var_2A4
  loc_CE752F: LitVarStr var_19C, "CodiCome"
  loc_CE7534: PopAdLdVar
  loc_CE7535: FLdRfVar var_210
  loc_CE7538: FLdRfVar var_178
  loc_CE753B: FLdPr Me
  loc_CE753E: MemLdRfVar from_stack_1.global_56
  loc_CE7541: NewIfNullPr clscomercio
  loc_CE7544: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7549: FLdPr var_178
  loc_CE754C:  = Me.Fields
  loc_CE7551: FLdPr var_210
  loc_CE7554: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7559: FLdPr var_2A4
  loc_CE755C:  = Me.Value
  loc_CE7561: FLdRfVar var_188
  loc_CE7564: ConcatVar var_244
  loc_CE7568: LitVarStr var_1AC, " AND Tipo = 'POSTAL'"
  loc_CE756D: ConcatVar var_254
  loc_CE7571: CStrVarVal var_2CC
  loc_CE7575: FLdPr Me
  loc_CE7578: MemLdRfVar from_stack_1.global_84
  loc_CE757B: NewIfNullPr clsboleto
  loc_CE757E: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CE7583: FFreeStr var_224 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = ""
  loc_CE75A0: FFreeAd var_178 = "": var_210 = ""
  loc_CE75A9: FFreeVar var_220 = "": var_188 = "": var_244 = ""
  loc_CE75B4: FLdRfVar var_298
  loc_CE75B7: FLdPr Me
  loc_CE75BA: MemLdRfVar from_stack_1.global_84
  loc_CE75BD: NewIfNullPr clsboleto
  loc_CE75C0: from_stack_1 = clsboleto.RecordCount
  loc_CE75C5: ILdRf var_298
  loc_CE75C8: LitI4 0
  loc_CE75CD: EqI4
  loc_CE75CE: BranchF loc_CE76BA
  loc_CE75D1: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') CodiCalle, IFNULL(domicilio.calle,'') as DecaPost, IFNULL(domicilio.NumeCalle,'0') as NumePost, IFNULL(domicilio.CodiBarrio,'0') CobpPost, IFNULL(domicilio.barrio,'') as DebaPost, IFNULL(domicilio.Manzana,'') as ManzPost, IFNULL(domicilio.Casa,'') as CasaPost, "
  loc_CE75D4: LitStr " concat(domicilio.Monoblock,"
  loc_CE75D7: ConcatStr
  loc_CE75D8: FStStrNoPop var_224
  loc_CE75DB: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_CE75DE: ConcatStr
  loc_CE75DF: FStStrNoPop var_288
  loc_CE75E2: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_CE75E5: ConcatStr
  loc_CE75E6: FStStrNoPop var_28C
  loc_CE75E9: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_CE75EC: ConcatStr
  loc_CE75ED: FStStrNoPop var_290
  loc_CE75F0: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_CE75F3: ConcatStr
  loc_CE75F4: FStStrNoPop var_294
  loc_CE75F7: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta)  as UbicPost,"
  loc_CE75FA: ConcatStr
  loc_CE75FB: FStStrNoPop var_2B0
  loc_CE75FE: LitStr " IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') ColpPost, IFNULL(domicilio.Localidad,'') as DeloPost, IFNULL(domicilio.CodPostal,'0') as CopoPost, "
  loc_CE7601: ConcatStr
  loc_CE7602: FStStrNoPop var_2B4
  loc_CE7605: LitStr " inmurentas.CodiExce, inmurentas.FfExInmu, PorcExce, IFNULL(inmurentas.Emite,'1') as Emite, domicilio.vinculo "
  loc_CE7608: ConcatStr
  loc_CE7609: FStStrNoPop var_2B8
  loc_CE760C: LitStr " FROM domicilio"
  loc_CE760F: ConcatStr
  loc_CE7610: FStStrNoPop var_2BC
  loc_CE7613: LitStr " LEFT JOIN inmurentas ON inmurentas.CodiInmu = domicilio.CodiCome"
  loc_CE7616: ConcatStr
  loc_CE7617: FStStrNoPop var_2C0
  loc_CE761A: LitStr " LEFT JOIN eximicion ON eximicion.CodiExce = inmurentas.CodiExce"
  loc_CE761D: ConcatStr
  loc_CE761E: FStStrNoPop var_2C4
  loc_CE7621: LitStr " WHERE CodiOfic = 6"
  loc_CE7624: ConcatStr
  loc_CE7625: FStStrNoPop var_2C8
  loc_CE7628: LitStr " AND CodiCome = "
  loc_CE762B: ConcatStr
  loc_CE762C: CVarStr var_220
  loc_CE762F: FLdRfVar var_188
  loc_CE7632: FLdRfVar var_2A4
  loc_CE7635: LitVarStr var_19C, "CodiCome"
  loc_CE763A: PopAdLdVar
  loc_CE763B: FLdRfVar var_210
  loc_CE763E: FLdRfVar var_178
  loc_CE7641: FLdPr Me
  loc_CE7644: MemLdRfVar from_stack_1.global_56
  loc_CE7647: NewIfNullPr clscomercio
  loc_CE764A: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE764F: FLdPr var_178
  loc_CE7652:  = Me.Fields
  loc_CE7657: FLdPr var_210
  loc_CE765A: from_stack_2 = Me.Item(from_stack_1)
  loc_CE765F: FLdPr var_2A4
  loc_CE7662:  = Me.Value
  loc_CE7667: FLdRfVar var_188
  loc_CE766A: ConcatVar var_244
  loc_CE766E: LitVarStr var_1AC, " AND Tipo = 'COMERCIAL'"
  loc_CE7673: ConcatVar var_254
  loc_CE7677: CStrVarVal var_2CC
  loc_CE767B: FLdPr Me
  loc_CE767E: MemLdRfVar from_stack_1.global_84
  loc_CE7681: NewIfNullPr clsboleto
  loc_CE7684: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CE7689: FFreeStr var_224 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = ""
  loc_CE76A6: FFreeAd var_178 = "": var_210 = ""
  loc_CE76AF: FFreeVar var_220 = "": var_188 = "": var_244 = ""
  loc_CE76BA: FLdFPR8 var_BC
  loc_CE76BD: FStFPR8 var_F8
  loc_CE76C0: FLdFPR8 var_E8
  loc_CE76C3: LitI2_Byte 0
  loc_CE76C5: CR8I2
  loc_CE76C6: GtR4
  loc_CE76C7: BranchF loc_CE9549
  loc_CE76CA: FLdRfVar var_224
  loc_CE76CD: FLdPr Me
  loc_CE76D0: VCallAd Control_ID_BimeLiquTxt
  loc_CE76D3: FStAdFunc var_178
  loc_CE76D6: FLdPr var_178
  loc_CE76D9:  = Me.Text
  loc_CE76DE: ILdRf var_224
  loc_CE76E1: CR8Str
  loc_CE76E3: LitI2_Byte 1
  loc_CE76E5: CR8I2
  loc_CE76E6: GtR4
  loc_CE76E7: FFree1Str var_224
  loc_CE76EA: FFree1Ad var_178
  loc_CE76ED: BranchF loc_CE7794
  loc_CE76F0: FLdRfVar var_188
  loc_CE76F3: FLdRfVar var_2A4
  loc_CE76F6: LitVarStr var_19C, "CodiCome"
  loc_CE76FB: PopAdLdVar
  loc_CE76FC: FLdRfVar var_210
  loc_CE76FF: FLdRfVar var_178
  loc_CE7702: FLdPr Me
  loc_CE7705: MemLdRfVar from_stack_1.global_56
  loc_CE7708: NewIfNullPr clscomercio
  loc_CE770B: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7710: FLdPr var_178
  loc_CE7713:  = Me.Fields
  loc_CE7718: FLdPr var_210
  loc_CE771B: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7720: FLdPr var_2A4
  loc_CE7723:  = Me.Value
  loc_CE7728: FLdRfVar var_224
  loc_CE772B: FLdPr Me
  loc_CE772E: VCallAd Control_ID_PeriLiquTxt
  loc_CE7731: FStAdFunc var_2A8
  loc_CE7734: FLdPr var_2A8
  loc_CE7737:  = Me.Text
  loc_CE773C: FLdRfVar var_288
  loc_CE773F: FLdPr Me
  loc_CE7742: VCallAd Control_ID_BimeLiquTxt
  loc_CE7745: FStAdFunc var_2D0
  loc_CE7748: FLdPr var_2D0
  loc_CE774B:  = Me.Text
  loc_CE7750: FLdRfVar var_172
  loc_CE7753: ILdRf var_288
  loc_CE7756: CI2Str
  loc_CE7758: ILdRf var_224
  loc_CE775B: CI2Str
  loc_CE775D: FLdRfVar var_188
  loc_CE7760: CStrVarTmp
  loc_CE7761: FStStrNoPop var_28C
  loc_CE7764: FLdPr Me
  loc_CE7767: MemLdRfVar from_stack_1.global_68
  loc_CE776A: NewIfNullPr clsliqupubl
  loc_CE776D: from_stack_4v = clsliqupubl.BuscaDeudaDeBimestreParaLaEmisionMasiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CE7772: FLdI2 var_172
  loc_CE7775: FStI2 var_166
  loc_CE7778: FFreeStr var_28C = "": var_224 = ""
  loc_CE7781: FFreeAd var_178 = "": var_210 = "": var_2A8 = "": var_2D0 = ""
  loc_CE778E: FFree1Var var_188 = ""
  loc_CE7791: Branch loc_CE7799
  loc_CE7794: LitI2_Byte &HFF
  loc_CE7796: FStI2 var_166
  loc_CE7799: FLdI2 var_166
  loc_CE779C: LitI2_Byte &HFF
  loc_CE779E: EqI2
  loc_CE779F: BranchF loc_CE8C33
  loc_CE77A2: ILdRf var_11C
  loc_CE77A5: FStStrCopy var_14C
  loc_CE77A8: LitI2_Byte 0
  loc_CE77AA: CR8I2
  loc_CE77AB: FStFPR8 var_94
  loc_CE77AE: LitI2_Byte 0
  loc_CE77B0: CR8I2
  loc_CE77B1: FStFPR8 var_118
  loc_CE77B4: FLdFPR8 var_94
  loc_CE77B7: FLdFPR8 var_E8
  loc_CE77BA: EqR4
  loc_CE77BB: BranchF loc_CE77D3
  loc_CE77BE: LitI2_Byte 0
  loc_CE77C0: CR8I2
  loc_CE77C1: FStFPR8 var_F8
  loc_CE77C4: FLdFPR8 var_94
  loc_CE77C7: FStFPR8 var_E8
  loc_CE77CA: FLdFPR8 var_E8
  loc_CE77CD: FStFPR8 var_E0
  loc_CE77D0: Branch loc_CE77DD
  loc_CE77D3: FLdFPR8 var_E8
  loc_CE77D6: FLdFPR8 var_F8
  loc_CE77D9: AddR8
  loc_CE77DA: FStFPR8 var_E0
  loc_CE77DD: FLdRfVar var_298
  loc_CE77E0: FLdPr Me
  loc_CE77E3: MemLdRfVar from_stack_1.global_72
  loc_CE77E6: NewIfNullPr clspersonas
  loc_CE77E9: from_stack_1 = clspersonas.RecordCount
  loc_CE77EE: ILdRf var_298
  loc_CE77F1: LitI4 1
  loc_CE77F6: EqI4
  loc_CE77F7: BranchF loc_CE816B
  loc_CE77FA: FLdFPR8 var_15C
  loc_CE77FD: CVarR8
  loc_CE7801: HardType
  loc_CE7802: LitI4 2
  loc_CE7807: FLdFPR8 var_E0
  loc_CE780A: FLdFPR8 var_94
  loc_CE780D: SubR4
  loc_CE780E: FLdFPR8 var_9C
  loc_CE7811: SubR4
  loc_CE7812: FLdFPR8 var_B4
  loc_CE7815: SubR4
  loc_CE7816: CVarR8
  loc_CE781A: FLdRfVar var_220
  loc_CE781D: ImpAdCallFPR4  = Round(, )
  loc_CE7822: FLdRfVar var_220
  loc_CE7825: LtVarBool
  loc_CE7827: FFreeVar var_188 = ""
  loc_CE782E: BranchF loc_CE7872
  loc_CE7831: FLdFPR8 var_15C
  loc_CE7834: FStFPR8 var_154
  loc_CE7837: LitI4 2
  loc_CE783C: FLdFPR8 var_E0
  loc_CE783F: FLdFPR8 var_94
  loc_CE7842: SubR4
  loc_CE7843: FLdFPR8 var_9C
  loc_CE7846: SubR4
  loc_CE7847: FLdFPR8 var_154
  loc_CE784A: SubR4
  loc_CE784B: FLdFPR8 var_B4
  loc_CE784E: SubR4
  loc_CE784F: CVarR8
  loc_CE7853: FLdRfVar var_220
  loc_CE7856: ImpAdCallFPR4  = Round(, )
  loc_CE785B: FLdRfVar var_220
  loc_CE785E: CR4Var
  loc_CE785F: FStFPR8 var_D8
  loc_CE7862: FFreeVar var_188 = ""
  loc_CE7869: LitI2_Byte 0
  loc_CE786B: CR8I2
  loc_CE786C: FStFPR8 var_15C
  loc_CE786F: Branch loc_CE78B0
  loc_CE7872: LitI4 2
  loc_CE7877: FLdFPR8 var_E0
  loc_CE787A: FLdFPR8 var_94
  loc_CE787D: SubR4
  loc_CE787E: FLdFPR8 var_9C
  loc_CE7881: SubR4
  loc_CE7882: FLdFPR8 var_B4
  loc_CE7885: SubR4
  loc_CE7886: CVarR8
  loc_CE788A: FLdRfVar var_220
  loc_CE788D: ImpAdCallFPR4  = Round(, )
  loc_CE7892: FLdRfVar var_220
  loc_CE7895: CR4Var
  loc_CE7896: FStFPR8 var_154
  loc_CE7899: FFreeVar var_188 = ""
  loc_CE78A0: FLdFPR8 var_15C
  loc_CE78A3: FLdFPR8 var_154
  loc_CE78A6: SubR4
  loc_CE78A7: FStFPR8 var_15C
  loc_CE78AA: LitI2_Byte 0
  loc_CE78AC: CR8I2
  loc_CE78AD: FStFPR8 var_D8
  loc_CE78B0: FLdRfVar var_298
  loc_CE78B3: FLdPr Me
  loc_CE78B6: MemLdRfVar from_stack_1.global_84
  loc_CE78B9: NewIfNullPr clsboleto
  loc_CE78BC: from_stack_1 = clsboleto.RecordCount
  loc_CE78C1: ILdRf var_298
  loc_CE78C4: LitI4 0
  loc_CE78C9: GtI4
  loc_CE78CA: BranchF loc_CE7EF7
  loc_CE78CD: FLdRfVar var_224
  loc_CE78D0: FLdPr Me
  loc_CE78D3: VCallAd Control_ID_PeriLiquTxt
  loc_CE78D6: FStAdFunc var_178
  loc_CE78D9: FLdPr var_178
  loc_CE78DC:  = Me.Text
  loc_CE78E1: FLdRfVar var_288
  loc_CE78E4: FLdPr Me
  loc_CE78E7: VCallAd Control_ID_BimeLiquTxt
  loc_CE78EA: FStAdFunc var_210
  loc_CE78ED: FLdPr var_210
  loc_CE78F0:  = Me.Text
  loc_CE78F5: FLdRfVar var_28C
  loc_CE78F8: FLdPr Me
  loc_CE78FB: VCallAd Control_ID_CodiTiliTxt
  loc_CE78FE: FStAdFunc var_2A4
  loc_CE7901: FLdPr var_2A4
  loc_CE7904:  = Me.Text
  loc_CE7909: FLdRfVar var_46C
  loc_CE790C: FLdRfVar var_2D4
  loc_CE790F: LitVarStr var_19C, "CodiCome"
  loc_CE7914: PopAdLdVar
  loc_CE7915: FLdRfVar var_2D0
  loc_CE7918: FLdRfVar var_2A8
  loc_CE791B: FLdPr Me
  loc_CE791E: MemLdRfVar from_stack_1.global_56
  loc_CE7921: NewIfNullPr clscomercio
  loc_CE7924: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7929: FLdPr var_2A8
  loc_CE792C:  = Me.Fields
  loc_CE7931: FLdPr var_2D0
  loc_CE7934: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7939: FLdPr var_2D4
  loc_CE793C:  = Me.Value
  loc_CE7941: FLdRfVar var_47C
  loc_CE7944: FLdRfVar var_2E0
  loc_CE7947: LitVarStr var_1AC, "CucuPers"
  loc_CE794C: PopAdLdVar
  loc_CE794D: FLdRfVar var_2DC
  loc_CE7950: FLdRfVar var_2D8
  loc_CE7953: FLdPr Me
  loc_CE7956: MemLdRfVar from_stack_1.global_56
  loc_CE7959: NewIfNullPr clscomercio
  loc_CE795C: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7961: FLdPr var_2D8
  loc_CE7964:  = Me.Fields
  loc_CE7969: FLdPr var_2DC
  loc_CE796C: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7971: FLdPr var_2E0
  loc_CE7974:  = Me.Value
  loc_CE7979: FLdRfVar var_48C
  loc_CE797C: FLdRfVar var_2EC
  loc_CE797F: LitVarStr var_1BC, "CodiRuta"
  loc_CE7984: PopAdLdVar
  loc_CE7985: FLdRfVar var_2E8
  loc_CE7988: FLdRfVar var_2E4
  loc_CE798B: FLdPr Me
  loc_CE798E: MemLdRfVar from_stack_1.global_56
  loc_CE7991: NewIfNullPr clscomercio
  loc_CE7994: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7999: FLdPr var_2E4
  loc_CE799C:  = Me.Fields
  loc_CE79A1: FLdPr var_2E8
  loc_CE79A4: from_stack_2 = Me.Item(from_stack_1)
  loc_CE79A9: FLdPr var_2EC
  loc_CE79AC:  = Me.Value
  loc_CE79B1: FLdRfVar var_49C
  loc_CE79B4: FLdRfVar var_2F8
  loc_CE79B7: LitVarStr var_1CC, "CodiCalle"
  loc_CE79BC: PopAdLdVar
  loc_CE79BD: FLdRfVar var_2F4
  loc_CE79C0: FLdRfVar var_2F0
  loc_CE79C3: FLdPr Me
  loc_CE79C6: MemLdRfVar from_stack_1.global_84
  loc_CE79C9: NewIfNullPr clsboleto
  loc_CE79CC: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE79D1: FLdPr var_2F0
  loc_CE79D4:  = Me.Fields
  loc_CE79D9: FLdPr var_2F4
  loc_CE79DC: from_stack_2 = Me.Item(from_stack_1)
  loc_CE79E1: FLdPr var_2F8
  loc_CE79E4:  = Me.Value
  loc_CE79E9: FLdRfVar var_4AC
  loc_CE79EC: FLdRfVar var_304
  loc_CE79EF: LitVarStr var_1DC, "NumePost"
  loc_CE79F4: PopAdLdVar
  loc_CE79F5: FLdRfVar var_300
  loc_CE79F8: FLdRfVar var_2FC
  loc_CE79FB: FLdPr Me
  loc_CE79FE: MemLdRfVar from_stack_1.global_84
  loc_CE7A01: NewIfNullPr clsboleto
  loc_CE7A04: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7A09: FLdPr var_2FC
  loc_CE7A0C:  = Me.Fields
  loc_CE7A11: FLdPr var_300
  loc_CE7A14: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7A19: FLdPr var_304
  loc_CE7A1C:  = Me.Value
  loc_CE7A21: FLdRfVar var_4BC
  loc_CE7A24: FLdRfVar var_310
  loc_CE7A27: LitVarStr var_1EC, "DecaPost"
  loc_CE7A2C: PopAdLdVar
  loc_CE7A2D: FLdRfVar var_30C
  loc_CE7A30: FLdRfVar var_308
  loc_CE7A33: FLdPr Me
  loc_CE7A36: MemLdRfVar from_stack_1.global_84
  loc_CE7A39: NewIfNullPr clsboleto
  loc_CE7A3C: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7A41: FLdPr var_308
  loc_CE7A44:  = Me.Fields
  loc_CE7A49: FLdPr var_30C
  loc_CE7A4C: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7A51: FLdPr var_310
  loc_CE7A54:  = Me.Value
  loc_CE7A59: FLdRfVar var_4CC
  loc_CE7A5C: FLdRfVar var_31C
  loc_CE7A5F: LitVarStr var_1FC, "CobpPost"
  loc_CE7A64: PopAdLdVar
  loc_CE7A65: FLdRfVar var_318
  loc_CE7A68: FLdRfVar var_314
  loc_CE7A6B: FLdPr Me
  loc_CE7A6E: MemLdRfVar from_stack_1.global_84
  loc_CE7A71: NewIfNullPr clsboleto
  loc_CE7A74: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7A79: FLdPr var_314
  loc_CE7A7C:  = Me.Fields
  loc_CE7A81: FLdPr var_318
  loc_CE7A84: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7A89: FLdPr var_31C
  loc_CE7A8C:  = Me.Value
  loc_CE7A91: FLdRfVar var_4DC
  loc_CE7A94: FLdRfVar var_328
  loc_CE7A97: LitVarStr var_20C, "DebaPost"
  loc_CE7A9C: PopAdLdVar
  loc_CE7A9D: FLdRfVar var_324
  loc_CE7AA0: FLdRfVar var_320
  loc_CE7AA3: FLdPr Me
  loc_CE7AA6: MemLdRfVar from_stack_1.global_84
  loc_CE7AA9: NewIfNullPr clsboleto
  loc_CE7AAC: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7AB1: FLdPr var_320
  loc_CE7AB4:  = Me.Fields
  loc_CE7AB9: FLdPr var_324
  loc_CE7ABC: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7AC1: FLdPr var_328
  loc_CE7AC4:  = Me.Value
  loc_CE7AC9: FLdRfVar var_4EC
  loc_CE7ACC: FLdRfVar var_334
  loc_CE7ACF: LitVarStr var_234, "ManzPost"
  loc_CE7AD4: PopAdLdVar
  loc_CE7AD5: FLdRfVar var_330
  loc_CE7AD8: FLdRfVar var_32C
  loc_CE7ADB: FLdPr Me
  loc_CE7ADE: MemLdRfVar from_stack_1.global_84
  loc_CE7AE1: NewIfNullPr clsboleto
  loc_CE7AE4: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7AE9: FLdPr var_32C
  loc_CE7AEC:  = Me.Fields
  loc_CE7AF1: FLdPr var_330
  loc_CE7AF4: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7AF9: FLdPr var_334
  loc_CE7AFC:  = Me.Value
  loc_CE7B01: FLdRfVar var_4FC
  loc_CE7B04: FLdRfVar var_340
  loc_CE7B07: LitVarStr var_274, "CasaPost"
  loc_CE7B0C: PopAdLdVar
  loc_CE7B0D: FLdRfVar var_33C
  loc_CE7B10: FLdRfVar var_338
  loc_CE7B13: FLdPr Me
  loc_CE7B16: MemLdRfVar from_stack_1.global_84
  loc_CE7B19: NewIfNullPr clsboleto
  loc_CE7B1C: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7B21: FLdPr var_338
  loc_CE7B24:  = Me.Fields
  loc_CE7B29: FLdPr var_33C
  loc_CE7B2C: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7B31: FLdPr var_340
  loc_CE7B34:  = Me.Value
  loc_CE7B39: FLdRfVar var_188
  loc_CE7B3C: FLdRfVar var_35C
  loc_CE7B3F: LitVarStr var_358, "UbicPost"
  loc_CE7B44: PopAdLdVar
  loc_CE7B45: FLdRfVar var_348
  loc_CE7B48: FLdRfVar var_344
  loc_CE7B4B: FLdPr Me
  loc_CE7B4E: MemLdRfVar from_stack_1.global_84
  loc_CE7B51: NewIfNullPr clsboleto
  loc_CE7B54: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7B59: FLdPr var_344
  loc_CE7B5C:  = Me.Fields
  loc_CE7B61: FLdPr var_348
  loc_CE7B64: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7B69: FLdPr var_35C
  loc_CE7B6C:  = Me.Value
  loc_CE7B71: FLdRfVar var_388
  loc_CE7B74: LitVarStr var_384, "UbicPost"
  loc_CE7B79: PopAdLdVar
  loc_CE7B7A: FLdRfVar var_374
  loc_CE7B7D: FLdRfVar var_370
  loc_CE7B80: FLdPr Me
  loc_CE7B83: MemLdRfVar from_stack_1.global_84
  loc_CE7B86: NewIfNullPr clsboleto
  loc_CE7B89: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7B8E: FLdPr var_370
  loc_CE7B91:  = Me.Fields
  loc_CE7B96: FLdPr var_374
  loc_CE7B99: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7B9E: FLdRfVar var_244
  loc_CE7BA1: FLdRfVar var_3A4
  loc_CE7BA4: LitVarStr var_3A0, "Ubicacion"
  loc_CE7BA9: PopAdLdVar
  loc_CE7BAA: FLdRfVar var_390
  loc_CE7BAD: FLdRfVar var_38C
  loc_CE7BB0: FLdPr Me
  loc_CE7BB3: MemLdRfVar from_stack_1.global_84
  loc_CE7BB6: NewIfNullPr clsboleto
  loc_CE7BB9: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7BBE: FLdPr var_38C
  loc_CE7BC1:  = Me.Fields
  loc_CE7BC6: FLdPr var_390
  loc_CE7BC9: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7BCE: FLdPr var_3A4
  loc_CE7BD1:  = Me.Value
  loc_CE7BD6: LitI4 0
  loc_CE7BDB: LitI4 -1
  loc_CE7BE0: LitI4 1
  loc_CE7BE5: LitStr " "
  loc_CE7BE8: LitStr "'"
  loc_CE7BEB: FLdRfVar var_244
  loc_CE7BEE: CStrVarTmp
  loc_CE7BEF: FStStrNoPop var_290
  loc_CE7BF2: ImpAdCallI2 Replace(, , , , , )
  loc_CE7BF7: CVarStr var_284
  loc_CE7BFA: FLdZeroAd var_388
  loc_CE7BFD: CVarAd
  loc_CE7C01: FLdRfVar var_188
  loc_CE7C04: LitVarStr var_36C, vbNullString
  loc_CE7C09: HardType
  loc_CE7C0A: NeVar var_220
  loc_CE7C0E: FStVar var_254
  loc_CE7C12: FLdRfVar var_254
  loc_CE7C15: FLdRfVar var_3B4
  loc_CE7C18: ImpAdCallFPR4  = IIf(, , )
  loc_CE7C1D: FLdRfVar var_50C
  loc_CE7C20: FLdRfVar var_3D0
  loc_CE7C23: LitVarStr var_3CC, "ColpPost"
  loc_CE7C28: PopAdLdVar
  loc_CE7C29: FLdRfVar var_3BC
  loc_CE7C2C: FLdRfVar var_3B8
  loc_CE7C2F: FLdPr Me
  loc_CE7C32: MemLdRfVar from_stack_1.global_84
  loc_CE7C35: NewIfNullPr clsboleto
  loc_CE7C38: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7C3D: FLdPr var_3B8
  loc_CE7C40:  = Me.Fields
  loc_CE7C45: FLdPr var_3BC
  loc_CE7C48: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7C4D: FLdPr var_3D0
  loc_CE7C50:  = Me.Value
  loc_CE7C55: FLdRfVar var_51C
  loc_CE7C58: FLdRfVar var_3EC
  loc_CE7C5B: LitVarStr var_3E8, "DeloPost"
  loc_CE7C60: PopAdLdVar
  loc_CE7C61: FLdRfVar var_3D8
  loc_CE7C64: FLdRfVar var_3D4
  loc_CE7C67: FLdPr Me
  loc_CE7C6A: MemLdRfVar from_stack_1.global_84
  loc_CE7C6D: NewIfNullPr clsboleto
  loc_CE7C70: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7C75: FLdPr var_3D4
  loc_CE7C78:  = Me.Fields
  loc_CE7C7D: FLdPr var_3D8
  loc_CE7C80: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7C85: FLdPr var_3EC
  loc_CE7C88:  = Me.Value
  loc_CE7C8D: FLdRfVar var_52C
  loc_CE7C90: FLdRfVar var_408
  loc_CE7C93: LitVarStr var_404, "CopoPost"
  loc_CE7C98: PopAdLdVar
  loc_CE7C99: FLdRfVar var_3F4
  loc_CE7C9C: FLdRfVar var_3F0
  loc_CE7C9F: FLdPr Me
  loc_CE7CA2: MemLdRfVar from_stack_1.global_84
  loc_CE7CA5: NewIfNullPr clsboleto
  loc_CE7CA8: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE7CAD: FLdPr var_3F0
  loc_CE7CB0:  = Me.Fields
  loc_CE7CB5: FLdPr var_3F4
  loc_CE7CB8: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7CBD: FLdPr var_408
  loc_CE7CC0:  = Me.Value
  loc_CE7CC5: FLdRfVar var_53C
  loc_CE7CC8: FLdRfVar var_424
  loc_CE7CCB: LitVarStr var_420, "Plano"
  loc_CE7CD0: PopAdLdVar
  loc_CE7CD1: FLdRfVar var_410
  loc_CE7CD4: FLdRfVar var_40C
  loc_CE7CD7: FLdPr Me
  loc_CE7CDA: MemLdRfVar from_stack_1.global_56
  loc_CE7CDD: NewIfNullPr clscomercio
  loc_CE7CE0: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7CE5: FLdPr var_40C
  loc_CE7CE8:  = Me.Fields
  loc_CE7CED: FLdPr var_410
  loc_CE7CF0: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7CF5: FLdPr var_424
  loc_CE7CF8:  = Me.Value
  loc_CE7CFD: FLdRfVar var_550
  loc_CE7D00: FLdRfVar var_440
  loc_CE7D03: LitVarStr var_43C, "Sector"
  loc_CE7D08: PopAdLdVar
  loc_CE7D09: FLdRfVar var_42C
  loc_CE7D0C: FLdRfVar var_428
  loc_CE7D0F: FLdPr Me
  loc_CE7D12: MemLdRfVar from_stack_1.global_56
  loc_CE7D15: NewIfNullPr clscomercio
  loc_CE7D18: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7D1D: FLdPr var_428
  loc_CE7D20:  = Me.Fields
  loc_CE7D25: FLdPr var_42C
  loc_CE7D28: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7D2D: FLdPr var_440
  loc_CE7D30:  = Me.Value
  loc_CE7D35: FLdRfVar var_564
  loc_CE7D38: FLdRfVar var_45C
  loc_CE7D3B: LitVarStr var_458, "Orden"
  loc_CE7D40: PopAdLdVar
  loc_CE7D41: FLdRfVar var_448
  loc_CE7D44: FLdRfVar var_444
  loc_CE7D47: FLdPr Me
  loc_CE7D4A: MemLdRfVar from_stack_1.global_56
  loc_CE7D4D: NewIfNullPr clscomercio
  loc_CE7D50: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7D55: FLdPr var_444
  loc_CE7D58:  = Me.Fields
  loc_CE7D5D: FLdPr var_448
  loc_CE7D60: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7D65: FLdPr var_45C
  loc_CE7D68:  = Me.Value
  loc_CE7D6D: FLdRfVar var_564
  loc_CE7D70: CI2Var
  loc_CE7D71: FLdRfVar var_550
  loc_CE7D74: CStrVarTmp
  loc_CE7D75: FStStrNoPop var_554
  loc_CE7D78: FLdRfVar var_53C
  loc_CE7D7B: CStrVarTmp
  loc_CE7D7C: FStStrNoPop var_540
  loc_CE7D7F: FLdR8 var_170
  loc_CE7D82: FLdR8 var_E8
  loc_CE7D85: FLdR8 var_118
  loc_CE7D88: FLdI2 var_BE
  loc_CE7D8B: LitI2_Byte &HFF
  loc_CE7D8D: FLdR8 var_F8
  loc_CE7D90: FLdR8 var_108
  loc_CE7D93: FLdRfVar var_52C
  loc_CE7D96: CStrVarTmp
  loc_CE7D97: FStStrNoPop var_2CC
  loc_CE7D9A: FLdRfVar var_51C
  loc_CE7D9D: CStrVarTmp
  loc_CE7D9E: FStStrNoPop var_2C8
  loc_CE7DA1: FLdRfVar var_50C
  loc_CE7DA4: CI2Var
  loc_CE7DA5: FLdRfVar var_3B4
  loc_CE7DA8: CStrVarVal var_2C4
  loc_CE7DAC: FLdRfVar var_4FC
  loc_CE7DAF: CStrVarTmp
  loc_CE7DB0: FStStrNoPop var_2C0
  loc_CE7DB3: FLdRfVar var_4EC
  loc_CE7DB6: CStrVarTmp
  loc_CE7DB7: FStStrNoPop var_2BC
  loc_CE7DBA: FLdRfVar var_4DC
  loc_CE7DBD: CStrVarTmp
  loc_CE7DBE: FStStrNoPop var_2B8
  loc_CE7DC1: FLdRfVar var_4CC
  loc_CE7DC4: CI2Var
  loc_CE7DC5: FLdRfVar var_4BC
  loc_CE7DC8: CStrVarTmp
  loc_CE7DC9: FStStrNoPop var_2B4
  loc_CE7DCC: FLdRfVar var_4AC
  loc_CE7DCF: CStrVarTmp
  loc_CE7DD0: FStStrNoPop var_2B0
  loc_CE7DD3: FLdRfVar var_49C
  loc_CE7DD6: CI4Var
  loc_CE7DD8: FLdRfVar var_48C
  loc_CE7DDB: CI2Var
  loc_CE7DDC: FLdRfVar var_47C
  loc_CE7DDF: CStrVarTmp
  loc_CE7DE0: FStStrNoPop var_294
  loc_CE7DE3: FLdR8 var_D8
  loc_CE7DE6: LitI2_Byte 0
  loc_CE7DE8: CR8I2
  loc_CE7DE9: PopFPR8
  loc_CE7DEA: FLdR8 var_9C
  loc_CE7DED: FLdR8 var_94
  loc_CE7DF0: FLdR8 var_154
  loc_CE7DF3: FLdR8 var_E0
  loc_CE7DF6: FLdR8 var_A4
  loc_CE7DF9: ILdRf var_14C
  loc_CE7DFC: LitStr "Aforo"
  loc_CE7DFF: LitI2_Byte 1
  loc_CE7E01: CUI1I2
  loc_CE7E03: ILdRf var_D0
  loc_CE7E06: FLdRfVar var_46C
  loc_CE7E09: CI4Var
  loc_CE7E0B: FLdI2 var_8A
  loc_CE7E0E: ILdRf var_28C
  loc_CE7E11: CUI1Str
  loc_CE7E13: ILdRf var_288
  loc_CE7E16: CUI1Str
  loc_CE7E18: ILdRf var_224
  loc_CE7E1B: CI2Str
  loc_CE7E1D: FLdPr Me
  loc_CE7E20: MemLdRfVar from_stack_1.global_68
  loc_CE7E23: NewIfNullPr clsliqupubl
  loc_CE7E26: Call clsliqupubl.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CE7E2B: FFreeStr var_290 = "": var_224 = "": var_288 = "": var_28C = "": var_294 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_540 = ""
  loc_CE7E4C: FFreeAd var_3A4 = "": var_3B8 = "": var_3BC = "": var_3D4 = "": var_3D8 = "": var_3F0 = "": var_3F4 = "": var_40C = "": var_410 = "": var_428 = "": var_42C = "": var_444 = "": var_448 = "": var_2D4 = "": var_2E0 = "": var_2EC = "": var_2F8 = "": var_304 = "": var_310 = "": var_31C = "": var_328 = "": var_334 = "": var_340 = "": var_3D0 = "": var_3EC = "": var_408 = "": var_424 = "": var_440 = "": var_45C = "": var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2E8 = "": var_2F0 = "": var_2F4 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_338 = "": var_33C = "": var_344 = "": var_348 = "": var_35C = "": var_370 = "": var_374 = "": var_38C = ""
  loc_CE7EC5: FFreeVar var_188 = "": var_244 = "": var_254 = "": var_264 = "": var_284 = "": var_46C = "": var_47C = "": var_48C = "": var_49C = "": var_4AC = "": var_4BC = "": var_4CC = "": var_4DC = "": var_4EC = "": var_4FC = "": var_3B4 = "": var_50C = "": var_51C = "": var_52C = "": var_53C = "": var_550 = ""
  loc_CE7EF4: Branch loc_CE8168
  loc_CE7EF7: FLdRfVar var_224
  loc_CE7EFA: FLdPr Me
  loc_CE7EFD: VCallAd Control_ID_PeriLiquTxt
  loc_CE7F00: FStAdFunc var_178
  loc_CE7F03: FLdPr var_178
  loc_CE7F06:  = Me.Text
  loc_CE7F0B: FLdRfVar var_288
  loc_CE7F0E: FLdPr Me
  loc_CE7F11: VCallAd Control_ID_BimeLiquTxt
  loc_CE7F14: FStAdFunc var_210
  loc_CE7F17: FLdPr var_210
  loc_CE7F1A:  = Me.Text
  loc_CE7F1F: FLdRfVar var_28C
  loc_CE7F22: FLdPr Me
  loc_CE7F25: VCallAd Control_ID_CodiTiliTxt
  loc_CE7F28: FStAdFunc var_2A4
  loc_CE7F2B: FLdPr var_2A4
  loc_CE7F2E:  = Me.Text
  loc_CE7F33: FLdRfVar var_188
  loc_CE7F36: FLdRfVar var_2D4
  loc_CE7F39: LitVarStr var_19C, "CodiCome"
  loc_CE7F3E: PopAdLdVar
  loc_CE7F3F: FLdRfVar var_2D0
  loc_CE7F42: FLdRfVar var_2A8
  loc_CE7F45: FLdPr Me
  loc_CE7F48: MemLdRfVar from_stack_1.global_56
  loc_CE7F4B: NewIfNullPr clscomercio
  loc_CE7F4E: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7F53: FLdPr var_2A8
  loc_CE7F56:  = Me.Fields
  loc_CE7F5B: FLdPr var_2D0
  loc_CE7F5E: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7F63: FLdPr var_2D4
  loc_CE7F66:  = Me.Value
  loc_CE7F6B: FLdRfVar var_220
  loc_CE7F6E: FLdRfVar var_2E0
  loc_CE7F71: LitVarStr var_1AC, "CucuPers"
  loc_CE7F76: PopAdLdVar
  loc_CE7F77: FLdRfVar var_2DC
  loc_CE7F7A: FLdRfVar var_2D8
  loc_CE7F7D: FLdPr Me
  loc_CE7F80: MemLdRfVar from_stack_1.global_56
  loc_CE7F83: NewIfNullPr clscomercio
  loc_CE7F86: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7F8B: FLdPr var_2D8
  loc_CE7F8E:  = Me.Fields
  loc_CE7F93: FLdPr var_2DC
  loc_CE7F96: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7F9B: FLdPr var_2E0
  loc_CE7F9E:  = Me.Value
  loc_CE7FA3: FLdRfVar var_244
  loc_CE7FA6: FLdRfVar var_2EC
  loc_CE7FA9: LitVarStr var_1BC, "CodiRuta"
  loc_CE7FAE: PopAdLdVar
  loc_CE7FAF: FLdRfVar var_2E8
  loc_CE7FB2: FLdRfVar var_2E4
  loc_CE7FB5: FLdPr Me
  loc_CE7FB8: MemLdRfVar from_stack_1.global_56
  loc_CE7FBB: NewIfNullPr clscomercio
  loc_CE7FBE: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7FC3: FLdPr var_2E4
  loc_CE7FC6:  = Me.Fields
  loc_CE7FCB: FLdPr var_2E8
  loc_CE7FCE: from_stack_2 = Me.Item(from_stack_1)
  loc_CE7FD3: FLdPr var_2EC
  loc_CE7FD6:  = Me.Value
  loc_CE7FDB: FLdRfVar var_254
  loc_CE7FDE: FLdRfVar var_2F8
  loc_CE7FE1: LitVarStr var_1CC, "Plano"
  loc_CE7FE6: PopAdLdVar
  loc_CE7FE7: FLdRfVar var_2F4
  loc_CE7FEA: FLdRfVar var_2F0
  loc_CE7FED: FLdPr Me
  loc_CE7FF0: MemLdRfVar from_stack_1.global_56
  loc_CE7FF3: NewIfNullPr clscomercio
  loc_CE7FF6: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE7FFB: FLdPr var_2F0
  loc_CE7FFE:  = Me.Fields
  loc_CE8003: FLdPr var_2F4
  loc_CE8006: from_stack_2 = Me.Item(from_stack_1)
  loc_CE800B: FLdPr var_2F8
  loc_CE800E:  = Me.Value
  loc_CE8013: FLdRfVar var_264
  loc_CE8016: FLdRfVar var_304
  loc_CE8019: LitVarStr var_1DC, "Sector"
  loc_CE801E: PopAdLdVar
  loc_CE801F: FLdRfVar var_300
  loc_CE8022: FLdRfVar var_2FC
  loc_CE8025: FLdPr Me
  loc_CE8028: MemLdRfVar from_stack_1.global_56
  loc_CE802B: NewIfNullPr clscomercio
  loc_CE802E: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8033: FLdPr var_2FC
  loc_CE8036:  = Me.Fields
  loc_CE803B: FLdPr var_300
  loc_CE803E: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8043: FLdPr var_304
  loc_CE8046:  = Me.Value
  loc_CE804B: FLdRfVar var_284
  loc_CE804E: FLdRfVar var_310
  loc_CE8051: LitVarStr var_1EC, "Orden"
  loc_CE8056: PopAdLdVar
  loc_CE8057: FLdRfVar var_30C
  loc_CE805A: FLdRfVar var_308
  loc_CE805D: FLdPr Me
  loc_CE8060: MemLdRfVar from_stack_1.global_56
  loc_CE8063: NewIfNullPr clscomercio
  loc_CE8066: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE806B: FLdPr var_308
  loc_CE806E:  = Me.Fields
  loc_CE8073: FLdPr var_30C
  loc_CE8076: from_stack_2 = Me.Item(from_stack_1)
  loc_CE807B: FLdPr var_310
  loc_CE807E:  = Me.Value
  loc_CE8083: FLdRfVar var_284
  loc_CE8086: CI2Var
  loc_CE8087: FLdRfVar var_264
  loc_CE808A: CStrVarTmp
  loc_CE808B: FStStrNoPop var_2B0
  loc_CE808E: FLdRfVar var_254
  loc_CE8091: CStrVarTmp
  loc_CE8092: FStStrNoPop var_294
  loc_CE8095: FLdR8 var_170
  loc_CE8098: FLdR8 var_E8
  loc_CE809B: FLdR8 var_118
  loc_CE809E: FLdI2 var_BE
  loc_CE80A1: LitI2_Byte &HFF
  loc_CE80A3: FLdR8 var_F8
  loc_CE80A6: FLdR8 var_108
  loc_CE80A9: LitStr vbNullString
  loc_CE80AC: LitStr vbNullString
  loc_CE80AF: LitI2_Byte 0
  loc_CE80B1: LitStr vbNullString
  loc_CE80B4: LitStr vbNullString
  loc_CE80B7: LitStr vbNullString
  loc_CE80BA: LitStr vbNullString
  loc_CE80BD: LitI2_Byte 0
  loc_CE80BF: LitStr vbNullString
  loc_CE80C2: LitStr vbNullString
  loc_CE80C5: LitI4 0
  loc_CE80CA: FLdRfVar var_244
  loc_CE80CD: CI2Var
  loc_CE80CE: FLdRfVar var_220
  loc_CE80D1: CStrVarTmp
  loc_CE80D2: FStStrNoPop var_290
  loc_CE80D5: FLdR8 var_D8
  loc_CE80D8: LitI2_Byte 0
  loc_CE80DA: CR8I2
  loc_CE80DB: PopFPR8
  loc_CE80DC: FLdR8 var_9C
  loc_CE80DF: FLdR8 var_94
  loc_CE80E2: FLdR8 var_154
  loc_CE80E5: FLdR8 var_E0
  loc_CE80E8: FLdR8 var_A4
  loc_CE80EB: ILdRf var_14C
  loc_CE80EE: LitStr "Aforo"
  loc_CE80F1: LitI2_Byte 1
  loc_CE80F3: CUI1I2
  loc_CE80F5: ILdRf var_D0
  loc_CE80F8: FLdRfVar var_188
  loc_CE80FB: CI4Var
  loc_CE80FD: FLdI2 var_8A
  loc_CE8100: ILdRf var_28C
  loc_CE8103: CUI1Str
  loc_CE8105: ILdRf var_288
  loc_CE8108: CUI1Str
  loc_CE810A: ILdRf var_224
  loc_CE810D: CI2Str
  loc_CE810F: FLdPr Me
  loc_CE8112: MemLdRfVar from_stack_1.global_68
  loc_CE8115: NewIfNullPr clsliqupubl
  loc_CE8118: Call clsliqupubl.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CE811D: FFreeStr var_224 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = ""
  loc_CE812C: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2E8 = "": var_2F0 = "": var_2F4 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_2D4 = "": var_2E0 = "": var_2EC = "": var_2F8 = "": var_304 = ""
  loc_CE8159: FFreeVar var_188 = "": var_220 = "": var_244 = "": var_254 = "": var_264 = ""
  loc_CE8168: Branch loc_CE8280
  loc_CE816B: FLdRfVar var_224
  loc_CE816E: FLdPr Me
  loc_CE8171: VCallAd Control_ID_PeriLiquTxt
  loc_CE8174: FStAdFunc var_178
  loc_CE8177: FLdPr var_178
  loc_CE817A:  = Me.Text
  loc_CE817F: FLdRfVar var_288
  loc_CE8182: FLdPr Me
  loc_CE8185: VCallAd Control_ID_BimeLiquTxt
  loc_CE8188: FStAdFunc var_210
  loc_CE818B: FLdPr var_210
  loc_CE818E:  = Me.Text
  loc_CE8193: FLdRfVar var_28C
  loc_CE8196: FLdPr Me
  loc_CE8199: VCallAd Control_ID_CodiTiliTxt
  loc_CE819C: FStAdFunc var_2A4
  loc_CE819F: FLdPr var_2A4
  loc_CE81A2:  = Me.Text
  loc_CE81A7: FLdRfVar var_254
  loc_CE81AA: FLdRfVar var_2D4
  loc_CE81AD: LitVarStr var_19C, "CodiCome"
  loc_CE81B2: PopAdLdVar
  loc_CE81B3: FLdRfVar var_2D0
  loc_CE81B6: FLdRfVar var_2A8
  loc_CE81B9: FLdPr Me
  loc_CE81BC: MemLdRfVar from_stack_1.global_56
  loc_CE81BF: NewIfNullPr clscomercio
  loc_CE81C2: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE81C7: FLdPr var_2A8
  loc_CE81CA:  = Me.Fields
  loc_CE81CF: FLdPr var_2D0
  loc_CE81D2: from_stack_2 = Me.Item(from_stack_1)
  loc_CE81D7: FLdPr var_2D4
  loc_CE81DA:  = Me.Value
  loc_CE81DF: LitVarStr var_1BC, "Cuenta: "
  loc_CE81E4: FLdRfVar var_188
  loc_CE81E7: FLdRfVar var_2E0
  loc_CE81EA: LitVarStr var_1AC, "CodiCome"
  loc_CE81EF: PopAdLdVar
  loc_CE81F0: FLdRfVar var_2DC
  loc_CE81F3: FLdRfVar var_2D8
  loc_CE81F6: FLdPr Me
  loc_CE81F9: MemLdRfVar from_stack_1.global_56
  loc_CE81FC: NewIfNullPr clscomercio
  loc_CE81FF: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8204: FLdPr var_2D8
  loc_CE8207:  = Me.Fields
  loc_CE820C: FLdPr var_2DC
  loc_CE820F: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8214: FLdPr var_2E0
  loc_CE8217:  = Me.Value
  loc_CE821C: FLdRfVar var_188
  loc_CE821F: ConcatVar var_220
  loc_CE8223: LitVarStr var_1CC, " No se encontro el titular"
  loc_CE8228: ConcatVar var_244
  loc_CE822C: CStrVarVal var_290
  loc_CE8230: FLdRfVar var_254
  loc_CE8233: CI4Var
  loc_CE8235: FLdI2 var_8A
  loc_CE8238: ILdRf var_28C
  loc_CE823B: CUI1Str
  loc_CE823D: ILdRf var_288
  loc_CE8240: CUI1Str
  loc_CE8242: ILdRf var_224
  loc_CE8245: CI2Str
  loc_CE8247: FLdPr Me
  loc_CE824A: MemLdRfVar from_stack_1.global_68
  loc_CE824D: NewIfNullPr clsliqupubl
  loc_CE8250: Call clsliqupubl.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CE8255: FFreeStr var_224 = "": var_288 = "": var_28C = ""
  loc_CE8260: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D8 = "": var_2DC = "": var_2E0 = ""
  loc_CE8275: FFreeVar var_188 = "": var_220 = "": var_254 = ""
  loc_CE8280: FLdFPR8 var_D8
  loc_CE8283: LitI2_Byte 0
  loc_CE8285: CR8I2
  loc_CE8286: GtR4
  loc_CE8287: BranchF loc_CE8C33
  loc_CE828A: FLdFPR8 var_F0
  loc_CE828D: LitI2_Byte 0
  loc_CE828F: CR8I2
  loc_CE8290: GtR4
  loc_CE8291: BranchF loc_CE8C33
  loc_CE8294: FLdRfVar var_298
  loc_CE8297: FLdPr Me
  loc_CE829A: MemLdRfVar from_stack_1.global_72
  loc_CE829D: NewIfNullPr clspersonas
  loc_CE82A0: from_stack_1 = clspersonas.RecordCount
  loc_CE82A5: ILdRf var_298
  loc_CE82A8: LitI4 1
  loc_CE82AD: EqI4
  loc_CE82AE: BranchF loc_CE8C33
  loc_CE82B1: FLdRfVar var_298
  loc_CE82B4: FLdPr Me
  loc_CE82B7: MemLdRfVar from_stack_1.global_84
  loc_CE82BA: NewIfNullPr clsboleto
  loc_CE82BD: from_stack_1 = clsboleto.RecordCount
  loc_CE82C2: ILdRf var_298
  loc_CE82C5: LitI4 0
  loc_CE82CA: GtI4
  loc_CE82CB: BranchF loc_CE88FC
  loc_CE82CE: FLdRfVar var_224
  loc_CE82D1: FLdPr Me
  loc_CE82D4: VCallAd Control_ID_PeriLiquTxt
  loc_CE82D7: FStAdFunc var_178
  loc_CE82DA: FLdPr var_178
  loc_CE82DD:  = Me.Text
  loc_CE82E2: FLdRfVar var_288
  loc_CE82E5: FLdPr Me
  loc_CE82E8: VCallAd Control_ID_BimeLiquTxt
  loc_CE82EB: FStAdFunc var_210
  loc_CE82EE: FLdPr var_210
  loc_CE82F1:  = Me.Text
  loc_CE82F6: FLdRfVar var_28C
  loc_CE82F9: FLdPr Me
  loc_CE82FC: VCallAd Control_ID_CodiTiliTxt
  loc_CE82FF: FStAdFunc var_2A4
  loc_CE8302: FLdPr var_2A4
  loc_CE8305:  = Me.Text
  loc_CE830A: FLdRfVar var_46C
  loc_CE830D: FLdRfVar var_2D4
  loc_CE8310: LitVarStr var_19C, "CodiCome"
  loc_CE8315: PopAdLdVar
  loc_CE8316: FLdRfVar var_2D0
  loc_CE8319: FLdRfVar var_2A8
  loc_CE831C: FLdPr Me
  loc_CE831F: MemLdRfVar from_stack_1.global_56
  loc_CE8322: NewIfNullPr clscomercio
  loc_CE8325: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE832A: FLdPr var_2A8
  loc_CE832D:  = Me.Fields
  loc_CE8332: FLdPr var_2D0
  loc_CE8335: from_stack_2 = Me.Item(from_stack_1)
  loc_CE833A: FLdPr var_2D4
  loc_CE833D:  = Me.Value
  loc_CE8342: FLdRfVar var_47C
  loc_CE8345: FLdRfVar var_2E0
  loc_CE8348: LitVarStr var_1AC, "CucuPers"
  loc_CE834D: PopAdLdVar
  loc_CE834E: FLdRfVar var_2DC
  loc_CE8351: FLdRfVar var_2D8
  loc_CE8354: FLdPr Me
  loc_CE8357: MemLdRfVar from_stack_1.global_56
  loc_CE835A: NewIfNullPr clscomercio
  loc_CE835D: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8362: FLdPr var_2D8
  loc_CE8365:  = Me.Fields
  loc_CE836A: FLdPr var_2DC
  loc_CE836D: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8372: FLdPr var_2E0
  loc_CE8375:  = Me.Value
  loc_CE837A: FLdRfVar var_48C
  loc_CE837D: FLdRfVar var_2EC
  loc_CE8380: LitVarStr var_1BC, "CodiRuta"
  loc_CE8385: PopAdLdVar
  loc_CE8386: FLdRfVar var_2E8
  loc_CE8389: FLdRfVar var_2E4
  loc_CE838C: FLdPr Me
  loc_CE838F: MemLdRfVar from_stack_1.global_56
  loc_CE8392: NewIfNullPr clscomercio
  loc_CE8395: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE839A: FLdPr var_2E4
  loc_CE839D:  = Me.Fields
  loc_CE83A2: FLdPr var_2E8
  loc_CE83A5: from_stack_2 = Me.Item(from_stack_1)
  loc_CE83AA: FLdPr var_2EC
  loc_CE83AD:  = Me.Value
  loc_CE83B2: FLdRfVar var_49C
  loc_CE83B5: FLdRfVar var_2F8
  loc_CE83B8: LitVarStr var_1CC, "CodiCalle"
  loc_CE83BD: PopAdLdVar
  loc_CE83BE: FLdRfVar var_2F4
  loc_CE83C1: FLdRfVar var_2F0
  loc_CE83C4: FLdPr Me
  loc_CE83C7: MemLdRfVar from_stack_1.global_84
  loc_CE83CA: NewIfNullPr clsboleto
  loc_CE83CD: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE83D2: FLdPr var_2F0
  loc_CE83D5:  = Me.Fields
  loc_CE83DA: FLdPr var_2F4
  loc_CE83DD: from_stack_2 = Me.Item(from_stack_1)
  loc_CE83E2: FLdPr var_2F8
  loc_CE83E5:  = Me.Value
  loc_CE83EA: FLdRfVar var_4AC
  loc_CE83ED: FLdRfVar var_304
  loc_CE83F0: LitVarStr var_1DC, "NumePost"
  loc_CE83F5: PopAdLdVar
  loc_CE83F6: FLdRfVar var_300
  loc_CE83F9: FLdRfVar var_2FC
  loc_CE83FC: FLdPr Me
  loc_CE83FF: MemLdRfVar from_stack_1.global_84
  loc_CE8402: NewIfNullPr clsboleto
  loc_CE8405: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE840A: FLdPr var_2FC
  loc_CE840D:  = Me.Fields
  loc_CE8412: FLdPr var_300
  loc_CE8415: from_stack_2 = Me.Item(from_stack_1)
  loc_CE841A: FLdPr var_304
  loc_CE841D:  = Me.Value
  loc_CE8422: FLdRfVar var_4BC
  loc_CE8425: FLdRfVar var_310
  loc_CE8428: LitVarStr var_1EC, "DecaPost"
  loc_CE842D: PopAdLdVar
  loc_CE842E: FLdRfVar var_30C
  loc_CE8431: FLdRfVar var_308
  loc_CE8434: FLdPr Me
  loc_CE8437: MemLdRfVar from_stack_1.global_84
  loc_CE843A: NewIfNullPr clsboleto
  loc_CE843D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8442: FLdPr var_308
  loc_CE8445:  = Me.Fields
  loc_CE844A: FLdPr var_30C
  loc_CE844D: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8452: FLdPr var_310
  loc_CE8455:  = Me.Value
  loc_CE845A: FLdRfVar var_4CC
  loc_CE845D: FLdRfVar var_31C
  loc_CE8460: LitVarStr var_1FC, "CobpPost"
  loc_CE8465: PopAdLdVar
  loc_CE8466: FLdRfVar var_318
  loc_CE8469: FLdRfVar var_314
  loc_CE846C: FLdPr Me
  loc_CE846F: MemLdRfVar from_stack_1.global_84
  loc_CE8472: NewIfNullPr clsboleto
  loc_CE8475: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE847A: FLdPr var_314
  loc_CE847D:  = Me.Fields
  loc_CE8482: FLdPr var_318
  loc_CE8485: from_stack_2 = Me.Item(from_stack_1)
  loc_CE848A: FLdPr var_31C
  loc_CE848D:  = Me.Value
  loc_CE8492: FLdRfVar var_4DC
  loc_CE8495: FLdRfVar var_328
  loc_CE8498: LitVarStr var_20C, "DebaPost"
  loc_CE849D: PopAdLdVar
  loc_CE849E: FLdRfVar var_324
  loc_CE84A1: FLdRfVar var_320
  loc_CE84A4: FLdPr Me
  loc_CE84A7: MemLdRfVar from_stack_1.global_84
  loc_CE84AA: NewIfNullPr clsboleto
  loc_CE84AD: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE84B2: FLdPr var_320
  loc_CE84B5:  = Me.Fields
  loc_CE84BA: FLdPr var_324
  loc_CE84BD: from_stack_2 = Me.Item(from_stack_1)
  loc_CE84C2: FLdPr var_328
  loc_CE84C5:  = Me.Value
  loc_CE84CA: FLdRfVar var_4EC
  loc_CE84CD: FLdRfVar var_334
  loc_CE84D0: LitVarStr var_234, "ManzPost"
  loc_CE84D5: PopAdLdVar
  loc_CE84D6: FLdRfVar var_330
  loc_CE84D9: FLdRfVar var_32C
  loc_CE84DC: FLdPr Me
  loc_CE84DF: MemLdRfVar from_stack_1.global_84
  loc_CE84E2: NewIfNullPr clsboleto
  loc_CE84E5: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE84EA: FLdPr var_32C
  loc_CE84ED:  = Me.Fields
  loc_CE84F2: FLdPr var_330
  loc_CE84F5: from_stack_2 = Me.Item(from_stack_1)
  loc_CE84FA: FLdPr var_334
  loc_CE84FD:  = Me.Value
  loc_CE8502: FLdRfVar var_4FC
  loc_CE8505: FLdRfVar var_340
  loc_CE8508: LitVarStr var_274, "CasaPost"
  loc_CE850D: PopAdLdVar
  loc_CE850E: FLdRfVar var_33C
  loc_CE8511: FLdRfVar var_338
  loc_CE8514: FLdPr Me
  loc_CE8517: MemLdRfVar from_stack_1.global_84
  loc_CE851A: NewIfNullPr clsboleto
  loc_CE851D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8522: FLdPr var_338
  loc_CE8525:  = Me.Fields
  loc_CE852A: FLdPr var_33C
  loc_CE852D: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8532: FLdPr var_340
  loc_CE8535:  = Me.Value
  loc_CE853A: FLdRfVar var_188
  loc_CE853D: FLdRfVar var_35C
  loc_CE8540: LitVarStr var_358, "UbicPost"
  loc_CE8545: PopAdLdVar
  loc_CE8546: FLdRfVar var_348
  loc_CE8549: FLdRfVar var_344
  loc_CE854C: FLdPr Me
  loc_CE854F: MemLdRfVar from_stack_1.global_84
  loc_CE8552: NewIfNullPr clsboleto
  loc_CE8555: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE855A: FLdPr var_344
  loc_CE855D:  = Me.Fields
  loc_CE8562: FLdPr var_348
  loc_CE8565: from_stack_2 = Me.Item(from_stack_1)
  loc_CE856A: FLdPr var_35C
  loc_CE856D:  = Me.Value
  loc_CE8572: FLdRfVar var_388
  loc_CE8575: LitVarStr var_384, "UbicPost"
  loc_CE857A: PopAdLdVar
  loc_CE857B: FLdRfVar var_374
  loc_CE857E: FLdRfVar var_370
  loc_CE8581: FLdPr Me
  loc_CE8584: MemLdRfVar from_stack_1.global_84
  loc_CE8587: NewIfNullPr clsboleto
  loc_CE858A: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE858F: FLdPr var_370
  loc_CE8592:  = Me.Fields
  loc_CE8597: FLdPr var_374
  loc_CE859A: from_stack_2 = Me.Item(from_stack_1)
  loc_CE859F: FLdRfVar var_244
  loc_CE85A2: FLdRfVar var_3A4
  loc_CE85A5: LitVarStr var_3A0, "Ubicacion"
  loc_CE85AA: PopAdLdVar
  loc_CE85AB: FLdRfVar var_390
  loc_CE85AE: FLdRfVar var_38C
  loc_CE85B1: FLdPr Me
  loc_CE85B4: MemLdRfVar from_stack_1.global_84
  loc_CE85B7: NewIfNullPr clsboleto
  loc_CE85BA: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE85BF: FLdPr var_38C
  loc_CE85C2:  = Me.Fields
  loc_CE85C7: FLdPr var_390
  loc_CE85CA: from_stack_2 = Me.Item(from_stack_1)
  loc_CE85CF: FLdPr var_3A4
  loc_CE85D2:  = Me.Value
  loc_CE85D7: LitI4 0
  loc_CE85DC: LitI4 -1
  loc_CE85E1: LitI4 1
  loc_CE85E6: LitStr " "
  loc_CE85E9: LitStr "'"
  loc_CE85EC: FLdRfVar var_244
  loc_CE85EF: CStrVarTmp
  loc_CE85F0: FStStrNoPop var_290
  loc_CE85F3: ImpAdCallI2 Replace(, , , , , )
  loc_CE85F8: CVarStr var_284
  loc_CE85FB: FLdZeroAd var_388
  loc_CE85FE: CVarAd
  loc_CE8602: FLdRfVar var_188
  loc_CE8605: LitVarStr var_36C, vbNullString
  loc_CE860A: HardType
  loc_CE860B: NeVar var_220
  loc_CE860F: FStVar var_254
  loc_CE8613: FLdRfVar var_254
  loc_CE8616: FLdRfVar var_3B4
  loc_CE8619: ImpAdCallFPR4  = IIf(, , )
  loc_CE861E: FLdRfVar var_50C
  loc_CE8621: FLdRfVar var_3D0
  loc_CE8624: LitVarStr var_3CC, "ColpPost"
  loc_CE8629: PopAdLdVar
  loc_CE862A: FLdRfVar var_3BC
  loc_CE862D: FLdRfVar var_3B8
  loc_CE8630: FLdPr Me
  loc_CE8633: MemLdRfVar from_stack_1.global_84
  loc_CE8636: NewIfNullPr clsboleto
  loc_CE8639: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE863E: FLdPr var_3B8
  loc_CE8641:  = Me.Fields
  loc_CE8646: FLdPr var_3BC
  loc_CE8649: from_stack_2 = Me.Item(from_stack_1)
  loc_CE864E: FLdPr var_3D0
  loc_CE8651:  = Me.Value
  loc_CE8656: FLdRfVar var_51C
  loc_CE8659: FLdRfVar var_3EC
  loc_CE865C: LitVarStr var_3E8, "DeloPost"
  loc_CE8661: PopAdLdVar
  loc_CE8662: FLdRfVar var_3D8
  loc_CE8665: FLdRfVar var_3D4
  loc_CE8668: FLdPr Me
  loc_CE866B: MemLdRfVar from_stack_1.global_84
  loc_CE866E: NewIfNullPr clsboleto
  loc_CE8671: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8676: FLdPr var_3D4
  loc_CE8679:  = Me.Fields
  loc_CE867E: FLdPr var_3D8
  loc_CE8681: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8686: FLdPr var_3EC
  loc_CE8689:  = Me.Value
  loc_CE868E: FLdRfVar var_52C
  loc_CE8691: FLdRfVar var_408
  loc_CE8694: LitVarStr var_404, "CopoPost"
  loc_CE8699: PopAdLdVar
  loc_CE869A: FLdRfVar var_3F4
  loc_CE869D: FLdRfVar var_3F0
  loc_CE86A0: FLdPr Me
  loc_CE86A3: MemLdRfVar from_stack_1.global_84
  loc_CE86A6: NewIfNullPr clsboleto
  loc_CE86A9: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE86AE: FLdPr var_3F0
  loc_CE86B1:  = Me.Fields
  loc_CE86B6: FLdPr var_3F4
  loc_CE86B9: from_stack_2 = Me.Item(from_stack_1)
  loc_CE86BE: FLdPr var_408
  loc_CE86C1:  = Me.Value
  loc_CE86C6: FLdRfVar var_53C
  loc_CE86C9: FLdRfVar var_424
  loc_CE86CC: LitVarStr var_420, "Plano"
  loc_CE86D1: PopAdLdVar
  loc_CE86D2: FLdRfVar var_410
  loc_CE86D5: FLdRfVar var_40C
  loc_CE86D8: FLdPr Me
  loc_CE86DB: MemLdRfVar from_stack_1.global_56
  loc_CE86DE: NewIfNullPr clscomercio
  loc_CE86E1: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE86E6: FLdPr var_40C
  loc_CE86E9:  = Me.Fields
  loc_CE86EE: FLdPr var_410
  loc_CE86F1: from_stack_2 = Me.Item(from_stack_1)
  loc_CE86F6: FLdPr var_424
  loc_CE86F9:  = Me.Value
  loc_CE86FE: FLdRfVar var_550
  loc_CE8701: FLdRfVar var_440
  loc_CE8704: LitVarStr var_43C, "Sector"
  loc_CE8709: PopAdLdVar
  loc_CE870A: FLdRfVar var_42C
  loc_CE870D: FLdRfVar var_428
  loc_CE8710: FLdPr Me
  loc_CE8713: MemLdRfVar from_stack_1.global_56
  loc_CE8716: NewIfNullPr clscomercio
  loc_CE8719: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE871E: FLdPr var_428
  loc_CE8721:  = Me.Fields
  loc_CE8726: FLdPr var_42C
  loc_CE8729: from_stack_2 = Me.Item(from_stack_1)
  loc_CE872E: FLdPr var_440
  loc_CE8731:  = Me.Value
  loc_CE8736: FLdRfVar var_564
  loc_CE8739: FLdRfVar var_45C
  loc_CE873C: LitVarStr var_458, "Orden"
  loc_CE8741: PopAdLdVar
  loc_CE8742: FLdRfVar var_448
  loc_CE8745: FLdRfVar var_444
  loc_CE8748: FLdPr Me
  loc_CE874B: MemLdRfVar from_stack_1.global_56
  loc_CE874E: NewIfNullPr clscomercio
  loc_CE8751: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8756: FLdPr var_444
  loc_CE8759:  = Me.Fields
  loc_CE875E: FLdPr var_448
  loc_CE8761: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8766: FLdPr var_45C
  loc_CE8769:  = Me.Value
  loc_CE876E: FLdRfVar var_564
  loc_CE8771: CI2Var
  loc_CE8772: FLdRfVar var_550
  loc_CE8775: CStrVarTmp
  loc_CE8776: FStStrNoPop var_554
  loc_CE8779: FLdRfVar var_53C
  loc_CE877C: CStrVarTmp
  loc_CE877D: FStStrNoPop var_540
  loc_CE8780: FLdR8 var_170
  loc_CE8783: FLdR8 var_E8
  loc_CE8786: FLdR8 var_118
  loc_CE8789: FLdI2 var_BE
  loc_CE878C: LitI2_Byte 0
  loc_CE878E: FLdR8 var_F8
  loc_CE8791: FLdR8 var_108
  loc_CE8794: FLdRfVar var_52C
  loc_CE8797: CStrVarTmp
  loc_CE8798: FStStrNoPop var_2CC
  loc_CE879B: FLdRfVar var_51C
  loc_CE879E: CStrVarTmp
  loc_CE879F: FStStrNoPop var_2C8
  loc_CE87A2: FLdRfVar var_50C
  loc_CE87A5: CI2Var
  loc_CE87A6: FLdRfVar var_3B4
  loc_CE87A9: CStrVarVal var_2C4
  loc_CE87AD: FLdRfVar var_4FC
  loc_CE87B0: CStrVarTmp
  loc_CE87B1: FStStrNoPop var_2C0
  loc_CE87B4: FLdRfVar var_4EC
  loc_CE87B7: CStrVarTmp
  loc_CE87B8: FStStrNoPop var_2BC
  loc_CE87BB: FLdRfVar var_4DC
  loc_CE87BE: CStrVarTmp
  loc_CE87BF: FStStrNoPop var_2B8
  loc_CE87C2: FLdRfVar var_4CC
  loc_CE87C5: CI2Var
  loc_CE87C6: FLdRfVar var_4BC
  loc_CE87C9: CStrVarTmp
  loc_CE87CA: FStStrNoPop var_2B4
  loc_CE87CD: FLdRfVar var_4AC
  loc_CE87D0: CStrVarTmp
  loc_CE87D1: FStStrNoPop var_2B0
  loc_CE87D4: FLdRfVar var_49C
  loc_CE87D7: CI4Var
  loc_CE87D9: FLdRfVar var_48C
  loc_CE87DC: CI2Var
  loc_CE87DD: FLdRfVar var_47C
  loc_CE87E0: CStrVarTmp
  loc_CE87E1: FStStrNoPop var_294
  loc_CE87E4: FLdR8 var_F0
  loc_CE87E7: LitI2_Byte 0
  loc_CE87E9: CR8I2
  loc_CE87EA: PopFPR8
  loc_CE87EB: LitI2_Byte 0
  loc_CE87ED: CR8I2
  loc_CE87EE: PopFPR8
  loc_CE87EF: LitI2_Byte 0
  loc_CE87F1: CR8I2
  loc_CE87F2: PopFPR8
  loc_CE87F3: LitI2_Byte 0
  loc_CE87F5: CR8I2
  loc_CE87F6: PopFPR8
  loc_CE87F7: FLdR8 var_F0
  loc_CE87FA: LitI2_Byte 0
  loc_CE87FC: CR8I2
  loc_CE87FD: PopFPR8
  loc_CE87FE: ILdRf var_14C
  loc_CE8801: LitStr "Aforo"
  loc_CE8804: LitI2_Byte 1
  loc_CE8806: CUI1I2
  loc_CE8808: ILdRf var_CC
  loc_CE880B: FLdRfVar var_46C
  loc_CE880E: CI4Var
  loc_CE8810: FLdI2 var_8A
  loc_CE8813: ILdRf var_28C
  loc_CE8816: CUI1Str
  loc_CE8818: ILdRf var_288
  loc_CE881B: CUI1Str
  loc_CE881D: ILdRf var_224
  loc_CE8820: CI2Str
  loc_CE8822: FLdPr Me
  loc_CE8825: MemLdRfVar from_stack_1.global_68
  loc_CE8828: NewIfNullPr clsliqupubl
  loc_CE882B: Call clsliqupubl.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CE8830: FFreeStr var_290 = "": var_224 = "": var_288 = "": var_28C = "": var_294 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_540 = ""
  loc_CE8851: FFreeAd var_3A4 = "": var_3B8 = "": var_3BC = "": var_3D4 = "": var_3D8 = "": var_3F0 = "": var_3F4 = "": var_40C = "": var_410 = "": var_428 = "": var_42C = "": var_444 = "": var_448 = "": var_2D4 = "": var_2E0 = "": var_2EC = "": var_2F8 = "": var_304 = "": var_310 = "": var_31C = "": var_328 = "": var_334 = "": var_340 = "": var_3D0 = "": var_3EC = "": var_408 = "": var_424 = "": var_440 = "": var_45C = "": var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2E8 = "": var_2F0 = "": var_2F4 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_338 = "": var_33C = "": var_344 = "": var_348 = "": var_35C = "": var_370 = "": var_374 = "": var_38C = ""
  loc_CE88CA: FFreeVar var_188 = "": var_244 = "": var_254 = "": var_264 = "": var_284 = "": var_46C = "": var_47C = "": var_48C = "": var_49C = "": var_4AC = "": var_4BC = "": var_4CC = "": var_4DC = "": var_4EC = "": var_4FC = "": var_3B4 = "": var_50C = "": var_51C = "": var_52C = "": var_53C = "": var_550 = ""
  loc_CE88F9: Branch loc_CE8B71
  loc_CE88FC: FLdRfVar var_224
  loc_CE88FF: FLdPr Me
  loc_CE8902: VCallAd Control_ID_PeriLiquTxt
  loc_CE8905: FStAdFunc var_178
  loc_CE8908: FLdPr var_178
  loc_CE890B:  = Me.Text
  loc_CE8910: FLdRfVar var_288
  loc_CE8913: FLdPr Me
  loc_CE8916: VCallAd Control_ID_BimeLiquTxt
  loc_CE8919: FStAdFunc var_210
  loc_CE891C: FLdPr var_210
  loc_CE891F:  = Me.Text
  loc_CE8924: FLdRfVar var_28C
  loc_CE8927: FLdPr Me
  loc_CE892A: VCallAd Control_ID_CodiTiliTxt
  loc_CE892D: FStAdFunc var_2A4
  loc_CE8930: FLdPr var_2A4
  loc_CE8933:  = Me.Text
  loc_CE8938: FLdRfVar var_188
  loc_CE893B: FLdRfVar var_2D4
  loc_CE893E: LitVarStr var_19C, "CodiCome"
  loc_CE8943: PopAdLdVar
  loc_CE8944: FLdRfVar var_2D0
  loc_CE8947: FLdRfVar var_2A8
  loc_CE894A: FLdPr Me
  loc_CE894D: MemLdRfVar from_stack_1.global_56
  loc_CE8950: NewIfNullPr clscomercio
  loc_CE8953: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8958: FLdPr var_2A8
  loc_CE895B:  = Me.Fields
  loc_CE8960: FLdPr var_2D0
  loc_CE8963: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8968: FLdPr var_2D4
  loc_CE896B:  = Me.Value
  loc_CE8970: FLdRfVar var_220
  loc_CE8973: FLdRfVar var_2E0
  loc_CE8976: LitVarStr var_1AC, "CucuPers"
  loc_CE897B: PopAdLdVar
  loc_CE897C: FLdRfVar var_2DC
  loc_CE897F: FLdRfVar var_2D8
  loc_CE8982: FLdPr Me
  loc_CE8985: MemLdRfVar from_stack_1.global_56
  loc_CE8988: NewIfNullPr clscomercio
  loc_CE898B: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8990: FLdPr var_2D8
  loc_CE8993:  = Me.Fields
  loc_CE8998: FLdPr var_2DC
  loc_CE899B: from_stack_2 = Me.Item(from_stack_1)
  loc_CE89A0: FLdPr var_2E0
  loc_CE89A3:  = Me.Value
  loc_CE89A8: FLdRfVar var_244
  loc_CE89AB: FLdRfVar var_2EC
  loc_CE89AE: LitVarStr var_1BC, "CodiRuta"
  loc_CE89B3: PopAdLdVar
  loc_CE89B4: FLdRfVar var_2E8
  loc_CE89B7: FLdRfVar var_2E4
  loc_CE89BA: FLdPr Me
  loc_CE89BD: MemLdRfVar from_stack_1.global_56
  loc_CE89C0: NewIfNullPr clscomercio
  loc_CE89C3: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE89C8: FLdPr var_2E4
  loc_CE89CB:  = Me.Fields
  loc_CE89D0: FLdPr var_2E8
  loc_CE89D3: from_stack_2 = Me.Item(from_stack_1)
  loc_CE89D8: FLdPr var_2EC
  loc_CE89DB:  = Me.Value
  loc_CE89E0: FLdRfVar var_254
  loc_CE89E3: FLdRfVar var_2F8
  loc_CE89E6: LitVarStr var_1CC, "Plano"
  loc_CE89EB: PopAdLdVar
  loc_CE89EC: FLdRfVar var_2F4
  loc_CE89EF: FLdRfVar var_2F0
  loc_CE89F2: FLdPr Me
  loc_CE89F5: MemLdRfVar from_stack_1.global_56
  loc_CE89F8: NewIfNullPr clscomercio
  loc_CE89FB: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8A00: FLdPr var_2F0
  loc_CE8A03:  = Me.Fields
  loc_CE8A08: FLdPr var_2F4
  loc_CE8A0B: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8A10: FLdPr var_2F8
  loc_CE8A13:  = Me.Value
  loc_CE8A18: FLdRfVar var_264
  loc_CE8A1B: FLdRfVar var_304
  loc_CE8A1E: LitVarStr var_1DC, "Sector"
  loc_CE8A23: PopAdLdVar
  loc_CE8A24: FLdRfVar var_300
  loc_CE8A27: FLdRfVar var_2FC
  loc_CE8A2A: FLdPr Me
  loc_CE8A2D: MemLdRfVar from_stack_1.global_56
  loc_CE8A30: NewIfNullPr clscomercio
  loc_CE8A33: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8A38: FLdPr var_2FC
  loc_CE8A3B:  = Me.Fields
  loc_CE8A40: FLdPr var_300
  loc_CE8A43: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8A48: FLdPr var_304
  loc_CE8A4B:  = Me.Value
  loc_CE8A50: FLdRfVar var_284
  loc_CE8A53: FLdRfVar var_310
  loc_CE8A56: LitVarStr var_1EC, "Orden"
  loc_CE8A5B: PopAdLdVar
  loc_CE8A5C: FLdRfVar var_30C
  loc_CE8A5F: FLdRfVar var_308
  loc_CE8A62: FLdPr Me
  loc_CE8A65: MemLdRfVar from_stack_1.global_56
  loc_CE8A68: NewIfNullPr clscomercio
  loc_CE8A6B: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8A70: FLdPr var_308
  loc_CE8A73:  = Me.Fields
  loc_CE8A78: FLdPr var_30C
  loc_CE8A7B: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8A80: FLdPr var_310
  loc_CE8A83:  = Me.Value
  loc_CE8A88: FLdRfVar var_284
  loc_CE8A8B: CI2Var
  loc_CE8A8C: FLdRfVar var_264
  loc_CE8A8F: CStrVarTmp
  loc_CE8A90: FStStrNoPop var_2B0
  loc_CE8A93: FLdRfVar var_254
  loc_CE8A96: CStrVarTmp
  loc_CE8A97: FStStrNoPop var_294
  loc_CE8A9A: FLdR8 var_170
  loc_CE8A9D: FLdR8 var_E8
  loc_CE8AA0: FLdR8 var_118
  loc_CE8AA3: FLdI2 var_BE
  loc_CE8AA6: LitI2_Byte 0
  loc_CE8AA8: FLdR8 var_F8
  loc_CE8AAB: FLdR8 var_108
  loc_CE8AAE: LitStr vbNullString
  loc_CE8AB1: LitStr vbNullString
  loc_CE8AB4: LitI2_Byte 0
  loc_CE8AB6: LitStr vbNullString
  loc_CE8AB9: LitStr vbNullString
  loc_CE8ABC: LitStr vbNullString
  loc_CE8ABF: LitStr vbNullString
  loc_CE8AC2: LitI2_Byte 0
  loc_CE8AC4: LitStr vbNullString
  loc_CE8AC7: LitStr vbNullString
  loc_CE8ACA: LitI4 0
  loc_CE8ACF: FLdRfVar var_244
  loc_CE8AD2: CI2Var
  loc_CE8AD3: FLdRfVar var_220
  loc_CE8AD6: CStrVarTmp
  loc_CE8AD7: FStStrNoPop var_290
  loc_CE8ADA: FLdR8 var_F0
  loc_CE8ADD: LitI2_Byte 0
  loc_CE8ADF: CR8I2
  loc_CE8AE0: PopFPR8
  loc_CE8AE1: LitI2_Byte 0
  loc_CE8AE3: CR8I2
  loc_CE8AE4: PopFPR8
  loc_CE8AE5: LitI2_Byte 0
  loc_CE8AE7: CR8I2
  loc_CE8AE8: PopFPR8
  loc_CE8AE9: LitI2_Byte 0
  loc_CE8AEB: CR8I2
  loc_CE8AEC: PopFPR8
  loc_CE8AED: FLdR8 var_F0
  loc_CE8AF0: LitI2_Byte 0
  loc_CE8AF2: CR8I2
  loc_CE8AF3: PopFPR8
  loc_CE8AF4: ILdRf var_14C
  loc_CE8AF7: LitStr "Aforo"
  loc_CE8AFA: LitI2_Byte 1
  loc_CE8AFC: CUI1I2
  loc_CE8AFE: ILdRf var_CC
  loc_CE8B01: FLdRfVar var_188
  loc_CE8B04: CI4Var
  loc_CE8B06: FLdI2 var_8A
  loc_CE8B09: ILdRf var_28C
  loc_CE8B0C: CUI1Str
  loc_CE8B0E: ILdRf var_288
  loc_CE8B11: CUI1Str
  loc_CE8B13: ILdRf var_224
  loc_CE8B16: CI2Str
  loc_CE8B18: FLdPr Me
  loc_CE8B1B: MemLdRfVar from_stack_1.global_68
  loc_CE8B1E: NewIfNullPr clsliqupubl
  loc_CE8B21: Call clsliqupubl.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CE8B26: FFreeStr var_224 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = ""
  loc_CE8B35: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2E8 = "": var_2F0 = "": var_2F4 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_2D4 = "": var_2E0 = "": var_2EC = "": var_2F8 = "": var_304 = ""
  loc_CE8B62: FFreeVar var_188 = "": var_220 = "": var_244 = "": var_254 = "": var_264 = ""
  loc_CE8B71: FLdRfVar var_224
  loc_CE8B74: FLdPr Me
  loc_CE8B77: VCallAd Control_ID_PeriLiquTxt
  loc_CE8B7A: FStAdFunc var_178
  loc_CE8B7D: FLdPr var_178
  loc_CE8B80:  = Me.Text
  loc_CE8B85: FLdRfVar var_288
  loc_CE8B88: FLdPr Me
  loc_CE8B8B: VCallAd Control_ID_BimeLiquTxt
  loc_CE8B8E: FStAdFunc var_210
  loc_CE8B91: FLdPr var_210
  loc_CE8B94:  = Me.Text
  loc_CE8B99: FLdRfVar var_28C
  loc_CE8B9C: FLdPr Me
  loc_CE8B9F: VCallAd Control_ID_CodiTiliTxt
  loc_CE8BA2: FStAdFunc var_2A4
  loc_CE8BA5: FLdPr var_2A4
  loc_CE8BA8:  = Me.Text
  loc_CE8BAD: FLdRfVar var_188
  loc_CE8BB0: FLdRfVar var_2D4
  loc_CE8BB3: LitVarStr var_19C, "CodiCome"
  loc_CE8BB8: PopAdLdVar
  loc_CE8BB9: FLdRfVar var_2D0
  loc_CE8BBC: FLdRfVar var_2A8
  loc_CE8BBF: FLdPr Me
  loc_CE8BC2: MemLdRfVar from_stack_1.global_56
  loc_CE8BC5: NewIfNullPr clscomercio
  loc_CE8BC8: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8BCD: FLdPr var_2A8
  loc_CE8BD0:  = Me.Fields
  loc_CE8BD5: FLdPr var_2D0
  loc_CE8BD8: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8BDD: FLdPr var_2D4
  loc_CE8BE0:  = Me.Value
  loc_CE8BE5: FLdRfVar var_188
  loc_CE8BE8: CStrVarTmp
  loc_CE8BE9: FStStrNoPop var_290
  loc_CE8BEC: LitI2_Byte 2
  loc_CE8BEE: CUI1I2
  loc_CE8BF0: FLdI2 var_8A
  loc_CE8BF3: ILdRf var_28C
  loc_CE8BF6: CUI1Str
  loc_CE8BF8: ILdRf var_288
  loc_CE8BFB: CUI1Str
  loc_CE8BFD: ILdRf var_224
  loc_CE8C00: CI2Str
  loc_CE8C02: FLdPr Me
  loc_CE8C05: MemLdRfVar from_stack_1.global_80
  loc_CE8C08: NewIfNullPr clsrecabole
  loc_CE8C0B: Call clsrecabole.ModificaRecabole(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CE8C10: FFreeStr var_224 = "": var_288 = "": var_28C = ""
  loc_CE8C1B: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = ""
  loc_CE8C2A: FFree1Var var_188 = ""
  loc_CE8C2D: LitI2_Byte 0
  loc_CE8C2F: CR8I2
  loc_CE8C30: FStFPR8 var_F0
  loc_CE8C33: FLdRfVar var_172
  loc_CE8C36: FLdPr Me
  loc_CE8C39: VCallAd Control_ID_CompletaOpt
  loc_CE8C3C: FStAdFunc var_178
  loc_CE8C3F: FLdPr var_178
  loc_CE8C42:  = Me.Value
  loc_CE8C47: FLdI2 var_172
  loc_CE8C4A: LitI2_Byte &HFF
  loc_CE8C4C: EqI2
  loc_CE8C4D: FLdRfVar var_224
  loc_CE8C50: FLdPr Me
  loc_CE8C53: VCallAd Control_ID_BimeLiquTxt
  loc_CE8C56: FStAdFunc var_210
  loc_CE8C59: FLdPr var_210
  loc_CE8C5C:  = Me.Text
  loc_CE8C61: ILdRf var_224
  loc_CE8C64: CR8Str
  loc_CE8C66: LitI2_Byte 1
  loc_CE8C68: CR8I2
  loc_CE8C69: EqR4
  loc_CE8C6A: AndI4
  loc_CE8C6B: FFree1Str var_224
  loc_CE8C6E: FFreeAd var_178 = ""
  loc_CE8C75: BranchF loc_CE9546
  loc_CE8C78: FLdRfVar var_298
  loc_CE8C7B: FLdPr Me
  loc_CE8C7E: MemLdRfVar from_stack_1.global_84
  loc_CE8C81: NewIfNullPr clsboleto
  loc_CE8C84: from_stack_1 = clsboleto.RecordCount
  loc_CE8C89: ILdRf var_298
  loc_CE8C8C: LitI4 0
  loc_CE8C91: GtI4
  loc_CE8C92: BranchF loc_CE92CA
  loc_CE8C95: FLdRfVar var_224
  loc_CE8C98: FLdPr Me
  loc_CE8C9B: VCallAd Control_ID_PeriLiquTxt
  loc_CE8C9E: FStAdFunc var_178
  loc_CE8CA1: FLdPr var_178
  loc_CE8CA4:  = Me.Text
  loc_CE8CA9: FLdRfVar var_288
  loc_CE8CAC: FLdPr Me
  loc_CE8CAF: VCallAd Control_ID_CodiTiliTxt
  loc_CE8CB2: FStAdFunc var_210
  loc_CE8CB5: FLdPr var_210
  loc_CE8CB8:  = Me.Text
  loc_CE8CBD: FLdRfVar var_47C
  loc_CE8CC0: FLdRfVar var_2D0
  loc_CE8CC3: LitVarStr var_19C, "CodiCome"
  loc_CE8CC8: PopAdLdVar
  loc_CE8CC9: FLdRfVar var_2A8
  loc_CE8CCC: FLdRfVar var_2A4
  loc_CE8CCF: FLdPr Me
  loc_CE8CD2: MemLdRfVar from_stack_1.global_56
  loc_CE8CD5: NewIfNullPr clscomercio
  loc_CE8CD8: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8CDD: FLdPr var_2A4
  loc_CE8CE0:  = Me.Fields
  loc_CE8CE5: FLdPr var_2A8
  loc_CE8CE8: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8CED: FLdPr var_2D0
  loc_CE8CF0:  = Me.Value
  loc_CE8CF5: FLdPr Me
  loc_CE8CF8: VCallAd Control_ID_FeanVencMsk
  loc_CE8CFB: FStAdFunc var_2D4
  loc_CE8CFE: FLdPr var_2D4
  loc_CE8D01: LateIdLdVar var_188 DispID_15 0
  loc_CE8D08: PopAd
  loc_CE8D0A: FLdRfVar var_48C
  loc_CE8D0D: FLdRfVar var_2E0
  loc_CE8D10: LitVarStr var_1AC, "CucuPers"
  loc_CE8D15: PopAdLdVar
  loc_CE8D16: FLdRfVar var_2DC
  loc_CE8D19: FLdRfVar var_2D8
  loc_CE8D1C: FLdPr Me
  loc_CE8D1F: MemLdRfVar from_stack_1.global_56
  loc_CE8D22: NewIfNullPr clscomercio
  loc_CE8D25: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8D2A: FLdPr var_2D8
  loc_CE8D2D:  = Me.Fields
  loc_CE8D32: FLdPr var_2DC
  loc_CE8D35: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8D3A: FLdPr var_2E0
  loc_CE8D3D:  = Me.Value
  loc_CE8D42: FLdRfVar var_49C
  loc_CE8D45: FLdRfVar var_2EC
  loc_CE8D48: LitVarStr var_1BC, "CodiRuta"
  loc_CE8D4D: PopAdLdVar
  loc_CE8D4E: FLdRfVar var_2E8
  loc_CE8D51: FLdRfVar var_2E4
  loc_CE8D54: FLdPr Me
  loc_CE8D57: MemLdRfVar from_stack_1.global_56
  loc_CE8D5A: NewIfNullPr clscomercio
  loc_CE8D5D: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE8D62: FLdPr var_2E4
  loc_CE8D65:  = Me.Fields
  loc_CE8D6A: FLdPr var_2E8
  loc_CE8D6D: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8D72: FLdPr var_2EC
  loc_CE8D75:  = Me.Value
  loc_CE8D7A: FLdRfVar var_4AC
  loc_CE8D7D: FLdRfVar var_2F8
  loc_CE8D80: LitVarStr var_1CC, "CodiCalle"
  loc_CE8D85: PopAdLdVar
  loc_CE8D86: FLdRfVar var_2F4
  loc_CE8D89: FLdRfVar var_2F0
  loc_CE8D8C: FLdPr Me
  loc_CE8D8F: MemLdRfVar from_stack_1.global_84
  loc_CE8D92: NewIfNullPr clsboleto
  loc_CE8D95: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8D9A: FLdPr var_2F0
  loc_CE8D9D:  = Me.Fields
  loc_CE8DA2: FLdPr var_2F4
  loc_CE8DA5: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8DAA: FLdPr var_2F8
  loc_CE8DAD:  = Me.Value
  loc_CE8DB2: FLdRfVar var_4BC
  loc_CE8DB5: FLdRfVar var_304
  loc_CE8DB8: LitVarStr var_1DC, "NumePost"
  loc_CE8DBD: PopAdLdVar
  loc_CE8DBE: FLdRfVar var_300
  loc_CE8DC1: FLdRfVar var_2FC
  loc_CE8DC4: FLdPr Me
  loc_CE8DC7: MemLdRfVar from_stack_1.global_84
  loc_CE8DCA: NewIfNullPr clsboleto
  loc_CE8DCD: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8DD2: FLdPr var_2FC
  loc_CE8DD5:  = Me.Fields
  loc_CE8DDA: FLdPr var_300
  loc_CE8DDD: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8DE2: FLdPr var_304
  loc_CE8DE5:  = Me.Value
  loc_CE8DEA: FLdRfVar var_4CC
  loc_CE8DED: FLdRfVar var_310
  loc_CE8DF0: LitVarStr var_1EC, "DecaPost"
  loc_CE8DF5: PopAdLdVar
  loc_CE8DF6: FLdRfVar var_30C
  loc_CE8DF9: FLdRfVar var_308
  loc_CE8DFC: FLdPr Me
  loc_CE8DFF: MemLdRfVar from_stack_1.global_84
  loc_CE8E02: NewIfNullPr clsboleto
  loc_CE8E05: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8E0A: FLdPr var_308
  loc_CE8E0D:  = Me.Fields
  loc_CE8E12: FLdPr var_30C
  loc_CE8E15: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8E1A: FLdPr var_310
  loc_CE8E1D:  = Me.Value
  loc_CE8E22: FLdRfVar var_4DC
  loc_CE8E25: FLdRfVar var_31C
  loc_CE8E28: LitVarStr var_1FC, "CobpPost"
  loc_CE8E2D: PopAdLdVar
  loc_CE8E2E: FLdRfVar var_318
  loc_CE8E31: FLdRfVar var_314
  loc_CE8E34: FLdPr Me
  loc_CE8E37: MemLdRfVar from_stack_1.global_84
  loc_CE8E3A: NewIfNullPr clsboleto
  loc_CE8E3D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8E42: FLdPr var_314
  loc_CE8E45:  = Me.Fields
  loc_CE8E4A: FLdPr var_318
  loc_CE8E4D: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8E52: FLdPr var_31C
  loc_CE8E55:  = Me.Value
  loc_CE8E5A: FLdRfVar var_4EC
  loc_CE8E5D: FLdRfVar var_328
  loc_CE8E60: LitVarStr var_20C, "DebaPost"
  loc_CE8E65: PopAdLdVar
  loc_CE8E66: FLdRfVar var_324
  loc_CE8E69: FLdRfVar var_320
  loc_CE8E6C: FLdPr Me
  loc_CE8E6F: MemLdRfVar from_stack_1.global_84
  loc_CE8E72: NewIfNullPr clsboleto
  loc_CE8E75: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8E7A: FLdPr var_320
  loc_CE8E7D:  = Me.Fields
  loc_CE8E82: FLdPr var_324
  loc_CE8E85: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8E8A: FLdPr var_328
  loc_CE8E8D:  = Me.Value
  loc_CE8E92: FLdRfVar var_4FC
  loc_CE8E95: FLdRfVar var_334
  loc_CE8E98: LitVarStr var_234, "ManzPost"
  loc_CE8E9D: PopAdLdVar
  loc_CE8E9E: FLdRfVar var_330
  loc_CE8EA1: FLdRfVar var_32C
  loc_CE8EA4: FLdPr Me
  loc_CE8EA7: MemLdRfVar from_stack_1.global_84
  loc_CE8EAA: NewIfNullPr clsboleto
  loc_CE8EAD: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8EB2: FLdPr var_32C
  loc_CE8EB5:  = Me.Fields
  loc_CE8EBA: FLdPr var_330
  loc_CE8EBD: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8EC2: FLdPr var_334
  loc_CE8EC5:  = Me.Value
  loc_CE8ECA: FLdRfVar var_50C
  loc_CE8ECD: FLdRfVar var_340
  loc_CE8ED0: LitVarStr var_274, "CasaPost"
  loc_CE8ED5: PopAdLdVar
  loc_CE8ED6: FLdRfVar var_33C
  loc_CE8ED9: FLdRfVar var_338
  loc_CE8EDC: FLdPr Me
  loc_CE8EDF: MemLdRfVar from_stack_1.global_84
  loc_CE8EE2: NewIfNullPr clsboleto
  loc_CE8EE5: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8EEA: FLdPr var_338
  loc_CE8EED:  = Me.Fields
  loc_CE8EF2: FLdPr var_33C
  loc_CE8EF5: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8EFA: FLdPr var_340
  loc_CE8EFD:  = Me.Value
  loc_CE8F02: FLdRfVar var_220
  loc_CE8F05: FLdRfVar var_35C
  loc_CE8F08: LitVarStr var_358, "UbicPost"
  loc_CE8F0D: PopAdLdVar
  loc_CE8F0E: FLdRfVar var_348
  loc_CE8F11: FLdRfVar var_344
  loc_CE8F14: FLdPr Me
  loc_CE8F17: MemLdRfVar from_stack_1.global_84
  loc_CE8F1A: NewIfNullPr clsboleto
  loc_CE8F1D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8F22: FLdPr var_344
  loc_CE8F25:  = Me.Fields
  loc_CE8F2A: FLdPr var_348
  loc_CE8F2D: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8F32: FLdPr var_35C
  loc_CE8F35:  = Me.Value
  loc_CE8F3A: FLdRfVar var_388
  loc_CE8F3D: LitVarStr var_384, "UbicPost"
  loc_CE8F42: PopAdLdVar
  loc_CE8F43: FLdRfVar var_374
  loc_CE8F46: FLdRfVar var_370
  loc_CE8F49: FLdPr Me
  loc_CE8F4C: MemLdRfVar from_stack_1.global_84
  loc_CE8F4F: NewIfNullPr clsboleto
  loc_CE8F52: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8F57: FLdPr var_370
  loc_CE8F5A:  = Me.Fields
  loc_CE8F5F: FLdPr var_374
  loc_CE8F62: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8F67: FLdRfVar var_254
  loc_CE8F6A: FLdRfVar var_3A4
  loc_CE8F6D: LitVarStr var_3A0, "Ubicacion"
  loc_CE8F72: PopAdLdVar
  loc_CE8F73: FLdRfVar var_390
  loc_CE8F76: FLdRfVar var_38C
  loc_CE8F79: FLdPr Me
  loc_CE8F7C: MemLdRfVar from_stack_1.global_84
  loc_CE8F7F: NewIfNullPr clsboleto
  loc_CE8F82: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE8F87: FLdPr var_38C
  loc_CE8F8A:  = Me.Fields
  loc_CE8F8F: FLdPr var_390
  loc_CE8F92: from_stack_2 = Me.Item(from_stack_1)
  loc_CE8F97: FLdPr var_3A4
  loc_CE8F9A:  = Me.Value
  loc_CE8F9F: LitI4 0
  loc_CE8FA4: LitI4 -1
  loc_CE8FA9: LitI4 1
  loc_CE8FAE: LitStr " "
  loc_CE8FB1: LitStr "'"
  loc_CE8FB4: FLdRfVar var_254
  loc_CE8FB7: CStrVarTmp
  loc_CE8FB8: FStStrNoPop var_28C
  loc_CE8FBB: ImpAdCallI2 Replace(, , , , , )
  loc_CE8FC0: CVarStr var_3B4
  loc_CE8FC3: FLdZeroAd var_388
  loc_CE8FC6: CVarAd
  loc_CE8FCA: FLdRfVar var_220
  loc_CE8FCD: LitVarStr var_36C, vbNullString
  loc_CE8FD2: HardType
  loc_CE8FD3: NeVar var_244
  loc_CE8FD7: FStVar var_264
  loc_CE8FDB: FLdRfVar var_264
  loc_CE8FDE: FLdRfVar var_46C
  loc_CE8FE1: ImpAdCallFPR4  = IIf(, , )
  loc_CE8FE6: FLdRfVar var_51C
  loc_CE8FE9: FLdRfVar var_3D0
  loc_CE8FEC: LitVarStr var_3CC, "ColpPost"
  loc_CE8FF1: PopAdLdVar
  loc_CE8FF2: FLdRfVar var_3BC
  loc_CE8FF5: FLdRfVar var_3B8
  loc_CE8FF8: FLdPr Me
  loc_CE8FFB: MemLdRfVar from_stack_1.global_84
  loc_CE8FFE: NewIfNullPr clsboleto
  loc_CE9001: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE9006: FLdPr var_3B8
  loc_CE9009:  = Me.Fields
  loc_CE900E: FLdPr var_3BC
  loc_CE9011: from_stack_2 = Me.Item(from_stack_1)
  loc_CE9016: FLdPr var_3D0
  loc_CE9019:  = Me.Value
  loc_CE901E: FLdRfVar var_52C
  loc_CE9021: FLdRfVar var_3EC
  loc_CE9024: LitVarStr var_3E8, "DeloPost"
  loc_CE9029: PopAdLdVar
  loc_CE902A: FLdRfVar var_3D8
  loc_CE902D: FLdRfVar var_3D4
  loc_CE9030: FLdPr Me
  loc_CE9033: MemLdRfVar from_stack_1.global_84
  loc_CE9036: NewIfNullPr clsboleto
  loc_CE9039: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE903E: FLdPr var_3D4
  loc_CE9041:  = Me.Fields
  loc_CE9046: FLdPr var_3D8
  loc_CE9049: from_stack_2 = Me.Item(from_stack_1)
  loc_CE904E: FLdPr var_3EC
  loc_CE9051:  = Me.Value
  loc_CE9056: FLdRfVar var_53C
  loc_CE9059: FLdRfVar var_408
  loc_CE905C: LitVarStr var_404, "CopoPost"
  loc_CE9061: PopAdLdVar
  loc_CE9062: FLdRfVar var_3F4
  loc_CE9065: FLdRfVar var_3F0
  loc_CE9068: FLdPr Me
  loc_CE906B: MemLdRfVar from_stack_1.global_84
  loc_CE906E: NewIfNullPr clsboleto
  loc_CE9071: from_stack_1v = clsboleto.RsFrmGet()
  loc_CE9076: FLdPr var_3F0
  loc_CE9079:  = Me.Fields
  loc_CE907E: FLdPr var_3F4
  loc_CE9081: from_stack_2 = Me.Item(from_stack_1)
  loc_CE9086: FLdPr var_408
  loc_CE9089:  = Me.Value
  loc_CE908E: FLdRfVar var_550
  loc_CE9091: FLdRfVar var_424
  loc_CE9094: LitVarStr var_420, "Plano"
  loc_CE9099: PopAdLdVar
  loc_CE909A: FLdRfVar var_410
  loc_CE909D: FLdRfVar var_40C
  loc_CE90A0: FLdPr Me
  loc_CE90A3: MemLdRfVar from_stack_1.global_56
  loc_CE90A6: NewIfNullPr clscomercio
  loc_CE90A9: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE90AE: FLdPr var_40C
  loc_CE90B1:  = Me.Fields
  loc_CE90B6: FLdPr var_410
  loc_CE90B9: from_stack_2 = Me.Item(from_stack_1)
  loc_CE90BE: FLdPr var_424
  loc_CE90C1:  = Me.Value
  loc_CE90C6: FLdRfVar var_564
  loc_CE90C9: FLdRfVar var_440
  loc_CE90CC: LitVarStr var_43C, "Sector"
  loc_CE90D1: PopAdLdVar
  loc_CE90D2: FLdRfVar var_42C
  loc_CE90D5: FLdRfVar var_428
  loc_CE90D8: FLdPr Me
  loc_CE90DB: MemLdRfVar from_stack_1.global_56
  loc_CE90DE: NewIfNullPr clscomercio
  loc_CE90E1: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE90E6: FLdPr var_428
  loc_CE90E9:  = Me.Fields
  loc_CE90EE: FLdPr var_42C
  loc_CE90F1: from_stack_2 = Me.Item(from_stack_1)
  loc_CE90F6: FLdPr var_440
  loc_CE90F9:  = Me.Value
  loc_CE90FE: FLdRfVar var_574
  loc_CE9101: FLdRfVar var_45C
  loc_CE9104: LitVarStr var_458, "Orden"
  loc_CE9109: PopAdLdVar
  loc_CE910A: FLdRfVar var_448
  loc_CE910D: FLdRfVar var_444
  loc_CE9110: FLdPr Me
  loc_CE9113: MemLdRfVar from_stack_1.global_56
  loc_CE9116: NewIfNullPr clscomercio
  loc_CE9119: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE911E: FLdPr var_444
  loc_CE9121:  = Me.Fields
  loc_CE9126: FLdPr var_448
  loc_CE9129: from_stack_2 = Me.Item(from_stack_1)
  loc_CE912E: FLdPr var_45C
  loc_CE9131:  = Me.Value
  loc_CE9136: FLdRfVar var_574
  loc_CE9139: CI2Var
  loc_CE913A: FLdRfVar var_564
  loc_CE913D: CStrVarTmp
  loc_CE913E: FStStrNoPop var_554
  loc_CE9141: FLdRfVar var_550
  loc_CE9144: CStrVarTmp
  loc_CE9145: FStStrNoPop var_540
  loc_CE9148: FLdR8 var_170
  loc_CE914B: FLdR8 var_E8
  loc_CE914E: FLdR8 var_118
  loc_CE9151: FLdI2 var_BE
  loc_CE9154: LitI2_Byte 0
  loc_CE9156: FLdR8 var_F8
  loc_CE9159: FLdR8 var_108
  loc_CE915C: FLdRfVar var_53C
  loc_CE915F: CStrVarTmp
  loc_CE9160: FStStrNoPop var_2CC
  loc_CE9163: FLdRfVar var_52C
  loc_CE9166: CStrVarTmp
  loc_CE9167: FStStrNoPop var_2C8
  loc_CE916A: FLdRfVar var_51C
  loc_CE916D: CI2Var
  loc_CE916E: FLdRfVar var_46C
  loc_CE9171: CStrVarVal var_2C4
  loc_CE9175: FLdRfVar var_50C
  loc_CE9178: CStrVarTmp
  loc_CE9179: FStStrNoPop var_2C0
  loc_CE917C: FLdRfVar var_4FC
  loc_CE917F: CStrVarTmp
  loc_CE9180: FStStrNoPop var_2BC
  loc_CE9183: FLdRfVar var_4EC
  loc_CE9186: CStrVarTmp
  loc_CE9187: FStStrNoPop var_2B8
  loc_CE918A: FLdRfVar var_4DC
  loc_CE918D: CI2Var
  loc_CE918E: FLdRfVar var_4CC
  loc_CE9191: CStrVarTmp
  loc_CE9192: FStStrNoPop var_2B4
  loc_CE9195: FLdRfVar var_4BC
  loc_CE9198: CStrVarTmp
  loc_CE9199: FStStrNoPop var_2B0
  loc_CE919C: FLdRfVar var_4AC
  loc_CE919F: CI4Var
  loc_CE91A1: FLdRfVar var_49C
  loc_CE91A4: CI2Var
  loc_CE91A5: FLdRfVar var_48C
  loc_CE91A8: CStrVarTmp
  loc_CE91A9: FStStrNoPop var_294
  loc_CE91AC: LitI2_Byte 0
  loc_CE91AE: CR8I2
  loc_CE91AF: PopFPR8
  loc_CE91B0: LitI2_Byte 0
  loc_CE91B2: CR8I2
  loc_CE91B3: PopFPR8
  loc_CE91B4: LitI2_Byte 0
  loc_CE91B6: CR8I2
  loc_CE91B7: PopFPR8
  loc_CE91B8: LitI2_Byte 0
  loc_CE91BA: CR8I2
  loc_CE91BB: PopFPR8
  loc_CE91BC: LitI2_Byte 0
  loc_CE91BE: CR8I2
  loc_CE91BF: PopFPR8
  loc_CE91C0: LitI2_Byte 0
  loc_CE91C2: CR8I2
  loc_CE91C3: PopFPR8
  loc_CE91C4: FLdR8 var_A4
  loc_CE91C7: FLdRfVar var_188
  loc_CE91CA: CStrVarTmp
  loc_CE91CB: FStStrNoPop var_290
  loc_CE91CE: LitStr "Aforo"
  loc_CE91D1: LitI2_Byte 2
  loc_CE91D3: CUI1I2
  loc_CE91D5: ILdRf var_D0
  loc_CE91D8: FLdRfVar var_47C
  loc_CE91DB: CI4Var
  loc_CE91DD: FLdI2 var_8A
  loc_CE91E0: ILdRf var_288
  loc_CE91E3: CUI1Str
  loc_CE91E5: LitI2_Byte 1
  loc_CE91E7: CUI1I2
  loc_CE91E9: ILdRf var_224
  loc_CE91EC: CI2Str
  loc_CE91EE: FLdPr Me
  loc_CE91F1: MemLdRfVar from_stack_1.global_68
  loc_CE91F4: NewIfNullPr clsliqupubl
  loc_CE91F7: Call clsliqupubl.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CE91FC: FFreeStr var_28C = "": var_224 = "": var_288 = "": var_290 = "": var_294 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_540 = ""
  loc_CE921D: FFreeAd var_3A4 = "": var_3B8 = "": var_3BC = "": var_3D4 = "": var_3D8 = "": var_3F0 = "": var_3F4 = "": var_40C = "": var_410 = "": var_428 = "": var_42C = "": var_444 = "": var_448 = "": var_2D0 = "": var_2E0 = "": var_2EC = "": var_2F8 = "": var_304 = "": var_310 = "": var_31C = "": var_328 = "": var_334 = "": var_340 = "": var_3D0 = "": var_3EC = "": var_408 = "": var_424 = "": var_440 = "": var_45C = "": var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2E8 = "": var_2F0 = "": var_2F4 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_338 = "": var_33C = "": var_344 = "": var_348 = "": var_35C = "": var_370 = "": var_374 = "": var_38C = ""
  loc_CE9296: FFreeVar var_188 = "": var_220 = "": var_254 = "": var_264 = "": var_284 = "": var_3B4 = "": var_47C = "": var_48C = "": var_49C = "": var_4AC = "": var_4BC = "": var_4CC = "": var_4DC = "": var_4EC = "": var_4FC = "": var_50C = "": var_46C = "": var_51C = "": var_52C = "": var_53C = "": var_550 = "": var_564 = ""
  loc_CE92C7: Branch loc_CE9546
  loc_CE92CA: FLdRfVar var_224
  loc_CE92CD: FLdPr Me
  loc_CE92D0: VCallAd Control_ID_PeriLiquTxt
  loc_CE92D3: FStAdFunc var_178
  loc_CE92D6: FLdPr var_178
  loc_CE92D9:  = Me.Text
  loc_CE92DE: FLdRfVar var_288
  loc_CE92E1: FLdPr Me
  loc_CE92E4: VCallAd Control_ID_CodiTiliTxt
  loc_CE92E7: FStAdFunc var_210
  loc_CE92EA: FLdPr var_210
  loc_CE92ED:  = Me.Text
  loc_CE92F2: FLdRfVar var_220
  loc_CE92F5: FLdRfVar var_2D0
  loc_CE92F8: LitVarStr var_19C, "CodiCome"
  loc_CE92FD: PopAdLdVar
  loc_CE92FE: FLdRfVar var_2A8
  loc_CE9301: FLdRfVar var_2A4
  loc_CE9304: FLdPr Me
  loc_CE9307: MemLdRfVar from_stack_1.global_56
  loc_CE930A: NewIfNullPr clscomercio
  loc_CE930D: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE9312: FLdPr var_2A4
  loc_CE9315:  = Me.Fields
  loc_CE931A: FLdPr var_2A8
  loc_CE931D: from_stack_2 = Me.Item(from_stack_1)
  loc_CE9322: FLdPr var_2D0
  loc_CE9325:  = Me.Value
  loc_CE932A: FLdPr Me
  loc_CE932D: VCallAd Control_ID_FeanVencMsk
  loc_CE9330: FStAdFunc var_2D4
  loc_CE9333: FLdPr var_2D4
  loc_CE9336: LateIdLdVar var_188 DispID_15 0
  loc_CE933D: PopAd
  loc_CE933F: FLdRfVar var_244
  loc_CE9342: FLdRfVar var_2E0
  loc_CE9345: LitVarStr var_1AC, "CucuPers"
  loc_CE934A: PopAdLdVar
  loc_CE934B: FLdRfVar var_2DC
  loc_CE934E: FLdRfVar var_2D8
  loc_CE9351: FLdPr Me
  loc_CE9354: MemLdRfVar from_stack_1.global_56
  loc_CE9357: NewIfNullPr clscomercio
  loc_CE935A: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE935F: FLdPr var_2D8
  loc_CE9362:  = Me.Fields
  loc_CE9367: FLdPr var_2DC
  loc_CE936A: from_stack_2 = Me.Item(from_stack_1)
  loc_CE936F: FLdPr var_2E0
  loc_CE9372:  = Me.Value
  loc_CE9377: FLdRfVar var_254
  loc_CE937A: FLdRfVar var_2EC
  loc_CE937D: LitVarStr var_1BC, "CodiRuta"
  loc_CE9382: PopAdLdVar
  loc_CE9383: FLdRfVar var_2E8
  loc_CE9386: FLdRfVar var_2E4
  loc_CE9389: FLdPr Me
  loc_CE938C: MemLdRfVar from_stack_1.global_56
  loc_CE938F: NewIfNullPr clscomercio
  loc_CE9392: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE9397: FLdPr var_2E4
  loc_CE939A:  = Me.Fields
  loc_CE939F: FLdPr var_2E8
  loc_CE93A2: from_stack_2 = Me.Item(from_stack_1)
  loc_CE93A7: FLdPr var_2EC
  loc_CE93AA:  = Me.Value
  loc_CE93AF: FLdRfVar var_264
  loc_CE93B2: FLdRfVar var_2F8
  loc_CE93B5: LitVarStr var_1CC, "Plano"
  loc_CE93BA: PopAdLdVar
  loc_CE93BB: FLdRfVar var_2F4
  loc_CE93BE: FLdRfVar var_2F0
  loc_CE93C1: FLdPr Me
  loc_CE93C4: MemLdRfVar from_stack_1.global_56
  loc_CE93C7: NewIfNullPr clscomercio
  loc_CE93CA: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE93CF: FLdPr var_2F0
  loc_CE93D2:  = Me.Fields
  loc_CE93D7: FLdPr var_2F4
  loc_CE93DA: from_stack_2 = Me.Item(from_stack_1)
  loc_CE93DF: FLdPr var_2F8
  loc_CE93E2:  = Me.Value
  loc_CE93E7: FLdRfVar var_284
  loc_CE93EA: FLdRfVar var_304
  loc_CE93ED: LitVarStr var_1DC, "Sector"
  loc_CE93F2: PopAdLdVar
  loc_CE93F3: FLdRfVar var_300
  loc_CE93F6: FLdRfVar var_2FC
  loc_CE93F9: FLdPr Me
  loc_CE93FC: MemLdRfVar from_stack_1.global_56
  loc_CE93FF: NewIfNullPr clscomercio
  loc_CE9402: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE9407: FLdPr var_2FC
  loc_CE940A:  = Me.Fields
  loc_CE940F: FLdPr var_300
  loc_CE9412: from_stack_2 = Me.Item(from_stack_1)
  loc_CE9417: FLdPr var_304
  loc_CE941A:  = Me.Value
  loc_CE941F: FLdRfVar var_3B4
  loc_CE9422: FLdRfVar var_310
  loc_CE9425: LitVarStr var_1EC, "Orden"
  loc_CE942A: PopAdLdVar
  loc_CE942B: FLdRfVar var_30C
  loc_CE942E: FLdRfVar var_308
  loc_CE9431: FLdPr Me
  loc_CE9434: MemLdRfVar from_stack_1.global_56
  loc_CE9437: NewIfNullPr clscomercio
  loc_CE943A: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE943F: FLdPr var_308
  loc_CE9442:  = Me.Fields
  loc_CE9447: FLdPr var_30C
  loc_CE944A: from_stack_2 = Me.Item(from_stack_1)
  loc_CE944F: FLdPr var_310
  loc_CE9452:  = Me.Value
  loc_CE9457: FLdRfVar var_3B4
  loc_CE945A: CI2Var
  loc_CE945B: FLdRfVar var_284
  loc_CE945E: CStrVarTmp
  loc_CE945F: FStStrNoPop var_2B0
  loc_CE9462: FLdRfVar var_264
  loc_CE9465: CStrVarTmp
  loc_CE9466: FStStrNoPop var_294
  loc_CE9469: FLdR8 var_170
  loc_CE946C: FLdR8 var_E8
  loc_CE946F: FLdR8 var_118
  loc_CE9472: FLdI2 var_BE
  loc_CE9475: LitI2_Byte 0
  loc_CE9477: FLdR8 var_F8
  loc_CE947A: FLdR8 var_108
  loc_CE947D: LitStr vbNullString
  loc_CE9480: LitStr vbNullString
  loc_CE9483: LitI2_Byte 0
  loc_CE9485: LitStr vbNullString
  loc_CE9488: LitStr vbNullString
  loc_CE948B: LitStr vbNullString
  loc_CE948E: LitStr vbNullString
  loc_CE9491: LitI2_Byte 0
  loc_CE9493: LitStr vbNullString
  loc_CE9496: LitStr vbNullString
  loc_CE9499: LitI4 0
  loc_CE949E: FLdRfVar var_254
  loc_CE94A1: CI2Var
  loc_CE94A2: FLdRfVar var_244
  loc_CE94A5: CStrVarTmp
  loc_CE94A6: FStStrNoPop var_290
  loc_CE94A9: LitI2_Byte 0
  loc_CE94AB: CR8I2
  loc_CE94AC: PopFPR8
  loc_CE94AD: LitI2_Byte 0
  loc_CE94AF: CR8I2
  loc_CE94B0: PopFPR8
  loc_CE94B1: LitI2_Byte 0
  loc_CE94B3: CR8I2
  loc_CE94B4: PopFPR8
  loc_CE94B5: LitI2_Byte 0
  loc_CE94B7: CR8I2
  loc_CE94B8: PopFPR8
  loc_CE94B9: LitI2_Byte 0
  loc_CE94BB: CR8I2
  loc_CE94BC: PopFPR8
  loc_CE94BD: LitI2_Byte 0
  loc_CE94BF: CR8I2
  loc_CE94C0: PopFPR8
  loc_CE94C1: FLdR8 var_A4
  loc_CE94C4: FLdRfVar var_188
  loc_CE94C7: CStrVarTmp
  loc_CE94C8: FStStrNoPop var_28C
  loc_CE94CB: LitStr "Aforo"
  loc_CE94CE: LitI2_Byte 2
  loc_CE94D0: CUI1I2
  loc_CE94D2: ILdRf var_D0
  loc_CE94D5: FLdRfVar var_220
  loc_CE94D8: CI4Var
  loc_CE94DA: FLdI2 var_8A
  loc_CE94DD: ILdRf var_288
  loc_CE94E0: CUI1Str
  loc_CE94E2: LitI2_Byte 1
  loc_CE94E4: CUI1I2
  loc_CE94E6: ILdRf var_224
  loc_CE94E9: CI2Str
  loc_CE94EB: FLdPr Me
  loc_CE94EE: MemLdRfVar from_stack_1.global_68
  loc_CE94F1: NewIfNullPr clsliqupubl
  loc_CE94F4: Call clsliqupubl.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CE94F9: FFreeStr var_224 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = ""
  loc_CE9508: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2E8 = "": var_2F0 = "": var_2F4 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_2D0 = "": var_2E0 = "": var_2EC = "": var_2F8 = "": var_304 = ""
  loc_CE9535: FFreeVar var_188 = "": var_220 = "": var_244 = "": var_254 = "": var_264 = "": var_284 = ""
  loc_CE9546: Branch loc_CE9649
  loc_CE9549: FLdRfVar var_224
  loc_CE954C: FLdPr Me
  loc_CE954F: VCallAd Control_ID_PeriLiquTxt
  loc_CE9552: FStAdFunc var_178
  loc_CE9555: FLdPr var_178
  loc_CE9558:  = Me.Text
  loc_CE955D: FLdRfVar var_288
  loc_CE9560: FLdPr Me
  loc_CE9563: VCallAd Control_ID_CodiTiliTxt
  loc_CE9566: FStAdFunc var_210
  loc_CE9569: FLdPr var_210
  loc_CE956C:  = Me.Text
  loc_CE9571: FLdRfVar var_254
  loc_CE9574: FLdRfVar var_2D0
  loc_CE9577: LitVarStr var_19C, "CodiCome"
  loc_CE957C: PopAdLdVar
  loc_CE957D: FLdRfVar var_2A8
  loc_CE9580: FLdRfVar var_2A4
  loc_CE9583: FLdPr Me
  loc_CE9586: MemLdRfVar from_stack_1.global_56
  loc_CE9589: NewIfNullPr clscomercio
  loc_CE958C: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE9591: FLdPr var_2A4
  loc_CE9594:  = Me.Fields
  loc_CE9599: FLdPr var_2A8
  loc_CE959C: from_stack_2 = Me.Item(from_stack_1)
  loc_CE95A1: FLdPr var_2D0
  loc_CE95A4:  = Me.Value
  loc_CE95A9: LitVarStr var_1BC, "Cuenta: "
  loc_CE95AE: FLdRfVar var_188
  loc_CE95B1: FLdRfVar var_2DC
  loc_CE95B4: LitVarStr var_1AC, "CodiCome"
  loc_CE95B9: PopAdLdVar
  loc_CE95BA: FLdRfVar var_2D8
  loc_CE95BD: FLdRfVar var_2D4
  loc_CE95C0: FLdPr Me
  loc_CE95C3: MemLdRfVar from_stack_1.global_56
  loc_CE95C6: NewIfNullPr clscomercio
  loc_CE95C9: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE95CE: FLdPr var_2D4
  loc_CE95D1:  = Me.Fields
  loc_CE95D6: FLdPr var_2D8
  loc_CE95D9: from_stack_2 = Me.Item(from_stack_1)
  loc_CE95DE: FLdPr var_2DC
  loc_CE95E1:  = Me.Value
  loc_CE95E6: FLdRfVar var_188
  loc_CE95E9: ConcatVar var_220
  loc_CE95ED: LitVarStr var_1CC, " El importe del calculo es 0"
  loc_CE95F2: ConcatVar var_244
  loc_CE95F6: CStrVarVal var_28C
  loc_CE95FA: FLdRfVar var_254
  loc_CE95FD: CI4Var
  loc_CE95FF: FLdI2 var_8A
  loc_CE9602: ILdRf var_288
  loc_CE9605: CUI1Str
  loc_CE9607: FLdPr Me
  loc_CE960A: MemLdI2 global_92
  loc_CE960D: CUI1I2
  loc_CE960F: ILdRf var_224
  loc_CE9612: CI2Str
  loc_CE9614: FLdPr Me
  loc_CE9617: MemLdRfVar from_stack_1.global_68
  loc_CE961A: NewIfNullPr clsliqupubl
  loc_CE961D: Call clsliqupubl.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CE9622: FFreeStr var_224 = "": var_288 = ""
  loc_CE962B: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D4 = "": var_2D8 = "": var_2DC = ""
  loc_CE963E: FFreeVar var_188 = "": var_220 = "": var_254 = ""
  loc_CE9649: Branch loc_CE974C
  loc_CE964C: FLdRfVar var_224
  loc_CE964F: FLdPr Me
  loc_CE9652: VCallAd Control_ID_PeriLiquTxt
  loc_CE9655: FStAdFunc var_178
  loc_CE9658: FLdPr var_178
  loc_CE965B:  = Me.Text
  loc_CE9660: FLdRfVar var_288
  loc_CE9663: FLdPr Me
  loc_CE9666: VCallAd Control_ID_CodiTiliTxt
  loc_CE9669: FStAdFunc var_210
  loc_CE966C: FLdPr var_210
  loc_CE966F:  = Me.Text
  loc_CE9674: FLdRfVar var_254
  loc_CE9677: FLdRfVar var_2D0
  loc_CE967A: LitVarStr var_19C, "CodiCome"
  loc_CE967F: PopAdLdVar
  loc_CE9680: FLdRfVar var_2A8
  loc_CE9683: FLdRfVar var_2A4
  loc_CE9686: FLdPr Me
  loc_CE9689: MemLdRfVar from_stack_1.global_56
  loc_CE968C: NewIfNullPr clscomercio
  loc_CE968F: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE9694: FLdPr var_2A4
  loc_CE9697:  = Me.Fields
  loc_CE969C: FLdPr var_2A8
  loc_CE969F: from_stack_2 = Me.Item(from_stack_1)
  loc_CE96A4: FLdPr var_2D0
  loc_CE96A7:  = Me.Value
  loc_CE96AC: LitVarStr var_1BC, "Cuenta: "
  loc_CE96B1: FLdRfVar var_188
  loc_CE96B4: FLdRfVar var_2DC
  loc_CE96B7: LitVarStr var_1AC, "CodiCome"
  loc_CE96BC: PopAdLdVar
  loc_CE96BD: FLdRfVar var_2D8
  loc_CE96C0: FLdRfVar var_2D4
  loc_CE96C3: FLdPr Me
  loc_CE96C6: MemLdRfVar from_stack_1.global_56
  loc_CE96C9: NewIfNullPr clscomercio
  loc_CE96CC: from_stack_1v = clscomercio.RsFrmGet()
  loc_CE96D1: FLdPr var_2D4
  loc_CE96D4:  = Me.Fields
  loc_CE96D9: FLdPr var_2D8
  loc_CE96DC: from_stack_2 = Me.Item(from_stack_1)
  loc_CE96E1: FLdPr var_2DC
  loc_CE96E4:  = Me.Value
  loc_CE96E9: FLdRfVar var_188
  loc_CE96EC: ConcatVar var_220
  loc_CE96F0: LitVarStr var_1CC, " No existe la relación"
  loc_CE96F5: ConcatVar var_244
  loc_CE96F9: CStrVarVal var_28C
  loc_CE96FD: FLdRfVar var_254
  loc_CE9700: CI4Var
  loc_CE9702: FLdI2 var_8A
  loc_CE9705: ILdRf var_288
  loc_CE9708: CUI1Str
  loc_CE970A: FLdPr Me
  loc_CE970D: MemLdI2 global_92
  loc_CE9710: CUI1I2
  loc_CE9712: ILdRf var_224
  loc_CE9715: CI2Str
  loc_CE9717: FLdPr Me
  loc_CE971A: MemLdRfVar from_stack_1.global_68
  loc_CE971D: NewIfNullPr clsliqupubl
  loc_CE9720: Call clsliqupubl.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CE9725: FFreeStr var_224 = "": var_288 = ""
  loc_CE972E: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D4 = "": var_2D8 = "": var_2DC = ""
  loc_CE9741: FFreeVar var_188 = "": var_220 = "": var_254 = ""
  loc_CE974C: FLdPr Me
  loc_CE974F: MemLdRfVar from_stack_1.global_56
  loc_CE9752: NewIfNullPr clscomercio
  loc_CE9755: Call clscomercio.MoveSiguiente()
  loc_CE975A: Branch loc_CE7244
  loc_CE975D: LitI2_Byte 0
  loc_CE975F: FLdPr Me
  loc_CE9762: Me.MousePointer = from_stack_1
  loc_CE9767: LitVar_FALSE
  loc_CE976B: PopAdLdVar
  loc_CE976C: FLdPr Me
  loc_CE976F: VCallAd Control_ID_ProgressBar
  loc_CE9772: FStAdFunc var_178
  loc_CE9775: FLdPr var_178
  loc_CE9778: LateIdSt
  loc_CE977D: FFree1Ad var_178
  loc_CE9780: LitStr "Proceso Terminado. Por favor controle el cálculo de tasas realizado"
  loc_CE9783: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE9788: LitI4 0
  loc_CE978D: LitI4 0
  loc_CE9792: FLdRfVar var_2AC
  loc_CE9795: Redim
  loc_CE979F: FLdPr Me
  loc_CE97A2: VCallAd Control_ID_CalculoCmd
  loc_CE97A5: CVarAd
  loc_CE97A9: ParmAry1St
  loc_CE97AF: FLdRfVar var_2AC
  loc_CE97B2: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE97B7: FLdRfVar var_2AC
  loc_CE97BA: Erase
  loc_CE97BB: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_GotFocus() '9BC270
  'Data Table: 4D76AC
  loc_9BC25C: FLdPr Me
  loc_9BC25F: VCallAd Control_ID_BimeLiquTxt
  loc_9BC262: CVarAd
  loc_9BC266: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BC26B: FFree1Var var_94 = ""
  loc_9BC26E: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_Validate(Cancel As Boolean) 'A83224
  'Data Table: 4D76AC
  loc_A8319C: FLdRfVar var_8A
  loc_A8319F: FLdPr Me
  loc_A831A2: VCallAd Control_ID_BimeLiquTxt
  loc_A831A5: FStAdFunc var_88
  loc_A831A8: FLdPr var_88
  loc_A831AB:  = Me.Enabled
  loc_A831B0: FLdI2 var_8A
  loc_A831B3: FFree1Ad var_88
  loc_A831B6: BranchF loc_A83221
  loc_A831B9: FLdRfVar var_90
  loc_A831BC: FLdPr Me
  loc_A831BF: VCallAd Control_ID_BimeLiquTxt
  loc_A831C2: FStAdFunc var_88
  loc_A831C5: FLdPr var_88
  loc_A831C8:  = Me.Text
  loc_A831CD: LitI2_Byte 0
  loc_A831CF: LitI2_Byte 0
  loc_A831D1: ILdRf var_90
  loc_A831D4: LitStr "Semestre"
  loc_A831D7: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A831DC: FStStrNoPop var_94
  loc_A831DF: FLdPr Me
  loc_A831E2: MemStStrCopy
  loc_A831E6: FFreeStr var_90 = ""
  loc_A831ED: FFree1Ad var_88
  loc_A831F0: FLdPr Me
  loc_A831F3: MemLdStr global_100
  loc_A831F6: LitStr vbNullString
  loc_A831F9: NeStr
  loc_A831FB: BranchF loc_A83221
  loc_A831FE: FLdPr Me
  loc_A83201: MemLdStr global_100
  loc_A83204: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A83209: FLdPr Me
  loc_A8320C: VCallAd Control_ID_BimeLiquTxt
  loc_A8320F: CVarAd
  loc_A83213: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A83218: FFree1Var var_A4 = ""
  loc_A8321B: LitI2_Byte &HFF
  loc_A8321D: IStI2 Cancel
  loc_A83220: ExitProcHresult
  loc_A83221: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() '9BB928
  'Data Table: 4D76AC
  loc_9BB914: FLdPrThis
  loc_9BB915: VCallAd Control_ID_NumeCtaTxt
  loc_9BB918: CVarAd
  loc_9BB91C: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB921: FFree1Var var_94 = ""
  loc_9BB924: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'AB733C
  'Data Table: 4D76AC
  loc_AB7260: LitStr "1234567890 "
  loc_AB7263: FStStrCopy var_88
  loc_AB7266: FLdRfVar var_88
  loc_AB7269: ILdRf KeyAscii
  loc_AB726C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB7271: IStI2 KeyAscii
  loc_AB7274: FFree1Str var_88
  loc_AB7277: ILdI2 KeyAscii
  loc_AB727A: LitI2_Byte &H20
  loc_AB727C: EqI2
  loc_AB727D: BranchF loc_AB7338
  loc_AB7280: LitI2_Byte 0
  loc_AB7282: IStI2 KeyAscii
  loc_AB7285: LitI2_Byte 1
  loc_AB7287: CUI1I2
  loc_AB7289: ImpAdStUI1 MemVar_D93038
  loc_AB728D: LitVar_Missing var_A8
  loc_AB7290: PopAdLdVar
  loc_AB7291: LitVarI4
  loc_AB7299: PopAdLdVar
  loc_AB729A: ImpAdLdRf MemVar_D94034
  loc_AB729D: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB72A0: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_AB72A5: FLdRfVar var_B0
  loc_AB72A8: FLdRfVar var_AC
  loc_AB72AB: ImpAdLdRf MemVar_D94034
  loc_AB72AE: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB72B1: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB72B6: FLdPr var_AC
  loc_AB72B9: from_stack_1 = clsbase.RecordCount
  loc_AB72BE: ILdRf var_B0
  loc_AB72C1: LitI4 0
  loc_AB72C6: GtI4
  loc_AB72C7: FFree1Ad var_AC
  loc_AB72CA: BranchF loc_AB7338
  loc_AB72CD: FLdRfVar var_CC
  loc_AB72D0: FLdRfVar var_BC
  loc_AB72D3: LitVarStr var_98, "CuenCtct"
  loc_AB72D8: PopAdLdVar
  loc_AB72D9: FLdRfVar var_B8
  loc_AB72DC: FLdRfVar var_B4
  loc_AB72DF: FLdRfVar var_AC
  loc_AB72E2: ImpAdLdRf MemVar_D94034
  loc_AB72E5: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB72E8: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB72ED: FLdPr var_AC
  loc_AB72F0: from_stack_1v = clsbase.RsFrmGet()
  loc_AB72F5: FLdPr var_B4
  loc_AB72F8:  = Me.Fields
  loc_AB72FD: FLdPr var_B8
  loc_AB7300: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7305: FLdPr var_BC
  loc_AB7308:  = Me.Value
  loc_AB730D: FLdRfVar var_CC
  loc_AB7310: CStrVarTmp
  loc_AB7311: FStStrNoPop var_88
  loc_AB7314: FLdPr Me
  loc_AB7317: VCallAd Control_ID_NumeCtaTxt
  loc_AB731A: FStAdFunc var_D0
  loc_AB731D: FLdPr var_D0
  loc_AB7320: Me.Text = from_stack_1
  loc_AB7325: FFree1Str var_88
  loc_AB7328: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB7335: FFree1Var var_CC = ""
  loc_AB7338: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'AF30DC
  'Data Table: 4D76AC
  loc_AF2F2C: FLdRfVar var_8A
  loc_AF2F2F: FLdPr Me
  loc_AF2F32: VCallAd Control_ID_NumeCtaTxt
  loc_AF2F35: FStAdFunc var_88
  loc_AF2F38: FLdPr var_88
  loc_AF2F3B:  = Me.Enabled
  loc_AF2F40: FLdI2 var_8A
  loc_AF2F43: FFree1Ad var_88
  loc_AF2F46: BranchF loc_AF30DB
  loc_AF2F49: FLdRfVar var_90
  loc_AF2F4C: FLdPr Me
  loc_AF2F4F: VCallAd Control_ID_NumeCtaTxt
  loc_AF2F52: FStAdFunc var_88
  loc_AF2F55: FLdPr var_88
  loc_AF2F58:  = Me.Text
  loc_AF2F5D: LitI2_Byte &HFF
  loc_AF2F5F: LitI2_Byte 0
  loc_AF2F61: ILdRf var_90
  loc_AF2F64: LitStr "Numero de Cuenta"
  loc_AF2F67: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AF2F6C: FStStrNoPop var_94
  loc_AF2F6F: FLdPr Me
  loc_AF2F72: MemStStrCopy
  loc_AF2F76: FFreeStr var_90 = ""
  loc_AF2F7D: FFree1Ad var_88
  loc_AF2F80: FLdPr Me
  loc_AF2F83: MemLdStr global_100
  loc_AF2F86: LitStr vbNullString
  loc_AF2F89: NeStr
  loc_AF2F8B: BranchF loc_AF2FB0
  loc_AF2F8E: FLdPr Me
  loc_AF2F91: MemLdStr global_100
  loc_AF2F94: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF2F99: FLdPr Me
  loc_AF2F9C: VCallAd Control_ID_NumeCtaTxt
  loc_AF2F9F: CVarAd
  loc_AF2FA3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF2FA8: FFree1Var var_A4 = ""
  loc_AF2FAB: LitI2_Byte &HFF
  loc_AF2FAD: IStI2 Cancel
  loc_AF2FB0: FLdRfVar var_90
  loc_AF2FB3: FLdPr Me
  loc_AF2FB6: VCallAd Control_ID_NumeCtaTxt
  loc_AF2FB9: FStAdFunc var_88
  loc_AF2FBC: FLdPr var_88
  loc_AF2FBF:  = Me.Text
  loc_AF2FC4: ILdRf var_90
  loc_AF2FC7: CR8Str
  loc_AF2FC9: LitI2_Byte 0
  loc_AF2FCB: CR8I2
  loc_AF2FCC: GtR4
  loc_AF2FCD: FFree1Str var_90
  loc_AF2FD0: FFree1Ad var_88
  loc_AF2FD3: BranchF loc_AF30DB
  loc_AF2FD6: FLdRfVar var_90
  loc_AF2FD9: FLdPr Me
  loc_AF2FDC: VCallAd Control_ID_NumeCtaTxt
  loc_AF2FDF: FStAdFunc var_88
  loc_AF2FE2: FLdPr var_88
  loc_AF2FE5:  = Me.Text
  loc_AF2FEA: FLdPr Me
  loc_AF2FED: MemLdRfVar from_stack_1.global_88
  loc_AF2FF0: NewIfNullRf
  loc_AF2FF4: LitStr "Titular"
  loc_AF2FF7: ILdRf var_90
  loc_AF2FFA: LitI2_Byte 2
  loc_AF2FFC: CStrUI1
  loc_AF2FFE: FStStrNoPop var_94
  loc_AF3001: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_AF3006: FFreeStr var_94 = ""
  loc_AF300D: FFree1Ad var_88
  loc_AF3010: BranchF loc_AF306C
  loc_AF3013: FLdRfVar var_90
  loc_AF3016: FLdPr Me
  loc_AF3019: MemLdRfVar from_stack_1.global_88
  loc_AF301C: NewIfNullPr tblPersona
  loc_AF301F: from_stack_1v = tblPersona.CucuPersGet()
  loc_AF3024: ILdRf var_90
  loc_AF3027: FLdPr Me
  loc_AF302A: VCallAd Control_ID_CucuPersLbl
  loc_AF302D: FStAdFunc var_88
  loc_AF3030: FLdPr var_88
  loc_AF3033: Me.Caption = from_stack_1
  loc_AF3038: FFree1Str var_90
  loc_AF303B: FFree1Ad var_88
  loc_AF303E: FLdRfVar var_90
  loc_AF3041: FLdPr Me
  loc_AF3044: MemLdRfVar from_stack_1.global_88
  loc_AF3047: NewIfNullPr tblPersona
  loc_AF304A: from_stack_1v = tblPersona.DetaPersGet()
  loc_AF304F: ILdRf var_90
  loc_AF3052: FLdPr Me
  loc_AF3055: VCallAd Control_ID_DetaPersLbl
  loc_AF3058: FStAdFunc var_88
  loc_AF305B: FLdPr var_88
  loc_AF305E: Me.Caption = from_stack_1
  loc_AF3063: FFree1Str var_90
  loc_AF3066: FFree1Ad var_88
  loc_AF3069: Branch loc_AF30DB
  loc_AF306C: FLdRfVar var_90
  loc_AF306F: FLdPr Me
  loc_AF3072: MemLdRfVar from_stack_1.global_88
  loc_AF3075: NewIfNullPr tblPersona
  loc_AF3078: from_stack_1v = tblPersona.MsgErrorGet()
  loc_AF307D: ILdRf var_90
  loc_AF3080: FLdPr Me
  loc_AF3083: MemStStrCopy
  loc_AF3087: FFree1Str var_90
  loc_AF308A: FLdPr Me
  loc_AF308D: MemLdStr global_100
  loc_AF3090: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF3095: LitStr vbNullString
  loc_AF3098: FLdPr Me
  loc_AF309B: VCallAd Control_ID_CucuPersLbl
  loc_AF309E: FStAdFunc var_88
  loc_AF30A1: FLdPr var_88
  loc_AF30A4: Me.Caption = from_stack_1
  loc_AF30A9: FFree1Ad var_88
  loc_AF30AC: LitStr vbNullString
  loc_AF30AF: FLdPr Me
  loc_AF30B2: VCallAd Control_ID_DetaPersLbl
  loc_AF30B5: FStAdFunc var_88
  loc_AF30B8: FLdPr var_88
  loc_AF30BB: Me.Caption = from_stack_1
  loc_AF30C0: FFree1Ad var_88
  loc_AF30C3: FLdPr Me
  loc_AF30C6: VCallAd Control_ID_NumeCtaTxt
  loc_AF30C9: CVarAd
  loc_AF30CD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF30D2: FFree1Var var_A4 = ""
  loc_AF30D5: LitI2_Byte &HFF
  loc_AF30D7: IStI2 Cancel
  loc_AF30DA: ExitProcHresult
  loc_AF30DB: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_GotFocus() '9BC588
  'Data Table: 4D76AC
  loc_9BC574: FLdPr Me
  loc_9BC577: VCallAd Control_ID_CodiTiliTxt
  loc_9BC57A: CVarAd
  loc_9BC57E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC583: FFree1Var var_94 = ""
  loc_9BC586: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_KeyPress(KeyAscii As Integer) '9C9D58
  'Data Table: 4D76AC
  loc_9C9D40: LitStr "1234567890"
  loc_9C9D43: FStStrCopy var_88
  loc_9C9D46: FLdRfVar var_88
  loc_9C9D49: ILdRf KeyAscii
  loc_9C9D4C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C9D51: IStI2 KeyAscii
  loc_9C9D54: FFree1Str var_88
  loc_9C9D57: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_Validate(Cancel As Boolean) 'B3C858
  'Data Table: 4D76AC
  loc_B3C540: FLdRfVar var_8A
  loc_B3C543: FLdPr Me
  loc_B3C546: VCallAd Control_ID_CodiTiliTxt
  loc_B3C549: FStAdFunc var_88
  loc_B3C54C: FLdPr var_88
  loc_B3C54F:  = Me.Enabled
  loc_B3C554: FLdI2 var_8A
  loc_B3C557: FFree1Ad var_88
  loc_B3C55A: BranchF loc_B3C855
  loc_B3C55D: FLdRfVar var_90
  loc_B3C560: FLdPr Me
  loc_B3C563: VCallAd Control_ID_CodiTiliTxt
  loc_B3C566: FStAdFunc var_88
  loc_B3C569: FLdPr var_88
  loc_B3C56C:  = Me.Text
  loc_B3C571: ILdRf var_90
  loc_B3C574: LitI2_Byte 6
  loc_B3C576: CUI1I2
  loc_B3C578: ImpAdCallI2  = Proc_18_25_A7CBA0()
  loc_B3C57D: FStStrNoPop var_94
  loc_B3C580: FLdPr Me
  loc_B3C583: MemStStrCopy
  loc_B3C587: FFreeStr var_90 = ""
  loc_B3C58E: FFree1Ad var_88
  loc_B3C591: FLdPr Me
  loc_B3C594: MemLdStr global_100
  loc_B3C597: LitStr vbNullString
  loc_B3C59A: NeStr
  loc_B3C59C: BranchF loc_B3C5C2
  loc_B3C59F: FLdPr Me
  loc_B3C5A2: MemLdStr global_100
  loc_B3C5A5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3C5AA: FLdPr Me
  loc_B3C5AD: VCallAd Control_ID_CodiTiliTxt
  loc_B3C5B0: CVarAd
  loc_B3C5B4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B3C5B9: FFree1Var var_A4 = ""
  loc_B3C5BC: LitI2_Byte &HFF
  loc_B3C5BE: IStI2 Cancel
  loc_B3C5C1: ExitProcHresult
  loc_B3C5C2: FLdRfVar var_90
  loc_B3C5C5: FLdPr Me
  loc_B3C5C8: VCallAd Control_ID_PeriLiquTxt
  loc_B3C5CB: FStAdFunc var_88
  loc_B3C5CE: FLdPr var_88
  loc_B3C5D1:  = Me.Text
  loc_B3C5D6: FLdRfVar var_94
  loc_B3C5D9: FLdPr Me
  loc_B3C5DC: VCallAd Control_ID_BimeLiquTxt
  loc_B3C5DF: FStAdFunc var_A8
  loc_B3C5E2: FLdPr var_A8
  loc_B3C5E5:  = Me.Text
  loc_B3C5EA: FLdRfVar var_B0
  loc_B3C5ED: FLdPr Me
  loc_B3C5F0: VCallAd Control_ID_CodiTiliTxt
  loc_B3C5F3: FStAdFunc var_AC
  loc_B3C5F6: FLdPr var_AC
  loc_B3C5F9:  = Me.Text
  loc_B3C5FE: ILdRf var_B0
  loc_B3C601: CUI1Str
  loc_B3C603: LitI2_Byte 6
  loc_B3C605: CUI1I2
  loc_B3C607: ILdRf var_94
  loc_B3C60A: ILdRf var_90
  loc_B3C60D: CI2Str
  loc_B3C60F: ImpAdCallI2  = Proc_18_59_AAFCBC(, )
  loc_B3C614: FStStrNoPop var_B4
  loc_B3C617: FLdPr Me
  loc_B3C61A: MemStStrCopy
  loc_B3C61E: FFreeStr var_90 = "": var_94 = "": var_B0 = ""
  loc_B3C629: FFreeAd var_88 = "": var_A8 = ""
  loc_B3C632: FLdPr Me
  loc_B3C635: MemLdStr global_100
  loc_B3C638: LitStr vbNullString
  loc_B3C63B: NeStr
  loc_B3C63D: BranchF loc_B3C6B4
  loc_B3C640: LitStr "No esta definido el vencimiento para el SEMESTRE numero: "
  loc_B3C643: FLdRfVar var_90
  loc_B3C646: FLdPr Me
  loc_B3C649: VCallAd Control_ID_BimeLiquTxt
  loc_B3C64C: FStAdFunc var_88
  loc_B3C64F: FLdPr var_88
  loc_B3C652:  = Me.Text
  loc_B3C657: ILdRf var_90
  loc_B3C65A: ConcatStr
  loc_B3C65B: FStStrNoPop var_94
  loc_B3C65E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3C663: FFreeStr var_90 = ""
  loc_B3C66A: FFree1Ad var_88
  loc_B3C66D: LitI2_Byte 0
  loc_B3C66F: FLdPr Me
  loc_B3C672: VCallAd Control_ID_Label4
  loc_B3C675: FStAdFunc var_88
  loc_B3C678: FLdPr var_88
  loc_B3C67B: Me.Visible = from_stack_1b
  loc_B3C680: FFree1Ad var_88
  loc_B3C683: LitVar_FALSE
  loc_B3C687: PopAdLdVar
  loc_B3C688: FLdPr Me
  loc_B3C68B: VCallAd Control_ID_FeveVencMsk
  loc_B3C68E: FStAdFunc var_88
  loc_B3C691: FLdPr var_88
  loc_B3C694: LateIdSt
  loc_B3C699: FFree1Ad var_88
  loc_B3C69C: FLdPr Me
  loc_B3C69F: VCallAd Control_ID_CodiTiliTxt
  loc_B3C6A2: CVarAd
  loc_B3C6A6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B3C6AB: FFree1Var var_A4 = ""
  loc_B3C6AE: LitI2_Byte &HFF
  loc_B3C6B0: IStI2 Cancel
  loc_B3C6B3: ExitProcHresult
  loc_B3C6B4: FLdRfVar var_90
  loc_B3C6B7: FLdPr Me
  loc_B3C6BA: VCallAd Control_ID_BimeLiquTxt
  loc_B3C6BD: FStAdFunc var_88
  loc_B3C6C0: FLdPr var_88
  loc_B3C6C3:  = Me.Text
  loc_B3C6C8: ILdRf var_90
  loc_B3C6CB: CR8Str
  loc_B3C6CD: LitI2_Byte 1
  loc_B3C6CF: CR8I2
  loc_B3C6D0: EqR4
  loc_B3C6D1: FFree1Str var_90
  loc_B3C6D4: FFree1Ad var_88
  loc_B3C6D7: BranchF loc_B3C855
  loc_B3C6DA: FLdRfVar var_90
  loc_B3C6DD: FLdPr Me
  loc_B3C6E0: VCallAd Control_ID_PeriLiquTxt
  loc_B3C6E3: FStAdFunc var_88
  loc_B3C6E6: FLdPr var_88
  loc_B3C6E9:  = Me.Text
  loc_B3C6EE: FLdRfVar var_94
  loc_B3C6F1: FLdPr Me
  loc_B3C6F4: VCallAd Control_ID_BimeLiquTxt
  loc_B3C6F7: FStAdFunc var_A8
  loc_B3C6FA: FLdPr var_A8
  loc_B3C6FD:  = Me.Text
  loc_B3C702: FLdRfVar var_B0
  loc_B3C705: FLdPr Me
  loc_B3C708: VCallAd Control_ID_CodiTiliTxt
  loc_B3C70B: FStAdFunc var_AC
  loc_B3C70E: FLdPr var_AC
  loc_B3C711:  = Me.Text
  loc_B3C716: ILdRf var_B0
  loc_B3C719: CUI1Str
  loc_B3C71B: LitI2_Byte 6
  loc_B3C71D: CUI1I2
  loc_B3C71F: ILdRf var_94
  loc_B3C722: ILdRf var_90
  loc_B3C725: CI2Str
  loc_B3C727: ImpAdCallI2  = Proc_18_60_AAEDA4(, )
  loc_B3C72C: FStStrNoPop var_B4
  loc_B3C72F: FLdPr Me
  loc_B3C732: MemStStrCopy
  loc_B3C736: FFreeStr var_90 = "": var_94 = "": var_B0 = ""
  loc_B3C741: FFreeAd var_88 = "": var_A8 = ""
  loc_B3C74A: FLdPr Me
  loc_B3C74D: MemLdStr global_100
  loc_B3C750: LitStr vbNullString
  loc_B3C753: NeStr
  loc_B3C755: BranchF loc_B3C7A7
  loc_B3C758: LitStr "No esta definido el vencimiento para el ANUAL"
  loc_B3C75B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3C760: LitI2_Byte 0
  loc_B3C762: FLdPr Me
  loc_B3C765: VCallAd Control_ID_Label4
  loc_B3C768: FStAdFunc var_88
  loc_B3C76B: FLdPr var_88
  loc_B3C76E: Me.Visible = from_stack_1b
  loc_B3C773: FFree1Ad var_88
  loc_B3C776: LitVar_FALSE
  loc_B3C77A: PopAdLdVar
  loc_B3C77B: FLdPr Me
  loc_B3C77E: VCallAd Control_ID_FeveVencMsk
  loc_B3C781: FStAdFunc var_88
  loc_B3C784: FLdPr var_88
  loc_B3C787: LateIdSt
  loc_B3C78C: FFree1Ad var_88
  loc_B3C78F: FLdPr Me
  loc_B3C792: VCallAd Control_ID_CodiTiliTxt
  loc_B3C795: CVarAd
  loc_B3C799: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B3C79E: FFree1Var var_A4 = ""
  loc_B3C7A1: LitI2_Byte &HFF
  loc_B3C7A3: IStI2 Cancel
  loc_B3C7A6: ExitProcHresult
  loc_B3C7A7: FLdRfVar var_90
  loc_B3C7AA: FLdPr Me
  loc_B3C7AD: VCallAd Control_ID_PeriLiquTxt
  loc_B3C7B0: FStAdFunc var_88
  loc_B3C7B3: FLdPr var_88
  loc_B3C7B6:  = Me.Text
  loc_B3C7BB: FLdRfVar var_94
  loc_B3C7BE: FLdPr Me
  loc_B3C7C1: VCallAd Control_ID_BimeLiquTxt
  loc_B3C7C4: FStAdFunc var_A8
  loc_B3C7C7: FLdPr var_A8
  loc_B3C7CA:  = Me.Text
  loc_B3C7CF: FLdRfVar var_B0
  loc_B3C7D2: FLdPr Me
  loc_B3C7D5: VCallAd Control_ID_CodiTiliTxt
  loc_B3C7D8: FStAdFunc var_AC
  loc_B3C7DB: FLdPr var_AC
  loc_B3C7DE:  = Me.Text
  loc_B3C7E3: ILdRf var_B0
  loc_B3C7E6: CUI1Str
  loc_B3C7E8: LitI2_Byte 6
  loc_B3C7EA: CUI1I2
  loc_B3C7EC: ILdRf var_94
  loc_B3C7EF: CUI1Str
  loc_B3C7F1: ILdRf var_90
  loc_B3C7F4: CI2Str
  loc_B3C7F6: ImpAdCallI2 Proc_270_62_ABCC3C(, , , )
  loc_B3C7FB: CVarStr var_A4
  loc_B3C7FE: PopAdLdVar
  loc_B3C7FF: FLdPr Me
  loc_B3C802: VCallAd Control_ID_FeanVencMsk
  loc_B3C805: FStAdFunc var_D8
  loc_B3C808: FLdPr var_D8
  loc_B3C80B: LateIdSt
  loc_B3C810: FFreeStr var_90 = "": var_94 = ""
  loc_B3C819: FFreeAd var_88 = "": var_A8 = "": var_AC = ""
  loc_B3C824: FFree1Var var_A4 = ""
  loc_B3C827: LitI2_Byte &HFF
  loc_B3C829: FLdPr Me
  loc_B3C82C: VCallAd Control_ID_Label5
  loc_B3C82F: FStAdFunc var_88
  loc_B3C832: FLdPr var_88
  loc_B3C835: Me.Visible = from_stack_1b
  loc_B3C83A: FFree1Ad var_88
  loc_B3C83D: LitVar_TRUE var_C4
  loc_B3C840: PopAdLdVar
  loc_B3C841: FLdPr Me
  loc_B3C844: VCallAd Control_ID_FeanVencMsk
  loc_B3C847: FStAdFunc var_88
  loc_B3C84A: FLdPr var_88
  loc_B3C84D: LateIdSt
  loc_B3C852: FFree1Ad var_88
  loc_B3C855: ExitProcHresult
  loc_B3C856: FLdRfVar arg_34BC
End Sub

Private Sub PeriLiquTxt_GotFocus() '9BC2B8
  'Data Table: 4D76AC
  loc_9BC2A4: FLdPr Me
  loc_9BC2A7: VCallAd Control_ID_PeriLiquTxt
  loc_9BC2AA: CVarAd
  loc_9BC2AE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BC2B3: FFree1Var var_94 = ""
  loc_9BC2B6: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_KeyPress(KeyAscii As Integer) '9C9B44
  'Data Table: 4D76AC
  loc_9C9B2C: LitStr "1234567890"
  loc_9C9B2F: FStStrCopy var_88
  loc_9C9B32: FLdRfVar var_88
  loc_9C9B35: ILdRf KeyAscii
  loc_9C9B38: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C9B3D: IStI2 KeyAscii
  loc_9C9B40: FFree1Str var_88
  loc_9C9B43: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_Validate(Cancel As Boolean) 'A6A608
  'Data Table: 4D76AC
  loc_A6A5A0: FLdRfVar var_8C
  loc_A6A5A3: FLdPr Me
  loc_A6A5A6: VCallAd Control_ID_PeriLiquTxt
  loc_A6A5A9: FStAdFunc var_88
  loc_A6A5AC: FLdPr var_88
  loc_A6A5AF:  = Me.Text
  loc_A6A5B4: LitI2_Byte 0
  loc_A6A5B6: ILdRf var_8C
  loc_A6A5B9: LitStr "el Año"
  loc_A6A5BC: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6A5C1: FStStrNoPop var_90
  loc_A6A5C4: FLdPr Me
  loc_A6A5C7: MemStStrCopy
  loc_A6A5CB: FFreeStr var_8C = ""
  loc_A6A5D2: FFree1Ad var_88
  loc_A6A5D5: FLdPr Me
  loc_A6A5D8: MemLdStr global_100
  loc_A6A5DB: LitStr vbNullString
  loc_A6A5DE: NeStr
  loc_A6A5E0: BranchF loc_A6A605
  loc_A6A5E3: FLdPr Me
  loc_A6A5E6: MemLdStr global_100
  loc_A6A5E9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6A5EE: FLdPr Me
  loc_A6A5F1: VCallAd Control_ID_PeriLiquTxt
  loc_A6A5F4: CVarAd
  loc_A6A5F8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6A5FD: FFree1Var var_A0 = ""
  loc_A6A600: LitI2_Byte &HFF
  loc_A6A602: IStI2 Cancel
  loc_A6A605: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'A8C9BC
  'Data Table: 4D76AC
  loc_A8C938: FLdRfVar var_90
  loc_A8C93B: FLdPr Me
  loc_A8C93E: VCallAd Control_ID_NumeCtaTxt
  loc_A8C941: FStAdFunc var_8C
  loc_A8C944: FLdPr var_8C
  loc_A8C947:  = Me.Text
  loc_A8C94C: FLdZeroAd var_90
  loc_A8C94F: CVarStr var_B0
  loc_A8C952: LitI4 9
  loc_A8C957: FLdRfVar var_A0
  loc_A8C95A: ImpAdCallFPR4  = Chr()
  loc_A8C95F: FLdRfVar var_A0
  loc_A8C962: ConcatVar var_C0
  loc_A8C966: FLdRfVar var_C8
  loc_A8C969: FLdPr Me
  loc_A8C96C: VCallAd Control_ID_DetaPersLbl
  loc_A8C96F: FStAdFunc var_C4
  loc_A8C972: FLdPr var_C4
  loc_A8C975:  = Me.Caption
  loc_A8C97A: FLdZeroAd var_C8
  loc_A8C97D: CVarStr var_D8
  loc_A8C980: ConcatVar var_E8
  loc_A8C984: CStrVarTmp
  loc_A8C985: FStStr var_88
  loc_A8C988: FFreeAd var_8C = ""
  loc_A8C98F: FFreeVar var_B0 = "": var_A0 = "": var_C0 = "": var_D8 = ""
  loc_A8C99C: FLdRfVar var_88
  loc_A8C99F: CDargRef
  loc_A8C9A3: FLdPr Me
  loc_A8C9A6: VCallAd Control_ID_CuentasFlex
  loc_A8C9A9: FStAdFunc var_8C
  loc_A8C9AC: FLdPr var_8C
  loc_A8C9AF: LateIdCall
  loc_A8C9B7: FFree1Ad var_8C
  loc_A8C9BA: ExitProcHresult
End Sub

Private Sub Form_Load() 'AFF5F4
  'Data Table: 4D76AC
  loc_AFF41C: LitI2_Byte 0
  loc_AFF41E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AFF423: CVarDate var_A4
  loc_AFF427: FLdRfVar var_B4
  loc_AFF42A: ImpAdCallFPR4  = Year()
  loc_AFF42F: FLdRfVar var_B4
  loc_AFF432: CStrVarVal var_B8
  loc_AFF436: FLdPr Me
  loc_AFF439: VCallAd Control_ID_PeriLiquTxt
  loc_AFF43C: FStAdFunc var_BC
  loc_AFF43F: FLdPr var_BC
  loc_AFF442: Me.Text = from_stack_1
  loc_AFF447: FFree1Str var_B8
  loc_AFF44A: FFree1Ad var_BC
  loc_AFF44D: FFreeVar var_A4 = ""
  loc_AFF454: LitI2_Byte 0
  loc_AFF456: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AFF45B: CVarDate var_A4
  loc_AFF45F: FLdRfVar var_B4
  loc_AFF462: ImpAdCallFPR4  = Month()
  loc_AFF467: LitI2_Byte 0
  loc_AFF469: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AFF46E: CVarDate var_DC
  loc_AFF472: FLdRfVar var_EC
  loc_AFF475: ImpAdCallFPR4  = Month()
  loc_AFF47A: LitVarI2 var_13C, 2
  loc_AFF47F: LitVarI2 var_11C, 1
  loc_AFF484: FLdRfVar var_B4
  loc_AFF487: FnCIntVar
  loc_AFF489: LitI2_Byte 1
  loc_AFF48B: GeI2
  loc_AFF48C: FLdRfVar var_EC
  loc_AFF48F: FnCIntVar
  loc_AFF491: LitI2_Byte 6
  loc_AFF493: LeI2
  loc_AFF494: AndI4
  loc_AFF495: CVarBoolI2 var_FC
  loc_AFF499: FLdRfVar var_14C
  loc_AFF49C: ImpAdCallFPR4  = IIf(, , )
  loc_AFF4A1: FLdRfVar var_14C
  loc_AFF4A4: CStrVarVal var_B8
  loc_AFF4A8: FLdPr Me
  loc_AFF4AB: VCallAd Control_ID_BimeLiquTxt
  loc_AFF4AE: FStAdFunc var_BC
  loc_AFF4B1: FLdPr var_BC
  loc_AFF4B4: Me.Text = from_stack_1
  loc_AFF4B9: FFree1Str var_B8
  loc_AFF4BC: FFree1Ad var_BC
  loc_AFF4BF: FFreeVar var_A4 = "": var_B4 = "": var_B4 = "": var_DC = "": var_EC = "": var_EC = "": var_FC = "": var_11C = "": var_13C = ""
  loc_AFF4D6: LitStr "0"
  loc_AFF4D9: FLdPr Me
  loc_AFF4DC: VCallAd Control_ID_CodiTiliTxt
  loc_AFF4DF: FStAdFunc var_BC
  loc_AFF4E2: FLdPr var_BC
  loc_AFF4E5: Me.Text = from_stack_1
  loc_AFF4EA: FFree1Ad var_BC
  loc_AFF4ED: LitStr "0"
  loc_AFF4F0: FLdPr Me
  loc_AFF4F3: VCallAd Control_ID_DesdeCodiComeTxt
  loc_AFF4F6: FStAdFunc var_BC
  loc_AFF4F9: FLdPr var_BC
  loc_AFF4FC: Me.Text = from_stack_1
  loc_AFF501: FFree1Ad var_BC
  loc_AFF504: LitStr "99999999"
  loc_AFF507: FLdPr Me
  loc_AFF50A: VCallAd Control_ID_HastaCodiComeTxt
  loc_AFF50D: FStAdFunc var_BC
  loc_AFF510: FLdPr var_BC
  loc_AFF513: Me.Text = from_stack_1
  loc_AFF518: FFree1Ad var_BC
  loc_AFF51B: LitI2_Byte &HFF
  loc_AFF51D: FLdPr Me
  loc_AFF520: VCallAd Control_ID_CompletaOpt
  loc_AFF523: FStAdFunc var_BC
  loc_AFF526: FLdPr var_BC
  loc_AFF529: Me.Value = from_stack_1b
  loc_AFF52E: FFree1Ad var_BC
  loc_AFF531: LitStr "0"
  loc_AFF534: FLdPr Me
  loc_AFF537: VCallAd Control_ID_NumeCtaTxt
  loc_AFF53A: FStAdFunc var_BC
  loc_AFF53D: FLdPr var_BC
  loc_AFF540: Me.Text = from_stack_1
  loc_AFF545: FFree1Ad var_BC
  loc_AFF548: FLdPr Me
  loc_AFF54B: VCallAd Control_ID_CuentasFlex
  loc_AFF54E: FStAdFunc var_150
  loc_AFF551: FLdPr var_150
  loc_AFF554: LateIdCall
  loc_AFF55C: LitVarI4
  loc_AFF564: PopAdLdVar
  loc_AFF565: FLdPr var_150
  loc_AFF568: LateIdSt
  loc_AFF56D: LitVarI4
  loc_AFF575: PopAdLdVar
  loc_AFF576: LitVarI4
  loc_AFF57E: PopAdLdVar
  loc_AFF57F: FLdPr var_150
  loc_AFF582: LateIdCallSt
  loc_AFF58A: LitVarI4
  loc_AFF592: PopAdLdVar
  loc_AFF593: LitVarI4
  loc_AFF59B: PopAdLdVar
  loc_AFF59C: FLdPr var_150
  loc_AFF59F: LateIdCallSt
  loc_AFF5A7: LitVarI4
  loc_AFF5AF: PopAdLdVar
  loc_AFF5B0: LitVarI4
  loc_AFF5B8: PopAdLdVar
  loc_AFF5B9: LitVarStr var_12C, "Cuenta"
  loc_AFF5BE: PopAdLdVar
  loc_AFF5BF: FLdPr var_150
  loc_AFF5C2: LateIdCallSt
  loc_AFF5CA: LitVarI4
  loc_AFF5D2: PopAdLdVar
  loc_AFF5D3: LitVarI4
  loc_AFF5DB: PopAdLdVar
  loc_AFF5DC: LitVarStr var_12C, "Apellido y Nombre"
  loc_AFF5E1: PopAdLdVar
  loc_AFF5E2: FLdPr var_150
  loc_AFF5E5: LateIdCallSt
  loc_AFF5ED: LitNothing
  loc_AFF5EF: FStAd var_150 
  loc_AFF5F3: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BAF64
  'Data Table: 4D76AC
  loc_9BAF50: ILdI2 KeyCode
  loc_9BAF53: CI4UI1
  loc_9BAF54: LitI4 &H78
  loc_9BAF59: EqI4
  loc_9BAF5A: BranchF loc_9BAF62
  loc_9BAF5D: Call cmdSalir_Click()
  loc_9BAF62: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9C83D0
  'Data Table: 4D76AC
  loc_9C83B8: ILdRf Me
  loc_9C83BB: FStAdNoPop
  loc_9C83BF: ImpAdLdRf MemVar_D9C5D8
  loc_9C83C2: NewIfNullPr Global
  loc_9C83C5: Global.Unload from_stack_1
  loc_9C83CA: FFree1Ad var_88
  loc_9C83CD: ExitProcHresult
  loc_9C83CE: NeCy
End Sub

Private Sub CodiTiliCmd_Click() 'AA4CAC
  'Data Table: 4D76AC
  loc_AA4BE8: LitI2_Byte 2
  loc_AA4BEA: CUI1I2
  loc_AA4BEC: ImpAdLdRf MemVar_D94160
  loc_AA4BEF: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4BF2: Call dlgBuscarTipodeLiquidacion.ByOficinaPut(from_stack_1v)
  loc_AA4BF7: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = 7"
  loc_AA4BFA: ImpAdLdRf MemVar_D94160
  loc_AA4BFD: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4C00: Call dlgBuscarTipodeLiquidacion.sPasaSelectPut(from_stack_1v)
  loc_AA4C05: LitVar_Missing var_A4
  loc_AA4C08: PopAdLdVar
  loc_AA4C09: LitVarI4
  loc_AA4C11: PopAdLdVar
  loc_AA4C12: ImpAdLdRf MemVar_D94160
  loc_AA4C15: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4C18: dlgBuscarTipodeLiquidacion.Show from_stack_1, from_stack_2
  loc_AA4C1D: FLdRfVar var_A8
  loc_AA4C20: ImpAdLdRf MemVar_D94160
  loc_AA4C23: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4C26: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA4C2B: ILdRf var_A8
  loc_AA4C2E: LitStr vbNullString
  loc_AA4C31: NeStr
  loc_AA4C33: FFree1Str var_A8
  loc_AA4C36: BranchF loc_AA4C97
  loc_AA4C39: FLdRfVar var_A8
  loc_AA4C3C: ImpAdLdRf MemVar_D94160
  loc_AA4C3F: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4C42: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA4C47: ILdRf var_A8
  loc_AA4C4A: FLdPr Me
  loc_AA4C4D: VCallAd Control_ID_
  loc_AA4C50: FStAdFunc var_AC
  loc_AA4C53: FLdPr var_AC
  loc_AA4C56: dlgBuscarTipodeLiquidacion.TextBox.Text = from_stack_1
  loc_AA4C5B: FFree1Str var_A8
  loc_AA4C5E: FFree1Ad var_AC
  loc_AA4C61: LitStr vbNullString
  loc_AA4C64: ImpAdLdRf MemVar_D94160
  loc_AA4C67: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4C6A: Call dlgBuscarTipodeLiquidacion.sPasaCodigoPut(from_stack_1v)
  loc_AA4C6F: FLdRfVar var_A8
  loc_AA4C72: ImpAdLdRf MemVar_D94160
  loc_AA4C75: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4C78: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaDetalleGet()
  loc_AA4C7D: ILdRf var_A8
  loc_AA4C80: FLdPr Me
  loc_AA4C83: VCallAd Control_ID_
  loc_AA4C86: FStAdFunc var_AC
  loc_AA4C89: FLdPr var_AC
  loc_AA4C8C: dlgBuscarTipodeLiquidacion.Label.Caption = from_stack_1
  loc_AA4C91: FFree1Str var_A8
  loc_AA4C94: FFree1Ad var_AC
  loc_AA4C97: FLdPr Me
  loc_AA4C9A: VCallAd Control_ID_CodiTiliTxt
  loc_AA4C9D: CVarAd
  loc_AA4CA1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA4CA6: FFree1Var var_BC = ""
  loc_AA4CA9: ExitProcHresult
End Sub

Private Function Proc_227_24_A6B13C() 'A6B13C
  'Data Table: 4D76AC
  loc_A6B0C8: FLdPr Me
  loc_A6B0CB: VCallAd Control_ID_CuentasFlex
  loc_A6B0CE: FStAdFunc var_88
  loc_A6B0D1: FLdPr var_88
  loc_A6B0D4: LateIdCall
  loc_A6B0DC: LitVarI4
  loc_A6B0E4: PopAdLdVar
  loc_A6B0E5: FLdPr var_88
  loc_A6B0E8: LateIdSt
  loc_A6B0ED: LitVarI4
  loc_A6B0F5: PopAdLdVar
  loc_A6B0F6: LitVarI4
  loc_A6B0FE: PopAdLdVar
  loc_A6B0FF: LitVarStr var_D8, "Cuenta"
  loc_A6B104: PopAdLdVar
  loc_A6B105: FLdPr var_88
  loc_A6B108: LateIdCallSt
  loc_A6B110: LitVarI4
  loc_A6B118: PopAdLdVar
  loc_A6B119: LitVarI4
  loc_A6B121: PopAdLdVar
  loc_A6B122: LitVarStr var_D8, "Apellido y Nombre"
  loc_A6B127: PopAdLdVar
  loc_A6B128: FLdPr var_88
  loc_A6B12B: LateIdCallSt
  loc_A6B133: LitNothing
  loc_A6B135: FStAd var_88 
  loc_A6B139: ExitProcHresult
End Function
