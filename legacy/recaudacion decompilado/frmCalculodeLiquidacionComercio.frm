VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmCalculodeLiquidacionComercio
  Caption = "Calculo de liquidacion de Derechos Generales"
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
  ClientWidth = 11196
  ClientHeight = 9300
  Begin VB.CommandButton cmdSalir
    Left = 11280
    Top = 840
    Width = 975
    Height = 855
    TabIndex = 21
    Picture = "frmCalculodeLiquidacionComercio.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame1
    Caption = "CÁLCULO DE DERECHOS GENERALES 01-01-2025-vieja - 1 "
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
        Picture = "frmCalculodeLiquidacionComercio.frx":0252
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
        OleObjectBlob = "frmCalculodeLiquidacionComercio.frx":0334
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
      Picture = "frmCalculodeLiquidacionComercio.frx":0420
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiTiliTxt
      ForeColor = &HFF0000&
      Left = 2580
      Top = 2040
      Width = 495
      Height = 360
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
      Picture = "frmCalculodeLiquidacionComercio.frx":051A
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
      OleObjectBlob = "frmCalculodeLiquidacionComercio.frx":0848
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 480
      Top = 7080
      Width = 8775
      Height = 495
      Visible = 0   'False
      TabIndex = 19
      OleObjectBlob = "frmCalculodeLiquidacionComercio.frx":08F8
    End
    Begin MSMask.MaskEdBox FeanVencMsk
      Left = 7680
      Top = 3000
      Width = 1335
      Height = 345
      Visible = 0   'False
      TabIndex = 18
      OleObjectBlob = "frmCalculodeLiquidacionComercio.frx":0960
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
      Left = 405
      Top = 2040
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

Attribute VB_Name = "frmCalculodeLiquidacionComercio"


Private Sub CuentasFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A864FC
  'Data Table: 4DB9E8
  loc_A86468: ILdI2 KeyCode
  loc_A8646B: CI4UI1
  loc_A8646C: LitI4 &H2E
  loc_A86471: EqI4
  loc_A86472: BranchF loc_A864D4
  loc_A86475: FLdPr Me
  loc_A86478: VCallAd Control_ID_CuentasFlex
  loc_A8647B: FStAdFunc var_88
  loc_A8647E: FLdPr var_88
  loc_A86481: LateIdLdVar var_98 DispID_4 0
  loc_A86488: CI4Var
  loc_A8648A: LitI4 1
  loc_A8648F: GtI4
  loc_A86490: FFree1Ad var_88
  loc_A86493: FFree1Var var_98 = ""
  loc_A86496: BranchF loc_A864D4
  loc_A86499: OnErrorGoto loc_A864D4
  loc_A8649C: FLdPr Me
  loc_A8649F: VCallAd Control_ID_CuentasFlex
  loc_A864A2: FStAdFunc var_88
  loc_A864A5: FLdPr var_88
  loc_A864A8: LateIdLdVar var_98 DispID_10 0
  loc_A864AF: CI4Var
  loc_A864B1: CVarI4
  loc_A864B5: PopAdLdVar
  loc_A864B6: FLdPr Me
  loc_A864B9: VCallAd Control_ID_CuentasFlex
  loc_A864BC: FStAdFunc var_BC
  loc_A864BF: FLdPr var_BC
  loc_A864C2: LateIdCall
  loc_A864CA: FFreeAd var_88 = ""
  loc_A864D1: FFree1Var var_98 = ""
  loc_A864D4: FLdRfVar var_C0
  loc_A864D7: ImpAdCallI2 Err 'rtcErrObj
  loc_A864DC: FStAdFunc var_88
  loc_A864DF: FLdPr var_88
  loc_A864E2:  = Err.Number
  loc_A864E7: ILdRf var_C0
  loc_A864EA: LitI4 &H753F
  loc_A864EF: EqI4
  loc_A864F0: FFree1Ad var_88
  loc_A864F3: BranchF loc_A864FB
  loc_A864F6: Call Proc_307_24_A6D5FC()
  loc_A864FB: ExitProcHresult
End Sub

Private Sub HastaCodiComeTxt_GotFocus() '9C62C0
  'Data Table: 4DB9E8
  loc_9C62AC: FLdPr Me
  loc_9C62AF: VCallAd Control_ID_HastaCodiComeTxt
  loc_9C62B2: CVarAd
  loc_9C62B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C62BB: FFree1Var var_94 = ""
  loc_9C62BE: ExitProcHresult
End Sub

Private Sub HastaCodiComeTxt_KeyPress(KeyAscii As Integer) '9CA984
  'Data Table: 4DB9E8
  loc_9CA96C: LitStr "1234567890"
  loc_9CA96F: FStStrCopy var_88
  loc_9CA972: FLdRfVar var_88
  loc_9CA975: ILdRf KeyAscii
  loc_9CA978: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CA97D: IStI2 KeyAscii
  loc_9CA980: FFree1Str var_88
  loc_9CA983: ExitProcHresult
End Sub

Private Sub HastaCodiComeTxt_Validate(Cancel As Boolean) 'A813AC
  'Data Table: 4DB9E8
  loc_A81324: FLdRfVar var_8A
  loc_A81327: FLdPr Me
  loc_A8132A: VCallAd Control_ID_HastaCodiComeTxt
  loc_A8132D: FStAdFunc var_88
  loc_A81330: FLdPr var_88
  loc_A81333:  = Me.Enabled
  loc_A81338: FLdI2 var_8A
  loc_A8133B: LitI2_Byte &HFF
  loc_A8133D: EqI2
  loc_A8133E: FFree1Ad var_88
  loc_A81341: BranchF loc_A813AB
  loc_A81344: FLdRfVar var_90
  loc_A81347: FLdPr Me
  loc_A8134A: VCallAd Control_ID_HastaCodiComeTxt
  loc_A8134D: FStAdFunc var_88
  loc_A81350: FLdPr var_88
  loc_A81353:  = Me.Text
  loc_A81358: LitI2_Byte 0
  loc_A8135A: LitI2_Byte 0
  loc_A8135C: ILdRf var_90
  loc_A8135F: LitStr "Hasta Cuenta de Comercio"
  loc_A81362: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A81367: FStStrNoPop var_94
  loc_A8136A: FLdPr Me
  loc_A8136D: MemStStrCopy
  loc_A81371: FFreeStr var_90 = ""
  loc_A81378: FFree1Ad var_88
  loc_A8137B: FLdPr Me
  loc_A8137E: MemLdStr global_100
  loc_A81381: LitStr vbNullString
  loc_A81384: NeStr
  loc_A81386: BranchF loc_A813AB
  loc_A81389: FLdPr Me
  loc_A8138C: MemLdStr global_100
  loc_A8138F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A81394: FLdPr Me
  loc_A81397: VCallAd Control_ID_HastaCodiComeTxt
  loc_A8139A: CVarAd
  loc_A8139E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A813A3: FFree1Var var_A4 = ""
  loc_A813A6: LitI2_Byte &HFF
  loc_A813A8: IStI2 Cancel
  loc_A813AB: ExitProcHresult
End Sub

Private Sub DesdeCodiComeTxt_GotFocus() '9C61E8
  'Data Table: 4DB9E8
  loc_9C61D4: FLdPr Me
  loc_9C61D7: VCallAd Control_ID_DesdeCodiComeTxt
  loc_9C61DA: CVarAd
  loc_9C61DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C61E3: FFree1Var var_94 = ""
  loc_9C61E6: ExitProcHresult
End Sub

Private Sub DesdeCodiComeTxt_KeyPress(KeyAscii As Integer) '9CA9D0
  'Data Table: 4DB9E8
  loc_9CA9B8: LitStr "1234567890"
  loc_9CA9BB: FStStrCopy var_88
  loc_9CA9BE: FLdRfVar var_88
  loc_9CA9C1: ILdRf KeyAscii
  loc_9CA9C4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CA9C9: IStI2 KeyAscii
  loc_9CA9CC: FFree1Str var_88
  loc_9CA9CF: ExitProcHresult
End Sub

Private Sub DesdeCodiComeTxt_Validate(Cancel As Boolean) 'A81C44
  'Data Table: 4DB9E8
  loc_A81BBC: FLdRfVar var_8A
  loc_A81BBF: FLdPr Me
  loc_A81BC2: VCallAd Control_ID_DesdeCodiComeTxt
  loc_A81BC5: FStAdFunc var_88
  loc_A81BC8: FLdPr var_88
  loc_A81BCB:  = Me.Enabled
  loc_A81BD0: FLdI2 var_8A
  loc_A81BD3: LitI2_Byte &HFF
  loc_A81BD5: EqI2
  loc_A81BD6: FFree1Ad var_88
  loc_A81BD9: BranchF loc_A81C43
  loc_A81BDC: FLdRfVar var_90
  loc_A81BDF: FLdPr Me
  loc_A81BE2: VCallAd Control_ID_DesdeCodiComeTxt
  loc_A81BE5: FStAdFunc var_88
  loc_A81BE8: FLdPr var_88
  loc_A81BEB:  = Me.Text
  loc_A81BF0: LitI2_Byte &HFF
  loc_A81BF2: LitI2_Byte 0
  loc_A81BF4: ILdRf var_90
  loc_A81BF7: LitStr "Desde Cuenta de Comercio"
  loc_A81BFA: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A81BFF: FStStrNoPop var_94
  loc_A81C02: FLdPr Me
  loc_A81C05: MemStStrCopy
  loc_A81C09: FFreeStr var_90 = ""
  loc_A81C10: FFree1Ad var_88
  loc_A81C13: FLdPr Me
  loc_A81C16: MemLdStr global_100
  loc_A81C19: LitStr vbNullString
  loc_A81C1C: NeStr
  loc_A81C1E: BranchF loc_A81C43
  loc_A81C21: FLdPr Me
  loc_A81C24: MemLdStr global_100
  loc_A81C27: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A81C2C: FLdPr Me
  loc_A81C2F: VCallAd Control_ID_DesdeCodiComeTxt
  loc_A81C32: CVarAd
  loc_A81C36: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A81C3B: FFree1Var var_A4 = ""
  loc_A81C3E: LitI2_Byte &HFF
  loc_A81C40: IStI2 Cancel
  loc_A81C43: ExitProcHresult
End Sub

Private Sub CalculoCmd_Click() 'CFF1C0
  'Data Table: 4DB9E8
  loc_CFC024: LitI2_Byte 0
  loc_CFC026: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CFC02B: FStFPR8 var_108
  loc_CFC02E: LitI2_Byte 0
  loc_CFC030: PopTmpLdAd2 var_17A
  loc_CFC033: Call PeriLiquTxt_Validate(from_stack_1v)
  loc_CFC038: FLdPr Me
  loc_CFC03B: MemLdStr global_100
  loc_CFC03E: LitStr vbNullString
  loc_CFC041: NeStr
  loc_CFC043: BranchF loc_CFC047
  loc_CFC046: ExitProcHresult
  loc_CFC047: LitI2_Byte 0
  loc_CFC049: PopTmpLdAd2 var_17A
  loc_CFC04C: Call BimeLiquTxt_Validate(from_stack_1v)
  loc_CFC051: FLdPr Me
  loc_CFC054: MemLdStr global_100
  loc_CFC057: LitStr vbNullString
  loc_CFC05A: NeStr
  loc_CFC05C: BranchF loc_CFC060
  loc_CFC05F: ExitProcHresult
  loc_CFC060: LitI2_Byte 0
  loc_CFC062: PopTmpLdAd2 var_17A
  loc_CFC065: Call CodiTiliTxt_Validate(from_stack_1v)
  loc_CFC06A: FLdPr Me
  loc_CFC06D: MemLdStr global_100
  loc_CFC070: LitStr vbNullString
  loc_CFC073: NeStr
  loc_CFC075: BranchF loc_CFC079
  loc_CFC078: ExitProcHresult
  loc_CFC079: LitStr vbNullString
  loc_CFC07C: FStStrCopy var_160
  loc_CFC07F: LitI2_Byte 1
  loc_CFC081: FLdPr Me
  loc_CFC084: MemLdRfVar from_stack_1.global_92
  loc_CFC087: FLdPr Me
  loc_CFC08A: VCallAd Control_ID_CuentasFlex
  loc_CFC08D: FStAdFunc var_180
  loc_CFC090: FLdPr var_180
  loc_CFC093: LateIdLdVar var_190 DispID_4 0
  loc_CFC09A: CI4Var
  loc_CFC09C: LitI4 1
  loc_CFC0A1: SubI4
  loc_CFC0A2: CI2I4
  loc_CFC0A3: FFree1Ad var_180
  loc_CFC0A6: FFree1Var var_190 = ""
  loc_CFC0A9: ForI2 var_194
  loc_CFC0AF: FLdPr Me
  loc_CFC0B2: MemLdI2 global_92
  loc_CFC0B5: CI4UI1
  loc_CFC0B6: CVarI4
  loc_CFC0BA: PopAdLdVar
  loc_CFC0BB: LitVarI4
  loc_CFC0C3: PopAdLdVar
  loc_CFC0C4: FLdPr Me
  loc_CFC0C7: VCallAd Control_ID_CuentasFlex
  loc_CFC0CA: FStAdFunc var_180
  loc_CFC0CD: FLdPr var_180
  loc_CFC0D0: LateIdCallLdVar
  loc_CFC0DA: PopAd
  loc_CFC0DC: ILdRf var_160
  loc_CFC0DF: CVarStr var_27C
  loc_CFC0E2: LitStr ","
  loc_CFC0E5: FLdPr Me
  loc_CFC0E8: MemLdI2 global_92
  loc_CFC0EB: CI4UI1
  loc_CFC0EC: CVarI4
  loc_CFC0F0: PopAdLdVar
  loc_CFC0F1: LitVarI4
  loc_CFC0F9: PopAdLdVar
  loc_CFC0FA: FLdPr Me
  loc_CFC0FD: VCallAd Control_ID_CuentasFlex
  loc_CFC100: FStAdFunc var_218
  loc_CFC103: FLdPr var_218
  loc_CFC106: LateIdCallLdVar
  loc_CFC110: CStrVarTmp
  loc_CFC111: FStStrNoPop var_22C
  loc_CFC114: ConcatStr
  loc_CFC115: CVarStr var_25C
  loc_CFC118: FLdRfVar var_190
  loc_CFC11B: CStrVarTmp
  loc_CFC11C: CVarStr var_24C
  loc_CFC11F: ILdRf var_160
  loc_CFC122: LitStr vbNullString
  loc_CFC125: EqStr
  loc_CFC127: CVarBoolI2 var_23C
  loc_CFC12B: FLdRfVar var_26C
  loc_CFC12E: ImpAdCallFPR4  = IIf(, , )
  loc_CFC133: FLdRfVar var_26C
  loc_CFC136: ConcatVar var_28C
  loc_CFC13A: CStrVarTmp
  loc_CFC13B: FStStr var_160
  loc_CFC13E: FFree1Str var_22C
  loc_CFC141: FFreeAd var_180 = ""
  loc_CFC148: FFreeVar var_190 = "": var_228 = "": var_23C = "": var_24C = "": var_25C = "": var_26C = ""
  loc_CFC159: FLdPr Me
  loc_CFC15C: MemLdRfVar from_stack_1.global_92
  loc_CFC15F: NextI2 var_194, loc_CFC0AF
  loc_CFC164: LitStr "SELECT ConcTili, CoreTili, DescTili, DeanTili, GastTili, CogaTili FROM tipoliqu "
  loc_CFC167: LitStr " WHERE CodiOfic = 2"
  loc_CFC16A: ConcatStr
  loc_CFC16B: FStStrNoPop var_22C
  loc_CFC16E: LitStr " AND CodiTili = "
  loc_CFC171: ConcatStr
  loc_CFC172: FStStrNoPop var_294
  loc_CFC175: FLdRfVar var_290
  loc_CFC178: FLdPr Me
  loc_CFC17B: VCallAd Control_ID_CodiTiliTxt
  loc_CFC17E: FStAdFunc var_180
  loc_CFC181: FLdPr var_180
  loc_CFC184:  = Me.Text
  loc_CFC189: ILdRf var_290
  loc_CFC18C: ConcatStr
  loc_CFC18D: FStStrNoPop var_298
  loc_CFC190: LitStr " ORDER BY CodiOfic, CodiTili"
  loc_CFC193: ConcatStr
  loc_CFC194: FStStrNoPop var_29C
  loc_CFC197: FLdPr Me
  loc_CFC19A: MemLdRfVar from_stack_1.global_60
  loc_CFC19D: NewIfNullPr clstipoliqu
  loc_CFC1A0: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_CFC1A5: FFreeStr var_22C = "": var_294 = "": var_290 = "": var_298 = ""
  loc_CFC1B2: FFree1Ad var_180
  loc_CFC1B5: FLdRfVar var_2A0
  loc_CFC1B8: FLdPr Me
  loc_CFC1BB: MemLdRfVar from_stack_1.global_60
  loc_CFC1BE: NewIfNullPr clstipoliqu
  loc_CFC1C1: from_stack_1 = clstipoliqu.RecordCount
  loc_CFC1C6: ILdRf var_2A0
  loc_CFC1C9: LitI4 1
  loc_CFC1CE: EqI4
  loc_CFC1CF: BranchF loc_CFC2C0
  loc_CFC1D2: FLdRfVar var_2A8
  loc_CFC1D5: FLdPr Me
  loc_CFC1D8: MemLdRfVar from_stack_1.global_60
  loc_CFC1DB: NewIfNullPr clstipoliqu
  loc_CFC1DE: from_stack_1 = clstipoliqu.DescTili
  loc_CFC1E3: FLdFPR8 var_2A8
  loc_CFC1E6: FnCDblR8
  loc_CFC1E8: FStFPR8 var_AC
  loc_CFC1EB: FLdRfVar var_2A8
  loc_CFC1EE: FLdPr Me
  loc_CFC1F1: MemLdRfVar from_stack_1.global_60
  loc_CFC1F4: NewIfNullPr clstipoliqu
  loc_CFC1F7: from_stack_1 = clstipoliqu.DeanTili
  loc_CFC1FC: FLdFPR8 var_2A8
  loc_CFC1FF: FnCDblR8
  loc_CFC201: FStFPR8 var_178
  loc_CFC204: FLdRfVar var_2A8
  loc_CFC207: FLdPr Me
  loc_CFC20A: MemLdRfVar from_stack_1.global_60
  loc_CFC20D: NewIfNullPr clstipoliqu
  loc_CFC210: from_stack_1 = clstipoliqu.GastTili
  loc_CFC215: FLdFPR8 var_2A8
  loc_CFC218: FnCDblR8
  loc_CFC21A: FStFPR8 var_BC
  loc_CFC21D: FLdRfVar var_22C
  loc_CFC220: FLdPr Me
  loc_CFC223: MemLdRfVar from_stack_1.global_60
  loc_CFC226: NewIfNullPr clstipoliqu
  loc_CFC229: from_stack_1 = clstipoliqu.CogaTili
  loc_CFC22E: ILdRf var_22C
  loc_CFC231: CI2Str
  loc_CFC233: FStI2 var_BE
  loc_CFC236: FFree1Str var_22C
  loc_CFC239: FLdRfVar var_22C
  loc_CFC23C: FLdPr Me
  loc_CFC23F: MemLdRfVar from_stack_1.global_60
  loc_CFC242: NewIfNullPr clstipoliqu
  loc_CFC245: from_stack_1 = clstipoliqu.CoreTili
  loc_CFC24A: ILdRf var_22C
  loc_CFC24D: LitStr vbNullString
  loc_CFC250: EqStr
  loc_CFC252: FFree1Str var_22C
  loc_CFC255: BranchF loc_CFC264
  loc_CFC258: LitStr "El concepto de recargo no esta parametrizado en el tipo de liquidacion. Verifique"
  loc_CFC25B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CFC260: ExitProcHresult
  loc_CFC261: Branch loc_CFC27B
  loc_CFC264: FLdRfVar var_22C
  loc_CFC267: FLdPr Me
  loc_CFC26A: MemLdRfVar from_stack_1.global_60
  loc_CFC26D: NewIfNullPr clstipoliqu
  loc_CFC270: from_stack_1 = clstipoliqu.CoreTili
  loc_CFC275: FLdZeroAd var_22C
  loc_CFC278: FStStr var_CC
  loc_CFC27B: FLdRfVar var_22C
  loc_CFC27E: FLdPr Me
  loc_CFC281: MemLdRfVar from_stack_1.global_60
  loc_CFC284: NewIfNullPr clstipoliqu
  loc_CFC287: from_stack_1 = clstipoliqu.ConcTili
  loc_CFC28C: ILdRf var_22C
  loc_CFC28F: LitStr vbNullString
  loc_CFC292: EqStr
  loc_CFC294: FFree1Str var_22C
  loc_CFC297: BranchF loc_CFC2A6
  loc_CFC29A: LitStr "El concepto no esta parametrizado en el tipo de liquidacion. Verifique"
  loc_CFC29D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CFC2A2: ExitProcHresult
  loc_CFC2A3: Branch loc_CFC2BD
  loc_CFC2A6: FLdRfVar var_22C
  loc_CFC2A9: FLdPr Me
  loc_CFC2AC: MemLdRfVar from_stack_1.global_60
  loc_CFC2AF: NewIfNullPr clstipoliqu
  loc_CFC2B2: from_stack_1 = clstipoliqu.ConcTili
  loc_CFC2B7: FLdZeroAd var_22C
  loc_CFC2BA: FStStr var_D0
  loc_CFC2BD: Branch loc_CFC2D7
  loc_CFC2C0: LitI2_Byte 0
  loc_CFC2C2: CR8I2
  loc_CFC2C3: FStFPR8 var_AC
  loc_CFC2C6: LitI2_Byte 0
  loc_CFC2C8: CR8I2
  loc_CFC2C9: FStFPR8 var_178
  loc_CFC2CC: LitI2_Byte 0
  loc_CFC2CE: CR8I2
  loc_CFC2CF: FStFPR8 var_BC
  loc_CFC2D2: LitI2_Byte 0
  loc_CFC2D4: FStI2 var_BE
  loc_CFC2D7: ImpAdCallFPR4 Proc_270_19_A5AB74()
  loc_CFC2DC: FStFPR8 var_C8
  loc_CFC2DF: LitI2_Byte 0
  loc_CFC2E1: CR8I2
  loc_CFC2E2: FStFPR8 var_94
  loc_CFC2E5: FLdRfVar var_22C
  loc_CFC2E8: FLdPr Me
  loc_CFC2EB: VCallAd Control_ID_PeriLiquTxt
  loc_CFC2EE: FStAdFunc var_180
  loc_CFC2F1: FLdPr var_180
  loc_CFC2F4:  = Me.Text
  loc_CFC2F9: FLdRfVar var_290
  loc_CFC2FC: FLdPr Me
  loc_CFC2FF: VCallAd Control_ID_CodiTiliTxt
  loc_CFC302: FStAdFunc var_218
  loc_CFC305: FLdPr var_218
  loc_CFC308:  = Me.Text
  loc_CFC30D: ILdRf var_290
  loc_CFC310: CUI1Str
  loc_CFC312: ILdRf var_22C
  loc_CFC315: CI2Str
  loc_CFC317: FLdPr Me
  loc_CFC31A: MemLdRfVar from_stack_1.global_68
  loc_CFC31D: NewIfNullPr clsliqucome
  loc_CFC320: Call clsliqucome.BorraLiquidacion(from_stack_1v, from_stack_2v)
  loc_CFC325: FFreeStr var_22C = ""
  loc_CFC32C: FFreeAd var_180 = ""
  loc_CFC333: FLdRfVar var_22C
  loc_CFC336: FLdPr Me
  loc_CFC339: VCallAd Control_ID_PeriLiquTxt
  loc_CFC33C: FStAdFunc var_180
  loc_CFC33F: FLdPr var_180
  loc_CFC342:  = Me.Text
  loc_CFC347: FLdRfVar var_290
  loc_CFC34A: FLdPr Me
  loc_CFC34D: VCallAd Control_ID_CodiTiliTxt
  loc_CFC350: FStAdFunc var_218
  loc_CFC353: FLdPr var_218
  loc_CFC356:  = Me.Text
  loc_CFC35B: FLdRfVar var_17A
  loc_CFC35E: ILdRf var_290
  loc_CFC361: CUI1Str
  loc_CFC363: LitI2_Byte 2
  loc_CFC365: CUI1I2
  loc_CFC367: ILdRf var_22C
  loc_CFC36A: CI2Str
  loc_CFC36C: FLdPr Me
  loc_CFC36F: MemLdRfVar from_stack_1.global_52
  loc_CFC372: NewIfNullPr clsliquidacion
  loc_CFC375: from_stack_4v = clsliquidacion.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CFC37A: FLdI2 var_17A
  loc_CFC37D: FStI2 var_8A
  loc_CFC380: FFreeStr var_22C = ""
  loc_CFC387: FFreeAd var_180 = ""
  loc_CFC38E: FLdRfVar var_22C
  loc_CFC391: FLdPr Me
  loc_CFC394: VCallAd Control_ID_PeriLiquTxt
  loc_CFC397: FStAdFunc var_180
  loc_CFC39A: FLdPr var_180
  loc_CFC39D:  = Me.Text
  loc_CFC3A2: FLdRfVar var_290
  loc_CFC3A5: FLdPr Me
  loc_CFC3A8: VCallAd Control_ID_CodiTiliTxt
  loc_CFC3AB: FStAdFunc var_218
  loc_CFC3AE: FLdPr var_218
  loc_CFC3B1:  = Me.Text
  loc_CFC3B6: FLdRfVar var_294
  loc_CFC3B9: FLdPr Me
  loc_CFC3BC: VCallAd Control_ID_BimeLiquTxt
  loc_CFC3BF: FStAdFunc var_2AC
  loc_CFC3C2: FLdPr var_2AC
  loc_CFC3C5:  = Me.Text
  loc_CFC3CA: FLdRfVar var_17A
  loc_CFC3CD: FLdPr Me
  loc_CFC3D0: VCallAd Control_ID_CompletaOpt
  loc_CFC3D3: FStAdFunc var_2B0
  loc_CFC3D6: FLdPr var_2B0
  loc_CFC3D9:  = Me.Value
  loc_CFC3DE: LitVarI2 var_228, 1
  loc_CFC3E3: LitVarI2 var_190, 0
  loc_CFC3E8: FLdI2 var_17A
  loc_CFC3EB: LitI2_Byte &HFF
  loc_CFC3ED: EqI2
  loc_CFC3EE: CVarBoolI2 var_1A4
  loc_CFC3F2: FLdRfVar var_24C
  loc_CFC3F5: ImpAdCallFPR4  = IIf(, , )
  loc_CFC3FA: FLdRfVar var_24C
  loc_CFC3FD: CUI1Var
  loc_CFC3FF: ILdRf var_294
  loc_CFC402: CI2Str
  loc_CFC404: FLdI2 var_8A
  loc_CFC407: ILdRf var_290
  loc_CFC40A: CUI1Str
  loc_CFC40C: LitI2_Byte 2
  loc_CFC40E: CUI1I2
  loc_CFC410: ILdRf var_22C
  loc_CFC413: CI2Str
  loc_CFC415: FLdPr Me
  loc_CFC418: MemLdRfVar from_stack_1.global_52
  loc_CFC41B: NewIfNullPr clsliquidacion
  loc_CFC41E: Call clsliquidacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CFC423: FFreeStr var_22C = "": var_290 = ""
  loc_CFC42C: FFreeAd var_180 = "": var_218 = "": var_2AC = ""
  loc_CFC437: FFreeVar var_1A4 = "": var_190 = "": var_228 = ""
  loc_CFC442: ILdRf var_160
  loc_CFC445: LitStr vbNullString
  loc_CFC448: NeStr
  loc_CFC44A: BranchF loc_CFC464
  loc_CFC44D: LitStr " WHERE comercio.CodiCome IN ("
  loc_CFC450: ILdRf var_160
  loc_CFC453: ConcatStr
  loc_CFC454: FStStrNoPop var_22C
  loc_CFC457: LitStr ")"
  loc_CFC45A: ConcatStr
  loc_CFC45B: FStStr var_164
  loc_CFC45E: FFree1Str var_22C
  loc_CFC461: Branch loc_CFC4B6
  loc_CFC464: LitStr " WHERE comercio.CodiCome >= "
  loc_CFC467: FLdRfVar var_22C
  loc_CFC46A: FLdPr Me
  loc_CFC46D: VCallAd Control_ID_DesdeCodiComeTxt
  loc_CFC470: FStAdFunc var_180
  loc_CFC473: FLdPr var_180
  loc_CFC476:  = Me.Text
  loc_CFC47B: ILdRf var_22C
  loc_CFC47E: ConcatStr
  loc_CFC47F: FStStrNoPop var_290
  loc_CFC482: LitStr " AND comercio.CodiCome <= "
  loc_CFC485: ConcatStr
  loc_CFC486: FStStrNoPop var_298
  loc_CFC489: FLdRfVar var_294
  loc_CFC48C: FLdPr Me
  loc_CFC48F: VCallAd Control_ID_HastaCodiComeTxt
  loc_CFC492: FStAdFunc var_218
  loc_CFC495: FLdPr var_218
  loc_CFC498:  = Me.Text
  loc_CFC49D: ILdRf var_294
  loc_CFC4A0: ConcatStr
  loc_CFC4A1: FStStr var_164
  loc_CFC4A4: FFreeStr var_22C = "": var_290 = "": var_298 = ""
  loc_CFC4AF: FFreeAd var_180 = ""
  loc_CFC4B6: FLdPr Me
  loc_CFC4B9: MemLdI2 global_94
  loc_CFC4BC: FLdPr Me
  loc_CFC4BF: MemLdRfVar from_stack_1.global_92
  loc_CFC4C2: FLdPr Me
  loc_CFC4C5: MemLdI2 global_96
  loc_CFC4C8: ForI2 var_2B4
  loc_CFC4CE: FLdPr Me
  loc_CFC4D1: MemLdI2 global_92
  loc_CFC4D4: FStI2 var_2B6
  loc_CFC4D7: FLdI2 var_2B6
  loc_CFC4DA: LitI2_Byte 1
  loc_CFC4DC: EqI2
  loc_CFC4DD: BranchF loc_CFC537
  loc_CFC4E0: FLdRfVar var_22C
  loc_CFC4E3: FLdPr Me
  loc_CFC4E6: VCallAd Control_ID_PeriLiquTxt
  loc_CFC4E9: FStAdFunc var_180
  loc_CFC4EC: FLdPr var_180
  loc_CFC4EF:  = Me.Text
  loc_CFC4F4: FLdRfVar var_290
  loc_CFC4F7: FLdPr Me
  loc_CFC4FA: VCallAd Control_ID_CodiTiliTxt
  loc_CFC4FD: FStAdFunc var_218
  loc_CFC500: FLdPr var_218
  loc_CFC503:  = Me.Text
  loc_CFC508: ILdRf var_290
  loc_CFC50B: CUI1Str
  loc_CFC50D: LitI2_Byte 1
  loc_CFC50F: CUI1I2
  loc_CFC511: FLdPr Me
  loc_CFC514: MemLdI2 global_92
  loc_CFC517: CUI1I2
  loc_CFC519: ILdRf var_22C
  loc_CFC51C: CI2Str
  loc_CFC51E: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CFC523: FStStr var_11C
  loc_CFC526: FFreeStr var_22C = ""
  loc_CFC52D: FFreeAd var_180 = ""
  loc_CFC534: Branch loc_CFC714
  loc_CFC537: FLdI2 var_2B6
  loc_CFC53A: LitI2_Byte 2
  loc_CFC53C: EqI2
  loc_CFC53D: BranchF loc_CFC597
  loc_CFC540: FLdRfVar var_22C
  loc_CFC543: FLdPr Me
  loc_CFC546: VCallAd Control_ID_PeriLiquTxt
  loc_CFC549: FStAdFunc var_180
  loc_CFC54C: FLdPr var_180
  loc_CFC54F:  = Me.Text
  loc_CFC554: FLdRfVar var_290
  loc_CFC557: FLdPr Me
  loc_CFC55A: VCallAd Control_ID_CodiTiliTxt
  loc_CFC55D: FStAdFunc var_218
  loc_CFC560: FLdPr var_218
  loc_CFC563:  = Me.Text
  loc_CFC568: ILdRf var_290
  loc_CFC56B: CUI1Str
  loc_CFC56D: LitI2_Byte 1
  loc_CFC56F: CUI1I2
  loc_CFC571: FLdPr Me
  loc_CFC574: MemLdI2 global_92
  loc_CFC577: CUI1I2
  loc_CFC579: ILdRf var_22C
  loc_CFC57C: CI2Str
  loc_CFC57E: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CFC583: FStStr var_120
  loc_CFC586: FFreeStr var_22C = ""
  loc_CFC58D: FFreeAd var_180 = ""
  loc_CFC594: Branch loc_CFC714
  loc_CFC597: FLdI2 var_2B6
  loc_CFC59A: LitI2_Byte 3
  loc_CFC59C: EqI2
  loc_CFC59D: BranchF loc_CFC5F7
  loc_CFC5A0: FLdRfVar var_22C
  loc_CFC5A3: FLdPr Me
  loc_CFC5A6: VCallAd Control_ID_PeriLiquTxt
  loc_CFC5A9: FStAdFunc var_180
  loc_CFC5AC: FLdPr var_180
  loc_CFC5AF:  = Me.Text
  loc_CFC5B4: FLdRfVar var_290
  loc_CFC5B7: FLdPr Me
  loc_CFC5BA: VCallAd Control_ID_CodiTiliTxt
  loc_CFC5BD: FStAdFunc var_218
  loc_CFC5C0: FLdPr var_218
  loc_CFC5C3:  = Me.Text
  loc_CFC5C8: ILdRf var_290
  loc_CFC5CB: CUI1Str
  loc_CFC5CD: LitI2_Byte 1
  loc_CFC5CF: CUI1I2
  loc_CFC5D1: FLdPr Me
  loc_CFC5D4: MemLdI2 global_92
  loc_CFC5D7: CUI1I2
  loc_CFC5D9: ILdRf var_22C
  loc_CFC5DC: CI2Str
  loc_CFC5DE: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CFC5E3: FStStr var_124
  loc_CFC5E6: FFreeStr var_22C = ""
  loc_CFC5ED: FFreeAd var_180 = ""
  loc_CFC5F4: Branch loc_CFC714
  loc_CFC5F7: FLdI2 var_2B6
  loc_CFC5FA: LitI2_Byte 4
  loc_CFC5FC: EqI2
  loc_CFC5FD: BranchF loc_CFC657
  loc_CFC600: FLdRfVar var_22C
  loc_CFC603: FLdPr Me
  loc_CFC606: VCallAd Control_ID_PeriLiquTxt
  loc_CFC609: FStAdFunc var_180
  loc_CFC60C: FLdPr var_180
  loc_CFC60F:  = Me.Text
  loc_CFC614: FLdRfVar var_290
  loc_CFC617: FLdPr Me
  loc_CFC61A: VCallAd Control_ID_CodiTiliTxt
  loc_CFC61D: FStAdFunc var_218
  loc_CFC620: FLdPr var_218
  loc_CFC623:  = Me.Text
  loc_CFC628: ILdRf var_290
  loc_CFC62B: CUI1Str
  loc_CFC62D: LitI2_Byte 1
  loc_CFC62F: CUI1I2
  loc_CFC631: FLdPr Me
  loc_CFC634: MemLdI2 global_92
  loc_CFC637: CUI1I2
  loc_CFC639: ILdRf var_22C
  loc_CFC63C: CI2Str
  loc_CFC63E: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CFC643: FStStr var_128
  loc_CFC646: FFreeStr var_22C = ""
  loc_CFC64D: FFreeAd var_180 = ""
  loc_CFC654: Branch loc_CFC714
  loc_CFC657: FLdI2 var_2B6
  loc_CFC65A: LitI2_Byte 5
  loc_CFC65C: EqI2
  loc_CFC65D: BranchF loc_CFC6B7
  loc_CFC660: FLdRfVar var_22C
  loc_CFC663: FLdPr Me
  loc_CFC666: VCallAd Control_ID_PeriLiquTxt
  loc_CFC669: FStAdFunc var_180
  loc_CFC66C: FLdPr var_180
  loc_CFC66F:  = Me.Text
  loc_CFC674: FLdRfVar var_290
  loc_CFC677: FLdPr Me
  loc_CFC67A: VCallAd Control_ID_CodiTiliTxt
  loc_CFC67D: FStAdFunc var_218
  loc_CFC680: FLdPr var_218
  loc_CFC683:  = Me.Text
  loc_CFC688: ILdRf var_290
  loc_CFC68B: CUI1Str
  loc_CFC68D: LitI2_Byte 1
  loc_CFC68F: CUI1I2
  loc_CFC691: FLdPr Me
  loc_CFC694: MemLdI2 global_92
  loc_CFC697: CUI1I2
  loc_CFC699: ILdRf var_22C
  loc_CFC69C: CI2Str
  loc_CFC69E: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CFC6A3: FStStr var_12C
  loc_CFC6A6: FFreeStr var_22C = ""
  loc_CFC6AD: FFreeAd var_180 = ""
  loc_CFC6B4: Branch loc_CFC714
  loc_CFC6B7: FLdI2 var_2B6
  loc_CFC6BA: LitI2_Byte 6
  loc_CFC6BC: EqI2
  loc_CFC6BD: BranchF loc_CFC714
  loc_CFC6C0: FLdRfVar var_22C
  loc_CFC6C3: FLdPr Me
  loc_CFC6C6: VCallAd Control_ID_PeriLiquTxt
  loc_CFC6C9: FStAdFunc var_180
  loc_CFC6CC: FLdPr var_180
  loc_CFC6CF:  = Me.Text
  loc_CFC6D4: FLdRfVar var_290
  loc_CFC6D7: FLdPr Me
  loc_CFC6DA: VCallAd Control_ID_CodiTiliTxt
  loc_CFC6DD: FStAdFunc var_218
  loc_CFC6E0: FLdPr var_218
  loc_CFC6E3:  = Me.Text
  loc_CFC6E8: ILdRf var_290
  loc_CFC6EB: CUI1Str
  loc_CFC6ED: LitI2_Byte 1
  loc_CFC6EF: CUI1I2
  loc_CFC6F1: FLdPr Me
  loc_CFC6F4: MemLdI2 global_92
  loc_CFC6F7: CUI1I2
  loc_CFC6F9: ILdRf var_22C
  loc_CFC6FC: CI2Str
  loc_CFC6FE: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CFC703: FStStr var_130
  loc_CFC706: FFreeStr var_22C = ""
  loc_CFC70D: FFreeAd var_180 = ""
  loc_CFC714: FLdPr Me
  loc_CFC717: MemLdRfVar from_stack_1.global_92
  loc_CFC71A: NextI2 var_2B4, loc_CFC4CE
  loc_CFC71F: FLdRfVar var_17A
  loc_CFC722: FLdPr Me
  loc_CFC725: VCallAd Control_ID_ParcialOpt
  loc_CFC728: FStAdFunc var_180
  loc_CFC72B: FLdPr var_180
  loc_CFC72E:  = Me.Value
  loc_CFC733: FLdI2 var_17A
  loc_CFC736: LitI2_Byte &HFF
  loc_CFC738: EqI2
  loc_CFC739: FFree1Ad var_180
  loc_CFC73C: BranchF loc_CFC73F
  loc_CFC73F: FLdRfVar var_17A
  loc_CFC742: FLdPr Me
  loc_CFC745: VCallAd Control_ID_CompletaOpt
  loc_CFC748: FStAdFunc var_180
  loc_CFC74B: FLdPr var_180
  loc_CFC74E:  = Me.Value
  loc_CFC753: FLdI2 var_17A
  loc_CFC756: LitI2_Byte &HFF
  loc_CFC758: EqI2
  loc_CFC759: FFree1Ad var_180
  loc_CFC75C: BranchF loc_CFC7A0
  loc_CFC75F: LitStr "SELECT comercio.CodiCome, CucuPers, CodiExce, FfexCome, CodiLoca, FeapCome, "
  loc_CFC762: LitStr " comercio.CodiRuta "
  loc_CFC765: ConcatStr
  loc_CFC766: FStStrNoPop var_22C
  loc_CFC769: LitStr " FROM comercio "
  loc_CFC76C: ConcatStr
  loc_CFC76D: FStStrNoPop var_290
  loc_CFC770: ILdRf var_164
  loc_CFC773: ConcatStr
  loc_CFC774: FStStrNoPop var_294
  loc_CFC777: LitStr " AND comercio.CodiEsco = 1"
  loc_CFC77A: ConcatStr
  loc_CFC77B: FStStrNoPop var_298
  loc_CFC77E: LitStr " ORDER BY comercio.CodiCome"
  loc_CFC781: ConcatStr
  loc_CFC782: FStStrNoPop var_29C
  loc_CFC785: FLdPr Me
  loc_CFC788: MemLdRfVar from_stack_1.global_56
  loc_CFC78B: NewIfNullPr clscomercio
  loc_CFC78E: Call clscomercio.RedefineRS(from_stack_1v)
  loc_CFC793: FFreeStr var_22C = "": var_290 = "": var_294 = "": var_298 = ""
  loc_CFC7A0: FLdRfVar var_2A0
  loc_CFC7A3: FLdPr Me
  loc_CFC7A6: MemLdRfVar from_stack_1.global_56
  loc_CFC7A9: NewIfNullPr clscomercio
  loc_CFC7AC: from_stack_1 = clscomercio.RecordCount
  loc_CFC7B1: ILdRf var_2A0
  loc_CFC7B4: LitI4 0
  loc_CFC7B9: GtI4
  loc_CFC7BA: BranchF loc_CFF15E
  loc_CFC7BD: LitI2_Byte &HB
  loc_CFC7BF: FLdPr Me
  loc_CFC7C2: Me.MousePointer = from_stack_1
  loc_CFC7C7: LitI4 0
  loc_CFC7CC: LitI4 0
  loc_CFC7D1: FLdRfVar var_2BC
  loc_CFC7D4: Redim
  loc_CFC7DE: FLdPr Me
  loc_CFC7E1: VCallAd Control_ID_CalculoCmd
  loc_CFC7E4: CVarAd
  loc_CFC7E8: ParmAry1St
  loc_CFC7EE: FLdRfVar var_2BC
  loc_CFC7F1: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CFC7F6: FLdRfVar var_2BC
  loc_CFC7F9: Erase
  loc_CFC7FA: LitVar_TRUE var_1A4
  loc_CFC7FD: PopAdLdVar
  loc_CFC7FE: FLdPr Me
  loc_CFC801: VCallAd Control_ID_ProgressBar
  loc_CFC804: FStAdFunc var_180
  loc_CFC807: FLdPr var_180
  loc_CFC80A: LateIdSt
  loc_CFC80F: FFree1Ad var_180
  loc_CFC812: LitI2_Byte 0
  loc_CFC814: CR8I2
  loc_CFC815: CVarR4
  loc_CFC819: PopAdLdVar
  loc_CFC81A: FLdPr Me
  loc_CFC81D: VCallAd Control_ID_ProgressBar
  loc_CFC820: FStAdFunc var_180
  loc_CFC823: FLdPr var_180
  loc_CFC826: LateIdSt
  loc_CFC82B: FFree1Ad var_180
  loc_CFC82E: FLdRfVar var_2A0
  loc_CFC831: FLdPr Me
  loc_CFC834: MemLdRfVar from_stack_1.global_56
  loc_CFC837: NewIfNullPr clscomercio
  loc_CFC83A: from_stack_1 = clscomercio.RecordCount
  loc_CFC83F: ILdRf var_2A0
  loc_CFC842: CR8I4
  loc_CFC843: CVarR4
  loc_CFC847: PopAdLdVar
  loc_CFC848: FLdPr Me
  loc_CFC84B: VCallAd Control_ID_ProgressBar
  loc_CFC84E: FStAdFunc var_180
  loc_CFC851: FLdPr var_180
  loc_CFC854: LateIdSt
  loc_CFC859: FFree1Ad var_180
  loc_CFC85C: LitI2_Byte 0
  loc_CFC85E: CR8I2
  loc_CFC85F: CVarR4
  loc_CFC863: PopAdLdVar
  loc_CFC864: FLdPr Me
  loc_CFC867: VCallAd Control_ID_ProgressBar
  loc_CFC86A: FStAdFunc var_180
  loc_CFC86D: FLdPr var_180
  loc_CFC870: LateIdSt
  loc_CFC875: FFree1Ad var_180
  loc_CFC878: LitI4 0
  loc_CFC87D: FStR4 var_88
  loc_CFC880: FLdPr Me
  loc_CFC883: MemLdRfVar from_stack_1.global_56
  loc_CFC886: NewIfNullPr clscomercio
  loc_CFC889: Call clscomercio.MoveFirst()
  loc_CFC88E: FLdRfVar var_17A
  loc_CFC891: FLdPr Me
  loc_CFC894: MemLdRfVar from_stack_1.global_56
  loc_CFC897: NewIfNullPr clscomercio
  loc_CFC89A: from_stack_1 = clscomercio.EOF
  loc_CFC89F: FLdI2 var_17A
  loc_CFC8A2: NotI4
  loc_CFC8A3: BranchF loc_CFF15E
  loc_CFC8A6: ILdRf var_88
  loc_CFC8A9: CR8I4
  loc_CFC8AA: CVarR4
  loc_CFC8AE: PopAdLdVar
  loc_CFC8AF: FLdPr Me
  loc_CFC8B2: VCallAd Control_ID_ProgressBar
  loc_CFC8B5: FStAdFunc var_180
  loc_CFC8B8: FLdPr var_180
  loc_CFC8BB: LateIdSt
  loc_CFC8C0: FFree1Ad var_180
  loc_CFC8C3: ILdRf var_88
  loc_CFC8C6: LitI4 1
  loc_CFC8CB: AddI4
  loc_CFC8CC: FStR4 var_88
  loc_CFC8CF: LitStr "SELECT CocrPers, NurePers, DecrPers, CobrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers FROM infogov.persona"
  loc_CFC8D2: LitStr " WHERE infogov.persona.CucuPers = "
  loc_CFC8D5: ConcatStr
  loc_CFC8D6: CVarStr var_228
  loc_CFC8D9: FLdRfVar var_190
  loc_CFC8DC: FLdRfVar var_2AC
  loc_CFC8DF: LitVarStr var_1A4, "CucuPers"
  loc_CFC8E4: PopAdLdVar
  loc_CFC8E5: FLdRfVar var_218
  loc_CFC8E8: FLdRfVar var_180
  loc_CFC8EB: FLdPr Me
  loc_CFC8EE: MemLdRfVar from_stack_1.global_56
  loc_CFC8F1: NewIfNullPr clscomercio
  loc_CFC8F4: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFC8F9: FLdPr var_180
  loc_CFC8FC:  = Me.Fields
  loc_CFC901: FLdPr var_218
  loc_CFC904: from_stack_2 = Me.Item(from_stack_1)
  loc_CFC909: FLdPr var_2AC
  loc_CFC90C:  = Me.Value
  loc_CFC911: FLdRfVar var_190
  loc_CFC914: ConcatVar var_24C
  loc_CFC918: LitVarStr var_1B4, " ORDER BY CucuPers"
  loc_CFC91D: ConcatVar var_25C
  loc_CFC921: CStrVarVal var_22C
  loc_CFC925: FLdPr Me
  loc_CFC928: MemLdRfVar from_stack_1.global_72
  loc_CFC92B: NewIfNullPr clspersonas
  loc_CFC92E: Call clspersonas.RedefineRS(from_stack_1v)
  loc_CFC933: FFree1Str var_22C
  loc_CFC936: FFreeAd var_180 = "": var_218 = ""
  loc_CFC93F: FFreeVar var_228 = "": var_190 = "": var_24C = ""
  loc_CFC94A: FLdRfVar var_190
  loc_CFC94D: FLdRfVar var_2AC
  loc_CFC950: LitVarStr var_1A4, "CodiCome"
  loc_CFC955: PopAdLdVar
  loc_CFC956: FLdRfVar var_218
  loc_CFC959: FLdRfVar var_180
  loc_CFC95C: FLdPr Me
  loc_CFC95F: MemLdRfVar from_stack_1.global_56
  loc_CFC962: NewIfNullPr clscomercio
  loc_CFC965: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFC96A: FLdPr var_180
  loc_CFC96D:  = Me.Fields
  loc_CFC972: FLdPr var_218
  loc_CFC975: from_stack_2 = Me.Item(from_stack_1)
  loc_CFC97A: FLdPr var_2AC
  loc_CFC97D:  = Me.Value
  loc_CFC982: FLdRfVar var_17A
  loc_CFC985: FLdRfVar var_190
  loc_CFC988: CStrVarTmp
  loc_CFC989: FStStrNoPop var_22C
  loc_CFC98C: LitI2_Byte 2
  loc_CFC98E: CUI1I2
  loc_CFC990: FLdPr Me
  loc_CFC993: MemLdRfVar from_stack_1.global_64
  loc_CFC996: NewIfNullPr clsrelacion
  loc_CFC999: from_stack_3v = clsrelacion.BuscaDatosRelacion(from_stack_1v, from_stack_2v)
  loc_CFC99E: FLdI2 var_17A
  loc_CFC9A1: LitI2_Byte &HFF
  loc_CFC9A3: EqI2
  loc_CFC9A4: FFree1Str var_22C
  loc_CFC9A7: FFreeAd var_180 = "": var_218 = ""
  loc_CFC9B0: FFree1Var var_190 = ""
  loc_CFC9B3: BranchF loc_CFF04D
  loc_CFC9B6: FLdRfVar var_190
  loc_CFC9B9: FLdRfVar var_2AC
  loc_CFC9BC: LitVarStr var_1A4, "CodiCome"
  loc_CFC9C1: PopAdLdVar
  loc_CFC9C2: FLdRfVar var_218
  loc_CFC9C5: FLdRfVar var_180
  loc_CFC9C8: FLdPr Me
  loc_CFC9CB: MemLdRfVar from_stack_1.global_56
  loc_CFC9CE: NewIfNullPr clscomercio
  loc_CFC9D1: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFC9D6: FLdPr var_180
  loc_CFC9D9:  = Me.Fields
  loc_CFC9DE: FLdPr var_218
  loc_CFC9E1: from_stack_2 = Me.Item(from_stack_1)
  loc_CFC9E6: FLdPr var_2AC
  loc_CFC9E9:  = Me.Value
  loc_CFC9EE: LitStr "31/12/"
  loc_CFC9F1: LitI2 2025
  loc_CFC9F4: CStrUI1
  loc_CFC9F6: FStStrNoPop var_22C
  loc_CFC9F9: ConcatStr
  loc_CFC9FA: FStStrNoPop var_294
  loc_CFC9FD: FLdRfVar var_190
  loc_CFCA00: CStrVarTmp
  loc_CFCA01: FStStrNoPop var_290
  loc_CFCA04: LitI2_Byte 2
  loc_CFCA06: CUI1I2
  loc_CFCA08: ImpAdCallFPR4  = Proc_270_104_B20D90(, )
  loc_CFCA0D: FStFPR8 var_A4
  loc_CFCA10: FFreeStr var_22C = "": var_290 = ""
  loc_CFCA19: FFreeAd var_180 = "": var_218 = ""
  loc_CFCA22: FFree1Var var_190 = ""
  loc_CFCA25: FLdRfVar var_190
  loc_CFCA28: FLdRfVar var_2AC
  loc_CFCA2B: LitVarStr var_1A4, "CodiCome"
  loc_CFCA30: PopAdLdVar
  loc_CFCA31: FLdRfVar var_218
  loc_CFCA34: FLdRfVar var_180
  loc_CFCA37: FLdPr Me
  loc_CFCA3A: MemLdRfVar from_stack_1.global_56
  loc_CFCA3D: NewIfNullPr clscomercio
  loc_CFCA40: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFCA45: FLdPr var_180
  loc_CFCA48:  = Me.Fields
  loc_CFCA4D: FLdPr var_218
  loc_CFCA50: from_stack_2 = Me.Item(from_stack_1)
  loc_CFCA55: FLdPr var_2AC
  loc_CFCA58:  = Me.Value
  loc_CFCA5D: FLdRfVar var_2A8
  loc_CFCA60: FLdRfVar var_190
  loc_CFCA63: CStrVarTmp
  loc_CFCA64: FStStrNoPop var_22C
  loc_CFCA67: LitI2_Byte 2
  loc_CFCA69: FLdPr Me
  loc_CFCA6C: MemLdRfVar from_stack_1.global_80
  loc_CFCA6F: NewIfNullPr clsrecabole
  loc_CFCA72: from_stack_3v = clsrecabole.BuscaImporteRecabole(from_stack_1v, from_stack_2v)
  loc_CFCA77: FLdFPR8 var_2A8
  loc_CFCA7A: FStFPR8 var_F0
  loc_CFCA7D: FFree1Str var_22C
  loc_CFCA80: FFreeAd var_180 = "": var_218 = ""
  loc_CFCA89: FFree1Var var_190 = ""
  loc_CFCA8C: LitI2_Byte 0
  loc_CFCA8E: CR8I2
  loc_CFCA8F: FStFPR8 var_15C
  loc_CFCA92: LitI2_Byte 0
  loc_CFCA94: CR8I2
  loc_CFCA95: FStFPR8 var_E0
  loc_CFCA98: LitI2_Byte 0
  loc_CFCA9A: CR8I2
  loc_CFCA9B: FStFPR8 var_E8
  loc_CFCA9E: LitI2_Byte 0
  loc_CFCAA0: CR8I2
  loc_CFCAA1: FStFPR8 var_B4
  loc_CFCAA4: LitStr "SELECT IFNULL(MAX(t.Importe* s.CantSeco),0) INTO @v_MaxImporte"
  loc_CFCAA7: LitStr " FROM servcome s"
  loc_CFCAAA: ConcatStr
  loc_CFCAAB: FStStrNoPop var_22C
  loc_CFCAAE: LitStr " INNER JOIN subrubro su ON su.CodiRamo = s.CodiRamo"
  loc_CFCAB1: ConcatStr
  loc_CFCAB2: FStStrNoPop var_290
  loc_CFCAB5: LitStr " AND su.CodiRubr = s.CodiRubr AND su.CodiSubr = s.CodiSubr"
  loc_CFCAB8: ConcatStr
  loc_CFCAB9: FStStrNoPop var_294
  loc_CFCABC: LitStr " AND su.PeriOrde = YEAR(NOW())"
  loc_CFCABF: ConcatStr
  loc_CFCAC0: FStStrNoPop var_298
  loc_CFCAC3: LitStr " LEFT JOIN tarifariacomercio t ON t.PeriInfo = su.PeriOrde"
  loc_CFCAC6: ConcatStr
  loc_CFCAC7: FStStrNoPop var_29C
  loc_CFCACA: LitStr " AND t.CodiRamo = su.CodiRamo AND t.CodiRubr = su.CodiRubr"
  loc_CFCACD: ConcatStr
  loc_CFCACE: FStStrNoPop var_2C0
  loc_CFCAD1: LitStr " AND t.CodiRubr = su.CodiRubr AND t.CodiSubr = su.CodiSubr"
  loc_CFCAD4: ConcatStr
  loc_CFCAD5: FStStrNoPop var_2C4
  loc_CFCAD8: LitStr " AND t.Categoria = s.CateSeco"
  loc_CFCADB: ConcatStr
  loc_CFCADC: FStStrNoPop var_2C8
  loc_CFCADF: LitStr " WHERE s.CodiCome = "
  loc_CFCAE2: ConcatStr
  loc_CFCAE3: CVarStr var_228
  loc_CFCAE6: FLdRfVar var_190
  loc_CFCAE9: FLdRfVar var_2AC
  loc_CFCAEC: LitVarStr var_1A4, "CodiCome"
  loc_CFCAF1: PopAdLdVar
  loc_CFCAF2: FLdRfVar var_218
  loc_CFCAF5: FLdRfVar var_180
  loc_CFCAF8: FLdPr Me
  loc_CFCAFB: MemLdRfVar from_stack_1.global_56
  loc_CFCAFE: NewIfNullPr clscomercio
  loc_CFCB01: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFCB06: FLdPr var_180
  loc_CFCB09:  = Me.Fields
  loc_CFCB0E: FLdPr var_218
  loc_CFCB11: from_stack_2 = Me.Item(from_stack_1)
  loc_CFCB16: FLdPr var_2AC
  loc_CFCB19:  = Me.Value
  loc_CFCB1E: FLdRfVar var_190
  loc_CFCB21: ConcatVar var_24C
  loc_CFCB25: LitVarStr var_1B4, " AND s.BajaFeho IS NULL AND s.FebaSeco IS NULL;"
  loc_CFCB2A: ConcatVar var_25C
  loc_CFCB2E: CStrVarVal var_2CC
  loc_CFCB32: FLdPr Me
  loc_CFCB35: MemLdRfVar from_stack_1.global_76
  loc_CFCB38: NewIfNullPr clsservcome
  loc_CFCB3B: Call clsservcome.RedefineRS(from_stack_1v)
  loc_CFCB40: FFreeStr var_22C = "": var_290 = "": var_294 = "": var_298 = "": var_29C = "": var_2C0 = "": var_2C4 = "": var_2C8 = ""
  loc_CFCB55: FFreeAd var_180 = "": var_218 = ""
  loc_CFCB5E: FFreeVar var_228 = "": var_190 = "": var_24C = ""
  loc_CFCB69: LitStr " SELECT UntrPage INTO @v_UntrPage FROM recaudacion.paragene LIMIT 1;"
  loc_CFCB6C: FLdPr Me
  loc_CFCB6F: MemLdRfVar from_stack_1.global_76
  loc_CFCB72: NewIfNullPr clsservcome
  loc_CFCB75: Call clsservcome.RedefineRS(from_stack_1v)
  loc_CFCB7A: LitStr " SELECT s.CodiCome, s.CodiRamo, s.CodiRubr, su.PeriOrde, s.CodiSubr, s.PrioSeco,"
  loc_CFCB7D: LitStr " s.FealSeco, s.ExalSeco, s.FebaSeco, s.ExbaSeco, s.MobaSeco, s.AcprSeco,"
  loc_CFCB80: ConcatStr
  loc_CFCB81: FStStrNoPop var_22C
  loc_CFCB84: LitStr " s.LiquSeco, s.CantSeco, s.CateSeco, s.ObseSeco, s.AltaUsua,"
  loc_CFCB87: ConcatStr
  loc_CFCB88: FStStrNoPop var_290
  loc_CFCB8B: LitStr " r.DetaRamo, ru.DetaRubr, su.DetaSubr, IFNULL(t.Importe, 0) UTM, IFNULL(tp.Porcentaje, 0) Porc, @v_UntrPage,"
  loc_CFCB8E: ConcatStr
  loc_CFCB8F: FStStrNoPop var_294
  loc_CFCB92: LitStr " ROUND(IF(ru.CodiRubr IN('I', 'M', 'H'),@v_MaxImporte * @v_UntrPage * tp.Porcentaje,IF(ru.CodiRubr IN('Q', 'U'), su.ImpoSubr, t.Importe * @v_UntrPage)), 2) AS ImpoSubr,"
  loc_CFCB95: ConcatStr
  loc_CFCB96: FStStrNoPop var_298
  loc_CFCB99: LitStr " IFNULL(ROUND(IF(ru.CodiRubr IN('I', 'M', 'H'),@v_MaxImporte * @v_UntrPage * tp.Porcentaje,IF(ru.CodiRubr IN('Q', 'U'), su.ImpoSubr * s.CantSeco * @v_UntrPage, t.Importe * @v_UntrPage * s.CantSeco)), 2),0) AS SubTotal, s.BoclSeco"
  loc_CFCB9C: ConcatStr
  loc_CFCB9D: FStStrNoPop var_29C
  loc_CFCBA0: LitStr " FROM servcome s"
  loc_CFCBA3: ConcatStr
  loc_CFCBA4: FStStrNoPop var_2C0
  loc_CFCBA7: LitStr " INNER JOIN ramo r ON r.CodiRamo = s.CodiRamo"
  loc_CFCBAA: ConcatStr
  loc_CFCBAB: FStStrNoPop var_2C4
  loc_CFCBAE: LitStr " INNER JOIN rubro ru ON ru.CodiRamo = s.CodiRamo AND ru.CodiRubr = s.CodiRubr"
  loc_CFCBB1: ConcatStr
  loc_CFCBB2: FStStrNoPop var_2C8
  loc_CFCBB5: LitStr " INNER JOIN subrubro su ON su.CodiSubr = s.CodiSubr"
  loc_CFCBB8: ConcatStr
  loc_CFCBB9: FStStrNoPop var_2CC
  loc_CFCBBC: LitStr " AND su.CodiRamo = s.CodiRamo"
  loc_CFCBBF: ConcatStr
  loc_CFCBC0: FStStrNoPop var_2D0
  loc_CFCBC3: LitStr " AND su.CodiRubr = s.CodiRubr"
  loc_CFCBC6: ConcatStr
  loc_CFCBC7: FStStrNoPop var_2D4
  loc_CFCBCA: LitStr " AND su.PeriOrde = YEAR(NOW())"
  loc_CFCBCD: ConcatStr
  loc_CFCBCE: FStStrNoPop var_2D8
  loc_CFCBD1: LitStr " LEFT JOIN tarifariacomercio t ON t.PeriInfo = su.PeriOrde"
  loc_CFCBD4: ConcatStr
  loc_CFCBD5: FStStrNoPop var_2DC
  loc_CFCBD8: LitStr " AND t.CodiRamo = su.CodiRamo"
  loc_CFCBDB: ConcatStr
  loc_CFCBDC: FStStrNoPop var_2E0
  loc_CFCBDF: LitStr " AND t.CodiRubr = su.CodiRubr"
  loc_CFCBE2: ConcatStr
  loc_CFCBE3: FStStrNoPop var_2E4
  loc_CFCBE6: LitStr " AND t.CodiSubr = su.CodiSubr"
  loc_CFCBE9: ConcatStr
  loc_CFCBEA: FStStrNoPop var_2E8
  loc_CFCBED: LitStr " AND t.Categoria = s.CateSeco"
  loc_CFCBF0: ConcatStr
  loc_CFCBF1: FStStrNoPop var_2EC
  loc_CFCBF4: LitStr " LEFT JOIN tarifariaporcentajes tp ON tp.PeriInfo = su.PeriOrde"
  loc_CFCBF7: ConcatStr
  loc_CFCBF8: FStStrNoPop var_2F0
  loc_CFCBFB: LitStr " AND tp.CodiRamo = su.CodiRamo"
  loc_CFCBFE: ConcatStr
  loc_CFCBFF: FStStrNoPop var_2F4
  loc_CFCC02: LitStr " AND tp.CodiRubr = su.CodiRubr"
  loc_CFCC05: ConcatStr
  loc_CFCC06: FStStrNoPop var_2F8
  loc_CFCC09: LitStr " AND tp.CodiSubr = su.CodiSubr"
  loc_CFCC0C: ConcatStr
  loc_CFCC0D: FStStrNoPop var_2FC
  loc_CFCC10: LitStr " Where s.CodiCome = "
  loc_CFCC13: ConcatStr
  loc_CFCC14: CVarStr var_228
  loc_CFCC17: FLdRfVar var_190
  loc_CFCC1A: FLdRfVar var_2AC
  loc_CFCC1D: LitVarStr var_1A4, "CodiCome"
  loc_CFCC22: PopAdLdVar
  loc_CFCC23: FLdRfVar var_218
  loc_CFCC26: FLdRfVar var_180
  loc_CFCC29: FLdPr Me
  loc_CFCC2C: MemLdRfVar from_stack_1.global_56
  loc_CFCC2F: NewIfNullPr clscomercio
  loc_CFCC32: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFCC37: FLdPr var_180
  loc_CFCC3A:  = Me.Fields
  loc_CFCC3F: FLdPr var_218
  loc_CFCC42: from_stack_2 = Me.Item(from_stack_1)
  loc_CFCC47: FLdPr var_2AC
  loc_CFCC4A:  = Me.Value
  loc_CFCC4F: FLdRfVar var_190
  loc_CFCC52: ConcatVar var_24C
  loc_CFCC56: LitVarStr var_1B4, " And s.BajaFeho Is Null And s.FebaSeco Is Null"
  loc_CFCC5B: ConcatVar var_25C
  loc_CFCC5F: LitVarStr var_1C4, " ORDER BY s.FealSeco DESC, s.CodiSubr ASC;"
  loc_CFCC64: ConcatVar var_26C
  loc_CFCC68: CStrVarVal var_300
  loc_CFCC6C: FLdPr Me
  loc_CFCC6F: MemLdRfVar from_stack_1.global_76
  loc_CFCC72: NewIfNullPr clsservcome
  loc_CFCC75: Call clsservcome.RedefineRS(from_stack_1v)
  loc_CFCC7A: FFreeStr var_22C = "": var_290 = "": var_294 = "": var_298 = "": var_29C = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = ""
  loc_CFCCA9: FFreeAd var_180 = "": var_218 = ""
  loc_CFCCB2: FFreeVar var_228 = "": var_190 = "": var_24C = "": var_25C = ""
  loc_CFCCBF: FLdRfVar var_2A0
  loc_CFCCC2: FLdPr Me
  loc_CFCCC5: MemLdRfVar from_stack_1.global_76
  loc_CFCCC8: NewIfNullPr clsservcome
  loc_CFCCCB: from_stack_1 = clsservcome.RecordCount
  loc_CFCCD0: ILdRf var_2A0
  loc_CFCCD3: LitI4 0
  loc_CFCCD8: GtI4
  loc_CFCCD9: BranchF loc_CFCD40
  loc_CFCCDC: FLdPr Me
  loc_CFCCDF: MemLdRfVar from_stack_1.global_76
  loc_CFCCE2: NewIfNullPr clsservcome
  loc_CFCCE5: Call clsservcome.MoveFirst()
  loc_CFCCEA: FLdRfVar var_17A
  loc_CFCCED: FLdPr Me
  loc_CFCCF0: MemLdRfVar from_stack_1.global_76
  loc_CFCCF3: NewIfNullPr clsservcome
  loc_CFCCF6: from_stack_1 = clsservcome.EOF
  loc_CFCCFB: FLdI2 var_17A
  loc_CFCCFE: NotI4
  loc_CFCCFF: BranchF loc_CFCD3D
  loc_CFCD02: FLdFPR8 var_E8
  loc_CFCD05: CVarR8
  loc_CFCD09: FLdRfVar var_190
  loc_CFCD0C: FLdPr Me
  loc_CFCD0F: MemLdRfVar from_stack_1.global_76
  loc_CFCD12: NewIfNullPr clsservcome
  loc_CFCD15: from_stack_1 = clsservcome.SubTotal
  loc_CFCD1A: FLdRfVar var_190
  loc_CFCD1D: AddVar var_228
  loc_CFCD21: CR4Var
  loc_CFCD22: FStFPR8 var_E8
  loc_CFCD25: FFreeVar var_190 = ""
  loc_CFCD2C: FLdPr Me
  loc_CFCD2F: MemLdRfVar from_stack_1.global_76
  loc_CFCD32: NewIfNullPr clsservcome
  loc_CFCD35: Call clsservcome.MoveSiguiente()
  loc_CFCD3A: Branch loc_CFCCEA
  loc_CFCD3D: Branch loc_CFCE40
  loc_CFCD40: FLdRfVar var_22C
  loc_CFCD43: FLdPr Me
  loc_CFCD46: VCallAd Control_ID_PeriLiquTxt
  loc_CFCD49: FStAdFunc var_180
  loc_CFCD4C: FLdPr var_180
  loc_CFCD4F:  = Me.Text
  loc_CFCD54: FLdRfVar var_290
  loc_CFCD57: FLdPr Me
  loc_CFCD5A: VCallAd Control_ID_CodiTiliTxt
  loc_CFCD5D: FStAdFunc var_218
  loc_CFCD60: FLdPr var_218
  loc_CFCD63:  = Me.Text
  loc_CFCD68: FLdRfVar var_25C
  loc_CFCD6B: FLdRfVar var_304
  loc_CFCD6E: LitVarStr var_1A4, "CodiCome"
  loc_CFCD73: PopAdLdVar
  loc_CFCD74: FLdRfVar var_2B0
  loc_CFCD77: FLdRfVar var_2AC
  loc_CFCD7A: FLdPr Me
  loc_CFCD7D: MemLdRfVar from_stack_1.global_56
  loc_CFCD80: NewIfNullPr clscomercio
  loc_CFCD83: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFCD88: FLdPr var_2AC
  loc_CFCD8B:  = Me.Fields
  loc_CFCD90: FLdPr var_2B0
  loc_CFCD93: from_stack_2 = Me.Item(from_stack_1)
  loc_CFCD98: FLdPr var_304
  loc_CFCD9B:  = Me.Value
  loc_CFCDA0: LitVarStr var_1C4, "Cuenta: "
  loc_CFCDA5: FLdRfVar var_190
  loc_CFCDA8: FLdRfVar var_310
  loc_CFCDAB: LitVarStr var_1B4, "CodiCome"
  loc_CFCDB0: PopAdLdVar
  loc_CFCDB1: FLdRfVar var_30C
  loc_CFCDB4: FLdRfVar var_308
  loc_CFCDB7: FLdPr Me
  loc_CFCDBA: MemLdRfVar from_stack_1.global_56
  loc_CFCDBD: NewIfNullPr clscomercio
  loc_CFCDC0: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFCDC5: FLdPr var_308
  loc_CFCDC8:  = Me.Fields
  loc_CFCDCD: FLdPr var_30C
  loc_CFCDD0: from_stack_2 = Me.Item(from_stack_1)
  loc_CFCDD5: FLdPr var_310
  loc_CFCDD8:  = Me.Value
  loc_CFCDDD: FLdRfVar var_190
  loc_CFCDE0: ConcatVar var_228
  loc_CFCDE4: LitVarStr var_1D4, " No se encontro los rubros del comercio."
  loc_CFCDE9: ConcatVar var_24C
  loc_CFCDED: CStrVarVal var_294
  loc_CFCDF1: FLdRfVar var_25C
  loc_CFCDF4: CI4Var
  loc_CFCDF6: FLdI2 var_8A
  loc_CFCDF9: ILdRf var_290
  loc_CFCDFC: CUI1Str
  loc_CFCDFE: FLdPr Me
  loc_CFCE01: MemLdI2 global_92
  loc_CFCE04: CUI1I2
  loc_CFCE06: ILdRf var_22C
  loc_CFCE09: CI2Str
  loc_CFCE0B: FLdPr Me
  loc_CFCE0E: MemLdRfVar from_stack_1.global_68
  loc_CFCE11: NewIfNullPr clsliqucome
  loc_CFCE14: Call clsliqucome.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CFCE19: FFreeStr var_22C = "": var_290 = ""
  loc_CFCE22: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_310 = ""
  loc_CFCE35: FFreeVar var_190 = "": var_228 = "": var_25C = ""
  loc_CFCE40: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') CodiCalle, IFNULL(domicilio.calle,'') as DecaPost, IFNULL(domicilio.NumeCalle,'0') as NumePost, IFNULL(domicilio.CodiBarrio,'0') CobpPost, IFNULL(domicilio.barrio,'') as DebaPost, IFNULL(domicilio.Manzana,'') as ManzPost, IFNULL(domicilio.Casa,'') as CasaPost, "
  loc_CFCE43: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbicPost, IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') ColpPost, IFNULL(domicilio.Localidad,'') as DeloPost, IFNULL(domicilio.CodPostal,'0') as CopoPost, domicilio.vinculo "
  loc_CFCE46: ConcatStr
  loc_CFCE47: FStStrNoPop var_22C
  loc_CFCE4A: LitStr " FROM domicilio"
  loc_CFCE4D: ConcatStr
  loc_CFCE4E: FStStrNoPop var_290
  loc_CFCE51: LitStr " WHERE CodiOfic = 2"
  loc_CFCE54: ConcatStr
  loc_CFCE55: FStStrNoPop var_294
  loc_CFCE58: LitStr " AND CodiCome = "
  loc_CFCE5B: ConcatStr
  loc_CFCE5C: CVarStr var_228
  loc_CFCE5F: FLdRfVar var_190
  loc_CFCE62: FLdRfVar var_2AC
  loc_CFCE65: LitVarStr var_1A4, "CodiCome"
  loc_CFCE6A: PopAdLdVar
  loc_CFCE6B: FLdRfVar var_218
  loc_CFCE6E: FLdRfVar var_180
  loc_CFCE71: FLdPr Me
  loc_CFCE74: MemLdRfVar from_stack_1.global_56
  loc_CFCE77: NewIfNullPr clscomercio
  loc_CFCE7A: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFCE7F: FLdPr var_180
  loc_CFCE82:  = Me.Fields
  loc_CFCE87: FLdPr var_218
  loc_CFCE8A: from_stack_2 = Me.Item(from_stack_1)
  loc_CFCE8F: FLdPr var_2AC
  loc_CFCE92:  = Me.Value
  loc_CFCE97: FLdRfVar var_190
  loc_CFCE9A: ConcatVar var_24C
  loc_CFCE9E: LitVarStr var_1B4, " AND Tipo = 'POSTAL'"
  loc_CFCEA3: ConcatVar var_25C
  loc_CFCEA7: CStrVarVal var_298
  loc_CFCEAB: FLdPr Me
  loc_CFCEAE: MemLdRfVar from_stack_1.global_84
  loc_CFCEB1: NewIfNullPr clsboleto
  loc_CFCEB4: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CFCEB9: FFreeStr var_22C = "": var_290 = "": var_294 = ""
  loc_CFCEC4: FFreeAd var_180 = "": var_218 = ""
  loc_CFCECD: FFreeVar var_228 = "": var_190 = "": var_24C = ""
  loc_CFCED8: FLdRfVar var_2A0
  loc_CFCEDB: FLdPr Me
  loc_CFCEDE: MemLdRfVar from_stack_1.global_84
  loc_CFCEE1: NewIfNullPr clsboleto
  loc_CFCEE4: from_stack_1 = clsboleto.RecordCount
  loc_CFCEE9: ILdRf var_2A0
  loc_CFCEEC: LitI4 0
  loc_CFCEF1: EqI4
  loc_CFCEF2: BranchF loc_CFCF8D
  loc_CFCEF5: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') CodiCalle, IFNULL(domicilio.calle,'') as DecaPost, IFNULL(domicilio.NumeCalle,'0') as NumePost, IFNULL(domicilio.CodiBarrio,'0') CobpPost, IFNULL(domicilio.barrio,'') as DebaPost, IFNULL(domicilio.Manzana,'') as ManzPost, IFNULL(domicilio.Casa,'') as CasaPost, "
  loc_CFCEF8: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbicPost, IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') ColpPost, IFNULL(domicilio.Localidad,'') as DeloPost, IFNULL(domicilio.CodPostal,'0') as CopoPost, domicilio.vinculo "
  loc_CFCEFB: ConcatStr
  loc_CFCEFC: FStStrNoPop var_22C
  loc_CFCEFF: LitStr " FROM domicilio"
  loc_CFCF02: ConcatStr
  loc_CFCF03: FStStrNoPop var_290
  loc_CFCF06: LitStr " WHERE CodiOfic = 2"
  loc_CFCF09: ConcatStr
  loc_CFCF0A: FStStrNoPop var_294
  loc_CFCF0D: LitStr " AND CodiCome = "
  loc_CFCF10: ConcatStr
  loc_CFCF11: CVarStr var_228
  loc_CFCF14: FLdRfVar var_190
  loc_CFCF17: FLdRfVar var_2AC
  loc_CFCF1A: LitVarStr var_1A4, "CodiCome"
  loc_CFCF1F: PopAdLdVar
  loc_CFCF20: FLdRfVar var_218
  loc_CFCF23: FLdRfVar var_180
  loc_CFCF26: FLdPr Me
  loc_CFCF29: MemLdRfVar from_stack_1.global_56
  loc_CFCF2C: NewIfNullPr clscomercio
  loc_CFCF2F: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFCF34: FLdPr var_180
  loc_CFCF37:  = Me.Fields
  loc_CFCF3C: FLdPr var_218
  loc_CFCF3F: from_stack_2 = Me.Item(from_stack_1)
  loc_CFCF44: FLdPr var_2AC
  loc_CFCF47:  = Me.Value
  loc_CFCF4C: FLdRfVar var_190
  loc_CFCF4F: ConcatVar var_24C
  loc_CFCF53: LitVarStr var_1B4, " AND Tipo = 'COMERCIAL'"
  loc_CFCF58: ConcatVar var_25C
  loc_CFCF5C: CStrVarVal var_298
  loc_CFCF60: FLdPr Me
  loc_CFCF63: MemLdRfVar from_stack_1.global_84
  loc_CFCF66: NewIfNullPr clsboleto
  loc_CFCF69: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CFCF6E: FFreeStr var_22C = "": var_290 = "": var_294 = ""
  loc_CFCF79: FFreeAd var_180 = "": var_218 = ""
  loc_CFCF82: FFreeVar var_228 = "": var_190 = "": var_24C = ""
  loc_CFCF8D: FLdFPR8 var_A4
  loc_CFCF90: LitI2_Byte 0
  loc_CFCF92: CR8I2
  loc_CFCF93: LeR8
  loc_CFCF94: BranchF loc_CFCFA0
  loc_CFCF97: LitI2_Byte &H14
  loc_CFCF99: CR8I2
  loc_CFCF9A: FStFPR8 var_178
  loc_CFCF9D: Branch loc_CFCFA6
  loc_CFCFA0: LitI2_Byte &HF
  loc_CFCFA2: CR8I2
  loc_CFCFA3: FStFPR8 var_178
  loc_CFCFA6: FLdFPR8 var_BC
  loc_CFCFA9: FStFPR8 var_F8
  loc_CFCFAC: FLdFPR8 var_E8
  loc_CFCFAF: LitI2_Byte 0
  loc_CFCFB1: CR8I2
  loc_CFCFB2: GtR4
  loc_CFCFB3: BranchF loc_CFEF4A
  loc_CFCFB6: FLdPr Me
  loc_CFCFB9: MemLdI2 global_94
  loc_CFCFBC: FLdPr Me
  loc_CFCFBF: MemLdRfVar from_stack_1.global_92
  loc_CFCFC2: FLdPr Me
  loc_CFCFC5: MemLdI2 global_96
  loc_CFCFC8: ForI2 var_314
  loc_CFCFCE: FLdRfVar var_22C
  loc_CFCFD1: FLdPr Me
  loc_CFCFD4: VCallAd Control_ID_BimeLiquTxt
  loc_CFCFD7: FStAdFunc var_180
  loc_CFCFDA: FLdPr var_180
  loc_CFCFDD:  = Me.Text
  loc_CFCFE2: ILdRf var_22C
  loc_CFCFE5: CR8Str
  loc_CFCFE7: LitI2_Byte 1
  loc_CFCFE9: CR8I2
  loc_CFCFEA: GtR4
  loc_CFCFEB: FFree1Str var_22C
  loc_CFCFEE: FFree1Ad var_180
  loc_CFCFF1: BranchF loc_CFD081
  loc_CFCFF4: FLdRfVar var_190
  loc_CFCFF7: FLdRfVar var_2AC
  loc_CFCFFA: LitVarStr var_1A4, "CodiCome"
  loc_CFCFFF: PopAdLdVar
  loc_CFD000: FLdRfVar var_218
  loc_CFD003: FLdRfVar var_180
  loc_CFD006: FLdPr Me
  loc_CFD009: MemLdRfVar from_stack_1.global_56
  loc_CFD00C: NewIfNullPr clscomercio
  loc_CFD00F: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD014: FLdPr var_180
  loc_CFD017:  = Me.Fields
  loc_CFD01C: FLdPr var_218
  loc_CFD01F: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD024: FLdPr var_2AC
  loc_CFD027:  = Me.Value
  loc_CFD02C: FLdRfVar var_22C
  loc_CFD02F: FLdPr Me
  loc_CFD032: VCallAd Control_ID_PeriLiquTxt
  loc_CFD035: FStAdFunc var_2B0
  loc_CFD038: FLdPr var_2B0
  loc_CFD03B:  = Me.Text
  loc_CFD040: FLdRfVar var_17A
  loc_CFD043: FLdPr Me
  loc_CFD046: MemLdI2 global_94
  loc_CFD049: ILdRf var_22C
  loc_CFD04C: CI2Str
  loc_CFD04E: FLdRfVar var_190
  loc_CFD051: CStrVarTmp
  loc_CFD052: FStStrNoPop var_290
  loc_CFD055: FLdPr Me
  loc_CFD058: MemLdRfVar from_stack_1.global_68
  loc_CFD05B: NewIfNullPr clsliqucome
  loc_CFD05E: from_stack_4v = clsliqucome.BuscaDeudaDeBimestreParaLaEmisionMasiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CFD063: FLdI2 var_17A
  loc_CFD066: FStI2 var_166
  loc_CFD069: FFreeStr var_290 = ""
  loc_CFD070: FFreeAd var_180 = "": var_218 = "": var_2B0 = ""
  loc_CFD07B: FFree1Var var_190 = ""
  loc_CFD07E: Branch loc_CFD086
  loc_CFD081: LitI2_Byte &HFF
  loc_CFD083: FStI2 var_166
  loc_CFD086: FLdI2 var_166
  loc_CFD089: LitI2_Byte &HFF
  loc_CFD08B: EqI2
  loc_CFD08C: BranchF loc_CFE726
  loc_CFD08F: FLdPr Me
  loc_CFD092: MemLdI2 global_92
  loc_CFD095: FStI2 var_316
  loc_CFD098: FLdI2 var_316
  loc_CFD09B: LitI2_Byte 1
  loc_CFD09D: EqI2
  loc_CFD09E: BranchF loc_CFD0EA
  loc_CFD0A1: ILdRf var_11C
  loc_CFD0A4: FStStrCopy var_14C
  loc_CFD0A7: FLdRfVar var_22C
  loc_CFD0AA: FLdPr Me
  loc_CFD0AD: VCallAd Control_ID_PeriLiquTxt
  loc_CFD0B0: FStAdFunc var_180
  loc_CFD0B3: FLdPr var_180
  loc_CFD0B6:  = Me.Text
  loc_CFD0BB: LitI2_Byte 1
  loc_CFD0BD: LitI2_Byte 3
  loc_CFD0BF: ILdRf var_22C
  loc_CFD0C2: CR8Str
  loc_CFD0C4: CI2R8
  loc_CFD0C5: FLdRfVar var_190
  loc_CFD0C8: ImpAdCallFPR4  = DateSerial(, , )
  loc_CFD0CD: FLdRfVar var_190
  loc_CFD0D0: LitVarI2 var_1A4, 1
  loc_CFD0D5: SubVar var_228
  loc_CFD0D9: FnCDateVar
  loc_CFD0DB: FStFPR8 var_110
  loc_CFD0DE: FFree1Str var_22C
  loc_CFD0E1: FFree1Ad var_180
  loc_CFD0E4: FFree1Var var_190 = ""
  loc_CFD0E7: Branch loc_CFD285
  loc_CFD0EA: FLdI2 var_316
  loc_CFD0ED: LitI2_Byte 2
  loc_CFD0EF: EqI2
  loc_CFD0F0: BranchF loc_CFD13C
  loc_CFD0F3: ILdRf var_120
  loc_CFD0F6: FStStrCopy var_14C
  loc_CFD0F9: FLdRfVar var_22C
  loc_CFD0FC: FLdPr Me
  loc_CFD0FF: VCallAd Control_ID_PeriLiquTxt
  loc_CFD102: FStAdFunc var_180
  loc_CFD105: FLdPr var_180
  loc_CFD108:  = Me.Text
  loc_CFD10D: LitI2_Byte 1
  loc_CFD10F: LitI2_Byte 5
  loc_CFD111: ILdRf var_22C
  loc_CFD114: CR8Str
  loc_CFD116: CI2R8
  loc_CFD117: FLdRfVar var_190
  loc_CFD11A: ImpAdCallFPR4  = DateSerial(, , )
  loc_CFD11F: FLdRfVar var_190
  loc_CFD122: LitVarI2 var_1A4, 1
  loc_CFD127: SubVar var_228
  loc_CFD12B: FnCDateVar
  loc_CFD12D: FStFPR8 var_110
  loc_CFD130: FFree1Str var_22C
  loc_CFD133: FFree1Ad var_180
  loc_CFD136: FFree1Var var_190 = ""
  loc_CFD139: Branch loc_CFD285
  loc_CFD13C: FLdI2 var_316
  loc_CFD13F: LitI2_Byte 3
  loc_CFD141: EqI2
  loc_CFD142: BranchF loc_CFD18E
  loc_CFD145: ILdRf var_124
  loc_CFD148: FStStrCopy var_14C
  loc_CFD14B: FLdRfVar var_22C
  loc_CFD14E: FLdPr Me
  loc_CFD151: VCallAd Control_ID_PeriLiquTxt
  loc_CFD154: FStAdFunc var_180
  loc_CFD157: FLdPr var_180
  loc_CFD15A:  = Me.Text
  loc_CFD15F: LitI2_Byte 1
  loc_CFD161: LitI2_Byte 7
  loc_CFD163: ILdRf var_22C
  loc_CFD166: CR8Str
  loc_CFD168: CI2R8
  loc_CFD169: FLdRfVar var_190
  loc_CFD16C: ImpAdCallFPR4  = DateSerial(, , )
  loc_CFD171: FLdRfVar var_190
  loc_CFD174: LitVarI2 var_1A4, 1
  loc_CFD179: SubVar var_228
  loc_CFD17D: FnCDateVar
  loc_CFD17F: FStFPR8 var_110
  loc_CFD182: FFree1Str var_22C
  loc_CFD185: FFree1Ad var_180
  loc_CFD188: FFree1Var var_190 = ""
  loc_CFD18B: Branch loc_CFD285
  loc_CFD18E: FLdI2 var_316
  loc_CFD191: LitI2_Byte 4
  loc_CFD193: EqI2
  loc_CFD194: BranchF loc_CFD1E0
  loc_CFD197: ILdRf var_128
  loc_CFD19A: FStStrCopy var_14C
  loc_CFD19D: FLdRfVar var_22C
  loc_CFD1A0: FLdPr Me
  loc_CFD1A3: VCallAd Control_ID_PeriLiquTxt
  loc_CFD1A6: FStAdFunc var_180
  loc_CFD1A9: FLdPr var_180
  loc_CFD1AC:  = Me.Text
  loc_CFD1B1: LitI2_Byte 1
  loc_CFD1B3: LitI2_Byte 9
  loc_CFD1B5: ILdRf var_22C
  loc_CFD1B8: CR8Str
  loc_CFD1BA: CI2R8
  loc_CFD1BB: FLdRfVar var_190
  loc_CFD1BE: ImpAdCallFPR4  = DateSerial(, , )
  loc_CFD1C3: FLdRfVar var_190
  loc_CFD1C6: LitVarI2 var_1A4, 1
  loc_CFD1CB: SubVar var_228
  loc_CFD1CF: FnCDateVar
  loc_CFD1D1: FStFPR8 var_110
  loc_CFD1D4: FFree1Str var_22C
  loc_CFD1D7: FFree1Ad var_180
  loc_CFD1DA: FFree1Var var_190 = ""
  loc_CFD1DD: Branch loc_CFD285
  loc_CFD1E0: FLdI2 var_316
  loc_CFD1E3: LitI2_Byte 5
  loc_CFD1E5: EqI2
  loc_CFD1E6: BranchF loc_CFD232
  loc_CFD1E9: ILdRf var_12C
  loc_CFD1EC: FStStrCopy var_14C
  loc_CFD1EF: FLdRfVar var_22C
  loc_CFD1F2: FLdPr Me
  loc_CFD1F5: VCallAd Control_ID_PeriLiquTxt
  loc_CFD1F8: FStAdFunc var_180
  loc_CFD1FB: FLdPr var_180
  loc_CFD1FE:  = Me.Text
  loc_CFD203: LitI2_Byte 1
  loc_CFD205: LitI2_Byte &HB
  loc_CFD207: ILdRf var_22C
  loc_CFD20A: CR8Str
  loc_CFD20C: CI2R8
  loc_CFD20D: FLdRfVar var_190
  loc_CFD210: ImpAdCallFPR4  = DateSerial(, , )
  loc_CFD215: FLdRfVar var_190
  loc_CFD218: LitVarI2 var_1A4, 1
  loc_CFD21D: SubVar var_228
  loc_CFD221: FnCDateVar
  loc_CFD223: FStFPR8 var_110
  loc_CFD226: FFree1Str var_22C
  loc_CFD229: FFree1Ad var_180
  loc_CFD22C: FFree1Var var_190 = ""
  loc_CFD22F: Branch loc_CFD285
  loc_CFD232: FLdI2 var_316
  loc_CFD235: LitI2_Byte 6
  loc_CFD237: EqI2
  loc_CFD238: BranchF loc_CFD285
  loc_CFD23B: ILdRf var_130
  loc_CFD23E: FStStrCopy var_14C
  loc_CFD241: FLdRfVar var_22C
  loc_CFD244: FLdPr Me
  loc_CFD247: VCallAd Control_ID_PeriLiquTxt
  loc_CFD24A: FStAdFunc var_180
  loc_CFD24D: FLdPr var_180
  loc_CFD250:  = Me.Text
  loc_CFD255: LitI2_Byte 1
  loc_CFD257: LitI2_Byte 1
  loc_CFD259: ILdRf var_22C
  loc_CFD25C: CR8Str
  loc_CFD25E: LitI2_Byte 1
  loc_CFD260: CR8I2
  loc_CFD261: AddR8
  loc_CFD262: CI2R8
  loc_CFD263: FLdRfVar var_190
  loc_CFD266: ImpAdCallFPR4  = DateSerial(, , )
  loc_CFD26B: FLdRfVar var_190
  loc_CFD26E: LitVarI2 var_1A4, 1
  loc_CFD273: SubVar var_228
  loc_CFD277: FnCDateVar
  loc_CFD279: FStFPR8 var_110
  loc_CFD27C: FFree1Str var_22C
  loc_CFD27F: FFree1Ad var_180
  loc_CFD282: FFree1Var var_190 = ""
  loc_CFD285: LitI2_Byte 0
  loc_CFD287: CR8I2
  loc_CFD288: FStFPR8 var_94
  loc_CFD28B: LitI2_Byte 0
  loc_CFD28D: CR8I2
  loc_CFD28E: FStFPR8 var_118
  loc_CFD291: FLdRfVar var_190
  loc_CFD294: FLdRfVar var_2AC
  loc_CFD297: LitVarStr var_1A4, "CodiExce"
  loc_CFD29C: PopAdLdVar
  loc_CFD29D: FLdRfVar var_218
  loc_CFD2A0: FLdRfVar var_180
  loc_CFD2A3: FLdPr Me
  loc_CFD2A6: MemLdRfVar from_stack_1.global_56
  loc_CFD2A9: NewIfNullPr clscomercio
  loc_CFD2AC: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD2B1: FLdPr var_180
  loc_CFD2B4:  = Me.Fields
  loc_CFD2B9: FLdPr var_218
  loc_CFD2BC: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD2C1: FLdPr var_2AC
  loc_CFD2C4:  = Me.Value
  loc_CFD2C9: FLdRfVar var_190
  loc_CFD2CC: LitVarI2 var_1B4, 0
  loc_CFD2D1: HardType
  loc_CFD2D2: NeVar var_228
  loc_CFD2D6: FLdRfVar var_308
  loc_CFD2D9: LitVarStr var_1C4, "FfexCome"
  loc_CFD2DE: PopAdLdVar
  loc_CFD2DF: FLdRfVar var_304
  loc_CFD2E2: FLdRfVar var_2B0
  loc_CFD2E5: FLdPr Me
  loc_CFD2E8: MemLdRfVar from_stack_1.global_56
  loc_CFD2EB: NewIfNullPr clscomercio
  loc_CFD2EE: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD2F3: FLdPr var_2B0
  loc_CFD2F6:  = Me.Fields
  loc_CFD2FB: FLdPr var_304
  loc_CFD2FE: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD303: FLdZeroAd var_308
  loc_CFD306: CVarAd
  loc_CFD30A: ImpAdCallI2 IsNull()
  loc_CFD30F: CVarBoolI2 var_1D4
  loc_CFD313: AndVar var_25C
  loc_CFD317: CBoolVarNull
  loc_CFD319: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = ""
  loc_CFD326: FFreeVar var_190 = "": var_24C = ""
  loc_CFD32F: BranchF loc_CFD3AF
  loc_CFD332: FLdRfVar var_190
  loc_CFD335: FLdRfVar var_2AC
  loc_CFD338: LitVarStr var_1A4, "CodiExce"
  loc_CFD33D: PopAdLdVar
  loc_CFD33E: FLdRfVar var_218
  loc_CFD341: FLdRfVar var_180
  loc_CFD344: FLdPr Me
  loc_CFD347: MemLdRfVar from_stack_1.global_56
  loc_CFD34A: NewIfNullPr clscomercio
  loc_CFD34D: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD352: FLdPr var_180
  loc_CFD355:  = Me.Fields
  loc_CFD35A: FLdPr var_218
  loc_CFD35D: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD362: FLdPr var_2AC
  loc_CFD365:  = Me.Value
  loc_CFD36A: FLdRfVar var_190
  loc_CFD36D: CI2Var
  loc_CFD36E: ImpAdCallFPR4 Proc_270_52_A7914C()
  loc_CFD373: FStFPR8 var_118
  loc_CFD376: FFreeAd var_180 = "": var_218 = ""
  loc_CFD37F: FFree1Var var_190 = ""
  loc_CFD382: LitI4 2
  loc_CFD387: FLdFPR8 var_E8
  loc_CFD38A: FLdFPR8 var_118
  loc_CFD38D: MulR8
  loc_CFD38E: LitI2_Byte &H64
  loc_CFD390: CR8I2
  loc_CFD391: DivR8
  loc_CFD392: CVarR8
  loc_CFD396: FLdRfVar var_228
  loc_CFD399: ImpAdCallFPR4  = Round(, )
  loc_CFD39E: FLdRfVar var_228
  loc_CFD3A1: CR4Var
  loc_CFD3A2: FStFPR8 var_94
  loc_CFD3A5: FFreeVar var_190 = ""
  loc_CFD3AC: Branch loc_CFD524
  loc_CFD3AF: FLdRfVar var_190
  loc_CFD3B2: FLdRfVar var_2AC
  loc_CFD3B5: LitVarStr var_1A4, "CodiExce"
  loc_CFD3BA: PopAdLdVar
  loc_CFD3BB: FLdRfVar var_218
  loc_CFD3BE: FLdRfVar var_180
  loc_CFD3C1: FLdPr Me
  loc_CFD3C4: MemLdRfVar from_stack_1.global_56
  loc_CFD3C7: NewIfNullPr clscomercio
  loc_CFD3CA: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD3CF: FLdPr var_180
  loc_CFD3D2:  = Me.Fields
  loc_CFD3D7: FLdPr var_218
  loc_CFD3DA: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD3DF: FLdPr var_2AC
  loc_CFD3E2:  = Me.Value
  loc_CFD3E7: FLdRfVar var_190
  loc_CFD3EA: LitVarI2 var_1B4, 0
  loc_CFD3EF: HardType
  loc_CFD3F0: NeVar var_228
  loc_CFD3F4: FLdRfVar var_308
  loc_CFD3F7: LitVarStr var_1C4, "FfexCome"
  loc_CFD3FC: PopAdLdVar
  loc_CFD3FD: FLdRfVar var_304
  loc_CFD400: FLdRfVar var_2B0
  loc_CFD403: FLdPr Me
  loc_CFD406: MemLdRfVar from_stack_1.global_56
  loc_CFD409: NewIfNullPr clscomercio
  loc_CFD40C: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD411: FLdPr var_2B0
  loc_CFD414:  = Me.Fields
  loc_CFD419: FLdPr var_304
  loc_CFD41C: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD421: FLdZeroAd var_308
  loc_CFD424: CVarAd
  loc_CFD428: ImpAdCallI2 IsNull()
  loc_CFD42D: NotI4
  loc_CFD42E: CVarBoolI2 var_1D4
  loc_CFD432: AndVar var_25C
  loc_CFD436: CBoolVarNull
  loc_CFD438: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = ""
  loc_CFD445: FFreeVar var_190 = "": var_24C = ""
  loc_CFD44E: BranchF loc_CFD51E
  loc_CFD451: FLdRfVar var_190
  loc_CFD454: FLdRfVar var_2AC
  loc_CFD457: LitVarStr var_1A4, "FfexCome"
  loc_CFD45C: PopAdLdVar
  loc_CFD45D: FLdRfVar var_218
  loc_CFD460: FLdRfVar var_180
  loc_CFD463: FLdPr Me
  loc_CFD466: MemLdRfVar from_stack_1.global_56
  loc_CFD469: NewIfNullPr clscomercio
  loc_CFD46C: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD471: FLdPr var_180
  loc_CFD474:  = Me.Fields
  loc_CFD479: FLdPr var_218
  loc_CFD47C: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD481: FLdPr var_2AC
  loc_CFD484:  = Me.Value
  loc_CFD489: FLdRfVar var_190
  loc_CFD48C: FnCDateVar
  loc_CFD48E: FLdFPR8 var_110
  loc_CFD491: GeR8
  loc_CFD492: FFreeAd var_180 = "": var_218 = ""
  loc_CFD49B: FFree1Var var_190 = ""
  loc_CFD49E: BranchF loc_CFD51B
  loc_CFD4A1: FLdRfVar var_190
  loc_CFD4A4: FLdRfVar var_2AC
  loc_CFD4A7: LitVarStr var_1A4, "CodiExce"
  loc_CFD4AC: PopAdLdVar
  loc_CFD4AD: FLdRfVar var_218
  loc_CFD4B0: FLdRfVar var_180
  loc_CFD4B3: FLdPr Me
  loc_CFD4B6: MemLdRfVar from_stack_1.global_56
  loc_CFD4B9: NewIfNullPr clscomercio
  loc_CFD4BC: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD4C1: FLdPr var_180
  loc_CFD4C4:  = Me.Fields
  loc_CFD4C9: FLdPr var_218
  loc_CFD4CC: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD4D1: FLdPr var_2AC
  loc_CFD4D4:  = Me.Value
  loc_CFD4D9: FLdRfVar var_190
  loc_CFD4DC: CI2Var
  loc_CFD4DD: ImpAdCallFPR4 Proc_270_52_A7914C()
  loc_CFD4E2: FStFPR8 var_118
  loc_CFD4E5: FFreeAd var_180 = "": var_218 = ""
  loc_CFD4EE: FFree1Var var_190 = ""
  loc_CFD4F1: LitI4 2
  loc_CFD4F6: FLdFPR8 var_E8
  loc_CFD4F9: FLdFPR8 var_118
  loc_CFD4FC: MulR8
  loc_CFD4FD: LitI2_Byte &H64
  loc_CFD4FF: CR8I2
  loc_CFD500: DivR8
  loc_CFD501: CVarR8
  loc_CFD505: FLdRfVar var_228
  loc_CFD508: ImpAdCallFPR4  = Round(, )
  loc_CFD50D: FLdRfVar var_228
  loc_CFD510: CR4Var
  loc_CFD511: FStFPR8 var_94
  loc_CFD514: FFreeVar var_190 = ""
  loc_CFD51B: Branch loc_CFD524
  loc_CFD51E: LitI2_Byte 0
  loc_CFD520: CR8I2
  loc_CFD521: FStFPR8 var_94
  loc_CFD524: FLdFPR8 var_94
  loc_CFD527: FLdFPR8 var_E8
  loc_CFD52A: EqR4
  loc_CFD52B: BranchF loc_CFD543
  loc_CFD52E: LitI2_Byte 0
  loc_CFD530: CR8I2
  loc_CFD531: FStFPR8 var_F8
  loc_CFD534: FLdFPR8 var_94
  loc_CFD537: FStFPR8 var_E8
  loc_CFD53A: FLdFPR8 var_E8
  loc_CFD53D: FStFPR8 var_E0
  loc_CFD540: Branch loc_CFD556
  loc_CFD543: FLdFPR8 var_E8
  loc_CFD546: FLdFPR8 var_F8
  loc_CFD549: AddR8
  loc_CFD54A: LitI2 2860
  loc_CFD54D: CR8I2
  loc_CFD54E: AddR8
  loc_CFD54F: FLdFPR8 var_170
  loc_CFD552: AddR8
  loc_CFD553: FStFPR8 var_E0
  loc_CFD556: FLdRfVar var_2A0
  loc_CFD559: FLdPr Me
  loc_CFD55C: MemLdRfVar from_stack_1.global_72
  loc_CFD55F: NewIfNullPr clspersonas
  loc_CFD562: from_stack_1 = clspersonas.RecordCount
  loc_CFD567: ILdRf var_2A0
  loc_CFD56A: LitI4 1
  loc_CFD56F: EqI4
  loc_CFD570: BranchF loc_CFDDB6
  loc_CFD573: FLdFPR8 var_15C
  loc_CFD576: CVarR8
  loc_CFD57A: HardType
  loc_CFD57B: LitI4 2
  loc_CFD580: FLdFPR8 var_E0
  loc_CFD583: FLdFPR8 var_94
  loc_CFD586: SubR4
  loc_CFD587: FLdFPR8 var_9C
  loc_CFD58A: SubR4
  loc_CFD58B: FLdFPR8 var_B4
  loc_CFD58E: SubR4
  loc_CFD58F: CVarR8
  loc_CFD593: FLdRfVar var_228
  loc_CFD596: ImpAdCallFPR4  = Round(, )
  loc_CFD59B: FLdRfVar var_228
  loc_CFD59E: LtVarBool
  loc_CFD5A0: FFreeVar var_190 = ""
  loc_CFD5A7: BranchF loc_CFD5EB
  loc_CFD5AA: FLdFPR8 var_15C
  loc_CFD5AD: FStFPR8 var_154
  loc_CFD5B0: LitI4 2
  loc_CFD5B5: FLdFPR8 var_E0
  loc_CFD5B8: FLdFPR8 var_94
  loc_CFD5BB: SubR4
  loc_CFD5BC: FLdFPR8 var_9C
  loc_CFD5BF: SubR4
  loc_CFD5C0: FLdFPR8 var_154
  loc_CFD5C3: SubR4
  loc_CFD5C4: FLdFPR8 var_B4
  loc_CFD5C7: SubR4
  loc_CFD5C8: CVarR8
  loc_CFD5CC: FLdRfVar var_228
  loc_CFD5CF: ImpAdCallFPR4  = Round(, )
  loc_CFD5D4: FLdRfVar var_228
  loc_CFD5D7: CR4Var
  loc_CFD5D8: FStFPR8 var_D8
  loc_CFD5DB: FFreeVar var_190 = ""
  loc_CFD5E2: LitI2_Byte 0
  loc_CFD5E4: CR8I2
  loc_CFD5E5: FStFPR8 var_15C
  loc_CFD5E8: Branch loc_CFD629
  loc_CFD5EB: LitI4 2
  loc_CFD5F0: FLdFPR8 var_E0
  loc_CFD5F3: FLdFPR8 var_94
  loc_CFD5F6: SubR4
  loc_CFD5F7: FLdFPR8 var_9C
  loc_CFD5FA: SubR4
  loc_CFD5FB: FLdFPR8 var_B4
  loc_CFD5FE: SubR4
  loc_CFD5FF: CVarR8
  loc_CFD603: FLdRfVar var_228
  loc_CFD606: ImpAdCallFPR4  = Round(, )
  loc_CFD60B: FLdRfVar var_228
  loc_CFD60E: CR4Var
  loc_CFD60F: FStFPR8 var_154
  loc_CFD612: FFreeVar var_190 = ""
  loc_CFD619: FLdFPR8 var_15C
  loc_CFD61C: FLdFPR8 var_154
  loc_CFD61F: SubR4
  loc_CFD620: FStFPR8 var_15C
  loc_CFD623: LitI2_Byte 0
  loc_CFD625: CR8I2
  loc_CFD626: FStFPR8 var_D8
  loc_CFD629: FLdRfVar var_2A0
  loc_CFD62C: FLdPr Me
  loc_CFD62F: MemLdRfVar from_stack_1.global_84
  loc_CFD632: NewIfNullPr clsboleto
  loc_CFD635: from_stack_1 = clsboleto.RecordCount
  loc_CFD63A: ILdRf var_2A0
  loc_CFD63D: LitI4 0
  loc_CFD642: GtI4
  loc_CFD643: BranchF loc_CFDC24
  loc_CFD646: FLdRfVar var_22C
  loc_CFD649: FLdPr Me
  loc_CFD64C: VCallAd Control_ID_PeriLiquTxt
  loc_CFD64F: FStAdFunc var_180
  loc_CFD652: FLdPr var_180
  loc_CFD655:  = Me.Text
  loc_CFD65A: FLdRfVar var_290
  loc_CFD65D: FLdPr Me
  loc_CFD660: VCallAd Control_ID_CodiTiliTxt
  loc_CFD663: FStAdFunc var_218
  loc_CFD666: FLdPr var_218
  loc_CFD669:  = Me.Text
  loc_CFD66E: FLdRfVar var_4E8
  loc_CFD671: FLdRfVar var_304
  loc_CFD674: LitVarStr var_1A4, "CodiCome"
  loc_CFD679: PopAdLdVar
  loc_CFD67A: FLdRfVar var_2B0
  loc_CFD67D: FLdRfVar var_2AC
  loc_CFD680: FLdPr Me
  loc_CFD683: MemLdRfVar from_stack_1.global_56
  loc_CFD686: NewIfNullPr clscomercio
  loc_CFD689: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD68E: FLdPr var_2AC
  loc_CFD691:  = Me.Fields
  loc_CFD696: FLdPr var_2B0
  loc_CFD699: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD69E: FLdPr var_304
  loc_CFD6A1:  = Me.Value
  loc_CFD6A6: FLdRfVar var_4F8
  loc_CFD6A9: FLdRfVar var_310
  loc_CFD6AC: LitVarStr var_1B4, "CucuPers"
  loc_CFD6B1: PopAdLdVar
  loc_CFD6B2: FLdRfVar var_30C
  loc_CFD6B5: FLdRfVar var_308
  loc_CFD6B8: FLdPr Me
  loc_CFD6BB: MemLdRfVar from_stack_1.global_56
  loc_CFD6BE: NewIfNullPr clscomercio
  loc_CFD6C1: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD6C6: FLdPr var_308
  loc_CFD6C9:  = Me.Fields
  loc_CFD6CE: FLdPr var_30C
  loc_CFD6D1: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD6D6: FLdPr var_310
  loc_CFD6D9:  = Me.Value
  loc_CFD6DE: FLdRfVar var_508
  loc_CFD6E1: FLdRfVar var_324
  loc_CFD6E4: LitVarStr var_1C4, "CodiRuta"
  loc_CFD6E9: PopAdLdVar
  loc_CFD6EA: FLdRfVar var_320
  loc_CFD6ED: FLdRfVar var_31C
  loc_CFD6F0: FLdPr Me
  loc_CFD6F3: MemLdRfVar from_stack_1.global_56
  loc_CFD6F6: NewIfNullPr clscomercio
  loc_CFD6F9: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFD6FE: FLdPr var_31C
  loc_CFD701:  = Me.Fields
  loc_CFD706: FLdPr var_320
  loc_CFD709: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD70E: FLdPr var_324
  loc_CFD711:  = Me.Value
  loc_CFD716: FLdRfVar var_518
  loc_CFD719: FLdRfVar var_330
  loc_CFD71C: LitVarStr var_1D4, "CodiCalle"
  loc_CFD721: PopAdLdVar
  loc_CFD722: FLdRfVar var_32C
  loc_CFD725: FLdRfVar var_328
  loc_CFD728: FLdPr Me
  loc_CFD72B: MemLdRfVar from_stack_1.global_84
  loc_CFD72E: NewIfNullPr clsboleto
  loc_CFD731: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD736: FLdPr var_328
  loc_CFD739:  = Me.Fields
  loc_CFD73E: FLdPr var_32C
  loc_CFD741: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD746: FLdPr var_330
  loc_CFD749:  = Me.Value
  loc_CFD74E: FLdRfVar var_33C
  loc_CFD751: LitVarStr var_1E4, "NumePost"
  loc_CFD756: PopAdLdVar
  loc_CFD757: FLdRfVar var_338
  loc_CFD75A: FLdRfVar var_334
  loc_CFD75D: FLdPr Me
  loc_CFD760: MemLdRfVar from_stack_1.global_84
  loc_CFD763: NewIfNullPr clsboleto
  loc_CFD766: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD76B: FLdPr var_334
  loc_CFD76E:  = Me.Fields
  loc_CFD773: FLdPr var_338
  loc_CFD776: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD77B: FLdZeroAd var_33C
  loc_CFD77E: CVarAd
  loc_CFD782: ImpAdCallI2 IsNumeric()
  loc_CFD787: FStI2 var_17A
  loc_CFD78A: FLdRfVar var_348
  loc_CFD78D: LitVarStr var_1F4, "NumePost"
  loc_CFD792: PopAdLdVar
  loc_CFD793: FLdRfVar var_344
  loc_CFD796: FLdRfVar var_340
  loc_CFD799: FLdPr Me
  loc_CFD79C: MemLdRfVar from_stack_1.global_84
  loc_CFD79F: NewIfNullPr clsboleto
  loc_CFD7A2: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD7A7: FLdPr var_340
  loc_CFD7AA:  = Me.Fields
  loc_CFD7AF: FLdPr var_344
  loc_CFD7B2: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD7B7: LitVarI2 var_24C, 0
  loc_CFD7BC: FLdZeroAd var_348
  loc_CFD7BF: CVarAd
  loc_CFD7C3: FLdI2 var_17A
  loc_CFD7C6: CVarBoolI2 var_204
  loc_CFD7CA: FLdRfVar var_25C
  loc_CFD7CD: ImpAdCallFPR4  = IIf(, , )
  loc_CFD7D2: FLdRfVar var_528
  loc_CFD7D5: FLdRfVar var_354
  loc_CFD7D8: LitVarStr var_23C, "DecaPost"
  loc_CFD7DD: PopAdLdVar
  loc_CFD7DE: FLdRfVar var_350
  loc_CFD7E1: FLdRfVar var_34C
  loc_CFD7E4: FLdPr Me
  loc_CFD7E7: MemLdRfVar from_stack_1.global_84
  loc_CFD7EA: NewIfNullPr clsboleto
  loc_CFD7ED: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD7F2: FLdPr var_34C
  loc_CFD7F5:  = Me.Fields
  loc_CFD7FA: FLdPr var_350
  loc_CFD7FD: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD802: FLdPr var_354
  loc_CFD805:  = Me.Value
  loc_CFD80A: FLdRfVar var_538
  loc_CFD80D: FLdRfVar var_360
  loc_CFD810: LitVarStr var_27C, "CobpPost"
  loc_CFD815: PopAdLdVar
  loc_CFD816: FLdRfVar var_35C
  loc_CFD819: FLdRfVar var_358
  loc_CFD81C: FLdPr Me
  loc_CFD81F: MemLdRfVar from_stack_1.global_84
  loc_CFD822: NewIfNullPr clsboleto
  loc_CFD825: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD82A: FLdPr var_358
  loc_CFD82D:  = Me.Fields
  loc_CFD832: FLdPr var_35C
  loc_CFD835: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD83A: FLdPr var_360
  loc_CFD83D:  = Me.Value
  loc_CFD842: FLdRfVar var_548
  loc_CFD845: FLdRfVar var_37C
  loc_CFD848: LitVarStr var_378, "DebaPost"
  loc_CFD84D: PopAdLdVar
  loc_CFD84E: FLdRfVar var_368
  loc_CFD851: FLdRfVar var_364
  loc_CFD854: FLdPr Me
  loc_CFD857: MemLdRfVar from_stack_1.global_84
  loc_CFD85A: NewIfNullPr clsboleto
  loc_CFD85D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD862: FLdPr var_364
  loc_CFD865:  = Me.Fields
  loc_CFD86A: FLdPr var_368
  loc_CFD86D: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD872: FLdPr var_37C
  loc_CFD875:  = Me.Value
  loc_CFD87A: FLdRfVar var_558
  loc_CFD87D: FLdRfVar var_398
  loc_CFD880: LitVarStr var_394, "ManzPost"
  loc_CFD885: PopAdLdVar
  loc_CFD886: FLdRfVar var_384
  loc_CFD889: FLdRfVar var_380
  loc_CFD88C: FLdPr Me
  loc_CFD88F: MemLdRfVar from_stack_1.global_84
  loc_CFD892: NewIfNullPr clsboleto
  loc_CFD895: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD89A: FLdPr var_380
  loc_CFD89D:  = Me.Fields
  loc_CFD8A2: FLdPr var_384
  loc_CFD8A5: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD8AA: FLdPr var_398
  loc_CFD8AD:  = Me.Value
  loc_CFD8B2: FLdRfVar var_568
  loc_CFD8B5: FLdRfVar var_3B4
  loc_CFD8B8: LitVarStr var_3B0, "CasaPost"
  loc_CFD8BD: PopAdLdVar
  loc_CFD8BE: FLdRfVar var_3A0
  loc_CFD8C1: FLdRfVar var_39C
  loc_CFD8C4: FLdPr Me
  loc_CFD8C7: MemLdRfVar from_stack_1.global_84
  loc_CFD8CA: NewIfNullPr clsboleto
  loc_CFD8CD: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD8D2: FLdPr var_39C
  loc_CFD8D5:  = Me.Fields
  loc_CFD8DA: FLdPr var_3A0
  loc_CFD8DD: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD8E2: FLdPr var_3B4
  loc_CFD8E5:  = Me.Value
  loc_CFD8EA: FLdRfVar var_26C
  loc_CFD8ED: FLdRfVar var_3D0
  loc_CFD8F0: LitVarStr var_3CC, "UbicPost"
  loc_CFD8F5: PopAdLdVar
  loc_CFD8F6: FLdRfVar var_3BC
  loc_CFD8F9: FLdRfVar var_3B8
  loc_CFD8FC: FLdPr Me
  loc_CFD8FF: MemLdRfVar from_stack_1.global_84
  loc_CFD902: NewIfNullPr clsboleto
  loc_CFD905: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD90A: FLdPr var_3B8
  loc_CFD90D:  = Me.Fields
  loc_CFD912: FLdPr var_3BC
  loc_CFD915: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD91A: FLdPr var_3D0
  loc_CFD91D:  = Me.Value
  loc_CFD922: FLdRfVar var_3FC
  loc_CFD925: LitVarStr var_3F8, "UbicPost"
  loc_CFD92A: PopAdLdVar
  loc_CFD92B: FLdRfVar var_3E8
  loc_CFD92E: FLdRfVar var_3E4
  loc_CFD931: FLdPr Me
  loc_CFD934: MemLdRfVar from_stack_1.global_84
  loc_CFD937: NewIfNullPr clsboleto
  loc_CFD93A: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD93F: FLdPr var_3E4
  loc_CFD942:  = Me.Fields
  loc_CFD947: FLdPr var_3E8
  loc_CFD94A: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD94F: FLdRfVar var_428
  loc_CFD952: FLdRfVar var_418
  loc_CFD955: LitVarStr var_414, "Ubicacion"
  loc_CFD95A: PopAdLdVar
  loc_CFD95B: FLdRfVar var_404
  loc_CFD95E: FLdRfVar var_400
  loc_CFD961: FLdPr Me
  loc_CFD964: MemLdRfVar from_stack_1.global_84
  loc_CFD967: NewIfNullPr clsboleto
  loc_CFD96A: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD96F: FLdPr var_400
  loc_CFD972:  = Me.Fields
  loc_CFD977: FLdPr var_404
  loc_CFD97A: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD97F: FLdPr var_418
  loc_CFD982:  = Me.Value
  loc_CFD987: LitI4 0
  loc_CFD98C: LitI4 -1
  loc_CFD991: LitI4 1
  loc_CFD996: LitStr " "
  loc_CFD999: LitStr "'"
  loc_CFD99C: FLdRfVar var_428
  loc_CFD99F: CStrVarTmp
  loc_CFD9A0: FStStrNoPop var_294
  loc_CFD9A3: ImpAdCallI2 Replace(, , , , , )
  loc_CFD9A8: CVarStr var_458
  loc_CFD9AB: FLdZeroAd var_3FC
  loc_CFD9AE: CVarAd
  loc_CFD9B2: FLdRfVar var_26C
  loc_CFD9B5: LitVarStr var_3E0, vbNullString
  loc_CFD9BA: HardType
  loc_CFD9BB: NeVar var_28C
  loc_CFD9BF: FStVar var_438
  loc_CFD9C3: FLdRfVar var_438
  loc_CFD9C6: FLdRfVar var_468
  loc_CFD9C9: ImpAdCallFPR4  = IIf(, , )
  loc_CFD9CE: FLdRfVar var_578
  loc_CFD9D1: FLdRfVar var_484
  loc_CFD9D4: LitVarStr var_480, "ColpPost"
  loc_CFD9D9: PopAdLdVar
  loc_CFD9DA: FLdRfVar var_470
  loc_CFD9DD: FLdRfVar var_46C
  loc_CFD9E0: FLdPr Me
  loc_CFD9E3: MemLdRfVar from_stack_1.global_84
  loc_CFD9E6: NewIfNullPr clsboleto
  loc_CFD9E9: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFD9EE: FLdPr var_46C
  loc_CFD9F1:  = Me.Fields
  loc_CFD9F6: FLdPr var_470
  loc_CFD9F9: from_stack_2 = Me.Item(from_stack_1)
  loc_CFD9FE: FLdPr var_484
  loc_CFDA01:  = Me.Value
  loc_CFDA06: FLdRfVar var_588
  loc_CFDA09: FLdRfVar var_4A0
  loc_CFDA0C: LitVarStr var_49C, "DeloPost"
  loc_CFDA11: PopAdLdVar
  loc_CFDA12: FLdRfVar var_48C
  loc_CFDA15: FLdRfVar var_488
  loc_CFDA18: FLdPr Me
  loc_CFDA1B: MemLdRfVar from_stack_1.global_84
  loc_CFDA1E: NewIfNullPr clsboleto
  loc_CFDA21: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFDA26: FLdPr var_488
  loc_CFDA29:  = Me.Fields
  loc_CFDA2E: FLdPr var_48C
  loc_CFDA31: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDA36: FLdPr var_4A0
  loc_CFDA39:  = Me.Value
  loc_CFDA3E: FLdRfVar var_598
  loc_CFDA41: FLdRfVar var_4BC
  loc_CFDA44: LitVarStr var_4B8, "CopoPost"
  loc_CFDA49: PopAdLdVar
  loc_CFDA4A: FLdRfVar var_4A8
  loc_CFDA4D: FLdRfVar var_4A4
  loc_CFDA50: FLdPr Me
  loc_CFDA53: MemLdRfVar from_stack_1.global_84
  loc_CFDA56: NewIfNullPr clsboleto
  loc_CFDA59: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFDA5E: FLdPr var_4A4
  loc_CFDA61:  = Me.Fields
  loc_CFDA66: FLdPr var_4A8
  loc_CFDA69: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDA6E: FLdPr var_4BC
  loc_CFDA71:  = Me.Value
  loc_CFDA76: FLdRfVar var_5A8
  loc_CFDA79: FLdRfVar var_4D8
  loc_CFDA7C: LitVarStr var_4D4, "Vinculo"
  loc_CFDA81: PopAdLdVar
  loc_CFDA82: FLdRfVar var_4C4
  loc_CFDA85: FLdRfVar var_4C0
  loc_CFDA88: FLdPr Me
  loc_CFDA8B: MemLdRfVar from_stack_1.global_84
  loc_CFDA8E: NewIfNullPr clsboleto
  loc_CFDA91: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFDA96: FLdPr var_4C0
  loc_CFDA99:  = Me.Fields
  loc_CFDA9E: FLdPr var_4C4
  loc_CFDAA1: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDAA6: FLdPr var_4D8
  loc_CFDAA9:  = Me.Value
  loc_CFDAAE: FLdR8 var_170
  loc_CFDAB1: FLdRfVar var_5A8
  loc_CFDAB4: CStrVarTmp
  loc_CFDAB5: FStStrNoPop var_2D8
  loc_CFDAB8: FLdR8 var_178
  loc_CFDABB: FLdR8 var_118
  loc_CFDABE: FLdI2 var_BE
  loc_CFDAC1: LitI2_Byte &HFF
  loc_CFDAC3: FLdR8 var_F8
  loc_CFDAC6: FLdR8 var_108
  loc_CFDAC9: FLdRfVar var_598
  loc_CFDACC: CStrVarTmp
  loc_CFDACD: FStStrNoPop var_2D4
  loc_CFDAD0: FLdRfVar var_588
  loc_CFDAD3: CStrVarTmp
  loc_CFDAD4: FStStrNoPop var_2D0
  loc_CFDAD7: FLdRfVar var_578
  loc_CFDADA: CI2Var
  loc_CFDADB: FLdRfVar var_468
  loc_CFDADE: CStrVarVal var_2CC
  loc_CFDAE2: FLdRfVar var_568
  loc_CFDAE5: CStrVarTmp
  loc_CFDAE6: FStStrNoPop var_2C8
  loc_CFDAE9: FLdRfVar var_558
  loc_CFDAEC: CStrVarTmp
  loc_CFDAED: FStStrNoPop var_2C4
  loc_CFDAF0: FLdRfVar var_548
  loc_CFDAF3: CStrVarTmp
  loc_CFDAF4: FStStrNoPop var_2C0
  loc_CFDAF7: FLdRfVar var_538
  loc_CFDAFA: CI2Var
  loc_CFDAFB: FLdRfVar var_528
  loc_CFDAFE: CStrVarTmp
  loc_CFDAFF: FStStrNoPop var_29C
  loc_CFDB02: FLdRfVar var_25C
  loc_CFDB05: CI4Var
  loc_CFDB07: FLdRfVar var_518
  loc_CFDB0A: CI4Var
  loc_CFDB0C: FLdRfVar var_508
  loc_CFDB0F: CI2Var
  loc_CFDB10: FLdRfVar var_4F8
  loc_CFDB13: CStrVarTmp
  loc_CFDB14: FStStrNoPop var_298
  loc_CFDB17: FLdR8 var_D8
  loc_CFDB1A: LitI2_Byte 0
  loc_CFDB1C: CR8I2
  loc_CFDB1D: PopFPR8
  loc_CFDB1E: FLdR8 var_9C
  loc_CFDB21: FLdR8 var_94
  loc_CFDB24: FLdR8 var_154
  loc_CFDB27: FLdR8 var_E0
  loc_CFDB2A: LitI2_Byte 0
  loc_CFDB2C: CR8I2
  loc_CFDB2D: PopFPR8
  loc_CFDB2E: FLdR8 var_A4
  loc_CFDB31: ILdRf var_14C
  loc_CFDB34: LitStr "Aforo"
  loc_CFDB37: LitI2_Byte 1
  loc_CFDB39: CUI1I2
  loc_CFDB3B: ILdRf var_D0
  loc_CFDB3E: FLdRfVar var_4E8
  loc_CFDB41: CI4Var
  loc_CFDB43: FLdI2 var_8A
  loc_CFDB46: ILdRf var_290
  loc_CFDB49: CUI1Str
  loc_CFDB4B: FLdPr Me
  loc_CFDB4E: MemLdI2 global_92
  loc_CFDB51: CUI1I2
  loc_CFDB53: ILdRf var_22C
  loc_CFDB56: CI2Str
  loc_CFDB58: FLdPr Me
  loc_CFDB5B: MemLdRfVar from_stack_1.global_68
  loc_CFDB5E: NewIfNullPr clsliqucome
  loc_CFDB61: Call clsliqucome.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CFDB66: FFreeStr var_294 = "": var_22C = "": var_290 = "": var_298 = "": var_29C = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = ""
  loc_CFDB81: FFreeAd var_404 = "": var_418 = "": var_46C = "": var_470 = "": var_488 = "": var_48C = "": var_4A4 = "": var_4A8 = "": var_4C0 = "": var_4C4 = "": var_304 = "": var_310 = "": var_324 = "": var_330 = "": var_354 = "": var_360 = "": var_37C = "": var_398 = "": var_3B4 = "": var_484 = "": var_4A0 = "": var_4BC = "": var_4D8 = "": var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_31C = "": var_320 = "": var_328 = "": var_32C = "": var_334 = "": var_338 = "": var_340 = "": var_344 = "": var_34C = "": var_350 = "": var_358 = "": var_35C = "": var_364 = "": var_368 = "": var_380 = "": var_384 = "": var_39C = "": var_3A0 = "": var_3B8 = "": var_3BC = "": var_3D0 = "": var_3E4 = "": var_3E8 = ""
  loc_CFDBEE: FFreeVar var_190 = "": var_204 = "": var_228 = "": var_24C = "": var_26C = "": var_428 = "": var_438 = "": var_448 = "": var_458 = "": var_4E8 = "": var_4F8 = "": var_508 = "": var_518 = "": var_25C = "": var_528 = "": var_538 = "": var_548 = "": var_558 = "": var_568 = "": var_468 = "": var_578 = "": var_588 = "": var_598 = ""
  loc_CFDC21: Branch loc_CFDDB3
  loc_CFDC24: FLdRfVar var_22C
  loc_CFDC27: FLdPr Me
  loc_CFDC2A: VCallAd Control_ID_PeriLiquTxt
  loc_CFDC2D: FStAdFunc var_180
  loc_CFDC30: FLdPr var_180
  loc_CFDC33:  = Me.Text
  loc_CFDC38: FLdRfVar var_290
  loc_CFDC3B: FLdPr Me
  loc_CFDC3E: VCallAd Control_ID_CodiTiliTxt
  loc_CFDC41: FStAdFunc var_218
  loc_CFDC44: FLdPr var_218
  loc_CFDC47:  = Me.Text
  loc_CFDC4C: FLdRfVar var_190
  loc_CFDC4F: FLdRfVar var_304
  loc_CFDC52: LitVarStr var_1A4, "CodiCome"
  loc_CFDC57: PopAdLdVar
  loc_CFDC58: FLdRfVar var_2B0
  loc_CFDC5B: FLdRfVar var_2AC
  loc_CFDC5E: FLdPr Me
  loc_CFDC61: MemLdRfVar from_stack_1.global_56
  loc_CFDC64: NewIfNullPr clscomercio
  loc_CFDC67: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFDC6C: FLdPr var_2AC
  loc_CFDC6F:  = Me.Fields
  loc_CFDC74: FLdPr var_2B0
  loc_CFDC77: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDC7C: FLdPr var_304
  loc_CFDC7F:  = Me.Value
  loc_CFDC84: FLdRfVar var_228
  loc_CFDC87: FLdRfVar var_310
  loc_CFDC8A: LitVarStr var_1B4, "CucuPers"
  loc_CFDC8F: PopAdLdVar
  loc_CFDC90: FLdRfVar var_30C
  loc_CFDC93: FLdRfVar var_308
  loc_CFDC96: FLdPr Me
  loc_CFDC99: MemLdRfVar from_stack_1.global_56
  loc_CFDC9C: NewIfNullPr clscomercio
  loc_CFDC9F: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFDCA4: FLdPr var_308
  loc_CFDCA7:  = Me.Fields
  loc_CFDCAC: FLdPr var_30C
  loc_CFDCAF: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDCB4: FLdPr var_310
  loc_CFDCB7:  = Me.Value
  loc_CFDCBC: FLdRfVar var_24C
  loc_CFDCBF: FLdRfVar var_324
  loc_CFDCC2: LitVarStr var_1C4, "CodiRuta"
  loc_CFDCC7: PopAdLdVar
  loc_CFDCC8: FLdRfVar var_320
  loc_CFDCCB: FLdRfVar var_31C
  loc_CFDCCE: FLdPr Me
  loc_CFDCD1: MemLdRfVar from_stack_1.global_56
  loc_CFDCD4: NewIfNullPr clscomercio
  loc_CFDCD7: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFDCDC: FLdPr var_31C
  loc_CFDCDF:  = Me.Fields
  loc_CFDCE4: FLdPr var_320
  loc_CFDCE7: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDCEC: FLdPr var_324
  loc_CFDCEF:  = Me.Value
  loc_CFDCF4: FLdR8 var_170
  loc_CFDCF7: LitStr vbNullString
  loc_CFDCFA: FLdR8 var_178
  loc_CFDCFD: FLdR8 var_118
  loc_CFDD00: FLdI2 var_BE
  loc_CFDD03: LitI2_Byte &HFF
  loc_CFDD05: FLdR8 var_F8
  loc_CFDD08: FLdR8 var_108
  loc_CFDD0B: LitStr vbNullString
  loc_CFDD0E: LitStr vbNullString
  loc_CFDD11: LitI2_Byte 0
  loc_CFDD13: LitStr vbNullString
  loc_CFDD16: LitStr vbNullString
  loc_CFDD19: LitStr vbNullString
  loc_CFDD1C: LitStr vbNullString
  loc_CFDD1F: LitI2_Byte 0
  loc_CFDD21: LitStr vbNullString
  loc_CFDD24: LitI4 0
  loc_CFDD29: LitI4 0
  loc_CFDD2E: FLdRfVar var_24C
  loc_CFDD31: CI2Var
  loc_CFDD32: FLdRfVar var_228
  loc_CFDD35: CStrVarTmp
  loc_CFDD36: FStStrNoPop var_294
  loc_CFDD39: FLdR8 var_D8
  loc_CFDD3C: LitI2_Byte 0
  loc_CFDD3E: CR8I2
  loc_CFDD3F: PopFPR8
  loc_CFDD40: FLdR8 var_9C
  loc_CFDD43: FLdR8 var_94
  loc_CFDD46: FLdR8 var_154
  loc_CFDD49: FLdR8 var_E0
  loc_CFDD4C: LitI2_Byte 0
  loc_CFDD4E: CR8I2
  loc_CFDD4F: PopFPR8
  loc_CFDD50: FLdR8 var_A4
  loc_CFDD53: ILdRf var_14C
  loc_CFDD56: LitStr "Aforo"
  loc_CFDD59: LitI2_Byte 1
  loc_CFDD5B: CUI1I2
  loc_CFDD5D: ILdRf var_D0
  loc_CFDD60: FLdRfVar var_190
  loc_CFDD63: CI4Var
  loc_CFDD65: FLdI2 var_8A
  loc_CFDD68: ILdRf var_290
  loc_CFDD6B: CUI1Str
  loc_CFDD6D: FLdPr Me
  loc_CFDD70: MemLdI2 global_92
  loc_CFDD73: CUI1I2
  loc_CFDD75: ILdRf var_22C
  loc_CFDD78: CI2Str
  loc_CFDD7A: FLdPr Me
  loc_CFDD7D: MemLdRfVar from_stack_1.global_68
  loc_CFDD80: NewIfNullPr clsliqucome
  loc_CFDD83: Call clsliqucome.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CFDD88: FFreeStr var_22C = "": var_290 = ""
  loc_CFDD91: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_31C = "": var_320 = "": var_304 = "": var_310 = ""
  loc_CFDDAA: FFreeVar var_190 = "": var_228 = ""
  loc_CFDDB3: Branch loc_CFDEB6
  loc_CFDDB6: FLdRfVar var_22C
  loc_CFDDB9: FLdPr Me
  loc_CFDDBC: VCallAd Control_ID_PeriLiquTxt
  loc_CFDDBF: FStAdFunc var_180
  loc_CFDDC2: FLdPr var_180
  loc_CFDDC5:  = Me.Text
  loc_CFDDCA: FLdRfVar var_290
  loc_CFDDCD: FLdPr Me
  loc_CFDDD0: VCallAd Control_ID_CodiTiliTxt
  loc_CFDDD3: FStAdFunc var_218
  loc_CFDDD6: FLdPr var_218
  loc_CFDDD9:  = Me.Text
  loc_CFDDDE: FLdRfVar var_25C
  loc_CFDDE1: FLdRfVar var_304
  loc_CFDDE4: LitVarStr var_1A4, "CodiCome"
  loc_CFDDE9: PopAdLdVar
  loc_CFDDEA: FLdRfVar var_2B0
  loc_CFDDED: FLdRfVar var_2AC
  loc_CFDDF0: FLdPr Me
  loc_CFDDF3: MemLdRfVar from_stack_1.global_56
  loc_CFDDF6: NewIfNullPr clscomercio
  loc_CFDDF9: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFDDFE: FLdPr var_2AC
  loc_CFDE01:  = Me.Fields
  loc_CFDE06: FLdPr var_2B0
  loc_CFDE09: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDE0E: FLdPr var_304
  loc_CFDE11:  = Me.Value
  loc_CFDE16: LitVarStr var_1C4, "Cuenta: "
  loc_CFDE1B: FLdRfVar var_190
  loc_CFDE1E: FLdRfVar var_310
  loc_CFDE21: LitVarStr var_1B4, "CodiCome"
  loc_CFDE26: PopAdLdVar
  loc_CFDE27: FLdRfVar var_30C
  loc_CFDE2A: FLdRfVar var_308
  loc_CFDE2D: FLdPr Me
  loc_CFDE30: MemLdRfVar from_stack_1.global_56
  loc_CFDE33: NewIfNullPr clscomercio
  loc_CFDE36: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFDE3B: FLdPr var_308
  loc_CFDE3E:  = Me.Fields
  loc_CFDE43: FLdPr var_30C
  loc_CFDE46: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDE4B: FLdPr var_310
  loc_CFDE4E:  = Me.Value
  loc_CFDE53: FLdRfVar var_190
  loc_CFDE56: ConcatVar var_228
  loc_CFDE5A: LitVarStr var_1D4, " No se encontro el titular"
  loc_CFDE5F: ConcatVar var_24C
  loc_CFDE63: CStrVarVal var_294
  loc_CFDE67: FLdRfVar var_25C
  loc_CFDE6A: CI4Var
  loc_CFDE6C: FLdI2 var_8A
  loc_CFDE6F: ILdRf var_290
  loc_CFDE72: CUI1Str
  loc_CFDE74: FLdPr Me
  loc_CFDE77: MemLdI2 global_92
  loc_CFDE7A: CUI1I2
  loc_CFDE7C: ILdRf var_22C
  loc_CFDE7F: CI2Str
  loc_CFDE81: FLdPr Me
  loc_CFDE84: MemLdRfVar from_stack_1.global_68
  loc_CFDE87: NewIfNullPr clsliqucome
  loc_CFDE8A: Call clsliqucome.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CFDE8F: FFreeStr var_22C = "": var_290 = ""
  loc_CFDE98: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_310 = ""
  loc_CFDEAB: FFreeVar var_190 = "": var_228 = "": var_25C = ""
  loc_CFDEB6: FLdFPR8 var_D8
  loc_CFDEB9: LitI2_Byte 0
  loc_CFDEBB: CR8I2
  loc_CFDEBC: GtR4
  loc_CFDEBD: BranchF loc_CFE726
  loc_CFDEC0: FLdFPR8 var_F0
  loc_CFDEC3: LitI2_Byte 0
  loc_CFDEC5: CR8I2
  loc_CFDEC6: GtR4
  loc_CFDEC7: BranchF loc_CFE726
  loc_CFDECA: FLdRfVar var_2A0
  loc_CFDECD: FLdPr Me
  loc_CFDED0: MemLdRfVar from_stack_1.global_72
  loc_CFDED3: NewIfNullPr clspersonas
  loc_CFDED6: from_stack_1 = clspersonas.RecordCount
  loc_CFDEDB: ILdRf var_2A0
  loc_CFDEDE: LitI4 1
  loc_CFDEE3: EqI4
  loc_CFDEE4: BranchF loc_CFE726
  loc_CFDEE7: FLdRfVar var_2A0
  loc_CFDEEA: FLdPr Me
  loc_CFDEED: MemLdRfVar from_stack_1.global_84
  loc_CFDEF0: NewIfNullPr clsboleto
  loc_CFDEF3: from_stack_1 = clsboleto.RecordCount
  loc_CFDEF8: ILdRf var_2A0
  loc_CFDEFB: LitI4 0
  loc_CFDF00: GtI4
  loc_CFDF01: BranchF loc_CFE4E6
  loc_CFDF04: FLdRfVar var_22C
  loc_CFDF07: FLdPr Me
  loc_CFDF0A: VCallAd Control_ID_PeriLiquTxt
  loc_CFDF0D: FStAdFunc var_180
  loc_CFDF10: FLdPr var_180
  loc_CFDF13:  = Me.Text
  loc_CFDF18: FLdRfVar var_290
  loc_CFDF1B: FLdPr Me
  loc_CFDF1E: VCallAd Control_ID_CodiTiliTxt
  loc_CFDF21: FStAdFunc var_218
  loc_CFDF24: FLdPr var_218
  loc_CFDF27:  = Me.Text
  loc_CFDF2C: FLdRfVar var_4E8
  loc_CFDF2F: FLdRfVar var_304
  loc_CFDF32: LitVarStr var_1A4, "CodiCome"
  loc_CFDF37: PopAdLdVar
  loc_CFDF38: FLdRfVar var_2B0
  loc_CFDF3B: FLdRfVar var_2AC
  loc_CFDF3E: FLdPr Me
  loc_CFDF41: MemLdRfVar from_stack_1.global_56
  loc_CFDF44: NewIfNullPr clscomercio
  loc_CFDF47: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFDF4C: FLdPr var_2AC
  loc_CFDF4F:  = Me.Fields
  loc_CFDF54: FLdPr var_2B0
  loc_CFDF57: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDF5C: FLdPr var_304
  loc_CFDF5F:  = Me.Value
  loc_CFDF64: FLdRfVar var_4F8
  loc_CFDF67: FLdRfVar var_310
  loc_CFDF6A: LitVarStr var_1B4, "CucuPers"
  loc_CFDF6F: PopAdLdVar
  loc_CFDF70: FLdRfVar var_30C
  loc_CFDF73: FLdRfVar var_308
  loc_CFDF76: FLdPr Me
  loc_CFDF79: MemLdRfVar from_stack_1.global_56
  loc_CFDF7C: NewIfNullPr clscomercio
  loc_CFDF7F: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFDF84: FLdPr var_308
  loc_CFDF87:  = Me.Fields
  loc_CFDF8C: FLdPr var_30C
  loc_CFDF8F: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDF94: FLdPr var_310
  loc_CFDF97:  = Me.Value
  loc_CFDF9C: FLdRfVar var_508
  loc_CFDF9F: FLdRfVar var_324
  loc_CFDFA2: LitVarStr var_1C4, "CodiRuta"
  loc_CFDFA7: PopAdLdVar
  loc_CFDFA8: FLdRfVar var_320
  loc_CFDFAB: FLdRfVar var_31C
  loc_CFDFAE: FLdPr Me
  loc_CFDFB1: MemLdRfVar from_stack_1.global_56
  loc_CFDFB4: NewIfNullPr clscomercio
  loc_CFDFB7: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFDFBC: FLdPr var_31C
  loc_CFDFBF:  = Me.Fields
  loc_CFDFC4: FLdPr var_320
  loc_CFDFC7: from_stack_2 = Me.Item(from_stack_1)
  loc_CFDFCC: FLdPr var_324
  loc_CFDFCF:  = Me.Value
  loc_CFDFD4: FLdRfVar var_518
  loc_CFDFD7: FLdRfVar var_330
  loc_CFDFDA: LitVarStr var_1D4, "CodiCalle"
  loc_CFDFDF: PopAdLdVar
  loc_CFDFE0: FLdRfVar var_32C
  loc_CFDFE3: FLdRfVar var_328
  loc_CFDFE6: FLdPr Me
  loc_CFDFE9: MemLdRfVar from_stack_1.global_84
  loc_CFDFEC: NewIfNullPr clsboleto
  loc_CFDFEF: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFDFF4: FLdPr var_328
  loc_CFDFF7:  = Me.Fields
  loc_CFDFFC: FLdPr var_32C
  loc_CFDFFF: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE004: FLdPr var_330
  loc_CFE007:  = Me.Value
  loc_CFE00C: FLdRfVar var_33C
  loc_CFE00F: LitVarStr var_1E4, "NumePost"
  loc_CFE014: PopAdLdVar
  loc_CFE015: FLdRfVar var_338
  loc_CFE018: FLdRfVar var_334
  loc_CFE01B: FLdPr Me
  loc_CFE01E: MemLdRfVar from_stack_1.global_84
  loc_CFE021: NewIfNullPr clsboleto
  loc_CFE024: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE029: FLdPr var_334
  loc_CFE02C:  = Me.Fields
  loc_CFE031: FLdPr var_338
  loc_CFE034: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE039: FLdZeroAd var_33C
  loc_CFE03C: CVarAd
  loc_CFE040: ImpAdCallI2 IsNumeric()
  loc_CFE045: FStI2 var_17A
  loc_CFE048: FLdRfVar var_348
  loc_CFE04B: LitVarStr var_1F4, "NumePost"
  loc_CFE050: PopAdLdVar
  loc_CFE051: FLdRfVar var_344
  loc_CFE054: FLdRfVar var_340
  loc_CFE057: FLdPr Me
  loc_CFE05A: MemLdRfVar from_stack_1.global_84
  loc_CFE05D: NewIfNullPr clsboleto
  loc_CFE060: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE065: FLdPr var_340
  loc_CFE068:  = Me.Fields
  loc_CFE06D: FLdPr var_344
  loc_CFE070: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE075: LitVarI2 var_24C, 0
  loc_CFE07A: FLdZeroAd var_348
  loc_CFE07D: CVarAd
  loc_CFE081: FLdI2 var_17A
  loc_CFE084: CVarBoolI2 var_204
  loc_CFE088: FLdRfVar var_25C
  loc_CFE08B: ImpAdCallFPR4  = IIf(, , )
  loc_CFE090: FLdRfVar var_528
  loc_CFE093: FLdRfVar var_354
  loc_CFE096: LitVarStr var_23C, "DecaPost"
  loc_CFE09B: PopAdLdVar
  loc_CFE09C: FLdRfVar var_350
  loc_CFE09F: FLdRfVar var_34C
  loc_CFE0A2: FLdPr Me
  loc_CFE0A5: MemLdRfVar from_stack_1.global_84
  loc_CFE0A8: NewIfNullPr clsboleto
  loc_CFE0AB: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE0B0: FLdPr var_34C
  loc_CFE0B3:  = Me.Fields
  loc_CFE0B8: FLdPr var_350
  loc_CFE0BB: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE0C0: FLdPr var_354
  loc_CFE0C3:  = Me.Value
  loc_CFE0C8: FLdRfVar var_538
  loc_CFE0CB: FLdRfVar var_360
  loc_CFE0CE: LitVarStr var_27C, "CobpPost"
  loc_CFE0D3: PopAdLdVar
  loc_CFE0D4: FLdRfVar var_35C
  loc_CFE0D7: FLdRfVar var_358
  loc_CFE0DA: FLdPr Me
  loc_CFE0DD: MemLdRfVar from_stack_1.global_84
  loc_CFE0E0: NewIfNullPr clsboleto
  loc_CFE0E3: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE0E8: FLdPr var_358
  loc_CFE0EB:  = Me.Fields
  loc_CFE0F0: FLdPr var_35C
  loc_CFE0F3: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE0F8: FLdPr var_360
  loc_CFE0FB:  = Me.Value
  loc_CFE100: FLdRfVar var_548
  loc_CFE103: FLdRfVar var_37C
  loc_CFE106: LitVarStr var_378, "DebaPost"
  loc_CFE10B: PopAdLdVar
  loc_CFE10C: FLdRfVar var_368
  loc_CFE10F: FLdRfVar var_364
  loc_CFE112: FLdPr Me
  loc_CFE115: MemLdRfVar from_stack_1.global_84
  loc_CFE118: NewIfNullPr clsboleto
  loc_CFE11B: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE120: FLdPr var_364
  loc_CFE123:  = Me.Fields
  loc_CFE128: FLdPr var_368
  loc_CFE12B: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE130: FLdPr var_37C
  loc_CFE133:  = Me.Value
  loc_CFE138: FLdRfVar var_558
  loc_CFE13B: FLdRfVar var_398
  loc_CFE13E: LitVarStr var_394, "ManzPost"
  loc_CFE143: PopAdLdVar
  loc_CFE144: FLdRfVar var_384
  loc_CFE147: FLdRfVar var_380
  loc_CFE14A: FLdPr Me
  loc_CFE14D: MemLdRfVar from_stack_1.global_84
  loc_CFE150: NewIfNullPr clsboleto
  loc_CFE153: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE158: FLdPr var_380
  loc_CFE15B:  = Me.Fields
  loc_CFE160: FLdPr var_384
  loc_CFE163: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE168: FLdPr var_398
  loc_CFE16B:  = Me.Value
  loc_CFE170: FLdRfVar var_568
  loc_CFE173: FLdRfVar var_3B4
  loc_CFE176: LitVarStr var_3B0, "CasaPost"
  loc_CFE17B: PopAdLdVar
  loc_CFE17C: FLdRfVar var_3A0
  loc_CFE17F: FLdRfVar var_39C
  loc_CFE182: FLdPr Me
  loc_CFE185: MemLdRfVar from_stack_1.global_84
  loc_CFE188: NewIfNullPr clsboleto
  loc_CFE18B: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE190: FLdPr var_39C
  loc_CFE193:  = Me.Fields
  loc_CFE198: FLdPr var_3A0
  loc_CFE19B: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE1A0: FLdPr var_3B4
  loc_CFE1A3:  = Me.Value
  loc_CFE1A8: FLdRfVar var_26C
  loc_CFE1AB: FLdRfVar var_3D0
  loc_CFE1AE: LitVarStr var_3CC, "UbicPost"
  loc_CFE1B3: PopAdLdVar
  loc_CFE1B4: FLdRfVar var_3BC
  loc_CFE1B7: FLdRfVar var_3B8
  loc_CFE1BA: FLdPr Me
  loc_CFE1BD: MemLdRfVar from_stack_1.global_84
  loc_CFE1C0: NewIfNullPr clsboleto
  loc_CFE1C3: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE1C8: FLdPr var_3B8
  loc_CFE1CB:  = Me.Fields
  loc_CFE1D0: FLdPr var_3BC
  loc_CFE1D3: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE1D8: FLdPr var_3D0
  loc_CFE1DB:  = Me.Value
  loc_CFE1E0: FLdRfVar var_3FC
  loc_CFE1E3: LitVarStr var_3F8, "UbicPost"
  loc_CFE1E8: PopAdLdVar
  loc_CFE1E9: FLdRfVar var_3E8
  loc_CFE1EC: FLdRfVar var_3E4
  loc_CFE1EF: FLdPr Me
  loc_CFE1F2: MemLdRfVar from_stack_1.global_84
  loc_CFE1F5: NewIfNullPr clsboleto
  loc_CFE1F8: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE1FD: FLdPr var_3E4
  loc_CFE200:  = Me.Fields
  loc_CFE205: FLdPr var_3E8
  loc_CFE208: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE20D: FLdRfVar var_428
  loc_CFE210: FLdRfVar var_418
  loc_CFE213: LitVarStr var_414, "Ubicacion"
  loc_CFE218: PopAdLdVar
  loc_CFE219: FLdRfVar var_404
  loc_CFE21C: FLdRfVar var_400
  loc_CFE21F: FLdPr Me
  loc_CFE222: MemLdRfVar from_stack_1.global_84
  loc_CFE225: NewIfNullPr clsboleto
  loc_CFE228: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE22D: FLdPr var_400
  loc_CFE230:  = Me.Fields
  loc_CFE235: FLdPr var_404
  loc_CFE238: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE23D: FLdPr var_418
  loc_CFE240:  = Me.Value
  loc_CFE245: LitI4 0
  loc_CFE24A: LitI4 -1
  loc_CFE24F: LitI4 1
  loc_CFE254: LitStr " "
  loc_CFE257: LitStr "'"
  loc_CFE25A: FLdRfVar var_428
  loc_CFE25D: CStrVarTmp
  loc_CFE25E: FStStrNoPop var_294
  loc_CFE261: ImpAdCallI2 Replace(, , , , , )
  loc_CFE266: CVarStr var_458
  loc_CFE269: FLdZeroAd var_3FC
  loc_CFE26C: CVarAd
  loc_CFE270: FLdRfVar var_26C
  loc_CFE273: LitVarStr var_3E0, vbNullString
  loc_CFE278: HardType
  loc_CFE279: NeVar var_28C
  loc_CFE27D: FStVar var_438
  loc_CFE281: FLdRfVar var_438
  loc_CFE284: FLdRfVar var_468
  loc_CFE287: ImpAdCallFPR4  = IIf(, , )
  loc_CFE28C: FLdRfVar var_578
  loc_CFE28F: FLdRfVar var_484
  loc_CFE292: LitVarStr var_480, "ColpPost"
  loc_CFE297: PopAdLdVar
  loc_CFE298: FLdRfVar var_470
  loc_CFE29B: FLdRfVar var_46C
  loc_CFE29E: FLdPr Me
  loc_CFE2A1: MemLdRfVar from_stack_1.global_84
  loc_CFE2A4: NewIfNullPr clsboleto
  loc_CFE2A7: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE2AC: FLdPr var_46C
  loc_CFE2AF:  = Me.Fields
  loc_CFE2B4: FLdPr var_470
  loc_CFE2B7: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE2BC: FLdPr var_484
  loc_CFE2BF:  = Me.Value
  loc_CFE2C4: FLdRfVar var_588
  loc_CFE2C7: FLdRfVar var_4A0
  loc_CFE2CA: LitVarStr var_49C, "DeloPost"
  loc_CFE2CF: PopAdLdVar
  loc_CFE2D0: FLdRfVar var_48C
  loc_CFE2D3: FLdRfVar var_488
  loc_CFE2D6: FLdPr Me
  loc_CFE2D9: MemLdRfVar from_stack_1.global_84
  loc_CFE2DC: NewIfNullPr clsboleto
  loc_CFE2DF: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE2E4: FLdPr var_488
  loc_CFE2E7:  = Me.Fields
  loc_CFE2EC: FLdPr var_48C
  loc_CFE2EF: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE2F4: FLdPr var_4A0
  loc_CFE2F7:  = Me.Value
  loc_CFE2FC: FLdRfVar var_598
  loc_CFE2FF: FLdRfVar var_4BC
  loc_CFE302: LitVarStr var_4B8, "CopoPost"
  loc_CFE307: PopAdLdVar
  loc_CFE308: FLdRfVar var_4A8
  loc_CFE30B: FLdRfVar var_4A4
  loc_CFE30E: FLdPr Me
  loc_CFE311: MemLdRfVar from_stack_1.global_84
  loc_CFE314: NewIfNullPr clsboleto
  loc_CFE317: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE31C: FLdPr var_4A4
  loc_CFE31F:  = Me.Fields
  loc_CFE324: FLdPr var_4A8
  loc_CFE327: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE32C: FLdPr var_4BC
  loc_CFE32F:  = Me.Value
  loc_CFE334: FLdRfVar var_5A8
  loc_CFE337: FLdRfVar var_4D8
  loc_CFE33A: LitVarStr var_4D4, "Vinculo"
  loc_CFE33F: PopAdLdVar
  loc_CFE340: FLdRfVar var_4C4
  loc_CFE343: FLdRfVar var_4C0
  loc_CFE346: FLdPr Me
  loc_CFE349: MemLdRfVar from_stack_1.global_84
  loc_CFE34C: NewIfNullPr clsboleto
  loc_CFE34F: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE354: FLdPr var_4C0
  loc_CFE357:  = Me.Fields
  loc_CFE35C: FLdPr var_4C4
  loc_CFE35F: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE364: FLdPr var_4D8
  loc_CFE367:  = Me.Value
  loc_CFE36C: FLdR8 var_170
  loc_CFE36F: FLdRfVar var_5A8
  loc_CFE372: CStrVarTmp
  loc_CFE373: FStStrNoPop var_2D8
  loc_CFE376: FLdR8 var_178
  loc_CFE379: FLdR8 var_118
  loc_CFE37C: FLdI2 var_BE
  loc_CFE37F: LitI2_Byte 0
  loc_CFE381: FLdR8 var_F8
  loc_CFE384: FLdR8 var_108
  loc_CFE387: FLdRfVar var_598
  loc_CFE38A: CStrVarTmp
  loc_CFE38B: FStStrNoPop var_2D4
  loc_CFE38E: FLdRfVar var_588
  loc_CFE391: CStrVarTmp
  loc_CFE392: FStStrNoPop var_2D0
  loc_CFE395: FLdRfVar var_578
  loc_CFE398: CI2Var
  loc_CFE399: FLdRfVar var_468
  loc_CFE39C: CStrVarVal var_2CC
  loc_CFE3A0: FLdRfVar var_568
  loc_CFE3A3: CStrVarTmp
  loc_CFE3A4: FStStrNoPop var_2C8
  loc_CFE3A7: FLdRfVar var_558
  loc_CFE3AA: CStrVarTmp
  loc_CFE3AB: FStStrNoPop var_2C4
  loc_CFE3AE: FLdRfVar var_548
  loc_CFE3B1: CStrVarTmp
  loc_CFE3B2: FStStrNoPop var_2C0
  loc_CFE3B5: FLdRfVar var_538
  loc_CFE3B8: CI2Var
  loc_CFE3B9: FLdRfVar var_528
  loc_CFE3BC: CStrVarTmp
  loc_CFE3BD: FStStrNoPop var_29C
  loc_CFE3C0: FLdRfVar var_25C
  loc_CFE3C3: CI4Var
  loc_CFE3C5: FLdRfVar var_518
  loc_CFE3C8: CI4Var
  loc_CFE3CA: FLdRfVar var_508
  loc_CFE3CD: CI2Var
  loc_CFE3CE: FLdRfVar var_4F8
  loc_CFE3D1: CStrVarTmp
  loc_CFE3D2: FStStrNoPop var_298
  loc_CFE3D5: FLdR8 var_F0
  loc_CFE3D8: LitI2_Byte 0
  loc_CFE3DA: CR8I2
  loc_CFE3DB: PopFPR8
  loc_CFE3DC: LitI2_Byte 0
  loc_CFE3DE: CR8I2
  loc_CFE3DF: PopFPR8
  loc_CFE3E0: LitI2_Byte 0
  loc_CFE3E2: CR8I2
  loc_CFE3E3: PopFPR8
  loc_CFE3E4: LitI2_Byte 0
  loc_CFE3E6: CR8I2
  loc_CFE3E7: PopFPR8
  loc_CFE3E8: FLdR8 var_F0
  loc_CFE3EB: LitI2_Byte 0
  loc_CFE3ED: CR8I2
  loc_CFE3EE: PopFPR8
  loc_CFE3EF: LitI2_Byte 0
  loc_CFE3F1: CR8I2
  loc_CFE3F2: PopFPR8
  loc_CFE3F3: ILdRf var_14C
  loc_CFE3F6: LitStr "Aforo"
  loc_CFE3F9: LitI2_Byte 1
  loc_CFE3FB: CUI1I2
  loc_CFE3FD: ILdRf var_CC
  loc_CFE400: FLdRfVar var_4E8
  loc_CFE403: CI4Var
  loc_CFE405: FLdI2 var_8A
  loc_CFE408: ILdRf var_290
  loc_CFE40B: CUI1Str
  loc_CFE40D: FLdPr Me
  loc_CFE410: MemLdI2 global_92
  loc_CFE413: CUI1I2
  loc_CFE415: ILdRf var_22C
  loc_CFE418: CI2Str
  loc_CFE41A: FLdPr Me
  loc_CFE41D: MemLdRfVar from_stack_1.global_68
  loc_CFE420: NewIfNullPr clsliqucome
  loc_CFE423: Call clsliqucome.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CFE428: FFreeStr var_294 = "": var_22C = "": var_290 = "": var_298 = "": var_29C = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = ""
  loc_CFE443: FFreeAd var_404 = "": var_418 = "": var_46C = "": var_470 = "": var_488 = "": var_48C = "": var_4A4 = "": var_4A8 = "": var_4C0 = "": var_4C4 = "": var_304 = "": var_310 = "": var_324 = "": var_330 = "": var_354 = "": var_360 = "": var_37C = "": var_398 = "": var_3B4 = "": var_484 = "": var_4A0 = "": var_4BC = "": var_4D8 = "": var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_31C = "": var_320 = "": var_328 = "": var_32C = "": var_334 = "": var_338 = "": var_340 = "": var_344 = "": var_34C = "": var_350 = "": var_358 = "": var_35C = "": var_364 = "": var_368 = "": var_380 = "": var_384 = "": var_39C = "": var_3A0 = "": var_3B8 = "": var_3BC = "": var_3D0 = "": var_3E4 = "": var_3E8 = ""
  loc_CFE4B0: FFreeVar var_190 = "": var_204 = "": var_228 = "": var_24C = "": var_26C = "": var_428 = "": var_438 = "": var_448 = "": var_458 = "": var_4E8 = "": var_4F8 = "": var_508 = "": var_518 = "": var_25C = "": var_528 = "": var_538 = "": var_548 = "": var_558 = "": var_568 = "": var_468 = "": var_578 = "": var_588 = "": var_598 = ""
  loc_CFE4E3: Branch loc_CFE679
  loc_CFE4E6: FLdRfVar var_22C
  loc_CFE4E9: FLdPr Me
  loc_CFE4EC: VCallAd Control_ID_PeriLiquTxt
  loc_CFE4EF: FStAdFunc var_180
  loc_CFE4F2: FLdPr var_180
  loc_CFE4F5:  = Me.Text
  loc_CFE4FA: FLdRfVar var_290
  loc_CFE4FD: FLdPr Me
  loc_CFE500: VCallAd Control_ID_CodiTiliTxt
  loc_CFE503: FStAdFunc var_218
  loc_CFE506: FLdPr var_218
  loc_CFE509:  = Me.Text
  loc_CFE50E: FLdRfVar var_190
  loc_CFE511: FLdRfVar var_304
  loc_CFE514: LitVarStr var_1A4, "CodiCome"
  loc_CFE519: PopAdLdVar
  loc_CFE51A: FLdRfVar var_2B0
  loc_CFE51D: FLdRfVar var_2AC
  loc_CFE520: FLdPr Me
  loc_CFE523: MemLdRfVar from_stack_1.global_56
  loc_CFE526: NewIfNullPr clscomercio
  loc_CFE529: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFE52E: FLdPr var_2AC
  loc_CFE531:  = Me.Fields
  loc_CFE536: FLdPr var_2B0
  loc_CFE539: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE53E: FLdPr var_304
  loc_CFE541:  = Me.Value
  loc_CFE546: FLdRfVar var_228
  loc_CFE549: FLdRfVar var_310
  loc_CFE54C: LitVarStr var_1B4, "CucuPers"
  loc_CFE551: PopAdLdVar
  loc_CFE552: FLdRfVar var_30C
  loc_CFE555: FLdRfVar var_308
  loc_CFE558: FLdPr Me
  loc_CFE55B: MemLdRfVar from_stack_1.global_56
  loc_CFE55E: NewIfNullPr clscomercio
  loc_CFE561: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFE566: FLdPr var_308
  loc_CFE569:  = Me.Fields
  loc_CFE56E: FLdPr var_30C
  loc_CFE571: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE576: FLdPr var_310
  loc_CFE579:  = Me.Value
  loc_CFE57E: FLdRfVar var_24C
  loc_CFE581: FLdRfVar var_324
  loc_CFE584: LitVarStr var_1C4, "CodiRuta"
  loc_CFE589: PopAdLdVar
  loc_CFE58A: FLdRfVar var_320
  loc_CFE58D: FLdRfVar var_31C
  loc_CFE590: FLdPr Me
  loc_CFE593: MemLdRfVar from_stack_1.global_56
  loc_CFE596: NewIfNullPr clscomercio
  loc_CFE599: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFE59E: FLdPr var_31C
  loc_CFE5A1:  = Me.Fields
  loc_CFE5A6: FLdPr var_320
  loc_CFE5A9: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE5AE: FLdPr var_324
  loc_CFE5B1:  = Me.Value
  loc_CFE5B6: FLdR8 var_170
  loc_CFE5B9: LitStr vbNullString
  loc_CFE5BC: FLdR8 var_178
  loc_CFE5BF: FLdR8 var_118
  loc_CFE5C2: FLdI2 var_BE
  loc_CFE5C5: LitI2_Byte 0
  loc_CFE5C7: FLdR8 var_F8
  loc_CFE5CA: FLdR8 var_108
  loc_CFE5CD: LitStr vbNullString
  loc_CFE5D0: LitStr vbNullString
  loc_CFE5D3: LitI2_Byte 0
  loc_CFE5D5: LitStr vbNullString
  loc_CFE5D8: LitStr vbNullString
  loc_CFE5DB: LitStr vbNullString
  loc_CFE5DE: LitStr vbNullString
  loc_CFE5E1: LitI2_Byte 0
  loc_CFE5E3: LitStr vbNullString
  loc_CFE5E6: LitI4 0
  loc_CFE5EB: LitI4 0
  loc_CFE5F0: FLdRfVar var_24C
  loc_CFE5F3: CI2Var
  loc_CFE5F4: FLdRfVar var_228
  loc_CFE5F7: CStrVarTmp
  loc_CFE5F8: FStStrNoPop var_294
  loc_CFE5FB: FLdR8 var_F0
  loc_CFE5FE: LitI2_Byte 0
  loc_CFE600: CR8I2
  loc_CFE601: PopFPR8
  loc_CFE602: LitI2_Byte 0
  loc_CFE604: CR8I2
  loc_CFE605: PopFPR8
  loc_CFE606: LitI2_Byte 0
  loc_CFE608: CR8I2
  loc_CFE609: PopFPR8
  loc_CFE60A: LitI2_Byte 0
  loc_CFE60C: CR8I2
  loc_CFE60D: PopFPR8
  loc_CFE60E: FLdR8 var_F0
  loc_CFE611: LitI2_Byte 0
  loc_CFE613: CR8I2
  loc_CFE614: PopFPR8
  loc_CFE615: LitI2_Byte 0
  loc_CFE617: CR8I2
  loc_CFE618: PopFPR8
  loc_CFE619: ILdRf var_14C
  loc_CFE61C: LitStr "Aforo"
  loc_CFE61F: LitI2_Byte 1
  loc_CFE621: CUI1I2
  loc_CFE623: ILdRf var_CC
  loc_CFE626: FLdRfVar var_190
  loc_CFE629: CI4Var
  loc_CFE62B: FLdI2 var_8A
  loc_CFE62E: ILdRf var_290
  loc_CFE631: CUI1Str
  loc_CFE633: FLdPr Me
  loc_CFE636: MemLdI2 global_92
  loc_CFE639: CUI1I2
  loc_CFE63B: ILdRf var_22C
  loc_CFE63E: CI2Str
  loc_CFE640: FLdPr Me
  loc_CFE643: MemLdRfVar from_stack_1.global_68
  loc_CFE646: NewIfNullPr clsliqucome
  loc_CFE649: Call clsliqucome.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CFE64E: FFreeStr var_22C = "": var_290 = ""
  loc_CFE657: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_31C = "": var_320 = "": var_304 = "": var_310 = ""
  loc_CFE670: FFreeVar var_190 = "": var_228 = ""
  loc_CFE679: FLdRfVar var_22C
  loc_CFE67C: FLdPr Me
  loc_CFE67F: VCallAd Control_ID_PeriLiquTxt
  loc_CFE682: FStAdFunc var_180
  loc_CFE685: FLdPr var_180
  loc_CFE688:  = Me.Text
  loc_CFE68D: FLdRfVar var_290
  loc_CFE690: FLdPr Me
  loc_CFE693: VCallAd Control_ID_CodiTiliTxt
  loc_CFE696: FStAdFunc var_218
  loc_CFE699: FLdPr var_218
  loc_CFE69C:  = Me.Text
  loc_CFE6A1: FLdRfVar var_190
  loc_CFE6A4: FLdRfVar var_304
  loc_CFE6A7: LitVarStr var_1A4, "CodiCome"
  loc_CFE6AC: PopAdLdVar
  loc_CFE6AD: FLdRfVar var_2B0
  loc_CFE6B0: FLdRfVar var_2AC
  loc_CFE6B3: FLdPr Me
  loc_CFE6B6: MemLdRfVar from_stack_1.global_56
  loc_CFE6B9: NewIfNullPr clscomercio
  loc_CFE6BC: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFE6C1: FLdPr var_2AC
  loc_CFE6C4:  = Me.Fields
  loc_CFE6C9: FLdPr var_2B0
  loc_CFE6CC: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE6D1: FLdPr var_304
  loc_CFE6D4:  = Me.Value
  loc_CFE6D9: FLdRfVar var_190
  loc_CFE6DC: CStrVarTmp
  loc_CFE6DD: FStStrNoPop var_294
  loc_CFE6E0: LitI2_Byte 2
  loc_CFE6E2: CUI1I2
  loc_CFE6E4: FLdI2 var_8A
  loc_CFE6E7: ILdRf var_290
  loc_CFE6EA: CUI1Str
  loc_CFE6EC: FLdPr Me
  loc_CFE6EF: MemLdI2 global_92
  loc_CFE6F2: CUI1I2
  loc_CFE6F4: ILdRf var_22C
  loc_CFE6F7: CI2Str
  loc_CFE6F9: FLdPr Me
  loc_CFE6FC: MemLdRfVar from_stack_1.global_80
  loc_CFE6FF: NewIfNullPr clsrecabole
  loc_CFE702: Call clsrecabole.ModificaRecabole(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CFE707: FFreeStr var_22C = "": var_290 = ""
  loc_CFE710: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = ""
  loc_CFE71D: FFree1Var var_190 = ""
  loc_CFE720: LitI2_Byte 0
  loc_CFE722: CR8I2
  loc_CFE723: FStFPR8 var_F0
  loc_CFE726: FLdPr Me
  loc_CFE729: MemLdRfVar from_stack_1.global_92
  loc_CFE72C: NextI2 var_314, loc_CFCFCE
  loc_CFE731: FLdRfVar var_17A
  loc_CFE734: FLdPr Me
  loc_CFE737: VCallAd Control_ID_CompletaOpt
  loc_CFE73A: FStAdFunc var_180
  loc_CFE73D: FLdPr var_180
  loc_CFE740:  = Me.Value
  loc_CFE745: FLdI2 var_17A
  loc_CFE748: LitI2_Byte &HFF
  loc_CFE74A: EqI2
  loc_CFE74B: FLdRfVar var_22C
  loc_CFE74E: FLdPr Me
  loc_CFE751: VCallAd Control_ID_BimeLiquTxt
  loc_CFE754: FStAdFunc var_218
  loc_CFE757: FLdPr var_218
  loc_CFE75A:  = Me.Text
  loc_CFE75F: ILdRf var_22C
  loc_CFE762: CR8Str
  loc_CFE764: LitI2_Byte 1
  loc_CFE766: CR8I2
  loc_CFE767: EqR4
  loc_CFE768: AndI4
  loc_CFE769: FLdI2 var_166
  loc_CFE76C: LitI2_Byte &HFF
  loc_CFE76E: EqI2
  loc_CFE76F: AndI4
  loc_CFE770: FFree1Str var_22C
  loc_CFE773: FFreeAd var_180 = ""
  loc_CFE77A: BranchF loc_CFEF47
  loc_CFE77D: FLdRfVar var_2A0
  loc_CFE780: FLdPr Me
  loc_CFE783: MemLdRfVar from_stack_1.global_84
  loc_CFE786: NewIfNullPr clsboleto
  loc_CFE789: from_stack_1 = clsboleto.RecordCount
  loc_CFE78E: ILdRf var_2A0
  loc_CFE791: LitI4 0
  loc_CFE796: GtI4
  loc_CFE797: BranchF loc_CFED98
  loc_CFE79A: FLdRfVar var_22C
  loc_CFE79D: FLdPr Me
  loc_CFE7A0: VCallAd Control_ID_PeriLiquTxt
  loc_CFE7A3: FStAdFunc var_180
  loc_CFE7A6: FLdPr var_180
  loc_CFE7A9:  = Me.Text
  loc_CFE7AE: FLdRfVar var_290
  loc_CFE7B1: FLdPr Me
  loc_CFE7B4: VCallAd Control_ID_CodiTiliTxt
  loc_CFE7B7: FStAdFunc var_218
  loc_CFE7BA: FLdPr var_218
  loc_CFE7BD:  = Me.Text
  loc_CFE7C2: FLdRfVar var_4F8
  loc_CFE7C5: FLdRfVar var_304
  loc_CFE7C8: LitVarStr var_1A4, "CodiCome"
  loc_CFE7CD: PopAdLdVar
  loc_CFE7CE: FLdRfVar var_2B0
  loc_CFE7D1: FLdRfVar var_2AC
  loc_CFE7D4: FLdPr Me
  loc_CFE7D7: MemLdRfVar from_stack_1.global_56
  loc_CFE7DA: NewIfNullPr clscomercio
  loc_CFE7DD: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFE7E2: FLdPr var_2AC
  loc_CFE7E5:  = Me.Fields
  loc_CFE7EA: FLdPr var_2B0
  loc_CFE7ED: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE7F2: FLdPr var_304
  loc_CFE7F5:  = Me.Value
  loc_CFE7FA: FLdPr Me
  loc_CFE7FD: VCallAd Control_ID_FeanVencMsk
  loc_CFE800: FStAdFunc var_308
  loc_CFE803: FLdPr var_308
  loc_CFE806: LateIdLdVar var_190 DispID_15 0
  loc_CFE80D: PopAd
  loc_CFE80F: FLdRfVar var_508
  loc_CFE812: FLdRfVar var_31C
  loc_CFE815: LitVarStr var_1B4, "CucuPers"
  loc_CFE81A: PopAdLdVar
  loc_CFE81B: FLdRfVar var_310
  loc_CFE81E: FLdRfVar var_30C
  loc_CFE821: FLdPr Me
  loc_CFE824: MemLdRfVar from_stack_1.global_56
  loc_CFE827: NewIfNullPr clscomercio
  loc_CFE82A: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFE82F: FLdPr var_30C
  loc_CFE832:  = Me.Fields
  loc_CFE837: FLdPr var_310
  loc_CFE83A: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE83F: FLdPr var_31C
  loc_CFE842:  = Me.Value
  loc_CFE847: FLdRfVar var_518
  loc_CFE84A: FLdRfVar var_328
  loc_CFE84D: LitVarStr var_1C4, "CodiRuta"
  loc_CFE852: PopAdLdVar
  loc_CFE853: FLdRfVar var_324
  loc_CFE856: FLdRfVar var_320
  loc_CFE859: FLdPr Me
  loc_CFE85C: MemLdRfVar from_stack_1.global_56
  loc_CFE85F: NewIfNullPr clscomercio
  loc_CFE862: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFE867: FLdPr var_320
  loc_CFE86A:  = Me.Fields
  loc_CFE86F: FLdPr var_324
  loc_CFE872: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE877: FLdPr var_328
  loc_CFE87A:  = Me.Value
  loc_CFE87F: FLdRfVar var_528
  loc_CFE882: FLdRfVar var_334
  loc_CFE885: LitVarStr var_1D4, "CodiCalle"
  loc_CFE88A: PopAdLdVar
  loc_CFE88B: FLdRfVar var_330
  loc_CFE88E: FLdRfVar var_32C
  loc_CFE891: FLdPr Me
  loc_CFE894: MemLdRfVar from_stack_1.global_84
  loc_CFE897: NewIfNullPr clsboleto
  loc_CFE89A: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE89F: FLdPr var_32C
  loc_CFE8A2:  = Me.Fields
  loc_CFE8A7: FLdPr var_330
  loc_CFE8AA: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE8AF: FLdPr var_334
  loc_CFE8B2:  = Me.Value
  loc_CFE8B7: FLdRfVar var_340
  loc_CFE8BA: LitVarStr var_1E4, "NumePost"
  loc_CFE8BF: PopAdLdVar
  loc_CFE8C0: FLdRfVar var_33C
  loc_CFE8C3: FLdRfVar var_338
  loc_CFE8C6: FLdPr Me
  loc_CFE8C9: MemLdRfVar from_stack_1.global_84
  loc_CFE8CC: NewIfNullPr clsboleto
  loc_CFE8CF: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE8D4: FLdPr var_338
  loc_CFE8D7:  = Me.Fields
  loc_CFE8DC: FLdPr var_33C
  loc_CFE8DF: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE8E4: FLdZeroAd var_340
  loc_CFE8E7: CVarAd
  loc_CFE8EB: ImpAdCallI2 IsNumeric()
  loc_CFE8F0: FStI2 var_17A
  loc_CFE8F3: FLdRfVar var_34C
  loc_CFE8F6: LitVarStr var_1F4, "NumePost"
  loc_CFE8FB: PopAdLdVar
  loc_CFE8FC: FLdRfVar var_348
  loc_CFE8FF: FLdRfVar var_344
  loc_CFE902: FLdPr Me
  loc_CFE905: MemLdRfVar from_stack_1.global_84
  loc_CFE908: NewIfNullPr clsboleto
  loc_CFE90B: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE910: FLdPr var_344
  loc_CFE913:  = Me.Fields
  loc_CFE918: FLdPr var_348
  loc_CFE91B: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE920: LitVarI2 var_25C, 0
  loc_CFE925: FLdZeroAd var_34C
  loc_CFE928: CVarAd
  loc_CFE92C: FLdI2 var_17A
  loc_CFE92F: CVarBoolI2 var_204
  loc_CFE933: FLdRfVar var_26C
  loc_CFE936: ImpAdCallFPR4  = IIf(, , )
  loc_CFE93B: FLdRfVar var_538
  loc_CFE93E: FLdRfVar var_358
  loc_CFE941: LitVarStr var_23C, "DecaPost"
  loc_CFE946: PopAdLdVar
  loc_CFE947: FLdRfVar var_354
  loc_CFE94A: FLdRfVar var_350
  loc_CFE94D: FLdPr Me
  loc_CFE950: MemLdRfVar from_stack_1.global_84
  loc_CFE953: NewIfNullPr clsboleto
  loc_CFE956: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE95B: FLdPr var_350
  loc_CFE95E:  = Me.Fields
  loc_CFE963: FLdPr var_354
  loc_CFE966: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE96B: FLdPr var_358
  loc_CFE96E:  = Me.Value
  loc_CFE973: FLdRfVar var_548
  loc_CFE976: FLdRfVar var_364
  loc_CFE979: LitVarStr var_27C, "CobpPost"
  loc_CFE97E: PopAdLdVar
  loc_CFE97F: FLdRfVar var_360
  loc_CFE982: FLdRfVar var_35C
  loc_CFE985: FLdPr Me
  loc_CFE988: MemLdRfVar from_stack_1.global_84
  loc_CFE98B: NewIfNullPr clsboleto
  loc_CFE98E: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE993: FLdPr var_35C
  loc_CFE996:  = Me.Fields
  loc_CFE99B: FLdPr var_360
  loc_CFE99E: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE9A3: FLdPr var_364
  loc_CFE9A6:  = Me.Value
  loc_CFE9AB: FLdRfVar var_558
  loc_CFE9AE: FLdRfVar var_380
  loc_CFE9B1: LitVarStr var_378, "DebaPost"
  loc_CFE9B6: PopAdLdVar
  loc_CFE9B7: FLdRfVar var_37C
  loc_CFE9BA: FLdRfVar var_368
  loc_CFE9BD: FLdPr Me
  loc_CFE9C0: MemLdRfVar from_stack_1.global_84
  loc_CFE9C3: NewIfNullPr clsboleto
  loc_CFE9C6: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFE9CB: FLdPr var_368
  loc_CFE9CE:  = Me.Fields
  loc_CFE9D3: FLdPr var_37C
  loc_CFE9D6: from_stack_2 = Me.Item(from_stack_1)
  loc_CFE9DB: FLdPr var_380
  loc_CFE9DE:  = Me.Value
  loc_CFE9E3: FLdRfVar var_568
  loc_CFE9E6: FLdRfVar var_39C
  loc_CFE9E9: LitVarStr var_394, "ManzPost"
  loc_CFE9EE: PopAdLdVar
  loc_CFE9EF: FLdRfVar var_398
  loc_CFE9F2: FLdRfVar var_384
  loc_CFE9F5: FLdPr Me
  loc_CFE9F8: MemLdRfVar from_stack_1.global_84
  loc_CFE9FB: NewIfNullPr clsboleto
  loc_CFE9FE: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFEA03: FLdPr var_384
  loc_CFEA06:  = Me.Fields
  loc_CFEA0B: FLdPr var_398
  loc_CFEA0E: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEA13: FLdPr var_39C
  loc_CFEA16:  = Me.Value
  loc_CFEA1B: FLdRfVar var_578
  loc_CFEA1E: FLdRfVar var_3B8
  loc_CFEA21: LitVarStr var_3B0, "CasaPost"
  loc_CFEA26: PopAdLdVar
  loc_CFEA27: FLdRfVar var_3B4
  loc_CFEA2A: FLdRfVar var_3A0
  loc_CFEA2D: FLdPr Me
  loc_CFEA30: MemLdRfVar from_stack_1.global_84
  loc_CFEA33: NewIfNullPr clsboleto
  loc_CFEA36: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFEA3B: FLdPr var_3A0
  loc_CFEA3E:  = Me.Fields
  loc_CFEA43: FLdPr var_3B4
  loc_CFEA46: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEA4B: FLdPr var_3B8
  loc_CFEA4E:  = Me.Value
  loc_CFEA53: FLdRfVar var_28C
  loc_CFEA56: FLdRfVar var_3E4
  loc_CFEA59: LitVarStr var_3CC, "UbicPost"
  loc_CFEA5E: PopAdLdVar
  loc_CFEA5F: FLdRfVar var_3D0
  loc_CFEA62: FLdRfVar var_3BC
  loc_CFEA65: FLdPr Me
  loc_CFEA68: MemLdRfVar from_stack_1.global_84
  loc_CFEA6B: NewIfNullPr clsboleto
  loc_CFEA6E: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFEA73: FLdPr var_3BC
  loc_CFEA76:  = Me.Fields
  loc_CFEA7B: FLdPr var_3D0
  loc_CFEA7E: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEA83: FLdPr var_3E4
  loc_CFEA86:  = Me.Value
  loc_CFEA8B: FLdRfVar var_400
  loc_CFEA8E: LitVarStr var_3F8, "UbicPost"
  loc_CFEA93: PopAdLdVar
  loc_CFEA94: FLdRfVar var_3FC
  loc_CFEA97: FLdRfVar var_3E8
  loc_CFEA9A: FLdPr Me
  loc_CFEA9D: MemLdRfVar from_stack_1.global_84
  loc_CFEAA0: NewIfNullPr clsboleto
  loc_CFEAA3: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFEAA8: FLdPr var_3E8
  loc_CFEAAB:  = Me.Fields
  loc_CFEAB0: FLdPr var_3FC
  loc_CFEAB3: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEAB8: FLdRfVar var_438
  loc_CFEABB: FLdRfVar var_46C
  loc_CFEABE: LitVarStr var_414, "Ubicacion"
  loc_CFEAC3: PopAdLdVar
  loc_CFEAC4: FLdRfVar var_418
  loc_CFEAC7: FLdRfVar var_404
  loc_CFEACA: FLdPr Me
  loc_CFEACD: MemLdRfVar from_stack_1.global_84
  loc_CFEAD0: NewIfNullPr clsboleto
  loc_CFEAD3: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFEAD8: FLdPr var_404
  loc_CFEADB:  = Me.Fields
  loc_CFEAE0: FLdPr var_418
  loc_CFEAE3: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEAE8: FLdPr var_46C
  loc_CFEAEB:  = Me.Value
  loc_CFEAF0: LitI4 0
  loc_CFEAF5: LitI4 -1
  loc_CFEAFA: LitI4 1
  loc_CFEAFF: LitStr " "
  loc_CFEB02: LitStr "'"
  loc_CFEB05: FLdRfVar var_438
  loc_CFEB08: CStrVarTmp
  loc_CFEB09: FStStrNoPop var_294
  loc_CFEB0C: ImpAdCallI2 Replace(, , , , , )
  loc_CFEB11: CVarStr var_468
  loc_CFEB14: FLdZeroAd var_400
  loc_CFEB17: CVarAd
  loc_CFEB1B: FLdRfVar var_28C
  loc_CFEB1E: LitVarStr var_3E0, vbNullString
  loc_CFEB23: HardType
  loc_CFEB24: NeVar var_428
  loc_CFEB28: FStVar var_448
  loc_CFEB2C: FLdRfVar var_448
  loc_CFEB2F: FLdRfVar var_4E8
  loc_CFEB32: ImpAdCallFPR4  = IIf(, , )
  loc_CFEB37: FLdRfVar var_588
  loc_CFEB3A: FLdRfVar var_488
  loc_CFEB3D: LitVarStr var_480, "ColpPost"
  loc_CFEB42: PopAdLdVar
  loc_CFEB43: FLdRfVar var_484
  loc_CFEB46: FLdRfVar var_470
  loc_CFEB49: FLdPr Me
  loc_CFEB4C: MemLdRfVar from_stack_1.global_84
  loc_CFEB4F: NewIfNullPr clsboleto
  loc_CFEB52: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFEB57: FLdPr var_470
  loc_CFEB5A:  = Me.Fields
  loc_CFEB5F: FLdPr var_484
  loc_CFEB62: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEB67: FLdPr var_488
  loc_CFEB6A:  = Me.Value
  loc_CFEB6F: FLdRfVar var_598
  loc_CFEB72: FLdRfVar var_4A4
  loc_CFEB75: LitVarStr var_49C, "DeloPost"
  loc_CFEB7A: PopAdLdVar
  loc_CFEB7B: FLdRfVar var_4A0
  loc_CFEB7E: FLdRfVar var_48C
  loc_CFEB81: FLdPr Me
  loc_CFEB84: MemLdRfVar from_stack_1.global_84
  loc_CFEB87: NewIfNullPr clsboleto
  loc_CFEB8A: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFEB8F: FLdPr var_48C
  loc_CFEB92:  = Me.Fields
  loc_CFEB97: FLdPr var_4A0
  loc_CFEB9A: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEB9F: FLdPr var_4A4
  loc_CFEBA2:  = Me.Value
  loc_CFEBA7: FLdRfVar var_5A8
  loc_CFEBAA: FLdRfVar var_4C0
  loc_CFEBAD: LitVarStr var_4B8, "CopoPost"
  loc_CFEBB2: PopAdLdVar
  loc_CFEBB3: FLdRfVar var_4BC
  loc_CFEBB6: FLdRfVar var_4A8
  loc_CFEBB9: FLdPr Me
  loc_CFEBBC: MemLdRfVar from_stack_1.global_84
  loc_CFEBBF: NewIfNullPr clsboleto
  loc_CFEBC2: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFEBC7: FLdPr var_4A8
  loc_CFEBCA:  = Me.Fields
  loc_CFEBCF: FLdPr var_4BC
  loc_CFEBD2: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEBD7: FLdPr var_4C0
  loc_CFEBDA:  = Me.Value
  loc_CFEBDF: FLdRfVar var_5BC
  loc_CFEBE2: FLdRfVar var_5AC
  loc_CFEBE5: LitVarStr var_4D4, "Vinculo"
  loc_CFEBEA: PopAdLdVar
  loc_CFEBEB: FLdRfVar var_4D8
  loc_CFEBEE: FLdRfVar var_4C4
  loc_CFEBF1: FLdPr Me
  loc_CFEBF4: MemLdRfVar from_stack_1.global_84
  loc_CFEBF7: NewIfNullPr clsboleto
  loc_CFEBFA: from_stack_1v = clsboleto.RsFrmGet()
  loc_CFEBFF: FLdPr var_4C4
  loc_CFEC02:  = Me.Fields
  loc_CFEC07: FLdPr var_4D8
  loc_CFEC0A: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEC0F: FLdPr var_5AC
  loc_CFEC12:  = Me.Value
  loc_CFEC17: FLdR8 var_170
  loc_CFEC1A: FLdRfVar var_5BC
  loc_CFEC1D: CStrVarTmp
  loc_CFEC1E: FStStrNoPop var_2DC
  loc_CFEC21: FLdR8 var_178
  loc_CFEC24: FLdR8 var_118
  loc_CFEC27: FLdI2 var_BE
  loc_CFEC2A: LitI2_Byte &HFF
  loc_CFEC2C: FLdR8 var_F8
  loc_CFEC2F: FLdR8 var_108
  loc_CFEC32: FLdRfVar var_5A8
  loc_CFEC35: CStrVarTmp
  loc_CFEC36: FStStrNoPop var_2D8
  loc_CFEC39: FLdRfVar var_598
  loc_CFEC3C: CStrVarTmp
  loc_CFEC3D: FStStrNoPop var_2D4
  loc_CFEC40: FLdRfVar var_588
  loc_CFEC43: CI2Var
  loc_CFEC44: FLdRfVar var_4E8
  loc_CFEC47: CStrVarVal var_2D0
  loc_CFEC4B: FLdRfVar var_578
  loc_CFEC4E: CStrVarTmp
  loc_CFEC4F: FStStrNoPop var_2CC
  loc_CFEC52: FLdRfVar var_568
  loc_CFEC55: CStrVarTmp
  loc_CFEC56: FStStrNoPop var_2C8
  loc_CFEC59: FLdRfVar var_558
  loc_CFEC5C: CStrVarTmp
  loc_CFEC5D: FStStrNoPop var_2C4
  loc_CFEC60: FLdRfVar var_548
  loc_CFEC63: CI2Var
  loc_CFEC64: FLdRfVar var_538
  loc_CFEC67: CStrVarTmp
  loc_CFEC68: FStStrNoPop var_2C0
  loc_CFEC6B: FLdRfVar var_26C
  loc_CFEC6E: CI4Var
  loc_CFEC70: FLdRfVar var_528
  loc_CFEC73: CI4Var
  loc_CFEC75: FLdRfVar var_518
  loc_CFEC78: CI2Var
  loc_CFEC79: FLdRfVar var_508
  loc_CFEC7C: CStrVarTmp
  loc_CFEC7D: FStStrNoPop var_29C
  loc_CFEC80: LitI2_Byte 0
  loc_CFEC82: CR8I2
  loc_CFEC83: PopFPR8
  loc_CFEC84: LitI2_Byte 0
  loc_CFEC86: CR8I2
  loc_CFEC87: PopFPR8
  loc_CFEC88: LitI2_Byte 0
  loc_CFEC8A: CR8I2
  loc_CFEC8B: PopFPR8
  loc_CFEC8C: LitI2_Byte 0
  loc_CFEC8E: CR8I2
  loc_CFEC8F: PopFPR8
  loc_CFEC90: LitI2_Byte 0
  loc_CFEC92: CR8I2
  loc_CFEC93: PopFPR8
  loc_CFEC94: LitI2_Byte 0
  loc_CFEC96: CR8I2
  loc_CFEC97: PopFPR8
  loc_CFEC98: LitI2_Byte 0
  loc_CFEC9A: CR8I2
  loc_CFEC9B: PopFPR8
  loc_CFEC9C: FLdR8 var_A4
  loc_CFEC9F: FLdRfVar var_190
  loc_CFECA2: CStrVarTmp
  loc_CFECA3: FStStrNoPop var_298
  loc_CFECA6: LitStr "Aforo"
  loc_CFECA9: LitI2_Byte 2
  loc_CFECAB: CUI1I2
  loc_CFECAD: ILdRf var_D0
  loc_CFECB0: FLdRfVar var_4F8
  loc_CFECB3: CI4Var
  loc_CFECB5: FLdI2 var_8A
  loc_CFECB8: ILdRf var_290
  loc_CFECBB: CUI1Str
  loc_CFECBD: LitI2_Byte 1
  loc_CFECBF: CUI1I2
  loc_CFECC1: ILdRf var_22C
  loc_CFECC4: CI2Str
  loc_CFECC6: FLdPr Me
  loc_CFECC9: MemLdRfVar from_stack_1.global_68
  loc_CFECCC: NewIfNullPr clsliqucome
  loc_CFECCF: Call clsliqucome.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CFECD4: FFreeStr var_294 = "": var_22C = "": var_290 = "": var_298 = "": var_29C = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = ""
  loc_CFECF1: FFreeAd var_404 = "": var_418 = "": var_46C = "": var_470 = "": var_484 = "": var_48C = "": var_4A0 = "": var_4A8 = "": var_4BC = "": var_4C4 = "": var_4D8 = "": var_304 = "": var_31C = "": var_328 = "": var_334 = "": var_358 = "": var_364 = "": var_380 = "": var_39C = "": var_3B8 = "": var_488 = "": var_4A4 = "": var_4C0 = "": var_5AC = "": var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_310 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_338 = "": var_33C = "": var_344 = "": var_348 = "": var_350 = "": var_354 = "": var_35C = "": var_360 = "": var_368 = "": var_37C = "": var_384 = "": var_398 = "": var_3A0 = "": var_3B4 = "": var_3BC = "": var_3D0 = "": var_3E4 = "": var_3E8 = ""
  loc_CFED60: FFreeVar var_190 = "": var_228 = "": var_204 = "": var_24C = "": var_25C = "": var_28C = "": var_438 = "": var_448 = "": var_458 = "": var_468 = "": var_4F8 = "": var_508 = "": var_518 = "": var_528 = "": var_26C = "": var_538 = "": var_548 = "": var_558 = "": var_568 = "": var_578 = "": var_4E8 = "": var_588 = "": var_598 = "": var_5A8 = ""
  loc_CFED95: Branch loc_CFEF47
  loc_CFED98: FLdRfVar var_22C
  loc_CFED9B: FLdPr Me
  loc_CFED9E: VCallAd Control_ID_PeriLiquTxt
  loc_CFEDA1: FStAdFunc var_180
  loc_CFEDA4: FLdPr var_180
  loc_CFEDA7:  = Me.Text
  loc_CFEDAC: FLdRfVar var_290
  loc_CFEDAF: FLdPr Me
  loc_CFEDB2: VCallAd Control_ID_CodiTiliTxt
  loc_CFEDB5: FStAdFunc var_218
  loc_CFEDB8: FLdPr var_218
  loc_CFEDBB:  = Me.Text
  loc_CFEDC0: FLdRfVar var_228
  loc_CFEDC3: FLdRfVar var_304
  loc_CFEDC6: LitVarStr var_1A4, "CodiCome"
  loc_CFEDCB: PopAdLdVar
  loc_CFEDCC: FLdRfVar var_2B0
  loc_CFEDCF: FLdRfVar var_2AC
  loc_CFEDD2: FLdPr Me
  loc_CFEDD5: MemLdRfVar from_stack_1.global_56
  loc_CFEDD8: NewIfNullPr clscomercio
  loc_CFEDDB: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFEDE0: FLdPr var_2AC
  loc_CFEDE3:  = Me.Fields
  loc_CFEDE8: FLdPr var_2B0
  loc_CFEDEB: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEDF0: FLdPr var_304
  loc_CFEDF3:  = Me.Value
  loc_CFEDF8: FLdPr Me
  loc_CFEDFB: VCallAd Control_ID_FeanVencMsk
  loc_CFEDFE: FStAdFunc var_308
  loc_CFEE01: FLdPr var_308
  loc_CFEE04: LateIdLdVar var_190 DispID_15 0
  loc_CFEE0B: PopAd
  loc_CFEE0D: FLdRfVar var_24C
  loc_CFEE10: FLdRfVar var_31C
  loc_CFEE13: LitVarStr var_1B4, "CucuPers"
  loc_CFEE18: PopAdLdVar
  loc_CFEE19: FLdRfVar var_310
  loc_CFEE1C: FLdRfVar var_30C
  loc_CFEE1F: FLdPr Me
  loc_CFEE22: MemLdRfVar from_stack_1.global_56
  loc_CFEE25: NewIfNullPr clscomercio
  loc_CFEE28: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFEE2D: FLdPr var_30C
  loc_CFEE30:  = Me.Fields
  loc_CFEE35: FLdPr var_310
  loc_CFEE38: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEE3D: FLdPr var_31C
  loc_CFEE40:  = Me.Value
  loc_CFEE45: FLdRfVar var_25C
  loc_CFEE48: FLdRfVar var_328
  loc_CFEE4B: LitVarStr var_1C4, "CodiRuta"
  loc_CFEE50: PopAdLdVar
  loc_CFEE51: FLdRfVar var_324
  loc_CFEE54: FLdRfVar var_320
  loc_CFEE57: FLdPr Me
  loc_CFEE5A: MemLdRfVar from_stack_1.global_56
  loc_CFEE5D: NewIfNullPr clscomercio
  loc_CFEE60: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFEE65: FLdPr var_320
  loc_CFEE68:  = Me.Fields
  loc_CFEE6D: FLdPr var_324
  loc_CFEE70: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEE75: FLdPr var_328
  loc_CFEE78:  = Me.Value
  loc_CFEE7D: FLdR8 var_170
  loc_CFEE80: LitStr vbNullString
  loc_CFEE83: FLdR8 var_178
  loc_CFEE86: FLdR8 var_118
  loc_CFEE89: FLdI2 var_BE
  loc_CFEE8C: LitI2_Byte &HFF
  loc_CFEE8E: FLdR8 var_F8
  loc_CFEE91: FLdR8 var_108
  loc_CFEE94: LitStr vbNullString
  loc_CFEE97: LitStr vbNullString
  loc_CFEE9A: LitI2_Byte 0
  loc_CFEE9C: LitStr vbNullString
  loc_CFEE9F: LitStr vbNullString
  loc_CFEEA2: LitStr vbNullString
  loc_CFEEA5: LitStr vbNullString
  loc_CFEEA8: LitI2_Byte 0
  loc_CFEEAA: LitStr vbNullString
  loc_CFEEAD: LitI4 0
  loc_CFEEB2: LitI4 0
  loc_CFEEB7: FLdRfVar var_25C
  loc_CFEEBA: CI2Var
  loc_CFEEBB: FLdRfVar var_24C
  loc_CFEEBE: CStrVarTmp
  loc_CFEEBF: FStStrNoPop var_298
  loc_CFEEC2: LitI2_Byte 0
  loc_CFEEC4: CR8I2
  loc_CFEEC5: PopFPR8
  loc_CFEEC6: LitI2_Byte 0
  loc_CFEEC8: CR8I2
  loc_CFEEC9: PopFPR8
  loc_CFEECA: LitI2_Byte 0
  loc_CFEECC: CR8I2
  loc_CFEECD: PopFPR8
  loc_CFEECE: LitI2_Byte 0
  loc_CFEED0: CR8I2
  loc_CFEED1: PopFPR8
  loc_CFEED2: LitI2_Byte 0
  loc_CFEED4: CR8I2
  loc_CFEED5: PopFPR8
  loc_CFEED6: LitI2_Byte 0
  loc_CFEED8: CR8I2
  loc_CFEED9: PopFPR8
  loc_CFEEDA: LitI2_Byte 0
  loc_CFEEDC: CR8I2
  loc_CFEEDD: PopFPR8
  loc_CFEEDE: FLdR8 var_A4
  loc_CFEEE1: FLdRfVar var_190
  loc_CFEEE4: CStrVarTmp
  loc_CFEEE5: FStStrNoPop var_294
  loc_CFEEE8: LitStr "Aforo"
  loc_CFEEEB: LitI2_Byte 2
  loc_CFEEED: CUI1I2
  loc_CFEEEF: ILdRf var_D0
  loc_CFEEF2: FLdRfVar var_228
  loc_CFEEF5: CI4Var
  loc_CFEEF7: FLdI2 var_8A
  loc_CFEEFA: ILdRf var_290
  loc_CFEEFD: CUI1Str
  loc_CFEEFF: LitI2_Byte 1
  loc_CFEF01: CUI1I2
  loc_CFEF03: ILdRf var_22C
  loc_CFEF06: CI2Str
  loc_CFEF08: FLdPr Me
  loc_CFEF0B: MemLdRfVar from_stack_1.global_68
  loc_CFEF0E: NewIfNullPr clsliqucome
  loc_CFEF11: Call clsliqucome.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CFEF16: FFreeStr var_22C = "": var_290 = "": var_294 = ""
  loc_CFEF21: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_310 = "": var_320 = "": var_324 = "": var_304 = "": var_31C = ""
  loc_CFEF3C: FFreeVar var_190 = "": var_228 = "": var_24C = ""
  loc_CFEF47: Branch loc_CFF04A
  loc_CFEF4A: FLdRfVar var_22C
  loc_CFEF4D: FLdPr Me
  loc_CFEF50: VCallAd Control_ID_PeriLiquTxt
  loc_CFEF53: FStAdFunc var_180
  loc_CFEF56: FLdPr var_180
  loc_CFEF59:  = Me.Text
  loc_CFEF5E: FLdRfVar var_290
  loc_CFEF61: FLdPr Me
  loc_CFEF64: VCallAd Control_ID_CodiTiliTxt
  loc_CFEF67: FStAdFunc var_218
  loc_CFEF6A: FLdPr var_218
  loc_CFEF6D:  = Me.Text
  loc_CFEF72: FLdRfVar var_25C
  loc_CFEF75: FLdRfVar var_304
  loc_CFEF78: LitVarStr var_1A4, "CodiCome"
  loc_CFEF7D: PopAdLdVar
  loc_CFEF7E: FLdRfVar var_2B0
  loc_CFEF81: FLdRfVar var_2AC
  loc_CFEF84: FLdPr Me
  loc_CFEF87: MemLdRfVar from_stack_1.global_56
  loc_CFEF8A: NewIfNullPr clscomercio
  loc_CFEF8D: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFEF92: FLdPr var_2AC
  loc_CFEF95:  = Me.Fields
  loc_CFEF9A: FLdPr var_2B0
  loc_CFEF9D: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEFA2: FLdPr var_304
  loc_CFEFA5:  = Me.Value
  loc_CFEFAA: LitVarStr var_1C4, "Cuenta: "
  loc_CFEFAF: FLdRfVar var_190
  loc_CFEFB2: FLdRfVar var_310
  loc_CFEFB5: LitVarStr var_1B4, "CodiCome"
  loc_CFEFBA: PopAdLdVar
  loc_CFEFBB: FLdRfVar var_30C
  loc_CFEFBE: FLdRfVar var_308
  loc_CFEFC1: FLdPr Me
  loc_CFEFC4: MemLdRfVar from_stack_1.global_56
  loc_CFEFC7: NewIfNullPr clscomercio
  loc_CFEFCA: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFEFCF: FLdPr var_308
  loc_CFEFD2:  = Me.Fields
  loc_CFEFD7: FLdPr var_30C
  loc_CFEFDA: from_stack_2 = Me.Item(from_stack_1)
  loc_CFEFDF: FLdPr var_310
  loc_CFEFE2:  = Me.Value
  loc_CFEFE7: FLdRfVar var_190
  loc_CFEFEA: ConcatVar var_228
  loc_CFEFEE: LitVarStr var_1D4, " El importe del calculo es 0"
  loc_CFEFF3: ConcatVar var_24C
  loc_CFEFF7: CStrVarVal var_294
  loc_CFEFFB: FLdRfVar var_25C
  loc_CFEFFE: CI4Var
  loc_CFF000: FLdI2 var_8A
  loc_CFF003: ILdRf var_290
  loc_CFF006: CUI1Str
  loc_CFF008: FLdPr Me
  loc_CFF00B: MemLdI2 global_92
  loc_CFF00E: CUI1I2
  loc_CFF010: ILdRf var_22C
  loc_CFF013: CI2Str
  loc_CFF015: FLdPr Me
  loc_CFF018: MemLdRfVar from_stack_1.global_68
  loc_CFF01B: NewIfNullPr clsliqucome
  loc_CFF01E: Call clsliqucome.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CFF023: FFreeStr var_22C = "": var_290 = ""
  loc_CFF02C: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_310 = ""
  loc_CFF03F: FFreeVar var_190 = "": var_228 = "": var_25C = ""
  loc_CFF04A: Branch loc_CFF14D
  loc_CFF04D: FLdRfVar var_22C
  loc_CFF050: FLdPr Me
  loc_CFF053: VCallAd Control_ID_PeriLiquTxt
  loc_CFF056: FStAdFunc var_180
  loc_CFF059: FLdPr var_180
  loc_CFF05C:  = Me.Text
  loc_CFF061: FLdRfVar var_290
  loc_CFF064: FLdPr Me
  loc_CFF067: VCallAd Control_ID_CodiTiliTxt
  loc_CFF06A: FStAdFunc var_218
  loc_CFF06D: FLdPr var_218
  loc_CFF070:  = Me.Text
  loc_CFF075: FLdRfVar var_25C
  loc_CFF078: FLdRfVar var_304
  loc_CFF07B: LitVarStr var_1A4, "CodiCome"
  loc_CFF080: PopAdLdVar
  loc_CFF081: FLdRfVar var_2B0
  loc_CFF084: FLdRfVar var_2AC
  loc_CFF087: FLdPr Me
  loc_CFF08A: MemLdRfVar from_stack_1.global_56
  loc_CFF08D: NewIfNullPr clscomercio
  loc_CFF090: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFF095: FLdPr var_2AC
  loc_CFF098:  = Me.Fields
  loc_CFF09D: FLdPr var_2B0
  loc_CFF0A0: from_stack_2 = Me.Item(from_stack_1)
  loc_CFF0A5: FLdPr var_304
  loc_CFF0A8:  = Me.Value
  loc_CFF0AD: LitVarStr var_1C4, "Cuenta: "
  loc_CFF0B2: FLdRfVar var_190
  loc_CFF0B5: FLdRfVar var_310
  loc_CFF0B8: LitVarStr var_1B4, "CodiCome"
  loc_CFF0BD: PopAdLdVar
  loc_CFF0BE: FLdRfVar var_30C
  loc_CFF0C1: FLdRfVar var_308
  loc_CFF0C4: FLdPr Me
  loc_CFF0C7: MemLdRfVar from_stack_1.global_56
  loc_CFF0CA: NewIfNullPr clscomercio
  loc_CFF0CD: from_stack_1v = clscomercio.RsFrmGet()
  loc_CFF0D2: FLdPr var_308
  loc_CFF0D5:  = Me.Fields
  loc_CFF0DA: FLdPr var_30C
  loc_CFF0DD: from_stack_2 = Me.Item(from_stack_1)
  loc_CFF0E2: FLdPr var_310
  loc_CFF0E5:  = Me.Value
  loc_CFF0EA: FLdRfVar var_190
  loc_CFF0ED: ConcatVar var_228
  loc_CFF0F1: LitVarStr var_1D4, " No existe la relación"
  loc_CFF0F6: ConcatVar var_24C
  loc_CFF0FA: CStrVarVal var_294
  loc_CFF0FE: FLdRfVar var_25C
  loc_CFF101: CI4Var
  loc_CFF103: FLdI2 var_8A
  loc_CFF106: ILdRf var_290
  loc_CFF109: CUI1Str
  loc_CFF10B: FLdPr Me
  loc_CFF10E: MemLdI2 global_92
  loc_CFF111: CUI1I2
  loc_CFF113: ILdRf var_22C
  loc_CFF116: CI2Str
  loc_CFF118: FLdPr Me
  loc_CFF11B: MemLdRfVar from_stack_1.global_68
  loc_CFF11E: NewIfNullPr clsliqucome
  loc_CFF121: Call clsliqucome.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CFF126: FFreeStr var_22C = "": var_290 = ""
  loc_CFF12F: FFreeAd var_180 = "": var_218 = "": var_2AC = "": var_2B0 = "": var_308 = "": var_30C = "": var_310 = ""
  loc_CFF142: FFreeVar var_190 = "": var_228 = "": var_25C = ""
  loc_CFF14D: FLdPr Me
  loc_CFF150: MemLdRfVar from_stack_1.global_56
  loc_CFF153: NewIfNullPr clscomercio
  loc_CFF156: Call clscomercio.MoveSiguiente()
  loc_CFF15B: Branch loc_CFC88E
  loc_CFF15E: LitI2_Byte 0
  loc_CFF160: FLdPr Me
  loc_CFF163: Me.MousePointer = from_stack_1
  loc_CFF168: LitVar_FALSE
  loc_CFF16C: PopAdLdVar
  loc_CFF16D: FLdPr Me
  loc_CFF170: VCallAd Control_ID_ProgressBar
  loc_CFF173: FStAdFunc var_180
  loc_CFF176: FLdPr var_180
  loc_CFF179: LateIdSt
  loc_CFF17E: FFree1Ad var_180
  loc_CFF181: LitStr "Proceso Terminado. Por favor controle el cálculo de tasas realizado"
  loc_CFF184: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CFF189: LitI4 0
  loc_CFF18E: LitI4 0
  loc_CFF193: FLdRfVar var_2BC
  loc_CFF196: Redim
  loc_CFF1A0: FLdPr Me
  loc_CFF1A3: VCallAd Control_ID_CalculoCmd
  loc_CFF1A6: CVarAd
  loc_CFF1AA: ParmAry1St
  loc_CFF1B0: FLdRfVar var_2BC
  loc_CFF1B3: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CFF1B8: FLdRfVar var_2BC
  loc_CFF1BB: Erase
  loc_CFF1BC: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_GotFocus() '9C6038
  'Data Table: 4DB9E8
  loc_9C6024: FLdPr Me
  loc_9C6027: VCallAd Control_ID_BimeLiquTxt
  loc_9C602A: CVarAd
  loc_9C602E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C6033: FFree1Var var_94 = ""
  loc_9C6036: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_Validate(Cancel As Boolean) 'A98718
  'Data Table: 4DB9E8
  loc_A98668: FLdRfVar var_8A
  loc_A9866B: FLdPr Me
  loc_A9866E: VCallAd Control_ID_BimeLiquTxt
  loc_A98671: FStAdFunc var_88
  loc_A98674: FLdPr var_88
  loc_A98677:  = Me.Enabled
  loc_A9867C: FLdI2 var_8A
  loc_A9867F: FFree1Ad var_88
  loc_A98682: BranchF loc_A98714
  loc_A98685: FLdRfVar var_90
  loc_A98688: FLdPr Me
  loc_A9868B: VCallAd Control_ID_BimeLiquTxt
  loc_A9868E: FStAdFunc var_88
  loc_A98691: FLdPr var_88
  loc_A98694:  = Me.Text
  loc_A98699: LitI2_Byte 0
  loc_A9869B: LitI2_Byte 0
  loc_A9869D: ILdRf var_90
  loc_A986A0: LitStr "bimestre"
  loc_A986A3: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A986A8: FStStrNoPop var_94
  loc_A986AB: FLdPr Me
  loc_A986AE: MemStStrCopy
  loc_A986B2: FFreeStr var_90 = ""
  loc_A986B9: FFree1Ad var_88
  loc_A986BC: FLdPr Me
  loc_A986BF: MemLdStr global_100
  loc_A986C2: LitStr vbNullString
  loc_A986C5: NeStr
  loc_A986C7: BranchF loc_A986ED
  loc_A986CA: FLdPr Me
  loc_A986CD: MemLdStr global_100
  loc_A986D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A986D5: FLdPr Me
  loc_A986D8: VCallAd Control_ID_BimeLiquTxt
  loc_A986DB: CVarAd
  loc_A986DF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A986E4: FFree1Var var_A4 = ""
  loc_A986E7: LitI2_Byte &HFF
  loc_A986E9: IStI2 Cancel
  loc_A986EC: ExitProcHresult
  loc_A986ED: FLdRfVar var_90
  loc_A986F0: FLdPr Me
  loc_A986F3: VCallAd Control_ID_BimeLiquTxt
  loc_A986F6: FStAdFunc var_88
  loc_A986F9: FLdPr var_88
  loc_A986FC:  = Me.Text
  loc_A98701: ILdRf var_90
  loc_A98704: CI2Str
  loc_A98706: PopTmpLdAd2 var_8A
  loc_A98709: Call Proc_307_25_A43E6C()
  loc_A9870E: FFree1Str var_90
  loc_A98711: FFree1Ad var_88
  loc_A98714: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() '9C5FF0
  'Data Table: 4DB9E8
  loc_9C5FDC: FLdPrThis
  loc_9C5FDD: VCallAd Control_ID_NumeCtaTxt
  loc_9C5FE0: CVarAd
  loc_9C5FE4: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5FE9: FFree1Var var_94 = ""
  loc_9C5FEC: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'AB58A4
  'Data Table: 4DB9E8
  loc_AB57C8: LitStr "1234567890 "
  loc_AB57CB: FStStrCopy var_88
  loc_AB57CE: FLdRfVar var_88
  loc_AB57D1: ILdRf KeyAscii
  loc_AB57D4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB57D9: IStI2 KeyAscii
  loc_AB57DC: FFree1Str var_88
  loc_AB57DF: ILdI2 KeyAscii
  loc_AB57E2: LitI2_Byte &H20
  loc_AB57E4: EqI2
  loc_AB57E5: BranchF loc_AB58A0
  loc_AB57E8: LitI2_Byte 0
  loc_AB57EA: IStI2 KeyAscii
  loc_AB57ED: LitI2_Byte 1
  loc_AB57EF: CUI1I2
  loc_AB57F1: ImpAdStUI1 MemVar_D93038
  loc_AB57F5: LitVar_Missing var_A8
  loc_AB57F8: PopAdLdVar
  loc_AB57F9: LitVarI4
  loc_AB5801: PopAdLdVar
  loc_AB5802: ImpAdLdRf MemVar_D94034
  loc_AB5805: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB5808: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_AB580D: FLdRfVar var_B0
  loc_AB5810: FLdRfVar var_AC
  loc_AB5813: ImpAdLdRf MemVar_D94034
  loc_AB5816: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB5819: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB581E: FLdPr var_AC
  loc_AB5821: from_stack_1 = clsbase.RecordCount
  loc_AB5826: ILdRf var_B0
  loc_AB5829: LitI4 0
  loc_AB582E: GtI4
  loc_AB582F: FFree1Ad var_AC
  loc_AB5832: BranchF loc_AB58A0
  loc_AB5835: FLdRfVar var_CC
  loc_AB5838: FLdRfVar var_BC
  loc_AB583B: LitVarStr var_98, "CuenCtct"
  loc_AB5840: PopAdLdVar
  loc_AB5841: FLdRfVar var_B8
  loc_AB5844: FLdRfVar var_B4
  loc_AB5847: FLdRfVar var_AC
  loc_AB584A: ImpAdLdRf MemVar_D94034
  loc_AB584D: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB5850: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB5855: FLdPr var_AC
  loc_AB5858: from_stack_1v = clsbase.RsFrmGet()
  loc_AB585D: FLdPr var_B4
  loc_AB5860:  = Me.Fields
  loc_AB5865: FLdPr var_B8
  loc_AB5868: from_stack_2 = Me.Item(from_stack_1)
  loc_AB586D: FLdPr var_BC
  loc_AB5870:  = Me.Value
  loc_AB5875: FLdRfVar var_CC
  loc_AB5878: CStrVarTmp
  loc_AB5879: FStStrNoPop var_88
  loc_AB587C: FLdPr Me
  loc_AB587F: VCallAd Control_ID_NumeCtaTxt
  loc_AB5882: FStAdFunc var_D0
  loc_AB5885: FLdPr var_D0
  loc_AB5888: Me.Text = from_stack_1
  loc_AB588D: FFree1Str var_88
  loc_AB5890: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB589D: FFree1Var var_CC = ""
  loc_AB58A0: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'AF291C
  'Data Table: 4DB9E8
  loc_AF276C: FLdRfVar var_8A
  loc_AF276F: FLdPr Me
  loc_AF2772: VCallAd Control_ID_NumeCtaTxt
  loc_AF2775: FStAdFunc var_88
  loc_AF2778: FLdPr var_88
  loc_AF277B:  = Me.Enabled
  loc_AF2780: FLdI2 var_8A
  loc_AF2783: FFree1Ad var_88
  loc_AF2786: BranchF loc_AF291B
  loc_AF2789: FLdRfVar var_90
  loc_AF278C: FLdPr Me
  loc_AF278F: VCallAd Control_ID_NumeCtaTxt
  loc_AF2792: FStAdFunc var_88
  loc_AF2795: FLdPr var_88
  loc_AF2798:  = Me.Text
  loc_AF279D: LitI2_Byte &HFF
  loc_AF279F: LitI2_Byte 0
  loc_AF27A1: ILdRf var_90
  loc_AF27A4: LitStr "Numero de Cuenta"
  loc_AF27A7: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AF27AC: FStStrNoPop var_94
  loc_AF27AF: FLdPr Me
  loc_AF27B2: MemStStrCopy
  loc_AF27B6: FFreeStr var_90 = ""
  loc_AF27BD: FFree1Ad var_88
  loc_AF27C0: FLdPr Me
  loc_AF27C3: MemLdStr global_100
  loc_AF27C6: LitStr vbNullString
  loc_AF27C9: NeStr
  loc_AF27CB: BranchF loc_AF27F0
  loc_AF27CE: FLdPr Me
  loc_AF27D1: MemLdStr global_100
  loc_AF27D4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF27D9: FLdPr Me
  loc_AF27DC: VCallAd Control_ID_NumeCtaTxt
  loc_AF27DF: CVarAd
  loc_AF27E3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF27E8: FFree1Var var_A4 = ""
  loc_AF27EB: LitI2_Byte &HFF
  loc_AF27ED: IStI2 Cancel
  loc_AF27F0: FLdRfVar var_90
  loc_AF27F3: FLdPr Me
  loc_AF27F6: VCallAd Control_ID_NumeCtaTxt
  loc_AF27F9: FStAdFunc var_88
  loc_AF27FC: FLdPr var_88
  loc_AF27FF:  = Me.Text
  loc_AF2804: ILdRf var_90
  loc_AF2807: CR8Str
  loc_AF2809: LitI2_Byte 0
  loc_AF280B: CR8I2
  loc_AF280C: GtR4
  loc_AF280D: FFree1Str var_90
  loc_AF2810: FFree1Ad var_88
  loc_AF2813: BranchF loc_AF291B
  loc_AF2816: FLdRfVar var_90
  loc_AF2819: FLdPr Me
  loc_AF281C: VCallAd Control_ID_NumeCtaTxt
  loc_AF281F: FStAdFunc var_88
  loc_AF2822: FLdPr var_88
  loc_AF2825:  = Me.Text
  loc_AF282A: FLdPr Me
  loc_AF282D: MemLdRfVar from_stack_1.global_88
  loc_AF2830: NewIfNullRf
  loc_AF2834: LitStr "Titular"
  loc_AF2837: ILdRf var_90
  loc_AF283A: LitI2_Byte 2
  loc_AF283C: CStrUI1
  loc_AF283E: FStStrNoPop var_94
  loc_AF2841: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_AF2846: FFreeStr var_94 = ""
  loc_AF284D: FFree1Ad var_88
  loc_AF2850: BranchF loc_AF28AC
  loc_AF2853: FLdRfVar var_90
  loc_AF2856: FLdPr Me
  loc_AF2859: MemLdRfVar from_stack_1.global_88
  loc_AF285C: NewIfNullPr tblPersona
  loc_AF285F: from_stack_1v = tblPersona.CucuPersGet()
  loc_AF2864: ILdRf var_90
  loc_AF2867: FLdPr Me
  loc_AF286A: VCallAd Control_ID_CucuPersLbl
  loc_AF286D: FStAdFunc var_88
  loc_AF2870: FLdPr var_88
  loc_AF2873: Me.Caption = from_stack_1
  loc_AF2878: FFree1Str var_90
  loc_AF287B: FFree1Ad var_88
  loc_AF287E: FLdRfVar var_90
  loc_AF2881: FLdPr Me
  loc_AF2884: MemLdRfVar from_stack_1.global_88
  loc_AF2887: NewIfNullPr tblPersona
  loc_AF288A: from_stack_1v = tblPersona.DetaPersGet()
  loc_AF288F: ILdRf var_90
  loc_AF2892: FLdPr Me
  loc_AF2895: VCallAd Control_ID_DetaPersLbl
  loc_AF2898: FStAdFunc var_88
  loc_AF289B: FLdPr var_88
  loc_AF289E: Me.Caption = from_stack_1
  loc_AF28A3: FFree1Str var_90
  loc_AF28A6: FFree1Ad var_88
  loc_AF28A9: Branch loc_AF291B
  loc_AF28AC: FLdRfVar var_90
  loc_AF28AF: FLdPr Me
  loc_AF28B2: MemLdRfVar from_stack_1.global_88
  loc_AF28B5: NewIfNullPr tblPersona
  loc_AF28B8: from_stack_1v = tblPersona.MsgErrorGet()
  loc_AF28BD: ILdRf var_90
  loc_AF28C0: FLdPr Me
  loc_AF28C3: MemStStrCopy
  loc_AF28C7: FFree1Str var_90
  loc_AF28CA: FLdPr Me
  loc_AF28CD: MemLdStr global_100
  loc_AF28D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF28D5: LitStr vbNullString
  loc_AF28D8: FLdPr Me
  loc_AF28DB: VCallAd Control_ID_CucuPersLbl
  loc_AF28DE: FStAdFunc var_88
  loc_AF28E1: FLdPr var_88
  loc_AF28E4: Me.Caption = from_stack_1
  loc_AF28E9: FFree1Ad var_88
  loc_AF28EC: LitStr vbNullString
  loc_AF28EF: FLdPr Me
  loc_AF28F2: VCallAd Control_ID_DetaPersLbl
  loc_AF28F5: FStAdFunc var_88
  loc_AF28F8: FLdPr var_88
  loc_AF28FB: Me.Caption = from_stack_1
  loc_AF2900: FFree1Ad var_88
  loc_AF2903: FLdPr Me
  loc_AF2906: VCallAd Control_ID_NumeCtaTxt
  loc_AF2909: CVarAd
  loc_AF290D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF2912: FFree1Var var_A4 = ""
  loc_AF2915: LitI2_Byte &HFF
  loc_AF2917: IStI2 Cancel
  loc_AF291A: ExitProcHresult
  loc_AF291B: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_GotFocus() '9C6158
  'Data Table: 4DB9E8
  loc_9C6144: FLdPr Me
  loc_9C6147: VCallAd Control_ID_CodiTiliTxt
  loc_9C614A: CVarAd
  loc_9C614E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6153: FFree1Var var_94 = ""
  loc_9C6156: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_KeyPress(KeyAscii As Integer) '9CABE4
  'Data Table: 4DB9E8
  loc_9CABCC: LitStr "1234567890"
  loc_9CABCF: FStStrCopy var_88
  loc_9CABD2: FLdRfVar var_88
  loc_9CABD5: ILdRf KeyAscii
  loc_9CABD8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CABDD: IStI2 KeyAscii
  loc_9CABE0: FFree1Str var_88
  loc_9CABE3: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_Validate(Cancel As Boolean) 'B2F914
  'Data Table: 4DB9E8
  loc_B2F634: FLdRfVar var_8A
  loc_B2F637: FLdPr Me
  loc_B2F63A: VCallAd Control_ID_CodiTiliTxt
  loc_B2F63D: FStAdFunc var_88
  loc_B2F640: FLdPr var_88
  loc_B2F643:  = Me.Enabled
  loc_B2F648: FLdI2 var_8A
  loc_B2F64B: FFree1Ad var_88
  loc_B2F64E: BranchF loc_B2F912
  loc_B2F651: FLdRfVar var_90
  loc_B2F654: FLdPr Me
  loc_B2F657: VCallAd Control_ID_CodiTiliTxt
  loc_B2F65A: FStAdFunc var_88
  loc_B2F65D: FLdPr var_88
  loc_B2F660:  = Me.Text
  loc_B2F665: ILdRf var_90
  loc_B2F668: LitI2_Byte 2
  loc_B2F66A: CUI1I2
  loc_B2F66C: ImpAdCallI2  = Proc_18_25_A7CBA0()
  loc_B2F671: FStStrNoPop var_94
  loc_B2F674: FLdPr Me
  loc_B2F677: MemStStrCopy
  loc_B2F67B: FFreeStr var_90 = ""
  loc_B2F682: FFree1Ad var_88
  loc_B2F685: FLdPr Me
  loc_B2F688: MemLdStr global_100
  loc_B2F68B: LitStr vbNullString
  loc_B2F68E: NeStr
  loc_B2F690: BranchF loc_B2F6B6
  loc_B2F693: FLdPr Me
  loc_B2F696: MemLdStr global_100
  loc_B2F699: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B2F69E: FLdPr Me
  loc_B2F6A1: VCallAd Control_ID_CodiTiliTxt
  loc_B2F6A4: CVarAd
  loc_B2F6A8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B2F6AD: FFree1Var var_A4 = ""
  loc_B2F6B0: LitI2_Byte &HFF
  loc_B2F6B2: IStI2 Cancel
  loc_B2F6B5: ExitProcHresult
  loc_B2F6B6: FLdPr Me
  loc_B2F6B9: MemLdI2 global_94
  loc_B2F6BC: FLdPr Me
  loc_B2F6BF: MemLdRfVar from_stack_1.global_92
  loc_B2F6C2: FLdPr Me
  loc_B2F6C5: MemLdI2 global_96
  loc_B2F6C8: ForI2 var_A8
  loc_B2F6CE: FLdRfVar var_90
  loc_B2F6D1: FLdPr Me
  loc_B2F6D4: VCallAd Control_ID_PeriLiquTxt
  loc_B2F6D7: FStAdFunc var_88
  loc_B2F6DA: FLdPr var_88
  loc_B2F6DD:  = Me.Text
  loc_B2F6E2: FLdRfVar var_94
  loc_B2F6E5: FLdPr Me
  loc_B2F6E8: VCallAd Control_ID_CodiTiliTxt
  loc_B2F6EB: FStAdFunc var_AC
  loc_B2F6EE: FLdPr var_AC
  loc_B2F6F1:  = Me.Text
  loc_B2F6F6: ILdRf var_94
  loc_B2F6F9: CUI1Str
  loc_B2F6FB: LitI2_Byte 2
  loc_B2F6FD: CUI1I2
  loc_B2F6FF: FLdPr Me
  loc_B2F702: MemLdI2 global_92
  loc_B2F705: CStrUI1
  loc_B2F707: FStStrNoPop var_B0
  loc_B2F70A: ILdRf var_90
  loc_B2F70D: CI2Str
  loc_B2F70F: ImpAdCallI2  = Proc_18_58_AAF980(, )
  loc_B2F714: FStStrNoPop var_B4
  loc_B2F717: FLdPr Me
  loc_B2F71A: MemStStrCopy
  loc_B2F71E: FFreeStr var_90 = "": var_B0 = "": var_94 = ""
  loc_B2F729: FFreeAd var_88 = ""
  loc_B2F730: FLdPr Me
  loc_B2F733: MemLdStr global_100
  loc_B2F736: LitStr vbNullString
  loc_B2F739: NeStr
  loc_B2F73B: BranchF loc_B2F7A3
  loc_B2F73E: LitStr "No esta definido el vencimiento para el mes numero: "
  loc_B2F741: FLdPr Me
  loc_B2F744: MemLdI2 global_92
  loc_B2F747: CStrUI1
  loc_B2F749: FStStrNoPop var_90
  loc_B2F74C: ConcatStr
  loc_B2F74D: FStStrNoPop var_94
  loc_B2F750: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B2F755: FFreeStr var_90 = ""
  loc_B2F75C: LitI2_Byte 0
  loc_B2F75E: FLdPr Me
  loc_B2F761: VCallAd Control_ID_Label4
  loc_B2F764: FStAdFunc var_88
  loc_B2F767: FLdPr var_88
  loc_B2F76A: Me.Visible = from_stack_1b
  loc_B2F76F: FFree1Ad var_88
  loc_B2F772: LitVar_FALSE
  loc_B2F776: PopAdLdVar
  loc_B2F777: FLdPr Me
  loc_B2F77A: VCallAd Control_ID_FeveVencMsk
  loc_B2F77D: FStAdFunc var_88
  loc_B2F780: FLdPr var_88
  loc_B2F783: LateIdSt
  loc_B2F788: FFree1Ad var_88
  loc_B2F78B: FLdPr Me
  loc_B2F78E: VCallAd Control_ID_CodiTiliTxt
  loc_B2F791: CVarAd
  loc_B2F795: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B2F79A: FFree1Var var_A4 = ""
  loc_B2F79D: LitI2_Byte &HFF
  loc_B2F79F: IStI2 Cancel
  loc_B2F7A2: ExitProcHresult
  loc_B2F7A3: FLdPr Me
  loc_B2F7A6: MemLdI2 global_92
  loc_B2F7A9: LitI2_Byte 1
  loc_B2F7AB: EqI2
  loc_B2F7AC: BranchF loc_B2F907
  loc_B2F7AF: FLdRfVar var_90
  loc_B2F7B2: FLdPr Me
  loc_B2F7B5: VCallAd Control_ID_PeriLiquTxt
  loc_B2F7B8: FStAdFunc var_88
  loc_B2F7BB: FLdPr var_88
  loc_B2F7BE:  = Me.Text
  loc_B2F7C3: FLdRfVar var_94
  loc_B2F7C6: FLdPr Me
  loc_B2F7C9: VCallAd Control_ID_CodiTiliTxt
  loc_B2F7CC: FStAdFunc var_AC
  loc_B2F7CF: FLdPr var_AC
  loc_B2F7D2:  = Me.Text
  loc_B2F7D7: ILdRf var_94
  loc_B2F7DA: CUI1Str
  loc_B2F7DC: LitI2_Byte 2
  loc_B2F7DE: CUI1I2
  loc_B2F7E0: FLdPr Me
  loc_B2F7E3: MemLdI2 global_92
  loc_B2F7E6: CStrUI1
  loc_B2F7E8: FStStrNoPop var_B0
  loc_B2F7EB: ILdRf var_90
  loc_B2F7EE: CI2Str
  loc_B2F7F0: ImpAdCallI2  = Proc_18_60_AAEDA4(, )
  loc_B2F7F5: FStStrNoPop var_B4
  loc_B2F7F8: FLdPr Me
  loc_B2F7FB: MemStStrCopy
  loc_B2F7FF: FFreeStr var_90 = "": var_B0 = "": var_94 = ""
  loc_B2F80A: FFreeAd var_88 = ""
  loc_B2F811: FLdPr Me
  loc_B2F814: MemLdStr global_100
  loc_B2F817: LitStr vbNullString
  loc_B2F81A: NeStr
  loc_B2F81C: BranchF loc_B2F86E
  loc_B2F81F: LitStr "No esta definido el vencimiento para el ANUAL"
  loc_B2F822: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B2F827: LitI2_Byte 0
  loc_B2F829: FLdPr Me
  loc_B2F82C: VCallAd Control_ID_Label4
  loc_B2F82F: FStAdFunc var_88
  loc_B2F832: FLdPr var_88
  loc_B2F835: Me.Visible = from_stack_1b
  loc_B2F83A: FFree1Ad var_88
  loc_B2F83D: LitVar_FALSE
  loc_B2F841: PopAdLdVar
  loc_B2F842: FLdPr Me
  loc_B2F845: VCallAd Control_ID_FeveVencMsk
  loc_B2F848: FStAdFunc var_88
  loc_B2F84B: FLdPr var_88
  loc_B2F84E: LateIdSt
  loc_B2F853: FFree1Ad var_88
  loc_B2F856: FLdPr Me
  loc_B2F859: VCallAd Control_ID_CodiTiliTxt
  loc_B2F85C: CVarAd
  loc_B2F860: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B2F865: FFree1Var var_A4 = ""
  loc_B2F868: LitI2_Byte &HFF
  loc_B2F86A: IStI2 Cancel
  loc_B2F86D: ExitProcHresult
  loc_B2F86E: FLdRfVar var_90
  loc_B2F871: FLdPr Me
  loc_B2F874: VCallAd Control_ID_PeriLiquTxt
  loc_B2F877: FStAdFunc var_88
  loc_B2F87A: FLdPr var_88
  loc_B2F87D:  = Me.Text
  loc_B2F882: FLdRfVar var_94
  loc_B2F885: FLdPr Me
  loc_B2F888: VCallAd Control_ID_CodiTiliTxt
  loc_B2F88B: FStAdFunc var_AC
  loc_B2F88E: FLdPr var_AC
  loc_B2F891:  = Me.Text
  loc_B2F896: ILdRf var_94
  loc_B2F899: CUI1Str
  loc_B2F89B: LitI2_Byte 2
  loc_B2F89D: CUI1I2
  loc_B2F89F: FLdPr Me
  loc_B2F8A2: MemLdI2 global_92
  loc_B2F8A5: CUI1I2
  loc_B2F8A7: ILdRf var_90
  loc_B2F8AA: CI2Str
  loc_B2F8AC: ImpAdCallI2  = Proc_270_62_ABCC3C()
  loc_B2F8B1: CVarStr var_A4
  loc_B2F8B4: PopAdLdVar
  loc_B2F8B5: FLdPr Me
  loc_B2F8B8: VCallAd Control_ID_FeanVencMsk
  loc_B2F8BB: FStAdFunc var_D8
  loc_B2F8BE: FLdPr var_D8
  loc_B2F8C1: LateIdSt
  loc_B2F8C6: FFreeStr var_90 = ""
  loc_B2F8CD: FFreeAd var_88 = "": var_AC = ""
  loc_B2F8D6: FFree1Var var_A4 = ""
  loc_B2F8D9: LitI2_Byte &HFF
  loc_B2F8DB: FLdPr Me
  loc_B2F8DE: VCallAd Control_ID_Label5
  loc_B2F8E1: FStAdFunc var_88
  loc_B2F8E4: FLdPr var_88
  loc_B2F8E7: Me.Visible = from_stack_1b
  loc_B2F8EC: FFree1Ad var_88
  loc_B2F8EF: LitVar_TRUE var_C4
  loc_B2F8F2: PopAdLdVar
  loc_B2F8F3: FLdPr Me
  loc_B2F8F6: VCallAd Control_ID_FeanVencMsk
  loc_B2F8F9: FStAdFunc var_88
  loc_B2F8FC: FLdPr var_88
  loc_B2F8FF: LateIdSt
  loc_B2F904: FFree1Ad var_88
  loc_B2F907: FLdPr Me
  loc_B2F90A: MemLdRfVar from_stack_1.global_92
  loc_B2F90D: NextI2 var_A8, loc_B2F6CE
  loc_B2F912: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_GotFocus() '9C6080
  'Data Table: 4DB9E8
  loc_9C606C: FLdPr Me
  loc_9C606F: VCallAd Control_ID_PeriLiquTxt
  loc_9C6072: CVarAd
  loc_9C6076: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C607B: FFree1Var var_94 = ""
  loc_9C607E: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_KeyPress(KeyAscii As Integer) '9CACC8
  'Data Table: 4DB9E8
  loc_9CACB0: LitStr "1234567890"
  loc_9CACB3: FStStrCopy var_88
  loc_9CACB6: FLdRfVar var_88
  loc_9CACB9: ILdRf KeyAscii
  loc_9CACBC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CACC1: IStI2 KeyAscii
  loc_9CACC4: FFree1Str var_88
  loc_9CACC7: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_Validate(Cancel As Boolean) 'A6BC58
  'Data Table: 4DB9E8
  loc_A6BBF0: FLdRfVar var_8C
  loc_A6BBF3: FLdPr Me
  loc_A6BBF6: VCallAd Control_ID_PeriLiquTxt
  loc_A6BBF9: FStAdFunc var_88
  loc_A6BBFC: FLdPr var_88
  loc_A6BBFF:  = Me.Text
  loc_A6BC04: LitI2_Byte 0
  loc_A6BC06: ILdRf var_8C
  loc_A6BC09: LitStr "el Año"
  loc_A6BC0C: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6BC11: FStStrNoPop var_90
  loc_A6BC14: FLdPr Me
  loc_A6BC17: MemStStrCopy
  loc_A6BC1B: FFreeStr var_8C = ""
  loc_A6BC22: FFree1Ad var_88
  loc_A6BC25: FLdPr Me
  loc_A6BC28: MemLdStr global_100
  loc_A6BC2B: LitStr vbNullString
  loc_A6BC2E: NeStr
  loc_A6BC30: BranchF loc_A6BC55
  loc_A6BC33: FLdPr Me
  loc_A6BC36: MemLdStr global_100
  loc_A6BC39: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6BC3E: FLdPr Me
  loc_A6BC41: VCallAd Control_ID_PeriLiquTxt
  loc_A6BC44: CVarAd
  loc_A6BC48: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6BC4D: FFree1Var var_A0 = ""
  loc_A6BC50: LitI2_Byte &HFF
  loc_A6BC52: IStI2 Cancel
  loc_A6BC55: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'A8CFC0
  'Data Table: 4DB9E8
  loc_A8CF3C: FLdRfVar var_90
  loc_A8CF3F: FLdPr Me
  loc_A8CF42: VCallAd Control_ID_NumeCtaTxt
  loc_A8CF45: FStAdFunc var_8C
  loc_A8CF48: FLdPr var_8C
  loc_A8CF4B:  = Me.Text
  loc_A8CF50: FLdZeroAd var_90
  loc_A8CF53: CVarStr var_B0
  loc_A8CF56: LitI4 9
  loc_A8CF5B: FLdRfVar var_A0
  loc_A8CF5E: ImpAdCallFPR4  = Chr()
  loc_A8CF63: FLdRfVar var_A0
  loc_A8CF66: ConcatVar var_C0
  loc_A8CF6A: FLdRfVar var_C8
  loc_A8CF6D: FLdPr Me
  loc_A8CF70: VCallAd Control_ID_DetaPersLbl
  loc_A8CF73: FStAdFunc var_C4
  loc_A8CF76: FLdPr var_C4
  loc_A8CF79:  = Me.Caption
  loc_A8CF7E: FLdZeroAd var_C8
  loc_A8CF81: CVarStr var_D8
  loc_A8CF84: ConcatVar var_E8
  loc_A8CF88: CStrVarTmp
  loc_A8CF89: FStStr var_88
  loc_A8CF8C: FFreeAd var_8C = ""
  loc_A8CF93: FFreeVar var_B0 = "": var_A0 = "": var_C0 = "": var_D8 = ""
  loc_A8CFA0: FLdRfVar var_88
  loc_A8CFA3: CDargRef
  loc_A8CFA7: FLdPr Me
  loc_A8CFAA: VCallAd Control_ID_CuentasFlex
  loc_A8CFAD: FStAdFunc var_8C
  loc_A8CFB0: FLdPr var_8C
  loc_A8CFB3: LateIdCall
  loc_A8CFBB: FFree1Ad var_8C
  loc_A8CFBE: ExitProcHresult
End Sub

Private Sub Form_Load() 'AF76B8
  'Data Table: 4DB9E8
  loc_AF74F4: LitI2_Byte 0
  loc_AF74F6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF74FB: CVarDate var_A4
  loc_AF74FF: FLdRfVar var_B4
  loc_AF7502: ImpAdCallFPR4  = Year()
  loc_AF7507: FLdRfVar var_B4
  loc_AF750A: CStrVarVal var_B8
  loc_AF750E: FLdPr Me
  loc_AF7511: VCallAd Control_ID_PeriLiquTxt
  loc_AF7514: FStAdFunc var_BC
  loc_AF7517: FLdPr var_BC
  loc_AF751A: Me.Text = from_stack_1
  loc_AF751F: FFree1Str var_B8
  loc_AF7522: FFree1Ad var_BC
  loc_AF7525: FFreeVar var_A4 = ""
  loc_AF752C: LitI2_Byte 0
  loc_AF752E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF7533: CVarDate var_A4
  loc_AF7537: FLdRfVar var_B4
  loc_AF753A: ImpAdCallFPR4  = Month()
  loc_AF753F: FLdRfVar var_B4
  loc_AF7542: LitVarI2 var_CC, 3
  loc_AF7547: DivVar var_DC
  loc_AF754B: FnCIntVar
  loc_AF754D: CStrUI1
  loc_AF754F: FStStrNoPop var_B8
  loc_AF7552: FLdPr Me
  loc_AF7555: VCallAd Control_ID_BimeLiquTxt
  loc_AF7558: FStAdFunc var_BC
  loc_AF755B: FLdPr var_BC
  loc_AF755E: Me.Text = from_stack_1
  loc_AF7563: FFree1Str var_B8
  loc_AF7566: FFree1Ad var_BC
  loc_AF7569: FFreeVar var_A4 = ""
  loc_AF7570: LitStr "0"
  loc_AF7573: FLdPr Me
  loc_AF7576: VCallAd Control_ID_CodiTiliTxt
  loc_AF7579: FStAdFunc var_BC
  loc_AF757C: FLdPr var_BC
  loc_AF757F: Me.Text = from_stack_1
  loc_AF7584: FFree1Ad var_BC
  loc_AF7587: LitStr "0"
  loc_AF758A: FLdPr Me
  loc_AF758D: VCallAd Control_ID_DesdeCodiComeTxt
  loc_AF7590: FStAdFunc var_BC
  loc_AF7593: FLdPr var_BC
  loc_AF7596: Me.Text = from_stack_1
  loc_AF759B: FFree1Ad var_BC
  loc_AF759E: LitStr "99999999"
  loc_AF75A1: FLdPr Me
  loc_AF75A4: VCallAd Control_ID_HastaCodiComeTxt
  loc_AF75A7: FStAdFunc var_BC
  loc_AF75AA: FLdPr var_BC
  loc_AF75AD: Me.Text = from_stack_1
  loc_AF75B2: FFree1Ad var_BC
  loc_AF75B5: LitI2_Byte &HFF
  loc_AF75B7: FLdPr Me
  loc_AF75BA: VCallAd Control_ID_CompletaOpt
  loc_AF75BD: FStAdFunc var_BC
  loc_AF75C0: FLdPr var_BC
  loc_AF75C3: Me.Value = from_stack_1b
  loc_AF75C8: FFree1Ad var_BC
  loc_AF75CB: LitStr "0"
  loc_AF75CE: FLdPr Me
  loc_AF75D1: VCallAd Control_ID_NumeCtaTxt
  loc_AF75D4: FStAdFunc var_BC
  loc_AF75D7: FLdPr var_BC
  loc_AF75DA: Me.Text = from_stack_1
  loc_AF75DF: FFree1Ad var_BC
  loc_AF75E2: FLdPr Me
  loc_AF75E5: VCallAd Control_ID_CuentasFlex
  loc_AF75E8: FStAdFunc var_E0
  loc_AF75EB: FLdPr var_E0
  loc_AF75EE: LateIdCall
  loc_AF75F6: LitVarI4
  loc_AF75FE: PopAdLdVar
  loc_AF75FF: FLdPr var_E0
  loc_AF7602: LateIdSt
  loc_AF7607: LitVarI4
  loc_AF760F: PopAdLdVar
  loc_AF7610: LitVarI4
  loc_AF7618: PopAdLdVar
  loc_AF7619: FLdPr var_E0
  loc_AF761C: LateIdCallSt
  loc_AF7624: LitVarI4
  loc_AF762C: PopAdLdVar
  loc_AF762D: LitVarI4
  loc_AF7635: PopAdLdVar
  loc_AF7636: FLdPr var_E0
  loc_AF7639: LateIdCallSt
  loc_AF7641: LitVarI4
  loc_AF7649: PopAdLdVar
  loc_AF764A: LitVarI4
  loc_AF7652: PopAdLdVar
  loc_AF7653: LitVarStr var_110, "Cuenta"
  loc_AF7658: PopAdLdVar
  loc_AF7659: FLdPr var_E0
  loc_AF765C: LateIdCallSt
  loc_AF7664: LitVarI4
  loc_AF766C: PopAdLdVar
  loc_AF766D: LitVarI4
  loc_AF7675: PopAdLdVar
  loc_AF7676: LitVarStr var_110, "Apellido y Nombre"
  loc_AF767B: PopAdLdVar
  loc_AF767C: FLdPr var_E0
  loc_AF767F: LateIdCallSt
  loc_AF7687: LitNothing
  loc_AF7689: FStAd var_E0 
  loc_AF768D: FLdRfVar var_B8
  loc_AF7690: FLdPr Me
  loc_AF7693: VCallAd Control_ID_BimeLiquTxt
  loc_AF7696: FStAdFunc var_BC
  loc_AF7699: FLdPr var_BC
  loc_AF769C:  = Me.Text
  loc_AF76A1: ILdRf var_B8
  loc_AF76A4: CI2Str
  loc_AF76A6: PopTmpLdAd2 var_122
  loc_AF76A9: Call Proc_307_25_A43E6C()
  loc_AF76AE: FFree1Str var_B8
  loc_AF76B1: FFree1Ad var_BC
  loc_AF76B4: ExitProcHresult
  loc_AF76B5: IStFPR4
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB0B8
  'Data Table: 4DB9E8
  loc_9BB0A4: ILdI2 KeyCode
  loc_9BB0A7: CI4UI1
  loc_9BB0A8: LitI4 &H78
  loc_9BB0AD: EqI4
  loc_9BB0AE: BranchF loc_9BB0B6
  loc_9BB0B1: Call cmdSalir_Click()
  loc_9BB0B6: ExitProcHresult
  loc_9BB0B7: GeI4
End Sub

Private Sub cmdSalir_Click() '9CAC7C
  'Data Table: 4DB9E8
  loc_9CAC64: ILdRf Me
  loc_9CAC67: FStAdNoPop
  loc_9CAC6B: ImpAdLdRf MemVar_D9C5D8
  loc_9CAC6E: NewIfNullPr Global
  loc_9CAC71: Global.Unload from_stack_1
  loc_9CAC76: FFree1Ad var_88
  loc_9CAC79: ExitProcHresult
End Sub

Private Sub CodiTiliCmd_Click() 'AA42AC
  'Data Table: 4DB9E8
  loc_AA41E8: LitI2_Byte 2
  loc_AA41EA: CUI1I2
  loc_AA41EC: ImpAdLdRf MemVar_D94160
  loc_AA41EF: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA41F2: Call dlgBuscarTipodeLiquidacion.ByOficinaPut(from_stack_1v)
  loc_AA41F7: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = 2"
  loc_AA41FA: ImpAdLdRf MemVar_D94160
  loc_AA41FD: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4200: Call dlgBuscarTipodeLiquidacion.sPasaSelectPut(from_stack_1v)
  loc_AA4205: LitVar_Missing var_A4
  loc_AA4208: PopAdLdVar
  loc_AA4209: LitVarI4
  loc_AA4211: PopAdLdVar
  loc_AA4212: ImpAdLdRf MemVar_D94160
  loc_AA4215: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4218: dlgBuscarTipodeLiquidacion.Show from_stack_1, from_stack_2
  loc_AA421D: FLdRfVar var_A8
  loc_AA4220: ImpAdLdRf MemVar_D94160
  loc_AA4223: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4226: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA422B: ILdRf var_A8
  loc_AA422E: LitStr vbNullString
  loc_AA4231: NeStr
  loc_AA4233: FFree1Str var_A8
  loc_AA4236: BranchF loc_AA4297
  loc_AA4239: FLdRfVar var_A8
  loc_AA423C: ImpAdLdRf MemVar_D94160
  loc_AA423F: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4242: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA4247: ILdRf var_A8
  loc_AA424A: FLdPr Me
  loc_AA424D: VCallAd Control_ID_
  loc_AA4250: FStAdFunc var_AC
  loc_AA4253: FLdPr var_AC
  loc_AA4256: dlgBuscarTipodeLiquidacion.TextBox.Text = from_stack_1
  loc_AA425B: FFree1Str var_A8
  loc_AA425E: FFree1Ad var_AC
  loc_AA4261: LitStr vbNullString
  loc_AA4264: ImpAdLdRf MemVar_D94160
  loc_AA4267: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA426A: Call dlgBuscarTipodeLiquidacion.sPasaCodigoPut(from_stack_1v)
  loc_AA426F: FLdRfVar var_A8
  loc_AA4272: ImpAdLdRf MemVar_D94160
  loc_AA4275: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4278: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaDetalleGet()
  loc_AA427D: ILdRf var_A8
  loc_AA4280: FLdPr Me
  loc_AA4283: VCallAd Control_ID_
  loc_AA4286: FStAdFunc var_AC
  loc_AA4289: FLdPr var_AC
  loc_AA428C: dlgBuscarTipodeLiquidacion.Label.Caption = from_stack_1
  loc_AA4291: FFree1Str var_A8
  loc_AA4294: FFree1Ad var_AC
  loc_AA4297: FLdPr Me
  loc_AA429A: VCallAd Control_ID_CodiTiliTxt
  loc_AA429D: CVarAd
  loc_AA42A1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA42A6: FFree1Var var_BC = ""
  loc_AA42A9: ExitProcHresult
  loc_AA42AA: CI4R8
End Sub

Private Function Proc_307_24_A6D5FC() 'A6D5FC
  'Data Table: 4DB9E8
  loc_A6D588: FLdPr Me
  loc_A6D58B: VCallAd Control_ID_CuentasFlex
  loc_A6D58E: FStAdFunc var_88
  loc_A6D591: FLdPr var_88
  loc_A6D594: LateIdCall
  loc_A6D59C: LitVarI4
  loc_A6D5A4: PopAdLdVar
  loc_A6D5A5: FLdPr var_88
  loc_A6D5A8: LateIdSt
  loc_A6D5AD: LitVarI4
  loc_A6D5B5: PopAdLdVar
  loc_A6D5B6: LitVarI4
  loc_A6D5BE: PopAdLdVar
  loc_A6D5BF: LitVarStr var_D8, "Cuenta"
  loc_A6D5C4: PopAdLdVar
  loc_A6D5C5: FLdPr var_88
  loc_A6D5C8: LateIdCallSt
  loc_A6D5D0: LitVarI4
  loc_A6D5D8: PopAdLdVar
  loc_A6D5D9: LitVarI4
  loc_A6D5E1: PopAdLdVar
  loc_A6D5E2: LitVarStr var_D8, "Apellido y Nombre"
  loc_A6D5E7: PopAdLdVar
  loc_A6D5E8: FLdPr var_88
  loc_A6D5EB: LateIdCallSt
  loc_A6D5F3: LitNothing
  loc_A6D5F5: FStAd var_88 
  loc_A6D5F9: ExitProcHresult
  loc_A6D5FA: FStStrNoPop arg_7068
End Function

Private Function Proc_307_25_A43E6C(arg_C) 'A43E6C
  'Data Table: 4DB9E8
  loc_A43E14: ILdI2 arg_C
  loc_A43E17: FStI2 var_86
  loc_A43E1A: FLdI2 var_86
  loc_A43E1D: LitI2_Byte 1
  loc_A43E1F: EqI2
  loc_A43E20: BranchF loc_A43E36
  loc_A43E23: LitI2_Byte 1
  loc_A43E25: FLdPr Me
  loc_A43E28: MemStI2 global_94
  loc_A43E2B: LitI2_Byte 2
  loc_A43E2D: FLdPr Me
  loc_A43E30: MemStI2 global_96
  loc_A43E33: Branch loc_A43E6B
  loc_A43E36: FLdI2 var_86
  loc_A43E39: LitI2_Byte 2
  loc_A43E3B: EqI2
  loc_A43E3C: BranchF loc_A43E52
  loc_A43E3F: LitI2_Byte 3
  loc_A43E41: FLdPr Me
  loc_A43E44: MemStI2 global_94
  loc_A43E47: LitI2_Byte 4
  loc_A43E49: FLdPr Me
  loc_A43E4C: MemStI2 global_96
  loc_A43E4F: Branch loc_A43E6B
  loc_A43E52: FLdI2 var_86
  loc_A43E55: LitI2_Byte 3
  loc_A43E57: EqI2
  loc_A43E58: BranchF loc_A43E6B
  loc_A43E5B: LitI2_Byte 6
  loc_A43E5D: FLdPr Me
  loc_A43E60: MemStI2 global_94
  loc_A43E63: LitI2_Byte 6
  loc_A43E65: FLdPr Me
  loc_A43E68: MemStI2 global_96
  loc_A43E6B: ExitProcHresult
End Function
