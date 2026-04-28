VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmCalculodeLiquidacionTasas
  Caption = "Calculo de liquidacion de tasas a la propiedad raíz"
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
  ClientWidth = 10980
  ClientHeight = 8952
  Begin VB.CommandButton cmdSalir
    Left = 11760
    Top = 360
    Width = 975
    Height = 855
    TabIndex = 28
    Picture = "frmCalculodeLiquidacionTasas.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame1
    Caption = "CÁLCULO DEL AFORO DE LA TASA MUNICIPAL 01/12/2020-Version-Vieja - 5"
    Left = 240
    Top = 240
    Width = 11055
    Height = 8415
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
      Left = 240
      Top = 3720
      Width = 10695
      Height = 3375
      TabIndex = 19
      Begin VB.TextBox NumeCtaTxt
        ForeColor = &HFF0000&
        Left = 1080
        Top = 240
        Width = 1695
        Height = 345
        TabIndex = 21
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
      Begin VB.CommandButton BuscarCmd
        Left = 2880
        Top = 240
        Width = 450
        Height = 345
        TabIndex = 22
        Picture = "frmCalculodeLiquidacionTasas.frx":0252
        Style = 1
      End
      Begin MSFlexGridLib.MSFlexGrid CuentasFlex
        Left = 240
        Top = 960
        Width = 8775
        Height = 2175
        TabIndex = 25
        OleObjectBlob = "frmCalculodeLiquidacionTasas.frx":0334
        Appearance = 0 'Flat
      End
      Begin VB.Label Label7
        Caption = "Cuenta:"
        Left = 120
        Top = 240
        Width = 840
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
      Begin VB.Label CucuPersLbl
        ForeColor = &HFF0000&
        Left = 3480
        Top = 240
        Width = 1695
        Height = 315
        TabIndex = 23
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
      Begin VB.Label DetaPersLbl
        ForeColor = &HFF0000&
        Left = 3480
        Top = 600
        Width = 5175
        Height = 315
        TabIndex = 24
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
    Begin VB.OptionButton CompletaOpt
      Caption = "Completa"
      Left = 4680
      Top = 720
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
    Begin VB.OptionButton ParcialOpt
      Caption = "Parcial"
      Left = 1800
      Top = 720
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
    Begin VB.CommandButton CodiTiliCmd
      Left = 3000
      Top = 2160
      Width = 450
      Height = 345
      TabIndex = 9
      Picture = "frmCalculodeLiquidacionTasas.frx":0420
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiTiliTxt
      ForeColor = &HFF0000&
      Left = 2460
      Top = 2160
      Width = 495
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
      Top = 7920
      Width = 1335
      Height = 495
      TabIndex = 27
      Picture = "frmCalculodeLiquidacionTasas.frx":051A
      Style = 1
    End
    Begin VB.TextBox HastaCodiInmuTxt
      ForeColor = &HFF0000&
      Left = 2460
      Top = 3120
      Width = 1455
      Height = 375
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
    Begin VB.TextBox DesdeCodiInmuTxt
      ForeColor = &HFF0000&
      Left = 2460
      Top = 2640
      Width = 1455
      Height = 420
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
    Begin VB.TextBox BimeLiquTxt
      ForeColor = &HFF0000&
      Left = 2460
      Top = 1680
      Width = 375
      Height = 420
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
    End
    Begin VB.TextBox PeriLiquTxt
      ForeColor = &HFF0000&
      Left = 2460
      Top = 1200
      Width = 735
      Height = 420
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
    Begin MSMask.MaskEdBox FeveVencMsk
      Left = 6840
      Top = 2640
      Width = 1335
      Height = 345
      Visible = 0   'False
      TabIndex = 14
      OleObjectBlob = "frmCalculodeLiquidacionTasas.frx":0848
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 360
      Top = 7200
      Width = 8775
      Height = 495
      Visible = 0   'False
      TabIndex = 26
      OleObjectBlob = "frmCalculodeLiquidacionTasas.frx":08F8
    End
    Begin MSMask.MaskEdBox FeanVencMsk
      Left = 7800
      Top = 3120
      Width = 1335
      Height = 345
      Visible = 0   'False
      TabIndex = 18
      OleObjectBlob = "frmCalculodeLiquidacionTasas.frx":0960
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin VB.Label Label6
      Caption = "Desde Bimestre:"
      Left = 600
      Top = 1680
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
      Caption = "Fecha de Vencimiento ANUAL:"
      Left = 4320
      Top = 3120
      Width = 3315
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
      Left = 4320
      Top = 2640
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
      Left = 3480
      Top = 2160
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
      Left = 285
      Top = 2160
      Width = 2100
      Height = 300
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
      Left = 840
      Top = 3120
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
      Left = 780
      Top = 2640
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
    Begin VB.Label Label13
      Caption = "Periodo:"
      Left = 1515
      Top = 1200
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
  End
End

Attribute VB_Name = "frmCalculodeLiquidacionTasas"


Private Sub CuentasFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A8ABE0
  'Data Table: 4DD0BC
  loc_A8AB44: ILdI2 KeyCode
  loc_A8AB47: CI4UI1
  loc_A8AB48: LitI4 &H2E
  loc_A8AB4D: EqI4
  loc_A8AB4E: BranchF loc_A8ABB0
  loc_A8AB51: FLdPr Me
  loc_A8AB54: VCallAd Control_ID_CuentasFlex
  loc_A8AB57: FStAdFunc var_88
  loc_A8AB5A: FLdPr var_88
  loc_A8AB5D: LateIdLdVar var_98 DispID_4 0
  loc_A8AB64: CI4Var
  loc_A8AB66: LitI4 1
  loc_A8AB6B: GtI4
  loc_A8AB6C: FFree1Ad var_88
  loc_A8AB6F: FFree1Var var_98 = ""
  loc_A8AB72: BranchF loc_A8ABB0
  loc_A8AB75: OnErrorGoto loc_A8ABB0
  loc_A8AB78: FLdPr Me
  loc_A8AB7B: VCallAd Control_ID_CuentasFlex
  loc_A8AB7E: FStAdFunc var_88
  loc_A8AB81: FLdPr var_88
  loc_A8AB84: LateIdLdVar var_98 DispID_10 0
  loc_A8AB8B: CI4Var
  loc_A8AB8D: CVarI4
  loc_A8AB91: PopAdLdVar
  loc_A8AB92: FLdPr Me
  loc_A8AB95: VCallAd Control_ID_CuentasFlex
  loc_A8AB98: FStAdFunc var_BC
  loc_A8AB9B: FLdPr var_BC
  loc_A8AB9E: LateIdCall
  loc_A8ABA6: FFreeAd var_88 = ""
  loc_A8ABAD: FFree1Var var_98 = ""
  loc_A8ABB0: FLdRfVar var_C0
  loc_A8ABB3: ImpAdCallI2 Err 'rtcErrObj
  loc_A8ABB8: FStAdFunc var_88
  loc_A8ABBB: FLdPr var_88
  loc_A8ABBE:  = Err.Number
  loc_A8ABC3: ILdRf var_C0
  loc_A8ABC6: LitI4 &H753F
  loc_A8ABCB: EqI4
  loc_A8ABCC: FFree1Ad var_88
  loc_A8ABCF: BranchF loc_A8ABD7
  loc_A8ABD2: Call Proc_166_24_A6B334()
  loc_A8ABD7: Call Proc_166_25_A7A3F0()
  loc_A8ABDC: ExitProcHresult
  loc_A8ABDD: FStStrCopy var_B8
End Sub

Private Sub DesdeCodiInmuTxt_GotFocus() '9C7748
  'Data Table: 4DD0BC
  loc_9C7734: FLdPr Me
  loc_9C7737: VCallAd Control_ID_DesdeCodiInmuTxt
  loc_9C773A: CVarAd
  loc_9C773E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7743: FFree1Var var_94 = ""
  loc_9C7746: ExitProcHresult
End Sub

Private Sub DesdeCodiInmuTxt_KeyPress(KeyAscii As Integer) '9D78BC
  'Data Table: 4DD0BC
  loc_9D78A4: LitStr "1234567890"
  loc_9D78A7: FStStrCopy var_88
  loc_9D78AA: FLdRfVar var_88
  loc_9D78AD: ILdRf KeyAscii
  loc_9D78B0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D78B5: IStI2 KeyAscii
  loc_9D78B8: FFree1Str var_88
  loc_9D78BB: ExitProcHresult
End Sub

Private Sub DesdeCodiInmuTxt_Validate(Cancel As Boolean) 'A82B1C
  'Data Table: 4DD0BC
  loc_A82A94: FLdRfVar var_8A
  loc_A82A97: FLdPr Me
  loc_A82A9A: VCallAd Control_ID_DesdeCodiInmuTxt
  loc_A82A9D: FStAdFunc var_88
  loc_A82AA0: FLdPr var_88
  loc_A82AA3:  = Me.Enabled
  loc_A82AA8: FLdI2 var_8A
  loc_A82AAB: LitI2_Byte &HFF
  loc_A82AAD: EqI2
  loc_A82AAE: FFree1Ad var_88
  loc_A82AB1: BranchF loc_A82B1B
  loc_A82AB4: FLdRfVar var_90
  loc_A82AB7: FLdPr Me
  loc_A82ABA: VCallAd Control_ID_DesdeCodiInmuTxt
  loc_A82ABD: FStAdFunc var_88
  loc_A82AC0: FLdPr var_88
  loc_A82AC3:  = Me.Text
  loc_A82AC8: LitI2_Byte &HFF
  loc_A82ACA: LitI2_Byte 0
  loc_A82ACC: ILdRf var_90
  loc_A82ACF: LitStr "Desde Cuenta de Inmueble"
  loc_A82AD2: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A82AD7: FStStrNoPop var_94
  loc_A82ADA: FLdPr Me
  loc_A82ADD: MemStStrCopy
  loc_A82AE1: FFreeStr var_90 = ""
  loc_A82AE8: FFree1Ad var_88
  loc_A82AEB: FLdPr Me
  loc_A82AEE: MemLdStr global_104
  loc_A82AF1: LitStr vbNullString
  loc_A82AF4: NeStr
  loc_A82AF6: BranchF loc_A82B1B
  loc_A82AF9: FLdPr Me
  loc_A82AFC: MemLdStr global_104
  loc_A82AFF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82B04: FLdPr Me
  loc_A82B07: VCallAd Control_ID_DesdeCodiInmuTxt
  loc_A82B0A: CVarAd
  loc_A82B0E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82B13: FFree1Var var_A4 = ""
  loc_A82B16: LitI2_Byte &HFF
  loc_A82B18: IStI2 Cancel
  loc_A82B1B: ExitProcHresult
End Sub

Private Sub HastaCodiInmuTxt_GotFocus() '9C5198
  'Data Table: 4DD0BC
  loc_9C5184: FLdPr Me
  loc_9C5187: VCallAd Control_ID_HastaCodiInmuTxt
  loc_9C518A: CVarAd
  loc_9C518E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5193: FFree1Var var_94 = ""
  loc_9C5196: ExitProcHresult
  loc_9C5197: LtCyR8
End Sub

Private Sub HastaCodiInmuTxt_KeyPress(KeyAscii As Integer) '9D7A38
  'Data Table: 4DD0BC
  loc_9D7A20: LitStr "1234567890"
  loc_9D7A23: FStStrCopy var_88
  loc_9D7A26: FLdRfVar var_88
  loc_9D7A29: ILdRf KeyAscii
  loc_9D7A2C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D7A31: IStI2 KeyAscii
  loc_9D7A34: FFree1Str var_88
  loc_9D7A37: ExitProcHresult
End Sub

Private Sub HastaCodiInmuTxt_Validate(Cancel As Boolean) 'A82CAC
  'Data Table: 4DD0BC
  loc_A82C24: FLdRfVar var_8A
  loc_A82C27: FLdPr Me
  loc_A82C2A: VCallAd Control_ID_HastaCodiInmuTxt
  loc_A82C2D: FStAdFunc var_88
  loc_A82C30: FLdPr var_88
  loc_A82C33:  = Me.Enabled
  loc_A82C38: FLdI2 var_8A
  loc_A82C3B: LitI2_Byte &HFF
  loc_A82C3D: EqI2
  loc_A82C3E: FFree1Ad var_88
  loc_A82C41: BranchF loc_A82CAB
  loc_A82C44: FLdRfVar var_90
  loc_A82C47: FLdPr Me
  loc_A82C4A: VCallAd Control_ID_HastaCodiInmuTxt
  loc_A82C4D: FStAdFunc var_88
  loc_A82C50: FLdPr var_88
  loc_A82C53:  = Me.Text
  loc_A82C58: LitI2_Byte 0
  loc_A82C5A: LitI2_Byte 0
  loc_A82C5C: ILdRf var_90
  loc_A82C5F: LitStr "Hasta Cuenta de Inmueble"
  loc_A82C62: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A82C67: FStStrNoPop var_94
  loc_A82C6A: FLdPr Me
  loc_A82C6D: MemStStrCopy
  loc_A82C71: FFreeStr var_90 = ""
  loc_A82C78: FFree1Ad var_88
  loc_A82C7B: FLdPr Me
  loc_A82C7E: MemLdStr global_104
  loc_A82C81: LitStr vbNullString
  loc_A82C84: NeStr
  loc_A82C86: BranchF loc_A82CAB
  loc_A82C89: FLdPr Me
  loc_A82C8C: MemLdStr global_104
  loc_A82C8F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82C94: FLdPr Me
  loc_A82C97: VCallAd Control_ID_HastaCodiInmuTxt
  loc_A82C9A: CVarAd
  loc_A82C9E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82CA3: FFree1Var var_A4 = ""
  loc_A82CA6: LitI2_Byte &HFF
  loc_A82CA8: IStI2 Cancel
  loc_A82CAB: ExitProcHresult
End Sub

Private Sub CalculoCmd_Click() 'D59454
  'Data Table: 4DD0BC
  loc_D537A8: LitI2_Byte 0
  loc_D537AA: PopTmpLdAd2 var_1B2
  loc_D537AD: Call PeriLiquTxt_Validate(from_stack_1v)
  loc_D537B2: FLdPr Me
  loc_D537B5: MemLdStr global_104
  loc_D537B8: LitStr vbNullString
  loc_D537BB: NeStr
  loc_D537BD: BranchF loc_D537C1
  loc_D537C0: ExitProcHresult
  loc_D537C1: LitI2_Byte 0
  loc_D537C3: PopTmpLdAd2 var_1B2
  loc_D537C6: Call BimeLiquTxt_Validate(from_stack_1v)
  loc_D537CB: FLdPr Me
  loc_D537CE: MemLdStr global_104
  loc_D537D1: LitStr vbNullString
  loc_D537D4: NeStr
  loc_D537D6: BranchF loc_D537DA
  loc_D537D9: ExitProcHresult
  loc_D537DA: LitI2_Byte 0
  loc_D537DC: PopTmpLdAd2 var_1B2
  loc_D537DF: Call CodiTiliTxt_Validate(from_stack_1v)
  loc_D537E4: FLdPr Me
  loc_D537E7: MemLdStr global_104
  loc_D537EA: LitStr vbNullString
  loc_D537ED: NeStr
  loc_D537EF: BranchF loc_D537F3
  loc_D537F2: ExitProcHresult
  loc_D537F3: LitI2_Byte 0
  loc_D537F5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D537FA: FStFPR8 var_104
  loc_D537FD: FLdRfVar var_1BC
  loc_D53800: FLdPr Me
  loc_D53803: VCallAd Control_ID_PeriLiquTxt
  loc_D53806: FStAdFunc var_1B8
  loc_D53809: FLdPr var_1B8
  loc_D5380C:  = Me.Text
  loc_D53811: ILdRf var_1BC
  loc_D53814: CR8Str
  loc_D53816: ImpAdLdI2 MemVar_D93034
  loc_D53819: CR8I2
  loc_D5381A: NeR8
  loc_D5381B: FLdRfVar var_1C4
  loc_D5381E: FLdPr Me
  loc_D53821: VCallAd Control_ID_BimeLiquTxt
  loc_D53824: FStAdFunc var_1C0
  loc_D53827: FLdPr var_1C0
  loc_D5382A:  = Me.Text
  loc_D5382F: ILdRf var_1C4
  loc_D53832: CR8Str
  loc_D53834: LitI2_Byte 1
  loc_D53836: CR8I2
  loc_D53837: EqR4
  loc_D53838: AndI4
  loc_D53839: FFreeStr var_1BC = ""
  loc_D53840: FFreeAd var_1B8 = ""
  loc_D53847: BranchF loc_D53877
  loc_D5384A: LitStr "02/01/"
  loc_D5384D: FLdRfVar var_1BC
  loc_D53850: FLdPr Me
  loc_D53853: VCallAd Control_ID_PeriLiquTxt
  loc_D53856: FStAdFunc var_1B8
  loc_D53859: FLdPr var_1B8
  loc_D5385C:  = Me.Text
  loc_D53861: ILdRf var_1BC
  loc_D53864: ConcatStr
  loc_D53865: FStStrNoPop var_1C4
  loc_D53868: CDateStr
  loc_D5386A: FStFPR8 var_104
  loc_D5386D: FFreeStr var_1BC = ""
  loc_D53874: FFree1Ad var_1B8
  loc_D53877: LitStr vbNullString
  loc_D5387A: FStStrCopy var_158
  loc_D5387D: LitI2_Byte 1
  loc_D5387F: CUI1I2
  loc_D53881: FLdPr Me
  loc_D53884: MemLdRfVar from_stack_1.global_100
  loc_D53887: FLdPr Me
  loc_D5388A: VCallAd Control_ID_CuentasFlex
  loc_D5388D: FStAdFunc var_1B8
  loc_D53890: FLdPr var_1B8
  loc_D53893: LateIdLdVar var_1D4 DispID_4 0
  loc_D5389A: CI4Var
  loc_D5389C: LitI4 1
  loc_D538A1: SubI4
  loc_D538A2: CUI1I4
  loc_D538A4: FFree1Ad var_1B8
  loc_D538A7: FFree1Var var_1D4 = ""
  loc_D538AA: ForUI1 var_1D8
  loc_D538B0: FLdPr Me
  loc_D538B3: MemLdUI1 global_100
  loc_D538B7: CI4UI1
  loc_D538B8: CVarI4
  loc_D538BC: PopAdLdVar
  loc_D538BD: LitVarI4
  loc_D538C5: PopAdLdVar
  loc_D538C6: FLdPr Me
  loc_D538C9: VCallAd Control_ID_CuentasFlex
  loc_D538CC: FStAdFunc var_1B8
  loc_D538CF: FLdPr var_1B8
  loc_D538D2: LateIdCallLdVar
  loc_D538DC: PopAd
  loc_D538DE: ILdRf var_158
  loc_D538E1: CVarStr var_2B8
  loc_D538E4: LitStr ","
  loc_D538E7: FLdPr Me
  loc_D538EA: MemLdUI1 global_100
  loc_D538EE: CI4UI1
  loc_D538EF: CVarI4
  loc_D538F3: PopAdLdVar
  loc_D538F4: LitVarI4
  loc_D538FC: PopAdLdVar
  loc_D538FD: FLdPr Me
  loc_D53900: VCallAd Control_ID_CuentasFlex
  loc_D53903: FStAdFunc var_1C0
  loc_D53906: FLdPr var_1C0
  loc_D53909: LateIdCallLdVar
  loc_D53913: CStrVarTmp
  loc_D53914: FStStrNoPop var_1BC
  loc_D53917: ConcatStr
  loc_D53918: CVarStr var_298
  loc_D5391B: FLdRfVar var_1D4
  loc_D5391E: CStrVarTmp
  loc_D5391F: CVarStr var_288
  loc_D53922: ILdRf var_158
  loc_D53925: LitStr vbNullString
  loc_D53928: EqStr
  loc_D5392A: CVarBoolI2 var_278
  loc_D5392E: FLdRfVar var_2A8
  loc_D53931: ImpAdCallFPR4  = IIf(, , )
  loc_D53936: FLdRfVar var_2A8
  loc_D53939: ConcatVar var_2C8
  loc_D5393D: CStrVarTmp
  loc_D5393E: FStStr var_158
  loc_D53941: FFree1Str var_1BC
  loc_D53944: FFreeAd var_1B8 = ""
  loc_D5394B: FFreeVar var_1D4 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = ""
  loc_D5395C: FLdPr Me
  loc_D5395F: MemLdRfVar from_stack_1.global_100
  loc_D53962: NextUI1
  loc_D53968: LitStr "SELECT ConcTili, CoreTili, DescTili, DeanTili, GastTili, CogaTili FROM tipoliqu "
  loc_D5396B: LitStr " WHERE CodiOfic = 1"
  loc_D5396E: ConcatStr
  loc_D5396F: FStStrNoPop var_1BC
  loc_D53972: LitStr " AND CodiTili = "
  loc_D53975: ConcatStr
  loc_D53976: FStStrNoPop var_2CC
  loc_D53979: FLdRfVar var_1C4
  loc_D5397C: FLdPr Me
  loc_D5397F: VCallAd Control_ID_CodiTiliTxt
  loc_D53982: FStAdFunc var_1B8
  loc_D53985: FLdPr var_1B8
  loc_D53988:  = Me.Text
  loc_D5398D: ILdRf var_1C4
  loc_D53990: ConcatStr
  loc_D53991: FStStrNoPop var_2D0
  loc_D53994: LitStr " ORDER BY CodiOfic, CodiTili"
  loc_D53997: ConcatStr
  loc_D53998: FStStrNoPop var_2D4
  loc_D5399B: FLdPr Me
  loc_D5399E: MemLdRfVar from_stack_1.global_68
  loc_D539A1: NewIfNullPr clstipoliqu
  loc_D539A4: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_D539A9: FFreeStr var_1BC = "": var_2CC = "": var_1C4 = "": var_2D0 = ""
  loc_D539B6: FFree1Ad var_1B8
  loc_D539B9: FLdRfVar var_2D8
  loc_D539BC: FLdPr Me
  loc_D539BF: MemLdRfVar from_stack_1.global_68
  loc_D539C2: NewIfNullPr clstipoliqu
  loc_D539C5: from_stack_1 = clstipoliqu.RecordCount
  loc_D539CA: ILdRf var_2D8
  loc_D539CD: LitI4 1
  loc_D539D2: EqI4
  loc_D539D3: BranchF loc_D53A99
  loc_D539D6: FLdRfVar var_2E0
  loc_D539D9: FLdPr Me
  loc_D539DC: MemLdRfVar from_stack_1.global_68
  loc_D539DF: NewIfNullPr clstipoliqu
  loc_D539E2: from_stack_1 = clstipoliqu.DescTili
  loc_D539E7: FLdFPR8 var_2E0
  loc_D539EA: FnCDblR8
  loc_D539EC: FStFPR8 var_C4
  loc_D539EF: FLdRfVar var_2E0
  loc_D539F2: FLdPr Me
  loc_D539F5: MemLdRfVar from_stack_1.global_68
  loc_D539F8: NewIfNullPr clstipoliqu
  loc_D539FB: from_stack_1 = clstipoliqu.DeanTili
  loc_D53A00: FLdFPR8 var_2E0
  loc_D53A03: FnCDblR8
  loc_D53A05: FStFPR8 var_CC
  loc_D53A08: FLdRfVar var_2E0
  loc_D53A0B: FLdPr Me
  loc_D53A0E: MemLdRfVar from_stack_1.global_68
  loc_D53A11: NewIfNullPr clstipoliqu
  loc_D53A14: from_stack_1 = clstipoliqu.GastTili
  loc_D53A19: FLdFPR8 var_2E0
  loc_D53A1C: FnCDblR8
  loc_D53A1E: FStFPR8 var_D4
  loc_D53A21: FLdRfVar var_1BC
  loc_D53A24: FLdPr Me
  loc_D53A27: MemLdRfVar from_stack_1.global_68
  loc_D53A2A: NewIfNullPr clstipoliqu
  loc_D53A2D: from_stack_1 = clstipoliqu.CogaTili
  loc_D53A32: ILdRf var_1BC
  loc_D53A35: CR8Str
  loc_D53A37: FStFPR8 var_DC
  loc_D53A3A: FFree1Str var_1BC
  loc_D53A3D: FLdRfVar var_1BC
  loc_D53A40: FLdPr Me
  loc_D53A43: MemLdRfVar from_stack_1.global_68
  loc_D53A46: NewIfNullPr clstipoliqu
  loc_D53A49: from_stack_1 = clstipoliqu.CoreTili
  loc_D53A4E: ILdRf var_1BC
  loc_D53A51: LitStr vbNullString
  loc_D53A54: EqStr
  loc_D53A56: FFree1Str var_1BC
  loc_D53A59: BranchF loc_D53A68
  loc_D53A5C: LitStr "El concepto de recargo no esta parametrizado en el tipo de liquidación. Verifique"
  loc_D53A5F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D53A64: ExitProcHresult
  loc_D53A65: Branch loc_D53A96
  loc_D53A68: FLdRfVar var_1BC
  loc_D53A6B: FLdPr Me
  loc_D53A6E: MemLdRfVar from_stack_1.global_68
  loc_D53A71: NewIfNullPr clstipoliqu
  loc_D53A74: from_stack_1 = clstipoliqu.CoreTili
  loc_D53A79: FLdZeroAd var_1BC
  loc_D53A7C: FStStr var_E4
  loc_D53A7F: FLdRfVar var_1BC
  loc_D53A82: FLdPr Me
  loc_D53A85: MemLdRfVar from_stack_1.global_68
  loc_D53A88: NewIfNullPr clstipoliqu
  loc_D53A8B: from_stack_1 = clstipoliqu.ConcTili
  loc_D53A90: FLdZeroAd var_1BC
  loc_D53A93: FStStr var_E0
  loc_D53A96: Branch loc_D53AB1
  loc_D53A99: LitI2_Byte 0
  loc_D53A9B: CR8I2
  loc_D53A9C: FStFPR8 var_C4
  loc_D53A9F: LitI2_Byte 0
  loc_D53AA1: CR8I2
  loc_D53AA2: FStFPR8 var_CC
  loc_D53AA5: LitI2_Byte 0
  loc_D53AA7: CR8I2
  loc_D53AA8: FStFPR8 var_D4
  loc_D53AAB: LitI2_Byte 0
  loc_D53AAD: CR8I2
  loc_D53AAE: FStFPR8 var_DC
  loc_D53AB1: LitI2_Byte 0
  loc_D53AB3: CR8I2
  loc_D53AB4: FStFPR8 var_A4
  loc_D53AB7: FLdRfVar var_1BC
  loc_D53ABA: FLdPr Me
  loc_D53ABD: VCallAd Control_ID_PeriLiquTxt
  loc_D53AC0: FStAdFunc var_1B8
  loc_D53AC3: FLdPr var_1B8
  loc_D53AC6:  = Me.Text
  loc_D53ACB: FLdRfVar var_1C4
  loc_D53ACE: FLdPr Me
  loc_D53AD1: VCallAd Control_ID_CodiTiliTxt
  loc_D53AD4: FStAdFunc var_1C0
  loc_D53AD7: FLdPr var_1C0
  loc_D53ADA:  = Me.Text
  loc_D53ADF: ILdRf var_1C4
  loc_D53AE2: CUI1Str
  loc_D53AE4: ILdRf var_1BC
  loc_D53AE7: CI2Str
  loc_D53AE9: FLdPr Me
  loc_D53AEC: MemLdRfVar from_stack_1.global_76
  loc_D53AEF: NewIfNullPr clsliqutasa
  loc_D53AF2: Call clsliqutasa.BorraLiquidacion(from_stack_1v, from_stack_2v)
  loc_D53AF7: FFreeStr var_1BC = ""
  loc_D53AFE: FFreeAd var_1B8 = ""
  loc_D53B05: FLdRfVar var_1BC
  loc_D53B08: FLdPr Me
  loc_D53B0B: VCallAd Control_ID_PeriLiquTxt
  loc_D53B0E: FStAdFunc var_1B8
  loc_D53B11: FLdPr var_1B8
  loc_D53B14:  = Me.Text
  loc_D53B19: FLdRfVar var_1C4
  loc_D53B1C: FLdPr Me
  loc_D53B1F: VCallAd Control_ID_CodiTiliTxt
  loc_D53B22: FStAdFunc var_1C0
  loc_D53B25: FLdPr var_1C0
  loc_D53B28:  = Me.Text
  loc_D53B2D: FLdRfVar var_1B2
  loc_D53B30: ILdRf var_1C4
  loc_D53B33: CUI1Str
  loc_D53B35: LitI2_Byte 1
  loc_D53B37: CUI1I2
  loc_D53B39: ILdRf var_1BC
  loc_D53B3C: CI2Str
  loc_D53B3E: FLdPr Me
  loc_D53B41: MemLdRfVar from_stack_1.global_52
  loc_D53B44: NewIfNullPr clsliquidacion
  loc_D53B47: from_stack_4v = clsliquidacion.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D53B4C: FLdI2 var_1B2
  loc_D53B4F: FStI2 var_8A
  loc_D53B52: FFreeStr var_1BC = ""
  loc_D53B59: FFreeAd var_1B8 = ""
  loc_D53B60: FLdRfVar var_1BC
  loc_D53B63: FLdPr Me
  loc_D53B66: VCallAd Control_ID_PeriLiquTxt
  loc_D53B69: FStAdFunc var_1B8
  loc_D53B6C: FLdPr var_1B8
  loc_D53B6F:  = Me.Text
  loc_D53B74: FLdRfVar var_1C4
  loc_D53B77: FLdPr Me
  loc_D53B7A: VCallAd Control_ID_CodiTiliTxt
  loc_D53B7D: FStAdFunc var_1C0
  loc_D53B80: FLdPr var_1C0
  loc_D53B83:  = Me.Text
  loc_D53B88: FLdRfVar var_2CC
  loc_D53B8B: FLdPr Me
  loc_D53B8E: VCallAd Control_ID_BimeLiquTxt
  loc_D53B91: FStAdFunc var_2E4
  loc_D53B94: FLdPr var_2E4
  loc_D53B97:  = Me.Text
  loc_D53B9C: FLdRfVar var_1B2
  loc_D53B9F: FLdPr Me
  loc_D53BA2: VCallAd Control_ID_CompletaOpt
  loc_D53BA5: FStAdFunc var_2E8
  loc_D53BA8: FLdPr var_2E8
  loc_D53BAB:  = Me.Value
  loc_D53BB0: LitVarI2 var_268, 1
  loc_D53BB5: LitVarI2 var_1D4, 0
  loc_D53BBA: FLdI2 var_1B2
  loc_D53BBD: LitI2_Byte &HFF
  loc_D53BBF: EqI2
  loc_D53BC0: CVarBoolI2 var_1E8
  loc_D53BC4: FLdRfVar var_288
  loc_D53BC7: ImpAdCallFPR4  = IIf(, , )
  loc_D53BCC: FLdRfVar var_288
  loc_D53BCF: CUI1Var
  loc_D53BD1: ILdRf var_2CC
  loc_D53BD4: CI2Str
  loc_D53BD6: FLdI2 var_8A
  loc_D53BD9: ILdRf var_1C4
  loc_D53BDC: CUI1Str
  loc_D53BDE: LitI2_Byte 1
  loc_D53BE0: CUI1I2
  loc_D53BE2: ILdRf var_1BC
  loc_D53BE5: CI2Str
  loc_D53BE7: FLdPr Me
  loc_D53BEA: MemLdRfVar from_stack_1.global_52
  loc_D53BED: NewIfNullPr clsliquidacion
  loc_D53BF0: Call clsliquidacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_D53BF5: FFreeStr var_1BC = "": var_1C4 = ""
  loc_D53BFE: FFreeAd var_1B8 = "": var_1C0 = "": var_2E4 = ""
  loc_D53C09: FFreeVar var_1E8 = "": var_1D4 = "": var_268 = ""
  loc_D53C14: FLdPr Me
  loc_D53C17: MemLdI2 global_96
  loc_D53C1A: CUI1I2
  loc_D53C1C: FLdPr Me
  loc_D53C1F: MemLdRfVar from_stack_1.global_100
  loc_D53C22: FLdPr Me
  loc_D53C25: MemLdI2 global_98
  loc_D53C28: CUI1I2
  loc_D53C2A: ForUI1 var_2EC
  loc_D53C30: FLdPr Me
  loc_D53C33: MemLdUI1 global_100
  loc_D53C37: FStUI1 var_2EE
  loc_D53C3B: FLdUI1
  loc_D53C3F: LitI2_Byte 1
  loc_D53C41: CUI1I2
  loc_D53C43: EqI2
  loc_D53C44: BranchF loc_D53C9D
  loc_D53C47: FLdRfVar var_1BC
  loc_D53C4A: FLdPr Me
  loc_D53C4D: VCallAd Control_ID_PeriLiquTxt
  loc_D53C50: FStAdFunc var_1B8
  loc_D53C53: FLdPr var_1B8
  loc_D53C56:  = Me.Text
  loc_D53C5B: FLdRfVar var_1C4
  loc_D53C5E: FLdPr Me
  loc_D53C61: VCallAd Control_ID_CodiTiliTxt
  loc_D53C64: FStAdFunc var_1C0
  loc_D53C67: FLdPr var_1C0
  loc_D53C6A:  = Me.Text
  loc_D53C6F: ILdRf var_1C4
  loc_D53C72: CUI1Str
  loc_D53C74: LitI2_Byte 1
  loc_D53C76: CUI1I2
  loc_D53C78: FLdPr Me
  loc_D53C7B: MemLdUI1 global_100
  loc_D53C7F: ILdRf var_1BC
  loc_D53C82: CI2Str
  loc_D53C84: ImpAdCallI2 Proc_270_61_ABC3B4(, , , )
  loc_D53C89: FStStr var_124
  loc_D53C8C: FFreeStr var_1BC = ""
  loc_D53C93: FFreeAd var_1B8 = ""
  loc_D53C9A: Branch loc_D53E84
  loc_D53C9D: FLdUI1
  loc_D53CA1: LitI2_Byte 2
  loc_D53CA3: CUI1I2
  loc_D53CA5: EqI2
  loc_D53CA6: BranchF loc_D53CFF
  loc_D53CA9: FLdRfVar var_1BC
  loc_D53CAC: FLdPr Me
  loc_D53CAF: VCallAd Control_ID_PeriLiquTxt
  loc_D53CB2: FStAdFunc var_1B8
  loc_D53CB5: FLdPr var_1B8
  loc_D53CB8:  = Me.Text
  loc_D53CBD: FLdRfVar var_1C4
  loc_D53CC0: FLdPr Me
  loc_D53CC3: VCallAd Control_ID_CodiTiliTxt
  loc_D53CC6: FStAdFunc var_1C0
  loc_D53CC9: FLdPr var_1C0
  loc_D53CCC:  = Me.Text
  loc_D53CD1: ILdRf var_1C4
  loc_D53CD4: CUI1Str
  loc_D53CD6: LitI2_Byte 1
  loc_D53CD8: CUI1I2
  loc_D53CDA: FLdPr Me
  loc_D53CDD: MemLdUI1 global_100
  loc_D53CE1: ILdRf var_1BC
  loc_D53CE4: CI2Str
  loc_D53CE6: ImpAdCallI2 Proc_270_61_ABC3B4(, , , )
  loc_D53CEB: FStStr var_128
  loc_D53CEE: FFreeStr var_1BC = ""
  loc_D53CF5: FFreeAd var_1B8 = ""
  loc_D53CFC: Branch loc_D53E84
  loc_D53CFF: FLdUI1
  loc_D53D03: LitI2_Byte 3
  loc_D53D05: CUI1I2
  loc_D53D07: EqI2
  loc_D53D08: BranchF loc_D53D61
  loc_D53D0B: FLdRfVar var_1BC
  loc_D53D0E: FLdPr Me
  loc_D53D11: VCallAd Control_ID_PeriLiquTxt
  loc_D53D14: FStAdFunc var_1B8
  loc_D53D17: FLdPr var_1B8
  loc_D53D1A:  = Me.Text
  loc_D53D1F: FLdRfVar var_1C4
  loc_D53D22: FLdPr Me
  loc_D53D25: VCallAd Control_ID_CodiTiliTxt
  loc_D53D28: FStAdFunc var_1C0
  loc_D53D2B: FLdPr var_1C0
  loc_D53D2E:  = Me.Text
  loc_D53D33: ILdRf var_1C4
  loc_D53D36: CUI1Str
  loc_D53D38: LitI2_Byte 1
  loc_D53D3A: CUI1I2
  loc_D53D3C: FLdPr Me
  loc_D53D3F: MemLdUI1 global_100
  loc_D53D43: ILdRf var_1BC
  loc_D53D46: CI2Str
  loc_D53D48: ImpAdCallI2 Proc_270_61_ABC3B4(, , , )
  loc_D53D4D: FStStr var_12C
  loc_D53D50: FFreeStr var_1BC = ""
  loc_D53D57: FFreeAd var_1B8 = ""
  loc_D53D5E: Branch loc_D53E84
  loc_D53D61: FLdUI1
  loc_D53D65: LitI2_Byte 4
  loc_D53D67: CUI1I2
  loc_D53D69: EqI2
  loc_D53D6A: BranchF loc_D53DC3
  loc_D53D6D: FLdRfVar var_1BC
  loc_D53D70: FLdPr Me
  loc_D53D73: VCallAd Control_ID_PeriLiquTxt
  loc_D53D76: FStAdFunc var_1B8
  loc_D53D79: FLdPr var_1B8
  loc_D53D7C:  = Me.Text
  loc_D53D81: FLdRfVar var_1C4
  loc_D53D84: FLdPr Me
  loc_D53D87: VCallAd Control_ID_CodiTiliTxt
  loc_D53D8A: FStAdFunc var_1C0
  loc_D53D8D: FLdPr var_1C0
  loc_D53D90:  = Me.Text
  loc_D53D95: ILdRf var_1C4
  loc_D53D98: CUI1Str
  loc_D53D9A: LitI2_Byte 1
  loc_D53D9C: CUI1I2
  loc_D53D9E: FLdPr Me
  loc_D53DA1: MemLdUI1 global_100
  loc_D53DA5: ILdRf var_1BC
  loc_D53DA8: CI2Str
  loc_D53DAA: ImpAdCallI2 Proc_270_61_ABC3B4(, , , )
  loc_D53DAF: FStStr var_130
  loc_D53DB2: FFreeStr var_1BC = ""
  loc_D53DB9: FFreeAd var_1B8 = ""
  loc_D53DC0: Branch loc_D53E84
  loc_D53DC3: FLdUI1
  loc_D53DC7: LitI2_Byte 5
  loc_D53DC9: CUI1I2
  loc_D53DCB: EqI2
  loc_D53DCC: BranchF loc_D53E25
  loc_D53DCF: FLdRfVar var_1BC
  loc_D53DD2: FLdPr Me
  loc_D53DD5: VCallAd Control_ID_PeriLiquTxt
  loc_D53DD8: FStAdFunc var_1B8
  loc_D53DDB: FLdPr var_1B8
  loc_D53DDE:  = Me.Text
  loc_D53DE3: FLdRfVar var_1C4
  loc_D53DE6: FLdPr Me
  loc_D53DE9: VCallAd Control_ID_CodiTiliTxt
  loc_D53DEC: FStAdFunc var_1C0
  loc_D53DEF: FLdPr var_1C0
  loc_D53DF2:  = Me.Text
  loc_D53DF7: ILdRf var_1C4
  loc_D53DFA: CUI1Str
  loc_D53DFC: LitI2_Byte 1
  loc_D53DFE: CUI1I2
  loc_D53E00: FLdPr Me
  loc_D53E03: MemLdUI1 global_100
  loc_D53E07: ILdRf var_1BC
  loc_D53E0A: CI2Str
  loc_D53E0C: ImpAdCallI2 Proc_270_61_ABC3B4(, , , )
  loc_D53E11: FStStr var_134
  loc_D53E14: FFreeStr var_1BC = ""
  loc_D53E1B: FFreeAd var_1B8 = ""
  loc_D53E22: Branch loc_D53E84
  loc_D53E25: FLdUI1
  loc_D53E29: LitI2_Byte 6
  loc_D53E2B: CUI1I2
  loc_D53E2D: EqI2
  loc_D53E2E: BranchF loc_D53E84
  loc_D53E31: FLdRfVar var_1BC
  loc_D53E34: FLdPr Me
  loc_D53E37: VCallAd Control_ID_PeriLiquTxt
  loc_D53E3A: FStAdFunc var_1B8
  loc_D53E3D: FLdPr var_1B8
  loc_D53E40:  = Me.Text
  loc_D53E45: FLdRfVar var_1C4
  loc_D53E48: FLdPr Me
  loc_D53E4B: VCallAd Control_ID_CodiTiliTxt
  loc_D53E4E: FStAdFunc var_1C0
  loc_D53E51: FLdPr var_1C0
  loc_D53E54:  = Me.Text
  loc_D53E59: ILdRf var_1C4
  loc_D53E5C: CUI1Str
  loc_D53E5E: LitI2_Byte 1
  loc_D53E60: CUI1I2
  loc_D53E62: FLdPr Me
  loc_D53E65: MemLdUI1 global_100
  loc_D53E69: ILdRf var_1BC
  loc_D53E6C: CI2Str
  loc_D53E6E: ImpAdCallI2 Proc_270_61_ABC3B4(, , , )
  loc_D53E73: FStStr var_138
  loc_D53E76: FFreeStr var_1BC = ""
  loc_D53E7D: FFreeAd var_1B8 = ""
  loc_D53E84: FLdPr Me
  loc_D53E87: MemLdRfVar from_stack_1.global_100
  loc_D53E8A: NextUI1
  loc_D53E90: FLdRfVar var_1B2
  loc_D53E93: FLdPr Me
  loc_D53E96: VCallAd Control_ID_ParcialOpt
  loc_D53E99: FStAdFunc var_1B8
  loc_D53E9C: FLdPr var_1B8
  loc_D53E9F:  = Me.Value
  loc_D53EA4: FLdI2 var_1B2
  loc_D53EA7: LitI2_Byte &HFF
  loc_D53EA9: EqI2
  loc_D53EAA: FFree1Ad var_1B8
  loc_D53EAD: BranchF loc_D5400B
  loc_D53EB0: ILdRf var_158
  loc_D53EB3: LitStr vbNullString
  loc_D53EB6: NeStr
  loc_D53EB8: BranchF loc_D53ED2
  loc_D53EBB: LitStr " WHERE inmueble.CodiInmu IN ("
  loc_D53EBE: ILdRf var_158
  loc_D53EC1: ConcatStr
  loc_D53EC2: FStStrNoPop var_1BC
  loc_D53EC5: LitStr ")"
  loc_D53EC8: ConcatStr
  loc_D53EC9: FStStr var_15C
  loc_D53ECC: FFree1Str var_1BC
  loc_D53ECF: Branch loc_D53F24
  loc_D53ED2: LitStr " WHERE CodiInmu >= "
  loc_D53ED5: FLdRfVar var_1BC
  loc_D53ED8: FLdPr Me
  loc_D53EDB: VCallAd Control_ID_DesdeCodiInmuTxt
  loc_D53EDE: FStAdFunc var_1B8
  loc_D53EE1: FLdPr var_1B8
  loc_D53EE4:  = Me.Text
  loc_D53EE9: ILdRf var_1BC
  loc_D53EEC: ConcatStr
  loc_D53EED: FStStrNoPop var_1C4
  loc_D53EF0: LitStr " AND CodiInmu <= "
  loc_D53EF3: ConcatStr
  loc_D53EF4: FStStrNoPop var_2D0
  loc_D53EF7: FLdRfVar var_2CC
  loc_D53EFA: FLdPr Me
  loc_D53EFD: VCallAd Control_ID_HastaCodiInmuTxt
  loc_D53F00: FStAdFunc var_1C0
  loc_D53F03: FLdPr var_1C0
  loc_D53F06:  = Me.Text
  loc_D53F0B: ILdRf var_2CC
  loc_D53F0E: ConcatStr
  loc_D53F0F: FStStr var_15C
  loc_D53F12: FFreeStr var_1BC = "": var_1C4 = "": var_2D0 = ""
  loc_D53F1D: FFreeAd var_1B8 = ""
  loc_D53F24: LitI2_Byte 0
  loc_D53F26: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D53F2B: FStFPR8 var_2E0
  loc_D53F2E: LitStr "SELECT inmueble.CodiInmu, CucuPers,SupeInmu, CodiExce, FfexInmu, CodiRuta, CultInmu,"
  loc_D53F31: LitStr " inmueble.CocpInmu,inmueble.DecpInmu,inmueble.NupoInmu,inmueble.CobpInmu,inmueble.DebpInmu,inmueble.MapoInmu,inmueble.CapoInmu,inmueble.UbpoInmu,inmueble.ColpInmu,inmueble.DelpInmu,inmueble.CoppInmu"
  loc_D53F34: ConcatStr
  loc_D53F35: FStStrNoPop var_1BC
  loc_D53F38: LitStr " FROM inmueble "
  loc_D53F3B: ConcatStr
  loc_D53F3C: FStStrNoPop var_1C4
  loc_D53F3F: ILdRf var_15C
  loc_D53F42: ConcatStr
  loc_D53F43: FStStrNoPop var_2CC
  loc_D53F46: LitStr " AND PeriInmu = "
  loc_D53F49: ConcatStr
  loc_D53F4A: FStStrNoPop var_2D4
  loc_D53F4D: FLdRfVar var_2D0
  loc_D53F50: FLdPr Me
  loc_D53F53: VCallAd Control_ID_PeriLiquTxt
  loc_D53F56: FStAdFunc var_1B8
  loc_D53F59: FLdPr var_1B8
  loc_D53F5C:  = Me.Text
  loc_D53F61: ILdRf var_2D0
  loc_D53F64: ConcatStr
  loc_D53F65: FStStrNoPop var_2F4
  loc_D53F68: LitStr " AND BimeInmu = "
  loc_D53F6B: ConcatStr
  loc_D53F6C: FStStrNoPop var_2FC
  loc_D53F6F: FLdRfVar var_2F8
  loc_D53F72: FLdPr Me
  loc_D53F75: VCallAd Control_ID_BimeLiquTxt
  loc_D53F78: FStAdFunc var_1C0
  loc_D53F7B: FLdPr var_1C0
  loc_D53F7E:  = Me.Text
  loc_D53F83: ILdRf var_2F8
  loc_D53F86: ConcatStr
  loc_D53F87: FStStrNoPop var_300
  loc_D53F8A: LitStr " AND (inmueble.BajaFeho IS NULL "
  loc_D53F8D: ConcatStr
  loc_D53F8E: FStStrNoPop var_304
  loc_D53F91: LitStr " OR   inmueble.BajaFeho > '"
  loc_D53F94: ConcatStr
  loc_D53F95: FStStrNoPop var_308
  loc_D53F98: LitI4 1
  loc_D53F9D: LitI4 1
  loc_D53FA2: LitVarStr var_1F8, "yyyy-mm-dd"
  loc_D53FA7: FStVarCopyObj var_268
  loc_D53FAA: FLdRfVar var_268
  loc_D53FAD: FLdFPR8 var_2E0
  loc_D53FB0: CVarDate var_1D4
  loc_D53FB4: ImpAdCallI2 Format$(, )
  loc_D53FB9: FStStrNoPop var_30C
  loc_D53FBC: ConcatStr
  loc_D53FBD: FStStrNoPop var_310
  loc_D53FC0: LitStr "')"
  loc_D53FC3: ConcatStr
  loc_D53FC4: FStStrNoPop var_314
  loc_D53FC7: LitStr " ORDER BY CodiInmu"
  loc_D53FCA: ConcatStr
  loc_D53FCB: FStStrNoPop var_318
  loc_D53FCE: FLdPr Me
  loc_D53FD1: MemLdRfVar from_stack_1.global_88
  loc_D53FD4: NewIfNullPr clsboleto
  loc_D53FD7: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D53FDC: FFreeStr var_1BC = "": var_1C4 = "": var_2CC = "": var_2D4 = "": var_2D0 = "": var_2F4 = "": var_2FC = "": var_2F8 = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = ""
  loc_D53FFD: FFreeAd var_1B8 = ""
  loc_D54004: FFreeVar var_1D4 = ""
  loc_D5400B: FLdRfVar var_1B2
  loc_D5400E: FLdPr Me
  loc_D54011: VCallAd Control_ID_CompletaOpt
  loc_D54014: FStAdFunc var_1B8
  loc_D54017: FLdPr var_1B8
  loc_D5401A:  = Me.Value
  loc_D5401F: FLdI2 var_1B2
  loc_D54022: LitI2_Byte &HFF
  loc_D54024: EqI2
  loc_D54025: FFree1Ad var_1B8
  loc_D54028: BranchF loc_D54104
  loc_D5402B: ILdRf var_158
  loc_D5402E: LitStr vbNullString
  loc_D54031: NeStr
  loc_D54033: BranchF loc_D5404D
  loc_D54036: LitStr " WHERE vpadrones_parcela.nro_padron IN ("
  loc_D54039: ILdRf var_158
  loc_D5403C: ConcatStr
  loc_D5403D: FStStrNoPop var_1BC
  loc_D54040: LitStr ")"
  loc_D54043: ConcatStr
  loc_D54044: FStStr var_15C
  loc_D54047: FFree1Str var_1BC
  loc_D5404A: Branch loc_D540B1
  loc_D5404D: LitStr " WHERE vpadrones_parcela.nro_padron >= '"
  loc_D54050: FLdRfVar var_1BC
  loc_D54053: FLdPr Me
  loc_D54056: VCallAd Control_ID_DesdeCodiInmuTxt
  loc_D54059: FStAdFunc var_1B8
  loc_D5405C: FLdPr var_1B8
  loc_D5405F:  = Me.Text
  loc_D54064: ILdRf var_1BC
  loc_D54067: ConcatStr
  loc_D54068: FStStrNoPop var_1C4
  loc_D5406B: LitStr "'"
  loc_D5406E: ConcatStr
  loc_D5406F: FStStrNoPop var_2CC
  loc_D54072: LitStr " AND vpadrones_parcela.nro_padron <= '"
  loc_D54075: ConcatStr
  loc_D54076: FStStrNoPop var_2D4
  loc_D54079: FLdRfVar var_2D0
  loc_D5407C: FLdPr Me
  loc_D5407F: VCallAd Control_ID_HastaCodiInmuTxt
  loc_D54082: FStAdFunc var_1C0
  loc_D54085: FLdPr var_1C0
  loc_D54088:  = Me.Text
  loc_D5408D: ILdRf var_2D0
  loc_D54090: ConcatStr
  loc_D54091: FStStrNoPop var_2F4
  loc_D54094: LitStr "'"
  loc_D54097: ConcatStr
  loc_D54098: FStStr var_15C
  loc_D5409B: FFreeStr var_1BC = "": var_1C4 = "": var_2CC = "": var_2D4 = "": var_2D0 = ""
  loc_D540AA: FFreeAd var_1B8 = ""
  loc_D540B1: LitStr "SELECT vpadrones_parcela.nro_padron, IFNULL(vpadrones_parcela.parcela_ryb_cod,0) parcela_ryb_cod, IFNULL(parcela_ryb_descrip,'') parcela_ryb_descrip, IFNULL(vpadrones_parcela.parcela_avaluo,0) parcela_avaluo, IFNULL(vpadrones_parcela.parcela_superficie,'0') parcela_superficie, IFNULL(CUIT,'') CucuPers, denominacion, "
  loc_D540B4: LitStr " IFNULL(dependencia,'0') dependencia, distrito, IFNULL(seccion,'0') seccion, IFNULL(manzana,'0') manzana, IFNULL(parcela,'0') parcela, IFNULL(subparcela,'0') subparcela, IFNULL(dig_veri,'') dig_veri "
  loc_D540B7: ConcatStr
  loc_D540B8: FStStrNoPop var_1BC
  loc_D540BB: LitStr " FROM vpadrones_parcela "
  loc_D540BE: ConcatStr
  loc_D540BF: FStStrNoPop var_1C4
  loc_D540C2: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron =  vpadrones_parcela.nro_padron"
  loc_D540C5: ConcatStr
  loc_D540C6: FStStrNoPop var_2CC
  loc_D540C9: ILdRf var_15C
  loc_D540CC: ConcatStr
  loc_D540CD: FStStrNoPop var_2D0
  loc_D540D0: LitStr " AND vpadrones_parcela.parcela_estado_codigo IN (10,11) "
  loc_D540D3: ConcatStr
  loc_D540D4: FStStrNoPop var_2D4
  loc_D540D7: LitStr " AND principal = 'Si'"
  loc_D540DA: ConcatStr
  loc_D540DB: FStStrNoPop var_2F4
  loc_D540DE: LitStr " GROUP BY vpadrones_parcela.nro_padron"
  loc_D540E1: ConcatStr
  loc_D540E2: FStStrNoPop var_2F8
  loc_D540E5: FLdPr Me
  loc_D540E8: MemLdRfVar from_stack_1.global_88
  loc_D540EB: NewIfNullPr clsboleto
  loc_D540EE: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D540F3: FFreeStr var_1BC = "": var_1C4 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2F4 = ""
  loc_D54104: FLdRfVar var_2D8
  loc_D54107: FLdRfVar var_1B8
  loc_D5410A: FLdPr Me
  loc_D5410D: MemLdRfVar from_stack_1.global_88
  loc_D54110: NewIfNullPr clsboleto
  loc_D54113: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54118: FLdPr var_1B8
  loc_D5411B:  = Me.RecordCount
  loc_D54120: ILdRf var_2D8
  loc_D54123: LitI4 0
  loc_D54128: GtI4
  loc_D54129: FFree1Ad var_1B8
  loc_D5412C: BranchF loc_D593F3
  loc_D5412F: LitI2_Byte &HB
  loc_D54131: FLdPr Me
  loc_D54134: Me.MousePointer = from_stack_1
  loc_D54139: LitI4 0
  loc_D5413E: LitI4 0
  loc_D54143: FLdRfVar var_31C
  loc_D54146: Redim
  loc_D54150: FLdPr Me
  loc_D54153: VCallAd Control_ID_CalculoCmd
  loc_D54156: CVarAd
  loc_D5415A: ParmAry1St
  loc_D54160: FLdRfVar var_31C
  loc_D54163: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_D54168: FLdRfVar var_31C
  loc_D5416B: Erase
  loc_D5416C: LitVar_TRUE var_1E8
  loc_D5416F: PopAdLdVar
  loc_D54170: FLdPr Me
  loc_D54173: VCallAd Control_ID_ProgressBar
  loc_D54176: FStAdFunc var_1B8
  loc_D54179: FLdPr var_1B8
  loc_D5417C: LateIdSt
  loc_D54181: FFree1Ad var_1B8
  loc_D54184: LitI2_Byte 0
  loc_D54186: CR8I2
  loc_D54187: CVarR4
  loc_D5418B: PopAdLdVar
  loc_D5418C: FLdPr Me
  loc_D5418F: VCallAd Control_ID_ProgressBar
  loc_D54192: FStAdFunc var_1B8
  loc_D54195: FLdPr var_1B8
  loc_D54198: LateIdSt
  loc_D5419D: FFree1Ad var_1B8
  loc_D541A0: FLdRfVar var_2D8
  loc_D541A3: FLdRfVar var_1B8
  loc_D541A6: FLdPr Me
  loc_D541A9: MemLdRfVar from_stack_1.global_88
  loc_D541AC: NewIfNullPr clsboleto
  loc_D541AF: from_stack_1v = clsboleto.RsFrmGet()
  loc_D541B4: FLdPr var_1B8
  loc_D541B7:  = Me.RecordCount
  loc_D541BC: ILdRf var_2D8
  loc_D541BF: CR8I4
  loc_D541C0: CVarR4
  loc_D541C4: PopAdLdVar
  loc_D541C5: FLdPr Me
  loc_D541C8: VCallAd Control_ID_ProgressBar
  loc_D541CB: FStAdFunc var_1C0
  loc_D541CE: FLdPr var_1C0
  loc_D541D1: LateIdSt
  loc_D541D6: FFreeAd var_1B8 = ""
  loc_D541DD: LitI2_Byte 0
  loc_D541DF: CR8I2
  loc_D541E0: CVarR4
  loc_D541E4: PopAdLdVar
  loc_D541E5: FLdPr Me
  loc_D541E8: VCallAd Control_ID_ProgressBar
  loc_D541EB: FStAdFunc var_1B8
  loc_D541EE: FLdPr var_1B8
  loc_D541F1: LateIdSt
  loc_D541F6: FFree1Ad var_1B8
  loc_D541F9: FLdRfVar var_1B8
  loc_D541FC: FLdPr Me
  loc_D541FF: MemLdRfVar from_stack_1.global_88
  loc_D54202: NewIfNullPr clsboleto
  loc_D54205: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5420A: FLdPr var_1B8
  loc_D5420D: Me.MoveFirst
  loc_D54212: FFree1Ad var_1B8
  loc_D54215: LitI4 0
  loc_D5421A: FStR4 var_88
  loc_D5421D: FLdRfVar var_1B2
  loc_D54220: FLdRfVar var_1B8
  loc_D54223: FLdPr Me
  loc_D54226: MemLdRfVar from_stack_1.global_88
  loc_D54229: NewIfNullPr clsboleto
  loc_D5422C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54231: FLdPr var_1B8
  loc_D54234:  = Me.EOF
  loc_D54239: FLdI2 var_1B2
  loc_D5423C: NotI4
  loc_D5423D: FFree1Ad var_1B8
  loc_D54240: BranchF loc_D593F3
  loc_D54243: ILdRf var_88
  loc_D54246: CR8I4
  loc_D54247: CVarR4
  loc_D5424B: PopAdLdVar
  loc_D5424C: FLdPr Me
  loc_D5424F: VCallAd Control_ID_ProgressBar
  loc_D54252: FStAdFunc var_1B8
  loc_D54255: FLdPr var_1B8
  loc_D54258: LateIdSt
  loc_D5425D: FFree1Ad var_1B8
  loc_D54260: ILdRf var_88
  loc_D54263: LitI4 1
  loc_D54268: AddI4
  loc_D54269: FStR4 var_88
  loc_D5426C: FLdRfVar var_1D4
  loc_D5426F: FLdRfVar var_2E4
  loc_D54272: LitVarStr var_1E8, "nro_padron"
  loc_D54277: PopAdLdVar
  loc_D54278: FLdRfVar var_1C0
  loc_D5427B: FLdRfVar var_1B8
  loc_D5427E: FLdPr Me
  loc_D54281: MemLdRfVar from_stack_1.global_88
  loc_D54284: NewIfNullPr clsboleto
  loc_D54287: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5428C: FLdPr var_1B8
  loc_D5428F:  = Me.Fields
  loc_D54294: FLdPr var_1C0
  loc_D54297: from_stack_2 = Me.Item(from_stack_1)
  loc_D5429C: FLdPr var_2E4
  loc_D5429F:  = Me.Value
  loc_D542A4: FLdRfVar var_1BC
  loc_D542A7: FLdPr Me
  loc_D542AA: VCallAd Control_ID_PeriLiquTxt
  loc_D542AD: FStAdFunc var_2E8
  loc_D542B0: FLdPr var_2E8
  loc_D542B3:  = Me.Text
  loc_D542B8: FLdRfVar var_1B2
  loc_D542BB: ILdRf var_1BC
  loc_D542BE: CI4Str
  loc_D542BF: FLdRfVar var_1D4
  loc_D542C2: CI4Var
  loc_D542C4: FLdPr Me
  loc_D542C7: MemLdRfVar from_stack_1.global_76
  loc_D542CA: NewIfNullPr clsliqutasa
  loc_D542CD: from_stack_3v = clsliqutasa.PagoManualAnual(from_stack_1v, from_stack_2v)
  loc_D542D2: FLdI2 var_1B2
  loc_D542D5: LitI2_Byte 0
  loc_D542D7: EqI2
  loc_D542D8: FFree1Str var_1BC
  loc_D542DB: FFreeAd var_1B8 = "": var_1C0 = "": var_2E8 = ""
  loc_D542E6: FFree1Var var_1D4 = ""
  loc_D542E9: BranchF loc_D54D8C
  loc_D542EC: FLdRfVar var_368
  loc_D542EF: FLdRfVar var_2E4
  loc_D542F2: LitVarStr var_1E8, "nro_padron"
  loc_D542F7: PopAdLdVar
  loc_D542F8: FLdRfVar var_1C0
  loc_D542FB: FLdRfVar var_1B8
  loc_D542FE: FLdPr Me
  loc_D54301: MemLdRfVar from_stack_1.global_88
  loc_D54304: NewIfNullPr clsboleto
  loc_D54307: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5430C: FLdPr var_1B8
  loc_D5430F:  = Me.Fields
  loc_D54314: FLdPr var_1C0
  loc_D54317: from_stack_2 = Me.Item(from_stack_1)
  loc_D5431C: FLdPr var_2E4
  loc_D5431F:  = Me.Value
  loc_D54324: FLdRfVar var_1D4
  loc_D54327: FLdRfVar var_324
  loc_D5432A: LitVarStr var_1F8, "parcela_ryb_cod"
  loc_D5432F: PopAdLdVar
  loc_D54330: FLdRfVar var_320
  loc_D54333: FLdRfVar var_2E8
  loc_D54336: FLdPr Me
  loc_D54339: MemLdRfVar from_stack_1.global_88
  loc_D5433C: NewIfNullPr clsboleto
  loc_D5433F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54344: FLdPr var_2E8
  loc_D54347:  = Me.Fields
  loc_D5434C: FLdPr var_320
  loc_D5434F: from_stack_2 = Me.Item(from_stack_1)
  loc_D54354: FLdPr var_324
  loc_D54357:  = Me.Value
  loc_D5435C: FLdRfVar var_330
  loc_D5435F: LitVarStr var_218, "parcela_ryb_cod"
  loc_D54364: PopAdLdVar
  loc_D54365: FLdRfVar var_32C
  loc_D54368: FLdRfVar var_328
  loc_D5436B: FLdPr Me
  loc_D5436E: MemLdRfVar from_stack_1.global_88
  loc_D54371: NewIfNullPr clsboleto
  loc_D54374: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54379: FLdPr var_328
  loc_D5437C:  = Me.Fields
  loc_D54381: FLdPr var_32C
  loc_D54384: from_stack_2 = Me.Item(from_stack_1)
  loc_D54389: FLdZeroAd var_330
  loc_D5438C: CVarAd
  loc_D54390: LitVarI2 var_298, 0
  loc_D54395: FLdRfVar var_1D4
  loc_D54398: LitVarStr var_208, vbNullString
  loc_D5439D: HardType
  loc_D5439E: EqVar var_268
  loc_D543A2: FStVar var_288
  loc_D543A6: FLdRfVar var_288
  loc_D543A9: FLdRfVar var_2C8
  loc_D543AC: ImpAdCallFPR4  = IIf(, , )
  loc_D543B1: FLdRfVar var_378
  loc_D543B4: FLdRfVar var_33C
  loc_D543B7: LitVarStr var_238, "parcela_avaluo"
  loc_D543BC: PopAdLdVar
  loc_D543BD: FLdRfVar var_338
  loc_D543C0: FLdRfVar var_334
  loc_D543C3: FLdPr Me
  loc_D543C6: MemLdRfVar from_stack_1.global_88
  loc_D543C9: NewIfNullPr clsboleto
  loc_D543CC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D543D1: FLdPr var_334
  loc_D543D4:  = Me.Fields
  loc_D543D9: FLdPr var_338
  loc_D543DC: from_stack_2 = Me.Item(from_stack_1)
  loc_D543E1: FLdPr var_33C
  loc_D543E4:  = Me.Value
  loc_D543E9: FLdRfVar var_358
  loc_D543EC: FLdRfVar var_348
  loc_D543EF: LitVarStr var_248, "parcela_superficie"
  loc_D543F4: PopAdLdVar
  loc_D543F5: FLdRfVar var_344
  loc_D543F8: FLdRfVar var_340
  loc_D543FB: FLdPr Me
  loc_D543FE: MemLdRfVar from_stack_1.global_88
  loc_D54401: NewIfNullPr clsboleto
  loc_D54404: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54409: FLdPr var_340
  loc_D5440C:  = Me.Fields
  loc_D54411: FLdPr var_344
  loc_D54414: from_stack_2 = Me.Item(from_stack_1)
  loc_D54419: FLdPr var_348
  loc_D5441C:  = Me.Value
  loc_D54421: LitI4 0
  loc_D54426: LitI4 -1
  loc_D5442B: LitI4 1
  loc_D54430: LitStr ","
  loc_D54433: LitStr "."
  loc_D54436: FLdRfVar var_358
  loc_D54439: CStrVarTmp
  loc_D5443A: FStStrNoPop var_1BC
  loc_D5443D: ImpAdCallI2 Replace(, , , , , )
  loc_D54442: FStStr var_2CC
  loc_D54445: FLdRfVar var_388
  loc_D54448: FLdR8 var_D4
  loc_D5444B: FLdZeroAd var_2CC
  loc_D5444E: FStStrNoPop var_1C4
  loc_D54451: CR8Str
  loc_D54453: PopFPR8
  loc_D54454: FLdRfVar var_378
  loc_D54457: CI4Var
  loc_D54459: FLdRfVar var_2C8
  loc_D5445C: CI2Var
  loc_D5445D: FLdR8 var_104
  loc_D54460: FLdRfVar var_368
  loc_D54463: CI4Var
  loc_D54465: FLdPr Me
  loc_D54468: MemLdRfVar from_stack_1.global_76
  loc_D5446B: NewIfNullPr clsliqutasa
  loc_D5446E: from_stack_7v = clsliqutasa.ImportedelCalculodeLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_D54473: FLdRfVar var_388
  loc_D54476: FStVar var_170
  loc_D5447A: FFreeStr var_1BC = "": var_1C4 = ""
  loc_D54483: FFreeAd var_1B8 = "": var_1C0 = "": var_2E8 = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_334 = "": var_338 = "": var_340 = "": var_344 = "": var_348 = "": var_2E4 = ""
  loc_D544A2: FFreeVar var_1D4 = "": var_288 = "": var_298 = "": var_2A8 = "": var_358 = "": var_368 = "": var_2C8 = ""
  loc_D544B5: LitVarI2 var_1E8, 1
  loc_D544BA: PopAdLdVar
  loc_D544BB: FLdRfVar var_170
  loc_D544BE: VarIndexLdVar
  loc_D544C4: CR4Var
  loc_D544C5: FStFPR8 var_178
  loc_D544C8: FFree1Var var_1D4 = ""
  loc_D544CB: LitVarI2 var_1E8, 2
  loc_D544D0: PopAdLdVar
  loc_D544D1: FLdRfVar var_170
  loc_D544D4: VarIndexLdVar
  loc_D544DA: CR4Var
  loc_D544DB: FStFPR8 var_180
  loc_D544DE: FFree1Var var_1D4 = ""
  loc_D544E1: LitVarI2 var_1E8, 3
  loc_D544E6: PopAdLdVar
  loc_D544E7: FLdRfVar var_170
  loc_D544EA: VarIndexLdVar
  loc_D544F0: CR4Var
  loc_D544F1: FStFPR8 var_188
  loc_D544F4: FFree1Var var_1D4 = ""
  loc_D544F7: LitVarI2 var_1E8, 4
  loc_D544FC: PopAdLdVar
  loc_D544FD: FLdRfVar var_170
  loc_D54500: VarIndexLdVar
  loc_D54506: CR4Var
  loc_D54507: FStFPR8 var_1A0
  loc_D5450A: FFree1Var var_1D4 = ""
  loc_D5450D: LitI2_Byte 0
  loc_D5450F: CR8I2
  loc_D54510: FStFPR8 var_190
  loc_D54513: FLdFPR8 var_178
  loc_D54516: LitI2_Byte 0
  loc_D54518: CR8I2
  loc_D54519: GtR4
  loc_D5451A: FLdFPR8 var_180
  loc_D5451D: LitI2_Byte 0
  loc_D5451F: CR8I2
  loc_D54520: GtR4
  loc_D54521: AndI4
  loc_D54522: BranchF loc_D5460C
  loc_D54525: FLdRfVar var_2E4
  loc_D54528: LitVarStr var_1E8, "parcela_ryb_cod"
  loc_D5452D: PopAdLdVar
  loc_D5452E: FLdRfVar var_1C0
  loc_D54531: FLdRfVar var_1B8
  loc_D54534: FLdPr Me
  loc_D54537: MemLdRfVar from_stack_1.global_88
  loc_D5453A: NewIfNullPr clsboleto
  loc_D5453D: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54542: FLdPr var_1B8
  loc_D54545:  = Me.Fields
  loc_D5454A: FLdPr var_1C0
  loc_D5454D: from_stack_2 = Me.Item(from_stack_1)
  loc_D54552: FLdZeroAd var_2E4
  loc_D54555: CVarAd
  loc_D54559: ImpAdCallI2 IsNumeric()
  loc_D5455E: FFreeAd var_1B8 = ""
  loc_D54565: FFree1Var var_1D4 = ""
  loc_D54568: BranchF loc_D5460C
  loc_D5456B: FLdRfVar var_1D4
  loc_D5456E: FLdRfVar var_2E4
  loc_D54571: LitVarStr var_1E8, "parcela_ryb_cod"
  loc_D54576: PopAdLdVar
  loc_D54577: FLdRfVar var_1C0
  loc_D5457A: FLdRfVar var_1B8
  loc_D5457D: FLdPr Me
  loc_D54580: MemLdRfVar from_stack_1.global_88
  loc_D54583: NewIfNullPr clsboleto
  loc_D54586: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5458B: FLdPr var_1B8
  loc_D5458E:  = Me.Fields
  loc_D54593: FLdPr var_1C0
  loc_D54596: from_stack_2 = Me.Item(from_stack_1)
  loc_D5459B: FLdPr var_2E4
  loc_D5459E:  = Me.Value
  loc_D545A3: FLdRfVar var_1D4
  loc_D545A6: FnCIntVar
  loc_D545A8: LitI2_Byte &HB
  loc_D545AA: EqI2
  loc_D545AB: FLdRfVar var_268
  loc_D545AE: FLdRfVar var_324
  loc_D545B1: LitVarStr var_1F8, "parcela_ryb_cod"
  loc_D545B6: PopAdLdVar
  loc_D545B7: FLdRfVar var_320
  loc_D545BA: FLdRfVar var_2E8
  loc_D545BD: FLdPr Me
  loc_D545C0: MemLdRfVar from_stack_1.global_88
  loc_D545C3: NewIfNullPr clsboleto
  loc_D545C6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D545CB: FLdPr var_2E8
  loc_D545CE:  = Me.Fields
  loc_D545D3: FLdPr var_320
  loc_D545D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D545DB: FLdPr var_324
  loc_D545DE:  = Me.Value
  loc_D545E3: FLdRfVar var_268
  loc_D545E6: FnCIntVar
  loc_D545E8: LitI2_Byte &H15
  loc_D545EA: EqI2
  loc_D545EB: OrI4
  loc_D545EC: FFreeAd var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = "": var_320 = ""
  loc_D545FB: FFreeVar var_1D4 = ""
  loc_D54602: BranchF loc_D5460C
  loc_D54605: LitI2 8135
  loc_D54608: CR8I2
  loc_D54609: FStFPR8 var_190
  loc_D5460C: LitI2_Byte 0
  loc_D5460E: CR8I2
  loc_D5460F: FStFPR8 var_198
  loc_D54612: FLdFPR8 var_178
  loc_D54615: FLdFPR8 var_180
  loc_D54618: AddR8
  loc_D54619: FLdFPR8 var_188
  loc_D5461C: AddR8
  loc_D5461D: FLdFPR8 var_190
  loc_D54620: AddR8
  loc_D54621: FLdFPR8 var_198
  loc_D54624: AddR8
  loc_D54625: FLdFPR8 var_1A0
  loc_D54628: AddR8
  loc_D54629: FStFPR8 var_94
  loc_D5462C: FLdRfVar var_1D4
  loc_D5462F: FLdRfVar var_2E4
  loc_D54632: LitVarStr var_1E8, "nro_padron"
  loc_D54637: PopAdLdVar
  loc_D54638: FLdRfVar var_1C0
  loc_D5463B: FLdRfVar var_1B8
  loc_D5463E: FLdPr Me
  loc_D54641: MemLdRfVar from_stack_1.global_88
  loc_D54644: NewIfNullPr clsboleto
  loc_D54647: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5464C: FLdPr var_1B8
  loc_D5464F:  = Me.Fields
  loc_D54654: FLdPr var_1C0
  loc_D54657: from_stack_2 = Me.Item(from_stack_1)
  loc_D5465C: FLdPr var_2E4
  loc_D5465F:  = Me.Value
  loc_D54664: FLdRfVar var_2E0
  loc_D54667: LitStr "31/12/"
  loc_D5466A: LitI2 2025
  loc_D5466D: CStrUI1
  loc_D5466F: FStStrNoPop var_1BC
  loc_D54672: ConcatStr
  loc_D54673: FStStrNoPop var_2CC
  loc_D54676: FLdRfVar var_1D4
  loc_D54679: CStrVarTmp
  loc_D5467A: FStStrNoPop var_1C4
  loc_D5467D: LitI2_Byte 1
  loc_D5467F: CUI1I2
  loc_D54681: FLdPr Me
  loc_D54684: MemLdRfVar from_stack_1.global_76
  loc_D54687: NewIfNullPr clsliqutasa
  loc_D5468A: from_stack_4v = clsliqutasa.LibredeDeudaEmisionMasiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D5468F: FLdFPR8 var_2E0
  loc_D54692: FStFPR8 var_BC
  loc_D54695: FFreeStr var_1BC = "": var_1C4 = ""
  loc_D5469E: FFreeAd var_1B8 = "": var_1C0 = ""
  loc_D546A7: FFree1Var var_1D4 = ""
  loc_D546AA: FLdRfVar var_1D4
  loc_D546AD: FLdRfVar var_2E4
  loc_D546B0: LitVarStr var_1E8, "nro_padron"
  loc_D546B5: PopAdLdVar
  loc_D546B6: FLdRfVar var_1C0
  loc_D546B9: FLdRfVar var_1B8
  loc_D546BC: FLdPr Me
  loc_D546BF: MemLdRfVar from_stack_1.global_88
  loc_D546C2: NewIfNullPr clsboleto
  loc_D546C5: from_stack_1v = clsboleto.RsFrmGet()
  loc_D546CA: FLdPr var_1B8
  loc_D546CD:  = Me.Fields
  loc_D546D2: FLdPr var_1C0
  loc_D546D5: from_stack_2 = Me.Item(from_stack_1)
  loc_D546DA: FLdPr var_2E4
  loc_D546DD:  = Me.Value
  loc_D546E2: FLdRfVar var_2E0
  loc_D546E5: FLdRfVar var_1D4
  loc_D546E8: CStrVarTmp
  loc_D546E9: FStStrNoPop var_1BC
  loc_D546EC: LitI2_Byte 1
  loc_D546EE: FLdPr Me
  loc_D546F1: MemLdRfVar from_stack_1.global_84
  loc_D546F4: NewIfNullPr clsrecabole
  loc_D546F7: from_stack_3v = clsrecabole.BuscaImporteRecabole(from_stack_1v, from_stack_2v)
  loc_D546FC: FLdFPR8 var_2E0
  loc_D546FF: FStFPR8 var_9C
  loc_D54702: FFree1Str var_1BC
  loc_D54705: FFreeAd var_1B8 = "": var_1C0 = ""
  loc_D5470E: FFree1Var var_1D4 = ""
  loc_D54711: LitI2_Byte 0
  loc_D54713: CR8I2
  loc_D54714: FStFPR8 var_C4
  loc_D54717: FLdFPR8 var_BC
  loc_D5471A: LitI2_Byte 0
  loc_D5471C: CR8I2
  loc_D5471D: LeR8
  loc_D5471E: BranchF loc_D5472A
  loc_D54721: LitI2_Byte &H14
  loc_D54723: CR8I2
  loc_D54724: FStFPR8 var_CC
  loc_D54727: Branch loc_D54730
  loc_D5472A: LitI2_Byte &HF
  loc_D5472C: CR8I2
  loc_D5472D: FStFPR8 var_CC
  loc_D54730: FLdFPR8 var_94
  loc_D54733: LitI2_Byte 0
  loc_D54735: CR8I2
  loc_D54736: EqR4
  loc_D54737: BranchF loc_D5483E
  loc_D5473A: FLdRfVar var_1BC
  loc_D5473D: FLdPr Me
  loc_D54740: VCallAd Control_ID_PeriLiquTxt
  loc_D54743: FStAdFunc var_1B8
  loc_D54746: FLdPr var_1B8
  loc_D54749:  = Me.Text
  loc_D5474E: FLdRfVar var_1C4
  loc_D54751: FLdPr Me
  loc_D54754: VCallAd Control_ID_CodiTiliTxt
  loc_D54757: FStAdFunc var_1C0
  loc_D5475A: FLdPr var_1C0
  loc_D5475D:  = Me.Text
  loc_D54762: FLdRfVar var_298
  loc_D54765: FLdRfVar var_320
  loc_D54768: LitVarStr var_1E8, "nro_padron"
  loc_D5476D: PopAdLdVar
  loc_D5476E: FLdRfVar var_2E8
  loc_D54771: FLdRfVar var_2E4
  loc_D54774: FLdPr Me
  loc_D54777: MemLdRfVar from_stack_1.global_88
  loc_D5477A: NewIfNullPr clsboleto
  loc_D5477D: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54782: FLdPr var_2E4
  loc_D54785:  = Me.Fields
  loc_D5478A: FLdPr var_2E8
  loc_D5478D: from_stack_2 = Me.Item(from_stack_1)
  loc_D54792: FLdPr var_320
  loc_D54795:  = Me.Value
  loc_D5479A: LitVarStr var_208, "Cuenta: "
  loc_D5479F: FLdRfVar var_1D4
  loc_D547A2: FLdRfVar var_32C
  loc_D547A5: LitVarStr var_1F8, "nro_padron"
  loc_D547AA: PopAdLdVar
  loc_D547AB: FLdRfVar var_328
  loc_D547AE: FLdRfVar var_324
  loc_D547B1: FLdPr Me
  loc_D547B4: MemLdRfVar from_stack_1.global_88
  loc_D547B7: NewIfNullPr clsboleto
  loc_D547BA: from_stack_1v = clsboleto.RsFrmGet()
  loc_D547BF: FLdPr var_324
  loc_D547C2:  = Me.Fields
  loc_D547C7: FLdPr var_328
  loc_D547CA: from_stack_2 = Me.Item(from_stack_1)
  loc_D547CF: FLdPr var_32C
  loc_D547D2:  = Me.Value
  loc_D547D7: FLdRfVar var_1D4
  loc_D547DA: ConcatVar var_268
  loc_D547DE: LitVarStr var_218, " CALCULO 0"
  loc_D547E3: ConcatVar var_288
  loc_D547E7: CStrVarVal var_2CC
  loc_D547EB: FLdRfVar var_298
  loc_D547EE: CI4Var
  loc_D547F0: FLdI2 var_8A
  loc_D547F3: CUI1I2
  loc_D547F5: ILdRf var_1C4
  loc_D547F8: CUI1Str
  loc_D547FA: FLdPr Me
  loc_D547FD: MemLdUI1 global_100
  loc_D54801: ILdRf var_1BC
  loc_D54804: CI2Str
  loc_D54806: FLdPr Me
  loc_D54809: MemLdRfVar from_stack_1.global_76
  loc_D5480C: NewIfNullPr clsliqutasa
  loc_D5480F: Call clsliqutasa.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_D54814: FFreeStr var_1BC = "": var_1C4 = ""
  loc_D5481D: FFreeAd var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = "": var_324 = "": var_328 = "": var_32C = ""
  loc_D54830: FFreeVar var_1D4 = "": var_268 = "": var_298 = ""
  loc_D5483B: Branch loc_D54D89
  loc_D5483E: LitI2_Byte 0
  loc_D54840: CR8I2
  loc_D54841: FStFPR8 var_A4
  loc_D54844: LitI2_Byte 0
  loc_D54846: FStI2 var_1A2
  loc_D54849: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') CodiCalle, IFNULL(domicilio.calle,'') as DecaPost, IFNULL(domicilio.NumeCalle,'0') as NumePost, IFNULL(domicilio.CodiBarrio,'0') CobpPost, IFNULL(domicilio.barrio,'') as DebaPost, IFNULL(domicilio.Manzana,'') as ManzPost, IFNULL(domicilio.Casa,'') as CasaPost, "
  loc_D5484C: LitStr " concat(domicilio.Monoblock,"
  loc_D5484F: ConcatStr
  loc_D54850: FStStrNoPop var_1BC
  loc_D54853: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_D54856: ConcatStr
  loc_D54857: FStStrNoPop var_1C4
  loc_D5485A: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_D5485D: ConcatStr
  loc_D5485E: FStStrNoPop var_2CC
  loc_D54861: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_D54864: ConcatStr
  loc_D54865: FStStrNoPop var_2D0
  loc_D54868: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_D5486B: ConcatStr
  loc_D5486C: FStStrNoPop var_2D4
  loc_D5486F: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta)  as UbicPost,"
  loc_D54872: ConcatStr
  loc_D54873: FStStrNoPop var_2F4
  loc_D54876: LitStr " IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') ColpPost, IFNULL(domicilio.Localidad,'') as DeloPost, IFNULL(domicilio.CodPostal,'0') as CopoPost, "
  loc_D54879: ConcatStr
  loc_D5487A: FStStrNoPop var_2F8
  loc_D5487D: LitStr " inmurentas.CodiExce, inmurentas.FfExInmu, PorcExce, IFNULL(inmurentas.Emite,'1') as Emite, domicilio.vinculo "
  loc_D54880: ConcatStr
  loc_D54881: FStStrNoPop var_2FC
  loc_D54884: LitStr " FROM domicilio"
  loc_D54887: ConcatStr
  loc_D54888: FStStrNoPop var_300
  loc_D5488B: LitStr " LEFT JOIN inmurentas ON inmurentas.CodiInmu = domicilio.CodiCome"
  loc_D5488E: ConcatStr
  loc_D5488F: FStStrNoPop var_304
  loc_D54892: LitStr " LEFT JOIN eximicion ON eximicion.CodiExce = inmurentas.CodiExce"
  loc_D54895: ConcatStr
  loc_D54896: FStStrNoPop var_308
  loc_D54899: LitStr " WHERE CodiOfic = 1"
  loc_D5489C: ConcatStr
  loc_D5489D: FStStrNoPop var_30C
  loc_D548A0: LitStr " AND CodiCome = "
  loc_D548A3: ConcatStr
  loc_D548A4: CVarStr var_268
  loc_D548A7: FLdRfVar var_1D4
  loc_D548AA: FLdRfVar var_2E4
  loc_D548AD: LitVarStr var_1E8, "nro_padron"
  loc_D548B2: PopAdLdVar
  loc_D548B3: FLdRfVar var_1C0
  loc_D548B6: FLdRfVar var_1B8
  loc_D548B9: FLdPr Me
  loc_D548BC: MemLdRfVar from_stack_1.global_88
  loc_D548BF: NewIfNullPr clsboleto
  loc_D548C2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D548C7: FLdPr var_1B8
  loc_D548CA:  = Me.Fields
  loc_D548CF: FLdPr var_1C0
  loc_D548D2: from_stack_2 = Me.Item(from_stack_1)
  loc_D548D7: FLdPr var_2E4
  loc_D548DA:  = Me.Value
  loc_D548DF: FLdRfVar var_1D4
  loc_D548E2: ConcatVar var_288
  loc_D548E6: LitVarStr var_1F8, " AND Tipo = 'RENTAS'"
  loc_D548EB: ConcatVar var_298
  loc_D548EF: CStrVarVal var_310
  loc_D548F3: FLdPr Me
  loc_D548F6: MemLdRfVar from_stack_1.global_56
  loc_D548F9: NewIfNullPr clsboleto
  loc_D548FC: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D54901: FFreeStr var_1BC = "": var_1C4 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = ""
  loc_D5491E: FFreeAd var_1B8 = "": var_1C0 = ""
  loc_D54927: FFreeVar var_268 = "": var_1D4 = "": var_288 = ""
  loc_D54932: FLdRfVar var_2D8
  loc_D54935: FLdPr Me
  loc_D54938: MemLdRfVar from_stack_1.global_56
  loc_D5493B: NewIfNullPr clsboleto
  loc_D5493E: from_stack_1 = clsboleto.RecordCount
  loc_D54943: ILdRf var_2D8
  loc_D54946: LitI4 0
  loc_D5494B: GtI4
  loc_D5494C: BranchF loc_D54C82
  loc_D5494F: FLdRfVar var_1D4
  loc_D54952: FLdRfVar var_2E4
  loc_D54955: LitVarStr var_1E8, "CodiExce"
  loc_D5495A: PopAdLdVar
  loc_D5495B: FLdRfVar var_1C0
  loc_D5495E: FLdRfVar var_1B8
  loc_D54961: FLdPr Me
  loc_D54964: MemLdRfVar from_stack_1.global_56
  loc_D54967: NewIfNullPr clsboleto
  loc_D5496A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5496F: FLdPr var_1B8
  loc_D54972:  = Me.Fields
  loc_D54977: FLdPr var_1C0
  loc_D5497A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5497F: FLdPr var_2E4
  loc_D54982:  = Me.Value
  loc_D54987: FLdRfVar var_1D4
  loc_D5498A: LitVarI2 var_1F8, 0
  loc_D5498F: HardType
  loc_D54990: NeVar var_268
  loc_D54994: FLdRfVar var_324
  loc_D54997: LitVarStr var_208, "FfexInmu"
  loc_D5499C: PopAdLdVar
  loc_D5499D: FLdRfVar var_320
  loc_D549A0: FLdRfVar var_2E8
  loc_D549A3: FLdPr Me
  loc_D549A6: MemLdRfVar from_stack_1.global_56
  loc_D549A9: NewIfNullPr clsboleto
  loc_D549AC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D549B1: FLdPr var_2E8
  loc_D549B4:  = Me.Fields
  loc_D549B9: FLdPr var_320
  loc_D549BC: from_stack_2 = Me.Item(from_stack_1)
  loc_D549C1: FLdZeroAd var_324
  loc_D549C4: CVarAd
  loc_D549C8: ImpAdCallI2 IsNull()
  loc_D549CD: CVarBoolI2 var_218
  loc_D549D1: AndVar var_298
  loc_D549D5: CBoolVarNull
  loc_D549D7: FFreeAd var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = ""
  loc_D549E4: FFreeVar var_1D4 = "": var_288 = ""
  loc_D549ED: BranchF loc_D54AC2
  loc_D549F0: FLdRfVar var_1D4
  loc_D549F3: FLdRfVar var_2E4
  loc_D549F6: LitVarStr var_1E8, "PorcExce"
  loc_D549FB: PopAdLdVar
  loc_D549FC: FLdRfVar var_1C0
  loc_D549FF: FLdRfVar var_1B8
  loc_D54A02: FLdPr Me
  loc_D54A05: MemLdRfVar from_stack_1.global_56
  loc_D54A08: NewIfNullPr clsboleto
  loc_D54A0B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54A10: FLdPr var_1B8
  loc_D54A13:  = Me.Fields
  loc_D54A18: FLdPr var_1C0
  loc_D54A1B: from_stack_2 = Me.Item(from_stack_1)
  loc_D54A20: FLdPr var_2E4
  loc_D54A23:  = Me.Value
  loc_D54A28: FLdRfVar var_1D4
  loc_D54A2B: LitVarI2 var_1F8, 100
  loc_D54A30: HardType
  loc_D54A31: EqVarBool
  loc_D54A33: FFreeAd var_1B8 = "": var_1C0 = ""
  loc_D54A3C: FFree1Var var_1D4 = ""
  loc_D54A3F: BranchF loc_D54A50
  loc_D54A42: LitI2_Byte &HFF
  loc_D54A44: FStI2 var_1A2
  loc_D54A47: LitI2_Byte 0
  loc_D54A49: CR8I2
  loc_D54A4A: FStFPR8 var_188
  loc_D54A4D: Branch loc_D54ABF
  loc_D54A50: FLdRfVar var_1D4
  loc_D54A53: FLdRfVar var_2E4
  loc_D54A56: LitVarStr var_1E8, "PorcExce"
  loc_D54A5B: PopAdLdVar
  loc_D54A5C: FLdRfVar var_1C0
  loc_D54A5F: FLdRfVar var_1B8
  loc_D54A62: FLdPr Me
  loc_D54A65: MemLdRfVar from_stack_1.global_56
  loc_D54A68: NewIfNullPr clsboleto
  loc_D54A6B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54A70: FLdPr var_1B8
  loc_D54A73:  = Me.Fields
  loc_D54A78: FLdPr var_1C0
  loc_D54A7B: from_stack_2 = Me.Item(from_stack_1)
  loc_D54A80: FLdPr var_2E4
  loc_D54A83:  = Me.Value
  loc_D54A88: LitI4 2
  loc_D54A8D: FLdFPR8 var_178
  loc_D54A90: FLdRfVar var_1D4
  loc_D54A93: FnCDblVar
  loc_D54A95: MulR8
  loc_D54A96: LitI2_Byte &H64
  loc_D54A98: CR8I2
  loc_D54A99: DivR8
  loc_D54A9A: CVarR8
  loc_D54A9E: FLdRfVar var_288
  loc_D54AA1: ImpAdCallFPR4  = Round(, )
  loc_D54AA6: FLdRfVar var_288
  loc_D54AA9: CR4Var
  loc_D54AAA: FStFPR8 var_A4
  loc_D54AAD: FFreeAd var_1B8 = "": var_1C0 = ""
  loc_D54AB6: FFreeVar var_1D4 = "": var_268 = ""
  loc_D54ABF: Branch loc_D54C82
  loc_D54AC2: FLdRfVar var_268
  loc_D54AC5: FLdRfVar var_2E4
  loc_D54AC8: LitVarStr var_1E8, "CodiExce"
  loc_D54ACD: PopAdLdVar
  loc_D54ACE: FLdRfVar var_1C0
  loc_D54AD1: FLdRfVar var_1B8
  loc_D54AD4: FLdPr Me
  loc_D54AD7: MemLdRfVar from_stack_1.global_56
  loc_D54ADA: NewIfNullPr clsboleto
  loc_D54ADD: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54AE2: FLdPr var_1B8
  loc_D54AE5:  = Me.Fields
  loc_D54AEA: FLdPr var_1C0
  loc_D54AED: from_stack_2 = Me.Item(from_stack_1)
  loc_D54AF2: FLdPr var_2E4
  loc_D54AF5:  = Me.Value
  loc_D54AFA: FLdRfVar var_268
  loc_D54AFD: FLdRfVar var_324
  loc_D54B00: LitVarStr var_1F8, "FfexInmu"
  loc_D54B05: PopAdLdVar
  loc_D54B06: FLdRfVar var_320
  loc_D54B09: FLdRfVar var_2E8
  loc_D54B0C: FLdPr Me
  loc_D54B0F: MemLdRfVar from_stack_1.global_56
  loc_D54B12: NewIfNullPr clsboleto
  loc_D54B15: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54B1A: FLdPr var_2E8
  loc_D54B1D:  = Me.Fields
  loc_D54B22: FLdPr var_320
  loc_D54B25: from_stack_2 = Me.Item(from_stack_1)
  loc_D54B2A: FLdZeroAd var_324
  loc_D54B2D: CVarAd
  loc_D54B31: ImpAdCallI2 IsNull()
  loc_D54B36: NotI4
  loc_D54B37: CVarBoolI2 var_208
  loc_D54B3B: AndVar var_288
  loc_D54B3F: CBoolVarNull
  loc_D54B41: FFreeAd var_1B8 = "": var_1C0 = "": var_2E8 = "": var_320 = ""
  loc_D54B4E: FFreeVar var_1D4 = "": var_268 = ""
  loc_D54B57: BranchF loc_D54C7C
  loc_D54B5A: FLdRfVar var_1D4
  loc_D54B5D: FLdRfVar var_2E4
  loc_D54B60: LitVarStr var_1E8, "FfexInmu"
  loc_D54B65: PopAdLdVar
  loc_D54B66: FLdRfVar var_1C0
  loc_D54B69: FLdRfVar var_1B8
  loc_D54B6C: FLdPr Me
  loc_D54B6F: MemLdRfVar from_stack_1.global_56
  loc_D54B72: NewIfNullPr clsboleto
  loc_D54B75: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54B7A: FLdPr var_1B8
  loc_D54B7D:  = Me.Fields
  loc_D54B82: FLdPr var_1C0
  loc_D54B85: from_stack_2 = Me.Item(from_stack_1)
  loc_D54B8A: FLdPr var_2E4
  loc_D54B8D:  = Me.Value
  loc_D54B92: FLdRfVar var_1D4
  loc_D54B95: FnCDateVar
  loc_D54B97: FLdFPR8 var_10C
  loc_D54B9A: GeR8
  loc_D54B9B: FFreeAd var_1B8 = "": var_1C0 = ""
  loc_D54BA4: FFree1Var var_1D4 = ""
  loc_D54BA7: BranchF loc_D54C79
  loc_D54BAA: FLdRfVar var_1D4
  loc_D54BAD: FLdRfVar var_2E4
  loc_D54BB0: LitVarStr var_1E8, "PorcExce"
  loc_D54BB5: PopAdLdVar
  loc_D54BB6: FLdRfVar var_1C0
  loc_D54BB9: FLdRfVar var_1B8
  loc_D54BBC: FLdPr Me
  loc_D54BBF: MemLdRfVar from_stack_1.global_56
  loc_D54BC2: NewIfNullPr clsboleto
  loc_D54BC5: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54BCA: FLdPr var_1B8
  loc_D54BCD:  = Me.Fields
  loc_D54BD2: FLdPr var_1C0
  loc_D54BD5: from_stack_2 = Me.Item(from_stack_1)
  loc_D54BDA: FLdPr var_2E4
  loc_D54BDD:  = Me.Value
  loc_D54BE2: FLdRfVar var_1D4
  loc_D54BE5: LitVarI2 var_1F8, 100
  loc_D54BEA: HardType
  loc_D54BEB: EqVarBool
  loc_D54BED: FFreeAd var_1B8 = "": var_1C0 = ""
  loc_D54BF6: FFree1Var var_1D4 = ""
  loc_D54BF9: BranchF loc_D54C0A
  loc_D54BFC: LitI2_Byte &HFF
  loc_D54BFE: FStI2 var_1A2
  loc_D54C01: LitI2_Byte 0
  loc_D54C03: CR8I2
  loc_D54C04: FStFPR8 var_188
  loc_D54C07: Branch loc_D54C79
  loc_D54C0A: FLdRfVar var_1D4
  loc_D54C0D: FLdRfVar var_2E4
  loc_D54C10: LitVarStr var_1E8, "PorcExce"
  loc_D54C15: PopAdLdVar
  loc_D54C16: FLdRfVar var_1C0
  loc_D54C19: FLdRfVar var_1B8
  loc_D54C1C: FLdPr Me
  loc_D54C1F: MemLdRfVar from_stack_1.global_56
  loc_D54C22: NewIfNullPr clsboleto
  loc_D54C25: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54C2A: FLdPr var_1B8
  loc_D54C2D:  = Me.Fields
  loc_D54C32: FLdPr var_1C0
  loc_D54C35: from_stack_2 = Me.Item(from_stack_1)
  loc_D54C3A: FLdPr var_2E4
  loc_D54C3D:  = Me.Value
  loc_D54C42: LitI4 2
  loc_D54C47: FLdFPR8 var_178
  loc_D54C4A: FLdRfVar var_1D4
  loc_D54C4D: FnCDblVar
  loc_D54C4F: MulR8
  loc_D54C50: LitI2_Byte &H64
  loc_D54C52: CR8I2
  loc_D54C53: DivR8
  loc_D54C54: CVarR8
  loc_D54C58: FLdRfVar var_288
  loc_D54C5B: ImpAdCallFPR4  = Round(, )
  loc_D54C60: FLdRfVar var_288
  loc_D54C63: CR4Var
  loc_D54C64: FStFPR8 var_A4
  loc_D54C67: FFreeAd var_1B8 = "": var_1C0 = ""
  loc_D54C70: FFreeVar var_1D4 = "": var_268 = ""
  loc_D54C79: Branch loc_D54C82
  loc_D54C7C: LitI2_Byte 0
  loc_D54C7E: CR8I2
  loc_D54C7F: FStFPR8 var_A4
  loc_D54C82: FLdI2 var_1A2
  loc_D54C85: LitI2_Byte &HFF
  loc_D54C87: EqI2
  loc_D54C88: BranchF loc_D54C9A
  loc_D54C8B: LitI2_Byte 0
  loc_D54C8D: CR8I2
  loc_D54C8E: FStFPR8 var_AC
  loc_D54C91: LitI2_Byte 0
  loc_D54C93: CR8I2
  loc_D54C94: FStFPR8 var_B4
  loc_D54C97: Branch loc_D54D35
  loc_D54C9A: FLdFPR8 var_C4
  loc_D54C9D: LitI2_Byte 0
  loc_D54C9F: CR8I2
  loc_D54CA0: GtR4
  loc_D54CA1: BranchF loc_D54CFD
  loc_D54CA4: FLdFPR8 var_A4
  loc_D54CA7: FLdFPR8 var_178
  loc_D54CAA: FLdFPR8 var_180
  loc_D54CAD: AddR8
  loc_D54CAE: CR8R8
  loc_D54CAF: EqR4
  loc_D54CB0: BranchF loc_D54CC2
  loc_D54CB3: LitI2_Byte 0
  loc_D54CB5: CR8I2
  loc_D54CB6: FStFPR8 var_AC
  loc_D54CB9: LitI2_Byte 0
  loc_D54CBB: CR8I2
  loc_D54CBC: FStFPR8 var_B4
  loc_D54CBF: Branch loc_D54CFA
  loc_D54CC2: FLdFPR8 var_C4
  loc_D54CC5: FStFPR8 var_AC
  loc_D54CC8: LitI4 2
  loc_D54CCD: FLdFPR8 var_178
  loc_D54CD0: FLdFPR8 var_A4
  loc_D54CD3: SubR4
  loc_D54CD4: LitI2_Byte 6
  loc_D54CD6: CR8I2
  loc_D54CD7: MulR8
  loc_D54CD8: FLdFPR8 var_CC
  loc_D54CDB: MulR8
  loc_D54CDC: LitI2_Byte &H64
  loc_D54CDE: CR8I2
  loc_D54CDF: DivR8
  loc_D54CE0: CVarR8
  loc_D54CE4: FLdRfVar var_268
  loc_D54CE7: ImpAdCallFPR4  = Round(, )
  loc_D54CEC: FLdRfVar var_268
  loc_D54CEF: CR4Var
  loc_D54CF0: FStFPR8 var_B4
  loc_D54CF3: FFreeVar var_1D4 = ""
  loc_D54CFA: Branch loc_D54D35
  loc_D54CFD: LitI4 2
  loc_D54D02: FLdFPR8 var_178
  loc_D54D05: FLdFPR8 var_A4
  loc_D54D08: SubR4
  loc_D54D09: LitI2_Byte 6
  loc_D54D0B: CR8I2
  loc_D54D0C: MulR8
  loc_D54D0D: FLdFPR8 var_CC
  loc_D54D10: MulR8
  loc_D54D11: LitI2_Byte &H64
  loc_D54D13: CR8I2
  loc_D54D14: DivR8
  loc_D54D15: CVarR8
  loc_D54D19: FLdRfVar var_268
  loc_D54D1C: ImpAdCallFPR4  = Round(, )
  loc_D54D21: FLdRfVar var_268
  loc_D54D24: CR4Var
  loc_D54D25: FStFPR8 var_B4
  loc_D54D28: FFreeVar var_1D4 = ""
  loc_D54D2F: LitI2_Byte 0
  loc_D54D31: CR8I2
  loc_D54D32: FStFPR8 var_AC
  loc_D54D35: FLdFPR8 var_178
  loc_D54D38: LitI2 2860
  loc_D54D3B: CR8I2
  loc_D54D3C: AddR8
  loc_D54D3D: FLdFPR8 var_1AC
  loc_D54D40: AddR8
  loc_D54D41: FStFPR8 var_178
  loc_D54D44: LitI4 2
  loc_D54D49: FLdFPR8 var_178
  loc_D54D4C: FLdFPR8 var_180
  loc_D54D4F: AddR8
  loc_D54D50: FLdFPR8 var_188
  loc_D54D53: AddR8
  loc_D54D54: FLdFPR8 var_190
  loc_D54D57: AddR8
  loc_D54D58: FLdFPR8 var_198
  loc_D54D5B: AddR8
  loc_D54D5C: FLdFPR8 var_1A0
  loc_D54D5F: AddR8
  loc_D54D60: CVarR8
  loc_D54D64: FLdRfVar var_268
  loc_D54D67: ImpAdCallFPR4  = Round(, )
  loc_D54D6C: FLdRfVar var_268
  loc_D54D6F: CR4Var
  loc_D54D70: FStFPR8 var_94
  loc_D54D73: FFreeVar var_1D4 = ""
  loc_D54D7A: FLdI2 var_1A2
  loc_D54D7D: LitI2_Byte &HFF
  loc_D54D7F: EqI2
  loc_D54D80: BranchF loc_D54D89
  loc_D54D83: FLdFPR8 var_94
  loc_D54D86: FStFPR8 var_A4
  loc_D54D89: Branch loc_D54E93
  loc_D54D8C: LitI2_Byte 0
  loc_D54D8E: CR8I2
  loc_D54D8F: FStFPR8 var_178
  loc_D54D92: FLdRfVar var_1BC
  loc_D54D95: FLdPr Me
  loc_D54D98: VCallAd Control_ID_PeriLiquTxt
  loc_D54D9B: FStAdFunc var_1B8
  loc_D54D9E: FLdPr var_1B8
  loc_D54DA1:  = Me.Text
  loc_D54DA6: FLdRfVar var_1C4
  loc_D54DA9: FLdPr Me
  loc_D54DAC: VCallAd Control_ID_CodiTiliTxt
  loc_D54DAF: FStAdFunc var_1C0
  loc_D54DB2: FLdPr var_1C0
  loc_D54DB5:  = Me.Text
  loc_D54DBA: FLdRfVar var_298
  loc_D54DBD: FLdRfVar var_320
  loc_D54DC0: LitVarStr var_1E8, "nro_padron"
  loc_D54DC5: PopAdLdVar
  loc_D54DC6: FLdRfVar var_2E8
  loc_D54DC9: FLdRfVar var_2E4
  loc_D54DCC: FLdPr Me
  loc_D54DCF: MemLdRfVar from_stack_1.global_88
  loc_D54DD2: NewIfNullPr clsboleto
  loc_D54DD5: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54DDA: FLdPr var_2E4
  loc_D54DDD:  = Me.Fields
  loc_D54DE2: FLdPr var_2E8
  loc_D54DE5: from_stack_2 = Me.Item(from_stack_1)
  loc_D54DEA: FLdPr var_320
  loc_D54DED:  = Me.Value
  loc_D54DF2: LitVarStr var_208, "Cuenta: "
  loc_D54DF7: FLdRfVar var_1D4
  loc_D54DFA: FLdRfVar var_32C
  loc_D54DFD: LitVarStr var_1F8, "nro_padron"
  loc_D54E02: PopAdLdVar
  loc_D54E03: FLdRfVar var_328
  loc_D54E06: FLdRfVar var_324
  loc_D54E09: FLdPr Me
  loc_D54E0C: MemLdRfVar from_stack_1.global_88
  loc_D54E0F: NewIfNullPr clsboleto
  loc_D54E12: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54E17: FLdPr var_324
  loc_D54E1A:  = Me.Fields
  loc_D54E1F: FLdPr var_328
  loc_D54E22: from_stack_2 = Me.Item(from_stack_1)
  loc_D54E27: FLdPr var_32C
  loc_D54E2A:  = Me.Value
  loc_D54E2F: FLdRfVar var_1D4
  loc_D54E32: ConcatVar var_268
  loc_D54E36: LitVarStr var_218, " PAGO EL ANUAL EN FORMA MANUAL"
  loc_D54E3B: ConcatVar var_288
  loc_D54E3F: CStrVarVal var_2CC
  loc_D54E43: FLdRfVar var_298
  loc_D54E46: CI4Var
  loc_D54E48: FLdI2 var_8A
  loc_D54E4B: CUI1I2
  loc_D54E4D: ILdRf var_1C4
  loc_D54E50: CUI1Str
  loc_D54E52: FLdPr Me
  loc_D54E55: MemLdUI1 global_100
  loc_D54E59: ILdRf var_1BC
  loc_D54E5C: CI2Str
  loc_D54E5E: FLdPr Me
  loc_D54E61: MemLdRfVar from_stack_1.global_76
  loc_D54E64: NewIfNullPr clsliqutasa
  loc_D54E67: Call clsliqutasa.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_D54E6C: FFreeStr var_1BC = "": var_1C4 = ""
  loc_D54E75: FFreeAd var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = "": var_324 = "": var_328 = "": var_32C = ""
  loc_D54E88: FFreeVar var_1D4 = "": var_268 = "": var_298 = ""
  loc_D54E93: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') calle_real_codigo, IFNULL(domicilio.calle,'') as calle_real_nombre, IFNULL(domicilio.NumeCalle,'0') as calle_real_numero, IFNULL(domicilio.CodiBarrio,'0') barrio_real_codigo, IFNULL(domicilio.barrio,'') as barrio_real_nombre, IFNULL(domicilio.Manzana,'') as barrio_real_manzana, IFNULL(domicilio.Casa,'') as barrio_real_casa, "
  loc_D54E96: LitStr " concat(domicilio.Monoblock,"
  loc_D54E99: ConcatStr
  loc_D54E9A: FStStrNoPop var_1BC
  loc_D54E9D: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_D54EA0: ConcatStr
  loc_D54EA1: FStStrNoPop var_1C4
  loc_D54EA4: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_D54EA7: ConcatStr
  loc_D54EA8: FStStrNoPop var_2CC
  loc_D54EAB: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_D54EAE: ConcatStr
  loc_D54EAF: FStStrNoPop var_2D0
  loc_D54EB2: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_D54EB5: ConcatStr
  loc_D54EB6: FStStrNoPop var_2D4
  loc_D54EB9: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta)  as ubicacion_real,"
  loc_D54EBC: ConcatStr
  loc_D54EBD: FStStrNoPop var_2F4
  loc_D54EC0: LitStr " IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') direccion_real_codigo, IFNULL(domicilio.Localidad,'') as direccion_real_localidad, IFNULL(domicilio.CodPostal,'0') as direccion_real_CodPostal, domicilio.vinculo"
  loc_D54EC3: ConcatStr
  loc_D54EC4: FStStrNoPop var_2F8
  loc_D54EC7: LitStr " FROM domicilio"
  loc_D54ECA: ConcatStr
  loc_D54ECB: FStStrNoPop var_2FC
  loc_D54ECE: LitStr " WHERE CodiOfic = 1"
  loc_D54ED1: ConcatStr
  loc_D54ED2: FStStrNoPop var_300
  loc_D54ED5: LitStr " AND CodiCome = "
  loc_D54ED8: ConcatStr
  loc_D54ED9: CVarStr var_268
  loc_D54EDC: FLdRfVar var_1D4
  loc_D54EDF: FLdRfVar var_2E4
  loc_D54EE2: LitVarStr var_1E8, "nro_padron"
  loc_D54EE7: PopAdLdVar
  loc_D54EE8: FLdRfVar var_1C0
  loc_D54EEB: FLdRfVar var_1B8
  loc_D54EEE: FLdPr Me
  loc_D54EF1: MemLdRfVar from_stack_1.global_88
  loc_D54EF4: NewIfNullPr clsboleto
  loc_D54EF7: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54EFC: FLdPr var_1B8
  loc_D54EFF:  = Me.Fields
  loc_D54F04: FLdPr var_1C0
  loc_D54F07: from_stack_2 = Me.Item(from_stack_1)
  loc_D54F0C: FLdPr var_2E4
  loc_D54F0F:  = Me.Value
  loc_D54F14: FLdRfVar var_1D4
  loc_D54F17: ConcatVar var_288
  loc_D54F1B: LitVarStr var_1F8, " AND Tipo = 'Real'"
  loc_D54F20: ConcatVar var_298
  loc_D54F24: CStrVarVal var_304
  loc_D54F28: FLdPr Me
  loc_D54F2B: MemLdRfVar from_stack_1.global_60
  loc_D54F2E: NewIfNullPr clsboleto
  loc_D54F31: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D54F36: FFreeStr var_1BC = "": var_1C4 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = ""
  loc_D54F4D: FFreeAd var_1B8 = "": var_1C0 = ""
  loc_D54F56: FFreeVar var_268 = "": var_1D4 = "": var_288 = ""
  loc_D54F61: FLdRfVar var_2D8
  loc_D54F64: FLdPr Me
  loc_D54F67: MemLdRfVar from_stack_1.global_60
  loc_D54F6A: NewIfNullPr clsboleto
  loc_D54F6D: from_stack_1 = clsboleto.RecordCount
  loc_D54F72: ILdRf var_2D8
  loc_D54F75: LitI4 0
  loc_D54F7A: GtI4
  loc_D54F7B: BranchF loc_D55358
  loc_D54F7E: LitI4 0
  loc_D54F83: LitI4 &HC
  loc_D54F88: FLdRfVar var_1B0
  loc_D54F8B: Redim
  loc_D54F95: FLdRfVar var_2E4
  loc_D54F98: LitVarStr var_1E8, "calle_real_codigo"
  loc_D54F9D: PopAdLdVar
  loc_D54F9E: FLdRfVar var_1C0
  loc_D54FA1: FLdRfVar var_1B8
  loc_D54FA4: FLdPr Me
  loc_D54FA7: MemLdRfVar from_stack_1.global_60
  loc_D54FAA: NewIfNullPr clsboleto
  loc_D54FAD: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54FB2: FLdPr var_1B8
  loc_D54FB5:  = Me.Fields
  loc_D54FBA: FLdPr var_1C0
  loc_D54FBD: from_stack_2 = Me.Item(from_stack_1)
  loc_D54FC2: FLdZeroAd var_2E4
  loc_D54FC5: CVarAd
  loc_D54FC9: LitI4 0
  loc_D54FCE: ILdRf var_1B0
  loc_D54FD1: Ary1StVar
  loc_D54FD2: FFreeAd var_1B8 = ""
  loc_D54FD9: FFree1Var var_1D4 = ""
  loc_D54FDC: FLdRfVar var_2E4
  loc_D54FDF: LitVarStr var_1E8, "calle_real_nombre"
  loc_D54FE4: PopAdLdVar
  loc_D54FE5: FLdRfVar var_1C0
  loc_D54FE8: FLdRfVar var_1B8
  loc_D54FEB: FLdPr Me
  loc_D54FEE: MemLdRfVar from_stack_1.global_60
  loc_D54FF1: NewIfNullPr clsboleto
  loc_D54FF4: from_stack_1v = clsboleto.RsFrmGet()
  loc_D54FF9: FLdPr var_1B8
  loc_D54FFC:  = Me.Fields
  loc_D55001: FLdPr var_1C0
  loc_D55004: from_stack_2 = Me.Item(from_stack_1)
  loc_D55009: FLdZeroAd var_2E4
  loc_D5500C: CVarAd
  loc_D55010: LitI4 1
  loc_D55015: ILdRf var_1B0
  loc_D55018: Ary1StVar
  loc_D55019: FFreeAd var_1B8 = ""
  loc_D55020: FFree1Var var_1D4 = ""
  loc_D55023: FLdRfVar var_1D4
  loc_D55026: FLdRfVar var_2E4
  loc_D55029: LitVarStr var_1E8, "calle_real_numero"
  loc_D5502E: PopAdLdVar
  loc_D5502F: FLdRfVar var_1C0
  loc_D55032: FLdRfVar var_1B8
  loc_D55035: FLdPr Me
  loc_D55038: MemLdRfVar from_stack_1.global_60
  loc_D5503B: NewIfNullPr clsboleto
  loc_D5503E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55043: FLdPr var_1B8
  loc_D55046:  = Me.Fields
  loc_D5504B: FLdPr var_1C0
  loc_D5504E: from_stack_2 = Me.Item(from_stack_1)
  loc_D55053: FLdPr var_2E4
  loc_D55056:  = Me.Value
  loc_D5505B: FLdRfVar var_324
  loc_D5505E: LitVarStr var_208, "calle_real_numero"
  loc_D55063: PopAdLdVar
  loc_D55064: FLdRfVar var_320
  loc_D55067: FLdRfVar var_2E8
  loc_D5506A: FLdPr Me
  loc_D5506D: MemLdRfVar from_stack_1.global_60
  loc_D55070: NewIfNullPr clsboleto
  loc_D55073: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55078: FLdPr var_2E8
  loc_D5507B:  = Me.Fields
  loc_D55080: FLdPr var_320
  loc_D55083: from_stack_2 = Me.Item(from_stack_1)
  loc_D55088: FLdZeroAd var_324
  loc_D5508B: CVarAd
  loc_D5508F: LitVarI2 var_298, 0
  loc_D55094: FLdRfVar var_1D4
  loc_D55097: LitVarStr var_1F8, vbNullString
  loc_D5509C: HardType
  loc_D5509D: EqVar var_268
  loc_D550A1: FStVar var_288
  loc_D550A5: FLdRfVar var_288
  loc_D550A8: FLdRfVar var_2C8
  loc_D550AB: ImpAdCallFPR4  = IIf(, , )
  loc_D550B0: FLdRfVar var_2C8
  loc_D550B3: LitI4 2
  loc_D550B8: ILdRf var_1B0
  loc_D550BB: Ary1StVar
  loc_D550BC: FFreeAd var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = ""
  loc_D550C9: FFreeVar var_1D4 = "": var_288 = "": var_298 = "": var_2A8 = ""
  loc_D550D6: FLdRfVar var_2E4
  loc_D550D9: LitVarStr var_1E8, "barrio_real_codigo"
  loc_D550DE: PopAdLdVar
  loc_D550DF: FLdRfVar var_1C0
  loc_D550E2: FLdRfVar var_1B8
  loc_D550E5: FLdPr Me
  loc_D550E8: MemLdRfVar from_stack_1.global_60
  loc_D550EB: NewIfNullPr clsboleto
  loc_D550EE: from_stack_1v = clsboleto.RsFrmGet()
  loc_D550F3: FLdPr var_1B8
  loc_D550F6:  = Me.Fields
  loc_D550FB: FLdPr var_1C0
  loc_D550FE: from_stack_2 = Me.Item(from_stack_1)
  loc_D55103: FLdZeroAd var_2E4
  loc_D55106: CVarAd
  loc_D5510A: LitI4 3
  loc_D5510F: ILdRf var_1B0
  loc_D55112: Ary1StVar
  loc_D55113: FFreeAd var_1B8 = ""
  loc_D5511A: FFree1Var var_1D4 = ""
  loc_D5511D: FLdRfVar var_2E4
  loc_D55120: LitVarStr var_1E8, "barrio_real_nombre"
  loc_D55125: PopAdLdVar
  loc_D55126: FLdRfVar var_1C0
  loc_D55129: FLdRfVar var_1B8
  loc_D5512C: FLdPr Me
  loc_D5512F: MemLdRfVar from_stack_1.global_60
  loc_D55132: NewIfNullPr clsboleto
  loc_D55135: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5513A: FLdPr var_1B8
  loc_D5513D:  = Me.Fields
  loc_D55142: FLdPr var_1C0
  loc_D55145: from_stack_2 = Me.Item(from_stack_1)
  loc_D5514A: FLdZeroAd var_2E4
  loc_D5514D: CVarAd
  loc_D55151: LitI4 4
  loc_D55156: ILdRf var_1B0
  loc_D55159: Ary1StVar
  loc_D5515A: FFreeAd var_1B8 = ""
  loc_D55161: FFree1Var var_1D4 = ""
  loc_D55164: FLdRfVar var_2E4
  loc_D55167: LitVarStr var_1E8, "barrio_real_manzana"
  loc_D5516C: PopAdLdVar
  loc_D5516D: FLdRfVar var_1C0
  loc_D55170: FLdRfVar var_1B8
  loc_D55173: FLdPr Me
  loc_D55176: MemLdRfVar from_stack_1.global_60
  loc_D55179: NewIfNullPr clsboleto
  loc_D5517C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55181: FLdPr var_1B8
  loc_D55184:  = Me.Fields
  loc_D55189: FLdPr var_1C0
  loc_D5518C: from_stack_2 = Me.Item(from_stack_1)
  loc_D55191: FLdZeroAd var_2E4
  loc_D55194: CVarAd
  loc_D55198: LitI4 5
  loc_D5519D: ILdRf var_1B0
  loc_D551A0: Ary1StVar
  loc_D551A1: FFreeAd var_1B8 = ""
  loc_D551A8: FFree1Var var_1D4 = ""
  loc_D551AB: FLdRfVar var_2E4
  loc_D551AE: LitVarStr var_1E8, "barrio_real_casa"
  loc_D551B3: PopAdLdVar
  loc_D551B4: FLdRfVar var_1C0
  loc_D551B7: FLdRfVar var_1B8
  loc_D551BA: FLdPr Me
  loc_D551BD: MemLdRfVar from_stack_1.global_60
  loc_D551C0: NewIfNullPr clsboleto
  loc_D551C3: from_stack_1v = clsboleto.RsFrmGet()
  loc_D551C8: FLdPr var_1B8
  loc_D551CB:  = Me.Fields
  loc_D551D0: FLdPr var_1C0
  loc_D551D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D551D8: FLdZeroAd var_2E4
  loc_D551DB: CVarAd
  loc_D551DF: LitI4 6
  loc_D551E4: ILdRf var_1B0
  loc_D551E7: Ary1StVar
  loc_D551E8: FFreeAd var_1B8 = ""
  loc_D551EF: FFree1Var var_1D4 = ""
  loc_D551F2: FLdRfVar var_2E4
  loc_D551F5: LitVarStr var_1E8, "ubicacion_real"
  loc_D551FA: PopAdLdVar
  loc_D551FB: FLdRfVar var_1C0
  loc_D551FE: FLdRfVar var_1B8
  loc_D55201: FLdPr Me
  loc_D55204: MemLdRfVar from_stack_1.global_60
  loc_D55207: NewIfNullPr clsboleto
  loc_D5520A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5520F: FLdPr var_1B8
  loc_D55212:  = Me.Fields
  loc_D55217: FLdPr var_1C0
  loc_D5521A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5521F: FLdZeroAd var_2E4
  loc_D55222: CVarAd
  loc_D55226: LitI4 7
  loc_D5522B: ILdRf var_1B0
  loc_D5522E: Ary1StVar
  loc_D5522F: FFreeAd var_1B8 = ""
  loc_D55236: FFree1Var var_1D4 = ""
  loc_D55239: FLdRfVar var_2E4
  loc_D5523C: LitVarStr var_1E8, "direccion_real_codigo"
  loc_D55241: PopAdLdVar
  loc_D55242: FLdRfVar var_1C0
  loc_D55245: FLdRfVar var_1B8
  loc_D55248: FLdPr Me
  loc_D5524B: MemLdRfVar from_stack_1.global_60
  loc_D5524E: NewIfNullPr clsboleto
  loc_D55251: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55256: FLdPr var_1B8
  loc_D55259:  = Me.Fields
  loc_D5525E: FLdPr var_1C0
  loc_D55261: from_stack_2 = Me.Item(from_stack_1)
  loc_D55266: FLdZeroAd var_2E4
  loc_D55269: CVarAd
  loc_D5526D: LitI4 8
  loc_D55272: ILdRf var_1B0
  loc_D55275: Ary1StVar
  loc_D55276: FFreeAd var_1B8 = ""
  loc_D5527D: FFree1Var var_1D4 = ""
  loc_D55280: FLdRfVar var_2E4
  loc_D55283: LitVarStr var_1E8, "direccion_real_localidad"
  loc_D55288: PopAdLdVar
  loc_D55289: FLdRfVar var_1C0
  loc_D5528C: FLdRfVar var_1B8
  loc_D5528F: FLdPr Me
  loc_D55292: MemLdRfVar from_stack_1.global_60
  loc_D55295: NewIfNullPr clsboleto
  loc_D55298: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5529D: FLdPr var_1B8
  loc_D552A0:  = Me.Fields
  loc_D552A5: FLdPr var_1C0
  loc_D552A8: from_stack_2 = Me.Item(from_stack_1)
  loc_D552AD: FLdZeroAd var_2E4
  loc_D552B0: CVarAd
  loc_D552B4: LitI4 9
  loc_D552B9: ILdRf var_1B0
  loc_D552BC: Ary1StVar
  loc_D552BD: FFreeAd var_1B8 = ""
  loc_D552C4: FFree1Var var_1D4 = ""
  loc_D552C7: FLdRfVar var_2E4
  loc_D552CA: LitVarStr var_1E8, "direccion_real_CodPostal"
  loc_D552CF: PopAdLdVar
  loc_D552D0: FLdRfVar var_1C0
  loc_D552D3: FLdRfVar var_1B8
  loc_D552D6: FLdPr Me
  loc_D552D9: MemLdRfVar from_stack_1.global_60
  loc_D552DC: NewIfNullPr clsboleto
  loc_D552DF: from_stack_1v = clsboleto.RsFrmGet()
  loc_D552E4: FLdPr var_1B8
  loc_D552E7:  = Me.Fields
  loc_D552EC: FLdPr var_1C0
  loc_D552EF: from_stack_2 = Me.Item(from_stack_1)
  loc_D552F4: FLdZeroAd var_2E4
  loc_D552F7: CVarAd
  loc_D552FB: LitI4 &HA
  loc_D55300: ILdRf var_1B0
  loc_D55303: Ary1StVar
  loc_D55304: FFreeAd var_1B8 = ""
  loc_D5530B: FFree1Var var_1D4 = ""
  loc_D5530E: FLdRfVar var_2E4
  loc_D55311: LitVarStr var_1E8, "parcela_ryb_descrip"
  loc_D55316: PopAdLdVar
  loc_D55317: FLdRfVar var_1C0
  loc_D5531A: FLdRfVar var_1B8
  loc_D5531D: FLdPr Me
  loc_D55320: MemLdRfVar from_stack_1.global_88
  loc_D55323: NewIfNullPr clsboleto
  loc_D55326: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5532B: FLdPr var_1B8
  loc_D5532E:  = Me.Fields
  loc_D55333: FLdPr var_1C0
  loc_D55336: from_stack_2 = Me.Item(from_stack_1)
  loc_D5533B: FLdZeroAd var_2E4
  loc_D5533E: CVarAd
  loc_D55342: LitI4 &HB
  loc_D55347: ILdRf var_1B0
  loc_D5534A: Ary1StVar
  loc_D5534B: FFreeAd var_1B8 = ""
  loc_D55352: FFree1Var var_1D4 = ""
  loc_D55355: Branch loc_D5541F
  loc_D55358: LitI4 0
  loc_D5535D: LitI4 &HC
  loc_D55362: FLdRfVar var_1B0
  loc_D55365: Redim
  loc_D5536F: LitVarI2 var_1E8, 0
  loc_D55374: LitI4 0
  loc_D55379: ILdRf var_1B0
  loc_D5537C: Ary1StVar
  loc_D5537D: LitVarStr var_1E8, vbNullString
  loc_D55382: LitI4 1
  loc_D55387: ILdRf var_1B0
  loc_D5538A: Ary1StVarCopy
  loc_D5538C: LitVarI2 var_1E8, 0
  loc_D55391: LitI4 2
  loc_D55396: ILdRf var_1B0
  loc_D55399: Ary1StVar
  loc_D5539A: LitVarI2 var_1E8, 0
  loc_D5539F: LitI4 3
  loc_D553A4: ILdRf var_1B0
  loc_D553A7: Ary1StVar
  loc_D553A8: LitVarStr var_1E8, vbNullString
  loc_D553AD: LitI4 4
  loc_D553B2: ILdRf var_1B0
  loc_D553B5: Ary1StVarCopy
  loc_D553B7: LitVarStr var_1E8, vbNullString
  loc_D553BC: LitI4 5
  loc_D553C1: ILdRf var_1B0
  loc_D553C4: Ary1StVarCopy
  loc_D553C6: LitVarStr var_1E8, vbNullString
  loc_D553CB: LitI4 6
  loc_D553D0: ILdRf var_1B0
  loc_D553D3: Ary1StVarCopy
  loc_D553D5: LitVarStr var_1E8, vbNullString
  loc_D553DA: LitI4 7
  loc_D553DF: ILdRf var_1B0
  loc_D553E2: Ary1StVarCopy
  loc_D553E4: LitVarI2 var_1E8, 0
  loc_D553E9: LitI4 8
  loc_D553EE: ILdRf var_1B0
  loc_D553F1: Ary1StVar
  loc_D553F2: LitVarStr var_1E8, vbNullString
  loc_D553F7: LitI4 9
  loc_D553FC: ILdRf var_1B0
  loc_D553FF: Ary1StVarCopy
  loc_D55401: LitVarStr var_1E8, vbNullString
  loc_D55406: LitI4 &HA
  loc_D5540B: ILdRf var_1B0
  loc_D5540E: Ary1StVarCopy
  loc_D55410: LitVarStr var_1E8, vbNullString
  loc_D55415: LitI4 &HB
  loc_D5541A: ILdRf var_1B0
  loc_D5541D: Ary1StVarCopy
  loc_D5541F: FLdFPR8 var_178
  loc_D55422: LitI2_Byte 0
  loc_D55424: CR8I2
  loc_D55425: GtR4
  loc_D55426: BranchF loc_D593D4
  loc_D55429: FLdPr Me
  loc_D5542C: MemLdI2 global_96
  loc_D5542F: CUI1I2
  loc_D55431: FLdPr Me
  loc_D55434: MemLdRfVar from_stack_1.global_100
  loc_D55437: FLdPr Me
  loc_D5543A: MemLdI2 global_98
  loc_D5543D: CUI1I2
  loc_D5543F: ForUI1 var_38C
  loc_D55445: FLdRfVar var_1BC
  loc_D55448: FLdPr Me
  loc_D5544B: VCallAd Control_ID_BimeLiquTxt
  loc_D5544E: FStAdFunc var_1B8
  loc_D55451: FLdPr var_1B8
  loc_D55454:  = Me.Text
  loc_D55459: ILdRf var_1BC
  loc_D5545C: CR8Str
  loc_D5545E: LitI2_Byte 1
  loc_D55460: CR8I2
  loc_D55461: GtR4
  loc_D55462: FFree1Str var_1BC
  loc_D55465: FFree1Ad var_1B8
  loc_D55468: BranchF loc_D554F8
  loc_D5546B: FLdRfVar var_1D4
  loc_D5546E: FLdRfVar var_2E4
  loc_D55471: LitVarStr var_1E8, "nro_padron"
  loc_D55476: PopAdLdVar
  loc_D55477: FLdRfVar var_1C0
  loc_D5547A: FLdRfVar var_1B8
  loc_D5547D: FLdPr Me
  loc_D55480: MemLdRfVar from_stack_1.global_88
  loc_D55483: NewIfNullPr clsboleto
  loc_D55486: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5548B: FLdPr var_1B8
  loc_D5548E:  = Me.Fields
  loc_D55493: FLdPr var_1C0
  loc_D55496: from_stack_2 = Me.Item(from_stack_1)
  loc_D5549B: FLdPr var_2E4
  loc_D5549E:  = Me.Value
  loc_D554A3: FLdRfVar var_1BC
  loc_D554A6: FLdPr Me
  loc_D554A9: VCallAd Control_ID_PeriLiquTxt
  loc_D554AC: FStAdFunc var_2E8
  loc_D554AF: FLdPr var_2E8
  loc_D554B2:  = Me.Text
  loc_D554B7: FLdRfVar var_1B2
  loc_D554BA: FLdPr Me
  loc_D554BD: MemLdI2 global_96
  loc_D554C0: ILdRf var_1BC
  loc_D554C3: CI2Str
  loc_D554C5: FLdRfVar var_1D4
  loc_D554C8: CStrVarTmp
  loc_D554C9: FStStrNoPop var_1C4
  loc_D554CC: FLdPr Me
  loc_D554CF: MemLdRfVar from_stack_1.global_76
  loc_D554D2: NewIfNullPr clsliqutasa
  loc_D554D5: from_stack_4v = clsliqutasa.BuscaDeudaDeBimestreParaLaEmisionMasiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D554DA: FLdI2 var_1B2
  loc_D554DD: FStI2 var_15E
  loc_D554E0: FFreeStr var_1C4 = ""
  loc_D554E7: FFreeAd var_1B8 = "": var_1C0 = "": var_2E8 = ""
  loc_D554F2: FFree1Var var_1D4 = ""
  loc_D554F5: Branch loc_D554FD
  loc_D554F8: LitI2_Byte &HFF
  loc_D554FA: FStI2 var_15E
  loc_D554FD: FLdI2 var_15E
  loc_D55500: LitI2_Byte &HFF
  loc_D55502: EqI2
  loc_D55503: BranchF loc_D57FB0
  loc_D55506: FLdPr Me
  loc_D55509: MemLdUI1 global_100
  loc_D5550D: FStUI1 var_38E
  loc_D55511: FLdUI1
  loc_D55515: LitI2_Byte 1
  loc_D55517: CUI1I2
  loc_D55519: EqI2
  loc_D5551A: BranchF loc_D55566
  loc_D5551D: ILdRf var_124
  loc_D55520: FStStrCopy var_154
  loc_D55523: FLdRfVar var_1BC
  loc_D55526: FLdPr Me
  loc_D55529: VCallAd Control_ID_PeriLiquTxt
  loc_D5552C: FStAdFunc var_1B8
  loc_D5552F: FLdPr var_1B8
  loc_D55532:  = Me.Text
  loc_D55537: LitI2_Byte 1
  loc_D55539: LitI2_Byte 3
  loc_D5553B: ILdRf var_1BC
  loc_D5553E: CR8Str
  loc_D55540: CI2R8
  loc_D55541: FLdRfVar var_1D4
  loc_D55544: ImpAdCallFPR4  = DateSerial(, , )
  loc_D55549: FLdRfVar var_1D4
  loc_D5554C: LitVarI2 var_1E8, 1
  loc_D55551: SubVar var_268
  loc_D55555: FnCDateVar
  loc_D55557: FStFPR8 var_10C
  loc_D5555A: FFree1Str var_1BC
  loc_D5555D: FFree1Ad var_1B8
  loc_D55560: FFree1Var var_1D4 = ""
  loc_D55563: Branch loc_D55710
  loc_D55566: FLdUI1
  loc_D5556A: LitI2_Byte 2
  loc_D5556C: CUI1I2
  loc_D5556E: EqI2
  loc_D5556F: BranchF loc_D555BB
  loc_D55572: ILdRf var_128
  loc_D55575: FStStrCopy var_154
  loc_D55578: FLdRfVar var_1BC
  loc_D5557B: FLdPr Me
  loc_D5557E: VCallAd Control_ID_PeriLiquTxt
  loc_D55581: FStAdFunc var_1B8
  loc_D55584: FLdPr var_1B8
  loc_D55587:  = Me.Text
  loc_D5558C: LitI2_Byte 1
  loc_D5558E: LitI2_Byte 5
  loc_D55590: ILdRf var_1BC
  loc_D55593: CR8Str
  loc_D55595: CI2R8
  loc_D55596: FLdRfVar var_1D4
  loc_D55599: ImpAdCallFPR4  = DateSerial(, , )
  loc_D5559E: FLdRfVar var_1D4
  loc_D555A1: LitVarI2 var_1E8, 1
  loc_D555A6: SubVar var_268
  loc_D555AA: FnCDateVar
  loc_D555AC: FStFPR8 var_10C
  loc_D555AF: FFree1Str var_1BC
  loc_D555B2: FFree1Ad var_1B8
  loc_D555B5: FFree1Var var_1D4 = ""
  loc_D555B8: Branch loc_D55710
  loc_D555BB: FLdUI1
  loc_D555BF: LitI2_Byte 3
  loc_D555C1: CUI1I2
  loc_D555C3: EqI2
  loc_D555C4: BranchF loc_D55610
  loc_D555C7: ILdRf var_12C
  loc_D555CA: FStStrCopy var_154
  loc_D555CD: FLdRfVar var_1BC
  loc_D555D0: FLdPr Me
  loc_D555D3: VCallAd Control_ID_PeriLiquTxt
  loc_D555D6: FStAdFunc var_1B8
  loc_D555D9: FLdPr var_1B8
  loc_D555DC:  = Me.Text
  loc_D555E1: LitI2_Byte 1
  loc_D555E3: LitI2_Byte 7
  loc_D555E5: ILdRf var_1BC
  loc_D555E8: CR8Str
  loc_D555EA: CI2R8
  loc_D555EB: FLdRfVar var_1D4
  loc_D555EE: ImpAdCallFPR4  = DateSerial(, , )
  loc_D555F3: FLdRfVar var_1D4
  loc_D555F6: LitVarI2 var_1E8, 1
  loc_D555FB: SubVar var_268
  loc_D555FF: FnCDateVar
  loc_D55601: FStFPR8 var_10C
  loc_D55604: FFree1Str var_1BC
  loc_D55607: FFree1Ad var_1B8
  loc_D5560A: FFree1Var var_1D4 = ""
  loc_D5560D: Branch loc_D55710
  loc_D55610: FLdUI1
  loc_D55614: LitI2_Byte 4
  loc_D55616: CUI1I2
  loc_D55618: EqI2
  loc_D55619: BranchF loc_D55665
  loc_D5561C: ILdRf var_130
  loc_D5561F: FStStrCopy var_154
  loc_D55622: FLdRfVar var_1BC
  loc_D55625: FLdPr Me
  loc_D55628: VCallAd Control_ID_PeriLiquTxt
  loc_D5562B: FStAdFunc var_1B8
  loc_D5562E: FLdPr var_1B8
  loc_D55631:  = Me.Text
  loc_D55636: LitI2_Byte 1
  loc_D55638: LitI2_Byte 9
  loc_D5563A: ILdRf var_1BC
  loc_D5563D: CR8Str
  loc_D5563F: CI2R8
  loc_D55640: FLdRfVar var_1D4
  loc_D55643: ImpAdCallFPR4  = DateSerial(, , )
  loc_D55648: FLdRfVar var_1D4
  loc_D5564B: LitVarI2 var_1E8, 1
  loc_D55650: SubVar var_268
  loc_D55654: FnCDateVar
  loc_D55656: FStFPR8 var_10C
  loc_D55659: FFree1Str var_1BC
  loc_D5565C: FFree1Ad var_1B8
  loc_D5565F: FFree1Var var_1D4 = ""
  loc_D55662: Branch loc_D55710
  loc_D55665: FLdUI1
  loc_D55669: LitI2_Byte 5
  loc_D5566B: CUI1I2
  loc_D5566D: EqI2
  loc_D5566E: BranchF loc_D556BA
  loc_D55671: ILdRf var_134
  loc_D55674: FStStrCopy var_154
  loc_D55677: FLdRfVar var_1BC
  loc_D5567A: FLdPr Me
  loc_D5567D: VCallAd Control_ID_PeriLiquTxt
  loc_D55680: FStAdFunc var_1B8
  loc_D55683: FLdPr var_1B8
  loc_D55686:  = Me.Text
  loc_D5568B: LitI2_Byte 1
  loc_D5568D: LitI2_Byte &HB
  loc_D5568F: ILdRf var_1BC
  loc_D55692: CR8Str
  loc_D55694: CI2R8
  loc_D55695: FLdRfVar var_1D4
  loc_D55698: ImpAdCallFPR4  = DateSerial(, , )
  loc_D5569D: FLdRfVar var_1D4
  loc_D556A0: LitVarI2 var_1E8, 1
  loc_D556A5: SubVar var_268
  loc_D556A9: FnCDateVar
  loc_D556AB: FStFPR8 var_10C
  loc_D556AE: FFree1Str var_1BC
  loc_D556B1: FFree1Ad var_1B8
  loc_D556B4: FFree1Var var_1D4 = ""
  loc_D556B7: Branch loc_D55710
  loc_D556BA: FLdUI1
  loc_D556BE: LitI2_Byte 6
  loc_D556C0: CUI1I2
  loc_D556C2: EqI2
  loc_D556C3: BranchF loc_D55710
  loc_D556C6: ILdRf var_138
  loc_D556C9: FStStrCopy var_154
  loc_D556CC: FLdRfVar var_1BC
  loc_D556CF: FLdPr Me
  loc_D556D2: VCallAd Control_ID_PeriLiquTxt
  loc_D556D5: FStAdFunc var_1B8
  loc_D556D8: FLdPr var_1B8
  loc_D556DB:  = Me.Text
  loc_D556E0: LitI2_Byte 1
  loc_D556E2: LitI2_Byte 1
  loc_D556E4: ILdRf var_1BC
  loc_D556E7: CR8Str
  loc_D556E9: LitI2_Byte 1
  loc_D556EB: CR8I2
  loc_D556EC: AddR8
  loc_D556ED: CI2R8
  loc_D556EE: FLdRfVar var_1D4
  loc_D556F1: ImpAdCallFPR4  = DateSerial(, , )
  loc_D556F6: FLdRfVar var_1D4
  loc_D556F9: LitVarI2 var_1E8, 1
  loc_D556FE: SubVar var_268
  loc_D55702: FnCDateVar
  loc_D55704: FStFPR8 var_10C
  loc_D55707: FFree1Str var_1BC
  loc_D5570A: FFree1Ad var_1B8
  loc_D5570D: FFree1Var var_1D4 = ""
  loc_D55710: FLdFPR8 var_FC
  loc_D55713: CVarR8
  loc_D55717: HardType
  loc_D55718: LitI4 2
  loc_D5571D: FLdFPR8 var_94
  loc_D55720: FLdFPR8 var_A4
  loc_D55723: SubR4
  loc_D55724: FLdFPR8 var_AC
  loc_D55727: SubR4
  loc_D55728: CVarR8
  loc_D5572C: FLdRfVar var_268
  loc_D5572F: ImpAdCallFPR4  = Round(, )
  loc_D55734: FLdRfVar var_268
  loc_D55737: LtVarBool
  loc_D55739: FFreeVar var_1D4 = ""
  loc_D55740: BranchF loc_D55780
  loc_D55743: FLdFPR8 var_FC
  loc_D55746: FStFPR8 var_F4
  loc_D55749: LitI4 2
  loc_D5574E: FLdFPR8 var_94
  loc_D55751: FLdFPR8 var_A4
  loc_D55754: SubR4
  loc_D55755: FLdFPR8 var_AC
  loc_D55758: SubR4
  loc_D55759: FLdFPR8 var_F4
  loc_D5575C: SubR4
  loc_D5575D: CVarR8
  loc_D55761: FLdRfVar var_268
  loc_D55764: ImpAdCallFPR4  = Round(, )
  loc_D55769: FLdRfVar var_268
  loc_D5576C: CR4Var
  loc_D5576D: FStFPR8 var_EC
  loc_D55770: FFreeVar var_1D4 = ""
  loc_D55777: LitI2_Byte 0
  loc_D55779: CR8I2
  loc_D5577A: FStFPR8 var_FC
  loc_D5577D: Branch loc_D557BA
  loc_D55780: LitI4 2
  loc_D55785: FLdFPR8 var_94
  loc_D55788: FLdFPR8 var_A4
  loc_D5578B: SubR4
  loc_D5578C: FLdFPR8 var_AC
  loc_D5578F: SubR4
  loc_D55790: CVarR8
  loc_D55794: FLdRfVar var_268
  loc_D55797: ImpAdCallFPR4  = Round(, )
  loc_D5579C: FLdRfVar var_268
  loc_D5579F: CR4Var
  loc_D557A0: FStFPR8 var_F4
  loc_D557A3: FFreeVar var_1D4 = ""
  loc_D557AA: FLdFPR8 var_FC
  loc_D557AD: FLdFPR8 var_F4
  loc_D557B0: SubR4
  loc_D557B1: FStFPR8 var_FC
  loc_D557B4: LitI2_Byte 0
  loc_D557B6: CR8I2
  loc_D557B7: FStFPR8 var_EC
  loc_D557BA: FLdRfVar var_2D8
  loc_D557BD: FLdPr Me
  loc_D557C0: MemLdRfVar from_stack_1.global_56
  loc_D557C3: NewIfNullPr clsboleto
  loc_D557C6: from_stack_1 = clsboleto.RecordCount
  loc_D557CB: ILdRf var_2D8
  loc_D557CE: LitI4 0
  loc_D557D3: GtI4
  loc_D557D4: BranchF loc_D563AF
  loc_D557D7: FLdRfVar var_1BC
  loc_D557DA: FLdPr Me
  loc_D557DD: VCallAd Control_ID_PeriLiquTxt
  loc_D557E0: FStAdFunc var_1B8
  loc_D557E3: FLdPr var_1B8
  loc_D557E6:  = Me.Text
  loc_D557EB: FLdRfVar var_1C4
  loc_D557EE: FLdPr Me
  loc_D557F1: VCallAd Control_ID_CodiTiliTxt
  loc_D557F4: FStAdFunc var_1C0
  loc_D557F7: FLdPr var_1C0
  loc_D557FA:  = Me.Text
  loc_D557FF: FLdRfVar var_AFC
  loc_D55802: FLdRfVar var_320
  loc_D55805: LitVarStr var_1E8, "nro_padron"
  loc_D5580A: PopAdLdVar
  loc_D5580B: FLdRfVar var_2E8
  loc_D5580E: FLdRfVar var_2E4
  loc_D55811: FLdPr Me
  loc_D55814: MemLdRfVar from_stack_1.global_88
  loc_D55817: NewIfNullPr clsboleto
  loc_D5581A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5581F: FLdPr var_2E4
  loc_D55822:  = Me.Fields
  loc_D55827: FLdPr var_2E8
  loc_D5582A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5582F: FLdPr var_320
  loc_D55832:  = Me.Value
  loc_D55837: FLdRfVar var_1D4
  loc_D5583A: FLdRfVar var_32C
  loc_D5583D: LitVarStr var_1F8, "CucuPers"
  loc_D55842: PopAdLdVar
  loc_D55843: FLdRfVar var_328
  loc_D55846: FLdRfVar var_324
  loc_D55849: FLdPr Me
  loc_D5584C: MemLdRfVar from_stack_1.global_88
  loc_D5584F: NewIfNullPr clsboleto
  loc_D55852: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55857: FLdPr var_324
  loc_D5585A:  = Me.Fields
  loc_D5585F: FLdPr var_328
  loc_D55862: from_stack_2 = Me.Item(from_stack_1)
  loc_D55867: FLdPr var_32C
  loc_D5586A:  = Me.Value
  loc_D5586F: FLdRfVar var_338
  loc_D55872: LitVarStr var_218, "CucuPers"
  loc_D55877: PopAdLdVar
  loc_D55878: FLdRfVar var_334
  loc_D5587B: FLdRfVar var_330
  loc_D5587E: FLdPr Me
  loc_D55881: MemLdRfVar from_stack_1.global_88
  loc_D55884: NewIfNullPr clsboleto
  loc_D55887: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5588C: FLdPr var_330
  loc_D5588F:  = Me.Fields
  loc_D55894: FLdPr var_334
  loc_D55897: from_stack_2 = Me.Item(from_stack_1)
  loc_D5589C: FLdZeroAd var_338
  loc_D5589F: CVarAd
  loc_D558A3: LitVarI2 var_298, 0
  loc_D558A8: FLdRfVar var_1D4
  loc_D558AB: LitVarStr var_208, vbNullString
  loc_D558B0: HardType
  loc_D558B1: EqVar var_268
  loc_D558B5: FStVar var_288
  loc_D558B9: FLdRfVar var_288
  loc_D558BC: FLdRfVar var_2C8
  loc_D558BF: ImpAdCallFPR4  = IIf(, , )
  loc_D558C4: LitI4 0
  loc_D558C9: LitI4 -1
  loc_D558CE: LitI4 1
  loc_D558D3: LitStr vbNullString
  loc_D558D6: LitStr "-"
  loc_D558D9: FLdRfVar var_2C8
  loc_D558DC: CStrVarVal var_2CC
  loc_D558E0: ImpAdCallI2 Replace(, , , , , )
  loc_D558E5: FStStr var_BE0
  loc_D558E8: FLdRfVar var_B0C
  loc_D558EB: FLdRfVar var_344
  loc_D558EE: LitVarStr var_238, "denominacion"
  loc_D558F3: PopAdLdVar
  loc_D558F4: FLdRfVar var_340
  loc_D558F7: FLdRfVar var_33C
  loc_D558FA: FLdPr Me
  loc_D558FD: MemLdRfVar from_stack_1.global_88
  loc_D55900: NewIfNullPr clsboleto
  loc_D55903: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55908: FLdPr var_33C
  loc_D5590B:  = Me.Fields
  loc_D55910: FLdPr var_340
  loc_D55913: from_stack_2 = Me.Item(from_stack_1)
  loc_D55918: FLdPr var_344
  loc_D5591B:  = Me.Value
  loc_D55920: FLdRfVar var_B1C
  loc_D55923: FLdRfVar var_398
  loc_D55926: LitVarStr var_248, "CodiCalle"
  loc_D5592B: PopAdLdVar
  loc_D5592C: FLdRfVar var_394
  loc_D5592F: FLdRfVar var_348
  loc_D55932: FLdPr Me
  loc_D55935: MemLdRfVar from_stack_1.global_56
  loc_D55938: NewIfNullPr clsboleto
  loc_D5593B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55940: FLdPr var_348
  loc_D55943:  = Me.Fields
  loc_D55948: FLdPr var_394
  loc_D5594B: from_stack_2 = Me.Item(from_stack_1)
  loc_D55950: FLdPr var_398
  loc_D55953:  = Me.Value
  loc_D55958: FLdRfVar var_B2C
  loc_D5595B: FLdRfVar var_3A4
  loc_D5595E: LitVarStr var_258, "DecaPost"
  loc_D55963: PopAdLdVar
  loc_D55964: FLdRfVar var_3A0
  loc_D55967: FLdRfVar var_39C
  loc_D5596A: FLdPr Me
  loc_D5596D: MemLdRfVar from_stack_1.global_56
  loc_D55970: NewIfNullPr clsboleto
  loc_D55973: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55978: FLdPr var_39C
  loc_D5597B:  = Me.Fields
  loc_D55980: FLdPr var_3A0
  loc_D55983: from_stack_2 = Me.Item(from_stack_1)
  loc_D55988: FLdPr var_3A4
  loc_D5598B:  = Me.Value
  loc_D55990: FLdRfVar var_3B0
  loc_D55993: LitVarStr var_278, "NumePost"
  loc_D55998: PopAdLdVar
  loc_D55999: FLdRfVar var_3AC
  loc_D5599C: FLdRfVar var_3A8
  loc_D5599F: FLdPr Me
  loc_D559A2: MemLdRfVar from_stack_1.global_56
  loc_D559A5: NewIfNullPr clsboleto
  loc_D559A8: from_stack_1v = clsboleto.RsFrmGet()
  loc_D559AD: FLdPr var_3A8
  loc_D559B0:  = Me.Fields
  loc_D559B5: FLdPr var_3AC
  loc_D559B8: from_stack_2 = Me.Item(from_stack_1)
  loc_D559BD: FLdZeroAd var_3B0
  loc_D559C0: CVarAd
  loc_D559C4: ImpAdCallI2 IsNumeric()
  loc_D559C9: FStI2 var_1B2
  loc_D559CC: FLdRfVar var_3BC
  loc_D559CF: LitVarStr var_2B8, "NumePost"
  loc_D559D4: PopAdLdVar
  loc_D559D5: FLdRfVar var_3B8
  loc_D559D8: FLdRfVar var_3B4
  loc_D559DB: FLdPr Me
  loc_D559DE: MemLdRfVar from_stack_1.global_56
  loc_D559E1: NewIfNullPr clsboleto
  loc_D559E4: from_stack_1v = clsboleto.RsFrmGet()
  loc_D559E9: FLdPr var_3B4
  loc_D559EC:  = Me.Fields
  loc_D559F1: FLdPr var_3B8
  loc_D559F4: from_stack_2 = Me.Item(from_stack_1)
  loc_D559F9: LitVarI2 var_378, 0
  loc_D559FE: FLdZeroAd var_3BC
  loc_D55A01: CVarAd
  loc_D55A05: FLdI2 var_1B2
  loc_D55A08: CVarBoolI2 var_3CC
  loc_D55A0C: FLdRfVar var_388
  loc_D55A0F: ImpAdCallFPR4  = IIf(, , )
  loc_D55A14: FLdRfVar var_B3C
  loc_D55A17: FLdRfVar var_3F8
  loc_D55A1A: LitVarStr var_3F4, "CobpPost"
  loc_D55A1F: PopAdLdVar
  loc_D55A20: FLdRfVar var_3E4
  loc_D55A23: FLdRfVar var_3E0
  loc_D55A26: FLdPr Me
  loc_D55A29: MemLdRfVar from_stack_1.global_56
  loc_D55A2C: NewIfNullPr clsboleto
  loc_D55A2F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55A34: FLdPr var_3E0
  loc_D55A37:  = Me.Fields
  loc_D55A3C: FLdPr var_3E4
  loc_D55A3F: from_stack_2 = Me.Item(from_stack_1)
  loc_D55A44: FLdPr var_3F8
  loc_D55A47:  = Me.Value
  loc_D55A4C: FLdRfVar var_B4C
  loc_D55A4F: FLdRfVar var_414
  loc_D55A52: LitVarStr var_410, "DebaPost"
  loc_D55A57: PopAdLdVar
  loc_D55A58: FLdRfVar var_400
  loc_D55A5B: FLdRfVar var_3FC
  loc_D55A5E: FLdPr Me
  loc_D55A61: MemLdRfVar from_stack_1.global_56
  loc_D55A64: NewIfNullPr clsboleto
  loc_D55A67: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55A6C: FLdPr var_3FC
  loc_D55A6F:  = Me.Fields
  loc_D55A74: FLdPr var_400
  loc_D55A77: from_stack_2 = Me.Item(from_stack_1)
  loc_D55A7C: FLdPr var_414
  loc_D55A7F:  = Me.Value
  loc_D55A84: FLdRfVar var_B5C
  loc_D55A87: FLdRfVar var_430
  loc_D55A8A: LitVarStr var_42C, "ManzPost"
  loc_D55A8F: PopAdLdVar
  loc_D55A90: FLdRfVar var_41C
  loc_D55A93: FLdRfVar var_418
  loc_D55A96: FLdPr Me
  loc_D55A99: MemLdRfVar from_stack_1.global_56
  loc_D55A9C: NewIfNullPr clsboleto
  loc_D55A9F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55AA4: FLdPr var_418
  loc_D55AA7:  = Me.Fields
  loc_D55AAC: FLdPr var_41C
  loc_D55AAF: from_stack_2 = Me.Item(from_stack_1)
  loc_D55AB4: FLdPr var_430
  loc_D55AB7:  = Me.Value
  loc_D55ABC: FLdRfVar var_B6C
  loc_D55ABF: FLdRfVar var_44C
  loc_D55AC2: LitVarStr var_448, "CasaPost"
  loc_D55AC7: PopAdLdVar
  loc_D55AC8: FLdRfVar var_438
  loc_D55ACB: FLdRfVar var_434
  loc_D55ACE: FLdPr Me
  loc_D55AD1: MemLdRfVar from_stack_1.global_56
  loc_D55AD4: NewIfNullPr clsboleto
  loc_D55AD7: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55ADC: FLdPr var_434
  loc_D55ADF:  = Me.Fields
  loc_D55AE4: FLdPr var_438
  loc_D55AE7: from_stack_2 = Me.Item(from_stack_1)
  loc_D55AEC: FLdPr var_44C
  loc_D55AEF:  = Me.Value
  loc_D55AF4: FLdRfVar var_478
  loc_D55AF7: FLdRfVar var_468
  loc_D55AFA: LitVarStr var_464, "UbicPost"
  loc_D55AFF: PopAdLdVar
  loc_D55B00: FLdRfVar var_454
  loc_D55B03: FLdRfVar var_450
  loc_D55B06: FLdPr Me
  loc_D55B09: MemLdRfVar from_stack_1.global_56
  loc_D55B0C: NewIfNullPr clsboleto
  loc_D55B0F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55B14: FLdPr var_450
  loc_D55B17:  = Me.Fields
  loc_D55B1C: FLdPr var_454
  loc_D55B1F: from_stack_2 = Me.Item(from_stack_1)
  loc_D55B24: FLdPr var_468
  loc_D55B27:  = Me.Value
  loc_D55B2C: FLdRfVar var_4B4
  loc_D55B2F: LitVarStr var_4B0, "UbicPost"
  loc_D55B34: PopAdLdVar
  loc_D55B35: FLdRfVar var_4A0
  loc_D55B38: FLdRfVar var_49C
  loc_D55B3B: FLdPr Me
  loc_D55B3E: MemLdRfVar from_stack_1.global_56
  loc_D55B41: NewIfNullPr clsboleto
  loc_D55B44: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55B49: FLdPr var_49C
  loc_D55B4C:  = Me.Fields
  loc_D55B51: FLdPr var_4A0
  loc_D55B54: from_stack_2 = Me.Item(from_stack_1)
  loc_D55B59: FLdRfVar var_4E0
  loc_D55B5C: FLdRfVar var_4D0
  loc_D55B5F: LitVarStr var_4CC, "Ubicacion"
  loc_D55B64: PopAdLdVar
  loc_D55B65: FLdRfVar var_4BC
  loc_D55B68: FLdRfVar var_4B8
  loc_D55B6B: FLdPr Me
  loc_D55B6E: MemLdRfVar from_stack_1.global_56
  loc_D55B71: NewIfNullPr clsboleto
  loc_D55B74: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55B79: FLdPr var_4B8
  loc_D55B7C:  = Me.Fields
  loc_D55B81: FLdPr var_4BC
  loc_D55B84: from_stack_2 = Me.Item(from_stack_1)
  loc_D55B89: FLdPr var_4D0
  loc_D55B8C:  = Me.Value
  loc_D55B91: LitI4 0
  loc_D55B96: LitI4 -1
  loc_D55B9B: LitI4 1
  loc_D55BA0: LitStr " "
  loc_D55BA3: LitStr "'"
  loc_D55BA6: FLdRfVar var_4E0
  loc_D55BA9: CStrVarTmp
  loc_D55BAA: FStStrNoPop var_2D0
  loc_D55BAD: ImpAdCallI2 Replace(, , , , , )
  loc_D55BB2: CVarStr var_510
  loc_D55BB5: FLdZeroAd var_4B4
  loc_D55BB8: CVarAd
  loc_D55BBC: FLdRfVar var_478
  loc_D55BBF: LitVarStr var_488, vbNullString
  loc_D55BC4: HardType
  loc_D55BC5: NeVar var_498
  loc_D55BC9: FStVar var_4F0
  loc_D55BCD: FLdRfVar var_4F0
  loc_D55BD0: FLdRfVar var_520
  loc_D55BD3: ImpAdCallFPR4  = IIf(, , )
  loc_D55BD8: FLdRfVar var_B7C
  loc_D55BDB: FLdRfVar var_53C
  loc_D55BDE: LitVarStr var_538, "ColpPost"
  loc_D55BE3: PopAdLdVar
  loc_D55BE4: FLdRfVar var_528
  loc_D55BE7: FLdRfVar var_524
  loc_D55BEA: FLdPr Me
  loc_D55BED: MemLdRfVar from_stack_1.global_56
  loc_D55BF0: NewIfNullPr clsboleto
  loc_D55BF3: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55BF8: FLdPr var_524
  loc_D55BFB:  = Me.Fields
  loc_D55C00: FLdPr var_528
  loc_D55C03: from_stack_2 = Me.Item(from_stack_1)
  loc_D55C08: FLdPr var_53C
  loc_D55C0B:  = Me.Value
  loc_D55C10: FLdRfVar var_B8C
  loc_D55C13: FLdRfVar var_558
  loc_D55C16: LitVarStr var_554, "DeloPost"
  loc_D55C1B: PopAdLdVar
  loc_D55C1C: FLdRfVar var_544
  loc_D55C1F: FLdRfVar var_540
  loc_D55C22: FLdPr Me
  loc_D55C25: MemLdRfVar from_stack_1.global_56
  loc_D55C28: NewIfNullPr clsboleto
  loc_D55C2B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55C30: FLdPr var_540
  loc_D55C33:  = Me.Fields
  loc_D55C38: FLdPr var_544
  loc_D55C3B: from_stack_2 = Me.Item(from_stack_1)
  loc_D55C40: FLdPr var_558
  loc_D55C43:  = Me.Value
  loc_D55C48: FLdRfVar var_B9C
  loc_D55C4B: FLdRfVar var_574
  loc_D55C4E: LitVarStr var_570, "CopoPost"
  loc_D55C53: PopAdLdVar
  loc_D55C54: FLdRfVar var_560
  loc_D55C57: FLdRfVar var_55C
  loc_D55C5A: FLdPr Me
  loc_D55C5D: MemLdRfVar from_stack_1.global_56
  loc_D55C60: NewIfNullPr clsboleto
  loc_D55C63: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55C68: FLdPr var_55C
  loc_D55C6B:  = Me.Fields
  loc_D55C70: FLdPr var_560
  loc_D55C73: from_stack_2 = Me.Item(from_stack_1)
  loc_D55C78: FLdPr var_574
  loc_D55C7B:  = Me.Value
  loc_D55C80: FLdRfVar var_5A0
  loc_D55C83: FLdRfVar var_590
  loc_D55C86: LitVarStr var_58C, "parcela_ryb_cod"
  loc_D55C8B: PopAdLdVar
  loc_D55C8C: FLdRfVar var_57C
  loc_D55C8F: FLdRfVar var_578
  loc_D55C92: FLdPr Me
  loc_D55C95: MemLdRfVar from_stack_1.global_88
  loc_D55C98: NewIfNullPr clsboleto
  loc_D55C9B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55CA0: FLdPr var_578
  loc_D55CA3:  = Me.Fields
  loc_D55CA8: FLdPr var_57C
  loc_D55CAB: from_stack_2 = Me.Item(from_stack_1)
  loc_D55CB0: FLdPr var_590
  loc_D55CB3:  = Me.Value
  loc_D55CB8: FLdRfVar var_5DC
  loc_D55CBB: LitVarStr var_5D8, "parcela_ryb_cod"
  loc_D55CC0: PopAdLdVar
  loc_D55CC1: FLdRfVar var_5C8
  loc_D55CC4: FLdRfVar var_5C4
  loc_D55CC7: FLdPr Me
  loc_D55CCA: MemLdRfVar from_stack_1.global_88
  loc_D55CCD: NewIfNullPr clsboleto
  loc_D55CD0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55CD5: FLdPr var_5C4
  loc_D55CD8:  = Me.Fields
  loc_D55CDD: FLdPr var_5C8
  loc_D55CE0: from_stack_2 = Me.Item(from_stack_1)
  loc_D55CE5: FLdZeroAd var_5DC
  loc_D55CE8: CVarAd
  loc_D55CEC: LitVarI2 var_60C, 0
  loc_D55CF1: FLdRfVar var_5A0
  loc_D55CF4: LitVarStr var_5B0, vbNullString
  loc_D55CF9: HardType
  loc_D55CFA: EqVar var_5C0
  loc_D55CFE: FStVar var_5EC
  loc_D55D02: FLdRfVar var_5EC
  loc_D55D05: FLdRfVar var_62C
  loc_D55D08: ImpAdCallFPR4  = IIf(, , )
  loc_D55D0D: FLdRfVar var_BAC
  loc_D55D10: FLdRfVar var_648
  loc_D55D13: LitVarStr var_644, "parcela_avaluo"
  loc_D55D18: PopAdLdVar
  loc_D55D19: FLdRfVar var_634
  loc_D55D1C: FLdRfVar var_630
  loc_D55D1F: FLdPr Me
  loc_D55D22: MemLdRfVar from_stack_1.global_88
  loc_D55D25: NewIfNullPr clsboleto
  loc_D55D28: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55D2D: FLdPr var_630
  loc_D55D30:  = Me.Fields
  loc_D55D35: FLdPr var_634
  loc_D55D38: from_stack_2 = Me.Item(from_stack_1)
  loc_D55D3D: FLdPr var_648
  loc_D55D40:  = Me.Value
  loc_D55D45: FLdRfVar var_674
  loc_D55D48: FLdRfVar var_664
  loc_D55D4B: LitVarStr var_660, "Dependencia"
  loc_D55D50: PopAdLdVar
  loc_D55D51: FLdRfVar var_650
  loc_D55D54: FLdRfVar var_64C
  loc_D55D57: FLdPr Me
  loc_D55D5A: MemLdRfVar from_stack_1.global_88
  loc_D55D5D: NewIfNullPr clsboleto
  loc_D55D60: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55D65: FLdPr var_64C
  loc_D55D68:  = Me.Fields
  loc_D55D6D: FLdPr var_650
  loc_D55D70: from_stack_2 = Me.Item(from_stack_1)
  loc_D55D75: FLdPr var_664
  loc_D55D78:  = Me.Value
  loc_D55D7D: FLdRfVar var_6B0
  loc_D55D80: LitVarStr var_6AC, "Dependencia"
  loc_D55D85: PopAdLdVar
  loc_D55D86: FLdRfVar var_69C
  loc_D55D89: FLdRfVar var_698
  loc_D55D8C: FLdPr Me
  loc_D55D8F: MemLdRfVar from_stack_1.global_88
  loc_D55D92: NewIfNullPr clsboleto
  loc_D55D95: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55D9A: FLdPr var_698
  loc_D55D9D:  = Me.Fields
  loc_D55DA2: FLdPr var_69C
  loc_D55DA5: from_stack_2 = Me.Item(from_stack_1)
  loc_D55DAA: FLdZeroAd var_6B0
  loc_D55DAD: CVarAd
  loc_D55DB1: LitVarI2 var_6E0, 0
  loc_D55DB6: FLdRfVar var_674
  loc_D55DB9: LitVarStr var_684, vbNullString
  loc_D55DBE: HardType
  loc_D55DBF: EqVar var_694
  loc_D55DC3: FStVar var_6C0
  loc_D55DC7: FLdRfVar var_6C0
  loc_D55DCA: FLdRfVar var_700
  loc_D55DCD: ImpAdCallFPR4  = IIf(, , )
  loc_D55DD2: FLdRfVar var_72C
  loc_D55DD5: FLdRfVar var_71C
  loc_D55DD8: LitVarStr var_718, "Distrito"
  loc_D55DDD: PopAdLdVar
  loc_D55DDE: FLdRfVar var_708
  loc_D55DE1: FLdRfVar var_704
  loc_D55DE4: FLdPr Me
  loc_D55DE7: MemLdRfVar from_stack_1.global_88
  loc_D55DEA: NewIfNullPr clsboleto
  loc_D55DED: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55DF2: FLdPr var_704
  loc_D55DF5:  = Me.Fields
  loc_D55DFA: FLdPr var_708
  loc_D55DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_D55E02: FLdPr var_71C
  loc_D55E05:  = Me.Value
  loc_D55E0A: FLdRfVar var_768
  loc_D55E0D: LitVarStr var_764, "Distrito"
  loc_D55E12: PopAdLdVar
  loc_D55E13: FLdRfVar var_754
  loc_D55E16: FLdRfVar var_750
  loc_D55E19: FLdPr Me
  loc_D55E1C: MemLdRfVar from_stack_1.global_88
  loc_D55E1F: NewIfNullPr clsboleto
  loc_D55E22: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55E27: FLdPr var_750
  loc_D55E2A:  = Me.Fields
  loc_D55E2F: FLdPr var_754
  loc_D55E32: from_stack_2 = Me.Item(from_stack_1)
  loc_D55E37: FLdZeroAd var_768
  loc_D55E3A: CVarAd
  loc_D55E3E: LitVarI2 var_798, 0
  loc_D55E43: FLdRfVar var_72C
  loc_D55E46: LitVarStr var_73C, vbNullString
  loc_D55E4B: HardType
  loc_D55E4C: EqVar var_74C
  loc_D55E50: FStVar var_778
  loc_D55E54: FLdRfVar var_778
  loc_D55E57: FLdRfVar var_7B8
  loc_D55E5A: ImpAdCallFPR4  = IIf(, , )
  loc_D55E5F: FLdRfVar var_7E4
  loc_D55E62: FLdRfVar var_7D4
  loc_D55E65: LitVarStr var_7D0, "Seccion"
  loc_D55E6A: PopAdLdVar
  loc_D55E6B: FLdRfVar var_7C0
  loc_D55E6E: FLdRfVar var_7BC
  loc_D55E71: FLdPr Me
  loc_D55E74: MemLdRfVar from_stack_1.global_88
  loc_D55E77: NewIfNullPr clsboleto
  loc_D55E7A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55E7F: FLdPr var_7BC
  loc_D55E82:  = Me.Fields
  loc_D55E87: FLdPr var_7C0
  loc_D55E8A: from_stack_2 = Me.Item(from_stack_1)
  loc_D55E8F: FLdPr var_7D4
  loc_D55E92:  = Me.Value
  loc_D55E97: FLdRfVar var_820
  loc_D55E9A: LitVarStr var_81C, "Seccion"
  loc_D55E9F: PopAdLdVar
  loc_D55EA0: FLdRfVar var_80C
  loc_D55EA3: FLdRfVar var_808
  loc_D55EA6: FLdPr Me
  loc_D55EA9: MemLdRfVar from_stack_1.global_88
  loc_D55EAC: NewIfNullPr clsboleto
  loc_D55EAF: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55EB4: FLdPr var_808
  loc_D55EB7:  = Me.Fields
  loc_D55EBC: FLdPr var_80C
  loc_D55EBF: from_stack_2 = Me.Item(from_stack_1)
  loc_D55EC4: FLdZeroAd var_820
  loc_D55EC7: CVarAd
  loc_D55ECB: LitVarI2 var_850, 0
  loc_D55ED0: FLdRfVar var_7E4
  loc_D55ED3: LitVarStr var_7F4, vbNullString
  loc_D55ED8: HardType
  loc_D55ED9: EqVar var_804
  loc_D55EDD: FStVar var_830
  loc_D55EE1: FLdRfVar var_830
  loc_D55EE4: FLdRfVar var_870
  loc_D55EE7: ImpAdCallFPR4  = IIf(, , )
  loc_D55EEC: FLdRfVar var_89C
  loc_D55EEF: FLdRfVar var_88C
  loc_D55EF2: LitVarStr var_888, "Manzana"
  loc_D55EF7: PopAdLdVar
  loc_D55EF8: FLdRfVar var_878
  loc_D55EFB: FLdRfVar var_874
  loc_D55EFE: FLdPr Me
  loc_D55F01: MemLdRfVar from_stack_1.global_88
  loc_D55F04: NewIfNullPr clsboleto
  loc_D55F07: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55F0C: FLdPr var_874
  loc_D55F0F:  = Me.Fields
  loc_D55F14: FLdPr var_878
  loc_D55F17: from_stack_2 = Me.Item(from_stack_1)
  loc_D55F1C: FLdPr var_88C
  loc_D55F1F:  = Me.Value
  loc_D55F24: FLdRfVar var_8D8
  loc_D55F27: LitVarStr var_8D4, "Manzana"
  loc_D55F2C: PopAdLdVar
  loc_D55F2D: FLdRfVar var_8C4
  loc_D55F30: FLdRfVar var_8C0
  loc_D55F33: FLdPr Me
  loc_D55F36: MemLdRfVar from_stack_1.global_88
  loc_D55F39: NewIfNullPr clsboleto
  loc_D55F3C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55F41: FLdPr var_8C0
  loc_D55F44:  = Me.Fields
  loc_D55F49: FLdPr var_8C4
  loc_D55F4C: from_stack_2 = Me.Item(from_stack_1)
  loc_D55F51: FLdZeroAd var_8D8
  loc_D55F54: CVarAd
  loc_D55F58: LitVarI2 var_908, 0
  loc_D55F5D: FLdRfVar var_89C
  loc_D55F60: LitVarStr var_8AC, vbNullString
  loc_D55F65: HardType
  loc_D55F66: EqVar var_8BC
  loc_D55F6A: FStVar var_8E8
  loc_D55F6E: FLdRfVar var_8E8
  loc_D55F71: FLdRfVar var_928
  loc_D55F74: ImpAdCallFPR4  = IIf(, , )
  loc_D55F79: FLdRfVar var_954
  loc_D55F7C: FLdRfVar var_944
  loc_D55F7F: LitVarStr var_940, "Parcela"
  loc_D55F84: PopAdLdVar
  loc_D55F85: FLdRfVar var_930
  loc_D55F88: FLdRfVar var_92C
  loc_D55F8B: FLdPr Me
  loc_D55F8E: MemLdRfVar from_stack_1.global_88
  loc_D55F91: NewIfNullPr clsboleto
  loc_D55F94: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55F99: FLdPr var_92C
  loc_D55F9C:  = Me.Fields
  loc_D55FA1: FLdPr var_930
  loc_D55FA4: from_stack_2 = Me.Item(from_stack_1)
  loc_D55FA9: FLdPr var_944
  loc_D55FAC:  = Me.Value
  loc_D55FB1: FLdRfVar var_990
  loc_D55FB4: LitVarStr var_98C, "Parcela"
  loc_D55FB9: PopAdLdVar
  loc_D55FBA: FLdRfVar var_97C
  loc_D55FBD: FLdRfVar var_978
  loc_D55FC0: FLdPr Me
  loc_D55FC3: MemLdRfVar from_stack_1.global_88
  loc_D55FC6: NewIfNullPr clsboleto
  loc_D55FC9: from_stack_1v = clsboleto.RsFrmGet()
  loc_D55FCE: FLdPr var_978
  loc_D55FD1:  = Me.Fields
  loc_D55FD6: FLdPr var_97C
  loc_D55FD9: from_stack_2 = Me.Item(from_stack_1)
  loc_D55FDE: FLdZeroAd var_990
  loc_D55FE1: CVarAd
  loc_D55FE5: LitVarI2 var_9C0, 0
  loc_D55FEA: FLdRfVar var_954
  loc_D55FED: LitVarStr var_964, vbNullString
  loc_D55FF2: HardType
  loc_D55FF3: EqVar var_974
  loc_D55FF7: FStVar var_9A0
  loc_D55FFB: FLdRfVar var_9A0
  loc_D55FFE: FLdRfVar var_9E0
  loc_D56001: ImpAdCallFPR4  = IIf(, , )
  loc_D56006: FLdRfVar var_A0C
  loc_D56009: FLdRfVar var_9FC
  loc_D5600C: LitVarStr var_9F8, "Subparcela"
  loc_D56011: PopAdLdVar
  loc_D56012: FLdRfVar var_9E8
  loc_D56015: FLdRfVar var_9E4
  loc_D56018: FLdPr Me
  loc_D5601B: MemLdRfVar from_stack_1.global_88
  loc_D5601E: NewIfNullPr clsboleto
  loc_D56021: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56026: FLdPr var_9E4
  loc_D56029:  = Me.Fields
  loc_D5602E: FLdPr var_9E8
  loc_D56031: from_stack_2 = Me.Item(from_stack_1)
  loc_D56036: FLdPr var_9FC
  loc_D56039:  = Me.Value
  loc_D5603E: FLdRfVar var_A48
  loc_D56041: LitVarStr var_A44, "Subparcela"
  loc_D56046: PopAdLdVar
  loc_D56047: FLdRfVar var_A34
  loc_D5604A: FLdRfVar var_A30
  loc_D5604D: FLdPr Me
  loc_D56050: MemLdRfVar from_stack_1.global_88
  loc_D56053: NewIfNullPr clsboleto
  loc_D56056: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5605B: FLdPr var_A30
  loc_D5605E:  = Me.Fields
  loc_D56063: FLdPr var_A34
  loc_D56066: from_stack_2 = Me.Item(from_stack_1)
  loc_D5606B: FLdZeroAd var_A48
  loc_D5606E: CVarAd
  loc_D56072: LitVarI2 var_A78, 0
  loc_D56077: FLdRfVar var_A0C
  loc_D5607A: LitVarStr var_A1C, vbNullString
  loc_D5607F: HardType
  loc_D56080: EqVar var_A2C
  loc_D56084: FStVar var_A58
  loc_D56088: FLdRfVar var_A58
  loc_D5608B: FLdRfVar var_A98
  loc_D5608E: ImpAdCallFPR4  = IIf(, , )
  loc_D56093: FLdRfVar var_BBC
  loc_D56096: FLdRfVar var_AB4
  loc_D56099: LitVarStr var_AB0, "dig_veri"
  loc_D5609E: PopAdLdVar
  loc_D5609F: FLdRfVar var_AA0
  loc_D560A2: FLdRfVar var_A9C
  loc_D560A5: FLdPr Me
  loc_D560A8: MemLdRfVar from_stack_1.global_88
  loc_D560AB: NewIfNullPr clsboleto
  loc_D560AE: from_stack_1v = clsboleto.RsFrmGet()
  loc_D560B3: FLdPr var_A9C
  loc_D560B6:  = Me.Fields
  loc_D560BB: FLdPr var_AA0
  loc_D560BE: from_stack_2 = Me.Item(from_stack_1)
  loc_D560C3: FLdPr var_AB4
  loc_D560C6:  = Me.Value
  loc_D560CB: FLdRfVar var_BCC
  loc_D560CE: FLdRfVar var_AD0
  loc_D560D1: LitVarStr var_ACC, "Emite"
  loc_D560D6: PopAdLdVar
  loc_D560D7: FLdRfVar var_ABC
  loc_D560DA: FLdRfVar var_AB8
  loc_D560DD: FLdPr Me
  loc_D560E0: MemLdRfVar from_stack_1.global_56
  loc_D560E3: NewIfNullPr clsboleto
  loc_D560E6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D560EB: FLdPr var_AB8
  loc_D560EE:  = Me.Fields
  loc_D560F3: FLdPr var_ABC
  loc_D560F6: from_stack_2 = Me.Item(from_stack_1)
  loc_D560FB: FLdPr var_AD0
  loc_D560FE:  = Me.Value
  loc_D56103: FLdRfVar var_BDC
  loc_D56106: FLdRfVar var_AEC
  loc_D56109: LitVarStr var_AE8, "Vinculo"
  loc_D5610E: PopAdLdVar
  loc_D5610F: FLdRfVar var_AD8
  loc_D56112: FLdRfVar var_AD4
  loc_D56115: FLdPr Me
  loc_D56118: MemLdRfVar from_stack_1.global_56
  loc_D5611B: NewIfNullPr clsboleto
  loc_D5611E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56123: FLdPr var_AD4
  loc_D56126:  = Me.Fields
  loc_D5612B: FLdPr var_AD8
  loc_D5612E: from_stack_2 = Me.Item(from_stack_1)
  loc_D56133: FLdPr var_AEC
  loc_D56136:  = Me.Value
  loc_D5613B: FLdR8 var_1AC
  loc_D5613E: FLdRfVar var_BDC
  loc_D56141: CStrVarTmp
  loc_D56142: FStStrNoPop var_318
  loc_D56145: FLdR8 var_CC
  loc_D56148: FLdR8 var_104
  loc_D5614B: FLdRfVar var_BCC
  loc_D5614E: CUI1Var
  loc_D56150: FLdRfVar var_BBC
  loc_D56153: CStrVarTmp
  loc_D56154: FStStrNoPop var_314
  loc_D56157: FLdRfVar var_A98
  loc_D5615A: CI2Var
  loc_D5615B: FLdRfVar var_9E0
  loc_D5615E: CI4Var
  loc_D56160: FLdRfVar var_928
  loc_D56163: CI2Var
  loc_D56164: FLdRfVar var_870
  loc_D56167: CI2Var
  loc_D56168: FLdRfVar var_7B8
  loc_D5616B: CI2Var
  loc_D5616C: FLdRfVar var_700
  loc_D5616F: CI2Var
  loc_D56170: FLdR8 var_198
  loc_D56173: FLdI2 var_1A2
  loc_D56176: FLdR8 var_190
  loc_D56179: FLdR8 var_A4
  loc_D5617C: FLdR8 var_AC
  loc_D5617F: FLdR8 var_180
  loc_D56182: FLdR8 var_178
  loc_D56185: FLdFPR8 var_DC
  loc_D56188: CI2R8
  loc_D56189: FLdR8 var_188
  loc_D5618C: FLdRfVar var_BAC
  loc_D5618F: CR4Var
  loc_D56190: PopFPR8
  loc_D56191: FLdRfVar var_62C
  loc_D56194: CI2Var
  loc_D56195: LitI2_Byte &HFF
  loc_D56197: FLdRfVar var_1B0
  loc_D5619A: FLdRfVar var_B9C
  loc_D5619D: CStrVarTmp
  loc_D5619E: FStStrNoPop var_310
  loc_D561A1: FLdRfVar var_B8C
  loc_D561A4: CStrVarTmp
  loc_D561A5: FStStrNoPop var_30C
  loc_D561A8: FLdRfVar var_B7C
  loc_D561AB: CI2Var
  loc_D561AC: FLdRfVar var_520
  loc_D561AF: CStrVarVal var_308
  loc_D561B3: FLdRfVar var_B6C
  loc_D561B6: CStrVarTmp
  loc_D561B7: FStStrNoPop var_304
  loc_D561BA: FLdRfVar var_B5C
  loc_D561BD: CStrVarTmp
  loc_D561BE: FStStrNoPop var_300
  loc_D561C1: FLdRfVar var_B4C
  loc_D561C4: CStrVarTmp
  loc_D561C5: FStStrNoPop var_2FC
  loc_D561C8: FLdRfVar var_B3C
  loc_D561CB: CI2Var
  loc_D561CC: FLdRfVar var_388
  loc_D561CF: CI4Var
  loc_D561D1: FLdRfVar var_B2C
  loc_D561D4: CStrVarTmp
  loc_D561D5: FStStrNoPop var_2F8
  loc_D561D8: FLdRfVar var_B1C
  loc_D561DB: CI4Var
  loc_D561DD: FLdRfVar var_B0C
  loc_D561E0: CStrVarTmp
  loc_D561E1: FStStrNoPop var_2F4
  loc_D561E4: FLdZeroAd var_BE0
  loc_D561E7: FStStrNoPop var_2D4
  loc_D561EA: FLdR8 var_EC
  loc_D561ED: LitI2_Byte 0
  loc_D561EF: CR8I2
  loc_D561F0: PopFPR8
  loc_D561F1: FLdR8 var_AC
  loc_D561F4: FLdR8 var_A4
  loc_D561F7: FLdR8 var_F4
  loc_D561FA: FLdR8 var_94
  loc_D561FD: FLdR8 var_C4
  loc_D56200: FLdR8 var_BC
  loc_D56203: ILdRf var_154
  loc_D56206: LitStr "Aforo"
  loc_D56209: LitI2_Byte 1
  loc_D5620B: CUI1I2
  loc_D5620D: ILdRf var_E0
  loc_D56210: FLdRfVar var_AFC
  loc_D56213: CI4Var
  loc_D56215: FLdI2 var_8A
  loc_D56218: CUI1I2
  loc_D5621A: ILdRf var_1C4
  loc_D5621D: CUI1Str
  loc_D5621F: FLdPr Me
  loc_D56222: MemLdUI1 global_100
  loc_D56226: ILdRf var_1BC
  loc_D56229: CI2Str
  loc_D5622B: FLdPr Me
  loc_D5622E: MemLdRfVar from_stack_1.global_76
  loc_D56231: NewIfNullPr clsliqutasa
  loc_D56234: Call clsliqutasa.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_D56239: FFreeStr var_2CC = "": var_2D0 = "": var_1BC = "": var_1C4 = "": var_2D4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = ""
  loc_D5625C: FFreeAd var_430 = "": var_44C = "": var_53C = "": var_558 = "": var_574 = "": var_648 = "": var_AB4 = "": var_AD0 = "": var_AEC = "": var_7D4 = "": var_808 = "": var_80C = "": var_874 = "": var_878 = "": var_88C = "": var_8C0 = "": var_8C4 = "": var_92C = "": var_930 = "": var_944 = "": var_978 = "": var_97C = "": var_9E4 = "": var_9E8 = "": var_9FC = "": var_A30 = "": var_A34 = "": var_A9C = "": var_AA0 = "": var_AB8 = "": var_ABC = "": var_AD4 = "": var_AD8 = "": var_320 = "": var_344 = "": var_398 = "": var_3A4 = "": var_3F8 = "": var_414 = "": var_49C = "": var_4A0 = "": var_4B8 = "": var_4BC = "": var_4D0 = "": var_524 = "": var_528 = "": var_540 = "": var_544 = "": var_55C = "": var_560 = "": var_578 = "": var_57C = "": var_590 = "": var_5C4 = "": var_5C8 = "": var_630 = "": var_634 = "": var_64C = "": var_650 = "": var_664 = "": var_698 = "": var_69C = "": var_704 = "": var_708 = "": var_71C = "": var_750 = "": var_754 = "": var_7BC = "": var_7C0 = "": var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_33C = "": var_340 = "": var_348 = "": var_394 = "": var_39C = "": var_3A0 = "": var_3A8 = "": var_3AC = "": var_3B4 = "": var_3B8 = "": var_3E0 = "": var_3E4 = "": var_3FC = "": var_400 = "": var_418 = "": var_41C = "": var_434 = "": var_438 = "": var_450 = "": var_454 = ""
  loc_D56325: FFreeVar var_928 = "": var_9E0 = "": var_A98 = "": var_BBC = "": var_BCC = "": var_BDC = "": var_89C = "": var_8E8 = "": var_908 = "": var_918 = "": var_954 = "": var_9A0 = "": var_9C0 = "": var_9D0 = "": var_A0C = "": var_A58 = "": var_A78 = "": var_A88 = "": var_AFC = "": var_B0C = "": var_B1C = "": var_B2C = "": var_388 = "": var_B3C = "": var_B4C = "": var_B5C = "": var_B6C = "": var_520 = "": var_B7C = "": var_B8C = "": var_B9C = "": var_62C = "": var_BAC = "": var_700 = "": var_7B8 = "": var_870 = "": var_1D4 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_358 = "": var_3CC = "": var_368 = "": var_378 = "": var_478 = "": var_4E0 = "": var_4F0 = "": var_500 = "": var_510 = "": var_5A0 = "": var_5EC = "": var_60C = "": var_61C = "": var_674 = "": var_6C0 = "": var_6E0 = "": var_6F0 = "": var_72C = "": var_778 = "": var_798 = "": var_7A8 = "": var_7E4 = "": var_830 = "": var_850 = ""
  loc_D563AC: Branch loc_D56B55
  loc_D563AF: FLdRfVar var_1BC
  loc_D563B2: FLdPr Me
  loc_D563B5: VCallAd Control_ID_PeriLiquTxt
  loc_D563B8: FStAdFunc var_1B8
  loc_D563BB: FLdPr var_1B8
  loc_D563BE:  = Me.Text
  loc_D563C3: FLdRfVar var_1C4
  loc_D563C6: FLdPr Me
  loc_D563C9: VCallAd Control_ID_CodiTiliTxt
  loc_D563CC: FStAdFunc var_1C0
  loc_D563CF: FLdPr var_1C0
  loc_D563D2:  = Me.Text
  loc_D563D7: FLdRfVar var_974
  loc_D563DA: FLdRfVar var_320
  loc_D563DD: LitVarStr var_1E8, "nro_padron"
  loc_D563E2: PopAdLdVar
  loc_D563E3: FLdRfVar var_2E8
  loc_D563E6: FLdRfVar var_2E4
  loc_D563E9: FLdPr Me
  loc_D563EC: MemLdRfVar from_stack_1.global_88
  loc_D563EF: NewIfNullPr clsboleto
  loc_D563F2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D563F7: FLdPr var_2E4
  loc_D563FA:  = Me.Fields
  loc_D563FF: FLdPr var_2E8
  loc_D56402: from_stack_2 = Me.Item(from_stack_1)
  loc_D56407: FLdPr var_320
  loc_D5640A:  = Me.Value
  loc_D5640F: FLdRfVar var_1D4
  loc_D56412: FLdRfVar var_32C
  loc_D56415: LitVarStr var_1F8, "CucuPers"
  loc_D5641A: PopAdLdVar
  loc_D5641B: FLdRfVar var_328
  loc_D5641E: FLdRfVar var_324
  loc_D56421: FLdPr Me
  loc_D56424: MemLdRfVar from_stack_1.global_88
  loc_D56427: NewIfNullPr clsboleto
  loc_D5642A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5642F: FLdPr var_324
  loc_D56432:  = Me.Fields
  loc_D56437: FLdPr var_328
  loc_D5643A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5643F: FLdPr var_32C
  loc_D56442:  = Me.Value
  loc_D56447: FLdRfVar var_338
  loc_D5644A: LitVarStr var_218, "CucuPers"
  loc_D5644F: PopAdLdVar
  loc_D56450: FLdRfVar var_334
  loc_D56453: FLdRfVar var_330
  loc_D56456: FLdPr Me
  loc_D56459: MemLdRfVar from_stack_1.global_88
  loc_D5645C: NewIfNullPr clsboleto
  loc_D5645F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56464: FLdPr var_330
  loc_D56467:  = Me.Fields
  loc_D5646C: FLdPr var_334
  loc_D5646F: from_stack_2 = Me.Item(from_stack_1)
  loc_D56474: FLdZeroAd var_338
  loc_D56477: CVarAd
  loc_D5647B: LitVarI2 var_298, 0
  loc_D56480: FLdRfVar var_1D4
  loc_D56483: LitVarStr var_208, vbNullString
  loc_D56488: HardType
  loc_D56489: EqVar var_268
  loc_D5648D: FStVar var_288
  loc_D56491: FLdRfVar var_288
  loc_D56494: FLdRfVar var_2C8
  loc_D56497: ImpAdCallFPR4  = IIf(, , )
  loc_D5649C: LitI4 0
  loc_D564A1: LitI4 -1
  loc_D564A6: LitI4 1
  loc_D564AB: LitStr vbNullString
  loc_D564AE: LitStr "-"
  loc_D564B1: FLdRfVar var_2C8
  loc_D564B4: CStrVarVal var_2CC
  loc_D564B8: ImpAdCallI2 Replace(, , , , , )
  loc_D564BD: FStStr var_310
  loc_D564C0: FLdRfVar var_9A0
  loc_D564C3: FLdRfVar var_344
  loc_D564C6: LitVarStr var_238, "denominacion"
  loc_D564CB: PopAdLdVar
  loc_D564CC: FLdRfVar var_340
  loc_D564CF: FLdRfVar var_33C
  loc_D564D2: FLdPr Me
  loc_D564D5: MemLdRfVar from_stack_1.global_88
  loc_D564D8: NewIfNullPr clsboleto
  loc_D564DB: from_stack_1v = clsboleto.RsFrmGet()
  loc_D564E0: FLdPr var_33C
  loc_D564E3:  = Me.Fields
  loc_D564E8: FLdPr var_340
  loc_D564EB: from_stack_2 = Me.Item(from_stack_1)
  loc_D564F0: FLdPr var_344
  loc_D564F3:  = Me.Value
  loc_D564F8: FLdRfVar var_358
  loc_D564FB: FLdRfVar var_398
  loc_D564FE: LitVarStr var_248, "parcela_ryb_cod"
  loc_D56503: PopAdLdVar
  loc_D56504: FLdRfVar var_394
  loc_D56507: FLdRfVar var_348
  loc_D5650A: FLdPr Me
  loc_D5650D: MemLdRfVar from_stack_1.global_88
  loc_D56510: NewIfNullPr clsboleto
  loc_D56513: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56518: FLdPr var_348
  loc_D5651B:  = Me.Fields
  loc_D56520: FLdPr var_394
  loc_D56523: from_stack_2 = Me.Item(from_stack_1)
  loc_D56528: FLdPr var_398
  loc_D5652B:  = Me.Value
  loc_D56530: FLdRfVar var_3A4
  loc_D56533: LitVarStr var_278, "parcela_ryb_cod"
  loc_D56538: PopAdLdVar
  loc_D56539: FLdRfVar var_3A0
  loc_D5653C: FLdRfVar var_39C
  loc_D5653F: FLdPr Me
  loc_D56542: MemLdRfVar from_stack_1.global_88
  loc_D56545: NewIfNullPr clsboleto
  loc_D56548: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5654D: FLdPr var_39C
  loc_D56550:  = Me.Fields
  loc_D56555: FLdPr var_3A0
  loc_D56558: from_stack_2 = Me.Item(from_stack_1)
  loc_D5655D: FLdZeroAd var_3A4
  loc_D56560: CVarAd
  loc_D56564: LitVarI2 var_388, 0
  loc_D56569: FLdRfVar var_358
  loc_D5656C: LitVarStr var_258, vbNullString
  loc_D56571: HardType
  loc_D56572: EqVar var_368
  loc_D56576: FStVar var_378
  loc_D5657A: FLdRfVar var_378
  loc_D5657D: FLdRfVar var_498
  loc_D56580: ImpAdCallFPR4  = IIf(, , )
  loc_D56585: FLdRfVar var_9C0
  loc_D56588: FLdRfVar var_3B0
  loc_D5658B: LitVarStr var_3CC, "parcela_avaluo"
  loc_D56590: PopAdLdVar
  loc_D56591: FLdRfVar var_3AC
  loc_D56594: FLdRfVar var_3A8
  loc_D56597: FLdPr Me
  loc_D5659A: MemLdRfVar from_stack_1.global_88
  loc_D5659D: NewIfNullPr clsboleto
  loc_D565A0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D565A5: FLdPr var_3A8
  loc_D565A8:  = Me.Fields
  loc_D565AD: FLdPr var_3AC
  loc_D565B0: from_stack_2 = Me.Item(from_stack_1)
  loc_D565B5: FLdPr var_3B0
  loc_D565B8:  = Me.Value
  loc_D565BD: FLdRfVar var_4E0
  loc_D565C0: FLdRfVar var_3BC
  loc_D565C3: LitVarStr var_3DC, "Dependencia"
  loc_D565C8: PopAdLdVar
  loc_D565C9: FLdRfVar var_3B8
  loc_D565CC: FLdRfVar var_3B4
  loc_D565CF: FLdPr Me
  loc_D565D2: MemLdRfVar from_stack_1.global_88
  loc_D565D5: NewIfNullPr clsboleto
  loc_D565D8: from_stack_1v = clsboleto.RsFrmGet()
  loc_D565DD: FLdPr var_3B4
  loc_D565E0:  = Me.Fields
  loc_D565E5: FLdPr var_3B8
  loc_D565E8: from_stack_2 = Me.Item(from_stack_1)
  loc_D565ED: FLdPr var_3BC
  loc_D565F0:  = Me.Value
  loc_D565F5: FLdRfVar var_3F8
  loc_D565F8: LitVarStr var_410, "Dependencia"
  loc_D565FD: PopAdLdVar
  loc_D565FE: FLdRfVar var_3E4
  loc_D56601: FLdRfVar var_3E0
  loc_D56604: FLdPr Me
  loc_D56607: MemLdRfVar from_stack_1.global_88
  loc_D5660A: NewIfNullPr clsboleto
  loc_D5660D: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56612: FLdPr var_3E0
  loc_D56615:  = Me.Fields
  loc_D5661A: FLdPr var_3E4
  loc_D5661D: from_stack_2 = Me.Item(from_stack_1)
  loc_D56622: FLdZeroAd var_3F8
  loc_D56625: CVarAd
  loc_D56629: LitVarI2 var_510, 0
  loc_D5662E: FLdRfVar var_4E0
  loc_D56631: LitVarStr var_3F4, vbNullString
  loc_D56636: HardType
  loc_D56637: EqVar var_4F0
  loc_D5663B: FStVar var_500
  loc_D5663F: FLdRfVar var_500
  loc_D56642: FLdRfVar var_5A0
  loc_D56645: ImpAdCallFPR4  = IIf(, , )
  loc_D5664A: FLdRfVar var_5C0
  loc_D5664D: FLdRfVar var_414
  loc_D56650: LitVarStr var_448, "Distrito"
  loc_D56655: PopAdLdVar
  loc_D56656: FLdRfVar var_400
  loc_D56659: FLdRfVar var_3FC
  loc_D5665C: FLdPr Me
  loc_D5665F: MemLdRfVar from_stack_1.global_88
  loc_D56662: NewIfNullPr clsboleto
  loc_D56665: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5666A: FLdPr var_3FC
  loc_D5666D:  = Me.Fields
  loc_D56672: FLdPr var_400
  loc_D56675: from_stack_2 = Me.Item(from_stack_1)
  loc_D5667A: FLdPr var_414
  loc_D5667D:  = Me.Value
  loc_D56682: FLdRfVar var_430
  loc_D56685: LitVarStr var_488, "Distrito"
  loc_D5668A: PopAdLdVar
  loc_D5668B: FLdRfVar var_41C
  loc_D5668E: FLdRfVar var_418
  loc_D56691: FLdPr Me
  loc_D56694: MemLdRfVar from_stack_1.global_88
  loc_D56697: NewIfNullPr clsboleto
  loc_D5669A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5669F: FLdPr var_418
  loc_D566A2:  = Me.Fields
  loc_D566A7: FLdPr var_41C
  loc_D566AA: from_stack_2 = Me.Item(from_stack_1)
  loc_D566AF: FLdZeroAd var_430
  loc_D566B2: CVarAd
  loc_D566B6: LitVarI2 var_61C, 0
  loc_D566BB: FLdRfVar var_5C0
  loc_D566BE: LitVarStr var_464, vbNullString
  loc_D566C3: HardType
  loc_D566C4: EqVar var_5EC
  loc_D566C8: FStVar var_60C
  loc_D566CC: FLdRfVar var_60C
  loc_D566CF: FLdRfVar var_674
  loc_D566D2: ImpAdCallFPR4  = IIf(, , )
  loc_D566D7: FLdRfVar var_694
  loc_D566DA: FLdRfVar var_44C
  loc_D566DD: LitVarStr var_4CC, "Seccion"
  loc_D566E2: PopAdLdVar
  loc_D566E3: FLdRfVar var_438
  loc_D566E6: FLdRfVar var_434
  loc_D566E9: FLdPr Me
  loc_D566EC: MemLdRfVar from_stack_1.global_88
  loc_D566EF: NewIfNullPr clsboleto
  loc_D566F2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D566F7: FLdPr var_434
  loc_D566FA:  = Me.Fields
  loc_D566FF: FLdPr var_438
  loc_D56702: from_stack_2 = Me.Item(from_stack_1)
  loc_D56707: FLdPr var_44C
  loc_D5670A:  = Me.Value
  loc_D5670F: FLdRfVar var_468
  loc_D56712: LitVarStr var_554, "Seccion"
  loc_D56717: PopAdLdVar
  loc_D56718: FLdRfVar var_454
  loc_D5671B: FLdRfVar var_450
  loc_D5671E: FLdPr Me
  loc_D56721: MemLdRfVar from_stack_1.global_88
  loc_D56724: NewIfNullPr clsboleto
  loc_D56727: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5672C: FLdPr var_450
  loc_D5672F:  = Me.Fields
  loc_D56734: FLdPr var_454
  loc_D56737: from_stack_2 = Me.Item(from_stack_1)
  loc_D5673C: FLdZeroAd var_468
  loc_D5673F: CVarAd
  loc_D56743: LitVarI2 var_6F0, 0
  loc_D56748: FLdRfVar var_694
  loc_D5674B: LitVarStr var_538, vbNullString
  loc_D56750: HardType
  loc_D56751: EqVar var_6C0
  loc_D56755: FStVar var_6E0
  loc_D56759: FLdRfVar var_6E0
  loc_D5675C: FLdRfVar var_72C
  loc_D5675F: ImpAdCallFPR4  = IIf(, , )
  loc_D56764: FLdRfVar var_74C
  loc_D56767: FLdRfVar var_4B4
  loc_D5676A: LitVarStr var_58C, "Manzana"
  loc_D5676F: PopAdLdVar
  loc_D56770: FLdRfVar var_4A0
  loc_D56773: FLdRfVar var_49C
  loc_D56776: FLdPr Me
  loc_D56779: MemLdRfVar from_stack_1.global_88
  loc_D5677C: NewIfNullPr clsboleto
  loc_D5677F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56784: FLdPr var_49C
  loc_D56787:  = Me.Fields
  loc_D5678C: FLdPr var_4A0
  loc_D5678F: from_stack_2 = Me.Item(from_stack_1)
  loc_D56794: FLdPr var_4B4
  loc_D56797:  = Me.Value
  loc_D5679C: FLdRfVar var_4D0
  loc_D5679F: LitVarStr var_5D8, "Manzana"
  loc_D567A4: PopAdLdVar
  loc_D567A5: FLdRfVar var_4BC
  loc_D567A8: FLdRfVar var_4B8
  loc_D567AB: FLdPr Me
  loc_D567AE: MemLdRfVar from_stack_1.global_88
  loc_D567B1: NewIfNullPr clsboleto
  loc_D567B4: from_stack_1v = clsboleto.RsFrmGet()
  loc_D567B9: FLdPr var_4B8
  loc_D567BC:  = Me.Fields
  loc_D567C1: FLdPr var_4BC
  loc_D567C4: from_stack_2 = Me.Item(from_stack_1)
  loc_D567C9: FLdZeroAd var_4D0
  loc_D567CC: CVarAd
  loc_D567D0: LitVarI2 var_7A8, 0
  loc_D567D5: FLdRfVar var_74C
  loc_D567D8: LitVarStr var_5B0, vbNullString
  loc_D567DD: HardType
  loc_D567DE: EqVar var_778
  loc_D567E2: FStVar var_798
  loc_D567E6: FLdRfVar var_798
  loc_D567E9: FLdRfVar var_7E4
  loc_D567EC: ImpAdCallFPR4  = IIf(, , )
  loc_D567F1: FLdRfVar var_804
  loc_D567F4: FLdRfVar var_53C
  loc_D567F7: LitVarStr var_644, "Parcela"
  loc_D567FC: PopAdLdVar
  loc_D567FD: FLdRfVar var_528
  loc_D56800: FLdRfVar var_524
  loc_D56803: FLdPr Me
  loc_D56806: MemLdRfVar from_stack_1.global_88
  loc_D56809: NewIfNullPr clsboleto
  loc_D5680C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56811: FLdPr var_524
  loc_D56814:  = Me.Fields
  loc_D56819: FLdPr var_528
  loc_D5681C: from_stack_2 = Me.Item(from_stack_1)
  loc_D56821: FLdPr var_53C
  loc_D56824:  = Me.Value
  loc_D56829: FLdRfVar var_558
  loc_D5682C: LitVarStr var_684, "Parcela"
  loc_D56831: PopAdLdVar
  loc_D56832: FLdRfVar var_544
  loc_D56835: FLdRfVar var_540
  loc_D56838: FLdPr Me
  loc_D5683B: MemLdRfVar from_stack_1.global_88
  loc_D5683E: NewIfNullPr clsboleto
  loc_D56841: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56846: FLdPr var_540
  loc_D56849:  = Me.Fields
  loc_D5684E: FLdPr var_544
  loc_D56851: from_stack_2 = Me.Item(from_stack_1)
  loc_D56856: FLdZeroAd var_558
  loc_D56859: CVarAd
  loc_D5685D: LitVarI2 var_860, 0
  loc_D56862: FLdRfVar var_804
  loc_D56865: LitVarStr var_660, vbNullString
  loc_D5686A: HardType
  loc_D5686B: EqVar var_830
  loc_D5686F: FStVar var_850
  loc_D56873: FLdRfVar var_850
  loc_D56876: FLdRfVar var_89C
  loc_D56879: ImpAdCallFPR4  = IIf(, , )
  loc_D5687E: FLdRfVar var_8BC
  loc_D56881: FLdRfVar var_574
  loc_D56884: LitVarStr var_6D0, "Subparcela"
  loc_D56889: PopAdLdVar
  loc_D5688A: FLdRfVar var_560
  loc_D5688D: FLdRfVar var_55C
  loc_D56890: FLdPr Me
  loc_D56893: MemLdRfVar from_stack_1.global_88
  loc_D56896: NewIfNullPr clsboleto
  loc_D56899: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5689E: FLdPr var_55C
  loc_D568A1:  = Me.Fields
  loc_D568A6: FLdPr var_560
  loc_D568A9: from_stack_2 = Me.Item(from_stack_1)
  loc_D568AE: FLdPr var_574
  loc_D568B1:  = Me.Value
  loc_D568B6: FLdRfVar var_590
  loc_D568B9: LitVarStr var_73C, "Subparcela"
  loc_D568BE: PopAdLdVar
  loc_D568BF: FLdRfVar var_57C
  loc_D568C2: FLdRfVar var_578
  loc_D568C5: FLdPr Me
  loc_D568C8: MemLdRfVar from_stack_1.global_88
  loc_D568CB: NewIfNullPr clsboleto
  loc_D568CE: from_stack_1v = clsboleto.RsFrmGet()
  loc_D568D3: FLdPr var_578
  loc_D568D6:  = Me.Fields
  loc_D568DB: FLdPr var_57C
  loc_D568DE: from_stack_2 = Me.Item(from_stack_1)
  loc_D568E3: FLdZeroAd var_590
  loc_D568E6: CVarAd
  loc_D568EA: LitVarI2 var_918, 0
  loc_D568EF: FLdRfVar var_8BC
  loc_D568F2: LitVarStr var_718, vbNullString
  loc_D568F7: HardType
  loc_D568F8: EqVar var_8E8
  loc_D568FC: FStVar var_908
  loc_D56900: FLdRfVar var_908
  loc_D56903: FLdRfVar var_954
  loc_D56906: ImpAdCallFPR4  = IIf(, , )
  loc_D5690B: FLdRfVar var_9D0
  loc_D5690E: FLdRfVar var_5DC
  loc_D56911: LitVarStr var_788, "dig_veri"
  loc_D56916: PopAdLdVar
  loc_D56917: FLdRfVar var_5C8
  loc_D5691A: FLdRfVar var_5C4
  loc_D5691D: FLdPr Me
  loc_D56920: MemLdRfVar from_stack_1.global_88
  loc_D56923: NewIfNullPr clsboleto
  loc_D56926: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5692B: FLdPr var_5C4
  loc_D5692E:  = Me.Fields
  loc_D56933: FLdPr var_5C8
  loc_D56936: from_stack_2 = Me.Item(from_stack_1)
  loc_D5693B: FLdPr var_5DC
  loc_D5693E:  = Me.Value
  loc_D56943: FLdR8 var_1AC
  loc_D56946: LitStr vbNullString
  loc_D56949: FLdR8 var_CC
  loc_D5694C: FLdR8 var_104
  loc_D5694F: LitI2_Byte 1
  loc_D56951: CUI1I2
  loc_D56953: FLdRfVar var_9D0
  loc_D56956: CStrVarTmp
  loc_D56957: FStStrNoPop var_30C
  loc_D5695A: FLdRfVar var_954
  loc_D5695D: CI2Var
  loc_D5695E: FLdRfVar var_89C
  loc_D56961: CI4Var
  loc_D56963: FLdRfVar var_7E4
  loc_D56966: CI2Var
  loc_D56967: FLdRfVar var_72C
  loc_D5696A: CI2Var
  loc_D5696B: FLdRfVar var_674
  loc_D5696E: CI2Var
  loc_D5696F: FLdRfVar var_5A0
  loc_D56972: CI2Var
  loc_D56973: FLdR8 var_198
  loc_D56976: FLdI2 var_1A2
  loc_D56979: FLdR8 var_190
  loc_D5697C: FLdR8 var_A4
  loc_D5697F: FLdR8 var_AC
  loc_D56982: FLdR8 var_180
  loc_D56985: FLdR8 var_178
  loc_D56988: FLdFPR8 var_DC
  loc_D5698B: CI2R8
  loc_D5698C: FLdR8 var_188
  loc_D5698F: FLdRfVar var_9C0
  loc_D56992: CR4Var
  loc_D56993: PopFPR8
  loc_D56994: FLdRfVar var_498
  loc_D56997: CI2Var
  loc_D56998: LitI2_Byte &HFF
  loc_D5699A: FLdRfVar var_1B0
  loc_D5699D: LitI2_Byte 0
  loc_D5699F: CStrUI1
  loc_D569A1: FStStrNoPop var_308
  loc_D569A4: LitI4 9
  loc_D569A9: ILdRf var_1B0
  loc_D569AC: Ary1LdRfVar
  loc_D569AE: CStrVarVal var_304
  loc_D569B2: LitI2_Byte 0
  loc_D569B4: LitStr vbNullString
  loc_D569B7: LitI4 6
  loc_D569BC: ILdRf var_1B0
  loc_D569BF: Ary1LdRfVar
  loc_D569C1: CStrVarVal var_300
  loc_D569C5: LitI4 5
  loc_D569CA: ILdRf var_1B0
  loc_D569CD: Ary1LdRfVar
  loc_D569CF: CStrVarVal var_2FC
  loc_D569D3: LitI4 4
  loc_D569D8: ILdRf var_1B0
  loc_D569DB: Ary1LdRfVar
  loc_D569DD: CStrVarVal var_2F8
  loc_D569E1: LitI4 3
  loc_D569E6: ILdRf var_1B0
  loc_D569E9: Ary1LdRfVar
  loc_D569EB: CI2Var
  loc_D569EC: LitI4 2
  loc_D569F1: ILdRf var_1B0
  loc_D569F4: Ary1LdRfVar
  loc_D569F6: CI4Var
  loc_D569F8: LitI4 1
  loc_D569FD: ILdRf var_1B0
  loc_D56A00: Ary1LdRfVar
  loc_D56A02: CStrVarVal var_2F4
  loc_D56A06: LitI4 0
  loc_D56A0B: ILdRf var_1B0
  loc_D56A0E: Ary1LdRfVar
  loc_D56A10: CI4Var
  loc_D56A12: FLdRfVar var_9A0
  loc_D56A15: CStrVarTmp
  loc_D56A16: FStStrNoPop var_2D4
  loc_D56A19: FLdZeroAd var_310
  loc_D56A1C: FStStrNoPop var_2D0
  loc_D56A1F: FLdR8 var_EC
  loc_D56A22: LitI2_Byte 0
  loc_D56A24: CR8I2
  loc_D56A25: PopFPR8
  loc_D56A26: FLdR8 var_AC
  loc_D56A29: FLdR8 var_A4
  loc_D56A2C: FLdR8 var_F4
  loc_D56A2F: FLdR8 var_94
  loc_D56A32: FLdR8 var_C4
  loc_D56A35: FLdR8 var_BC
  loc_D56A38: ILdRf var_154
  loc_D56A3B: LitStr "Aforo"
  loc_D56A3E: LitI2_Byte 1
  loc_D56A40: CUI1I2
  loc_D56A42: ILdRf var_E0
  loc_D56A45: FLdRfVar var_974
  loc_D56A48: CI4Var
  loc_D56A4A: FLdI2 var_8A
  loc_D56A4D: CUI1I2
  loc_D56A4F: ILdRf var_1C4
  loc_D56A52: CUI1Str
  loc_D56A54: FLdPr Me
  loc_D56A57: MemLdUI1 global_100
  loc_D56A5B: ILdRf var_1BC
  loc_D56A5E: CI2Str
  loc_D56A60: FLdPr Me
  loc_D56A63: MemLdRfVar from_stack_1.global_76
  loc_D56A66: NewIfNullPr clsliqutasa
  loc_D56A69: Call clsliqutasa.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_D56A6E: FFreeStr var_2CC = "": var_1BC = "": var_1C4 = "": var_2D0 = "": var_2D4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = ""
  loc_D56A8B: FFreeAd var_44C = "": var_450 = "": var_454 = "": var_49C = "": var_4A0 = "": var_4B4 = "": var_4B8 = "": var_4BC = "": var_524 = "": var_528 = "": var_53C = "": var_540 = "": var_544 = "": var_55C = "": var_560 = "": var_574 = "": var_578 = "": var_57C = "": var_5C4 = "": var_5C8 = "": var_320 = "": var_344 = "": var_3B0 = "": var_5DC = "": var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_33C = "": var_340 = "": var_348 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A8 = "": var_3AC = "": var_3B4 = "": var_3B8 = "": var_3BC = "": var_3E0 = "": var_3E4 = "": var_3FC = "": var_400 = "": var_414 = "": var_418 = "": var_41C = "": var_434 = ""
  loc_D56AFA: FFreeVar var_908 = "": var_918 = "": var_928 = "": var_974 = "": var_9A0 = "": var_498 = "": var_9C0 = "": var_5A0 = "": var_674 = "": var_72C = "": var_7E4 = "": var_89C = "": var_954 = "": var_9D0 = "": var_1D4 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_358 = "": var_378 = "": var_388 = "": var_478 = "": var_4E0 = "": var_500 = "": var_510 = "": var_520 = "": var_5C0 = "": var_60C = "": var_61C = "": var_62C = "": var_694 = "": var_6E0 = "": var_6F0 = "": var_700 = "": var_74C = "": var_798 = "": var_7A8 = "": var_7B8 = "": var_804 = "": var_850 = "": var_860 = "": var_870 = ""
  loc_D56B55: FLdFPR8 var_9C
  loc_D56B58: LitI2_Byte 0
  loc_D56B5A: CR8I2
  loc_D56B5B: GtR4
  loc_D56B5C: BranchF loc_D57FB0
  loc_D56B5F: FLdRfVar var_2D8
  loc_D56B62: FLdPr Me
  loc_D56B65: MemLdRfVar from_stack_1.global_56
  loc_D56B68: NewIfNullPr clsboleto
  loc_D56B6B: from_stack_1 = clsboleto.RecordCount
  loc_D56B70: ILdRf var_2D8
  loc_D56B73: LitI4 0
  loc_D56B78: GtI4
  loc_D56B79: BranchF loc_D57759
  loc_D56B7C: FLdRfVar var_1BC
  loc_D56B7F: FLdPr Me
  loc_D56B82: VCallAd Control_ID_PeriLiquTxt
  loc_D56B85: FStAdFunc var_1B8
  loc_D56B88: FLdPr var_1B8
  loc_D56B8B:  = Me.Text
  loc_D56B90: FLdRfVar var_1C4
  loc_D56B93: FLdPr Me
  loc_D56B96: VCallAd Control_ID_CodiTiliTxt
  loc_D56B99: FStAdFunc var_1C0
  loc_D56B9C: FLdPr var_1C0
  loc_D56B9F:  = Me.Text
  loc_D56BA4: FLdRfVar var_AFC
  loc_D56BA7: FLdRfVar var_320
  loc_D56BAA: LitVarStr var_1E8, "nro_padron"
  loc_D56BAF: PopAdLdVar
  loc_D56BB0: FLdRfVar var_2E8
  loc_D56BB3: FLdRfVar var_2E4
  loc_D56BB6: FLdPr Me
  loc_D56BB9: MemLdRfVar from_stack_1.global_88
  loc_D56BBC: NewIfNullPr clsboleto
  loc_D56BBF: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56BC4: FLdPr var_2E4
  loc_D56BC7:  = Me.Fields
  loc_D56BCC: FLdPr var_2E8
  loc_D56BCF: from_stack_2 = Me.Item(from_stack_1)
  loc_D56BD4: FLdPr var_320
  loc_D56BD7:  = Me.Value
  loc_D56BDC: FLdRfVar var_1D4
  loc_D56BDF: FLdRfVar var_32C
  loc_D56BE2: LitVarStr var_1F8, "CucuPers"
  loc_D56BE7: PopAdLdVar
  loc_D56BE8: FLdRfVar var_328
  loc_D56BEB: FLdRfVar var_324
  loc_D56BEE: FLdPr Me
  loc_D56BF1: MemLdRfVar from_stack_1.global_88
  loc_D56BF4: NewIfNullPr clsboleto
  loc_D56BF7: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56BFC: FLdPr var_324
  loc_D56BFF:  = Me.Fields
  loc_D56C04: FLdPr var_328
  loc_D56C07: from_stack_2 = Me.Item(from_stack_1)
  loc_D56C0C: FLdPr var_32C
  loc_D56C0F:  = Me.Value
  loc_D56C14: FLdRfVar var_338
  loc_D56C17: LitVarStr var_218, "CucuPers"
  loc_D56C1C: PopAdLdVar
  loc_D56C1D: FLdRfVar var_334
  loc_D56C20: FLdRfVar var_330
  loc_D56C23: FLdPr Me
  loc_D56C26: MemLdRfVar from_stack_1.global_88
  loc_D56C29: NewIfNullPr clsboleto
  loc_D56C2C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56C31: FLdPr var_330
  loc_D56C34:  = Me.Fields
  loc_D56C39: FLdPr var_334
  loc_D56C3C: from_stack_2 = Me.Item(from_stack_1)
  loc_D56C41: FLdZeroAd var_338
  loc_D56C44: CVarAd
  loc_D56C48: LitVarI2 var_298, 0
  loc_D56C4D: FLdRfVar var_1D4
  loc_D56C50: LitVarStr var_208, vbNullString
  loc_D56C55: HardType
  loc_D56C56: EqVar var_268
  loc_D56C5A: FStVar var_288
  loc_D56C5E: FLdRfVar var_288
  loc_D56C61: FLdRfVar var_2C8
  loc_D56C64: ImpAdCallFPR4  = IIf(, , )
  loc_D56C69: LitI4 0
  loc_D56C6E: LitI4 -1
  loc_D56C73: LitI4 1
  loc_D56C78: LitStr vbNullString
  loc_D56C7B: LitStr "-"
  loc_D56C7E: FLdRfVar var_2C8
  loc_D56C81: CStrVarVal var_2CC
  loc_D56C85: ImpAdCallI2 Replace(, , , , , )
  loc_D56C8A: FStStr var_BE0
  loc_D56C8D: FLdRfVar var_B0C
  loc_D56C90: FLdRfVar var_344
  loc_D56C93: LitVarStr var_238, "denominacion"
  loc_D56C98: PopAdLdVar
  loc_D56C99: FLdRfVar var_340
  loc_D56C9C: FLdRfVar var_33C
  loc_D56C9F: FLdPr Me
  loc_D56CA2: MemLdRfVar from_stack_1.global_88
  loc_D56CA5: NewIfNullPr clsboleto
  loc_D56CA8: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56CAD: FLdPr var_33C
  loc_D56CB0:  = Me.Fields
  loc_D56CB5: FLdPr var_340
  loc_D56CB8: from_stack_2 = Me.Item(from_stack_1)
  loc_D56CBD: FLdPr var_344
  loc_D56CC0:  = Me.Value
  loc_D56CC5: FLdRfVar var_B1C
  loc_D56CC8: FLdRfVar var_398
  loc_D56CCB: LitVarStr var_248, "CodiCalle"
  loc_D56CD0: PopAdLdVar
  loc_D56CD1: FLdRfVar var_394
  loc_D56CD4: FLdRfVar var_348
  loc_D56CD7: FLdPr Me
  loc_D56CDA: MemLdRfVar from_stack_1.global_56
  loc_D56CDD: NewIfNullPr clsboleto
  loc_D56CE0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56CE5: FLdPr var_348
  loc_D56CE8:  = Me.Fields
  loc_D56CED: FLdPr var_394
  loc_D56CF0: from_stack_2 = Me.Item(from_stack_1)
  loc_D56CF5: FLdPr var_398
  loc_D56CF8:  = Me.Value
  loc_D56CFD: FLdRfVar var_B2C
  loc_D56D00: FLdRfVar var_3A4
  loc_D56D03: LitVarStr var_258, "DecaPost"
  loc_D56D08: PopAdLdVar
  loc_D56D09: FLdRfVar var_3A0
  loc_D56D0C: FLdRfVar var_39C
  loc_D56D0F: FLdPr Me
  loc_D56D12: MemLdRfVar from_stack_1.global_56
  loc_D56D15: NewIfNullPr clsboleto
  loc_D56D18: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56D1D: FLdPr var_39C
  loc_D56D20:  = Me.Fields
  loc_D56D25: FLdPr var_3A0
  loc_D56D28: from_stack_2 = Me.Item(from_stack_1)
  loc_D56D2D: FLdPr var_3A4
  loc_D56D30:  = Me.Value
  loc_D56D35: FLdRfVar var_3B0
  loc_D56D38: LitVarStr var_278, "NumePost"
  loc_D56D3D: PopAdLdVar
  loc_D56D3E: FLdRfVar var_3AC
  loc_D56D41: FLdRfVar var_3A8
  loc_D56D44: FLdPr Me
  loc_D56D47: MemLdRfVar from_stack_1.global_56
  loc_D56D4A: NewIfNullPr clsboleto
  loc_D56D4D: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56D52: FLdPr var_3A8
  loc_D56D55:  = Me.Fields
  loc_D56D5A: FLdPr var_3AC
  loc_D56D5D: from_stack_2 = Me.Item(from_stack_1)
  loc_D56D62: FLdZeroAd var_3B0
  loc_D56D65: CVarAd
  loc_D56D69: ImpAdCallI2 IsNumeric()
  loc_D56D6E: FStI2 var_1B2
  loc_D56D71: FLdRfVar var_3BC
  loc_D56D74: LitVarStr var_2B8, "NumePost"
  loc_D56D79: PopAdLdVar
  loc_D56D7A: FLdRfVar var_3B8
  loc_D56D7D: FLdRfVar var_3B4
  loc_D56D80: FLdPr Me
  loc_D56D83: MemLdRfVar from_stack_1.global_56
  loc_D56D86: NewIfNullPr clsboleto
  loc_D56D89: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56D8E: FLdPr var_3B4
  loc_D56D91:  = Me.Fields
  loc_D56D96: FLdPr var_3B8
  loc_D56D99: from_stack_2 = Me.Item(from_stack_1)
  loc_D56D9E: LitVarI2 var_378, 0
  loc_D56DA3: FLdZeroAd var_3BC
  loc_D56DA6: CVarAd
  loc_D56DAA: FLdI2 var_1B2
  loc_D56DAD: CVarBoolI2 var_3CC
  loc_D56DB1: FLdRfVar var_388
  loc_D56DB4: ImpAdCallFPR4  = IIf(, , )
  loc_D56DB9: FLdRfVar var_B3C
  loc_D56DBC: FLdRfVar var_3F8
  loc_D56DBF: LitVarStr var_3F4, "CobpPost"
  loc_D56DC4: PopAdLdVar
  loc_D56DC5: FLdRfVar var_3E4
  loc_D56DC8: FLdRfVar var_3E0
  loc_D56DCB: FLdPr Me
  loc_D56DCE: MemLdRfVar from_stack_1.global_56
  loc_D56DD1: NewIfNullPr clsboleto
  loc_D56DD4: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56DD9: FLdPr var_3E0
  loc_D56DDC:  = Me.Fields
  loc_D56DE1: FLdPr var_3E4
  loc_D56DE4: from_stack_2 = Me.Item(from_stack_1)
  loc_D56DE9: FLdPr var_3F8
  loc_D56DEC:  = Me.Value
  loc_D56DF1: FLdRfVar var_B4C
  loc_D56DF4: FLdRfVar var_414
  loc_D56DF7: LitVarStr var_410, "DebaPost"
  loc_D56DFC: PopAdLdVar
  loc_D56DFD: FLdRfVar var_400
  loc_D56E00: FLdRfVar var_3FC
  loc_D56E03: FLdPr Me
  loc_D56E06: MemLdRfVar from_stack_1.global_56
  loc_D56E09: NewIfNullPr clsboleto
  loc_D56E0C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56E11: FLdPr var_3FC
  loc_D56E14:  = Me.Fields
  loc_D56E19: FLdPr var_400
  loc_D56E1C: from_stack_2 = Me.Item(from_stack_1)
  loc_D56E21: FLdPr var_414
  loc_D56E24:  = Me.Value
  loc_D56E29: FLdRfVar var_B5C
  loc_D56E2C: FLdRfVar var_430
  loc_D56E2F: LitVarStr var_42C, "ManzPost"
  loc_D56E34: PopAdLdVar
  loc_D56E35: FLdRfVar var_41C
  loc_D56E38: FLdRfVar var_418
  loc_D56E3B: FLdPr Me
  loc_D56E3E: MemLdRfVar from_stack_1.global_56
  loc_D56E41: NewIfNullPr clsboleto
  loc_D56E44: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56E49: FLdPr var_418
  loc_D56E4C:  = Me.Fields
  loc_D56E51: FLdPr var_41C
  loc_D56E54: from_stack_2 = Me.Item(from_stack_1)
  loc_D56E59: FLdPr var_430
  loc_D56E5C:  = Me.Value
  loc_D56E61: FLdRfVar var_B6C
  loc_D56E64: FLdRfVar var_44C
  loc_D56E67: LitVarStr var_448, "CasaPost"
  loc_D56E6C: PopAdLdVar
  loc_D56E6D: FLdRfVar var_438
  loc_D56E70: FLdRfVar var_434
  loc_D56E73: FLdPr Me
  loc_D56E76: MemLdRfVar from_stack_1.global_56
  loc_D56E79: NewIfNullPr clsboleto
  loc_D56E7C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56E81: FLdPr var_434
  loc_D56E84:  = Me.Fields
  loc_D56E89: FLdPr var_438
  loc_D56E8C: from_stack_2 = Me.Item(from_stack_1)
  loc_D56E91: FLdPr var_44C
  loc_D56E94:  = Me.Value
  loc_D56E99: FLdRfVar var_478
  loc_D56E9C: FLdRfVar var_468
  loc_D56E9F: LitVarStr var_464, "UbicPost"
  loc_D56EA4: PopAdLdVar
  loc_D56EA5: FLdRfVar var_454
  loc_D56EA8: FLdRfVar var_450
  loc_D56EAB: FLdPr Me
  loc_D56EAE: MemLdRfVar from_stack_1.global_56
  loc_D56EB1: NewIfNullPr clsboleto
  loc_D56EB4: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56EB9: FLdPr var_450
  loc_D56EBC:  = Me.Fields
  loc_D56EC1: FLdPr var_454
  loc_D56EC4: from_stack_2 = Me.Item(from_stack_1)
  loc_D56EC9: FLdPr var_468
  loc_D56ECC:  = Me.Value
  loc_D56ED1: FLdRfVar var_4B4
  loc_D56ED4: LitVarStr var_4B0, "UbicPost"
  loc_D56ED9: PopAdLdVar
  loc_D56EDA: FLdRfVar var_4A0
  loc_D56EDD: FLdRfVar var_49C
  loc_D56EE0: FLdPr Me
  loc_D56EE3: MemLdRfVar from_stack_1.global_56
  loc_D56EE6: NewIfNullPr clsboleto
  loc_D56EE9: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56EEE: FLdPr var_49C
  loc_D56EF1:  = Me.Fields
  loc_D56EF6: FLdPr var_4A0
  loc_D56EF9: from_stack_2 = Me.Item(from_stack_1)
  loc_D56EFE: FLdRfVar var_4E0
  loc_D56F01: FLdRfVar var_4D0
  loc_D56F04: LitVarStr var_4CC, "Ubicacion"
  loc_D56F09: PopAdLdVar
  loc_D56F0A: FLdRfVar var_4BC
  loc_D56F0D: FLdRfVar var_4B8
  loc_D56F10: FLdPr Me
  loc_D56F13: MemLdRfVar from_stack_1.global_56
  loc_D56F16: NewIfNullPr clsboleto
  loc_D56F19: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56F1E: FLdPr var_4B8
  loc_D56F21:  = Me.Fields
  loc_D56F26: FLdPr var_4BC
  loc_D56F29: from_stack_2 = Me.Item(from_stack_1)
  loc_D56F2E: FLdPr var_4D0
  loc_D56F31:  = Me.Value
  loc_D56F36: LitI4 0
  loc_D56F3B: LitI4 -1
  loc_D56F40: LitI4 1
  loc_D56F45: LitStr " "
  loc_D56F48: LitStr "'"
  loc_D56F4B: FLdRfVar var_4E0
  loc_D56F4E: CStrVarTmp
  loc_D56F4F: FStStrNoPop var_2D0
  loc_D56F52: ImpAdCallI2 Replace(, , , , , )
  loc_D56F57: CVarStr var_510
  loc_D56F5A: FLdZeroAd var_4B4
  loc_D56F5D: CVarAd
  loc_D56F61: FLdRfVar var_478
  loc_D56F64: LitVarStr var_488, vbNullString
  loc_D56F69: HardType
  loc_D56F6A: NeVar var_498
  loc_D56F6E: FStVar var_4F0
  loc_D56F72: FLdRfVar var_4F0
  loc_D56F75: FLdRfVar var_520
  loc_D56F78: ImpAdCallFPR4  = IIf(, , )
  loc_D56F7D: FLdRfVar var_B7C
  loc_D56F80: FLdRfVar var_53C
  loc_D56F83: LitVarStr var_538, "ColpPost"
  loc_D56F88: PopAdLdVar
  loc_D56F89: FLdRfVar var_528
  loc_D56F8C: FLdRfVar var_524
  loc_D56F8F: FLdPr Me
  loc_D56F92: MemLdRfVar from_stack_1.global_56
  loc_D56F95: NewIfNullPr clsboleto
  loc_D56F98: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56F9D: FLdPr var_524
  loc_D56FA0:  = Me.Fields
  loc_D56FA5: FLdPr var_528
  loc_D56FA8: from_stack_2 = Me.Item(from_stack_1)
  loc_D56FAD: FLdPr var_53C
  loc_D56FB0:  = Me.Value
  loc_D56FB5: FLdRfVar var_B8C
  loc_D56FB8: FLdRfVar var_558
  loc_D56FBB: LitVarStr var_554, "DeloPost"
  loc_D56FC0: PopAdLdVar
  loc_D56FC1: FLdRfVar var_544
  loc_D56FC4: FLdRfVar var_540
  loc_D56FC7: FLdPr Me
  loc_D56FCA: MemLdRfVar from_stack_1.global_56
  loc_D56FCD: NewIfNullPr clsboleto
  loc_D56FD0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D56FD5: FLdPr var_540
  loc_D56FD8:  = Me.Fields
  loc_D56FDD: FLdPr var_544
  loc_D56FE0: from_stack_2 = Me.Item(from_stack_1)
  loc_D56FE5: FLdPr var_558
  loc_D56FE8:  = Me.Value
  loc_D56FED: FLdRfVar var_B9C
  loc_D56FF0: FLdRfVar var_574
  loc_D56FF3: LitVarStr var_570, "CopoPost"
  loc_D56FF8: PopAdLdVar
  loc_D56FF9: FLdRfVar var_560
  loc_D56FFC: FLdRfVar var_55C
  loc_D56FFF: FLdPr Me
  loc_D57002: MemLdRfVar from_stack_1.global_56
  loc_D57005: NewIfNullPr clsboleto
  loc_D57008: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5700D: FLdPr var_55C
  loc_D57010:  = Me.Fields
  loc_D57015: FLdPr var_560
  loc_D57018: from_stack_2 = Me.Item(from_stack_1)
  loc_D5701D: FLdPr var_574
  loc_D57020:  = Me.Value
  loc_D57025: FLdRfVar var_5A0
  loc_D57028: FLdRfVar var_590
  loc_D5702B: LitVarStr var_58C, "parcela_ryb_cod"
  loc_D57030: PopAdLdVar
  loc_D57031: FLdRfVar var_57C
  loc_D57034: FLdRfVar var_578
  loc_D57037: FLdPr Me
  loc_D5703A: MemLdRfVar from_stack_1.global_88
  loc_D5703D: NewIfNullPr clsboleto
  loc_D57040: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57045: FLdPr var_578
  loc_D57048:  = Me.Fields
  loc_D5704D: FLdPr var_57C
  loc_D57050: from_stack_2 = Me.Item(from_stack_1)
  loc_D57055: FLdPr var_590
  loc_D57058:  = Me.Value
  loc_D5705D: FLdRfVar var_5DC
  loc_D57060: LitVarStr var_5D8, "parcela_ryb_cod"
  loc_D57065: PopAdLdVar
  loc_D57066: FLdRfVar var_5C8
  loc_D57069: FLdRfVar var_5C4
  loc_D5706C: FLdPr Me
  loc_D5706F: MemLdRfVar from_stack_1.global_88
  loc_D57072: NewIfNullPr clsboleto
  loc_D57075: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5707A: FLdPr var_5C4
  loc_D5707D:  = Me.Fields
  loc_D57082: FLdPr var_5C8
  loc_D57085: from_stack_2 = Me.Item(from_stack_1)
  loc_D5708A: FLdZeroAd var_5DC
  loc_D5708D: CVarAd
  loc_D57091: LitVarI2 var_60C, 0
  loc_D57096: FLdRfVar var_5A0
  loc_D57099: LitVarStr var_5B0, vbNullString
  loc_D5709E: HardType
  loc_D5709F: EqVar var_5C0
  loc_D570A3: FStVar var_5EC
  loc_D570A7: FLdRfVar var_5EC
  loc_D570AA: FLdRfVar var_62C
  loc_D570AD: ImpAdCallFPR4  = IIf(, , )
  loc_D570B2: FLdRfVar var_BAC
  loc_D570B5: FLdRfVar var_648
  loc_D570B8: LitVarStr var_644, "parcela_avaluo"
  loc_D570BD: PopAdLdVar
  loc_D570BE: FLdRfVar var_634
  loc_D570C1: FLdRfVar var_630
  loc_D570C4: FLdPr Me
  loc_D570C7: MemLdRfVar from_stack_1.global_88
  loc_D570CA: NewIfNullPr clsboleto
  loc_D570CD: from_stack_1v = clsboleto.RsFrmGet()
  loc_D570D2: FLdPr var_630
  loc_D570D5:  = Me.Fields
  loc_D570DA: FLdPr var_634
  loc_D570DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D570E2: FLdPr var_648
  loc_D570E5:  = Me.Value
  loc_D570EA: FLdRfVar var_674
  loc_D570ED: FLdRfVar var_664
  loc_D570F0: LitVarStr var_660, "Dependencia"
  loc_D570F5: PopAdLdVar
  loc_D570F6: FLdRfVar var_650
  loc_D570F9: FLdRfVar var_64C
  loc_D570FC: FLdPr Me
  loc_D570FF: MemLdRfVar from_stack_1.global_88
  loc_D57102: NewIfNullPr clsboleto
  loc_D57105: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5710A: FLdPr var_64C
  loc_D5710D:  = Me.Fields
  loc_D57112: FLdPr var_650
  loc_D57115: from_stack_2 = Me.Item(from_stack_1)
  loc_D5711A: FLdPr var_664
  loc_D5711D:  = Me.Value
  loc_D57122: FLdRfVar var_6B0
  loc_D57125: LitVarStr var_6AC, "Dependencia"
  loc_D5712A: PopAdLdVar
  loc_D5712B: FLdRfVar var_69C
  loc_D5712E: FLdRfVar var_698
  loc_D57131: FLdPr Me
  loc_D57134: MemLdRfVar from_stack_1.global_88
  loc_D57137: NewIfNullPr clsboleto
  loc_D5713A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5713F: FLdPr var_698
  loc_D57142:  = Me.Fields
  loc_D57147: FLdPr var_69C
  loc_D5714A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5714F: FLdZeroAd var_6B0
  loc_D57152: CVarAd
  loc_D57156: LitVarI2 var_6E0, 0
  loc_D5715B: FLdRfVar var_674
  loc_D5715E: LitVarStr var_684, vbNullString
  loc_D57163: HardType
  loc_D57164: EqVar var_694
  loc_D57168: FStVar var_6C0
  loc_D5716C: FLdRfVar var_6C0
  loc_D5716F: FLdRfVar var_700
  loc_D57172: ImpAdCallFPR4  = IIf(, , )
  loc_D57177: FLdRfVar var_72C
  loc_D5717A: FLdRfVar var_71C
  loc_D5717D: LitVarStr var_718, "Distrito"
  loc_D57182: PopAdLdVar
  loc_D57183: FLdRfVar var_708
  loc_D57186: FLdRfVar var_704
  loc_D57189: FLdPr Me
  loc_D5718C: MemLdRfVar from_stack_1.global_88
  loc_D5718F: NewIfNullPr clsboleto
  loc_D57192: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57197: FLdPr var_704
  loc_D5719A:  = Me.Fields
  loc_D5719F: FLdPr var_708
  loc_D571A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D571A7: FLdPr var_71C
  loc_D571AA:  = Me.Value
  loc_D571AF: FLdRfVar var_768
  loc_D571B2: LitVarStr var_764, "Distrito"
  loc_D571B7: PopAdLdVar
  loc_D571B8: FLdRfVar var_754
  loc_D571BB: FLdRfVar var_750
  loc_D571BE: FLdPr Me
  loc_D571C1: MemLdRfVar from_stack_1.global_88
  loc_D571C4: NewIfNullPr clsboleto
  loc_D571C7: from_stack_1v = clsboleto.RsFrmGet()
  loc_D571CC: FLdPr var_750
  loc_D571CF:  = Me.Fields
  loc_D571D4: FLdPr var_754
  loc_D571D7: from_stack_2 = Me.Item(from_stack_1)
  loc_D571DC: FLdZeroAd var_768
  loc_D571DF: CVarAd
  loc_D571E3: LitVarI2 var_798, 0
  loc_D571E8: FLdRfVar var_72C
  loc_D571EB: LitVarStr var_73C, vbNullString
  loc_D571F0: HardType
  loc_D571F1: EqVar var_74C
  loc_D571F5: FStVar var_778
  loc_D571F9: FLdRfVar var_778
  loc_D571FC: FLdRfVar var_7B8
  loc_D571FF: ImpAdCallFPR4  = IIf(, , )
  loc_D57204: FLdRfVar var_7E4
  loc_D57207: FLdRfVar var_7D4
  loc_D5720A: LitVarStr var_7D0, "Seccion"
  loc_D5720F: PopAdLdVar
  loc_D57210: FLdRfVar var_7C0
  loc_D57213: FLdRfVar var_7BC
  loc_D57216: FLdPr Me
  loc_D57219: MemLdRfVar from_stack_1.global_88
  loc_D5721C: NewIfNullPr clsboleto
  loc_D5721F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57224: FLdPr var_7BC
  loc_D57227:  = Me.Fields
  loc_D5722C: FLdPr var_7C0
  loc_D5722F: from_stack_2 = Me.Item(from_stack_1)
  loc_D57234: FLdPr var_7D4
  loc_D57237:  = Me.Value
  loc_D5723C: FLdRfVar var_820
  loc_D5723F: LitVarStr var_81C, "Seccion"
  loc_D57244: PopAdLdVar
  loc_D57245: FLdRfVar var_80C
  loc_D57248: FLdRfVar var_808
  loc_D5724B: FLdPr Me
  loc_D5724E: MemLdRfVar from_stack_1.global_88
  loc_D57251: NewIfNullPr clsboleto
  loc_D57254: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57259: FLdPr var_808
  loc_D5725C:  = Me.Fields
  loc_D57261: FLdPr var_80C
  loc_D57264: from_stack_2 = Me.Item(from_stack_1)
  loc_D57269: FLdZeroAd var_820
  loc_D5726C: CVarAd
  loc_D57270: LitVarI2 var_850, 0
  loc_D57275: FLdRfVar var_7E4
  loc_D57278: LitVarStr var_7F4, vbNullString
  loc_D5727D: HardType
  loc_D5727E: EqVar var_804
  loc_D57282: FStVar var_830
  loc_D57286: FLdRfVar var_830
  loc_D57289: FLdRfVar var_870
  loc_D5728C: ImpAdCallFPR4  = IIf(, , )
  loc_D57291: FLdRfVar var_89C
  loc_D57294: FLdRfVar var_88C
  loc_D57297: LitVarStr var_888, "Manzana"
  loc_D5729C: PopAdLdVar
  loc_D5729D: FLdRfVar var_878
  loc_D572A0: FLdRfVar var_874
  loc_D572A3: FLdPr Me
  loc_D572A6: MemLdRfVar from_stack_1.global_88
  loc_D572A9: NewIfNullPr clsboleto
  loc_D572AC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D572B1: FLdPr var_874
  loc_D572B4:  = Me.Fields
  loc_D572B9: FLdPr var_878
  loc_D572BC: from_stack_2 = Me.Item(from_stack_1)
  loc_D572C1: FLdPr var_88C
  loc_D572C4:  = Me.Value
  loc_D572C9: FLdRfVar var_8D8
  loc_D572CC: LitVarStr var_8D4, "Manzana"
  loc_D572D1: PopAdLdVar
  loc_D572D2: FLdRfVar var_8C4
  loc_D572D5: FLdRfVar var_8C0
  loc_D572D8: FLdPr Me
  loc_D572DB: MemLdRfVar from_stack_1.global_88
  loc_D572DE: NewIfNullPr clsboleto
  loc_D572E1: from_stack_1v = clsboleto.RsFrmGet()
  loc_D572E6: FLdPr var_8C0
  loc_D572E9:  = Me.Fields
  loc_D572EE: FLdPr var_8C4
  loc_D572F1: from_stack_2 = Me.Item(from_stack_1)
  loc_D572F6: FLdZeroAd var_8D8
  loc_D572F9: CVarAd
  loc_D572FD: LitVarI2 var_908, 0
  loc_D57302: FLdRfVar var_89C
  loc_D57305: LitVarStr var_8AC, vbNullString
  loc_D5730A: HardType
  loc_D5730B: EqVar var_8BC
  loc_D5730F: FStVar var_8E8
  loc_D57313: FLdRfVar var_8E8
  loc_D57316: FLdRfVar var_928
  loc_D57319: ImpAdCallFPR4  = IIf(, , )
  loc_D5731E: FLdRfVar var_954
  loc_D57321: FLdRfVar var_944
  loc_D57324: LitVarStr var_940, "Parcela"
  loc_D57329: PopAdLdVar
  loc_D5732A: FLdRfVar var_930
  loc_D5732D: FLdRfVar var_92C
  loc_D57330: FLdPr Me
  loc_D57333: MemLdRfVar from_stack_1.global_88
  loc_D57336: NewIfNullPr clsboleto
  loc_D57339: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5733E: FLdPr var_92C
  loc_D57341:  = Me.Fields
  loc_D57346: FLdPr var_930
  loc_D57349: from_stack_2 = Me.Item(from_stack_1)
  loc_D5734E: FLdPr var_944
  loc_D57351:  = Me.Value
  loc_D57356: FLdRfVar var_990
  loc_D57359: LitVarStr var_98C, "Parcela"
  loc_D5735E: PopAdLdVar
  loc_D5735F: FLdRfVar var_97C
  loc_D57362: FLdRfVar var_978
  loc_D57365: FLdPr Me
  loc_D57368: MemLdRfVar from_stack_1.global_88
  loc_D5736B: NewIfNullPr clsboleto
  loc_D5736E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57373: FLdPr var_978
  loc_D57376:  = Me.Fields
  loc_D5737B: FLdPr var_97C
  loc_D5737E: from_stack_2 = Me.Item(from_stack_1)
  loc_D57383: FLdZeroAd var_990
  loc_D57386: CVarAd
  loc_D5738A: LitVarI2 var_9C0, 0
  loc_D5738F: FLdRfVar var_954
  loc_D57392: LitVarStr var_964, vbNullString
  loc_D57397: HardType
  loc_D57398: EqVar var_974
  loc_D5739C: FStVar var_9A0
  loc_D573A0: FLdRfVar var_9A0
  loc_D573A3: FLdRfVar var_9E0
  loc_D573A6: ImpAdCallFPR4  = IIf(, , )
  loc_D573AB: FLdRfVar var_A0C
  loc_D573AE: FLdRfVar var_9FC
  loc_D573B1: LitVarStr var_9F8, "Subparcela"
  loc_D573B6: PopAdLdVar
  loc_D573B7: FLdRfVar var_9E8
  loc_D573BA: FLdRfVar var_9E4
  loc_D573BD: FLdPr Me
  loc_D573C0: MemLdRfVar from_stack_1.global_88
  loc_D573C3: NewIfNullPr clsboleto
  loc_D573C6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D573CB: FLdPr var_9E4
  loc_D573CE:  = Me.Fields
  loc_D573D3: FLdPr var_9E8
  loc_D573D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D573DB: FLdPr var_9FC
  loc_D573DE:  = Me.Value
  loc_D573E3: FLdRfVar var_A48
  loc_D573E6: LitVarStr var_A44, "Subparcela"
  loc_D573EB: PopAdLdVar
  loc_D573EC: FLdRfVar var_A34
  loc_D573EF: FLdRfVar var_A30
  loc_D573F2: FLdPr Me
  loc_D573F5: MemLdRfVar from_stack_1.global_88
  loc_D573F8: NewIfNullPr clsboleto
  loc_D573FB: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57400: FLdPr var_A30
  loc_D57403:  = Me.Fields
  loc_D57408: FLdPr var_A34
  loc_D5740B: from_stack_2 = Me.Item(from_stack_1)
  loc_D57410: FLdZeroAd var_A48
  loc_D57413: CVarAd
  loc_D57417: LitVarI2 var_A78, 0
  loc_D5741C: FLdRfVar var_A0C
  loc_D5741F: LitVarStr var_A1C, vbNullString
  loc_D57424: HardType
  loc_D57425: EqVar var_A2C
  loc_D57429: FStVar var_A58
  loc_D5742D: FLdRfVar var_A58
  loc_D57430: FLdRfVar var_A98
  loc_D57433: ImpAdCallFPR4  = IIf(, , )
  loc_D57438: FLdRfVar var_BBC
  loc_D5743B: FLdRfVar var_AB4
  loc_D5743E: LitVarStr var_AB0, "dig_veri"
  loc_D57443: PopAdLdVar
  loc_D57444: FLdRfVar var_AA0
  loc_D57447: FLdRfVar var_A9C
  loc_D5744A: FLdPr Me
  loc_D5744D: MemLdRfVar from_stack_1.global_88
  loc_D57450: NewIfNullPr clsboleto
  loc_D57453: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57458: FLdPr var_A9C
  loc_D5745B:  = Me.Fields
  loc_D57460: FLdPr var_AA0
  loc_D57463: from_stack_2 = Me.Item(from_stack_1)
  loc_D57468: FLdPr var_AB4
  loc_D5746B:  = Me.Value
  loc_D57470: FLdRfVar var_BCC
  loc_D57473: FLdRfVar var_AD0
  loc_D57476: LitVarStr var_ACC, "Emite"
  loc_D5747B: PopAdLdVar
  loc_D5747C: FLdRfVar var_ABC
  loc_D5747F: FLdRfVar var_AB8
  loc_D57482: FLdPr Me
  loc_D57485: MemLdRfVar from_stack_1.global_56
  loc_D57488: NewIfNullPr clsboleto
  loc_D5748B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57490: FLdPr var_AB8
  loc_D57493:  = Me.Fields
  loc_D57498: FLdPr var_ABC
  loc_D5749B: from_stack_2 = Me.Item(from_stack_1)
  loc_D574A0: FLdPr var_AD0
  loc_D574A3:  = Me.Value
  loc_D574A8: FLdRfVar var_BDC
  loc_D574AB: FLdRfVar var_AEC
  loc_D574AE: LitVarStr var_AE8, "Vinculo"
  loc_D574B3: PopAdLdVar
  loc_D574B4: FLdRfVar var_AD8
  loc_D574B7: FLdRfVar var_AD4
  loc_D574BA: FLdPr Me
  loc_D574BD: MemLdRfVar from_stack_1.global_56
  loc_D574C0: NewIfNullPr clsboleto
  loc_D574C3: from_stack_1v = clsboleto.RsFrmGet()
  loc_D574C8: FLdPr var_AD4
  loc_D574CB:  = Me.Fields
  loc_D574D0: FLdPr var_AD8
  loc_D574D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D574D8: FLdPr var_AEC
  loc_D574DB:  = Me.Value
  loc_D574E0: FLdR8 var_1AC
  loc_D574E3: FLdRfVar var_BDC
  loc_D574E6: CStrVarTmp
  loc_D574E7: FStStrNoPop var_318
  loc_D574EA: FLdR8 var_CC
  loc_D574ED: FLdR8 var_104
  loc_D574F0: FLdRfVar var_BCC
  loc_D574F3: CUI1Var
  loc_D574F5: FLdRfVar var_BBC
  loc_D574F8: CStrVarTmp
  loc_D574F9: FStStrNoPop var_314
  loc_D574FC: FLdRfVar var_A98
  loc_D574FF: CI2Var
  loc_D57500: FLdRfVar var_9E0
  loc_D57503: CI4Var
  loc_D57505: FLdRfVar var_928
  loc_D57508: CI2Var
  loc_D57509: FLdRfVar var_870
  loc_D5750C: CI2Var
  loc_D5750D: FLdRfVar var_7B8
  loc_D57510: CI2Var
  loc_D57511: FLdRfVar var_700
  loc_D57514: CI2Var
  loc_D57515: FLdR8 var_198
  loc_D57518: FLdI2 var_1A2
  loc_D5751B: FLdR8 var_190
  loc_D5751E: FLdR8 var_A4
  loc_D57521: FLdR8 var_AC
  loc_D57524: FLdR8 var_180
  loc_D57527: FLdR8 var_178
  loc_D5752A: FLdFPR8 var_DC
  loc_D5752D: CI2R8
  loc_D5752E: FLdR8 var_188
  loc_D57531: FLdRfVar var_BAC
  loc_D57534: CR4Var
  loc_D57535: PopFPR8
  loc_D57536: FLdRfVar var_62C
  loc_D57539: CI2Var
  loc_D5753A: LitI2_Byte 0
  loc_D5753C: FLdRfVar var_1B0
  loc_D5753F: FLdRfVar var_B9C
  loc_D57542: CStrVarTmp
  loc_D57543: FStStrNoPop var_310
  loc_D57546: FLdRfVar var_B8C
  loc_D57549: CStrVarTmp
  loc_D5754A: FStStrNoPop var_30C
  loc_D5754D: FLdRfVar var_B7C
  loc_D57550: CI2Var
  loc_D57551: FLdRfVar var_520
  loc_D57554: CStrVarVal var_308
  loc_D57558: FLdRfVar var_B6C
  loc_D5755B: CStrVarTmp
  loc_D5755C: FStStrNoPop var_304
  loc_D5755F: FLdRfVar var_B5C
  loc_D57562: CStrVarTmp
  loc_D57563: FStStrNoPop var_300
  loc_D57566: FLdRfVar var_B4C
  loc_D57569: CStrVarTmp
  loc_D5756A: FStStrNoPop var_2FC
  loc_D5756D: FLdRfVar var_B3C
  loc_D57570: CI2Var
  loc_D57571: FLdRfVar var_388
  loc_D57574: CI4Var
  loc_D57576: FLdRfVar var_B2C
  loc_D57579: CStrVarTmp
  loc_D5757A: FStStrNoPop var_2F8
  loc_D5757D: FLdRfVar var_B1C
  loc_D57580: CI4Var
  loc_D57582: FLdRfVar var_B0C
  loc_D57585: CStrVarTmp
  loc_D57586: FStStrNoPop var_2F4
  loc_D57589: FLdZeroAd var_BE0
  loc_D5758C: FStStrNoPop var_2D4
  loc_D5758F: FLdR8 var_9C
  loc_D57592: LitI2_Byte 0
  loc_D57594: CR8I2
  loc_D57595: PopFPR8
  loc_D57596: LitI2_Byte 0
  loc_D57598: CR8I2
  loc_D57599: PopFPR8
  loc_D5759A: LitI2_Byte 0
  loc_D5759C: CR8I2
  loc_D5759D: PopFPR8
  loc_D5759E: LitI2_Byte 0
  loc_D575A0: CR8I2
  loc_D575A1: PopFPR8
  loc_D575A2: FLdR8 var_9C
  loc_D575A5: LitI2_Byte 0
  loc_D575A7: CR8I2
  loc_D575A8: PopFPR8
  loc_D575A9: LitI2_Byte 0
  loc_D575AB: CR8I2
  loc_D575AC: PopFPR8
  loc_D575AD: ILdRf var_154
  loc_D575B0: LitStr "Aforo"
  loc_D575B3: LitI2_Byte 1
  loc_D575B5: CUI1I2
  loc_D575B7: ILdRf var_E4
  loc_D575BA: FLdRfVar var_AFC
  loc_D575BD: CI4Var
  loc_D575BF: FLdI2 var_8A
  loc_D575C2: CUI1I2
  loc_D575C4: ILdRf var_1C4
  loc_D575C7: CUI1Str
  loc_D575C9: FLdPr Me
  loc_D575CC: MemLdUI1 global_100
  loc_D575D0: ILdRf var_1BC
  loc_D575D3: CI2Str
  loc_D575D5: FLdPr Me
  loc_D575D8: MemLdRfVar from_stack_1.global_76
  loc_D575DB: NewIfNullPr clsliqutasa
  loc_D575DE: Call clsliqutasa.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_D575E3: FFreeStr var_2CC = "": var_2D0 = "": var_1BC = "": var_1C4 = "": var_2D4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = ""
  loc_D57606: FFreeAd var_430 = "": var_44C = "": var_53C = "": var_558 = "": var_574 = "": var_648 = "": var_AB4 = "": var_AD0 = "": var_AEC = "": var_7D4 = "": var_808 = "": var_80C = "": var_874 = "": var_878 = "": var_88C = "": var_8C0 = "": var_8C4 = "": var_92C = "": var_930 = "": var_944 = "": var_978 = "": var_97C = "": var_9E4 = "": var_9E8 = "": var_9FC = "": var_A30 = "": var_A34 = "": var_A9C = "": var_AA0 = "": var_AB8 = "": var_ABC = "": var_AD4 = "": var_AD8 = "": var_320 = "": var_344 = "": var_398 = "": var_3A4 = "": var_3F8 = "": var_414 = "": var_49C = "": var_4A0 = "": var_4B8 = "": var_4BC = "": var_4D0 = "": var_524 = "": var_528 = "": var_540 = "": var_544 = "": var_55C = "": var_560 = "": var_578 = "": var_57C = "": var_590 = "": var_5C4 = "": var_5C8 = "": var_630 = "": var_634 = "": var_64C = "": var_650 = "": var_664 = "": var_698 = "": var_69C = "": var_704 = "": var_708 = "": var_71C = "": var_750 = "": var_754 = "": var_7BC = "": var_7C0 = "": var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_33C = "": var_340 = "": var_348 = "": var_394 = "": var_39C = "": var_3A0 = "": var_3A8 = "": var_3AC = "": var_3B4 = "": var_3B8 = "": var_3E0 = "": var_3E4 = "": var_3FC = "": var_400 = "": var_418 = "": var_41C = "": var_434 = "": var_438 = "": var_450 = "": var_454 = ""
  loc_D576CF: FFreeVar var_928 = "": var_9E0 = "": var_A98 = "": var_BBC = "": var_BCC = "": var_BDC = "": var_89C = "": var_8E8 = "": var_908 = "": var_918 = "": var_954 = "": var_9A0 = "": var_9C0 = "": var_9D0 = "": var_A0C = "": var_A58 = "": var_A78 = "": var_A88 = "": var_AFC = "": var_B0C = "": var_B1C = "": var_B2C = "": var_388 = "": var_B3C = "": var_B4C = "": var_B5C = "": var_B6C = "": var_520 = "": var_B7C = "": var_B8C = "": var_B9C = "": var_62C = "": var_BAC = "": var_700 = "": var_7B8 = "": var_870 = "": var_1D4 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_358 = "": var_3CC = "": var_368 = "": var_378 = "": var_478 = "": var_4E0 = "": var_4F0 = "": var_500 = "": var_510 = "": var_5A0 = "": var_5EC = "": var_60C = "": var_61C = "": var_674 = "": var_6C0 = "": var_6E0 = "": var_6F0 = "": var_72C = "": var_778 = "": var_798 = "": var_7A8 = "": var_7E4 = "": var_830 = "": var_850 = ""
  loc_D57756: Branch loc_D57F04
  loc_D57759: FLdRfVar var_1BC
  loc_D5775C: FLdPr Me
  loc_D5775F: VCallAd Control_ID_PeriLiquTxt
  loc_D57762: FStAdFunc var_1B8
  loc_D57765: FLdPr var_1B8
  loc_D57768:  = Me.Text
  loc_D5776D: FLdRfVar var_1C4
  loc_D57770: FLdPr Me
  loc_D57773: VCallAd Control_ID_CodiTiliTxt
  loc_D57776: FStAdFunc var_1C0
  loc_D57779: FLdPr var_1C0
  loc_D5777C:  = Me.Text
  loc_D57781: FLdRfVar var_974
  loc_D57784: FLdRfVar var_320
  loc_D57787: LitVarStr var_1E8, "nro_padron"
  loc_D5778C: PopAdLdVar
  loc_D5778D: FLdRfVar var_2E8
  loc_D57790: FLdRfVar var_2E4
  loc_D57793: FLdPr Me
  loc_D57796: MemLdRfVar from_stack_1.global_88
  loc_D57799: NewIfNullPr clsboleto
  loc_D5779C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D577A1: FLdPr var_2E4
  loc_D577A4:  = Me.Fields
  loc_D577A9: FLdPr var_2E8
  loc_D577AC: from_stack_2 = Me.Item(from_stack_1)
  loc_D577B1: FLdPr var_320
  loc_D577B4:  = Me.Value
  loc_D577B9: FLdRfVar var_1D4
  loc_D577BC: FLdRfVar var_32C
  loc_D577BF: LitVarStr var_1F8, "CucuPers"
  loc_D577C4: PopAdLdVar
  loc_D577C5: FLdRfVar var_328
  loc_D577C8: FLdRfVar var_324
  loc_D577CB: FLdPr Me
  loc_D577CE: MemLdRfVar from_stack_1.global_88
  loc_D577D1: NewIfNullPr clsboleto
  loc_D577D4: from_stack_1v = clsboleto.RsFrmGet()
  loc_D577D9: FLdPr var_324
  loc_D577DC:  = Me.Fields
  loc_D577E1: FLdPr var_328
  loc_D577E4: from_stack_2 = Me.Item(from_stack_1)
  loc_D577E9: FLdPr var_32C
  loc_D577EC:  = Me.Value
  loc_D577F1: FLdRfVar var_338
  loc_D577F4: LitVarStr var_218, "CucuPers"
  loc_D577F9: PopAdLdVar
  loc_D577FA: FLdRfVar var_334
  loc_D577FD: FLdRfVar var_330
  loc_D57800: FLdPr Me
  loc_D57803: MemLdRfVar from_stack_1.global_88
  loc_D57806: NewIfNullPr clsboleto
  loc_D57809: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5780E: FLdPr var_330
  loc_D57811:  = Me.Fields
  loc_D57816: FLdPr var_334
  loc_D57819: from_stack_2 = Me.Item(from_stack_1)
  loc_D5781E: FLdZeroAd var_338
  loc_D57821: CVarAd
  loc_D57825: LitVarI2 var_298, 0
  loc_D5782A: FLdRfVar var_1D4
  loc_D5782D: LitVarStr var_208, vbNullString
  loc_D57832: HardType
  loc_D57833: EqVar var_268
  loc_D57837: FStVar var_288
  loc_D5783B: FLdRfVar var_288
  loc_D5783E: FLdRfVar var_2C8
  loc_D57841: ImpAdCallFPR4  = IIf(, , )
  loc_D57846: LitI4 0
  loc_D5784B: LitI4 -1
  loc_D57850: LitI4 1
  loc_D57855: LitStr vbNullString
  loc_D57858: LitStr "-"
  loc_D5785B: FLdRfVar var_2C8
  loc_D5785E: CStrVarVal var_2CC
  loc_D57862: ImpAdCallI2 Replace(, , , , , )
  loc_D57867: FStStr var_310
  loc_D5786A: FLdRfVar var_9A0
  loc_D5786D: FLdRfVar var_344
  loc_D57870: LitVarStr var_238, "denominacion"
  loc_D57875: PopAdLdVar
  loc_D57876: FLdRfVar var_340
  loc_D57879: FLdRfVar var_33C
  loc_D5787C: FLdPr Me
  loc_D5787F: MemLdRfVar from_stack_1.global_88
  loc_D57882: NewIfNullPr clsboleto
  loc_D57885: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5788A: FLdPr var_33C
  loc_D5788D:  = Me.Fields
  loc_D57892: FLdPr var_340
  loc_D57895: from_stack_2 = Me.Item(from_stack_1)
  loc_D5789A: FLdPr var_344
  loc_D5789D:  = Me.Value
  loc_D578A2: FLdRfVar var_358
  loc_D578A5: FLdRfVar var_398
  loc_D578A8: LitVarStr var_248, "parcela_ryb_cod"
  loc_D578AD: PopAdLdVar
  loc_D578AE: FLdRfVar var_394
  loc_D578B1: FLdRfVar var_348
  loc_D578B4: FLdPr Me
  loc_D578B7: MemLdRfVar from_stack_1.global_88
  loc_D578BA: NewIfNullPr clsboleto
  loc_D578BD: from_stack_1v = clsboleto.RsFrmGet()
  loc_D578C2: FLdPr var_348
  loc_D578C5:  = Me.Fields
  loc_D578CA: FLdPr var_394
  loc_D578CD: from_stack_2 = Me.Item(from_stack_1)
  loc_D578D2: FLdPr var_398
  loc_D578D5:  = Me.Value
  loc_D578DA: FLdRfVar var_3A4
  loc_D578DD: LitVarStr var_278, "parcela_ryb_cod"
  loc_D578E2: PopAdLdVar
  loc_D578E3: FLdRfVar var_3A0
  loc_D578E6: FLdRfVar var_39C
  loc_D578E9: FLdPr Me
  loc_D578EC: MemLdRfVar from_stack_1.global_88
  loc_D578EF: NewIfNullPr clsboleto
  loc_D578F2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D578F7: FLdPr var_39C
  loc_D578FA:  = Me.Fields
  loc_D578FF: FLdPr var_3A0
  loc_D57902: from_stack_2 = Me.Item(from_stack_1)
  loc_D57907: FLdZeroAd var_3A4
  loc_D5790A: CVarAd
  loc_D5790E: LitVarI2 var_388, 0
  loc_D57913: FLdRfVar var_358
  loc_D57916: LitVarStr var_258, vbNullString
  loc_D5791B: HardType
  loc_D5791C: EqVar var_368
  loc_D57920: FStVar var_378
  loc_D57924: FLdRfVar var_378
  loc_D57927: FLdRfVar var_498
  loc_D5792A: ImpAdCallFPR4  = IIf(, , )
  loc_D5792F: FLdRfVar var_9C0
  loc_D57932: FLdRfVar var_3B0
  loc_D57935: LitVarStr var_3CC, "parcela_avaluo"
  loc_D5793A: PopAdLdVar
  loc_D5793B: FLdRfVar var_3AC
  loc_D5793E: FLdRfVar var_3A8
  loc_D57941: FLdPr Me
  loc_D57944: MemLdRfVar from_stack_1.global_88
  loc_D57947: NewIfNullPr clsboleto
  loc_D5794A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5794F: FLdPr var_3A8
  loc_D57952:  = Me.Fields
  loc_D57957: FLdPr var_3AC
  loc_D5795A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5795F: FLdPr var_3B0
  loc_D57962:  = Me.Value
  loc_D57967: FLdRfVar var_4E0
  loc_D5796A: FLdRfVar var_3BC
  loc_D5796D: LitVarStr var_3DC, "Dependencia"
  loc_D57972: PopAdLdVar
  loc_D57973: FLdRfVar var_3B8
  loc_D57976: FLdRfVar var_3B4
  loc_D57979: FLdPr Me
  loc_D5797C: MemLdRfVar from_stack_1.global_88
  loc_D5797F: NewIfNullPr clsboleto
  loc_D57982: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57987: FLdPr var_3B4
  loc_D5798A:  = Me.Fields
  loc_D5798F: FLdPr var_3B8
  loc_D57992: from_stack_2 = Me.Item(from_stack_1)
  loc_D57997: FLdPr var_3BC
  loc_D5799A:  = Me.Value
  loc_D5799F: FLdRfVar var_3F8
  loc_D579A2: LitVarStr var_410, "Dependencia"
  loc_D579A7: PopAdLdVar
  loc_D579A8: FLdRfVar var_3E4
  loc_D579AB: FLdRfVar var_3E0
  loc_D579AE: FLdPr Me
  loc_D579B1: MemLdRfVar from_stack_1.global_88
  loc_D579B4: NewIfNullPr clsboleto
  loc_D579B7: from_stack_1v = clsboleto.RsFrmGet()
  loc_D579BC: FLdPr var_3E0
  loc_D579BF:  = Me.Fields
  loc_D579C4: FLdPr var_3E4
  loc_D579C7: from_stack_2 = Me.Item(from_stack_1)
  loc_D579CC: FLdZeroAd var_3F8
  loc_D579CF: CVarAd
  loc_D579D3: LitVarI2 var_510, 0
  loc_D579D8: FLdRfVar var_4E0
  loc_D579DB: LitVarStr var_3F4, vbNullString
  loc_D579E0: HardType
  loc_D579E1: EqVar var_4F0
  loc_D579E5: FStVar var_500
  loc_D579E9: FLdRfVar var_500
  loc_D579EC: FLdRfVar var_5A0
  loc_D579EF: ImpAdCallFPR4  = IIf(, , )
  loc_D579F4: FLdRfVar var_5C0
  loc_D579F7: FLdRfVar var_414
  loc_D579FA: LitVarStr var_448, "Distrito"
  loc_D579FF: PopAdLdVar
  loc_D57A00: FLdRfVar var_400
  loc_D57A03: FLdRfVar var_3FC
  loc_D57A06: FLdPr Me
  loc_D57A09: MemLdRfVar from_stack_1.global_88
  loc_D57A0C: NewIfNullPr clsboleto
  loc_D57A0F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57A14: FLdPr var_3FC
  loc_D57A17:  = Me.Fields
  loc_D57A1C: FLdPr var_400
  loc_D57A1F: from_stack_2 = Me.Item(from_stack_1)
  loc_D57A24: FLdPr var_414
  loc_D57A27:  = Me.Value
  loc_D57A2C: FLdRfVar var_430
  loc_D57A2F: LitVarStr var_488, "Distrito"
  loc_D57A34: PopAdLdVar
  loc_D57A35: FLdRfVar var_41C
  loc_D57A38: FLdRfVar var_418
  loc_D57A3B: FLdPr Me
  loc_D57A3E: MemLdRfVar from_stack_1.global_88
  loc_D57A41: NewIfNullPr clsboleto
  loc_D57A44: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57A49: FLdPr var_418
  loc_D57A4C:  = Me.Fields
  loc_D57A51: FLdPr var_41C
  loc_D57A54: from_stack_2 = Me.Item(from_stack_1)
  loc_D57A59: FLdZeroAd var_430
  loc_D57A5C: CVarAd
  loc_D57A60: LitVarI2 var_61C, 0
  loc_D57A65: FLdRfVar var_5C0
  loc_D57A68: LitVarStr var_464, vbNullString
  loc_D57A6D: HardType
  loc_D57A6E: EqVar var_5EC
  loc_D57A72: FStVar var_60C
  loc_D57A76: FLdRfVar var_60C
  loc_D57A79: FLdRfVar var_674
  loc_D57A7C: ImpAdCallFPR4  = IIf(, , )
  loc_D57A81: FLdRfVar var_694
  loc_D57A84: FLdRfVar var_44C
  loc_D57A87: LitVarStr var_4CC, "Seccion"
  loc_D57A8C: PopAdLdVar
  loc_D57A8D: FLdRfVar var_438
  loc_D57A90: FLdRfVar var_434
  loc_D57A93: FLdPr Me
  loc_D57A96: MemLdRfVar from_stack_1.global_88
  loc_D57A99: NewIfNullPr clsboleto
  loc_D57A9C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57AA1: FLdPr var_434
  loc_D57AA4:  = Me.Fields
  loc_D57AA9: FLdPr var_438
  loc_D57AAC: from_stack_2 = Me.Item(from_stack_1)
  loc_D57AB1: FLdPr var_44C
  loc_D57AB4:  = Me.Value
  loc_D57AB9: FLdRfVar var_468
  loc_D57ABC: LitVarStr var_554, "Seccion"
  loc_D57AC1: PopAdLdVar
  loc_D57AC2: FLdRfVar var_454
  loc_D57AC5: FLdRfVar var_450
  loc_D57AC8: FLdPr Me
  loc_D57ACB: MemLdRfVar from_stack_1.global_88
  loc_D57ACE: NewIfNullPr clsboleto
  loc_D57AD1: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57AD6: FLdPr var_450
  loc_D57AD9:  = Me.Fields
  loc_D57ADE: FLdPr var_454
  loc_D57AE1: from_stack_2 = Me.Item(from_stack_1)
  loc_D57AE6: FLdZeroAd var_468
  loc_D57AE9: CVarAd
  loc_D57AED: LitVarI2 var_6F0, 0
  loc_D57AF2: FLdRfVar var_694
  loc_D57AF5: LitVarStr var_538, vbNullString
  loc_D57AFA: HardType
  loc_D57AFB: EqVar var_6C0
  loc_D57AFF: FStVar var_6E0
  loc_D57B03: FLdRfVar var_6E0
  loc_D57B06: FLdRfVar var_72C
  loc_D57B09: ImpAdCallFPR4  = IIf(, , )
  loc_D57B0E: FLdRfVar var_74C
  loc_D57B11: FLdRfVar var_4B4
  loc_D57B14: LitVarStr var_58C, "Manzana"
  loc_D57B19: PopAdLdVar
  loc_D57B1A: FLdRfVar var_4A0
  loc_D57B1D: FLdRfVar var_49C
  loc_D57B20: FLdPr Me
  loc_D57B23: MemLdRfVar from_stack_1.global_88
  loc_D57B26: NewIfNullPr clsboleto
  loc_D57B29: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57B2E: FLdPr var_49C
  loc_D57B31:  = Me.Fields
  loc_D57B36: FLdPr var_4A0
  loc_D57B39: from_stack_2 = Me.Item(from_stack_1)
  loc_D57B3E: FLdPr var_4B4
  loc_D57B41:  = Me.Value
  loc_D57B46: FLdRfVar var_4D0
  loc_D57B49: LitVarStr var_5D8, "Manzana"
  loc_D57B4E: PopAdLdVar
  loc_D57B4F: FLdRfVar var_4BC
  loc_D57B52: FLdRfVar var_4B8
  loc_D57B55: FLdPr Me
  loc_D57B58: MemLdRfVar from_stack_1.global_88
  loc_D57B5B: NewIfNullPr clsboleto
  loc_D57B5E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57B63: FLdPr var_4B8
  loc_D57B66:  = Me.Fields
  loc_D57B6B: FLdPr var_4BC
  loc_D57B6E: from_stack_2 = Me.Item(from_stack_1)
  loc_D57B73: FLdZeroAd var_4D0
  loc_D57B76: CVarAd
  loc_D57B7A: LitVarI2 var_7A8, 0
  loc_D57B7F: FLdRfVar var_74C
  loc_D57B82: LitVarStr var_5B0, vbNullString
  loc_D57B87: HardType
  loc_D57B88: EqVar var_778
  loc_D57B8C: FStVar var_798
  loc_D57B90: FLdRfVar var_798
  loc_D57B93: FLdRfVar var_7E4
  loc_D57B96: ImpAdCallFPR4  = IIf(, , )
  loc_D57B9B: FLdRfVar var_804
  loc_D57B9E: FLdRfVar var_53C
  loc_D57BA1: LitVarStr var_644, "Parcela"
  loc_D57BA6: PopAdLdVar
  loc_D57BA7: FLdRfVar var_528
  loc_D57BAA: FLdRfVar var_524
  loc_D57BAD: FLdPr Me
  loc_D57BB0: MemLdRfVar from_stack_1.global_88
  loc_D57BB3: NewIfNullPr clsboleto
  loc_D57BB6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57BBB: FLdPr var_524
  loc_D57BBE:  = Me.Fields
  loc_D57BC3: FLdPr var_528
  loc_D57BC6: from_stack_2 = Me.Item(from_stack_1)
  loc_D57BCB: FLdPr var_53C
  loc_D57BCE:  = Me.Value
  loc_D57BD3: FLdRfVar var_558
  loc_D57BD6: LitVarStr var_684, "Parcela"
  loc_D57BDB: PopAdLdVar
  loc_D57BDC: FLdRfVar var_544
  loc_D57BDF: FLdRfVar var_540
  loc_D57BE2: FLdPr Me
  loc_D57BE5: MemLdRfVar from_stack_1.global_88
  loc_D57BE8: NewIfNullPr clsboleto
  loc_D57BEB: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57BF0: FLdPr var_540
  loc_D57BF3:  = Me.Fields
  loc_D57BF8: FLdPr var_544
  loc_D57BFB: from_stack_2 = Me.Item(from_stack_1)
  loc_D57C00: FLdZeroAd var_558
  loc_D57C03: CVarAd
  loc_D57C07: LitVarI2 var_860, 0
  loc_D57C0C: FLdRfVar var_804
  loc_D57C0F: LitVarStr var_660, vbNullString
  loc_D57C14: HardType
  loc_D57C15: EqVar var_830
  loc_D57C19: FStVar var_850
  loc_D57C1D: FLdRfVar var_850
  loc_D57C20: FLdRfVar var_89C
  loc_D57C23: ImpAdCallFPR4  = IIf(, , )
  loc_D57C28: FLdRfVar var_8BC
  loc_D57C2B: FLdRfVar var_574
  loc_D57C2E: LitVarStr var_6D0, "Subparcela"
  loc_D57C33: PopAdLdVar
  loc_D57C34: FLdRfVar var_560
  loc_D57C37: FLdRfVar var_55C
  loc_D57C3A: FLdPr Me
  loc_D57C3D: MemLdRfVar from_stack_1.global_88
  loc_D57C40: NewIfNullPr clsboleto
  loc_D57C43: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57C48: FLdPr var_55C
  loc_D57C4B:  = Me.Fields
  loc_D57C50: FLdPr var_560
  loc_D57C53: from_stack_2 = Me.Item(from_stack_1)
  loc_D57C58: FLdPr var_574
  loc_D57C5B:  = Me.Value
  loc_D57C60: FLdRfVar var_590
  loc_D57C63: LitVarStr var_73C, "Subparcela"
  loc_D57C68: PopAdLdVar
  loc_D57C69: FLdRfVar var_57C
  loc_D57C6C: FLdRfVar var_578
  loc_D57C6F: FLdPr Me
  loc_D57C72: MemLdRfVar from_stack_1.global_88
  loc_D57C75: NewIfNullPr clsboleto
  loc_D57C78: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57C7D: FLdPr var_578
  loc_D57C80:  = Me.Fields
  loc_D57C85: FLdPr var_57C
  loc_D57C88: from_stack_2 = Me.Item(from_stack_1)
  loc_D57C8D: FLdZeroAd var_590
  loc_D57C90: CVarAd
  loc_D57C94: LitVarI2 var_918, 0
  loc_D57C99: FLdRfVar var_8BC
  loc_D57C9C: LitVarStr var_718, vbNullString
  loc_D57CA1: HardType
  loc_D57CA2: EqVar var_8E8
  loc_D57CA6: FStVar var_908
  loc_D57CAA: FLdRfVar var_908
  loc_D57CAD: FLdRfVar var_954
  loc_D57CB0: ImpAdCallFPR4  = IIf(, , )
  loc_D57CB5: FLdRfVar var_9D0
  loc_D57CB8: FLdRfVar var_5DC
  loc_D57CBB: LitVarStr var_788, "dig_veri"
  loc_D57CC0: PopAdLdVar
  loc_D57CC1: FLdRfVar var_5C8
  loc_D57CC4: FLdRfVar var_5C4
  loc_D57CC7: FLdPr Me
  loc_D57CCA: MemLdRfVar from_stack_1.global_88
  loc_D57CCD: NewIfNullPr clsboleto
  loc_D57CD0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57CD5: FLdPr var_5C4
  loc_D57CD8:  = Me.Fields
  loc_D57CDD: FLdPr var_5C8
  loc_D57CE0: from_stack_2 = Me.Item(from_stack_1)
  loc_D57CE5: FLdPr var_5DC
  loc_D57CE8:  = Me.Value
  loc_D57CED: FLdR8 var_1AC
  loc_D57CF0: LitStr vbNullString
  loc_D57CF3: FLdR8 var_CC
  loc_D57CF6: FLdR8 var_104
  loc_D57CF9: LitI2_Byte 1
  loc_D57CFB: CUI1I2
  loc_D57CFD: FLdRfVar var_9D0
  loc_D57D00: CStrVarTmp
  loc_D57D01: FStStrNoPop var_30C
  loc_D57D04: FLdRfVar var_954
  loc_D57D07: CI2Var
  loc_D57D08: FLdRfVar var_89C
  loc_D57D0B: CI4Var
  loc_D57D0D: FLdRfVar var_7E4
  loc_D57D10: CI2Var
  loc_D57D11: FLdRfVar var_72C
  loc_D57D14: CI2Var
  loc_D57D15: FLdRfVar var_674
  loc_D57D18: CI2Var
  loc_D57D19: FLdRfVar var_5A0
  loc_D57D1C: CI2Var
  loc_D57D1D: FLdR8 var_198
  loc_D57D20: FLdI2 var_1A2
  loc_D57D23: FLdR8 var_190
  loc_D57D26: FLdR8 var_A4
  loc_D57D29: FLdR8 var_AC
  loc_D57D2C: FLdR8 var_180
  loc_D57D2F: FLdR8 var_178
  loc_D57D32: FLdFPR8 var_DC
  loc_D57D35: CI2R8
  loc_D57D36: FLdR8 var_188
  loc_D57D39: FLdRfVar var_9C0
  loc_D57D3C: CR4Var
  loc_D57D3D: PopFPR8
  loc_D57D3E: FLdRfVar var_498
  loc_D57D41: CI2Var
  loc_D57D42: LitI2_Byte 0
  loc_D57D44: FLdRfVar var_1B0
  loc_D57D47: LitI2_Byte 0
  loc_D57D49: CStrUI1
  loc_D57D4B: FStStrNoPop var_308
  loc_D57D4E: LitI4 9
  loc_D57D53: ILdRf var_1B0
  loc_D57D56: Ary1LdRfVar
  loc_D57D58: CStrVarVal var_304
  loc_D57D5C: LitI2_Byte 0
  loc_D57D5E: LitStr vbNullString
  loc_D57D61: LitI4 6
  loc_D57D66: ILdRf var_1B0
  loc_D57D69: Ary1LdRfVar
  loc_D57D6B: CStrVarVal var_300
  loc_D57D6F: LitI4 5
  loc_D57D74: ILdRf var_1B0
  loc_D57D77: Ary1LdRfVar
  loc_D57D79: CStrVarVal var_2FC
  loc_D57D7D: LitI4 4
  loc_D57D82: ILdRf var_1B0
  loc_D57D85: Ary1LdRfVar
  loc_D57D87: CStrVarVal var_2F8
  loc_D57D8B: LitI4 3
  loc_D57D90: ILdRf var_1B0
  loc_D57D93: Ary1LdRfVar
  loc_D57D95: CI2Var
  loc_D57D96: LitI4 2
  loc_D57D9B: ILdRf var_1B0
  loc_D57D9E: Ary1LdRfVar
  loc_D57DA0: CI4Var
  loc_D57DA2: LitI4 1
  loc_D57DA7: ILdRf var_1B0
  loc_D57DAA: Ary1LdRfVar
  loc_D57DAC: CStrVarVal var_2F4
  loc_D57DB0: LitI4 0
  loc_D57DB5: ILdRf var_1B0
  loc_D57DB8: Ary1LdRfVar
  loc_D57DBA: CI4Var
  loc_D57DBC: FLdRfVar var_9A0
  loc_D57DBF: CStrVarTmp
  loc_D57DC0: FStStrNoPop var_2D4
  loc_D57DC3: FLdZeroAd var_310
  loc_D57DC6: FStStrNoPop var_2D0
  loc_D57DC9: FLdR8 var_9C
  loc_D57DCC: LitI2_Byte 0
  loc_D57DCE: CR8I2
  loc_D57DCF: PopFPR8
  loc_D57DD0: LitI2_Byte 0
  loc_D57DD2: CR8I2
  loc_D57DD3: PopFPR8
  loc_D57DD4: LitI2_Byte 0
  loc_D57DD6: CR8I2
  loc_D57DD7: PopFPR8
  loc_D57DD8: LitI2_Byte 0
  loc_D57DDA: CR8I2
  loc_D57DDB: PopFPR8
  loc_D57DDC: FLdR8 var_9C
  loc_D57DDF: LitI2_Byte 0
  loc_D57DE1: CR8I2
  loc_D57DE2: PopFPR8
  loc_D57DE3: LitI2_Byte 0
  loc_D57DE5: CR8I2
  loc_D57DE6: PopFPR8
  loc_D57DE7: ILdRf var_154
  loc_D57DEA: LitStr "Aforo"
  loc_D57DED: LitI2_Byte 1
  loc_D57DEF: CUI1I2
  loc_D57DF1: ILdRf var_E4
  loc_D57DF4: FLdRfVar var_974
  loc_D57DF7: CI4Var
  loc_D57DF9: FLdI2 var_8A
  loc_D57DFC: CUI1I2
  loc_D57DFE: ILdRf var_1C4
  loc_D57E01: CUI1Str
  loc_D57E03: FLdPr Me
  loc_D57E06: MemLdUI1 global_100
  loc_D57E0A: ILdRf var_1BC
  loc_D57E0D: CI2Str
  loc_D57E0F: FLdPr Me
  loc_D57E12: MemLdRfVar from_stack_1.global_76
  loc_D57E15: NewIfNullPr clsliqutasa
  loc_D57E18: Call clsliqutasa.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_D57E1D: FFreeStr var_2CC = "": var_1BC = "": var_1C4 = "": var_2D0 = "": var_2D4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = ""
  loc_D57E3A: FFreeAd var_44C = "": var_450 = "": var_454 = "": var_49C = "": var_4A0 = "": var_4B4 = "": var_4B8 = "": var_4BC = "": var_524 = "": var_528 = "": var_53C = "": var_540 = "": var_544 = "": var_55C = "": var_560 = "": var_574 = "": var_578 = "": var_57C = "": var_5C4 = "": var_5C8 = "": var_320 = "": var_344 = "": var_3B0 = "": var_5DC = "": var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_33C = "": var_340 = "": var_348 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A8 = "": var_3AC = "": var_3B4 = "": var_3B8 = "": var_3BC = "": var_3E0 = "": var_3E4 = "": var_3FC = "": var_400 = "": var_414 = "": var_418 = "": var_41C = "": var_434 = ""
  loc_D57EA9: FFreeVar var_908 = "": var_918 = "": var_928 = "": var_974 = "": var_9A0 = "": var_498 = "": var_9C0 = "": var_5A0 = "": var_674 = "": var_72C = "": var_7E4 = "": var_89C = "": var_954 = "": var_9D0 = "": var_1D4 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_358 = "": var_378 = "": var_388 = "": var_478 = "": var_4E0 = "": var_500 = "": var_510 = "": var_520 = "": var_5C0 = "": var_60C = "": var_61C = "": var_62C = "": var_694 = "": var_6E0 = "": var_6F0 = "": var_700 = "": var_74C = "": var_798 = "": var_7A8 = "": var_7B8 = "": var_804 = "": var_850 = "": var_860 = "": var_870 = ""
  loc_D57F04: FLdRfVar var_1BC
  loc_D57F07: FLdPr Me
  loc_D57F0A: VCallAd Control_ID_PeriLiquTxt
  loc_D57F0D: FStAdFunc var_1B8
  loc_D57F10: FLdPr var_1B8
  loc_D57F13:  = Me.Text
  loc_D57F18: FLdRfVar var_1C4
  loc_D57F1B: FLdPr Me
  loc_D57F1E: VCallAd Control_ID_CodiTiliTxt
  loc_D57F21: FStAdFunc var_1C0
  loc_D57F24: FLdPr var_1C0
  loc_D57F27:  = Me.Text
  loc_D57F2C: FLdRfVar var_1D4
  loc_D57F2F: FLdRfVar var_320
  loc_D57F32: LitVarStr var_1E8, "nro_padron"
  loc_D57F37: PopAdLdVar
  loc_D57F38: FLdRfVar var_2E8
  loc_D57F3B: FLdRfVar var_2E4
  loc_D57F3E: FLdPr Me
  loc_D57F41: MemLdRfVar from_stack_1.global_88
  loc_D57F44: NewIfNullPr clsboleto
  loc_D57F47: from_stack_1v = clsboleto.RsFrmGet()
  loc_D57F4C: FLdPr var_2E4
  loc_D57F4F:  = Me.Fields
  loc_D57F54: FLdPr var_2E8
  loc_D57F57: from_stack_2 = Me.Item(from_stack_1)
  loc_D57F5C: FLdPr var_320
  loc_D57F5F:  = Me.Value
  loc_D57F64: FLdRfVar var_1D4
  loc_D57F67: CStrVarTmp
  loc_D57F68: FStStrNoPop var_2CC
  loc_D57F6B: LitI2_Byte 1
  loc_D57F6D: CUI1I2
  loc_D57F6F: FLdI2 var_8A
  loc_D57F72: ILdRf var_1C4
  loc_D57F75: CUI1Str
  loc_D57F77: FLdPr Me
  loc_D57F7A: MemLdUI1 global_100
  loc_D57F7E: ILdRf var_1BC
  loc_D57F81: CI2Str
  loc_D57F83: FLdPr Me
  loc_D57F86: MemLdRfVar from_stack_1.global_84
  loc_D57F89: NewIfNullPr clsrecabole
  loc_D57F8C: Call clsrecabole.ModificaRecabole(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_D57F91: FFreeStr var_1BC = "": var_1C4 = ""
  loc_D57F9A: FFreeAd var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = ""
  loc_D57FA7: FFree1Var var_1D4 = ""
  loc_D57FAA: LitI2_Byte 0
  loc_D57FAC: CR8I2
  loc_D57FAD: FStFPR8 var_9C
  loc_D57FB0: FLdPr Me
  loc_D57FB3: MemLdRfVar from_stack_1.global_100
  loc_D57FB6: NextUI1
  loc_D57FBC: FLdRfVar var_1B2
  loc_D57FBF: FLdPr Me
  loc_D57FC2: VCallAd Control_ID_CompletaOpt
  loc_D57FC5: FStAdFunc var_1B8
  loc_D57FC8: FLdPr var_1B8
  loc_D57FCB:  = Me.Value
  loc_D57FD0: FLdI2 var_1B2
  loc_D57FD3: LitI2_Byte &HFF
  loc_D57FD5: EqI2
  loc_D57FD6: FLdRfVar var_1BC
  loc_D57FD9: FLdPr Me
  loc_D57FDC: VCallAd Control_ID_BimeLiquTxt
  loc_D57FDF: FStAdFunc var_1C0
  loc_D57FE2: FLdPr var_1C0
  loc_D57FE5:  = Me.Text
  loc_D57FEA: ILdRf var_1BC
  loc_D57FED: CR8Str
  loc_D57FEF: LitI2_Byte 1
  loc_D57FF1: CR8I2
  loc_D57FF2: EqR4
  loc_D57FF3: AndI4
  loc_D57FF4: FFree1Str var_1BC
  loc_D57FF7: FFreeAd var_1B8 = ""
  loc_D57FFE: BranchF loc_D593D4
  loc_D58001: FLdRfVar var_2D8
  loc_D58004: FLdPr Me
  loc_D58007: MemLdRfVar from_stack_1.global_56
  loc_D5800A: NewIfNullPr clsboleto
  loc_D5800D: from_stack_1 = clsboleto.RecordCount
  loc_D58012: ILdRf var_2D8
  loc_D58015: LitI4 0
  loc_D5801A: GtI4
  loc_D5801B: BranchF loc_D58C12
  loc_D5801E: FLdRfVar var_1BC
  loc_D58021: FLdPr Me
  loc_D58024: VCallAd Control_ID_PeriLiquTxt
  loc_D58027: FStAdFunc var_1B8
  loc_D5802A: FLdPr var_1B8
  loc_D5802D:  = Me.Text
  loc_D58032: FLdRfVar var_1C4
  loc_D58035: FLdPr Me
  loc_D58038: VCallAd Control_ID_CodiTiliTxt
  loc_D5803B: FStAdFunc var_1C0
  loc_D5803E: FLdPr var_1C0
  loc_D58041:  = Me.Text
  loc_D58046: FLdRfVar var_B0C
  loc_D58049: FLdRfVar var_320
  loc_D5804C: LitVarStr var_1E8, "nro_padron"
  loc_D58051: PopAdLdVar
  loc_D58052: FLdRfVar var_2E8
  loc_D58055: FLdRfVar var_2E4
  loc_D58058: FLdPr Me
  loc_D5805B: MemLdRfVar from_stack_1.global_88
  loc_D5805E: NewIfNullPr clsboleto
  loc_D58061: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58066: FLdPr var_2E4
  loc_D58069:  = Me.Fields
  loc_D5806E: FLdPr var_2E8
  loc_D58071: from_stack_2 = Me.Item(from_stack_1)
  loc_D58076: FLdPr var_320
  loc_D58079:  = Me.Value
  loc_D5807E: FLdPr Me
  loc_D58081: VCallAd Control_ID_FeanVencMsk
  loc_D58084: FStAdFunc var_324
  loc_D58087: FLdPr var_324
  loc_D5808A: LateIdLdVar var_1D4 DispID_15 0
  loc_D58091: PopAd
  loc_D58093: FLdRfVar var_268
  loc_D58096: FLdRfVar var_330
  loc_D58099: LitVarStr var_1F8, "CucuPers"
  loc_D5809E: PopAdLdVar
  loc_D5809F: FLdRfVar var_32C
  loc_D580A2: FLdRfVar var_328
  loc_D580A5: FLdPr Me
  loc_D580A8: MemLdRfVar from_stack_1.global_88
  loc_D580AB: NewIfNullPr clsboleto
  loc_D580AE: from_stack_1v = clsboleto.RsFrmGet()
  loc_D580B3: FLdPr var_328
  loc_D580B6:  = Me.Fields
  loc_D580BB: FLdPr var_32C
  loc_D580BE: from_stack_2 = Me.Item(from_stack_1)
  loc_D580C3: FLdPr var_330
  loc_D580C6:  = Me.Value
  loc_D580CB: FLdRfVar var_33C
  loc_D580CE: LitVarStr var_218, "CucuPers"
  loc_D580D3: PopAdLdVar
  loc_D580D4: FLdRfVar var_338
  loc_D580D7: FLdRfVar var_334
  loc_D580DA: FLdPr Me
  loc_D580DD: MemLdRfVar from_stack_1.global_88
  loc_D580E0: NewIfNullPr clsboleto
  loc_D580E3: from_stack_1v = clsboleto.RsFrmGet()
  loc_D580E8: FLdPr var_334
  loc_D580EB:  = Me.Fields
  loc_D580F0: FLdPr var_338
  loc_D580F3: from_stack_2 = Me.Item(from_stack_1)
  loc_D580F8: FLdZeroAd var_33C
  loc_D580FB: CVarAd
  loc_D580FF: LitVarI2 var_2A8, 0
  loc_D58104: FLdRfVar var_268
  loc_D58107: LitVarStr var_208, vbNullString
  loc_D5810C: HardType
  loc_D5810D: EqVar var_288
  loc_D58111: FStVar var_298
  loc_D58115: FLdRfVar var_298
  loc_D58118: FLdRfVar var_358
  loc_D5811B: ImpAdCallFPR4  = IIf(, , )
  loc_D58120: LitI4 0
  loc_D58125: LitI4 -1
  loc_D5812A: LitI4 1
  loc_D5812F: LitStr vbNullString
  loc_D58132: LitStr "-"
  loc_D58135: FLdRfVar var_358
  loc_D58138: CStrVarVal var_2CC
  loc_D5813C: ImpAdCallI2 Replace(, , , , , )
  loc_D58141: FStStr var_BF8
  loc_D58144: FLdRfVar var_B1C
  loc_D58147: FLdRfVar var_348
  loc_D5814A: LitVarStr var_238, "denominacion"
  loc_D5814F: PopAdLdVar
  loc_D58150: FLdRfVar var_344
  loc_D58153: FLdRfVar var_340
  loc_D58156: FLdPr Me
  loc_D58159: MemLdRfVar from_stack_1.global_88
  loc_D5815C: NewIfNullPr clsboleto
  loc_D5815F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58164: FLdPr var_340
  loc_D58167:  = Me.Fields
  loc_D5816C: FLdPr var_344
  loc_D5816F: from_stack_2 = Me.Item(from_stack_1)
  loc_D58174: FLdPr var_348
  loc_D58177:  = Me.Value
  loc_D5817C: FLdRfVar var_B2C
  loc_D5817F: FLdRfVar var_39C
  loc_D58182: LitVarStr var_248, "CodiCalle"
  loc_D58187: PopAdLdVar
  loc_D58188: FLdRfVar var_398
  loc_D5818B: FLdRfVar var_394
  loc_D5818E: FLdPr Me
  loc_D58191: MemLdRfVar from_stack_1.global_56
  loc_D58194: NewIfNullPr clsboleto
  loc_D58197: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5819C: FLdPr var_394
  loc_D5819F:  = Me.Fields
  loc_D581A4: FLdPr var_398
  loc_D581A7: from_stack_2 = Me.Item(from_stack_1)
  loc_D581AC: FLdPr var_39C
  loc_D581AF:  = Me.Value
  loc_D581B4: FLdRfVar var_B3C
  loc_D581B7: FLdRfVar var_3A8
  loc_D581BA: LitVarStr var_258, "DecaPost"
  loc_D581BF: PopAdLdVar
  loc_D581C0: FLdRfVar var_3A4
  loc_D581C3: FLdRfVar var_3A0
  loc_D581C6: FLdPr Me
  loc_D581C9: MemLdRfVar from_stack_1.global_56
  loc_D581CC: NewIfNullPr clsboleto
  loc_D581CF: from_stack_1v = clsboleto.RsFrmGet()
  loc_D581D4: FLdPr var_3A0
  loc_D581D7:  = Me.Fields
  loc_D581DC: FLdPr var_3A4
  loc_D581DF: from_stack_2 = Me.Item(from_stack_1)
  loc_D581E4: FLdPr var_3A8
  loc_D581E7:  = Me.Value
  loc_D581EC: FLdRfVar var_3B4
  loc_D581EF: LitVarStr var_278, "NumePost"
  loc_D581F4: PopAdLdVar
  loc_D581F5: FLdRfVar var_3B0
  loc_D581F8: FLdRfVar var_3AC
  loc_D581FB: FLdPr Me
  loc_D581FE: MemLdRfVar from_stack_1.global_56
  loc_D58201: NewIfNullPr clsboleto
  loc_D58204: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58209: FLdPr var_3AC
  loc_D5820C:  = Me.Fields
  loc_D58211: FLdPr var_3B0
  loc_D58214: from_stack_2 = Me.Item(from_stack_1)
  loc_D58219: FLdZeroAd var_3B4
  loc_D5821C: CVarAd
  loc_D58220: ImpAdCallI2 IsNumeric()
  loc_D58225: FStI2 var_1B2
  loc_D58228: FLdRfVar var_3E0
  loc_D5822B: LitVarStr var_2B8, "NumePost"
  loc_D58230: PopAdLdVar
  loc_D58231: FLdRfVar var_3BC
  loc_D58234: FLdRfVar var_3B8
  loc_D58237: FLdPr Me
  loc_D5823A: MemLdRfVar from_stack_1.global_56
  loc_D5823D: NewIfNullPr clsboleto
  loc_D58240: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58245: FLdPr var_3B8
  loc_D58248:  = Me.Fields
  loc_D5824D: FLdPr var_3BC
  loc_D58250: from_stack_2 = Me.Item(from_stack_1)
  loc_D58255: LitVarI2 var_388, 0
  loc_D5825A: FLdZeroAd var_3E0
  loc_D5825D: CVarAd
  loc_D58261: FLdI2 var_1B2
  loc_D58264: CVarBoolI2 var_3CC
  loc_D58268: FLdRfVar var_478
  loc_D5826B: ImpAdCallFPR4  = IIf(, , )
  loc_D58270: FLdRfVar var_B4C
  loc_D58273: FLdRfVar var_3FC
  loc_D58276: LitVarStr var_3F4, "CobpPost"
  loc_D5827B: PopAdLdVar
  loc_D5827C: FLdRfVar var_3F8
  loc_D5827F: FLdRfVar var_3E4
  loc_D58282: FLdPr Me
  loc_D58285: MemLdRfVar from_stack_1.global_56
  loc_D58288: NewIfNullPr clsboleto
  loc_D5828B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58290: FLdPr var_3E4
  loc_D58293:  = Me.Fields
  loc_D58298: FLdPr var_3F8
  loc_D5829B: from_stack_2 = Me.Item(from_stack_1)
  loc_D582A0: FLdPr var_3FC
  loc_D582A3:  = Me.Value
  loc_D582A8: FLdRfVar var_B5C
  loc_D582AB: FLdRfVar var_418
  loc_D582AE: LitVarStr var_410, "DebaPost"
  loc_D582B3: PopAdLdVar
  loc_D582B4: FLdRfVar var_414
  loc_D582B7: FLdRfVar var_400
  loc_D582BA: FLdPr Me
  loc_D582BD: MemLdRfVar from_stack_1.global_56
  loc_D582C0: NewIfNullPr clsboleto
  loc_D582C3: from_stack_1v = clsboleto.RsFrmGet()
  loc_D582C8: FLdPr var_400
  loc_D582CB:  = Me.Fields
  loc_D582D0: FLdPr var_414
  loc_D582D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D582D8: FLdPr var_418
  loc_D582DB:  = Me.Value
  loc_D582E0: FLdRfVar var_B6C
  loc_D582E3: FLdRfVar var_434
  loc_D582E6: LitVarStr var_42C, "ManzPost"
  loc_D582EB: PopAdLdVar
  loc_D582EC: FLdRfVar var_430
  loc_D582EF: FLdRfVar var_41C
  loc_D582F2: FLdPr Me
  loc_D582F5: MemLdRfVar from_stack_1.global_56
  loc_D582F8: NewIfNullPr clsboleto
  loc_D582FB: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58300: FLdPr var_41C
  loc_D58303:  = Me.Fields
  loc_D58308: FLdPr var_430
  loc_D5830B: from_stack_2 = Me.Item(from_stack_1)
  loc_D58310: FLdPr var_434
  loc_D58313:  = Me.Value
  loc_D58318: FLdRfVar var_B7C
  loc_D5831B: FLdRfVar var_450
  loc_D5831E: LitVarStr var_448, "CasaPost"
  loc_D58323: PopAdLdVar
  loc_D58324: FLdRfVar var_44C
  loc_D58327: FLdRfVar var_438
  loc_D5832A: FLdPr Me
  loc_D5832D: MemLdRfVar from_stack_1.global_56
  loc_D58330: NewIfNullPr clsboleto
  loc_D58333: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58338: FLdPr var_438
  loc_D5833B:  = Me.Fields
  loc_D58340: FLdPr var_44C
  loc_D58343: from_stack_2 = Me.Item(from_stack_1)
  loc_D58348: FLdPr var_450
  loc_D5834B:  = Me.Value
  loc_D58350: FLdRfVar var_498
  loc_D58353: FLdRfVar var_49C
  loc_D58356: LitVarStr var_464, "UbicPost"
  loc_D5835B: PopAdLdVar
  loc_D5835C: FLdRfVar var_468
  loc_D5835F: FLdRfVar var_454
  loc_D58362: FLdPr Me
  loc_D58365: MemLdRfVar from_stack_1.global_56
  loc_D58368: NewIfNullPr clsboleto
  loc_D5836B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58370: FLdPr var_454
  loc_D58373:  = Me.Fields
  loc_D58378: FLdPr var_468
  loc_D5837B: from_stack_2 = Me.Item(from_stack_1)
  loc_D58380: FLdPr var_49C
  loc_D58383:  = Me.Value
  loc_D58388: FLdRfVar var_4B8
  loc_D5838B: LitVarStr var_4B0, "UbicPost"
  loc_D58390: PopAdLdVar
  loc_D58391: FLdRfVar var_4B4
  loc_D58394: FLdRfVar var_4A0
  loc_D58397: FLdPr Me
  loc_D5839A: MemLdRfVar from_stack_1.global_56
  loc_D5839D: NewIfNullPr clsboleto
  loc_D583A0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D583A5: FLdPr var_4A0
  loc_D583A8:  = Me.Fields
  loc_D583AD: FLdPr var_4B4
  loc_D583B0: from_stack_2 = Me.Item(from_stack_1)
  loc_D583B5: FLdRfVar var_4F0
  loc_D583B8: FLdRfVar var_524
  loc_D583BB: LitVarStr var_4CC, "Ubicacion"
  loc_D583C0: PopAdLdVar
  loc_D583C1: FLdRfVar var_4D0
  loc_D583C4: FLdRfVar var_4BC
  loc_D583C7: FLdPr Me
  loc_D583CA: MemLdRfVar from_stack_1.global_56
  loc_D583CD: NewIfNullPr clsboleto
  loc_D583D0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D583D5: FLdPr var_4BC
  loc_D583D8:  = Me.Fields
  loc_D583DD: FLdPr var_4D0
  loc_D583E0: from_stack_2 = Me.Item(from_stack_1)
  loc_D583E5: FLdPr var_524
  loc_D583E8:  = Me.Value
  loc_D583ED: LitI4 0
  loc_D583F2: LitI4 -1
  loc_D583F7: LitI4 1
  loc_D583FC: LitStr " "
  loc_D583FF: LitStr "'"
  loc_D58402: FLdRfVar var_4F0
  loc_D58405: CStrVarTmp
  loc_D58406: FStStrNoPop var_2D0
  loc_D58409: ImpAdCallI2 Replace(, , , , , )
  loc_D5840E: CVarStr var_520
  loc_D58411: FLdZeroAd var_4B8
  loc_D58414: CVarAd
  loc_D58418: FLdRfVar var_498
  loc_D5841B: LitVarStr var_488, vbNullString
  loc_D58420: HardType
  loc_D58421: NeVar var_4E0
  loc_D58425: FStVar var_500
  loc_D58429: FLdRfVar var_500
  loc_D5842C: FLdRfVar var_5A0
  loc_D5842F: ImpAdCallFPR4  = IIf(, , )
  loc_D58434: FLdRfVar var_B8C
  loc_D58437: FLdRfVar var_540
  loc_D5843A: LitVarStr var_538, "ColpPost"
  loc_D5843F: PopAdLdVar
  loc_D58440: FLdRfVar var_53C
  loc_D58443: FLdRfVar var_528
  loc_D58446: FLdPr Me
  loc_D58449: MemLdRfVar from_stack_1.global_56
  loc_D5844C: NewIfNullPr clsboleto
  loc_D5844F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58454: FLdPr var_528
  loc_D58457:  = Me.Fields
  loc_D5845C: FLdPr var_53C
  loc_D5845F: from_stack_2 = Me.Item(from_stack_1)
  loc_D58464: FLdPr var_540
  loc_D58467:  = Me.Value
  loc_D5846C: FLdRfVar var_B9C
  loc_D5846F: FLdRfVar var_55C
  loc_D58472: LitVarStr var_554, "DeloPost"
  loc_D58477: PopAdLdVar
  loc_D58478: FLdRfVar var_558
  loc_D5847B: FLdRfVar var_544
  loc_D5847E: FLdPr Me
  loc_D58481: MemLdRfVar from_stack_1.global_56
  loc_D58484: NewIfNullPr clsboleto
  loc_D58487: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5848C: FLdPr var_544
  loc_D5848F:  = Me.Fields
  loc_D58494: FLdPr var_558
  loc_D58497: from_stack_2 = Me.Item(from_stack_1)
  loc_D5849C: FLdPr var_55C
  loc_D5849F:  = Me.Value
  loc_D584A4: FLdRfVar var_BAC
  loc_D584A7: FLdRfVar var_578
  loc_D584AA: LitVarStr var_570, "CopoPost"
  loc_D584AF: PopAdLdVar
  loc_D584B0: FLdRfVar var_574
  loc_D584B3: FLdRfVar var_560
  loc_D584B6: FLdPr Me
  loc_D584B9: MemLdRfVar from_stack_1.global_56
  loc_D584BC: NewIfNullPr clsboleto
  loc_D584BF: from_stack_1v = clsboleto.RsFrmGet()
  loc_D584C4: FLdPr var_560
  loc_D584C7:  = Me.Fields
  loc_D584CC: FLdPr var_574
  loc_D584CF: from_stack_2 = Me.Item(from_stack_1)
  loc_D584D4: FLdPr var_578
  loc_D584D7:  = Me.Value
  loc_D584DC: FLdRfVar var_5C0
  loc_D584DF: FLdRfVar var_5C4
  loc_D584E2: LitVarStr var_58C, "parcela_ryb_cod"
  loc_D584E7: PopAdLdVar
  loc_D584E8: FLdRfVar var_590
  loc_D584EB: FLdRfVar var_57C
  loc_D584EE: FLdPr Me
  loc_D584F1: MemLdRfVar from_stack_1.global_88
  loc_D584F4: NewIfNullPr clsboleto
  loc_D584F7: from_stack_1v = clsboleto.RsFrmGet()
  loc_D584FC: FLdPr var_57C
  loc_D584FF:  = Me.Fields
  loc_D58504: FLdPr var_590
  loc_D58507: from_stack_2 = Me.Item(from_stack_1)
  loc_D5850C: FLdPr var_5C4
  loc_D5850F:  = Me.Value
  loc_D58514: FLdRfVar var_630
  loc_D58517: LitVarStr var_5D8, "parcela_ryb_cod"
  loc_D5851C: PopAdLdVar
  loc_D5851D: FLdRfVar var_5DC
  loc_D58520: FLdRfVar var_5C8
  loc_D58523: FLdPr Me
  loc_D58526: MemLdRfVar from_stack_1.global_88
  loc_D58529: NewIfNullPr clsboleto
  loc_D5852C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58531: FLdPr var_5C8
  loc_D58534:  = Me.Fields
  loc_D58539: FLdPr var_5DC
  loc_D5853C: from_stack_2 = Me.Item(from_stack_1)
  loc_D58541: FLdZeroAd var_630
  loc_D58544: CVarAd
  loc_D58548: LitVarI2 var_61C, 0
  loc_D5854D: FLdRfVar var_5C0
  loc_D58550: LitVarStr var_5B0, vbNullString
  loc_D58555: HardType
  loc_D58556: EqVar var_5EC
  loc_D5855A: FStVar var_60C
  loc_D5855E: FLdRfVar var_60C
  loc_D58561: FLdRfVar var_674
  loc_D58564: ImpAdCallFPR4  = IIf(, , )
  loc_D58569: FLdRfVar var_BBC
  loc_D5856C: FLdRfVar var_64C
  loc_D5856F: LitVarStr var_644, "parcela_avaluo"
  loc_D58574: PopAdLdVar
  loc_D58575: FLdRfVar var_648
  loc_D58578: FLdRfVar var_634
  loc_D5857B: FLdPr Me
  loc_D5857E: MemLdRfVar from_stack_1.global_88
  loc_D58581: NewIfNullPr clsboleto
  loc_D58584: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58589: FLdPr var_634
  loc_D5858C:  = Me.Fields
  loc_D58591: FLdPr var_648
  loc_D58594: from_stack_2 = Me.Item(from_stack_1)
  loc_D58599: FLdPr var_64C
  loc_D5859C:  = Me.Value
  loc_D585A1: FLdRfVar var_694
  loc_D585A4: FLdRfVar var_698
  loc_D585A7: LitVarStr var_660, "Dependencia"
  loc_D585AC: PopAdLdVar
  loc_D585AD: FLdRfVar var_664
  loc_D585B0: FLdRfVar var_650
  loc_D585B3: FLdPr Me
  loc_D585B6: MemLdRfVar from_stack_1.global_88
  loc_D585B9: NewIfNullPr clsboleto
  loc_D585BC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D585C1: FLdPr var_650
  loc_D585C4:  = Me.Fields
  loc_D585C9: FLdPr var_664
  loc_D585CC: from_stack_2 = Me.Item(from_stack_1)
  loc_D585D1: FLdPr var_698
  loc_D585D4:  = Me.Value
  loc_D585D9: FLdRfVar var_704
  loc_D585DC: LitVarStr var_6AC, "Dependencia"
  loc_D585E1: PopAdLdVar
  loc_D585E2: FLdRfVar var_6B0
  loc_D585E5: FLdRfVar var_69C
  loc_D585E8: FLdPr Me
  loc_D585EB: MemLdRfVar from_stack_1.global_88
  loc_D585EE: NewIfNullPr clsboleto
  loc_D585F1: from_stack_1v = clsboleto.RsFrmGet()
  loc_D585F6: FLdPr var_69C
  loc_D585F9:  = Me.Fields
  loc_D585FE: FLdPr var_6B0
  loc_D58601: from_stack_2 = Me.Item(from_stack_1)
  loc_D58606: FLdZeroAd var_704
  loc_D58609: CVarAd
  loc_D5860D: LitVarI2 var_6F0, 0
  loc_D58612: FLdRfVar var_694
  loc_D58615: LitVarStr var_684, vbNullString
  loc_D5861A: HardType
  loc_D5861B: EqVar var_6C0
  loc_D5861F: FStVar var_6E0
  loc_D58623: FLdRfVar var_6E0
  loc_D58626: FLdRfVar var_72C
  loc_D58629: ImpAdCallFPR4  = IIf(, , )
  loc_D5862E: FLdRfVar var_74C
  loc_D58631: FLdRfVar var_750
  loc_D58634: LitVarStr var_718, "Distrito"
  loc_D58639: PopAdLdVar
  loc_D5863A: FLdRfVar var_71C
  loc_D5863D: FLdRfVar var_708
  loc_D58640: FLdPr Me
  loc_D58643: MemLdRfVar from_stack_1.global_88
  loc_D58646: NewIfNullPr clsboleto
  loc_D58649: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5864E: FLdPr var_708
  loc_D58651:  = Me.Fields
  loc_D58656: FLdPr var_71C
  loc_D58659: from_stack_2 = Me.Item(from_stack_1)
  loc_D5865E: FLdPr var_750
  loc_D58661:  = Me.Value
  loc_D58666: FLdRfVar var_7BC
  loc_D58669: LitVarStr var_764, "Distrito"
  loc_D5866E: PopAdLdVar
  loc_D5866F: FLdRfVar var_768
  loc_D58672: FLdRfVar var_754
  loc_D58675: FLdPr Me
  loc_D58678: MemLdRfVar from_stack_1.global_88
  loc_D5867B: NewIfNullPr clsboleto
  loc_D5867E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58683: FLdPr var_754
  loc_D58686:  = Me.Fields
  loc_D5868B: FLdPr var_768
  loc_D5868E: from_stack_2 = Me.Item(from_stack_1)
  loc_D58693: FLdZeroAd var_7BC
  loc_D58696: CVarAd
  loc_D5869A: LitVarI2 var_7A8, 0
  loc_D5869F: FLdRfVar var_74C
  loc_D586A2: LitVarStr var_73C, vbNullString
  loc_D586A7: HardType
  loc_D586A8: EqVar var_778
  loc_D586AC: FStVar var_798
  loc_D586B0: FLdRfVar var_798
  loc_D586B3: FLdRfVar var_7E4
  loc_D586B6: ImpAdCallFPR4  = IIf(, , )
  loc_D586BB: FLdRfVar var_804
  loc_D586BE: FLdRfVar var_808
  loc_D586C1: LitVarStr var_7D0, "Seccion"
  loc_D586C6: PopAdLdVar
  loc_D586C7: FLdRfVar var_7D4
  loc_D586CA: FLdRfVar var_7C0
  loc_D586CD: FLdPr Me
  loc_D586D0: MemLdRfVar from_stack_1.global_88
  loc_D586D3: NewIfNullPr clsboleto
  loc_D586D6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D586DB: FLdPr var_7C0
  loc_D586DE:  = Me.Fields
  loc_D586E3: FLdPr var_7D4
  loc_D586E6: from_stack_2 = Me.Item(from_stack_1)
  loc_D586EB: FLdPr var_808
  loc_D586EE:  = Me.Value
  loc_D586F3: FLdRfVar var_874
  loc_D586F6: LitVarStr var_81C, "Seccion"
  loc_D586FB: PopAdLdVar
  loc_D586FC: FLdRfVar var_820
  loc_D586FF: FLdRfVar var_80C
  loc_D58702: FLdPr Me
  loc_D58705: MemLdRfVar from_stack_1.global_88
  loc_D58708: NewIfNullPr clsboleto
  loc_D5870B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58710: FLdPr var_80C
  loc_D58713:  = Me.Fields
  loc_D58718: FLdPr var_820
  loc_D5871B: from_stack_2 = Me.Item(from_stack_1)
  loc_D58720: FLdZeroAd var_874
  loc_D58723: CVarAd
  loc_D58727: LitVarI2 var_860, 0
  loc_D5872C: FLdRfVar var_804
  loc_D5872F: LitVarStr var_7F4, vbNullString
  loc_D58734: HardType
  loc_D58735: EqVar var_830
  loc_D58739: FStVar var_850
  loc_D5873D: FLdRfVar var_850
  loc_D58740: FLdRfVar var_89C
  loc_D58743: ImpAdCallFPR4  = IIf(, , )
  loc_D58748: FLdRfVar var_8BC
  loc_D5874B: FLdRfVar var_8C0
  loc_D5874E: LitVarStr var_888, "Manzana"
  loc_D58753: PopAdLdVar
  loc_D58754: FLdRfVar var_88C
  loc_D58757: FLdRfVar var_878
  loc_D5875A: FLdPr Me
  loc_D5875D: MemLdRfVar from_stack_1.global_88
  loc_D58760: NewIfNullPr clsboleto
  loc_D58763: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58768: FLdPr var_878
  loc_D5876B:  = Me.Fields
  loc_D58770: FLdPr var_88C
  loc_D58773: from_stack_2 = Me.Item(from_stack_1)
  loc_D58778: FLdPr var_8C0
  loc_D5877B:  = Me.Value
  loc_D58780: FLdRfVar var_92C
  loc_D58783: LitVarStr var_8D4, "Manzana"
  loc_D58788: PopAdLdVar
  loc_D58789: FLdRfVar var_8D8
  loc_D5878C: FLdRfVar var_8C4
  loc_D5878F: FLdPr Me
  loc_D58792: MemLdRfVar from_stack_1.global_88
  loc_D58795: NewIfNullPr clsboleto
  loc_D58798: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5879D: FLdPr var_8C4
  loc_D587A0:  = Me.Fields
  loc_D587A5: FLdPr var_8D8
  loc_D587A8: from_stack_2 = Me.Item(from_stack_1)
  loc_D587AD: FLdZeroAd var_92C
  loc_D587B0: CVarAd
  loc_D587B4: LitVarI2 var_918, 0
  loc_D587B9: FLdRfVar var_8BC
  loc_D587BC: LitVarStr var_8AC, vbNullString
  loc_D587C1: HardType
  loc_D587C2: EqVar var_8E8
  loc_D587C6: FStVar var_908
  loc_D587CA: FLdRfVar var_908
  loc_D587CD: FLdRfVar var_954
  loc_D587D0: ImpAdCallFPR4  = IIf(, , )
  loc_D587D5: FLdRfVar var_974
  loc_D587D8: FLdRfVar var_978
  loc_D587DB: LitVarStr var_940, "Parcela"
  loc_D587E0: PopAdLdVar
  loc_D587E1: FLdRfVar var_944
  loc_D587E4: FLdRfVar var_930
  loc_D587E7: FLdPr Me
  loc_D587EA: MemLdRfVar from_stack_1.global_88
  loc_D587ED: NewIfNullPr clsboleto
  loc_D587F0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D587F5: FLdPr var_930
  loc_D587F8:  = Me.Fields
  loc_D587FD: FLdPr var_944
  loc_D58800: from_stack_2 = Me.Item(from_stack_1)
  loc_D58805: FLdPr var_978
  loc_D58808:  = Me.Value
  loc_D5880D: FLdRfVar var_9E4
  loc_D58810: LitVarStr var_98C, "Parcela"
  loc_D58815: PopAdLdVar
  loc_D58816: FLdRfVar var_990
  loc_D58819: FLdRfVar var_97C
  loc_D5881C: FLdPr Me
  loc_D5881F: MemLdRfVar from_stack_1.global_88
  loc_D58822: NewIfNullPr clsboleto
  loc_D58825: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5882A: FLdPr var_97C
  loc_D5882D:  = Me.Fields
  loc_D58832: FLdPr var_990
  loc_D58835: from_stack_2 = Me.Item(from_stack_1)
  loc_D5883A: FLdZeroAd var_9E4
  loc_D5883D: CVarAd
  loc_D58841: LitVarI2 var_9D0, 0
  loc_D58846: FLdRfVar var_974
  loc_D58849: LitVarStr var_964, vbNullString
  loc_D5884E: HardType
  loc_D5884F: EqVar var_9A0
  loc_D58853: FStVar var_9C0
  loc_D58857: FLdRfVar var_9C0
  loc_D5885A: FLdRfVar var_A0C
  loc_D5885D: ImpAdCallFPR4  = IIf(, , )
  loc_D58862: FLdRfVar var_A2C
  loc_D58865: FLdRfVar var_A30
  loc_D58868: LitVarStr var_9F8, "Subparcela"
  loc_D5886D: PopAdLdVar
  loc_D5886E: FLdRfVar var_9FC
  loc_D58871: FLdRfVar var_9E8
  loc_D58874: FLdPr Me
  loc_D58877: MemLdRfVar from_stack_1.global_88
  loc_D5887A: NewIfNullPr clsboleto
  loc_D5887D: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58882: FLdPr var_9E8
  loc_D58885:  = Me.Fields
  loc_D5888A: FLdPr var_9FC
  loc_D5888D: from_stack_2 = Me.Item(from_stack_1)
  loc_D58892: FLdPr var_A30
  loc_D58895:  = Me.Value
  loc_D5889A: FLdRfVar var_A9C
  loc_D5889D: LitVarStr var_A44, "Subparcela"
  loc_D588A2: PopAdLdVar
  loc_D588A3: FLdRfVar var_A48
  loc_D588A6: FLdRfVar var_A34
  loc_D588A9: FLdPr Me
  loc_D588AC: MemLdRfVar from_stack_1.global_88
  loc_D588AF: NewIfNullPr clsboleto
  loc_D588B2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D588B7: FLdPr var_A34
  loc_D588BA:  = Me.Fields
  loc_D588BF: FLdPr var_A48
  loc_D588C2: from_stack_2 = Me.Item(from_stack_1)
  loc_D588C7: FLdZeroAd var_A9C
  loc_D588CA: CVarAd
  loc_D588CE: LitVarI2 var_A88, 0
  loc_D588D3: FLdRfVar var_A2C
  loc_D588D6: LitVarStr var_A1C, vbNullString
  loc_D588DB: HardType
  loc_D588DC: EqVar var_A58
  loc_D588E0: FStVar var_A78
  loc_D588E4: FLdRfVar var_A78
  loc_D588E7: FLdRfVar var_AFC
  loc_D588EA: ImpAdCallFPR4  = IIf(, , )
  loc_D588EF: FLdRfVar var_BCC
  loc_D588F2: FLdRfVar var_AB8
  loc_D588F5: LitVarStr var_AB0, "dig_veri"
  loc_D588FA: PopAdLdVar
  loc_D588FB: FLdRfVar var_AB4
  loc_D588FE: FLdRfVar var_AA0
  loc_D58901: FLdPr Me
  loc_D58904: MemLdRfVar from_stack_1.global_88
  loc_D58907: NewIfNullPr clsboleto
  loc_D5890A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5890F: FLdPr var_AA0
  loc_D58912:  = Me.Fields
  loc_D58917: FLdPr var_AB4
  loc_D5891A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5891F: FLdPr var_AB8
  loc_D58922:  = Me.Value
  loc_D58927: FLdRfVar var_BDC
  loc_D5892A: FLdRfVar var_AD4
  loc_D5892D: LitVarStr var_ACC, "Emite"
  loc_D58932: PopAdLdVar
  loc_D58933: FLdRfVar var_AD0
  loc_D58936: FLdRfVar var_ABC
  loc_D58939: FLdPr Me
  loc_D5893C: MemLdRfVar from_stack_1.global_56
  loc_D5893F: NewIfNullPr clsboleto
  loc_D58942: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58947: FLdPr var_ABC
  loc_D5894A:  = Me.Fields
  loc_D5894F: FLdPr var_AD0
  loc_D58952: from_stack_2 = Me.Item(from_stack_1)
  loc_D58957: FLdPr var_AD4
  loc_D5895A:  = Me.Value
  loc_D5895F: FLdRfVar var_BF4
  loc_D58962: FLdRfVar var_BE4
  loc_D58965: LitVarStr var_AE8, "Vinculo"
  loc_D5896A: PopAdLdVar
  loc_D5896B: FLdRfVar var_AEC
  loc_D5896E: FLdRfVar var_AD8
  loc_D58971: FLdPr Me
  loc_D58974: MemLdRfVar from_stack_1.global_56
  loc_D58977: NewIfNullPr clsboleto
  loc_D5897A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5897F: FLdPr var_AD8
  loc_D58982:  = Me.Fields
  loc_D58987: FLdPr var_AEC
  loc_D5898A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5898F: FLdPr var_BE4
  loc_D58992:  = Me.Value
  loc_D58997: FLdR8 var_1AC
  loc_D5899A: FLdRfVar var_BF4
  loc_D5899D: CStrVarTmp
  loc_D5899E: FStStrNoPop var_BE0
  loc_D589A1: FLdR8 var_CC
  loc_D589A4: FLdR8 var_104
  loc_D589A7: FLdRfVar var_BDC
  loc_D589AA: CUI1Var
  loc_D589AC: FLdRfVar var_BCC
  loc_D589AF: CStrVarTmp
  loc_D589B0: FStStrNoPop var_318
  loc_D589B3: FLdRfVar var_AFC
  loc_D589B6: CI2Var
  loc_D589B7: FLdRfVar var_A0C
  loc_D589BA: CI4Var
  loc_D589BC: FLdRfVar var_954
  loc_D589BF: CI2Var
  loc_D589C0: FLdRfVar var_89C
  loc_D589C3: CI2Var
  loc_D589C4: FLdRfVar var_7E4
  loc_D589C7: CI2Var
  loc_D589C8: FLdRfVar var_72C
  loc_D589CB: CI2Var
  loc_D589CC: FLdR8 var_198
  loc_D589CF: FLdI2 var_1A2
  loc_D589D2: FLdR8 var_190
  loc_D589D5: FLdR8 var_A4
  loc_D589D8: FLdR8 var_AC
  loc_D589DB: FLdR8 var_180
  loc_D589DE: FLdR8 var_178
  loc_D589E1: FLdFPR8 var_DC
  loc_D589E4: CI2R8
  loc_D589E5: FLdR8 var_188
  loc_D589E8: FLdRfVar var_BBC
  loc_D589EB: CR4Var
  loc_D589EC: PopFPR8
  loc_D589ED: FLdRfVar var_674
  loc_D589F0: CI2Var
  loc_D589F1: LitI2_Byte &HFF
  loc_D589F3: FLdRfVar var_1B0
  loc_D589F6: FLdRfVar var_BAC
  loc_D589F9: CStrVarTmp
  loc_D589FA: FStStrNoPop var_314
  loc_D589FD: FLdRfVar var_B9C
  loc_D58A00: CStrVarTmp
  loc_D58A01: FStStrNoPop var_310
  loc_D58A04: FLdRfVar var_B8C
  loc_D58A07: CI2Var
  loc_D58A08: FLdRfVar var_5A0
  loc_D58A0B: CStrVarVal var_30C
  loc_D58A0F: FLdRfVar var_B7C
  loc_D58A12: CStrVarTmp
  loc_D58A13: FStStrNoPop var_308
  loc_D58A16: FLdRfVar var_B6C
  loc_D58A19: CStrVarTmp
  loc_D58A1A: FStStrNoPop var_304
  loc_D58A1D: FLdRfVar var_B5C
  loc_D58A20: CStrVarTmp
  loc_D58A21: FStStrNoPop var_300
  loc_D58A24: FLdRfVar var_B4C
  loc_D58A27: CI2Var
  loc_D58A28: FLdRfVar var_478
  loc_D58A2B: CI4Var
  loc_D58A2D: FLdRfVar var_B3C
  loc_D58A30: CStrVarTmp
  loc_D58A31: FStStrNoPop var_2FC
  loc_D58A34: FLdRfVar var_B2C
  loc_D58A37: CI4Var
  loc_D58A39: FLdRfVar var_B1C
  loc_D58A3C: CStrVarTmp
  loc_D58A3D: FStStrNoPop var_2F8
  loc_D58A40: FLdZeroAd var_BF8
  loc_D58A43: FStStrNoPop var_2F4
  loc_D58A46: FLdR8 var_EC
  loc_D58A49: LitI2_Byte 0
  loc_D58A4B: CR8I2
  loc_D58A4C: PopFPR8
  loc_D58A4D: FLdR8 var_AC
  loc_D58A50: FLdR8 var_A4
  loc_D58A53: FLdR8 var_F4
  loc_D58A56: FLdR8 var_94
  loc_D58A59: FLdR8 var_C4
  loc_D58A5C: FLdR8 var_BC
  loc_D58A5F: FLdRfVar var_1D4
  loc_D58A62: CStrVarTmp
  loc_D58A63: FStStrNoPop var_2D4
  loc_D58A66: LitStr "Aforo"
  loc_D58A69: LitI2_Byte 2
  loc_D58A6B: CUI1I2
  loc_D58A6D: ILdRf var_E0
  loc_D58A70: FLdRfVar var_B0C
  loc_D58A73: CI4Var
  loc_D58A75: FLdI2 var_8A
  loc_D58A78: CUI1I2
  loc_D58A7A: ILdRf var_1C4
  loc_D58A7D: CUI1Str
  loc_D58A7F: LitI2_Byte 1
  loc_D58A81: CUI1I2
  loc_D58A83: ILdRf var_1BC
  loc_D58A86: CI2Str
  loc_D58A88: FLdPr Me
  loc_D58A8B: MemLdRfVar from_stack_1.global_76
  loc_D58A8E: NewIfNullPr clsliqutasa
  loc_D58A91: Call clsliqutasa.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_D58A96: FFreeStr var_2CC = "": var_2D0 = "": var_1BC = "": var_1C4 = "": var_2D4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_BE0 = ""
  loc_D58ABB: FFreeAd var_418 = "": var_434 = "": var_450 = "": var_540 = "": var_55C = "": var_578 = "": var_64C = "": var_AB8 = "": var_AD4 = "": var_BE4 = "": var_7D4 = "": var_808 = "": var_80C = "": var_820 = "": var_878 = "": var_88C = "": var_8C0 = "": var_8C4 = "": var_8D8 = "": var_930 = "": var_944 = "": var_978 = "": var_97C = "": var_990 = "": var_9E8 = "": var_9FC = "": var_A30 = "": var_A34 = "": var_A48 = "": var_AA0 = "": var_AB4 = "": var_ABC = "": var_AD0 = "": var_AD8 = "": var_AEC = "": var_320 = "": var_348 = "": var_39C = "": var_3A8 = "": var_3FC = "": var_49C = "": var_4A0 = "": var_4B4 = "": var_4BC = "": var_4D0 = "": var_524 = "": var_528 = "": var_53C = "": var_544 = "": var_558 = "": var_560 = "": var_574 = "": var_57C = "": var_590 = "": var_5C4 = "": var_5C8 = "": var_5DC = "": var_634 = "": var_648 = "": var_650 = "": var_664 = "": var_698 = "": var_69C = "": var_6B0 = "": var_708 = "": var_71C = "": var_750 = "": var_754 = "": var_768 = "": var_7C0 = "": var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = "": var_340 = "": var_344 = "": var_394 = "": var_398 = "": var_3A0 = "": var_3A4 = "": var_3AC = "": var_3B0 = "": var_3B8 = "": var_3BC = "": var_3E4 = "": var_3F8 = "": var_400 = "": var_414 = "": var_41C = "": var_430 = "": var_438 = "": var_44C = "": var_454 = ""
  loc_D58B86: FFreeVar var_89C = "": var_954 = "": var_A0C = "": var_AFC = "": var_BCC = "": var_BDC = "": var_BF4 = "": var_870 = "": var_8BC = "": var_908 = "": var_918 = "": var_928 = "": var_974 = "": var_9C0 = "": var_9D0 = "": var_9E0 = "": var_A2C = "": var_A78 = "": var_A88 = "": var_A98 = "": var_B0C = "": var_B1C = "": var_B2C = "": var_B3C = "": var_478 = "": var_B4C = "": var_B5C = "": var_B6C = "": var_B7C = "": var_5A0 = "": var_B8C = "": var_B9C = "": var_BAC = "": var_674 = "": var_BBC = "": var_72C = "": var_7E4 = "": var_1D4 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_358 = "": var_368 = "": var_3CC = "": var_378 = "": var_388 = "": var_498 = "": var_4F0 = "": var_500 = "": var_510 = "": var_520 = "": var_5C0 = "": var_60C = "": var_61C = "": var_62C = "": var_694 = "": var_6E0 = "": var_6F0 = "": var_700 = "": var_74C = "": var_798 = "": var_7A8 = "": var_7B8 = "": var_804 = "": var_850 = ""
  loc_D58C0F: Branch loc_D593D4
  loc_D58C12: FLdRfVar var_1BC
  loc_D58C15: FLdPr Me
  loc_D58C18: VCallAd Control_ID_PeriLiquTxt
  loc_D58C1B: FStAdFunc var_1B8
  loc_D58C1E: FLdPr var_1B8
  loc_D58C21:  = Me.Text
  loc_D58C26: FLdRfVar var_1C4
  loc_D58C29: FLdPr Me
  loc_D58C2C: VCallAd Control_ID_CodiTiliTxt
  loc_D58C2F: FStAdFunc var_1C0
  loc_D58C32: FLdPr var_1C0
  loc_D58C35:  = Me.Text
  loc_D58C3A: FLdRfVar var_9A0
  loc_D58C3D: FLdRfVar var_320
  loc_D58C40: LitVarStr var_1E8, "nro_padron"
  loc_D58C45: PopAdLdVar
  loc_D58C46: FLdRfVar var_2E8
  loc_D58C49: FLdRfVar var_2E4
  loc_D58C4C: FLdPr Me
  loc_D58C4F: MemLdRfVar from_stack_1.global_88
  loc_D58C52: NewIfNullPr clsboleto
  loc_D58C55: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58C5A: FLdPr var_2E4
  loc_D58C5D:  = Me.Fields
  loc_D58C62: FLdPr var_2E8
  loc_D58C65: from_stack_2 = Me.Item(from_stack_1)
  loc_D58C6A: FLdPr var_320
  loc_D58C6D:  = Me.Value
  loc_D58C72: FLdPr Me
  loc_D58C75: VCallAd Control_ID_FeanVencMsk
  loc_D58C78: FStAdFunc var_324
  loc_D58C7B: FLdPr var_324
  loc_D58C7E: LateIdLdVar var_1D4 DispID_15 0
  loc_D58C85: PopAd
  loc_D58C87: FLdRfVar var_268
  loc_D58C8A: FLdRfVar var_330
  loc_D58C8D: LitVarStr var_1F8, "CucuPers"
  loc_D58C92: PopAdLdVar
  loc_D58C93: FLdRfVar var_32C
  loc_D58C96: FLdRfVar var_328
  loc_D58C99: FLdPr Me
  loc_D58C9C: MemLdRfVar from_stack_1.global_88
  loc_D58C9F: NewIfNullPr clsboleto
  loc_D58CA2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58CA7: FLdPr var_328
  loc_D58CAA:  = Me.Fields
  loc_D58CAF: FLdPr var_32C
  loc_D58CB2: from_stack_2 = Me.Item(from_stack_1)
  loc_D58CB7: FLdPr var_330
  loc_D58CBA:  = Me.Value
  loc_D58CBF: FLdRfVar var_33C
  loc_D58CC2: LitVarStr var_218, "CucuPers"
  loc_D58CC7: PopAdLdVar
  loc_D58CC8: FLdRfVar var_338
  loc_D58CCB: FLdRfVar var_334
  loc_D58CCE: FLdPr Me
  loc_D58CD1: MemLdRfVar from_stack_1.global_88
  loc_D58CD4: NewIfNullPr clsboleto
  loc_D58CD7: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58CDC: FLdPr var_334
  loc_D58CDF:  = Me.Fields
  loc_D58CE4: FLdPr var_338
  loc_D58CE7: from_stack_2 = Me.Item(from_stack_1)
  loc_D58CEC: FLdZeroAd var_33C
  loc_D58CEF: CVarAd
  loc_D58CF3: LitVarI2 var_2A8, 0
  loc_D58CF8: FLdRfVar var_268
  loc_D58CFB: LitVarStr var_208, vbNullString
  loc_D58D00: HardType
  loc_D58D01: EqVar var_288
  loc_D58D05: FStVar var_298
  loc_D58D09: FLdRfVar var_298
  loc_D58D0C: FLdRfVar var_358
  loc_D58D0F: ImpAdCallFPR4  = IIf(, , )
  loc_D58D14: LitI4 0
  loc_D58D19: LitI4 -1
  loc_D58D1E: LitI4 1
  loc_D58D23: LitStr vbNullString
  loc_D58D26: LitStr "-"
  loc_D58D29: FLdRfVar var_358
  loc_D58D2C: CStrVarVal var_2CC
  loc_D58D30: ImpAdCallI2 Replace(, , , , , )
  loc_D58D35: FStStr var_314
  loc_D58D38: FLdRfVar var_9C0
  loc_D58D3B: FLdRfVar var_348
  loc_D58D3E: LitVarStr var_238, "denominacion"
  loc_D58D43: PopAdLdVar
  loc_D58D44: FLdRfVar var_344
  loc_D58D47: FLdRfVar var_340
  loc_D58D4A: FLdPr Me
  loc_D58D4D: MemLdRfVar from_stack_1.global_88
  loc_D58D50: NewIfNullPr clsboleto
  loc_D58D53: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58D58: FLdPr var_340
  loc_D58D5B:  = Me.Fields
  loc_D58D60: FLdPr var_344
  loc_D58D63: from_stack_2 = Me.Item(from_stack_1)
  loc_D58D68: FLdPr var_348
  loc_D58D6B:  = Me.Value
  loc_D58D70: FLdRfVar var_368
  loc_D58D73: FLdRfVar var_39C
  loc_D58D76: LitVarStr var_248, "parcela_ryb_cod"
  loc_D58D7B: PopAdLdVar
  loc_D58D7C: FLdRfVar var_398
  loc_D58D7F: FLdRfVar var_394
  loc_D58D82: FLdPr Me
  loc_D58D85: MemLdRfVar from_stack_1.global_88
  loc_D58D88: NewIfNullPr clsboleto
  loc_D58D8B: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58D90: FLdPr var_394
  loc_D58D93:  = Me.Fields
  loc_D58D98: FLdPr var_398
  loc_D58D9B: from_stack_2 = Me.Item(from_stack_1)
  loc_D58DA0: FLdPr var_39C
  loc_D58DA3:  = Me.Value
  loc_D58DA8: FLdRfVar var_3A8
  loc_D58DAB: LitVarStr var_278, "parcela_ryb_cod"
  loc_D58DB0: PopAdLdVar
  loc_D58DB1: FLdRfVar var_3A4
  loc_D58DB4: FLdRfVar var_3A0
  loc_D58DB7: FLdPr Me
  loc_D58DBA: MemLdRfVar from_stack_1.global_88
  loc_D58DBD: NewIfNullPr clsboleto
  loc_D58DC0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58DC5: FLdPr var_3A0
  loc_D58DC8:  = Me.Fields
  loc_D58DCD: FLdPr var_3A4
  loc_D58DD0: from_stack_2 = Me.Item(from_stack_1)
  loc_D58DD5: FLdZeroAd var_3A8
  loc_D58DD8: CVarAd
  loc_D58DDC: LitVarI2 var_478, 0
  loc_D58DE1: FLdRfVar var_368
  loc_D58DE4: LitVarStr var_258, vbNullString
  loc_D58DE9: HardType
  loc_D58DEA: EqVar var_378
  loc_D58DEE: FStVar var_388
  loc_D58DF2: FLdRfVar var_388
  loc_D58DF5: FLdRfVar var_4E0
  loc_D58DF8: ImpAdCallFPR4  = IIf(, , )
  loc_D58DFD: FLdRfVar var_9D0
  loc_D58E00: FLdRfVar var_3B4
  loc_D58E03: LitVarStr var_3CC, "parcela_avaluo"
  loc_D58E08: PopAdLdVar
  loc_D58E09: FLdRfVar var_3B0
  loc_D58E0C: FLdRfVar var_3AC
  loc_D58E0F: FLdPr Me
  loc_D58E12: MemLdRfVar from_stack_1.global_88
  loc_D58E15: NewIfNullPr clsboleto
  loc_D58E18: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58E1D: FLdPr var_3AC
  loc_D58E20:  = Me.Fields
  loc_D58E25: FLdPr var_3B0
  loc_D58E28: from_stack_2 = Me.Item(from_stack_1)
  loc_D58E2D: FLdPr var_3B4
  loc_D58E30:  = Me.Value
  loc_D58E35: FLdRfVar var_4F0
  loc_D58E38: FLdRfVar var_3E0
  loc_D58E3B: LitVarStr var_3DC, "Dependencia"
  loc_D58E40: PopAdLdVar
  loc_D58E41: FLdRfVar var_3BC
  loc_D58E44: FLdRfVar var_3B8
  loc_D58E47: FLdPr Me
  loc_D58E4A: MemLdRfVar from_stack_1.global_88
  loc_D58E4D: NewIfNullPr clsboleto
  loc_D58E50: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58E55: FLdPr var_3B8
  loc_D58E58:  = Me.Fields
  loc_D58E5D: FLdPr var_3BC
  loc_D58E60: from_stack_2 = Me.Item(from_stack_1)
  loc_D58E65: FLdPr var_3E0
  loc_D58E68:  = Me.Value
  loc_D58E6D: FLdRfVar var_3FC
  loc_D58E70: LitVarStr var_410, "Dependencia"
  loc_D58E75: PopAdLdVar
  loc_D58E76: FLdRfVar var_3F8
  loc_D58E79: FLdRfVar var_3E4
  loc_D58E7C: FLdPr Me
  loc_D58E7F: MemLdRfVar from_stack_1.global_88
  loc_D58E82: NewIfNullPr clsboleto
  loc_D58E85: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58E8A: FLdPr var_3E4
  loc_D58E8D:  = Me.Fields
  loc_D58E92: FLdPr var_3F8
  loc_D58E95: from_stack_2 = Me.Item(from_stack_1)
  loc_D58E9A: FLdZeroAd var_3FC
  loc_D58E9D: CVarAd
  loc_D58EA1: LitVarI2 var_520, 0
  loc_D58EA6: FLdRfVar var_4F0
  loc_D58EA9: LitVarStr var_3F4, vbNullString
  loc_D58EAE: HardType
  loc_D58EAF: EqVar var_500
  loc_D58EB3: FStVar var_510
  loc_D58EB7: FLdRfVar var_510
  loc_D58EBA: FLdRfVar var_5C0
  loc_D58EBD: ImpAdCallFPR4  = IIf(, , )
  loc_D58EC2: FLdRfVar var_5EC
  loc_D58EC5: FLdRfVar var_418
  loc_D58EC8: LitVarStr var_448, "Distrito"
  loc_D58ECD: PopAdLdVar
  loc_D58ECE: FLdRfVar var_414
  loc_D58ED1: FLdRfVar var_400
  loc_D58ED4: FLdPr Me
  loc_D58ED7: MemLdRfVar from_stack_1.global_88
  loc_D58EDA: NewIfNullPr clsboleto
  loc_D58EDD: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58EE2: FLdPr var_400
  loc_D58EE5:  = Me.Fields
  loc_D58EEA: FLdPr var_414
  loc_D58EED: from_stack_2 = Me.Item(from_stack_1)
  loc_D58EF2: FLdPr var_418
  loc_D58EF5:  = Me.Value
  loc_D58EFA: FLdRfVar var_434
  loc_D58EFD: LitVarStr var_488, "Distrito"
  loc_D58F02: PopAdLdVar
  loc_D58F03: FLdRfVar var_430
  loc_D58F06: FLdRfVar var_41C
  loc_D58F09: FLdPr Me
  loc_D58F0C: MemLdRfVar from_stack_1.global_88
  loc_D58F0F: NewIfNullPr clsboleto
  loc_D58F12: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58F17: FLdPr var_41C
  loc_D58F1A:  = Me.Fields
  loc_D58F1F: FLdPr var_430
  loc_D58F22: from_stack_2 = Me.Item(from_stack_1)
  loc_D58F27: FLdZeroAd var_434
  loc_D58F2A: CVarAd
  loc_D58F2E: LitVarI2 var_62C, 0
  loc_D58F33: FLdRfVar var_5EC
  loc_D58F36: LitVarStr var_464, vbNullString
  loc_D58F3B: HardType
  loc_D58F3C: EqVar var_60C
  loc_D58F40: FStVar var_61C
  loc_D58F44: FLdRfVar var_61C
  loc_D58F47: FLdRfVar var_694
  loc_D58F4A: ImpAdCallFPR4  = IIf(, , )
  loc_D58F4F: FLdRfVar var_6C0
  loc_D58F52: FLdRfVar var_450
  loc_D58F55: LitVarStr var_4CC, "Seccion"
  loc_D58F5A: PopAdLdVar
  loc_D58F5B: FLdRfVar var_44C
  loc_D58F5E: FLdRfVar var_438
  loc_D58F61: FLdPr Me
  loc_D58F64: MemLdRfVar from_stack_1.global_88
  loc_D58F67: NewIfNullPr clsboleto
  loc_D58F6A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58F6F: FLdPr var_438
  loc_D58F72:  = Me.Fields
  loc_D58F77: FLdPr var_44C
  loc_D58F7A: from_stack_2 = Me.Item(from_stack_1)
  loc_D58F7F: FLdPr var_450
  loc_D58F82:  = Me.Value
  loc_D58F87: FLdRfVar var_49C
  loc_D58F8A: LitVarStr var_554, "Seccion"
  loc_D58F8F: PopAdLdVar
  loc_D58F90: FLdRfVar var_468
  loc_D58F93: FLdRfVar var_454
  loc_D58F96: FLdPr Me
  loc_D58F99: MemLdRfVar from_stack_1.global_88
  loc_D58F9C: NewIfNullPr clsboleto
  loc_D58F9F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58FA4: FLdPr var_454
  loc_D58FA7:  = Me.Fields
  loc_D58FAC: FLdPr var_468
  loc_D58FAF: from_stack_2 = Me.Item(from_stack_1)
  loc_D58FB4: FLdZeroAd var_49C
  loc_D58FB7: CVarAd
  loc_D58FBB: LitVarI2 var_700, 0
  loc_D58FC0: FLdRfVar var_6C0
  loc_D58FC3: LitVarStr var_538, vbNullString
  loc_D58FC8: HardType
  loc_D58FC9: EqVar var_6E0
  loc_D58FCD: FStVar var_6F0
  loc_D58FD1: FLdRfVar var_6F0
  loc_D58FD4: FLdRfVar var_74C
  loc_D58FD7: ImpAdCallFPR4  = IIf(, , )
  loc_D58FDC: FLdRfVar var_778
  loc_D58FDF: FLdRfVar var_4B8
  loc_D58FE2: LitVarStr var_58C, "Manzana"
  loc_D58FE7: PopAdLdVar
  loc_D58FE8: FLdRfVar var_4B4
  loc_D58FEB: FLdRfVar var_4A0
  loc_D58FEE: FLdPr Me
  loc_D58FF1: MemLdRfVar from_stack_1.global_88
  loc_D58FF4: NewIfNullPr clsboleto
  loc_D58FF7: from_stack_1v = clsboleto.RsFrmGet()
  loc_D58FFC: FLdPr var_4A0
  loc_D58FFF:  = Me.Fields
  loc_D59004: FLdPr var_4B4
  loc_D59007: from_stack_2 = Me.Item(from_stack_1)
  loc_D5900C: FLdPr var_4B8
  loc_D5900F:  = Me.Value
  loc_D59014: FLdRfVar var_524
  loc_D59017: LitVarStr var_5D8, "Manzana"
  loc_D5901C: PopAdLdVar
  loc_D5901D: FLdRfVar var_4D0
  loc_D59020: FLdRfVar var_4BC
  loc_D59023: FLdPr Me
  loc_D59026: MemLdRfVar from_stack_1.global_88
  loc_D59029: NewIfNullPr clsboleto
  loc_D5902C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D59031: FLdPr var_4BC
  loc_D59034:  = Me.Fields
  loc_D59039: FLdPr var_4D0
  loc_D5903C: from_stack_2 = Me.Item(from_stack_1)
  loc_D59041: FLdZeroAd var_524
  loc_D59044: CVarAd
  loc_D59048: LitVarI2 var_7B8, 0
  loc_D5904D: FLdRfVar var_778
  loc_D59050: LitVarStr var_5B0, vbNullString
  loc_D59055: HardType
  loc_D59056: EqVar var_798
  loc_D5905A: FStVar var_7A8
  loc_D5905E: FLdRfVar var_7A8
  loc_D59061: FLdRfVar var_804
  loc_D59064: ImpAdCallFPR4  = IIf(, , )
  loc_D59069: FLdRfVar var_830
  loc_D5906C: FLdRfVar var_540
  loc_D5906F: LitVarStr var_644, "Parcela"
  loc_D59074: PopAdLdVar
  loc_D59075: FLdRfVar var_53C
  loc_D59078: FLdRfVar var_528
  loc_D5907B: FLdPr Me
  loc_D5907E: MemLdRfVar from_stack_1.global_88
  loc_D59081: NewIfNullPr clsboleto
  loc_D59084: from_stack_1v = clsboleto.RsFrmGet()
  loc_D59089: FLdPr var_528
  loc_D5908C:  = Me.Fields
  loc_D59091: FLdPr var_53C
  loc_D59094: from_stack_2 = Me.Item(from_stack_1)
  loc_D59099: FLdPr var_540
  loc_D5909C:  = Me.Value
  loc_D590A1: FLdRfVar var_55C
  loc_D590A4: LitVarStr var_684, "Parcela"
  loc_D590A9: PopAdLdVar
  loc_D590AA: FLdRfVar var_558
  loc_D590AD: FLdRfVar var_544
  loc_D590B0: FLdPr Me
  loc_D590B3: MemLdRfVar from_stack_1.global_88
  loc_D590B6: NewIfNullPr clsboleto
  loc_D590B9: from_stack_1v = clsboleto.RsFrmGet()
  loc_D590BE: FLdPr var_544
  loc_D590C1:  = Me.Fields
  loc_D590C6: FLdPr var_558
  loc_D590C9: from_stack_2 = Me.Item(from_stack_1)
  loc_D590CE: FLdZeroAd var_55C
  loc_D590D1: CVarAd
  loc_D590D5: LitVarI2 var_870, 0
  loc_D590DA: FLdRfVar var_830
  loc_D590DD: LitVarStr var_660, vbNullString
  loc_D590E2: HardType
  loc_D590E3: EqVar var_850
  loc_D590E7: FStVar var_860
  loc_D590EB: FLdRfVar var_860
  loc_D590EE: FLdRfVar var_8BC
  loc_D590F1: ImpAdCallFPR4  = IIf(, , )
  loc_D590F6: FLdRfVar var_8E8
  loc_D590F9: FLdRfVar var_578
  loc_D590FC: LitVarStr var_6D0, "Subparcela"
  loc_D59101: PopAdLdVar
  loc_D59102: FLdRfVar var_574
  loc_D59105: FLdRfVar var_560
  loc_D59108: FLdPr Me
  loc_D5910B: MemLdRfVar from_stack_1.global_88
  loc_D5910E: NewIfNullPr clsboleto
  loc_D59111: from_stack_1v = clsboleto.RsFrmGet()
  loc_D59116: FLdPr var_560
  loc_D59119:  = Me.Fields
  loc_D5911E: FLdPr var_574
  loc_D59121: from_stack_2 = Me.Item(from_stack_1)
  loc_D59126: FLdPr var_578
  loc_D59129:  = Me.Value
  loc_D5912E: FLdRfVar var_5C4
  loc_D59131: LitVarStr var_73C, "Subparcela"
  loc_D59136: PopAdLdVar
  loc_D59137: FLdRfVar var_590
  loc_D5913A: FLdRfVar var_57C
  loc_D5913D: FLdPr Me
  loc_D59140: MemLdRfVar from_stack_1.global_88
  loc_D59143: NewIfNullPr clsboleto
  loc_D59146: from_stack_1v = clsboleto.RsFrmGet()
  loc_D5914B: FLdPr var_57C
  loc_D5914E:  = Me.Fields
  loc_D59153: FLdPr var_590
  loc_D59156: from_stack_2 = Me.Item(from_stack_1)
  loc_D5915B: FLdZeroAd var_5C4
  loc_D5915E: CVarAd
  loc_D59162: LitVarI2 var_928, 0
  loc_D59167: FLdRfVar var_8E8
  loc_D5916A: LitVarStr var_718, vbNullString
  loc_D5916F: HardType
  loc_D59170: EqVar var_908
  loc_D59174: FStVar var_918
  loc_D59178: FLdRfVar var_918
  loc_D5917B: FLdRfVar var_974
  loc_D5917E: ImpAdCallFPR4  = IIf(, , )
  loc_D59183: FLdRfVar var_9E0
  loc_D59186: FLdRfVar var_630
  loc_D59189: LitVarStr var_788, "dig_veri"
  loc_D5918E: PopAdLdVar
  loc_D5918F: FLdRfVar var_5DC
  loc_D59192: FLdRfVar var_5C8
  loc_D59195: FLdPr Me
  loc_D59198: MemLdRfVar from_stack_1.global_88
  loc_D5919B: NewIfNullPr clsboleto
  loc_D5919E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D591A3: FLdPr var_5C8
  loc_D591A6:  = Me.Fields
  loc_D591AB: FLdPr var_5DC
  loc_D591AE: from_stack_2 = Me.Item(from_stack_1)
  loc_D591B3: FLdPr var_630
  loc_D591B6:  = Me.Value
  loc_D591BB: FLdR8 var_1AC
  loc_D591BE: LitStr vbNullString
  loc_D591C1: FLdR8 var_CC
  loc_D591C4: FLdR8 var_104
  loc_D591C7: LitI2_Byte 1
  loc_D591C9: CUI1I2
  loc_D591CB: FLdRfVar var_9E0
  loc_D591CE: CStrVarTmp
  loc_D591CF: FStStrNoPop var_310
  loc_D591D2: FLdRfVar var_974
  loc_D591D5: CI2Var
  loc_D591D6: FLdRfVar var_8BC
  loc_D591D9: CI4Var
  loc_D591DB: FLdRfVar var_804
  loc_D591DE: CI2Var
  loc_D591DF: FLdRfVar var_74C
  loc_D591E2: CI2Var
  loc_D591E3: FLdRfVar var_694
  loc_D591E6: CI2Var
  loc_D591E7: FLdRfVar var_5C0
  loc_D591EA: CI2Var
  loc_D591EB: FLdR8 var_198
  loc_D591EE: FLdI2 var_1A2
  loc_D591F1: FLdR8 var_190
  loc_D591F4: FLdR8 var_A4
  loc_D591F7: FLdR8 var_AC
  loc_D591FA: FLdR8 var_180
  loc_D591FD: FLdR8 var_178
  loc_D59200: FLdFPR8 var_DC
  loc_D59203: CI2R8
  loc_D59204: FLdR8 var_188
  loc_D59207: FLdRfVar var_9D0
  loc_D5920A: CR4Var
  loc_D5920B: PopFPR8
  loc_D5920C: FLdRfVar var_4E0
  loc_D5920F: CI2Var
  loc_D59210: LitI2_Byte &HFF
  loc_D59212: FLdRfVar var_1B0
  loc_D59215: LitI2_Byte 0
  loc_D59217: CStrUI1
  loc_D59219: FStStrNoPop var_30C
  loc_D5921C: LitI4 9
  loc_D59221: ILdRf var_1B0
  loc_D59224: Ary1LdRfVar
  loc_D59226: CStrVarVal var_308
  loc_D5922A: LitI2_Byte 0
  loc_D5922C: LitStr vbNullString
  loc_D5922F: LitI4 6
  loc_D59234: ILdRf var_1B0
  loc_D59237: Ary1LdRfVar
  loc_D59239: CStrVarVal var_304
  loc_D5923D: LitI4 5
  loc_D59242: ILdRf var_1B0
  loc_D59245: Ary1LdRfVar
  loc_D59247: CStrVarVal var_300
  loc_D5924B: LitI4 4
  loc_D59250: ILdRf var_1B0
  loc_D59253: Ary1LdRfVar
  loc_D59255: CStrVarVal var_2FC
  loc_D59259: LitI4 3
  loc_D5925E: ILdRf var_1B0
  loc_D59261: Ary1LdRfVar
  loc_D59263: CI2Var
  loc_D59264: LitI4 2
  loc_D59269: ILdRf var_1B0
  loc_D5926C: Ary1LdRfVar
  loc_D5926E: CI4Var
  loc_D59270: LitI4 1
  loc_D59275: ILdRf var_1B0
  loc_D59278: Ary1LdRfVar
  loc_D5927A: CStrVarVal var_2F8
  loc_D5927E: LitI4 0
  loc_D59283: ILdRf var_1B0
  loc_D59286: Ary1LdRfVar
  loc_D59288: CI4Var
  loc_D5928A: FLdRfVar var_9C0
  loc_D5928D: CStrVarTmp
  loc_D5928E: FStStrNoPop var_2F4
  loc_D59291: FLdZeroAd var_314
  loc_D59294: FStStrNoPop var_2D4
  loc_D59297: FLdR8 var_EC
  loc_D5929A: LitI2_Byte 0
  loc_D5929C: CR8I2
  loc_D5929D: PopFPR8
  loc_D5929E: FLdR8 var_AC
  loc_D592A1: FLdR8 var_A4
  loc_D592A4: FLdR8 var_F4
  loc_D592A7: FLdR8 var_94
  loc_D592AA: FLdR8 var_C4
  loc_D592AD: FLdR8 var_BC
  loc_D592B0: FLdRfVar var_1D4
  loc_D592B3: CStrVarTmp
  loc_D592B4: FStStrNoPop var_2D0
  loc_D592B7: LitStr "Aforo"
  loc_D592BA: LitI2_Byte 2
  loc_D592BC: CUI1I2
  loc_D592BE: ILdRf var_E0
  loc_D592C1: FLdRfVar var_9A0
  loc_D592C4: CI4Var
  loc_D592C6: FLdI2 var_8A
  loc_D592C9: CUI1I2
  loc_D592CB: ILdRf var_1C4
  loc_D592CE: CUI1Str
  loc_D592D0: LitI2_Byte 1
  loc_D592D2: CUI1I2
  loc_D592D4: ILdRf var_1BC
  loc_D592D7: CI2Str
  loc_D592D9: FLdPr Me
  loc_D592DC: MemLdRfVar from_stack_1.global_76
  loc_D592DF: NewIfNullPr clsliqutasa
  loc_D592E2: Call clsliqutasa.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_D592E7: FFreeStr var_2CC = "": var_1BC = "": var_1C4 = "": var_2D0 = "": var_2D4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = ""
  loc_D59306: FFreeAd var_44C = "": var_450 = "": var_454 = "": var_468 = "": var_4A0 = "": var_4B4 = "": var_4B8 = "": var_4BC = "": var_4D0 = "": var_528 = "": var_53C = "": var_540 = "": var_544 = "": var_558 = "": var_560 = "": var_574 = "": var_578 = "": var_57C = "": var_590 = "": var_5C8 = "": var_5DC = "": var_320 = "": var_348 = "": var_3B4 = "": var_630 = "": var_1B8 = "": var_1C0 = "": var_2E4 = "": var_2E8 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = "": var_340 = "": var_344 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3AC = "": var_3B0 = "": var_3B8 = "": var_3BC = "": var_3E0 = "": var_3E4 = "": var_3F8 = "": var_400 = "": var_414 = "": var_418 = "": var_41C = "": var_430 = ""
  loc_D59377: FFreeVar var_8E8 = "": var_918 = "": var_928 = "": var_954 = "": var_9A0 = "": var_9C0 = "": var_4E0 = "": var_9D0 = "": var_5C0 = "": var_694 = "": var_74C = "": var_804 = "": var_8BC = "": var_974 = "": var_9E0 = "": var_1D4 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_358 = "": var_368 = "": var_388 = "": var_478 = "": var_498 = "": var_4F0 = "": var_510 = "": var_520 = "": var_5A0 = "": var_5EC = "": var_61C = "": var_62C = "": var_674 = "": var_6C0 = "": var_6F0 = "": var_700 = "": var_72C = "": var_778 = "": var_7A8 = "": var_7B8 = "": var_7E4 = "": var_830 = "": var_860 = "": var_870 = ""
  loc_D593D4: FLdRfVar var_1B8
  loc_D593D7: FLdPr Me
  loc_D593DA: MemLdRfVar from_stack_1.global_88
  loc_D593DD: NewIfNullPr clsboleto
  loc_D593E0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D593E5: FLdPr var_1B8
  loc_D593E8: Me.MoveNext
  loc_D593ED: FFree1Ad var_1B8
  loc_D593F0: Branch loc_D5421D
  loc_D593F3: LitI2_Byte 0
  loc_D593F5: FLdPr Me
  loc_D593F8: Me.MousePointer = from_stack_1
  loc_D593FD: LitVar_FALSE
  loc_D59401: PopAdLdVar
  loc_D59402: FLdPr Me
  loc_D59405: VCallAd Control_ID_ProgressBar
  loc_D59408: FStAdFunc var_1B8
  loc_D5940B: FLdPr var_1B8
  loc_D5940E: LateIdSt
  loc_D59413: FFree1Ad var_1B8
  loc_D59416: LitStr "Proceso Terminado. Por favor controle el cálculo de tasas realizado"
  loc_D59419: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D5941E: LitI4 0
  loc_D59423: LitI4 0
  loc_D59428: FLdRfVar var_31C
  loc_D5942B: Redim
  loc_D59435: FLdPr Me
  loc_D59438: VCallAd Control_ID_CalculoCmd
  loc_D5943B: CVarAd
  loc_D5943F: ParmAry1St
  loc_D59445: FLdRfVar var_31C
  loc_D59448: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_D5944D: FLdRfVar var_31C
  loc_D59450: Erase
  loc_D59451: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_GotFocus() '9C7628
  'Data Table: 4DD0BC
  loc_9C7614: FLdPr Me
  loc_9C7617: VCallAd Control_ID_BimeLiquTxt
  loc_9C761A: CVarAd
  loc_9C761E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C7623: FFree1Var var_94 = ""
  loc_9C7626: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_Validate(Cancel As Boolean) 'A96918
  'Data Table: 4DD0BC
  loc_A96868: FLdRfVar var_8A
  loc_A9686B: FLdPr Me
  loc_A9686E: VCallAd Control_ID_BimeLiquTxt
  loc_A96871: FStAdFunc var_88
  loc_A96874: FLdPr var_88
  loc_A96877:  = Me.Enabled
  loc_A9687C: FLdI2 var_8A
  loc_A9687F: FFree1Ad var_88
  loc_A96882: BranchF loc_A96914
  loc_A96885: FLdRfVar var_90
  loc_A96888: FLdPr Me
  loc_A9688B: VCallAd Control_ID_BimeLiquTxt
  loc_A9688E: FStAdFunc var_88
  loc_A96891: FLdPr var_88
  loc_A96894:  = Me.Text
  loc_A96899: LitI2_Byte 0
  loc_A9689B: LitI2_Byte 0
  loc_A9689D: ILdRf var_90
  loc_A968A0: LitStr "bimestre"
  loc_A968A3: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A968A8: FStStrNoPop var_94
  loc_A968AB: FLdPr Me
  loc_A968AE: MemStStrCopy
  loc_A968B2: FFreeStr var_90 = ""
  loc_A968B9: FFree1Ad var_88
  loc_A968BC: FLdPr Me
  loc_A968BF: MemLdStr global_104
  loc_A968C2: LitStr vbNullString
  loc_A968C5: NeStr
  loc_A968C7: BranchF loc_A968ED
  loc_A968CA: FLdPr Me
  loc_A968CD: MemLdStr global_104
  loc_A968D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A968D5: FLdPr Me
  loc_A968D8: VCallAd Control_ID_BimeLiquTxt
  loc_A968DB: CVarAd
  loc_A968DF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A968E4: FFree1Var var_A4 = ""
  loc_A968E7: LitI2_Byte &HFF
  loc_A968E9: IStI2 Cancel
  loc_A968EC: ExitProcHresult
  loc_A968ED: FLdRfVar var_90
  loc_A968F0: FLdPr Me
  loc_A968F3: VCallAd Control_ID_BimeLiquTxt
  loc_A968F6: FStAdFunc var_88
  loc_A968F9: FLdPr var_88
  loc_A968FC:  = Me.Text
  loc_A96901: ILdRf var_90
  loc_A96904: CI2Str
  loc_A96906: PopTmpLdAd2 var_8A
  loc_A96909: Call Proc_166_26_A42244()
  loc_A9690E: FFree1Str var_90
  loc_A96911: FFree1Ad var_88
  loc_A96914: ExitProcHresult
  loc_A96915: LeR8
  loc_A96916: PopTmpLdAdStr BimeLiquTxt_Validate407
End Sub

Private Sub NumeCtaTxt_GotFocus() '9C5270
  'Data Table: 4DD0BC
  loc_9C525C: FLdPrThis
  loc_9C525D: VCallAd Control_ID_NumeCtaTxt
  loc_9C5260: CVarAd
  loc_9C5264: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5269: FFree1Var var_94 = ""
  loc_9C526C: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'AB630C
  'Data Table: 4DD0BC
  loc_AB6230: LitStr "1234567890 "
  loc_AB6233: FStStrCopy var_88
  loc_AB6236: FLdRfVar var_88
  loc_AB6239: ILdRf KeyAscii
  loc_AB623C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB6241: IStI2 KeyAscii
  loc_AB6244: FFree1Str var_88
  loc_AB6247: ILdI2 KeyAscii
  loc_AB624A: LitI2_Byte &H20
  loc_AB624C: EqI2
  loc_AB624D: BranchF loc_AB6308
  loc_AB6250: LitI2_Byte 0
  loc_AB6252: IStI2 KeyAscii
  loc_AB6255: LitI2_Byte 1
  loc_AB6257: CUI1I2
  loc_AB6259: ImpAdStUI1 MemVar_D93038
  loc_AB625D: LitVar_Missing var_A8
  loc_AB6260: PopAdLdVar
  loc_AB6261: LitVarI4
  loc_AB6269: PopAdLdVar
  loc_AB626A: ImpAdLdRf MemVar_D94034
  loc_AB626D: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB6270: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_AB6275: FLdRfVar var_B0
  loc_AB6278: FLdRfVar var_AC
  loc_AB627B: ImpAdLdRf MemVar_D94034
  loc_AB627E: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB6281: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB6286: FLdPr var_AC
  loc_AB6289: from_stack_1 = clsbase.RecordCount
  loc_AB628E: ILdRf var_B0
  loc_AB6291: LitI4 0
  loc_AB6296: GtI4
  loc_AB6297: FFree1Ad var_AC
  loc_AB629A: BranchF loc_AB6308
  loc_AB629D: FLdRfVar var_CC
  loc_AB62A0: FLdRfVar var_BC
  loc_AB62A3: LitVarStr var_98, "CuenCtct"
  loc_AB62A8: PopAdLdVar
  loc_AB62A9: FLdRfVar var_B8
  loc_AB62AC: FLdRfVar var_B4
  loc_AB62AF: FLdRfVar var_AC
  loc_AB62B2: ImpAdLdRf MemVar_D94034
  loc_AB62B5: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB62B8: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB62BD: FLdPr var_AC
  loc_AB62C0: from_stack_1v = clsbase.RsFrmGet()
  loc_AB62C5: FLdPr var_B4
  loc_AB62C8:  = Me.Fields
  loc_AB62CD: FLdPr var_B8
  loc_AB62D0: from_stack_2 = Me.Item(from_stack_1)
  loc_AB62D5: FLdPr var_BC
  loc_AB62D8:  = Me.Value
  loc_AB62DD: FLdRfVar var_CC
  loc_AB62E0: CStrVarTmp
  loc_AB62E1: FStStrNoPop var_88
  loc_AB62E4: FLdPr Me
  loc_AB62E7: VCallAd Control_ID_NumeCtaTxt
  loc_AB62EA: FStAdFunc var_D0
  loc_AB62ED: FLdPr var_D0
  loc_AB62F0: Me.Text = from_stack_1
  loc_AB62F5: FFree1Str var_88
  loc_AB62F8: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB6305: FFree1Var var_CC = ""
  loc_AB6308: ExitProcHresult
  loc_AB6309: ImpI4
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'AF1D7C
  'Data Table: 4DD0BC
  loc_AF1BCC: FLdRfVar var_8A
  loc_AF1BCF: FLdPr Me
  loc_AF1BD2: VCallAd Control_ID_NumeCtaTxt
  loc_AF1BD5: FStAdFunc var_88
  loc_AF1BD8: FLdPr var_88
  loc_AF1BDB:  = Me.Enabled
  loc_AF1BE0: FLdI2 var_8A
  loc_AF1BE3: FFree1Ad var_88
  loc_AF1BE6: BranchF loc_AF1D7B
  loc_AF1BE9: FLdRfVar var_90
  loc_AF1BEC: FLdPr Me
  loc_AF1BEF: VCallAd Control_ID_NumeCtaTxt
  loc_AF1BF2: FStAdFunc var_88
  loc_AF1BF5: FLdPr var_88
  loc_AF1BF8:  = Me.Text
  loc_AF1BFD: LitI2_Byte &HFF
  loc_AF1BFF: LitI2_Byte 0
  loc_AF1C01: ILdRf var_90
  loc_AF1C04: LitStr "Numero de Cuenta"
  loc_AF1C07: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AF1C0C: FStStrNoPop var_94
  loc_AF1C0F: FLdPr Me
  loc_AF1C12: MemStStrCopy
  loc_AF1C16: FFreeStr var_90 = ""
  loc_AF1C1D: FFree1Ad var_88
  loc_AF1C20: FLdPr Me
  loc_AF1C23: MemLdStr global_104
  loc_AF1C26: LitStr vbNullString
  loc_AF1C29: NeStr
  loc_AF1C2B: BranchF loc_AF1C50
  loc_AF1C2E: FLdPr Me
  loc_AF1C31: MemLdStr global_104
  loc_AF1C34: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF1C39: FLdPr Me
  loc_AF1C3C: VCallAd Control_ID_HastaCodiInmuTxt
  loc_AF1C3F: CVarAd
  loc_AF1C43: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF1C48: FFree1Var var_A4 = ""
  loc_AF1C4B: LitI2_Byte &HFF
  loc_AF1C4D: IStI2 Cancel
  loc_AF1C50: FLdRfVar var_90
  loc_AF1C53: FLdPr Me
  loc_AF1C56: VCallAd Control_ID_NumeCtaTxt
  loc_AF1C59: FStAdFunc var_88
  loc_AF1C5C: FLdPr var_88
  loc_AF1C5F:  = Me.Text
  loc_AF1C64: ILdRf var_90
  loc_AF1C67: CR8Str
  loc_AF1C69: LitI2_Byte 0
  loc_AF1C6B: CR8I2
  loc_AF1C6C: GtR4
  loc_AF1C6D: FFree1Str var_90
  loc_AF1C70: FFree1Ad var_88
  loc_AF1C73: BranchF loc_AF1D7B
  loc_AF1C76: FLdRfVar var_90
  loc_AF1C79: FLdPr Me
  loc_AF1C7C: VCallAd Control_ID_NumeCtaTxt
  loc_AF1C7F: FStAdFunc var_88
  loc_AF1C82: FLdPr var_88
  loc_AF1C85:  = Me.Text
  loc_AF1C8A: FLdPr Me
  loc_AF1C8D: MemLdRfVar from_stack_1.global_92
  loc_AF1C90: NewIfNullRf
  loc_AF1C94: LitStr "Titular"
  loc_AF1C97: ILdRf var_90
  loc_AF1C9A: LitI2_Byte 1
  loc_AF1C9C: CStrUI1
  loc_AF1C9E: FStStrNoPop var_94
  loc_AF1CA1: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_AF1CA6: FFreeStr var_94 = ""
  loc_AF1CAD: FFree1Ad var_88
  loc_AF1CB0: BranchF loc_AF1D0C
  loc_AF1CB3: FLdRfVar var_90
  loc_AF1CB6: FLdPr Me
  loc_AF1CB9: MemLdRfVar from_stack_1.global_92
  loc_AF1CBC: NewIfNullPr tblPersona
  loc_AF1CBF: from_stack_1v = tblPersona.CucuPersGet()
  loc_AF1CC4: ILdRf var_90
  loc_AF1CC7: FLdPr Me
  loc_AF1CCA: VCallAd Control_ID_CucuPersLbl
  loc_AF1CCD: FStAdFunc var_88
  loc_AF1CD0: FLdPr var_88
  loc_AF1CD3: Me.Caption = from_stack_1
  loc_AF1CD8: FFree1Str var_90
  loc_AF1CDB: FFree1Ad var_88
  loc_AF1CDE: FLdRfVar var_90
  loc_AF1CE1: FLdPr Me
  loc_AF1CE4: MemLdRfVar from_stack_1.global_92
  loc_AF1CE7: NewIfNullPr tblPersona
  loc_AF1CEA: from_stack_1v = tblPersona.DetaPersGet()
  loc_AF1CEF: ILdRf var_90
  loc_AF1CF2: FLdPr Me
  loc_AF1CF5: VCallAd Control_ID_DetaPersLbl
  loc_AF1CF8: FStAdFunc var_88
  loc_AF1CFB: FLdPr var_88
  loc_AF1CFE: Me.Caption = from_stack_1
  loc_AF1D03: FFree1Str var_90
  loc_AF1D06: FFree1Ad var_88
  loc_AF1D09: Branch loc_AF1D7B
  loc_AF1D0C: FLdRfVar var_90
  loc_AF1D0F: FLdPr Me
  loc_AF1D12: MemLdRfVar from_stack_1.global_92
  loc_AF1D15: NewIfNullPr tblPersona
  loc_AF1D18: from_stack_1v = tblPersona.MsgErrorGet()
  loc_AF1D1D: ILdRf var_90
  loc_AF1D20: FLdPr Me
  loc_AF1D23: MemStStrCopy
  loc_AF1D27: FFree1Str var_90
  loc_AF1D2A: FLdPr Me
  loc_AF1D2D: MemLdStr global_104
  loc_AF1D30: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF1D35: LitStr vbNullString
  loc_AF1D38: FLdPr Me
  loc_AF1D3B: VCallAd Control_ID_CucuPersLbl
  loc_AF1D3E: FStAdFunc var_88
  loc_AF1D41: FLdPr var_88
  loc_AF1D44: Me.Caption = from_stack_1
  loc_AF1D49: FFree1Ad var_88
  loc_AF1D4C: LitStr vbNullString
  loc_AF1D4F: FLdPr Me
  loc_AF1D52: VCallAd Control_ID_DetaPersLbl
  loc_AF1D55: FStAdFunc var_88
  loc_AF1D58: FLdPr var_88
  loc_AF1D5B: Me.Caption = from_stack_1
  loc_AF1D60: FFree1Ad var_88
  loc_AF1D63: FLdPr Me
  loc_AF1D66: VCallAd Control_ID_NumeCtaTxt
  loc_AF1D69: CVarAd
  loc_AF1D6D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF1D72: FFree1Var var_A4 = ""
  loc_AF1D75: LitI2_Byte &HFF
  loc_AF1D77: IStI2 Cancel
  loc_AF1D7A: ExitProcHresult
  loc_AF1D7B: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_GotFocus() '9C7550
  'Data Table: 4DD0BC
  loc_9C753C: FLdPr Me
  loc_9C753F: VCallAd Control_ID_CodiTiliTxt
  loc_9C7542: CVarAd
  loc_9C7546: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C754B: FFree1Var var_94 = ""
  loc_9C754E: ExitProcHresult
  loc_9C754F: CStr2Ansi
End Sub

Private Sub CodiTiliTxt_KeyPress(KeyAscii As Integer) '9D76F4
  'Data Table: 4DD0BC
  loc_9D76DC: LitStr "1234567890"
  loc_9D76DF: FStStrCopy var_88
  loc_9D76E2: FLdRfVar var_88
  loc_9D76E5: ILdRf KeyAscii
  loc_9D76E8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D76ED: IStI2 KeyAscii
  loc_9D76F0: FFree1Str var_88
  loc_9D76F3: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_Validate(Cancel As Boolean) 'B40A30
  'Data Table: 4DD0BC
  loc_B40700: FLdRfVar var_8A
  loc_B40703: FLdPr Me
  loc_B40706: VCallAd Control_ID_CodiTiliTxt
  loc_B40709: FStAdFunc var_88
  loc_B4070C: FLdPr var_88
  loc_B4070F:  = Me.Enabled
  loc_B40714: FLdI2 var_8A
  loc_B40717: FFree1Ad var_88
  loc_B4071A: BranchF loc_B40A2C
  loc_B4071D: FLdRfVar var_90
  loc_B40720: FLdPr Me
  loc_B40723: VCallAd Control_ID_CodiTiliTxt
  loc_B40726: FStAdFunc var_88
  loc_B40729: FLdPr var_88
  loc_B4072C:  = Me.Text
  loc_B40731: ILdRf var_90
  loc_B40734: LitI2_Byte 1
  loc_B40736: CUI1I2
  loc_B40738: ImpAdCallI2  = Proc_18_25_A7CBA0()
  loc_B4073D: FStStrNoPop var_94
  loc_B40740: FLdPr Me
  loc_B40743: MemStStrCopy
  loc_B40747: FFreeStr var_90 = ""
  loc_B4074E: FFree1Ad var_88
  loc_B40751: FLdPr Me
  loc_B40754: MemLdStr global_104
  loc_B40757: LitStr vbNullString
  loc_B4075A: NeStr
  loc_B4075C: BranchF loc_B40782
  loc_B4075F: FLdPr Me
  loc_B40762: MemLdStr global_104
  loc_B40765: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4076A: FLdPr Me
  loc_B4076D: VCallAd Control_ID_CodiTiliTxt
  loc_B40770: CVarAd
  loc_B40774: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B40779: FFree1Var var_A4 = ""
  loc_B4077C: LitI2_Byte &HFF
  loc_B4077E: IStI2 Cancel
  loc_B40781: ExitProcHresult
  loc_B40782: FLdRfVar var_90
  loc_B40785: FLdPr Me
  loc_B40788: VCallAd Control_ID_CodiTiliTxt
  loc_B4078B: FStAdFunc var_88
  loc_B4078E: FLdPr var_88
  loc_B40791:  = Me.Text
  loc_B40796: ILdRf var_90
  loc_B40799: CUI1Str
  loc_B4079B: LitI2_Byte 1
  loc_B4079D: CUI1I2
  loc_B4079F: ImpAdCallI2 Proc_270_49_A8F1B0(, )
  loc_B407A4: FStStrNoPop var_94
  loc_B407A7: FLdPr Me
  loc_B407AA: VCallAd Control_ID_DetaTiliLbl
  loc_B407AD: FStAdFunc var_A8
  loc_B407B0: FLdPr var_A8
  loc_B407B3: Me.Caption = from_stack_1
  loc_B407B8: FFreeStr var_90 = ""
  loc_B407BF: FFreeAd var_88 = ""
  loc_B407C6: FLdPr Me
  loc_B407C9: MemLdI2 global_96
  loc_B407CC: CUI1I2
  loc_B407CE: FLdPr Me
  loc_B407D1: MemLdRfVar from_stack_1.global_100
  loc_B407D4: FLdPr Me
  loc_B407D7: MemLdI2 global_98
  loc_B407DA: CUI1I2
  loc_B407DC: ForUI1 var_AC
  loc_B407E2: FLdRfVar var_90
  loc_B407E5: FLdPr Me
  loc_B407E8: VCallAd Control_ID_PeriLiquTxt
  loc_B407EB: FStAdFunc var_88
  loc_B407EE: FLdPr var_88
  loc_B407F1:  = Me.Text
  loc_B407F6: FLdRfVar var_94
  loc_B407F9: FLdPr Me
  loc_B407FC: VCallAd Control_ID_CodiTiliTxt
  loc_B407FF: FStAdFunc var_A8
  loc_B40802: FLdPr var_A8
  loc_B40805:  = Me.Text
  loc_B4080A: ILdRf var_94
  loc_B4080D: CUI1Str
  loc_B4080F: LitI2_Byte 1
  loc_B40811: CUI1I2
  loc_B40813: FLdPr Me
  loc_B40816: MemLdUI1 global_100
  loc_B4081A: CStrI2
  loc_B4081C: FStStrNoPop var_B0
  loc_B4081F: ILdRf var_90
  loc_B40822: CI2Str
  loc_B40824: ImpAdCallI2  = Proc_18_58_AAF980(, )
  loc_B40829: FStStrNoPop var_B4
  loc_B4082C: FLdPr Me
  loc_B4082F: MemStStrCopy
  loc_B40833: FFreeStr var_90 = "": var_B0 = "": var_94 = ""
  loc_B4083E: FFreeAd var_88 = ""
  loc_B40845: FLdPr Me
  loc_B40848: MemLdStr global_104
  loc_B4084B: LitStr vbNullString
  loc_B4084E: NeStr
  loc_B40850: BranchF loc_B408B9
  loc_B40853: LitStr "No esta definido el vencimiento para el bimestre numero: "
  loc_B40856: FLdPr Me
  loc_B40859: MemLdUI1 global_100
  loc_B4085D: CStrI2
  loc_B4085F: FStStrNoPop var_90
  loc_B40862: ConcatStr
  loc_B40863: FStStrNoPop var_94
  loc_B40866: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4086B: FFreeStr var_90 = ""
  loc_B40872: LitI2_Byte 0
  loc_B40874: FLdPr Me
  loc_B40877: VCallAd Control_ID_Label4
  loc_B4087A: FStAdFunc var_88
  loc_B4087D: FLdPr var_88
  loc_B40880: Me.Visible = from_stack_1b
  loc_B40885: FFree1Ad var_88
  loc_B40888: LitVar_FALSE
  loc_B4088C: PopAdLdVar
  loc_B4088D: FLdPr Me
  loc_B40890: VCallAd Control_ID_FeveVencMsk
  loc_B40893: FStAdFunc var_88
  loc_B40896: FLdPr var_88
  loc_B40899: LateIdSt
  loc_B4089E: FFree1Ad var_88
  loc_B408A1: FLdPr Me
  loc_B408A4: VCallAd Control_ID_CodiTiliTxt
  loc_B408A7: CVarAd
  loc_B408AB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B408B0: FFree1Var var_A4 = ""
  loc_B408B3: LitI2_Byte &HFF
  loc_B408B5: IStI2 Cancel
  loc_B408B8: ExitProcHresult
  loc_B408B9: FLdPr Me
  loc_B408BC: MemLdUI1 global_100
  loc_B408C0: CI2UI1
  loc_B408C2: LitI2_Byte 1
  loc_B408C4: EqI2
  loc_B408C5: BranchF loc_B40A20
  loc_B408C8: FLdRfVar var_90
  loc_B408CB: FLdPr Me
  loc_B408CE: VCallAd Control_ID_PeriLiquTxt
  loc_B408D1: FStAdFunc var_88
  loc_B408D4: FLdPr var_88
  loc_B408D7:  = Me.Text
  loc_B408DC: FLdRfVar var_94
  loc_B408DF: FLdPr Me
  loc_B408E2: VCallAd Control_ID_CodiTiliTxt
  loc_B408E5: FStAdFunc var_A8
  loc_B408E8: FLdPr var_A8
  loc_B408EB:  = Me.Text
  loc_B408F0: ILdRf var_94
  loc_B408F3: CUI1Str
  loc_B408F5: LitI2_Byte 1
  loc_B408F7: CUI1I2
  loc_B408F9: FLdPr Me
  loc_B408FC: MemLdUI1 global_100
  loc_B40900: CStrI2
  loc_B40902: FStStrNoPop var_B0
  loc_B40905: ILdRf var_90
  loc_B40908: CI2Str
  loc_B4090A: ImpAdCallI2  = Proc_18_60_AAEDA4(, )
  loc_B4090F: FStStrNoPop var_B4
  loc_B40912: FLdPr Me
  loc_B40915: MemStStrCopy
  loc_B40919: FFreeStr var_90 = "": var_B0 = "": var_94 = ""
  loc_B40924: FFreeAd var_88 = ""
  loc_B4092B: FLdPr Me
  loc_B4092E: MemLdStr global_104
  loc_B40931: LitStr vbNullString
  loc_B40934: NeStr
  loc_B40936: BranchF loc_B40988
  loc_B40939: LitStr "No esta definido el vencimiento para el ANUAL"
  loc_B4093C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B40941: LitI2_Byte 0
  loc_B40943: FLdPr Me
  loc_B40946: VCallAd Control_ID_Label4
  loc_B40949: FStAdFunc var_88
  loc_B4094C: FLdPr var_88
  loc_B4094F: Me.Visible = from_stack_1b
  loc_B40954: FFree1Ad var_88
  loc_B40957: LitVar_FALSE
  loc_B4095B: PopAdLdVar
  loc_B4095C: FLdPr Me
  loc_B4095F: VCallAd Control_ID_FeveVencMsk
  loc_B40962: FStAdFunc var_88
  loc_B40965: FLdPr var_88
  loc_B40968: LateIdSt
  loc_B4096D: FFree1Ad var_88
  loc_B40970: FLdPr Me
  loc_B40973: VCallAd Control_ID_CodiTiliTxt
  loc_B40976: CVarAd
  loc_B4097A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4097F: FFree1Var var_A4 = ""
  loc_B40982: LitI2_Byte &HFF
  loc_B40984: IStI2 Cancel
  loc_B40987: ExitProcHresult
  loc_B40988: FLdRfVar var_90
  loc_B4098B: FLdPr Me
  loc_B4098E: VCallAd Control_ID_PeriLiquTxt
  loc_B40991: FStAdFunc var_88
  loc_B40994: FLdPr var_88
  loc_B40997:  = Me.Text
  loc_B4099C: FLdRfVar var_94
  loc_B4099F: FLdPr Me
  loc_B409A2: VCallAd Control_ID_CodiTiliTxt
  loc_B409A5: FStAdFunc var_A8
  loc_B409A8: FLdPr var_A8
  loc_B409AB:  = Me.Text
  loc_B409B0: ILdRf var_94
  loc_B409B3: CUI1Str
  loc_B409B5: LitI2_Byte 1
  loc_B409B7: CUI1I2
  loc_B409B9: FLdPr Me
  loc_B409BC: MemLdUI1 global_100
  loc_B409C0: ILdRf var_90
  loc_B409C3: CI2Str
  loc_B409C5: ImpAdCallI2 Proc_270_62_ABCC3C(, , , )
  loc_B409CA: CVarStr var_A4
  loc_B409CD: PopAdLdVar
  loc_B409CE: FLdPr Me
  loc_B409D1: VCallAd Control_ID_FeanVencMsk
  loc_B409D4: FStAdFunc var_D8
  loc_B409D7: FLdPr var_D8
  loc_B409DA: LateIdSt
  loc_B409DF: FFreeStr var_90 = ""
  loc_B409E6: FFreeAd var_88 = "": var_A8 = ""
  loc_B409EF: FFree1Var var_A4 = ""
  loc_B409F2: LitI2_Byte &HFF
  loc_B409F4: FLdPr Me
  loc_B409F7: VCallAd Control_ID_Label5
  loc_B409FA: FStAdFunc var_88
  loc_B409FD: FLdPr var_88
  loc_B40A00: Me.Visible = from_stack_1b
  loc_B40A05: FFree1Ad var_88
  loc_B40A08: LitVar_TRUE var_C4
  loc_B40A0B: PopAdLdVar
  loc_B40A0C: FLdPr Me
  loc_B40A0F: VCallAd Control_ID_FeanVencMsk
  loc_B40A12: FStAdFunc var_88
  loc_B40A15: FLdPr var_88
  loc_B40A18: LateIdSt
  loc_B40A1D: FFree1Ad var_88
  loc_B40A20: FLdPr Me
  loc_B40A23: MemLdRfVar from_stack_1.global_100
  loc_B40A26: NextUI1
  loc_B40A2C: ExitProcHresult
  loc_B40A2F: LeCy
End Sub

Private Sub PeriLiquTxt_GotFocus() '9C5300
  'Data Table: 4DD0BC
  loc_9C52EC: FLdPr Me
  loc_9C52EF: VCallAd Control_ID_PeriLiquTxt
  loc_9C52F2: CVarAd
  loc_9C52F6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C52FB: FFree1Var var_94 = ""
  loc_9C52FE: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_KeyPress(KeyAscii As Integer) '9D7B1C
  'Data Table: 4DD0BC
  loc_9D7B04: LitStr "1234567890"
  loc_9D7B07: FStStrCopy var_88
  loc_9D7B0A: FLdRfVar var_88
  loc_9D7B0D: ILdRf KeyAscii
  loc_9D7B10: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D7B15: IStI2 KeyAscii
  loc_9D7B18: FFree1Str var_88
  loc_9D7B1B: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_Validate(Cancel As Boolean) 'A6B478
  'Data Table: 4DD0BC
  loc_A6B410: FLdRfVar var_8C
  loc_A6B413: FLdPr Me
  loc_A6B416: VCallAd Control_ID_PeriLiquTxt
  loc_A6B419: FStAdFunc var_88
  loc_A6B41C: FLdPr var_88
  loc_A6B41F:  = Me.Text
  loc_A6B424: LitI2_Byte 0
  loc_A6B426: ILdRf var_8C
  loc_A6B429: LitStr "el Año"
  loc_A6B42C: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6B431: FStStrNoPop var_90
  loc_A6B434: FLdPr Me
  loc_A6B437: MemStStrCopy
  loc_A6B43B: FFreeStr var_8C = ""
  loc_A6B442: FFree1Ad var_88
  loc_A6B445: FLdPr Me
  loc_A6B448: MemLdStr global_104
  loc_A6B44B: LitStr vbNullString
  loc_A6B44E: NeStr
  loc_A6B450: BranchF loc_A6B475
  loc_A6B453: FLdPr Me
  loc_A6B456: MemLdStr global_104
  loc_A6B459: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6B45E: FLdPr Me
  loc_A6B461: VCallAd Control_ID_PeriLiquTxt
  loc_A6B464: CVarAd
  loc_A6B468: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6B46D: FFree1Var var_A0 = ""
  loc_A6B470: LitI2_Byte &HFF
  loc_A6B472: IStI2 Cancel
  loc_A6B475: ExitProcHresult
  loc_A6B476: ModI2
End Sub

Private Sub BuscarCmd_Click() 'A8E64C
  'Data Table: 4DD0BC
  loc_A8E5C4: FLdRfVar var_90
  loc_A8E5C7: FLdPr Me
  loc_A8E5CA: VCallAd Control_ID_NumeCtaTxt
  loc_A8E5CD: FStAdFunc var_8C
  loc_A8E5D0: FLdPr var_8C
  loc_A8E5D3:  = Me.Text
  loc_A8E5D8: FLdZeroAd var_90
  loc_A8E5DB: CVarStr var_B0
  loc_A8E5DE: LitI4 9
  loc_A8E5E3: FLdRfVar var_A0
  loc_A8E5E6: ImpAdCallFPR4  = Chr()
  loc_A8E5EB: FLdRfVar var_A0
  loc_A8E5EE: ConcatVar var_C0
  loc_A8E5F2: FLdRfVar var_C8
  loc_A8E5F5: FLdPr Me
  loc_A8E5F8: VCallAd Control_ID_DetaPersLbl
  loc_A8E5FB: FStAdFunc var_C4
  loc_A8E5FE: FLdPr var_C4
  loc_A8E601:  = Me.Caption
  loc_A8E606: FLdZeroAd var_C8
  loc_A8E609: CVarStr var_D8
  loc_A8E60C: ConcatVar var_E8
  loc_A8E610: CStrVarTmp
  loc_A8E611: FStStr var_88
  loc_A8E614: FFreeAd var_8C = ""
  loc_A8E61B: FFreeVar var_B0 = "": var_A0 = "": var_C0 = "": var_D8 = ""
  loc_A8E628: FLdRfVar var_88
  loc_A8E62B: CDargRef
  loc_A8E62F: FLdPr Me
  loc_A8E632: VCallAd Control_ID_CuentasFlex
  loc_A8E635: FStAdFunc var_8C
  loc_A8E638: FLdPr var_8C
  loc_A8E63B: LateIdCall
  loc_A8E643: FFree1Ad var_8C
  loc_A8E646: Call Proc_166_25_A7A3F0()
  loc_A8E64B: ExitProcHresult
End Sub

Private Sub Form_Load() 'AF74AC
  'Data Table: 4DD0BC
  loc_AF72E8: LitI2_Byte 0
  loc_AF72EA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF72EF: CVarDate var_A4
  loc_AF72F3: FLdRfVar var_B4
  loc_AF72F6: ImpAdCallFPR4  = Year()
  loc_AF72FB: FLdRfVar var_B4
  loc_AF72FE: CStrVarVal var_B8
  loc_AF7302: FLdPr Me
  loc_AF7305: VCallAd Control_ID_PeriLiquTxt
  loc_AF7308: FStAdFunc var_BC
  loc_AF730B: FLdPr var_BC
  loc_AF730E: Me.Text = from_stack_1
  loc_AF7313: FFree1Str var_B8
  loc_AF7316: FFree1Ad var_BC
  loc_AF7319: FFreeVar var_A4 = ""
  loc_AF7320: LitI2_Byte 0
  loc_AF7322: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF7327: CVarDate var_A4
  loc_AF732B: FLdRfVar var_B4
  loc_AF732E: ImpAdCallFPR4  = Month()
  loc_AF7333: FLdRfVar var_B4
  loc_AF7336: LitVarI2 var_CC, 3
  loc_AF733B: DivVar var_DC
  loc_AF733F: FnCIntVar
  loc_AF7341: CStrUI1
  loc_AF7343: FStStrNoPop var_B8
  loc_AF7346: FLdPr Me
  loc_AF7349: VCallAd Control_ID_BimeLiquTxt
  loc_AF734C: FStAdFunc var_BC
  loc_AF734F: FLdPr var_BC
  loc_AF7352: Me.Text = from_stack_1
  loc_AF7357: FFree1Str var_B8
  loc_AF735A: FFree1Ad var_BC
  loc_AF735D: FFreeVar var_A4 = ""
  loc_AF7364: LitStr "0"
  loc_AF7367: FLdPr Me
  loc_AF736A: VCallAd Control_ID_CodiTiliTxt
  loc_AF736D: FStAdFunc var_BC
  loc_AF7370: FLdPr var_BC
  loc_AF7373: Me.Text = from_stack_1
  loc_AF7378: FFree1Ad var_BC
  loc_AF737B: LitStr "0"
  loc_AF737E: FLdPr Me
  loc_AF7381: VCallAd Control_ID_DesdeCodiInmuTxt
  loc_AF7384: FStAdFunc var_BC
  loc_AF7387: FLdPr var_BC
  loc_AF738A: Me.Text = from_stack_1
  loc_AF738F: FFree1Ad var_BC
  loc_AF7392: LitStr "99999999"
  loc_AF7395: FLdPr Me
  loc_AF7398: VCallAd Control_ID_HastaCodiInmuTxt
  loc_AF739B: FStAdFunc var_BC
  loc_AF739E: FLdPr var_BC
  loc_AF73A1: Me.Text = from_stack_1
  loc_AF73A6: FFree1Ad var_BC
  loc_AF73A9: LitI2_Byte &HFF
  loc_AF73AB: FLdPr Me
  loc_AF73AE: VCallAd Control_ID_CompletaOpt
  loc_AF73B1: FStAdFunc var_BC
  loc_AF73B4: FLdPr var_BC
  loc_AF73B7: Me.Value = from_stack_1b
  loc_AF73BC: FFree1Ad var_BC
  loc_AF73BF: FLdPr Me
  loc_AF73C2: VCallAd Control_ID_CuentasFlex
  loc_AF73C5: FStAdFunc var_E0
  loc_AF73C8: FLdPr var_E0
  loc_AF73CB: LateIdCall
  loc_AF73D3: LitVarI4
  loc_AF73DB: PopAdLdVar
  loc_AF73DC: FLdPr var_E0
  loc_AF73DF: LateIdSt
  loc_AF73E4: LitVarI4
  loc_AF73EC: PopAdLdVar
  loc_AF73ED: LitVarI4
  loc_AF73F5: PopAdLdVar
  loc_AF73F6: FLdPr var_E0
  loc_AF73F9: LateIdCallSt
  loc_AF7401: LitVarI4
  loc_AF7409: PopAdLdVar
  loc_AF740A: LitVarI4
  loc_AF7412: PopAdLdVar
  loc_AF7413: FLdPr var_E0
  loc_AF7416: LateIdCallSt
  loc_AF741E: LitVarI4
  loc_AF7426: PopAdLdVar
  loc_AF7427: LitVarI4
  loc_AF742F: PopAdLdVar
  loc_AF7430: LitVarStr var_110, "Cuenta"
  loc_AF7435: PopAdLdVar
  loc_AF7436: FLdPr var_E0
  loc_AF7439: LateIdCallSt
  loc_AF7441: LitVarI4
  loc_AF7449: PopAdLdVar
  loc_AF744A: LitVarI4
  loc_AF7452: PopAdLdVar
  loc_AF7453: LitVarStr var_110, "Apellido y Nombre"
  loc_AF7458: PopAdLdVar
  loc_AF7459: FLdPr var_E0
  loc_AF745C: LateIdCallSt
  loc_AF7464: LitNothing
  loc_AF7466: FStAd var_E0 
  loc_AF746A: LitStr "0"
  loc_AF746D: FLdPr Me
  loc_AF7470: VCallAd Control_ID_NumeCtaTxt
  loc_AF7473: FStAdFunc var_BC
  loc_AF7476: FLdPr var_BC
  loc_AF7479: Me.Text = from_stack_1
  loc_AF747E: FFree1Ad var_BC
  loc_AF7481: FLdRfVar var_B8
  loc_AF7484: FLdPr Me
  loc_AF7487: VCallAd Control_ID_BimeLiquTxt
  loc_AF748A: FStAdFunc var_BC
  loc_AF748D: FLdPr var_BC
  loc_AF7490:  = Me.Text
  loc_AF7495: ILdRf var_B8
  loc_AF7498: CI2Str
  loc_AF749A: PopTmpLdAd2 var_122
  loc_AF749D: Call Proc_166_26_A42244()
  loc_AF74A2: FFree1Str var_B8
  loc_AF74A5: FFree1Ad var_BC
  loc_AF74A8: ExitProcHresult
  loc_AF74A9: MemLdUI1 global_17661
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B900C
  'Data Table: 4DD0BC
  loc_9B8FF8: ILdI2 KeyCode
  loc_9B8FFB: CI4UI1
  loc_9B8FFC: LitI4 &H78
  loc_9B9001: EqI4
  loc_9B9002: BranchF loc_9B900A
  loc_9B9005: Call cmdSalir_Click()
  loc_9B900A: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9D7448
  'Data Table: 4DD0BC
  loc_9D7430: ILdRf Me
  loc_9D7433: FStAdNoPop
  loc_9D7437: ImpAdLdRf MemVar_D9C5D8
  loc_9D743A: NewIfNullPr Global
  loc_9D743D: Global.Unload from_stack_1
  loc_9D7442: FFree1Ad var_88
  loc_9D7445: ExitProcHresult
End Sub

Private Sub CodiTiliCmd_Click() 'AA44AC
  'Data Table: 4DD0BC
  loc_AA43E8: LitI2_Byte 1
  loc_AA43EA: CUI1I2
  loc_AA43EC: ImpAdLdRf MemVar_D94160
  loc_AA43EF: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA43F2: Call dlgBuscarTipodeLiquidacion.ByOficinaPut(from_stack_1v)
  loc_AA43F7: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = 1"
  loc_AA43FA: ImpAdLdRf MemVar_D94160
  loc_AA43FD: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4400: Call dlgBuscarTipodeLiquidacion.sPasaSelectPut(from_stack_1v)
  loc_AA4405: LitVar_Missing var_A4
  loc_AA4408: PopAdLdVar
  loc_AA4409: LitVarI4
  loc_AA4411: PopAdLdVar
  loc_AA4412: ImpAdLdRf MemVar_D94160
  loc_AA4415: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4418: dlgBuscarTipodeLiquidacion.Show from_stack_1, from_stack_2
  loc_AA441D: FLdRfVar var_A8
  loc_AA4420: ImpAdLdRf MemVar_D94160
  loc_AA4423: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4426: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA442B: ILdRf var_A8
  loc_AA442E: LitStr vbNullString
  loc_AA4431: NeStr
  loc_AA4433: FFree1Str var_A8
  loc_AA4436: BranchF loc_AA4497
  loc_AA4439: FLdRfVar var_A8
  loc_AA443C: ImpAdLdRf MemVar_D94160
  loc_AA443F: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4442: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA4447: ILdRf var_A8
  loc_AA444A: FLdPr Me
  loc_AA444D: VCallAd Control_ID_
  loc_AA4450: FStAdFunc var_AC
  loc_AA4453: FLdPr var_AC
  loc_AA4456: dlgBuscarTipodeLiquidacion.TextBox.Text = from_stack_1
  loc_AA445B: FFree1Str var_A8
  loc_AA445E: FFree1Ad var_AC
  loc_AA4461: LitStr vbNullString
  loc_AA4464: ImpAdLdRf MemVar_D94160
  loc_AA4467: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA446A: Call dlgBuscarTipodeLiquidacion.sPasaCodigoPut(from_stack_1v)
  loc_AA446F: FLdRfVar var_A8
  loc_AA4472: ImpAdLdRf MemVar_D94160
  loc_AA4475: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4478: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaDetalleGet()
  loc_AA447D: ILdRf var_A8
  loc_AA4480: FLdPr Me
  loc_AA4483: VCallAd Control_ID_
  loc_AA4486: FStAdFunc var_AC
  loc_AA4489: FLdPr var_AC
  loc_AA448C: dlgBuscarTipodeLiquidacion.Label.Caption = from_stack_1
  loc_AA4491: FFree1Str var_A8
  loc_AA4494: FFree1Ad var_AC
  loc_AA4497: FLdPr Me
  loc_AA449A: VCallAd Control_ID_CodiTiliTxt
  loc_AA449D: CVarAd
  loc_AA44A1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA44A6: FFree1Var var_BC = ""
  loc_AA44A9: ExitProcHresult
  loc_AA44AA: ImpAdLdRf MemVar_0
End Sub

Private Function Proc_166_24_A6B334() 'A6B334
  'Data Table: 4DD0BC
  loc_A6B2C0: FLdPr Me
  loc_A6B2C3: VCallAd Control_ID_CuentasFlex
  loc_A6B2C6: FStAdFunc var_88
  loc_A6B2C9: FLdPr var_88
  loc_A6B2CC: LateIdCall
  loc_A6B2D4: LitVarI4
  loc_A6B2DC: PopAdLdVar
  loc_A6B2DD: FLdPr var_88
  loc_A6B2E0: LateIdSt
  loc_A6B2E5: LitVarI4
  loc_A6B2ED: PopAdLdVar
  loc_A6B2EE: LitVarI4
  loc_A6B2F6: PopAdLdVar
  loc_A6B2F7: LitVarStr var_D8, "Cuenta"
  loc_A6B2FC: PopAdLdVar
  loc_A6B2FD: FLdPr var_88
  loc_A6B300: LateIdCallSt
  loc_A6B308: LitVarI4
  loc_A6B310: PopAdLdVar
  loc_A6B311: LitVarI4
  loc_A6B319: PopAdLdVar
  loc_A6B31A: LitVarStr var_D8, "Apellido y Nombre"
  loc_A6B31F: PopAdLdVar
  loc_A6B320: FLdPr var_88
  loc_A6B323: LateIdCallSt
  loc_A6B32B: LitNothing
  loc_A6B32D: FStAd var_88 
  loc_A6B331: ExitProcHresult
End Function

Private Function Proc_166_25_A7A3F0() 'A7A3F0
  'Data Table: 4DD0BC
  loc_A7A370: FLdPr Me
  loc_A7A373: VCallAd Control_ID_CuentasFlex
  loc_A7A376: FStAdFunc var_88
  loc_A7A379: FLdPr var_88
  loc_A7A37C: LateIdLdVar var_98 DispID_4 0
  loc_A7A383: CI4Var
  loc_A7A385: LitI4 1
  loc_A7A38A: GtI4
  loc_A7A38B: FFree1Ad var_88
  loc_A7A38E: FFree1Var var_98 = ""
  loc_A7A391: BranchF loc_A7A3C3
  loc_A7A394: LitI2_Byte 0
  loc_A7A396: FLdPr Me
  loc_A7A399: VCallAd Control_ID_DesdeCodiInmuTxt
  loc_A7A39C: FStAdFunc var_88
  loc_A7A39F: FLdPr var_88
  loc_A7A3A2: Me.Enabled = from_stack_1b
  loc_A7A3A7: FFree1Ad var_88
  loc_A7A3AA: LitI2_Byte 0
  loc_A7A3AC: FLdPr Me
  loc_A7A3AF: VCallAd Control_ID_HastaCodiInmuTxt
  loc_A7A3B2: FStAdFunc var_88
  loc_A7A3B5: FLdPr var_88
  loc_A7A3B8: Me.Enabled = from_stack_1b
  loc_A7A3BD: FFree1Ad var_88
  loc_A7A3C0: Branch loc_A7A3EF
  loc_A7A3C3: LitI2_Byte &HFF
  loc_A7A3C5: FLdPr Me
  loc_A7A3C8: VCallAd Control_ID_DesdeCodiInmuTxt
  loc_A7A3CB: FStAdFunc var_88
  loc_A7A3CE: FLdPr var_88
  loc_A7A3D1: Me.Enabled = from_stack_1b
  loc_A7A3D6: FFree1Ad var_88
  loc_A7A3D9: LitI2_Byte &HFF
  loc_A7A3DB: FLdPr Me
  loc_A7A3DE: VCallAd Control_ID_HastaCodiInmuTxt
  loc_A7A3E1: FStAdFunc var_88
  loc_A7A3E4: FLdPr var_88
  loc_A7A3E7: Me.Enabled = from_stack_1b
  loc_A7A3EC: FFree1Ad var_88
  loc_A7A3EF: ExitProcHresult
End Function

Private Function Proc_166_26_A42244(arg_C) 'A42244
  'Data Table: 4DD0BC
  loc_A421EC: ILdI2 arg_C
  loc_A421EF: FStI2 var_86
  loc_A421F2: FLdI2 var_86
  loc_A421F5: LitI2_Byte 1
  loc_A421F7: EqI2
  loc_A421F8: BranchF loc_A4220E
  loc_A421FB: LitI2_Byte 1
  loc_A421FD: FLdPr Me
  loc_A42200: MemStI2 global_96
  loc_A42203: LitI2_Byte 2
  loc_A42205: FLdPr Me
  loc_A42208: MemStI2 global_98
  loc_A4220B: Branch loc_A42243
  loc_A4220E: FLdI2 var_86
  loc_A42211: LitI2_Byte 2
  loc_A42213: EqI2
  loc_A42214: BranchF loc_A4222A
  loc_A42217: LitI2_Byte 3
  loc_A42219: FLdPr Me
  loc_A4221C: MemStI2 global_96
  loc_A4221F: LitI2_Byte 4
  loc_A42221: FLdPr Me
  loc_A42224: MemStI2 global_98
  loc_A42227: Branch loc_A42243
  loc_A4222A: FLdI2 var_86
  loc_A4222D: LitI2_Byte 3
  loc_A4222F: EqI2
  loc_A42230: BranchF loc_A42243
  loc_A42233: LitI2_Byte 5
  loc_A42235: FLdPr Me
  loc_A42238: MemStI2 global_96
  loc_A4223B: LitI2_Byte 6
  loc_A4223D: FLdPr Me
  loc_A42240: MemStI2 global_98
  loc_A42243: ExitProcHresult
End Function
