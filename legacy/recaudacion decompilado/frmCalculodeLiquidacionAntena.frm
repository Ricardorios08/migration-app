VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmCalculodeLiquidacionAntena
  Caption = "Calculo de liquidacion de Antenas"
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
  ClientWidth = 11364
  ClientHeight = 9300
  Begin VB.CommandButton cmdSalir
    Left = 11280
    Top = 840
    Width = 975
    Height = 855
    TabIndex = 21
    Picture = "frmCalculodeLiquidacionAntena.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame1
    Caption = "CÁLCULO DE ANTENA 01-01-2018 v1"
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
        Picture = "frmCalculodeLiquidacionAntena.frx":0252
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
        OleObjectBlob = "frmCalculodeLiquidacionAntena.frx":0334
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
      Picture = "frmCalculodeLiquidacionAntena.frx":0420
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
      Left = 3720
      Top = 7680
      Width = 1335
      Height = 495
      TabIndex = 20
      Picture = "frmCalculodeLiquidacionAntena.frx":051A
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
      OleObjectBlob = "frmCalculodeLiquidacionAntena.frx":0848
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 480
      Top = 7080
      Width = 8775
      Height = 495
      Visible = 0   'False
      TabIndex = 19
      OleObjectBlob = "frmCalculodeLiquidacionAntena.frx":08F8
    End
    Begin MSMask.MaskEdBox FeanVencMsk
      Left = 7680
      Top = 3000
      Width = 1335
      Height = 345
      Visible = 0   'False
      TabIndex = 18
      OleObjectBlob = "frmCalculodeLiquidacionAntena.frx":0960
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

Attribute VB_Name = "frmCalculodeLiquidacionAntena"


Private Sub CuentasFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A8705C
  'Data Table: 4D8CE4
  loc_A86FC8: ILdI2 KeyCode
  loc_A86FCB: CI4UI1
  loc_A86FCC: LitI4 &H2E
  loc_A86FD1: EqI4
  loc_A86FD2: BranchF loc_A87034
  loc_A86FD5: FLdPr Me
  loc_A86FD8: VCallAd Control_ID_CuentasFlex
  loc_A86FDB: FStAdFunc var_88
  loc_A86FDE: FLdPr var_88
  loc_A86FE1: LateIdLdVar var_98 DispID_4 0
  loc_A86FE8: CI4Var
  loc_A86FEA: LitI4 1
  loc_A86FEF: GtI4
  loc_A86FF0: FFree1Ad var_88
  loc_A86FF3: FFree1Var var_98 = ""
  loc_A86FF6: BranchF loc_A87034
  loc_A86FF9: OnErrorGoto loc_A87034
  loc_A86FFC: FLdPr Me
  loc_A86FFF: VCallAd Control_ID_CuentasFlex
  loc_A87002: FStAdFunc var_88
  loc_A87005: FLdPr var_88
  loc_A87008: LateIdLdVar var_98 DispID_10 0
  loc_A8700F: CI4Var
  loc_A87011: CVarI4
  loc_A87015: PopAdLdVar
  loc_A87016: FLdPr Me
  loc_A87019: VCallAd Control_ID_CuentasFlex
  loc_A8701C: FStAdFunc var_BC
  loc_A8701F: FLdPr var_BC
  loc_A87022: LateIdCall
  loc_A8702A: FFreeAd var_88 = ""
  loc_A87031: FFree1Var var_98 = ""
  loc_A87034: FLdRfVar var_C0
  loc_A87037: ImpAdCallI2 Err 'rtcErrObj
  loc_A8703C: FStAdFunc var_88
  loc_A8703F: FLdPr var_88
  loc_A87042:  = Err.Number
  loc_A87047: ILdRf var_C0
  loc_A8704A: LitI4 &H753F
  loc_A8704F: EqI4
  loc_A87050: FFree1Ad var_88
  loc_A87053: BranchF loc_A8705B
  loc_A87056: Call Proc_327_24_A6AF44()
  loc_A8705B: ExitProcHresult
End Sub

Private Sub HastaCodiComeTxt_GotFocus() '9BCC90
  'Data Table: 4D8CE4
  loc_9BCC7C: FLdPr Me
  loc_9BCC7F: VCallAd Control_ID_HastaCodiComeTxt
  loc_9BCC82: CVarAd
  loc_9BCC86: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCC8B: FFree1Var var_94 = ""
  loc_9BCC8E: ExitProcHresult
End Sub

Private Sub HastaCodiComeTxt_KeyPress(KeyAscii As Integer) '9C8A0C
  'Data Table: 4D8CE4
  loc_9C89F4: LitStr "1234567890"
  loc_9C89F7: FStStrCopy var_88
  loc_9C89FA: FLdRfVar var_88
  loc_9C89FD: ILdRf KeyAscii
  loc_9C8A00: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C8A05: IStI2 KeyAscii
  loc_9C8A08: FFree1Str var_88
  loc_9C8A0B: ExitProcHresult
End Sub

Private Sub HastaCodiComeTxt_Validate(Cancel As Boolean) 'A83EA4
  'Data Table: 4D8CE4
  loc_A83E1C: FLdRfVar var_8A
  loc_A83E1F: FLdPr Me
  loc_A83E22: VCallAd Control_ID_HastaCodiComeTxt
  loc_A83E25: FStAdFunc var_88
  loc_A83E28: FLdPr var_88
  loc_A83E2B:  = Me.Enabled
  loc_A83E30: FLdI2 var_8A
  loc_A83E33: LitI2_Byte &HFF
  loc_A83E35: EqI2
  loc_A83E36: FFree1Ad var_88
  loc_A83E39: BranchF loc_A83EA3
  loc_A83E3C: FLdRfVar var_90
  loc_A83E3F: FLdPr Me
  loc_A83E42: VCallAd Control_ID_HastaCodiComeTxt
  loc_A83E45: FStAdFunc var_88
  loc_A83E48: FLdPr var_88
  loc_A83E4B:  = Me.Text
  loc_A83E50: LitI2_Byte 0
  loc_A83E52: LitI2_Byte 0
  loc_A83E54: ILdRf var_90
  loc_A83E57: LitStr "Hasta Cuenta de antena"
  loc_A83E5A: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A83E5F: FStStrNoPop var_94
  loc_A83E62: FLdPr Me
  loc_A83E65: MemStStrCopy
  loc_A83E69: FFreeStr var_90 = ""
  loc_A83E70: FFree1Ad var_88
  loc_A83E73: FLdPr Me
  loc_A83E76: MemLdStr global_100
  loc_A83E79: LitStr vbNullString
  loc_A83E7C: NeStr
  loc_A83E7E: BranchF loc_A83EA3
  loc_A83E81: FLdPr Me
  loc_A83E84: MemLdStr global_100
  loc_A83E87: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A83E8C: FLdPr Me
  loc_A83E8F: VCallAd Control_ID_HastaCodiComeTxt
  loc_A83E92: CVarAd
  loc_A83E96: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A83E9B: FFree1Var var_A4 = ""
  loc_A83E9E: LitI2_Byte &HFF
  loc_A83EA0: IStI2 Cancel
  loc_A83EA3: ExitProcHresult
End Sub

Private Sub DesdeCodiComeTxt_GotFocus() '9BCA50
  'Data Table: 4D8CE4
  loc_9BCA3C: FLdPr Me
  loc_9BCA3F: VCallAd Control_ID_DesdeCodiComeTxt
  loc_9BCA42: CVarAd
  loc_9BCA46: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCA4B: FFree1Var var_94 = ""
  loc_9BCA4E: ExitProcHresult
End Sub

Private Sub DesdeCodiComeTxt_KeyPress(KeyAscii As Integer) '9C8974
  'Data Table: 4D8CE4
  loc_9C895C: LitStr "1234567890"
  loc_9C895F: FStStrCopy var_88
  loc_9C8962: FLdRfVar var_88
  loc_9C8965: ILdRf KeyAscii
  loc_9C8968: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C896D: IStI2 KeyAscii
  loc_9C8970: FFree1Str var_88
  loc_9C8973: ExitProcHresult
End Sub

Private Sub DesdeCodiComeTxt_Validate(Cancel As Boolean) 'A83DDC
  'Data Table: 4D8CE4
  loc_A83D54: FLdRfVar var_8A
  loc_A83D57: FLdPr Me
  loc_A83D5A: VCallAd Control_ID_DesdeCodiComeTxt
  loc_A83D5D: FStAdFunc var_88
  loc_A83D60: FLdPr var_88
  loc_A83D63:  = Me.Enabled
  loc_A83D68: FLdI2 var_8A
  loc_A83D6B: LitI2_Byte &HFF
  loc_A83D6D: EqI2
  loc_A83D6E: FFree1Ad var_88
  loc_A83D71: BranchF loc_A83DDB
  loc_A83D74: FLdRfVar var_90
  loc_A83D77: FLdPr Me
  loc_A83D7A: VCallAd Control_ID_DesdeCodiComeTxt
  loc_A83D7D: FStAdFunc var_88
  loc_A83D80: FLdPr var_88
  loc_A83D83:  = Me.Text
  loc_A83D88: LitI2_Byte &HFF
  loc_A83D8A: LitI2_Byte 0
  loc_A83D8C: ILdRf var_90
  loc_A83D8F: LitStr "Desde Cuenta de antena"
  loc_A83D92: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A83D97: FStStrNoPop var_94
  loc_A83D9A: FLdPr Me
  loc_A83D9D: MemStStrCopy
  loc_A83DA1: FFreeStr var_90 = ""
  loc_A83DA8: FFree1Ad var_88
  loc_A83DAB: FLdPr Me
  loc_A83DAE: MemLdStr global_100
  loc_A83DB1: LitStr vbNullString
  loc_A83DB4: NeStr
  loc_A83DB6: BranchF loc_A83DDB
  loc_A83DB9: FLdPr Me
  loc_A83DBC: MemLdStr global_100
  loc_A83DBF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A83DC4: FLdPr Me
  loc_A83DC7: VCallAd Control_ID_DesdeCodiComeTxt
  loc_A83DCA: CVarAd
  loc_A83DCE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A83DD3: FFree1Var var_A4 = ""
  loc_A83DD6: LitI2_Byte &HFF
  loc_A83DD8: IStI2 Cancel
  loc_A83DDB: ExitProcHresult
End Sub

Private Sub CalculoCmd_Click() 'CF5794
  'Data Table: 4D8CE4
  loc_CF286C: LitI2_Byte 0
  loc_CF286E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CF2873: FStFPR8 var_108
  loc_CF2876: LitI2_Byte 0
  loc_CF2878: PopTmpLdAd2 var_172
  loc_CF287B: Call PeriLiquTxt_Validate(from_stack_1v)
  loc_CF2880: FLdPr Me
  loc_CF2883: MemLdStr global_100
  loc_CF2886: LitStr vbNullString
  loc_CF2889: NeStr
  loc_CF288B: BranchF loc_CF288F
  loc_CF288E: ExitProcHresult
  loc_CF288F: LitI2_Byte 0
  loc_CF2891: PopTmpLdAd2 var_172
  loc_CF2894: Call BimeLiquTxt_Validate(from_stack_1v)
  loc_CF2899: FLdPr Me
  loc_CF289C: MemLdStr global_100
  loc_CF289F: LitStr vbNullString
  loc_CF28A2: NeStr
  loc_CF28A4: BranchF loc_CF28A8
  loc_CF28A7: ExitProcHresult
  loc_CF28A8: LitI2_Byte 0
  loc_CF28AA: PopTmpLdAd2 var_172
  loc_CF28AD: Call CodiTiliTxt_Validate(from_stack_1v)
  loc_CF28B2: FLdPr Me
  loc_CF28B5: MemLdStr global_100
  loc_CF28B8: LitStr vbNullString
  loc_CF28BB: NeStr
  loc_CF28BD: BranchF loc_CF28C1
  loc_CF28C0: ExitProcHresult
  loc_CF28C1: LitStr vbNullString
  loc_CF28C4: FStStrCopy var_160
  loc_CF28C7: LitI2_Byte 1
  loc_CF28C9: FLdPr Me
  loc_CF28CC: MemLdRfVar from_stack_1.global_92
  loc_CF28CF: FLdPr Me
  loc_CF28D2: VCallAd Control_ID_CuentasFlex
  loc_CF28D5: FStAdFunc var_178
  loc_CF28D8: FLdPr var_178
  loc_CF28DB: LateIdLdVar var_188 DispID_4 0
  loc_CF28E2: CI4Var
  loc_CF28E4: LitI4 1
  loc_CF28E9: SubI4
  loc_CF28EA: CI2I4
  loc_CF28EB: FFree1Ad var_178
  loc_CF28EE: FFree1Var var_188 = ""
  loc_CF28F1: ForI2 var_18C
  loc_CF28F7: FLdPr Me
  loc_CF28FA: MemLdI2 global_92
  loc_CF28FD: CI4UI1
  loc_CF28FE: CVarI4
  loc_CF2902: PopAdLdVar
  loc_CF2903: LitVarI4
  loc_CF290B: PopAdLdVar
  loc_CF290C: FLdPr Me
  loc_CF290F: VCallAd Control_ID_CuentasFlex
  loc_CF2912: FStAdFunc var_178
  loc_CF2915: FLdPr var_178
  loc_CF2918: LateIdCallLdVar
  loc_CF2922: PopAd
  loc_CF2924: ILdRf var_160
  loc_CF2927: CVarStr var_274
  loc_CF292A: LitStr ","
  loc_CF292D: FLdPr Me
  loc_CF2930: MemLdI2 global_92
  loc_CF2933: CI4UI1
  loc_CF2934: CVarI4
  loc_CF2938: PopAdLdVar
  loc_CF2939: LitVarI4
  loc_CF2941: PopAdLdVar
  loc_CF2942: FLdPr Me
  loc_CF2945: VCallAd Control_ID_CuentasFlex
  loc_CF2948: FStAdFunc var_210
  loc_CF294B: FLdPr var_210
  loc_CF294E: LateIdCallLdVar
  loc_CF2958: CStrVarTmp
  loc_CF2959: FStStrNoPop var_224
  loc_CF295C: ConcatStr
  loc_CF295D: CVarStr var_254
  loc_CF2960: FLdRfVar var_188
  loc_CF2963: CStrVarTmp
  loc_CF2964: CVarStr var_244
  loc_CF2967: ILdRf var_160
  loc_CF296A: LitStr vbNullString
  loc_CF296D: EqStr
  loc_CF296F: CVarBoolI2 var_234
  loc_CF2973: FLdRfVar var_264
  loc_CF2976: ImpAdCallFPR4  = IIf(, , )
  loc_CF297B: FLdRfVar var_264
  loc_CF297E: ConcatVar var_284
  loc_CF2982: CStrVarTmp
  loc_CF2983: FStStr var_160
  loc_CF2986: FFree1Str var_224
  loc_CF2989: FFreeAd var_178 = ""
  loc_CF2990: FFreeVar var_188 = "": var_220 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = ""
  loc_CF29A1: FLdPr Me
  loc_CF29A4: MemLdRfVar from_stack_1.global_92
  loc_CF29A7: NextI2 var_18C, loc_CF28F7
  loc_CF29AC: LitStr "SELECT ConcTili, CoreTili, DescTili, DeanTili, GastTili, CogaTili FROM tipoliqu "
  loc_CF29AF: LitStr " WHERE CodiOfic = 7"
  loc_CF29B2: ConcatStr
  loc_CF29B3: FStStrNoPop var_224
  loc_CF29B6: LitStr " AND CodiTili = "
  loc_CF29B9: ConcatStr
  loc_CF29BA: FStStrNoPop var_28C
  loc_CF29BD: FLdRfVar var_288
  loc_CF29C0: FLdPr Me
  loc_CF29C3: VCallAd Control_ID_CodiTiliTxt
  loc_CF29C6: FStAdFunc var_178
  loc_CF29C9: FLdPr var_178
  loc_CF29CC:  = Me.Text
  loc_CF29D1: ILdRf var_288
  loc_CF29D4: ConcatStr
  loc_CF29D5: FStStrNoPop var_290
  loc_CF29D8: LitStr " ORDER BY CodiOfic, CodiTili"
  loc_CF29DB: ConcatStr
  loc_CF29DC: FStStrNoPop var_294
  loc_CF29DF: FLdPr Me
  loc_CF29E2: MemLdRfVar from_stack_1.global_60
  loc_CF29E5: NewIfNullPr clstipoliqu
  loc_CF29E8: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_CF29ED: FFreeStr var_224 = "": var_28C = "": var_288 = "": var_290 = ""
  loc_CF29FA: FFree1Ad var_178
  loc_CF29FD: FLdRfVar var_298
  loc_CF2A00: FLdPr Me
  loc_CF2A03: MemLdRfVar from_stack_1.global_60
  loc_CF2A06: NewIfNullPr clstipoliqu
  loc_CF2A09: from_stack_1 = clstipoliqu.RecordCount
  loc_CF2A0E: ILdRf var_298
  loc_CF2A11: LitI4 1
  loc_CF2A16: EqI4
  loc_CF2A17: BranchF loc_CF2B08
  loc_CF2A1A: FLdRfVar var_2A0
  loc_CF2A1D: FLdPr Me
  loc_CF2A20: MemLdRfVar from_stack_1.global_60
  loc_CF2A23: NewIfNullPr clstipoliqu
  loc_CF2A26: from_stack_1 = clstipoliqu.DescTili
  loc_CF2A2B: FLdFPR8 var_2A0
  loc_CF2A2E: FnCDblR8
  loc_CF2A30: FStFPR8 var_AC
  loc_CF2A33: FLdRfVar var_2A0
  loc_CF2A36: FLdPr Me
  loc_CF2A39: MemLdRfVar from_stack_1.global_60
  loc_CF2A3C: NewIfNullPr clstipoliqu
  loc_CF2A3F: from_stack_1 = clstipoliqu.DeanTili
  loc_CF2A44: FLdFPR8 var_2A0
  loc_CF2A47: FnCDblR8
  loc_CF2A49: FStFPR8 var_170
  loc_CF2A4C: FLdRfVar var_2A0
  loc_CF2A4F: FLdPr Me
  loc_CF2A52: MemLdRfVar from_stack_1.global_60
  loc_CF2A55: NewIfNullPr clstipoliqu
  loc_CF2A58: from_stack_1 = clstipoliqu.GastTili
  loc_CF2A5D: FLdFPR8 var_2A0
  loc_CF2A60: FnCDblR8
  loc_CF2A62: FStFPR8 var_BC
  loc_CF2A65: FLdRfVar var_224
  loc_CF2A68: FLdPr Me
  loc_CF2A6B: MemLdRfVar from_stack_1.global_60
  loc_CF2A6E: NewIfNullPr clstipoliqu
  loc_CF2A71: from_stack_1 = clstipoliqu.CogaTili
  loc_CF2A76: ILdRf var_224
  loc_CF2A79: CI2Str
  loc_CF2A7B: FStI2 var_BE
  loc_CF2A7E: FFree1Str var_224
  loc_CF2A81: FLdRfVar var_224
  loc_CF2A84: FLdPr Me
  loc_CF2A87: MemLdRfVar from_stack_1.global_60
  loc_CF2A8A: NewIfNullPr clstipoliqu
  loc_CF2A8D: from_stack_1 = clstipoliqu.CoreTili
  loc_CF2A92: ILdRf var_224
  loc_CF2A95: LitStr vbNullString
  loc_CF2A98: EqStr
  loc_CF2A9A: FFree1Str var_224
  loc_CF2A9D: BranchF loc_CF2AAC
  loc_CF2AA0: LitStr "El concepto de recargo no esta parametrizado en el tipo de liquidacion. Verifique"
  loc_CF2AA3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF2AA8: ExitProcHresult
  loc_CF2AA9: Branch loc_CF2AC3
  loc_CF2AAC: FLdRfVar var_224
  loc_CF2AAF: FLdPr Me
  loc_CF2AB2: MemLdRfVar from_stack_1.global_60
  loc_CF2AB5: NewIfNullPr clstipoliqu
  loc_CF2AB8: from_stack_1 = clstipoliqu.CoreTili
  loc_CF2ABD: FLdZeroAd var_224
  loc_CF2AC0: FStStr var_CC
  loc_CF2AC3: FLdRfVar var_224
  loc_CF2AC6: FLdPr Me
  loc_CF2AC9: MemLdRfVar from_stack_1.global_60
  loc_CF2ACC: NewIfNullPr clstipoliqu
  loc_CF2ACF: from_stack_1 = clstipoliqu.ConcTili
  loc_CF2AD4: ILdRf var_224
  loc_CF2AD7: LitStr vbNullString
  loc_CF2ADA: EqStr
  loc_CF2ADC: FFree1Str var_224
  loc_CF2ADF: BranchF loc_CF2AEE
  loc_CF2AE2: LitStr "El concepto no esta parametrizado en el tipo de liquidacion. Verifique"
  loc_CF2AE5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF2AEA: ExitProcHresult
  loc_CF2AEB: Branch loc_CF2B05
  loc_CF2AEE: FLdRfVar var_224
  loc_CF2AF1: FLdPr Me
  loc_CF2AF4: MemLdRfVar from_stack_1.global_60
  loc_CF2AF7: NewIfNullPr clstipoliqu
  loc_CF2AFA: from_stack_1 = clstipoliqu.ConcTili
  loc_CF2AFF: FLdZeroAd var_224
  loc_CF2B02: FStStr var_D0
  loc_CF2B05: Branch loc_CF2B1F
  loc_CF2B08: LitI2_Byte 0
  loc_CF2B0A: CR8I2
  loc_CF2B0B: FStFPR8 var_AC
  loc_CF2B0E: LitI2_Byte 0
  loc_CF2B10: CR8I2
  loc_CF2B11: FStFPR8 var_170
  loc_CF2B14: LitI2_Byte 0
  loc_CF2B16: CR8I2
  loc_CF2B17: FStFPR8 var_BC
  loc_CF2B1A: LitI2_Byte 0
  loc_CF2B1C: FStI2 var_BE
  loc_CF2B1F: ImpAdCallFPR4 Proc_270_19_A5AB74()
  loc_CF2B24: FStFPR8 var_C8
  loc_CF2B27: LitI2_Byte 0
  loc_CF2B29: CR8I2
  loc_CF2B2A: FStFPR8 var_94
  loc_CF2B2D: FLdRfVar var_224
  loc_CF2B30: FLdPr Me
  loc_CF2B33: VCallAd Control_ID_PeriLiquTxt
  loc_CF2B36: FStAdFunc var_178
  loc_CF2B39: FLdPr var_178
  loc_CF2B3C:  = Me.Text
  loc_CF2B41: FLdRfVar var_288
  loc_CF2B44: FLdPr Me
  loc_CF2B47: VCallAd Control_ID_CodiTiliTxt
  loc_CF2B4A: FStAdFunc var_210
  loc_CF2B4D: FLdPr var_210
  loc_CF2B50:  = Me.Text
  loc_CF2B55: ILdRf var_288
  loc_CF2B58: CUI1Str
  loc_CF2B5A: ILdRf var_224
  loc_CF2B5D: CI2Str
  loc_CF2B5F: FLdPr Me
  loc_CF2B62: MemLdRfVar from_stack_1.global_68
  loc_CF2B65: NewIfNullPr clsliquante
  loc_CF2B68: Call clsliquante.BorraLiquidacion(from_stack_1v, from_stack_2v)
  loc_CF2B6D: FFreeStr var_224 = ""
  loc_CF2B74: FFreeAd var_178 = ""
  loc_CF2B7B: FLdRfVar var_224
  loc_CF2B7E: FLdPr Me
  loc_CF2B81: VCallAd Control_ID_PeriLiquTxt
  loc_CF2B84: FStAdFunc var_178
  loc_CF2B87: FLdPr var_178
  loc_CF2B8A:  = Me.Text
  loc_CF2B8F: FLdRfVar var_288
  loc_CF2B92: FLdPr Me
  loc_CF2B95: VCallAd Control_ID_CodiTiliTxt
  loc_CF2B98: FStAdFunc var_210
  loc_CF2B9B: FLdPr var_210
  loc_CF2B9E:  = Me.Text
  loc_CF2BA3: FLdRfVar var_172
  loc_CF2BA6: ILdRf var_288
  loc_CF2BA9: CUI1Str
  loc_CF2BAB: LitI2_Byte 7
  loc_CF2BAD: CUI1I2
  loc_CF2BAF: ILdRf var_224
  loc_CF2BB2: CI2Str
  loc_CF2BB4: FLdPr Me
  loc_CF2BB7: MemLdRfVar from_stack_1.global_52
  loc_CF2BBA: NewIfNullPr clsliquidacion
  loc_CF2BBD: from_stack_4v = clsliquidacion.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CF2BC2: FLdI2 var_172
  loc_CF2BC5: FStI2 var_8A
  loc_CF2BC8: FFreeStr var_224 = ""
  loc_CF2BCF: FFreeAd var_178 = ""
  loc_CF2BD6: FLdRfVar var_224
  loc_CF2BD9: FLdPr Me
  loc_CF2BDC: VCallAd Control_ID_PeriLiquTxt
  loc_CF2BDF: FStAdFunc var_178
  loc_CF2BE2: FLdPr var_178
  loc_CF2BE5:  = Me.Text
  loc_CF2BEA: FLdRfVar var_288
  loc_CF2BED: FLdPr Me
  loc_CF2BF0: VCallAd Control_ID_CodiTiliTxt
  loc_CF2BF3: FStAdFunc var_210
  loc_CF2BF6: FLdPr var_210
  loc_CF2BF9:  = Me.Text
  loc_CF2BFE: FLdRfVar var_28C
  loc_CF2C01: FLdPr Me
  loc_CF2C04: VCallAd Control_ID_BimeLiquTxt
  loc_CF2C07: FStAdFunc var_2A4
  loc_CF2C0A: FLdPr var_2A4
  loc_CF2C0D:  = Me.Text
  loc_CF2C12: FLdRfVar var_172
  loc_CF2C15: FLdPr Me
  loc_CF2C18: VCallAd Control_ID_CompletaOpt
  loc_CF2C1B: FStAdFunc var_2A8
  loc_CF2C1E: FLdPr var_2A8
  loc_CF2C21:  = Me.Value
  loc_CF2C26: LitVarI2 var_220, 1
  loc_CF2C2B: LitVarI2 var_188, 0
  loc_CF2C30: FLdI2 var_172
  loc_CF2C33: LitI2_Byte &HFF
  loc_CF2C35: EqI2
  loc_CF2C36: CVarBoolI2 var_19C
  loc_CF2C3A: FLdRfVar var_244
  loc_CF2C3D: ImpAdCallFPR4  = IIf(, , )
  loc_CF2C42: FLdRfVar var_244
  loc_CF2C45: CUI1Var
  loc_CF2C47: ILdRf var_28C
  loc_CF2C4A: CI2Str
  loc_CF2C4C: FLdI2 var_8A
  loc_CF2C4F: ILdRf var_288
  loc_CF2C52: CUI1Str
  loc_CF2C54: LitI2_Byte 7
  loc_CF2C56: CUI1I2
  loc_CF2C58: ILdRf var_224
  loc_CF2C5B: CI2Str
  loc_CF2C5D: FLdPr Me
  loc_CF2C60: MemLdRfVar from_stack_1.global_52
  loc_CF2C63: NewIfNullPr clsliquidacion
  loc_CF2C66: Call clsliquidacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CF2C6B: FFreeStr var_224 = "": var_288 = ""
  loc_CF2C74: FFreeAd var_178 = "": var_210 = "": var_2A4 = ""
  loc_CF2C7F: FFreeVar var_19C = "": var_188 = "": var_220 = ""
  loc_CF2C8A: ILdRf var_160
  loc_CF2C8D: LitStr vbNullString
  loc_CF2C90: NeStr
  loc_CF2C92: BranchF loc_CF2CAC
  loc_CF2C95: LitStr " WHERE antena.CodiCome IN ("
  loc_CF2C98: ILdRf var_160
  loc_CF2C9B: ConcatStr
  loc_CF2C9C: FStStrNoPop var_224
  loc_CF2C9F: LitStr ")"
  loc_CF2CA2: ConcatStr
  loc_CF2CA3: FStStr var_164
  loc_CF2CA6: FFree1Str var_224
  loc_CF2CA9: Branch loc_CF2CFE
  loc_CF2CAC: LitStr " WHERE antena.CodiCome >= "
  loc_CF2CAF: FLdRfVar var_224
  loc_CF2CB2: FLdPr Me
  loc_CF2CB5: VCallAd Control_ID_DesdeCodiComeTxt
  loc_CF2CB8: FStAdFunc var_178
  loc_CF2CBB: FLdPr var_178
  loc_CF2CBE:  = Me.Text
  loc_CF2CC3: ILdRf var_224
  loc_CF2CC6: ConcatStr
  loc_CF2CC7: FStStrNoPop var_288
  loc_CF2CCA: LitStr " AND antena.CodiCome <= "
  loc_CF2CCD: ConcatStr
  loc_CF2CCE: FStStrNoPop var_290
  loc_CF2CD1: FLdRfVar var_28C
  loc_CF2CD4: FLdPr Me
  loc_CF2CD7: VCallAd Control_ID_HastaCodiComeTxt
  loc_CF2CDA: FStAdFunc var_210
  loc_CF2CDD: FLdPr var_210
  loc_CF2CE0:  = Me.Text
  loc_CF2CE5: ILdRf var_28C
  loc_CF2CE8: ConcatStr
  loc_CF2CE9: FStStr var_164
  loc_CF2CEC: FFreeStr var_224 = "": var_288 = "": var_290 = ""
  loc_CF2CF7: FFreeAd var_178 = ""
  loc_CF2CFE: FLdPr Me
  loc_CF2D01: MemLdI2 global_94
  loc_CF2D04: FLdPr Me
  loc_CF2D07: MemLdRfVar from_stack_1.global_92
  loc_CF2D0A: FLdPr Me
  loc_CF2D0D: MemLdI2 global_96
  loc_CF2D10: ForI2 var_2AC
  loc_CF2D16: FLdPr Me
  loc_CF2D19: MemLdI2 global_92
  loc_CF2D1C: FStI2 var_2AE
  loc_CF2D1F: FLdI2 var_2AE
  loc_CF2D22: LitI2_Byte 1
  loc_CF2D24: EqI2
  loc_CF2D25: BranchF loc_CF2D7F
  loc_CF2D28: FLdRfVar var_224
  loc_CF2D2B: FLdPr Me
  loc_CF2D2E: VCallAd Control_ID_PeriLiquTxt
  loc_CF2D31: FStAdFunc var_178
  loc_CF2D34: FLdPr var_178
  loc_CF2D37:  = Me.Text
  loc_CF2D3C: FLdRfVar var_288
  loc_CF2D3F: FLdPr Me
  loc_CF2D42: VCallAd Control_ID_CodiTiliTxt
  loc_CF2D45: FStAdFunc var_210
  loc_CF2D48: FLdPr var_210
  loc_CF2D4B:  = Me.Text
  loc_CF2D50: ILdRf var_288
  loc_CF2D53: CUI1Str
  loc_CF2D55: LitI2_Byte 7
  loc_CF2D57: CUI1I2
  loc_CF2D59: FLdPr Me
  loc_CF2D5C: MemLdI2 global_92
  loc_CF2D5F: CUI1I2
  loc_CF2D61: ILdRf var_224
  loc_CF2D64: CI2Str
  loc_CF2D66: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CF2D6B: FStStr var_11C
  loc_CF2D6E: FFreeStr var_224 = ""
  loc_CF2D75: FFreeAd var_178 = ""
  loc_CF2D7C: Branch loc_CF2F5C
  loc_CF2D7F: FLdI2 var_2AE
  loc_CF2D82: LitI2_Byte 2
  loc_CF2D84: EqI2
  loc_CF2D85: BranchF loc_CF2DDF
  loc_CF2D88: FLdRfVar var_224
  loc_CF2D8B: FLdPr Me
  loc_CF2D8E: VCallAd Control_ID_PeriLiquTxt
  loc_CF2D91: FStAdFunc var_178
  loc_CF2D94: FLdPr var_178
  loc_CF2D97:  = Me.Text
  loc_CF2D9C: FLdRfVar var_288
  loc_CF2D9F: FLdPr Me
  loc_CF2DA2: VCallAd Control_ID_CodiTiliTxt
  loc_CF2DA5: FStAdFunc var_210
  loc_CF2DA8: FLdPr var_210
  loc_CF2DAB:  = Me.Text
  loc_CF2DB0: ILdRf var_288
  loc_CF2DB3: CUI1Str
  loc_CF2DB5: LitI2_Byte 7
  loc_CF2DB7: CUI1I2
  loc_CF2DB9: FLdPr Me
  loc_CF2DBC: MemLdI2 global_92
  loc_CF2DBF: CUI1I2
  loc_CF2DC1: ILdRf var_224
  loc_CF2DC4: CI2Str
  loc_CF2DC6: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CF2DCB: FStStr var_120
  loc_CF2DCE: FFreeStr var_224 = ""
  loc_CF2DD5: FFreeAd var_178 = ""
  loc_CF2DDC: Branch loc_CF2F5C
  loc_CF2DDF: FLdI2 var_2AE
  loc_CF2DE2: LitI2_Byte 3
  loc_CF2DE4: EqI2
  loc_CF2DE5: BranchF loc_CF2E3F
  loc_CF2DE8: FLdRfVar var_224
  loc_CF2DEB: FLdPr Me
  loc_CF2DEE: VCallAd Control_ID_PeriLiquTxt
  loc_CF2DF1: FStAdFunc var_178
  loc_CF2DF4: FLdPr var_178
  loc_CF2DF7:  = Me.Text
  loc_CF2DFC: FLdRfVar var_288
  loc_CF2DFF: FLdPr Me
  loc_CF2E02: VCallAd Control_ID_CodiTiliTxt
  loc_CF2E05: FStAdFunc var_210
  loc_CF2E08: FLdPr var_210
  loc_CF2E0B:  = Me.Text
  loc_CF2E10: ILdRf var_288
  loc_CF2E13: CUI1Str
  loc_CF2E15: LitI2_Byte 7
  loc_CF2E17: CUI1I2
  loc_CF2E19: FLdPr Me
  loc_CF2E1C: MemLdI2 global_92
  loc_CF2E1F: CUI1I2
  loc_CF2E21: ILdRf var_224
  loc_CF2E24: CI2Str
  loc_CF2E26: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CF2E2B: FStStr var_124
  loc_CF2E2E: FFreeStr var_224 = ""
  loc_CF2E35: FFreeAd var_178 = ""
  loc_CF2E3C: Branch loc_CF2F5C
  loc_CF2E3F: FLdI2 var_2AE
  loc_CF2E42: LitI2_Byte 4
  loc_CF2E44: EqI2
  loc_CF2E45: BranchF loc_CF2E9F
  loc_CF2E48: FLdRfVar var_224
  loc_CF2E4B: FLdPr Me
  loc_CF2E4E: VCallAd Control_ID_PeriLiquTxt
  loc_CF2E51: FStAdFunc var_178
  loc_CF2E54: FLdPr var_178
  loc_CF2E57:  = Me.Text
  loc_CF2E5C: FLdRfVar var_288
  loc_CF2E5F: FLdPr Me
  loc_CF2E62: VCallAd Control_ID_CodiTiliTxt
  loc_CF2E65: FStAdFunc var_210
  loc_CF2E68: FLdPr var_210
  loc_CF2E6B:  = Me.Text
  loc_CF2E70: ILdRf var_288
  loc_CF2E73: CUI1Str
  loc_CF2E75: LitI2_Byte 7
  loc_CF2E77: CUI1I2
  loc_CF2E79: FLdPr Me
  loc_CF2E7C: MemLdI2 global_92
  loc_CF2E7F: CUI1I2
  loc_CF2E81: ILdRf var_224
  loc_CF2E84: CI2Str
  loc_CF2E86: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CF2E8B: FStStr var_128
  loc_CF2E8E: FFreeStr var_224 = ""
  loc_CF2E95: FFreeAd var_178 = ""
  loc_CF2E9C: Branch loc_CF2F5C
  loc_CF2E9F: FLdI2 var_2AE
  loc_CF2EA2: LitI2_Byte 5
  loc_CF2EA4: EqI2
  loc_CF2EA5: BranchF loc_CF2EFF
  loc_CF2EA8: FLdRfVar var_224
  loc_CF2EAB: FLdPr Me
  loc_CF2EAE: VCallAd Control_ID_PeriLiquTxt
  loc_CF2EB1: FStAdFunc var_178
  loc_CF2EB4: FLdPr var_178
  loc_CF2EB7:  = Me.Text
  loc_CF2EBC: FLdRfVar var_288
  loc_CF2EBF: FLdPr Me
  loc_CF2EC2: VCallAd Control_ID_CodiTiliTxt
  loc_CF2EC5: FStAdFunc var_210
  loc_CF2EC8: FLdPr var_210
  loc_CF2ECB:  = Me.Text
  loc_CF2ED0: ILdRf var_288
  loc_CF2ED3: CUI1Str
  loc_CF2ED5: LitI2_Byte 7
  loc_CF2ED7: CUI1I2
  loc_CF2ED9: FLdPr Me
  loc_CF2EDC: MemLdI2 global_92
  loc_CF2EDF: CUI1I2
  loc_CF2EE1: ILdRf var_224
  loc_CF2EE4: CI2Str
  loc_CF2EE6: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CF2EEB: FStStr var_12C
  loc_CF2EEE: FFreeStr var_224 = ""
  loc_CF2EF5: FFreeAd var_178 = ""
  loc_CF2EFC: Branch loc_CF2F5C
  loc_CF2EFF: FLdI2 var_2AE
  loc_CF2F02: LitI2_Byte 6
  loc_CF2F04: EqI2
  loc_CF2F05: BranchF loc_CF2F5C
  loc_CF2F08: FLdRfVar var_224
  loc_CF2F0B: FLdPr Me
  loc_CF2F0E: VCallAd Control_ID_PeriLiquTxt
  loc_CF2F11: FStAdFunc var_178
  loc_CF2F14: FLdPr var_178
  loc_CF2F17:  = Me.Text
  loc_CF2F1C: FLdRfVar var_288
  loc_CF2F1F: FLdPr Me
  loc_CF2F22: VCallAd Control_ID_CodiTiliTxt
  loc_CF2F25: FStAdFunc var_210
  loc_CF2F28: FLdPr var_210
  loc_CF2F2B:  = Me.Text
  loc_CF2F30: ILdRf var_288
  loc_CF2F33: CUI1Str
  loc_CF2F35: LitI2_Byte 7
  loc_CF2F37: CUI1I2
  loc_CF2F39: FLdPr Me
  loc_CF2F3C: MemLdI2 global_92
  loc_CF2F3F: CUI1I2
  loc_CF2F41: ILdRf var_224
  loc_CF2F44: CI2Str
  loc_CF2F46: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CF2F4B: FStStr var_130
  loc_CF2F4E: FFreeStr var_224 = ""
  loc_CF2F55: FFreeAd var_178 = ""
  loc_CF2F5C: FLdPr Me
  loc_CF2F5F: MemLdRfVar from_stack_1.global_92
  loc_CF2F62: NextI2 var_2AC, loc_CF2D16
  loc_CF2F67: FLdRfVar var_172
  loc_CF2F6A: FLdPr Me
  loc_CF2F6D: VCallAd Control_ID_ParcialOpt
  loc_CF2F70: FStAdFunc var_178
  loc_CF2F73: FLdPr var_178
  loc_CF2F76:  = Me.Value
  loc_CF2F7B: FLdI2 var_172
  loc_CF2F7E: LitI2_Byte &HFF
  loc_CF2F80: EqI2
  loc_CF2F81: FFree1Ad var_178
  loc_CF2F84: BranchF loc_CF2F87
  loc_CF2F87: FLdRfVar var_172
  loc_CF2F8A: FLdPr Me
  loc_CF2F8D: VCallAd Control_ID_CompletaOpt
  loc_CF2F90: FStAdFunc var_178
  loc_CF2F93: FLdPr var_178
  loc_CF2F96:  = Me.Value
  loc_CF2F9B: FLdI2 var_172
  loc_CF2F9E: LitI2_Byte &HFF
  loc_CF2FA0: EqI2
  loc_CF2FA1: FFree1Ad var_178
  loc_CF2FA4: BranchF loc_CF2FE8
  loc_CF2FA7: LitStr "SELECT antena.CodiCome, CucuPers, CodiExce, FfexCome, CodiLoca, FeapCome, "
  loc_CF2FAA: LitStr " antena.CodiRuta "
  loc_CF2FAD: ConcatStr
  loc_CF2FAE: FStStrNoPop var_224
  loc_CF2FB1: LitStr " FROM antena "
  loc_CF2FB4: ConcatStr
  loc_CF2FB5: FStStrNoPop var_288
  loc_CF2FB8: ILdRf var_164
  loc_CF2FBB: ConcatStr
  loc_CF2FBC: FStStrNoPop var_28C
  loc_CF2FBF: LitStr " AND antena.CodiEsco = 1"
  loc_CF2FC2: ConcatStr
  loc_CF2FC3: FStStrNoPop var_290
  loc_CF2FC6: LitStr " ORDER BY antena.CodiCome"
  loc_CF2FC9: ConcatStr
  loc_CF2FCA: FStStrNoPop var_294
  loc_CF2FCD: FLdPr Me
  loc_CF2FD0: MemLdRfVar from_stack_1.global_56
  loc_CF2FD3: NewIfNullPr clscomercio
  loc_CF2FD6: Call clscomercio.RedefineRS(from_stack_1v)
  loc_CF2FDB: FFreeStr var_224 = "": var_288 = "": var_28C = "": var_290 = ""
  loc_CF2FE8: FLdRfVar var_298
  loc_CF2FEB: FLdPr Me
  loc_CF2FEE: MemLdRfVar from_stack_1.global_56
  loc_CF2FF1: NewIfNullPr clscomercio
  loc_CF2FF4: from_stack_1 = clscomercio.RecordCount
  loc_CF2FF9: ILdRf var_298
  loc_CF2FFC: LitI4 0
  loc_CF3001: GtI4
  loc_CF3002: BranchF loc_CF5735
  loc_CF3005: LitI2_Byte &HB
  loc_CF3007: FLdPr Me
  loc_CF300A: Me.MousePointer = from_stack_1
  loc_CF300F: LitI4 0
  loc_CF3014: LitI4 0
  loc_CF3019: FLdRfVar var_2B4
  loc_CF301C: Redim
  loc_CF3026: FLdPr Me
  loc_CF3029: VCallAd Control_ID_CalculoCmd
  loc_CF302C: CVarAd
  loc_CF3030: ParmAry1St
  loc_CF3036: FLdRfVar var_2B4
  loc_CF3039: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CF303E: FLdRfVar var_2B4
  loc_CF3041: Erase
  loc_CF3042: LitVar_TRUE var_19C
  loc_CF3045: PopAdLdVar
  loc_CF3046: FLdPr Me
  loc_CF3049: VCallAd Control_ID_ProgressBar
  loc_CF304C: FStAdFunc var_178
  loc_CF304F: FLdPr var_178
  loc_CF3052: LateIdSt
  loc_CF3057: FFree1Ad var_178
  loc_CF305A: LitI2_Byte 0
  loc_CF305C: CR8I2
  loc_CF305D: CVarR4
  loc_CF3061: PopAdLdVar
  loc_CF3062: FLdPr Me
  loc_CF3065: VCallAd Control_ID_ProgressBar
  loc_CF3068: FStAdFunc var_178
  loc_CF306B: FLdPr var_178
  loc_CF306E: LateIdSt
  loc_CF3073: FFree1Ad var_178
  loc_CF3076: FLdRfVar var_298
  loc_CF3079: FLdPr Me
  loc_CF307C: MemLdRfVar from_stack_1.global_56
  loc_CF307F: NewIfNullPr clscomercio
  loc_CF3082: from_stack_1 = clscomercio.RecordCount
  loc_CF3087: ILdRf var_298
  loc_CF308A: CR8I4
  loc_CF308B: CVarR4
  loc_CF308F: PopAdLdVar
  loc_CF3090: FLdPr Me
  loc_CF3093: VCallAd Control_ID_ProgressBar
  loc_CF3096: FStAdFunc var_178
  loc_CF3099: FLdPr var_178
  loc_CF309C: LateIdSt
  loc_CF30A1: FFree1Ad var_178
  loc_CF30A4: LitI2_Byte 0
  loc_CF30A6: CR8I2
  loc_CF30A7: CVarR4
  loc_CF30AB: PopAdLdVar
  loc_CF30AC: FLdPr Me
  loc_CF30AF: VCallAd Control_ID_ProgressBar
  loc_CF30B2: FStAdFunc var_178
  loc_CF30B5: FLdPr var_178
  loc_CF30B8: LateIdSt
  loc_CF30BD: FFree1Ad var_178
  loc_CF30C0: LitI4 0
  loc_CF30C5: FStR4 var_88
  loc_CF30C8: FLdPr Me
  loc_CF30CB: MemLdRfVar from_stack_1.global_56
  loc_CF30CE: NewIfNullPr clscomercio
  loc_CF30D1: Call clscomercio.MoveFirst()
  loc_CF30D6: FLdRfVar var_172
  loc_CF30D9: FLdPr Me
  loc_CF30DC: MemLdRfVar from_stack_1.global_56
  loc_CF30DF: NewIfNullPr clscomercio
  loc_CF30E2: from_stack_1 = clscomercio.EOF
  loc_CF30E7: FLdI2 var_172
  loc_CF30EA: NotI4
  loc_CF30EB: BranchF loc_CF5735
  loc_CF30EE: ILdRf var_88
  loc_CF30F1: CR8I4
  loc_CF30F2: CVarR4
  loc_CF30F6: PopAdLdVar
  loc_CF30F7: FLdPr Me
  loc_CF30FA: VCallAd Control_ID_ProgressBar
  loc_CF30FD: FStAdFunc var_178
  loc_CF3100: FLdPr var_178
  loc_CF3103: LateIdSt
  loc_CF3108: FFree1Ad var_178
  loc_CF310B: ILdRf var_88
  loc_CF310E: LitI4 1
  loc_CF3113: AddI4
  loc_CF3114: FStR4 var_88
  loc_CF3117: LitStr "SELECT CocrPers, NurePers, DecrPers, CobrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers FROM infogov.persona"
  loc_CF311A: LitStr " WHERE infogov.persona.CucuPers = "
  loc_CF311D: ConcatStr
  loc_CF311E: CVarStr var_220
  loc_CF3121: FLdRfVar var_188
  loc_CF3124: FLdRfVar var_2A4
  loc_CF3127: LitVarStr var_19C, "CucuPers"
  loc_CF312C: PopAdLdVar
  loc_CF312D: FLdRfVar var_210
  loc_CF3130: FLdRfVar var_178
  loc_CF3133: FLdPr Me
  loc_CF3136: MemLdRfVar from_stack_1.global_56
  loc_CF3139: NewIfNullPr clscomercio
  loc_CF313C: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3141: FLdPr var_178
  loc_CF3144:  = Me.Fields
  loc_CF3149: FLdPr var_210
  loc_CF314C: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3151: FLdPr var_2A4
  loc_CF3154:  = Me.Value
  loc_CF3159: FLdRfVar var_188
  loc_CF315C: ConcatVar var_244
  loc_CF3160: LitVarStr var_1AC, " ORDER BY CucuPers"
  loc_CF3165: ConcatVar var_254
  loc_CF3169: CStrVarVal var_224
  loc_CF316D: FLdPr Me
  loc_CF3170: MemLdRfVar from_stack_1.global_72
  loc_CF3173: NewIfNullPr clspersonas
  loc_CF3176: Call clspersonas.RedefineRS(from_stack_1v)
  loc_CF317B: FFree1Str var_224
  loc_CF317E: FFreeAd var_178 = "": var_210 = ""
  loc_CF3187: FFreeVar var_220 = "": var_188 = "": var_244 = ""
  loc_CF3192: FLdRfVar var_188
  loc_CF3195: FLdRfVar var_2A4
  loc_CF3198: LitVarStr var_19C, "CodiCome"
  loc_CF319D: PopAdLdVar
  loc_CF319E: FLdRfVar var_210
  loc_CF31A1: FLdRfVar var_178
  loc_CF31A4: FLdPr Me
  loc_CF31A7: MemLdRfVar from_stack_1.global_56
  loc_CF31AA: NewIfNullPr clscomercio
  loc_CF31AD: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF31B2: FLdPr var_178
  loc_CF31B5:  = Me.Fields
  loc_CF31BA: FLdPr var_210
  loc_CF31BD: from_stack_2 = Me.Item(from_stack_1)
  loc_CF31C2: FLdPr var_2A4
  loc_CF31C5:  = Me.Value
  loc_CF31CA: FLdRfVar var_172
  loc_CF31CD: FLdRfVar var_188
  loc_CF31D0: CStrVarTmp
  loc_CF31D1: FStStrNoPop var_224
  loc_CF31D4: LitI2_Byte 7
  loc_CF31D6: CUI1I2
  loc_CF31D8: FLdPr Me
  loc_CF31DB: MemLdRfVar from_stack_1.global_64
  loc_CF31DE: NewIfNullPr clsrelacion
  loc_CF31E1: from_stack_3v = clsrelacion.BuscaDatosRelacion(from_stack_1v, from_stack_2v)
  loc_CF31E6: FLdI2 var_172
  loc_CF31E9: LitI2_Byte &HFF
  loc_CF31EB: EqI2
  loc_CF31EC: FFree1Str var_224
  loc_CF31EF: FFreeAd var_178 = "": var_210 = ""
  loc_CF31F8: FFree1Var var_188 = ""
  loc_CF31FB: BranchF loc_CF5624
  loc_CF31FE: FLdRfVar var_188
  loc_CF3201: FLdRfVar var_2A4
  loc_CF3204: LitVarStr var_19C, "CodiCome"
  loc_CF3209: PopAdLdVar
  loc_CF320A: FLdRfVar var_210
  loc_CF320D: FLdRfVar var_178
  loc_CF3210: FLdPr Me
  loc_CF3213: MemLdRfVar from_stack_1.global_56
  loc_CF3216: NewIfNullPr clscomercio
  loc_CF3219: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF321E: FLdPr var_178
  loc_CF3221:  = Me.Fields
  loc_CF3226: FLdPr var_210
  loc_CF3229: from_stack_2 = Me.Item(from_stack_1)
  loc_CF322E: FLdPr var_2A4
  loc_CF3231:  = Me.Value
  loc_CF3236: FLdFPR8 var_108
  loc_CF3239: CStrDate
  loc_CF323B: FStStrNoPop var_288
  loc_CF323E: FLdRfVar var_188
  loc_CF3241: CStrVarTmp
  loc_CF3242: FStStrNoPop var_224
  loc_CF3245: LitI2_Byte 7
  loc_CF3247: CUI1I2
  loc_CF3249: ImpAdCallFPR4  = Proc_270_104_B20D90(, )
  loc_CF324E: FStFPR8 var_A4
  loc_CF3251: FFreeStr var_224 = ""
  loc_CF3258: FFreeAd var_178 = "": var_210 = ""
  loc_CF3261: FFree1Var var_188 = ""
  loc_CF3264: FLdRfVar var_188
  loc_CF3267: FLdRfVar var_2A4
  loc_CF326A: LitVarStr var_19C, "CodiCome"
  loc_CF326F: PopAdLdVar
  loc_CF3270: FLdRfVar var_210
  loc_CF3273: FLdRfVar var_178
  loc_CF3276: FLdPr Me
  loc_CF3279: MemLdRfVar from_stack_1.global_56
  loc_CF327C: NewIfNullPr clscomercio
  loc_CF327F: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3284: FLdPr var_178
  loc_CF3287:  = Me.Fields
  loc_CF328C: FLdPr var_210
  loc_CF328F: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3294: FLdPr var_2A4
  loc_CF3297:  = Me.Value
  loc_CF329C: FLdRfVar var_2A0
  loc_CF329F: FLdRfVar var_188
  loc_CF32A2: CStrVarTmp
  loc_CF32A3: FStStrNoPop var_224
  loc_CF32A6: LitI2_Byte 7
  loc_CF32A8: FLdPr Me
  loc_CF32AB: MemLdRfVar from_stack_1.global_80
  loc_CF32AE: NewIfNullPr clsrecabole
  loc_CF32B1: from_stack_3v = clsrecabole.BuscaImporteRecabole(from_stack_1v, from_stack_2v)
  loc_CF32B6: FLdFPR8 var_2A0
  loc_CF32B9: FStFPR8 var_F0
  loc_CF32BC: FFree1Str var_224
  loc_CF32BF: FFreeAd var_178 = "": var_210 = ""
  loc_CF32C8: FFree1Var var_188 = ""
  loc_CF32CB: LitI2_Byte 0
  loc_CF32CD: CR8I2
  loc_CF32CE: FStFPR8 var_15C
  loc_CF32D1: LitI2_Byte 0
  loc_CF32D3: CR8I2
  loc_CF32D4: FStFPR8 var_E0
  loc_CF32D7: LitI2_Byte 0
  loc_CF32D9: CR8I2
  loc_CF32DA: FStFPR8 var_E8
  loc_CF32DD: LitI2_Byte 0
  loc_CF32DF: CR8I2
  loc_CF32E0: FStFPR8 var_B4
  loc_CF32E3: LitStr "SELECT s.CodiCome, s.CodiRamo, s.CodiRubr, s.CodiSubr, s.PrioSeco, s.FealSeco, s.ExalSeco, s.FebaSeco, s.ExbaSeco, s.MobaSeco, s.AcprSeco, s.LiquSeco, s.CantSeco, s.ObseSeco, s.AltaUsua, r.DetaRamo, ru.DetaRubr, su.DetaSubr,"
  loc_CF32E6: LitStr " ROUND((t.Importe) * (SELECT UntrPage FROM recaudacion.paragene),2) ImpoSubr,"
  loc_CF32E9: ConcatStr
  loc_CF32EA: FStStrNoPop var_224
  loc_CF32ED: LitStr " ROUND((t.Importe * s.CantSeco) * (SELECT UntrPage FROM recaudacion.paragene),2) ImpoTaco"
  loc_CF32F0: ConcatStr
  loc_CF32F1: FStStrNoPop var_288
  loc_CF32F4: LitStr " FROM servante s"
  loc_CF32F7: ConcatStr
  loc_CF32F8: FStStrNoPop var_28C
  loc_CF32FB: LitStr " INNER JOIN ramo r ON r.CodiRamo = s.CodiRamo"
  loc_CF32FE: ConcatStr
  loc_CF32FF: FStStrNoPop var_290
  loc_CF3302: LitStr " INNER JOIN rubro ru ON ru.CodiRubr = s.CodiRubr"
  loc_CF3305: ConcatStr
  loc_CF3306: FStStrNoPop var_294
  loc_CF3309: LitStr " INNER JOIN subrubro su ON su.CodiSubr = s.CodiSubr AND su.CodiRamo = s.CodiRamo AND su.CodiRubr = s.CodiRubr AND su.PeriOrde = "
  loc_CF330C: ConcatStr
  loc_CF330D: FStStrNoPop var_2B8
  loc_CF3310: ImpAdLdI2 MemVar_D93036
  loc_CF3313: CStrUI1
  loc_CF3315: FStStrNoPop var_2BC
  loc_CF3318: ConcatStr
  loc_CF3319: FStStrNoPop var_2C0
  loc_CF331C: LitStr " LEFT JOIN tarifaria t ON t.PeriInfo = su.PeriOrde AND su.CodiSubr = t.Letra"
  loc_CF331F: ConcatStr
  loc_CF3320: FStStrNoPop var_2C4
  loc_CF3323: LitStr " WHERE s.CodiCome = "
  loc_CF3326: ConcatStr
  loc_CF3327: CVarStr var_220
  loc_CF332A: FLdRfVar var_188
  loc_CF332D: FLdRfVar var_2A4
  loc_CF3330: LitVarStr var_19C, "CodiCome"
  loc_CF3335: PopAdLdVar
  loc_CF3336: FLdRfVar var_210
  loc_CF3339: FLdRfVar var_178
  loc_CF333C: FLdPr Me
  loc_CF333F: MemLdRfVar from_stack_1.global_56
  loc_CF3342: NewIfNullPr clscomercio
  loc_CF3345: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF334A: FLdPr var_178
  loc_CF334D:  = Me.Fields
  loc_CF3352: FLdPr var_210
  loc_CF3355: from_stack_2 = Me.Item(from_stack_1)
  loc_CF335A: FLdPr var_2A4
  loc_CF335D:  = Me.Value
  loc_CF3362: FLdRfVar var_188
  loc_CF3365: ConcatVar var_244
  loc_CF3369: LitVarStr var_1AC, " AND s.BajaFeho IS NULL AND s.FebaSeco IS NULL"
  loc_CF336E: ConcatVar var_254
  loc_CF3372: CStrVarVal var_2C8
  loc_CF3376: FLdPr Me
  loc_CF3379: MemLdRfVar from_stack_1.global_76
  loc_CF337C: NewIfNullPr clsservcome
  loc_CF337F: Call clsservcome.RedefineRS(from_stack_1v)
  loc_CF3384: FFreeStr var_224 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = ""
  loc_CF339B: FFreeAd var_178 = "": var_210 = ""
  loc_CF33A4: FFreeVar var_220 = "": var_188 = "": var_244 = ""
  loc_CF33AF: FLdRfVar var_298
  loc_CF33B2: FLdPr Me
  loc_CF33B5: MemLdRfVar from_stack_1.global_76
  loc_CF33B8: NewIfNullPr clsservcome
  loc_CF33BB: from_stack_1 = clsservcome.RecordCount
  loc_CF33C0: ILdRf var_298
  loc_CF33C3: LitI4 0
  loc_CF33C8: GtI4
  loc_CF33C9: BranchF loc_CF3430
  loc_CF33CC: FLdPr Me
  loc_CF33CF: MemLdRfVar from_stack_1.global_76
  loc_CF33D2: NewIfNullPr clsservcome
  loc_CF33D5: Call clsservcome.MoveFirst()
  loc_CF33DA: FLdRfVar var_172
  loc_CF33DD: FLdPr Me
  loc_CF33E0: MemLdRfVar from_stack_1.global_76
  loc_CF33E3: NewIfNullPr clsservcome
  loc_CF33E6: from_stack_1 = clsservcome.EOF
  loc_CF33EB: FLdI2 var_172
  loc_CF33EE: NotI4
  loc_CF33EF: BranchF loc_CF342D
  loc_CF33F2: FLdFPR8 var_E8
  loc_CF33F5: CVarR8
  loc_CF33F9: FLdRfVar var_188
  loc_CF33FC: FLdPr Me
  loc_CF33FF: MemLdRfVar from_stack_1.global_76
  loc_CF3402: NewIfNullPr clsservcome
  loc_CF3405: from_stack_1 = clsservcome.ImpoTaco
  loc_CF340A: FLdRfVar var_188
  loc_CF340D: AddVar var_220
  loc_CF3411: CR4Var
  loc_CF3412: FStFPR8 var_E8
  loc_CF3415: FFreeVar var_188 = ""
  loc_CF341C: FLdPr Me
  loc_CF341F: MemLdRfVar from_stack_1.global_76
  loc_CF3422: NewIfNullPr clsservcome
  loc_CF3425: Call clsservcome.MoveSiguiente()
  loc_CF342A: Branch loc_CF33DA
  loc_CF342D: Branch loc_CF3530
  loc_CF3430: FLdRfVar var_224
  loc_CF3433: FLdPr Me
  loc_CF3436: VCallAd Control_ID_PeriLiquTxt
  loc_CF3439: FStAdFunc var_178
  loc_CF343C: FLdPr var_178
  loc_CF343F:  = Me.Text
  loc_CF3444: FLdRfVar var_288
  loc_CF3447: FLdPr Me
  loc_CF344A: VCallAd Control_ID_CodiTiliTxt
  loc_CF344D: FStAdFunc var_210
  loc_CF3450: FLdPr var_210
  loc_CF3453:  = Me.Text
  loc_CF3458: FLdRfVar var_254
  loc_CF345B: FLdRfVar var_2CC
  loc_CF345E: LitVarStr var_19C, "CodiCome"
  loc_CF3463: PopAdLdVar
  loc_CF3464: FLdRfVar var_2A8
  loc_CF3467: FLdRfVar var_2A4
  loc_CF346A: FLdPr Me
  loc_CF346D: MemLdRfVar from_stack_1.global_56
  loc_CF3470: NewIfNullPr clscomercio
  loc_CF3473: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3478: FLdPr var_2A4
  loc_CF347B:  = Me.Fields
  loc_CF3480: FLdPr var_2A8
  loc_CF3483: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3488: FLdPr var_2CC
  loc_CF348B:  = Me.Value
  loc_CF3490: LitVarStr var_1BC, "Cuenta: "
  loc_CF3495: FLdRfVar var_188
  loc_CF3498: FLdRfVar var_2D8
  loc_CF349B: LitVarStr var_1AC, "CodiCome"
  loc_CF34A0: PopAdLdVar
  loc_CF34A1: FLdRfVar var_2D4
  loc_CF34A4: FLdRfVar var_2D0
  loc_CF34A7: FLdPr Me
  loc_CF34AA: MemLdRfVar from_stack_1.global_56
  loc_CF34AD: NewIfNullPr clscomercio
  loc_CF34B0: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF34B5: FLdPr var_2D0
  loc_CF34B8:  = Me.Fields
  loc_CF34BD: FLdPr var_2D4
  loc_CF34C0: from_stack_2 = Me.Item(from_stack_1)
  loc_CF34C5: FLdPr var_2D8
  loc_CF34C8:  = Me.Value
  loc_CF34CD: FLdRfVar var_188
  loc_CF34D0: ConcatVar var_220
  loc_CF34D4: LitVarStr var_1CC, " No se encontro los rubros del antena."
  loc_CF34D9: ConcatVar var_244
  loc_CF34DD: CStrVarVal var_28C
  loc_CF34E1: FLdRfVar var_254
  loc_CF34E4: CI4Var
  loc_CF34E6: FLdI2 var_8A
  loc_CF34E9: ILdRf var_288
  loc_CF34EC: CUI1Str
  loc_CF34EE: FLdPr Me
  loc_CF34F1: MemLdI2 global_92
  loc_CF34F4: CUI1I2
  loc_CF34F6: ILdRf var_224
  loc_CF34F9: CI2Str
  loc_CF34FB: FLdPr Me
  loc_CF34FE: MemLdRfVar from_stack_1.global_68
  loc_CF3501: NewIfNullPr clsliquante
  loc_CF3504: Call clsliquante.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CF3509: FFreeStr var_224 = "": var_288 = ""
  loc_CF3512: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2D8 = ""
  loc_CF3525: FFreeVar var_188 = "": var_220 = "": var_254 = ""
  loc_CF3530: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') CodiCalle, IFNULL(domicilio.calle,'') as DecaPost, IFNULL(domicilio.NumeCalle,'0') as NumePost, IFNULL(domicilio.CodiBarrio,'0') CobpPost, IFNULL(domicilio.barrio,'') as DebaPost, IFNULL(domicilio.Manzana,'') as ManzPost, IFNULL(domicilio.Casa,'') as CasaPost, "
  loc_CF3533: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbicPost, IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') ColpPost, IFNULL(domicilio.Localidad,'') as DeloPost, IFNULL(domicilio.CodPostal,'0') as CopoPost "
  loc_CF3536: ConcatStr
  loc_CF3537: FStStrNoPop var_224
  loc_CF353A: LitStr " FROM domicilio"
  loc_CF353D: ConcatStr
  loc_CF353E: FStStrNoPop var_288
  loc_CF3541: LitStr " WHERE CodiOfic = 7"
  loc_CF3544: ConcatStr
  loc_CF3545: FStStrNoPop var_28C
  loc_CF3548: LitStr " AND CodiCome = "
  loc_CF354B: ConcatStr
  loc_CF354C: CVarStr var_220
  loc_CF354F: FLdRfVar var_188
  loc_CF3552: FLdRfVar var_2A4
  loc_CF3555: LitVarStr var_19C, "CodiCome"
  loc_CF355A: PopAdLdVar
  loc_CF355B: FLdRfVar var_210
  loc_CF355E: FLdRfVar var_178
  loc_CF3561: FLdPr Me
  loc_CF3564: MemLdRfVar from_stack_1.global_56
  loc_CF3567: NewIfNullPr clscomercio
  loc_CF356A: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF356F: FLdPr var_178
  loc_CF3572:  = Me.Fields
  loc_CF3577: FLdPr var_210
  loc_CF357A: from_stack_2 = Me.Item(from_stack_1)
  loc_CF357F: FLdPr var_2A4
  loc_CF3582:  = Me.Value
  loc_CF3587: FLdRfVar var_188
  loc_CF358A: ConcatVar var_244
  loc_CF358E: LitVarStr var_1AC, " AND Tipo = 'POSTAL'"
  loc_CF3593: ConcatVar var_254
  loc_CF3597: CStrVarVal var_290
  loc_CF359B: FLdPr Me
  loc_CF359E: MemLdRfVar from_stack_1.global_84
  loc_CF35A1: NewIfNullPr clsboleto
  loc_CF35A4: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CF35A9: FFreeStr var_224 = "": var_288 = "": var_28C = ""
  loc_CF35B4: FFreeAd var_178 = "": var_210 = ""
  loc_CF35BD: FFreeVar var_220 = "": var_188 = "": var_244 = ""
  loc_CF35C8: FLdRfVar var_298
  loc_CF35CB: FLdPr Me
  loc_CF35CE: MemLdRfVar from_stack_1.global_84
  loc_CF35D1: NewIfNullPr clsboleto
  loc_CF35D4: from_stack_1 = clsboleto.RecordCount
  loc_CF35D9: ILdRf var_298
  loc_CF35DC: LitI4 0
  loc_CF35E1: EqI4
  loc_CF35E2: BranchF loc_CF367D
  loc_CF35E5: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') CodiCalle, IFNULL(domicilio.calle,'') as DecaPost, IFNULL(domicilio.NumeCalle,'0') as NumePost, IFNULL(domicilio.CodiBarrio,'0') CobpPost, IFNULL(domicilio.barrio,'') as DebaPost, IFNULL(domicilio.Manzana,'') as ManzPost, IFNULL(domicilio.Casa,'') as CasaPost, "
  loc_CF35E8: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbicPost, IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') ColpPost, IFNULL(domicilio.Localidad,'') as DeloPost, IFNULL(domicilio.CodPostal,'0') as CopoPost "
  loc_CF35EB: ConcatStr
  loc_CF35EC: FStStrNoPop var_224
  loc_CF35EF: LitStr " FROM domicilio"
  loc_CF35F2: ConcatStr
  loc_CF35F3: FStStrNoPop var_288
  loc_CF35F6: LitStr " WHERE CodiOfic = 7"
  loc_CF35F9: ConcatStr
  loc_CF35FA: FStStrNoPop var_28C
  loc_CF35FD: LitStr " AND CodiCome = "
  loc_CF3600: ConcatStr
  loc_CF3601: CVarStr var_220
  loc_CF3604: FLdRfVar var_188
  loc_CF3607: FLdRfVar var_2A4
  loc_CF360A: LitVarStr var_19C, "CodiCome"
  loc_CF360F: PopAdLdVar
  loc_CF3610: FLdRfVar var_210
  loc_CF3613: FLdRfVar var_178
  loc_CF3616: FLdPr Me
  loc_CF3619: MemLdRfVar from_stack_1.global_56
  loc_CF361C: NewIfNullPr clscomercio
  loc_CF361F: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3624: FLdPr var_178
  loc_CF3627:  = Me.Fields
  loc_CF362C: FLdPr var_210
  loc_CF362F: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3634: FLdPr var_2A4
  loc_CF3637:  = Me.Value
  loc_CF363C: FLdRfVar var_188
  loc_CF363F: ConcatVar var_244
  loc_CF3643: LitVarStr var_1AC, " AND Tipo = 'COMERCIAL'"
  loc_CF3648: ConcatVar var_254
  loc_CF364C: CStrVarVal var_290
  loc_CF3650: FLdPr Me
  loc_CF3653: MemLdRfVar from_stack_1.global_84
  loc_CF3656: NewIfNullPr clsboleto
  loc_CF3659: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CF365E: FFreeStr var_224 = "": var_288 = "": var_28C = ""
  loc_CF3669: FFreeAd var_178 = "": var_210 = ""
  loc_CF3672: FFreeVar var_220 = "": var_188 = "": var_244 = ""
  loc_CF367D: FLdFPR8 var_A4
  loc_CF3680: LitI2_Byte 0
  loc_CF3682: CR8I2
  loc_CF3683: LeR8
  loc_CF3684: BranchF loc_CF3690
  loc_CF3687: LitI2_Byte &H14
  loc_CF3689: CR8I2
  loc_CF368A: FStFPR8 var_170
  loc_CF368D: Branch loc_CF3696
  loc_CF3690: LitI2_Byte &HF
  loc_CF3692: CR8I2
  loc_CF3693: FStFPR8 var_170
  loc_CF3696: FLdFPR8 var_BC
  loc_CF3699: FStFPR8 var_F8
  loc_CF369C: FLdFPR8 var_E8
  loc_CF369F: LitI2_Byte 0
  loc_CF36A1: CR8I2
  loc_CF36A2: GtR4
  loc_CF36A3: BranchF loc_CF5521
  loc_CF36A6: FLdPr Me
  loc_CF36A9: MemLdI2 global_94
  loc_CF36AC: FLdPr Me
  loc_CF36AF: MemLdRfVar from_stack_1.global_92
  loc_CF36B2: FLdPr Me
  loc_CF36B5: MemLdI2 global_96
  loc_CF36B8: ForI2 var_2DC
  loc_CF36BE: FLdRfVar var_224
  loc_CF36C1: FLdPr Me
  loc_CF36C4: VCallAd Control_ID_BimeLiquTxt
  loc_CF36C7: FStAdFunc var_178
  loc_CF36CA: FLdPr var_178
  loc_CF36CD:  = Me.Text
  loc_CF36D2: ILdRf var_224
  loc_CF36D5: CR8Str
  loc_CF36D7: LitI2_Byte 1
  loc_CF36D9: CR8I2
  loc_CF36DA: GtR4
  loc_CF36DB: FFree1Str var_224
  loc_CF36DE: FFree1Ad var_178
  loc_CF36E1: BranchF loc_CF3771
  loc_CF36E4: FLdRfVar var_188
  loc_CF36E7: FLdRfVar var_2A4
  loc_CF36EA: LitVarStr var_19C, "CodiCome"
  loc_CF36EF: PopAdLdVar
  loc_CF36F0: FLdRfVar var_210
  loc_CF36F3: FLdRfVar var_178
  loc_CF36F6: FLdPr Me
  loc_CF36F9: MemLdRfVar from_stack_1.global_56
  loc_CF36FC: NewIfNullPr clscomercio
  loc_CF36FF: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3704: FLdPr var_178
  loc_CF3707:  = Me.Fields
  loc_CF370C: FLdPr var_210
  loc_CF370F: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3714: FLdPr var_2A4
  loc_CF3717:  = Me.Value
  loc_CF371C: FLdRfVar var_224
  loc_CF371F: FLdPr Me
  loc_CF3722: VCallAd Control_ID_PeriLiquTxt
  loc_CF3725: FStAdFunc var_2A8
  loc_CF3728: FLdPr var_2A8
  loc_CF372B:  = Me.Text
  loc_CF3730: FLdRfVar var_172
  loc_CF3733: FLdPr Me
  loc_CF3736: MemLdI2 global_94
  loc_CF3739: ILdRf var_224
  loc_CF373C: CI2Str
  loc_CF373E: FLdRfVar var_188
  loc_CF3741: CStrVarTmp
  loc_CF3742: FStStrNoPop var_288
  loc_CF3745: FLdPr Me
  loc_CF3748: MemLdRfVar from_stack_1.global_68
  loc_CF374B: NewIfNullPr clsliquante
  loc_CF374E: from_stack_4v = clsliquante.BuscaDeudaDeBimestreParaLaEmisionMasiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CF3753: FLdI2 var_172
  loc_CF3756: FStI2 var_166
  loc_CF3759: FFreeStr var_288 = ""
  loc_CF3760: FFreeAd var_178 = "": var_210 = "": var_2A8 = ""
  loc_CF376B: FFree1Var var_188 = ""
  loc_CF376E: Branch loc_CF3776
  loc_CF3771: LitI2_Byte &HFF
  loc_CF3773: FStI2 var_166
  loc_CF3776: FLdI2 var_166
  loc_CF3779: LitI2_Byte &HFF
  loc_CF377B: EqI2
  loc_CF377C: BranchF loc_CF4D5E
  loc_CF377F: FLdPr Me
  loc_CF3782: MemLdI2 global_92
  loc_CF3785: FStI2 var_2DE
  loc_CF3788: FLdI2 var_2DE
  loc_CF378B: LitI2_Byte 1
  loc_CF378D: EqI2
  loc_CF378E: BranchF loc_CF37DA
  loc_CF3791: ILdRf var_11C
  loc_CF3794: FStStrCopy var_14C
  loc_CF3797: FLdRfVar var_224
  loc_CF379A: FLdPr Me
  loc_CF379D: VCallAd Control_ID_PeriLiquTxt
  loc_CF37A0: FStAdFunc var_178
  loc_CF37A3: FLdPr var_178
  loc_CF37A6:  = Me.Text
  loc_CF37AB: LitI2_Byte 1
  loc_CF37AD: LitI2_Byte 3
  loc_CF37AF: ILdRf var_224
  loc_CF37B2: CR8Str
  loc_CF37B4: CI2R8
  loc_CF37B5: FLdRfVar var_188
  loc_CF37B8: ImpAdCallFPR4  = DateSerial(, , )
  loc_CF37BD: FLdRfVar var_188
  loc_CF37C0: LitVarI2 var_19C, 1
  loc_CF37C5: SubVar var_220
  loc_CF37C9: FnCDateVar
  loc_CF37CB: FStFPR8 var_110
  loc_CF37CE: FFree1Str var_224
  loc_CF37D1: FFree1Ad var_178
  loc_CF37D4: FFree1Var var_188 = ""
  loc_CF37D7: Branch loc_CF3975
  loc_CF37DA: FLdI2 var_2DE
  loc_CF37DD: LitI2_Byte 2
  loc_CF37DF: EqI2
  loc_CF37E0: BranchF loc_CF382C
  loc_CF37E3: ILdRf var_120
  loc_CF37E6: FStStrCopy var_14C
  loc_CF37E9: FLdRfVar var_224
  loc_CF37EC: FLdPr Me
  loc_CF37EF: VCallAd Control_ID_PeriLiquTxt
  loc_CF37F2: FStAdFunc var_178
  loc_CF37F5: FLdPr var_178
  loc_CF37F8:  = Me.Text
  loc_CF37FD: LitI2_Byte 1
  loc_CF37FF: LitI2_Byte 5
  loc_CF3801: ILdRf var_224
  loc_CF3804: CR8Str
  loc_CF3806: CI2R8
  loc_CF3807: FLdRfVar var_188
  loc_CF380A: ImpAdCallFPR4  = DateSerial(, , )
  loc_CF380F: FLdRfVar var_188
  loc_CF3812: LitVarI2 var_19C, 1
  loc_CF3817: SubVar var_220
  loc_CF381B: FnCDateVar
  loc_CF381D: FStFPR8 var_110
  loc_CF3820: FFree1Str var_224
  loc_CF3823: FFree1Ad var_178
  loc_CF3826: FFree1Var var_188 = ""
  loc_CF3829: Branch loc_CF3975
  loc_CF382C: FLdI2 var_2DE
  loc_CF382F: LitI2_Byte 3
  loc_CF3831: EqI2
  loc_CF3832: BranchF loc_CF387E
  loc_CF3835: ILdRf var_124
  loc_CF3838: FStStrCopy var_14C
  loc_CF383B: FLdRfVar var_224
  loc_CF383E: FLdPr Me
  loc_CF3841: VCallAd Control_ID_PeriLiquTxt
  loc_CF3844: FStAdFunc var_178
  loc_CF3847: FLdPr var_178
  loc_CF384A:  = Me.Text
  loc_CF384F: LitI2_Byte 1
  loc_CF3851: LitI2_Byte 7
  loc_CF3853: ILdRf var_224
  loc_CF3856: CR8Str
  loc_CF3858: CI2R8
  loc_CF3859: FLdRfVar var_188
  loc_CF385C: ImpAdCallFPR4  = DateSerial(, , )
  loc_CF3861: FLdRfVar var_188
  loc_CF3864: LitVarI2 var_19C, 1
  loc_CF3869: SubVar var_220
  loc_CF386D: FnCDateVar
  loc_CF386F: FStFPR8 var_110
  loc_CF3872: FFree1Str var_224
  loc_CF3875: FFree1Ad var_178
  loc_CF3878: FFree1Var var_188 = ""
  loc_CF387B: Branch loc_CF3975
  loc_CF387E: FLdI2 var_2DE
  loc_CF3881: LitI2_Byte 4
  loc_CF3883: EqI2
  loc_CF3884: BranchF loc_CF38D0
  loc_CF3887: ILdRf var_128
  loc_CF388A: FStStrCopy var_14C
  loc_CF388D: FLdRfVar var_224
  loc_CF3890: FLdPr Me
  loc_CF3893: VCallAd Control_ID_PeriLiquTxt
  loc_CF3896: FStAdFunc var_178
  loc_CF3899: FLdPr var_178
  loc_CF389C:  = Me.Text
  loc_CF38A1: LitI2_Byte 1
  loc_CF38A3: LitI2_Byte 9
  loc_CF38A5: ILdRf var_224
  loc_CF38A8: CR8Str
  loc_CF38AA: CI2R8
  loc_CF38AB: FLdRfVar var_188
  loc_CF38AE: ImpAdCallFPR4  = DateSerial(, , )
  loc_CF38B3: FLdRfVar var_188
  loc_CF38B6: LitVarI2 var_19C, 1
  loc_CF38BB: SubVar var_220
  loc_CF38BF: FnCDateVar
  loc_CF38C1: FStFPR8 var_110
  loc_CF38C4: FFree1Str var_224
  loc_CF38C7: FFree1Ad var_178
  loc_CF38CA: FFree1Var var_188 = ""
  loc_CF38CD: Branch loc_CF3975
  loc_CF38D0: FLdI2 var_2DE
  loc_CF38D3: LitI2_Byte 5
  loc_CF38D5: EqI2
  loc_CF38D6: BranchF loc_CF3922
  loc_CF38D9: ILdRf var_12C
  loc_CF38DC: FStStrCopy var_14C
  loc_CF38DF: FLdRfVar var_224
  loc_CF38E2: FLdPr Me
  loc_CF38E5: VCallAd Control_ID_PeriLiquTxt
  loc_CF38E8: FStAdFunc var_178
  loc_CF38EB: FLdPr var_178
  loc_CF38EE:  = Me.Text
  loc_CF38F3: LitI2_Byte 1
  loc_CF38F5: LitI2_Byte &HB
  loc_CF38F7: ILdRf var_224
  loc_CF38FA: CR8Str
  loc_CF38FC: CI2R8
  loc_CF38FD: FLdRfVar var_188
  loc_CF3900: ImpAdCallFPR4  = DateSerial(, , )
  loc_CF3905: FLdRfVar var_188
  loc_CF3908: LitVarI2 var_19C, 1
  loc_CF390D: SubVar var_220
  loc_CF3911: FnCDateVar
  loc_CF3913: FStFPR8 var_110
  loc_CF3916: FFree1Str var_224
  loc_CF3919: FFree1Ad var_178
  loc_CF391C: FFree1Var var_188 = ""
  loc_CF391F: Branch loc_CF3975
  loc_CF3922: FLdI2 var_2DE
  loc_CF3925: LitI2_Byte 6
  loc_CF3927: EqI2
  loc_CF3928: BranchF loc_CF3975
  loc_CF392B: ILdRf var_130
  loc_CF392E: FStStrCopy var_14C
  loc_CF3931: FLdRfVar var_224
  loc_CF3934: FLdPr Me
  loc_CF3937: VCallAd Control_ID_PeriLiquTxt
  loc_CF393A: FStAdFunc var_178
  loc_CF393D: FLdPr var_178
  loc_CF3940:  = Me.Text
  loc_CF3945: LitI2_Byte 1
  loc_CF3947: LitI2_Byte 1
  loc_CF3949: ILdRf var_224
  loc_CF394C: CR8Str
  loc_CF394E: LitI2_Byte 1
  loc_CF3950: CR8I2
  loc_CF3951: AddR8
  loc_CF3952: CI2R8
  loc_CF3953: FLdRfVar var_188
  loc_CF3956: ImpAdCallFPR4  = DateSerial(, , )
  loc_CF395B: FLdRfVar var_188
  loc_CF395E: LitVarI2 var_19C, 1
  loc_CF3963: SubVar var_220
  loc_CF3967: FnCDateVar
  loc_CF3969: FStFPR8 var_110
  loc_CF396C: FFree1Str var_224
  loc_CF396F: FFree1Ad var_178
  loc_CF3972: FFree1Var var_188 = ""
  loc_CF3975: LitI2_Byte 0
  loc_CF3977: CR8I2
  loc_CF3978: FStFPR8 var_94
  loc_CF397B: LitI2_Byte 0
  loc_CF397D: CR8I2
  loc_CF397E: FStFPR8 var_118
  loc_CF3981: FLdRfVar var_188
  loc_CF3984: FLdRfVar var_2A4
  loc_CF3987: LitVarStr var_19C, "CodiExce"
  loc_CF398C: PopAdLdVar
  loc_CF398D: FLdRfVar var_210
  loc_CF3990: FLdRfVar var_178
  loc_CF3993: FLdPr Me
  loc_CF3996: MemLdRfVar from_stack_1.global_56
  loc_CF3999: NewIfNullPr clscomercio
  loc_CF399C: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF39A1: FLdPr var_178
  loc_CF39A4:  = Me.Fields
  loc_CF39A9: FLdPr var_210
  loc_CF39AC: from_stack_2 = Me.Item(from_stack_1)
  loc_CF39B1: FLdPr var_2A4
  loc_CF39B4:  = Me.Value
  loc_CF39B9: FLdRfVar var_188
  loc_CF39BC: LitVarI2 var_1AC, 0
  loc_CF39C1: HardType
  loc_CF39C2: NeVar var_220
  loc_CF39C6: FLdRfVar var_2D0
  loc_CF39C9: LitVarStr var_1BC, "FfexCome"
  loc_CF39CE: PopAdLdVar
  loc_CF39CF: FLdRfVar var_2CC
  loc_CF39D2: FLdRfVar var_2A8
  loc_CF39D5: FLdPr Me
  loc_CF39D8: MemLdRfVar from_stack_1.global_56
  loc_CF39DB: NewIfNullPr clscomercio
  loc_CF39DE: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF39E3: FLdPr var_2A8
  loc_CF39E6:  = Me.Fields
  loc_CF39EB: FLdPr var_2CC
  loc_CF39EE: from_stack_2 = Me.Item(from_stack_1)
  loc_CF39F3: FLdZeroAd var_2D0
  loc_CF39F6: CVarAd
  loc_CF39FA: ImpAdCallI2 IsNull()
  loc_CF39FF: CVarBoolI2 var_1CC
  loc_CF3A03: AndVar var_254
  loc_CF3A07: CBoolVarNull
  loc_CF3A09: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = ""
  loc_CF3A16: FFreeVar var_188 = "": var_244 = ""
  loc_CF3A1F: BranchF loc_CF3A9F
  loc_CF3A22: FLdRfVar var_188
  loc_CF3A25: FLdRfVar var_2A4
  loc_CF3A28: LitVarStr var_19C, "CodiExce"
  loc_CF3A2D: PopAdLdVar
  loc_CF3A2E: FLdRfVar var_210
  loc_CF3A31: FLdRfVar var_178
  loc_CF3A34: FLdPr Me
  loc_CF3A37: MemLdRfVar from_stack_1.global_56
  loc_CF3A3A: NewIfNullPr clscomercio
  loc_CF3A3D: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3A42: FLdPr var_178
  loc_CF3A45:  = Me.Fields
  loc_CF3A4A: FLdPr var_210
  loc_CF3A4D: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3A52: FLdPr var_2A4
  loc_CF3A55:  = Me.Value
  loc_CF3A5A: FLdRfVar var_188
  loc_CF3A5D: CI2Var
  loc_CF3A5E: ImpAdCallFPR4 Proc_270_52_A7914C()
  loc_CF3A63: FStFPR8 var_118
  loc_CF3A66: FFreeAd var_178 = "": var_210 = ""
  loc_CF3A6F: FFree1Var var_188 = ""
  loc_CF3A72: LitI4 2
  loc_CF3A77: FLdFPR8 var_E8
  loc_CF3A7A: FLdFPR8 var_118
  loc_CF3A7D: MulR8
  loc_CF3A7E: LitI2_Byte &H64
  loc_CF3A80: CR8I2
  loc_CF3A81: DivR8
  loc_CF3A82: CVarR8
  loc_CF3A86: FLdRfVar var_220
  loc_CF3A89: ImpAdCallFPR4  = Round(, )
  loc_CF3A8E: FLdRfVar var_220
  loc_CF3A91: CR4Var
  loc_CF3A92: FStFPR8 var_94
  loc_CF3A95: FFreeVar var_188 = ""
  loc_CF3A9C: Branch loc_CF3C14
  loc_CF3A9F: FLdRfVar var_188
  loc_CF3AA2: FLdRfVar var_2A4
  loc_CF3AA5: LitVarStr var_19C, "CodiExce"
  loc_CF3AAA: PopAdLdVar
  loc_CF3AAB: FLdRfVar var_210
  loc_CF3AAE: FLdRfVar var_178
  loc_CF3AB1: FLdPr Me
  loc_CF3AB4: MemLdRfVar from_stack_1.global_56
  loc_CF3AB7: NewIfNullPr clscomercio
  loc_CF3ABA: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3ABF: FLdPr var_178
  loc_CF3AC2:  = Me.Fields
  loc_CF3AC7: FLdPr var_210
  loc_CF3ACA: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3ACF: FLdPr var_2A4
  loc_CF3AD2:  = Me.Value
  loc_CF3AD7: FLdRfVar var_188
  loc_CF3ADA: LitVarI2 var_1AC, 0
  loc_CF3ADF: HardType
  loc_CF3AE0: NeVar var_220
  loc_CF3AE4: FLdRfVar var_2D0
  loc_CF3AE7: LitVarStr var_1BC, "FfexCome"
  loc_CF3AEC: PopAdLdVar
  loc_CF3AED: FLdRfVar var_2CC
  loc_CF3AF0: FLdRfVar var_2A8
  loc_CF3AF3: FLdPr Me
  loc_CF3AF6: MemLdRfVar from_stack_1.global_56
  loc_CF3AF9: NewIfNullPr clscomercio
  loc_CF3AFC: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3B01: FLdPr var_2A8
  loc_CF3B04:  = Me.Fields
  loc_CF3B09: FLdPr var_2CC
  loc_CF3B0C: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3B11: FLdZeroAd var_2D0
  loc_CF3B14: CVarAd
  loc_CF3B18: ImpAdCallI2 IsNull()
  loc_CF3B1D: NotI4
  loc_CF3B1E: CVarBoolI2 var_1CC
  loc_CF3B22: AndVar var_254
  loc_CF3B26: CBoolVarNull
  loc_CF3B28: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = ""
  loc_CF3B35: FFreeVar var_188 = "": var_244 = ""
  loc_CF3B3E: BranchF loc_CF3C0E
  loc_CF3B41: FLdRfVar var_188
  loc_CF3B44: FLdRfVar var_2A4
  loc_CF3B47: LitVarStr var_19C, "FfexCome"
  loc_CF3B4C: PopAdLdVar
  loc_CF3B4D: FLdRfVar var_210
  loc_CF3B50: FLdRfVar var_178
  loc_CF3B53: FLdPr Me
  loc_CF3B56: MemLdRfVar from_stack_1.global_56
  loc_CF3B59: NewIfNullPr clscomercio
  loc_CF3B5C: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3B61: FLdPr var_178
  loc_CF3B64:  = Me.Fields
  loc_CF3B69: FLdPr var_210
  loc_CF3B6C: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3B71: FLdPr var_2A4
  loc_CF3B74:  = Me.Value
  loc_CF3B79: FLdRfVar var_188
  loc_CF3B7C: FnCDateVar
  loc_CF3B7E: FLdFPR8 var_110
  loc_CF3B81: GeR8
  loc_CF3B82: FFreeAd var_178 = "": var_210 = ""
  loc_CF3B8B: FFree1Var var_188 = ""
  loc_CF3B8E: BranchF loc_CF3C0B
  loc_CF3B91: FLdRfVar var_188
  loc_CF3B94: FLdRfVar var_2A4
  loc_CF3B97: LitVarStr var_19C, "CodiExce"
  loc_CF3B9C: PopAdLdVar
  loc_CF3B9D: FLdRfVar var_210
  loc_CF3BA0: FLdRfVar var_178
  loc_CF3BA3: FLdPr Me
  loc_CF3BA6: MemLdRfVar from_stack_1.global_56
  loc_CF3BA9: NewIfNullPr clscomercio
  loc_CF3BAC: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3BB1: FLdPr var_178
  loc_CF3BB4:  = Me.Fields
  loc_CF3BB9: FLdPr var_210
  loc_CF3BBC: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3BC1: FLdPr var_2A4
  loc_CF3BC4:  = Me.Value
  loc_CF3BC9: FLdRfVar var_188
  loc_CF3BCC: CI2Var
  loc_CF3BCD: ImpAdCallFPR4 Proc_270_52_A7914C()
  loc_CF3BD2: FStFPR8 var_118
  loc_CF3BD5: FFreeAd var_178 = "": var_210 = ""
  loc_CF3BDE: FFree1Var var_188 = ""
  loc_CF3BE1: LitI4 2
  loc_CF3BE6: FLdFPR8 var_E8
  loc_CF3BE9: FLdFPR8 var_118
  loc_CF3BEC: MulR8
  loc_CF3BED: LitI2_Byte &H64
  loc_CF3BEF: CR8I2
  loc_CF3BF0: DivR8
  loc_CF3BF1: CVarR8
  loc_CF3BF5: FLdRfVar var_220
  loc_CF3BF8: ImpAdCallFPR4  = Round(, )
  loc_CF3BFD: FLdRfVar var_220
  loc_CF3C00: CR4Var
  loc_CF3C01: FStFPR8 var_94
  loc_CF3C04: FFreeVar var_188 = ""
  loc_CF3C0B: Branch loc_CF3C14
  loc_CF3C0E: LitI2_Byte 0
  loc_CF3C10: CR8I2
  loc_CF3C11: FStFPR8 var_94
  loc_CF3C14: FLdFPR8 var_94
  loc_CF3C17: FLdFPR8 var_E8
  loc_CF3C1A: EqR4
  loc_CF3C1B: BranchF loc_CF3C33
  loc_CF3C1E: LitI2_Byte 0
  loc_CF3C20: CR8I2
  loc_CF3C21: FStFPR8 var_F8
  loc_CF3C24: FLdFPR8 var_94
  loc_CF3C27: FStFPR8 var_E8
  loc_CF3C2A: FLdFPR8 var_E8
  loc_CF3C2D: FStFPR8 var_E0
  loc_CF3C30: Branch loc_CF3C42
  loc_CF3C33: FLdFPR8 var_E8
  loc_CF3C36: FLdFPR8 var_F8
  loc_CF3C39: AddR8
  loc_CF3C3A: LitI2 2860
  loc_CF3C3D: CR8I2
  loc_CF3C3E: AddR8
  loc_CF3C3F: FStFPR8 var_E0
  loc_CF3C42: FLdRfVar var_298
  loc_CF3C45: FLdPr Me
  loc_CF3C48: MemLdRfVar from_stack_1.global_72
  loc_CF3C4B: NewIfNullPr clspersonas
  loc_CF3C4E: from_stack_1 = clspersonas.RecordCount
  loc_CF3C53: ILdRf var_298
  loc_CF3C56: LitI4 1
  loc_CF3C5B: EqI4
  loc_CF3C5C: BranchF loc_CF4448
  loc_CF3C5F: FLdFPR8 var_15C
  loc_CF3C62: CVarR8
  loc_CF3C66: HardType
  loc_CF3C67: LitI4 2
  loc_CF3C6C: FLdFPR8 var_E0
  loc_CF3C6F: FLdFPR8 var_94
  loc_CF3C72: SubR4
  loc_CF3C73: FLdFPR8 var_9C
  loc_CF3C76: SubR4
  loc_CF3C77: FLdFPR8 var_B4
  loc_CF3C7A: SubR4
  loc_CF3C7B: CVarR8
  loc_CF3C7F: FLdRfVar var_220
  loc_CF3C82: ImpAdCallFPR4  = Round(, )
  loc_CF3C87: FLdRfVar var_220
  loc_CF3C8A: LtVarBool
  loc_CF3C8C: FFreeVar var_188 = ""
  loc_CF3C93: BranchF loc_CF3CD7
  loc_CF3C96: FLdFPR8 var_15C
  loc_CF3C99: FStFPR8 var_154
  loc_CF3C9C: LitI4 2
  loc_CF3CA1: FLdFPR8 var_E0
  loc_CF3CA4: FLdFPR8 var_94
  loc_CF3CA7: SubR4
  loc_CF3CA8: FLdFPR8 var_9C
  loc_CF3CAB: SubR4
  loc_CF3CAC: FLdFPR8 var_154
  loc_CF3CAF: SubR4
  loc_CF3CB0: FLdFPR8 var_B4
  loc_CF3CB3: SubR4
  loc_CF3CB4: CVarR8
  loc_CF3CB8: FLdRfVar var_220
  loc_CF3CBB: ImpAdCallFPR4  = Round(, )
  loc_CF3CC0: FLdRfVar var_220
  loc_CF3CC3: CR4Var
  loc_CF3CC4: FStFPR8 var_D8
  loc_CF3CC7: FFreeVar var_188 = ""
  loc_CF3CCE: LitI2_Byte 0
  loc_CF3CD0: CR8I2
  loc_CF3CD1: FStFPR8 var_15C
  loc_CF3CD4: Branch loc_CF3D15
  loc_CF3CD7: LitI4 2
  loc_CF3CDC: FLdFPR8 var_E0
  loc_CF3CDF: FLdFPR8 var_94
  loc_CF3CE2: SubR4
  loc_CF3CE3: FLdFPR8 var_9C
  loc_CF3CE6: SubR4
  loc_CF3CE7: FLdFPR8 var_B4
  loc_CF3CEA: SubR4
  loc_CF3CEB: CVarR8
  loc_CF3CEF: FLdRfVar var_220
  loc_CF3CF2: ImpAdCallFPR4  = Round(, )
  loc_CF3CF7: FLdRfVar var_220
  loc_CF3CFA: CR4Var
  loc_CF3CFB: FStFPR8 var_154
  loc_CF3CFE: FFreeVar var_188 = ""
  loc_CF3D05: FLdFPR8 var_15C
  loc_CF3D08: FLdFPR8 var_154
  loc_CF3D0B: SubR4
  loc_CF3D0C: FStFPR8 var_15C
  loc_CF3D0F: LitI2_Byte 0
  loc_CF3D11: CR8I2
  loc_CF3D12: FStFPR8 var_D8
  loc_CF3D15: FLdRfVar var_298
  loc_CF3D18: FLdPr Me
  loc_CF3D1B: MemLdRfVar from_stack_1.global_84
  loc_CF3D1E: NewIfNullPr clsboleto
  loc_CF3D21: from_stack_1 = clsboleto.RecordCount
  loc_CF3D26: ILdRf var_298
  loc_CF3D29: LitI4 0
  loc_CF3D2E: GtI4
  loc_CF3D2F: BranchF loc_CF42C0
  loc_CF3D32: FLdRfVar var_224
  loc_CF3D35: FLdPr Me
  loc_CF3D38: VCallAd Control_ID_PeriLiquTxt
  loc_CF3D3B: FStAdFunc var_178
  loc_CF3D3E: FLdPr var_178
  loc_CF3D41:  = Me.Text
  loc_CF3D46: FLdRfVar var_288
  loc_CF3D49: FLdPr Me
  loc_CF3D4C: VCallAd Control_ID_CodiTiliTxt
  loc_CF3D4F: FStAdFunc var_210
  loc_CF3D52: FLdPr var_210
  loc_CF3D55:  = Me.Text
  loc_CF3D5A: FLdRfVar var_494
  loc_CF3D5D: FLdRfVar var_2CC
  loc_CF3D60: LitVarStr var_19C, "CodiCome"
  loc_CF3D65: PopAdLdVar
  loc_CF3D66: FLdRfVar var_2A8
  loc_CF3D69: FLdRfVar var_2A4
  loc_CF3D6C: FLdPr Me
  loc_CF3D6F: MemLdRfVar from_stack_1.global_56
  loc_CF3D72: NewIfNullPr clscomercio
  loc_CF3D75: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3D7A: FLdPr var_2A4
  loc_CF3D7D:  = Me.Fields
  loc_CF3D82: FLdPr var_2A8
  loc_CF3D85: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3D8A: FLdPr var_2CC
  loc_CF3D8D:  = Me.Value
  loc_CF3D92: FLdRfVar var_4A4
  loc_CF3D95: FLdRfVar var_2D8
  loc_CF3D98: LitVarStr var_1AC, "CucuPers"
  loc_CF3D9D: PopAdLdVar
  loc_CF3D9E: FLdRfVar var_2D4
  loc_CF3DA1: FLdRfVar var_2D0
  loc_CF3DA4: FLdPr Me
  loc_CF3DA7: MemLdRfVar from_stack_1.global_56
  loc_CF3DAA: NewIfNullPr clscomercio
  loc_CF3DAD: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3DB2: FLdPr var_2D0
  loc_CF3DB5:  = Me.Fields
  loc_CF3DBA: FLdPr var_2D4
  loc_CF3DBD: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3DC2: FLdPr var_2D8
  loc_CF3DC5:  = Me.Value
  loc_CF3DCA: FLdRfVar var_4B4
  loc_CF3DCD: FLdRfVar var_2EC
  loc_CF3DD0: LitVarStr var_1BC, "CodiRuta"
  loc_CF3DD5: PopAdLdVar
  loc_CF3DD6: FLdRfVar var_2E8
  loc_CF3DD9: FLdRfVar var_2E4
  loc_CF3DDC: FLdPr Me
  loc_CF3DDF: MemLdRfVar from_stack_1.global_56
  loc_CF3DE2: NewIfNullPr clscomercio
  loc_CF3DE5: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF3DEA: FLdPr var_2E4
  loc_CF3DED:  = Me.Fields
  loc_CF3DF2: FLdPr var_2E8
  loc_CF3DF5: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3DFA: FLdPr var_2EC
  loc_CF3DFD:  = Me.Value
  loc_CF3E02: FLdRfVar var_4C4
  loc_CF3E05: FLdRfVar var_2F8
  loc_CF3E08: LitVarStr var_1CC, "CodiCalle"
  loc_CF3E0D: PopAdLdVar
  loc_CF3E0E: FLdRfVar var_2F4
  loc_CF3E11: FLdRfVar var_2F0
  loc_CF3E14: FLdPr Me
  loc_CF3E17: MemLdRfVar from_stack_1.global_84
  loc_CF3E1A: NewIfNullPr clsboleto
  loc_CF3E1D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF3E22: FLdPr var_2F0
  loc_CF3E25:  = Me.Fields
  loc_CF3E2A: FLdPr var_2F4
  loc_CF3E2D: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3E32: FLdPr var_2F8
  loc_CF3E35:  = Me.Value
  loc_CF3E3A: FLdRfVar var_304
  loc_CF3E3D: LitVarStr var_1DC, "NumePost"
  loc_CF3E42: PopAdLdVar
  loc_CF3E43: FLdRfVar var_300
  loc_CF3E46: FLdRfVar var_2FC
  loc_CF3E49: FLdPr Me
  loc_CF3E4C: MemLdRfVar from_stack_1.global_84
  loc_CF3E4F: NewIfNullPr clsboleto
  loc_CF3E52: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF3E57: FLdPr var_2FC
  loc_CF3E5A:  = Me.Fields
  loc_CF3E5F: FLdPr var_300
  loc_CF3E62: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3E67: FLdZeroAd var_304
  loc_CF3E6A: CVarAd
  loc_CF3E6E: ImpAdCallI2 IsNumeric()
  loc_CF3E73: FStI2 var_172
  loc_CF3E76: FLdRfVar var_310
  loc_CF3E79: LitVarStr var_1EC, "NumePost"
  loc_CF3E7E: PopAdLdVar
  loc_CF3E7F: FLdRfVar var_30C
  loc_CF3E82: FLdRfVar var_308
  loc_CF3E85: FLdPr Me
  loc_CF3E88: MemLdRfVar from_stack_1.global_84
  loc_CF3E8B: NewIfNullPr clsboleto
  loc_CF3E8E: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF3E93: FLdPr var_308
  loc_CF3E96:  = Me.Fields
  loc_CF3E9B: FLdPr var_30C
  loc_CF3E9E: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3EA3: LitVarI2 var_244, 0
  loc_CF3EA8: FLdZeroAd var_310
  loc_CF3EAB: CVarAd
  loc_CF3EAF: FLdI2 var_172
  loc_CF3EB2: CVarBoolI2 var_1FC
  loc_CF3EB6: FLdRfVar var_254
  loc_CF3EB9: ImpAdCallFPR4  = IIf(, , )
  loc_CF3EBE: FLdRfVar var_4D4
  loc_CF3EC1: FLdRfVar var_31C
  loc_CF3EC4: LitVarStr var_234, "DecaPost"
  loc_CF3EC9: PopAdLdVar
  loc_CF3ECA: FLdRfVar var_318
  loc_CF3ECD: FLdRfVar var_314
  loc_CF3ED0: FLdPr Me
  loc_CF3ED3: MemLdRfVar from_stack_1.global_84
  loc_CF3ED6: NewIfNullPr clsboleto
  loc_CF3ED9: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF3EDE: FLdPr var_314
  loc_CF3EE1:  = Me.Fields
  loc_CF3EE6: FLdPr var_318
  loc_CF3EE9: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3EEE: FLdPr var_31C
  loc_CF3EF1:  = Me.Value
  loc_CF3EF6: FLdRfVar var_4E4
  loc_CF3EF9: FLdRfVar var_328
  loc_CF3EFC: LitVarStr var_274, "CobpPost"
  loc_CF3F01: PopAdLdVar
  loc_CF3F02: FLdRfVar var_324
  loc_CF3F05: FLdRfVar var_320
  loc_CF3F08: FLdPr Me
  loc_CF3F0B: MemLdRfVar from_stack_1.global_84
  loc_CF3F0E: NewIfNullPr clsboleto
  loc_CF3F11: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF3F16: FLdPr var_320
  loc_CF3F19:  = Me.Fields
  loc_CF3F1E: FLdPr var_324
  loc_CF3F21: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3F26: FLdPr var_328
  loc_CF3F29:  = Me.Value
  loc_CF3F2E: FLdRfVar var_4F4
  loc_CF3F31: FLdRfVar var_344
  loc_CF3F34: LitVarStr var_340, "DebaPost"
  loc_CF3F39: PopAdLdVar
  loc_CF3F3A: FLdRfVar var_330
  loc_CF3F3D: FLdRfVar var_32C
  loc_CF3F40: FLdPr Me
  loc_CF3F43: MemLdRfVar from_stack_1.global_84
  loc_CF3F46: NewIfNullPr clsboleto
  loc_CF3F49: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF3F4E: FLdPr var_32C
  loc_CF3F51:  = Me.Fields
  loc_CF3F56: FLdPr var_330
  loc_CF3F59: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3F5E: FLdPr var_344
  loc_CF3F61:  = Me.Value
  loc_CF3F66: FLdRfVar var_504
  loc_CF3F69: FLdRfVar var_360
  loc_CF3F6C: LitVarStr var_35C, "ManzPost"
  loc_CF3F71: PopAdLdVar
  loc_CF3F72: FLdRfVar var_34C
  loc_CF3F75: FLdRfVar var_348
  loc_CF3F78: FLdPr Me
  loc_CF3F7B: MemLdRfVar from_stack_1.global_84
  loc_CF3F7E: NewIfNullPr clsboleto
  loc_CF3F81: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF3F86: FLdPr var_348
  loc_CF3F89:  = Me.Fields
  loc_CF3F8E: FLdPr var_34C
  loc_CF3F91: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3F96: FLdPr var_360
  loc_CF3F99:  = Me.Value
  loc_CF3F9E: FLdRfVar var_514
  loc_CF3FA1: FLdRfVar var_37C
  loc_CF3FA4: LitVarStr var_378, "CasaPost"
  loc_CF3FA9: PopAdLdVar
  loc_CF3FAA: FLdRfVar var_368
  loc_CF3FAD: FLdRfVar var_364
  loc_CF3FB0: FLdPr Me
  loc_CF3FB3: MemLdRfVar from_stack_1.global_84
  loc_CF3FB6: NewIfNullPr clsboleto
  loc_CF3FB9: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF3FBE: FLdPr var_364
  loc_CF3FC1:  = Me.Fields
  loc_CF3FC6: FLdPr var_368
  loc_CF3FC9: from_stack_2 = Me.Item(from_stack_1)
  loc_CF3FCE: FLdPr var_37C
  loc_CF3FD1:  = Me.Value
  loc_CF3FD6: FLdRfVar var_264
  loc_CF3FD9: FLdRfVar var_398
  loc_CF3FDC: LitVarStr var_394, "UbicPost"
  loc_CF3FE1: PopAdLdVar
  loc_CF3FE2: FLdRfVar var_384
  loc_CF3FE5: FLdRfVar var_380
  loc_CF3FE8: FLdPr Me
  loc_CF3FEB: MemLdRfVar from_stack_1.global_84
  loc_CF3FEE: NewIfNullPr clsboleto
  loc_CF3FF1: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF3FF6: FLdPr var_380
  loc_CF3FF9:  = Me.Fields
  loc_CF3FFE: FLdPr var_384
  loc_CF4001: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4006: FLdPr var_398
  loc_CF4009:  = Me.Value
  loc_CF400E: FLdRfVar var_3C4
  loc_CF4011: LitVarStr var_3C0, "UbicPost"
  loc_CF4016: PopAdLdVar
  loc_CF4017: FLdRfVar var_3B0
  loc_CF401A: FLdRfVar var_3AC
  loc_CF401D: FLdPr Me
  loc_CF4020: MemLdRfVar from_stack_1.global_84
  loc_CF4023: NewIfNullPr clsboleto
  loc_CF4026: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF402B: FLdPr var_3AC
  loc_CF402E:  = Me.Fields
  loc_CF4033: FLdPr var_3B0
  loc_CF4036: from_stack_2 = Me.Item(from_stack_1)
  loc_CF403B: FLdRfVar var_3F0
  loc_CF403E: FLdRfVar var_3E0
  loc_CF4041: LitVarStr var_3DC, "Ubicacion"
  loc_CF4046: PopAdLdVar
  loc_CF4047: FLdRfVar var_3CC
  loc_CF404A: FLdRfVar var_3C8
  loc_CF404D: FLdPr Me
  loc_CF4050: MemLdRfVar from_stack_1.global_84
  loc_CF4053: NewIfNullPr clsboleto
  loc_CF4056: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF405B: FLdPr var_3C8
  loc_CF405E:  = Me.Fields
  loc_CF4063: FLdPr var_3CC
  loc_CF4066: from_stack_2 = Me.Item(from_stack_1)
  loc_CF406B: FLdPr var_3E0
  loc_CF406E:  = Me.Value
  loc_CF4073: LitI4 0
  loc_CF4078: LitI4 -1
  loc_CF407D: LitI4 1
  loc_CF4082: LitStr " "
  loc_CF4085: LitStr "'"
  loc_CF4088: FLdRfVar var_3F0
  loc_CF408B: CStrVarTmp
  loc_CF408C: FStStrNoPop var_28C
  loc_CF408F: ImpAdCallI2 Replace(, , , , , )
  loc_CF4094: CVarStr var_420
  loc_CF4097: FLdZeroAd var_3C4
  loc_CF409A: CVarAd
  loc_CF409E: FLdRfVar var_264
  loc_CF40A1: LitVarStr var_3A8, vbNullString
  loc_CF40A6: HardType
  loc_CF40A7: NeVar var_284
  loc_CF40AB: FStVar var_400
  loc_CF40AF: FLdRfVar var_400
  loc_CF40B2: FLdRfVar var_430
  loc_CF40B5: ImpAdCallFPR4  = IIf(, , )
  loc_CF40BA: FLdRfVar var_524
  loc_CF40BD: FLdRfVar var_44C
  loc_CF40C0: LitVarStr var_448, "ColpPost"
  loc_CF40C5: PopAdLdVar
  loc_CF40C6: FLdRfVar var_438
  loc_CF40C9: FLdRfVar var_434
  loc_CF40CC: FLdPr Me
  loc_CF40CF: MemLdRfVar from_stack_1.global_84
  loc_CF40D2: NewIfNullPr clsboleto
  loc_CF40D5: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF40DA: FLdPr var_434
  loc_CF40DD:  = Me.Fields
  loc_CF40E2: FLdPr var_438
  loc_CF40E5: from_stack_2 = Me.Item(from_stack_1)
  loc_CF40EA: FLdPr var_44C
  loc_CF40ED:  = Me.Value
  loc_CF40F2: FLdRfVar var_534
  loc_CF40F5: FLdRfVar var_468
  loc_CF40F8: LitVarStr var_464, "DeloPost"
  loc_CF40FD: PopAdLdVar
  loc_CF40FE: FLdRfVar var_454
  loc_CF4101: FLdRfVar var_450
  loc_CF4104: FLdPr Me
  loc_CF4107: MemLdRfVar from_stack_1.global_84
  loc_CF410A: NewIfNullPr clsboleto
  loc_CF410D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4112: FLdPr var_450
  loc_CF4115:  = Me.Fields
  loc_CF411A: FLdPr var_454
  loc_CF411D: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4122: FLdPr var_468
  loc_CF4125:  = Me.Value
  loc_CF412A: FLdRfVar var_544
  loc_CF412D: FLdRfVar var_484
  loc_CF4130: LitVarStr var_480, "CopoPost"
  loc_CF4135: PopAdLdVar
  loc_CF4136: FLdRfVar var_470
  loc_CF4139: FLdRfVar var_46C
  loc_CF413C: FLdPr Me
  loc_CF413F: MemLdRfVar from_stack_1.global_84
  loc_CF4142: NewIfNullPr clsboleto
  loc_CF4145: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF414A: FLdPr var_46C
  loc_CF414D:  = Me.Fields
  loc_CF4152: FLdPr var_470
  loc_CF4155: from_stack_2 = Me.Item(from_stack_1)
  loc_CF415A: FLdPr var_484
  loc_CF415D:  = Me.Value
  loc_CF4162: FLdR8 var_170
  loc_CF4165: FLdR8 var_118
  loc_CF4168: FLdI2 var_BE
  loc_CF416B: LitI2_Byte &HFF
  loc_CF416D: FLdR8 var_F8
  loc_CF4170: FLdR8 var_108
  loc_CF4173: FLdRfVar var_544
  loc_CF4176: CStrVarTmp
  loc_CF4177: FStStrNoPop var_548
  loc_CF417A: FLdRfVar var_534
  loc_CF417D: CStrVarTmp
  loc_CF417E: FStStrNoPop var_2C8
  loc_CF4181: FLdRfVar var_524
  loc_CF4184: CI2Var
  loc_CF4185: FLdRfVar var_430
  loc_CF4188: CStrVarVal var_2C4
  loc_CF418C: FLdRfVar var_514
  loc_CF418F: CStrVarTmp
  loc_CF4190: FStStrNoPop var_2C0
  loc_CF4193: FLdRfVar var_504
  loc_CF4196: CStrVarTmp
  loc_CF4197: FStStrNoPop var_2BC
  loc_CF419A: FLdRfVar var_4F4
  loc_CF419D: CStrVarTmp
  loc_CF419E: FStStrNoPop var_2B8
  loc_CF41A1: FLdRfVar var_4E4
  loc_CF41A4: CI2Var
  loc_CF41A5: FLdRfVar var_4D4
  loc_CF41A8: CStrVarTmp
  loc_CF41A9: FStStrNoPop var_294
  loc_CF41AC: FLdRfVar var_254
  loc_CF41AF: CI4Var
  loc_CF41B1: FLdRfVar var_4C4
  loc_CF41B4: CI4Var
  loc_CF41B6: FLdRfVar var_4B4
  loc_CF41B9: CI2Var
  loc_CF41BA: FLdRfVar var_4A4
  loc_CF41BD: CStrVarTmp
  loc_CF41BE: FStStrNoPop var_290
  loc_CF41C1: FLdR8 var_D8
  loc_CF41C4: LitI2_Byte 0
  loc_CF41C6: CR8I2
  loc_CF41C7: PopFPR8
  loc_CF41C8: FLdR8 var_9C
  loc_CF41CB: FLdR8 var_94
  loc_CF41CE: FLdR8 var_154
  loc_CF41D1: FLdR8 var_E0
  loc_CF41D4: FLdR8 var_A4
  loc_CF41D7: ILdRf var_14C
  loc_CF41DA: LitStr "Aforo"
  loc_CF41DD: LitI2_Byte 1
  loc_CF41DF: CUI1I2
  loc_CF41E1: ILdRf var_D0
  loc_CF41E4: FLdRfVar var_494
  loc_CF41E7: CI4Var
  loc_CF41E9: FLdI2 var_8A
  loc_CF41EC: ILdRf var_288
  loc_CF41EF: CUI1Str
  loc_CF41F1: FLdPr Me
  loc_CF41F4: MemLdI2 global_92
  loc_CF41F7: CUI1I2
  loc_CF41F9: ILdRf var_224
  loc_CF41FC: CI2Str
  loc_CF41FE: FLdPr Me
  loc_CF4201: MemLdRfVar from_stack_1.global_68
  loc_CF4204: NewIfNullPr clsliquante
  loc_CF4207: Call clsliquante.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CF420C: FFreeStr var_28C = "": var_224 = "": var_288 = "": var_290 = "": var_294 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = ""
  loc_CF4225: FFreeAd var_3CC = "": var_3E0 = "": var_434 = "": var_438 = "": var_450 = "": var_454 = "": var_46C = "": var_470 = "": var_2CC = "": var_2D8 = "": var_2EC = "": var_2F8 = "": var_31C = "": var_328 = "": var_344 = "": var_360 = "": var_37C = "": var_44C = "": var_468 = "": var_484 = "": var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2E4 = "": var_2E8 = "": var_2F0 = "": var_2F4 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_348 = "": var_34C = "": var_364 = "": var_368 = "": var_380 = "": var_384 = "": var_398 = "": var_3AC = "": var_3B0 = ""
  loc_CF428C: FFreeVar var_188 = "": var_1FC = "": var_220 = "": var_244 = "": var_264 = "": var_3F0 = "": var_400 = "": var_410 = "": var_420 = "": var_494 = "": var_4A4 = "": var_4B4 = "": var_4C4 = "": var_254 = "": var_4D4 = "": var_4E4 = "": var_4F4 = "": var_504 = "": var_514 = "": var_430 = "": var_524 = "": var_534 = ""
  loc_CF42BD: Branch loc_CF4445
  loc_CF42C0: FLdRfVar var_224
  loc_CF42C3: FLdPr Me
  loc_CF42C6: VCallAd Control_ID_PeriLiquTxt
  loc_CF42C9: FStAdFunc var_178
  loc_CF42CC: FLdPr var_178
  loc_CF42CF:  = Me.Text
  loc_CF42D4: FLdRfVar var_288
  loc_CF42D7: FLdPr Me
  loc_CF42DA: VCallAd Control_ID_CodiTiliTxt
  loc_CF42DD: FStAdFunc var_210
  loc_CF42E0: FLdPr var_210
  loc_CF42E3:  = Me.Text
  loc_CF42E8: FLdRfVar var_188
  loc_CF42EB: FLdRfVar var_2CC
  loc_CF42EE: LitVarStr var_19C, "CodiCome"
  loc_CF42F3: PopAdLdVar
  loc_CF42F4: FLdRfVar var_2A8
  loc_CF42F7: FLdRfVar var_2A4
  loc_CF42FA: FLdPr Me
  loc_CF42FD: MemLdRfVar from_stack_1.global_56
  loc_CF4300: NewIfNullPr clscomercio
  loc_CF4303: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4308: FLdPr var_2A4
  loc_CF430B:  = Me.Fields
  loc_CF4310: FLdPr var_2A8
  loc_CF4313: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4318: FLdPr var_2CC
  loc_CF431B:  = Me.Value
  loc_CF4320: FLdRfVar var_220
  loc_CF4323: FLdRfVar var_2D8
  loc_CF4326: LitVarStr var_1AC, "CucuPers"
  loc_CF432B: PopAdLdVar
  loc_CF432C: FLdRfVar var_2D4
  loc_CF432F: FLdRfVar var_2D0
  loc_CF4332: FLdPr Me
  loc_CF4335: MemLdRfVar from_stack_1.global_56
  loc_CF4338: NewIfNullPr clscomercio
  loc_CF433B: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4340: FLdPr var_2D0
  loc_CF4343:  = Me.Fields
  loc_CF4348: FLdPr var_2D4
  loc_CF434B: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4350: FLdPr var_2D8
  loc_CF4353:  = Me.Value
  loc_CF4358: FLdRfVar var_244
  loc_CF435B: FLdRfVar var_2EC
  loc_CF435E: LitVarStr var_1BC, "CodiRuta"
  loc_CF4363: PopAdLdVar
  loc_CF4364: FLdRfVar var_2E8
  loc_CF4367: FLdRfVar var_2E4
  loc_CF436A: FLdPr Me
  loc_CF436D: MemLdRfVar from_stack_1.global_56
  loc_CF4370: NewIfNullPr clscomercio
  loc_CF4373: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4378: FLdPr var_2E4
  loc_CF437B:  = Me.Fields
  loc_CF4380: FLdPr var_2E8
  loc_CF4383: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4388: FLdPr var_2EC
  loc_CF438B:  = Me.Value
  loc_CF4390: FLdR8 var_170
  loc_CF4393: FLdR8 var_118
  loc_CF4396: FLdI2 var_BE
  loc_CF4399: LitI2_Byte &HFF
  loc_CF439B: FLdR8 var_F8
  loc_CF439E: FLdR8 var_108
  loc_CF43A1: LitStr vbNullString
  loc_CF43A4: LitStr vbNullString
  loc_CF43A7: LitI2_Byte 0
  loc_CF43A9: LitStr vbNullString
  loc_CF43AC: LitStr vbNullString
  loc_CF43AF: LitStr vbNullString
  loc_CF43B2: LitStr vbNullString
  loc_CF43B5: LitI2_Byte 0
  loc_CF43B7: LitStr vbNullString
  loc_CF43BA: LitI4 0
  loc_CF43BF: LitI4 0
  loc_CF43C4: FLdRfVar var_244
  loc_CF43C7: CI2Var
  loc_CF43C8: FLdRfVar var_220
  loc_CF43CB: CStrVarTmp
  loc_CF43CC: FStStrNoPop var_28C
  loc_CF43CF: FLdR8 var_D8
  loc_CF43D2: LitI2_Byte 0
  loc_CF43D4: CR8I2
  loc_CF43D5: PopFPR8
  loc_CF43D6: FLdR8 var_9C
  loc_CF43D9: FLdR8 var_94
  loc_CF43DC: FLdR8 var_154
  loc_CF43DF: FLdR8 var_E0
  loc_CF43E2: FLdR8 var_A4
  loc_CF43E5: ILdRf var_14C
  loc_CF43E8: LitStr "Aforo"
  loc_CF43EB: LitI2_Byte 1
  loc_CF43ED: CUI1I2
  loc_CF43EF: ILdRf var_D0
  loc_CF43F2: FLdRfVar var_188
  loc_CF43F5: CI4Var
  loc_CF43F7: FLdI2 var_8A
  loc_CF43FA: ILdRf var_288
  loc_CF43FD: CUI1Str
  loc_CF43FF: FLdPr Me
  loc_CF4402: MemLdI2 global_92
  loc_CF4405: CUI1I2
  loc_CF4407: ILdRf var_224
  loc_CF440A: CI2Str
  loc_CF440C: FLdPr Me
  loc_CF440F: MemLdRfVar from_stack_1.global_68
  loc_CF4412: NewIfNullPr clsliquante
  loc_CF4415: Call clsliquante.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CF441A: FFreeStr var_224 = "": var_288 = ""
  loc_CF4423: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2E4 = "": var_2E8 = "": var_2CC = "": var_2D8 = ""
  loc_CF443C: FFreeVar var_188 = "": var_220 = ""
  loc_CF4445: Branch loc_CF4548
  loc_CF4448: FLdRfVar var_224
  loc_CF444B: FLdPr Me
  loc_CF444E: VCallAd Control_ID_PeriLiquTxt
  loc_CF4451: FStAdFunc var_178
  loc_CF4454: FLdPr var_178
  loc_CF4457:  = Me.Text
  loc_CF445C: FLdRfVar var_288
  loc_CF445F: FLdPr Me
  loc_CF4462: VCallAd Control_ID_CodiTiliTxt
  loc_CF4465: FStAdFunc var_210
  loc_CF4468: FLdPr var_210
  loc_CF446B:  = Me.Text
  loc_CF4470: FLdRfVar var_254
  loc_CF4473: FLdRfVar var_2CC
  loc_CF4476: LitVarStr var_19C, "CodiCome"
  loc_CF447B: PopAdLdVar
  loc_CF447C: FLdRfVar var_2A8
  loc_CF447F: FLdRfVar var_2A4
  loc_CF4482: FLdPr Me
  loc_CF4485: MemLdRfVar from_stack_1.global_56
  loc_CF4488: NewIfNullPr clscomercio
  loc_CF448B: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4490: FLdPr var_2A4
  loc_CF4493:  = Me.Fields
  loc_CF4498: FLdPr var_2A8
  loc_CF449B: from_stack_2 = Me.Item(from_stack_1)
  loc_CF44A0: FLdPr var_2CC
  loc_CF44A3:  = Me.Value
  loc_CF44A8: LitVarStr var_1BC, "Cuenta: "
  loc_CF44AD: FLdRfVar var_188
  loc_CF44B0: FLdRfVar var_2D8
  loc_CF44B3: LitVarStr var_1AC, "CodiCome"
  loc_CF44B8: PopAdLdVar
  loc_CF44B9: FLdRfVar var_2D4
  loc_CF44BC: FLdRfVar var_2D0
  loc_CF44BF: FLdPr Me
  loc_CF44C2: MemLdRfVar from_stack_1.global_56
  loc_CF44C5: NewIfNullPr clscomercio
  loc_CF44C8: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF44CD: FLdPr var_2D0
  loc_CF44D0:  = Me.Fields
  loc_CF44D5: FLdPr var_2D4
  loc_CF44D8: from_stack_2 = Me.Item(from_stack_1)
  loc_CF44DD: FLdPr var_2D8
  loc_CF44E0:  = Me.Value
  loc_CF44E5: FLdRfVar var_188
  loc_CF44E8: ConcatVar var_220
  loc_CF44EC: LitVarStr var_1CC, " No se encontro el titular"
  loc_CF44F1: ConcatVar var_244
  loc_CF44F5: CStrVarVal var_28C
  loc_CF44F9: FLdRfVar var_254
  loc_CF44FC: CI4Var
  loc_CF44FE: FLdI2 var_8A
  loc_CF4501: ILdRf var_288
  loc_CF4504: CUI1Str
  loc_CF4506: FLdPr Me
  loc_CF4509: MemLdI2 global_92
  loc_CF450C: CUI1I2
  loc_CF450E: ILdRf var_224
  loc_CF4511: CI2Str
  loc_CF4513: FLdPr Me
  loc_CF4516: MemLdRfVar from_stack_1.global_68
  loc_CF4519: NewIfNullPr clsliquante
  loc_CF451C: Call clsliquante.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CF4521: FFreeStr var_224 = "": var_288 = ""
  loc_CF452A: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2D8 = ""
  loc_CF453D: FFreeVar var_188 = "": var_220 = "": var_254 = ""
  loc_CF4548: FLdFPR8 var_D8
  loc_CF454B: LitI2_Byte 0
  loc_CF454D: CR8I2
  loc_CF454E: GtR4
  loc_CF454F: BranchF loc_CF4D5E
  loc_CF4552: FLdFPR8 var_F0
  loc_CF4555: LitI2_Byte 0
  loc_CF4557: CR8I2
  loc_CF4558: GtR4
  loc_CF4559: BranchF loc_CF4D5E
  loc_CF455C: FLdRfVar var_298
  loc_CF455F: FLdPr Me
  loc_CF4562: MemLdRfVar from_stack_1.global_72
  loc_CF4565: NewIfNullPr clspersonas
  loc_CF4568: from_stack_1 = clspersonas.RecordCount
  loc_CF456D: ILdRf var_298
  loc_CF4570: LitI4 1
  loc_CF4575: EqI4
  loc_CF4576: BranchF loc_CF4D5E
  loc_CF4579: FLdRfVar var_298
  loc_CF457C: FLdPr Me
  loc_CF457F: MemLdRfVar from_stack_1.global_84
  loc_CF4582: NewIfNullPr clsboleto
  loc_CF4585: from_stack_1 = clsboleto.RecordCount
  loc_CF458A: ILdRf var_298
  loc_CF458D: LitI4 0
  loc_CF4592: GtI4
  loc_CF4593: BranchF loc_CF4B28
  loc_CF4596: FLdRfVar var_224
  loc_CF4599: FLdPr Me
  loc_CF459C: VCallAd Control_ID_PeriLiquTxt
  loc_CF459F: FStAdFunc var_178
  loc_CF45A2: FLdPr var_178
  loc_CF45A5:  = Me.Text
  loc_CF45AA: FLdRfVar var_288
  loc_CF45AD: FLdPr Me
  loc_CF45B0: VCallAd Control_ID_CodiTiliTxt
  loc_CF45B3: FStAdFunc var_210
  loc_CF45B6: FLdPr var_210
  loc_CF45B9:  = Me.Text
  loc_CF45BE: FLdRfVar var_494
  loc_CF45C1: FLdRfVar var_2CC
  loc_CF45C4: LitVarStr var_19C, "CodiCome"
  loc_CF45C9: PopAdLdVar
  loc_CF45CA: FLdRfVar var_2A8
  loc_CF45CD: FLdRfVar var_2A4
  loc_CF45D0: FLdPr Me
  loc_CF45D3: MemLdRfVar from_stack_1.global_56
  loc_CF45D6: NewIfNullPr clscomercio
  loc_CF45D9: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF45DE: FLdPr var_2A4
  loc_CF45E1:  = Me.Fields
  loc_CF45E6: FLdPr var_2A8
  loc_CF45E9: from_stack_2 = Me.Item(from_stack_1)
  loc_CF45EE: FLdPr var_2CC
  loc_CF45F1:  = Me.Value
  loc_CF45F6: FLdRfVar var_4A4
  loc_CF45F9: FLdRfVar var_2D8
  loc_CF45FC: LitVarStr var_1AC, "CucuPers"
  loc_CF4601: PopAdLdVar
  loc_CF4602: FLdRfVar var_2D4
  loc_CF4605: FLdRfVar var_2D0
  loc_CF4608: FLdPr Me
  loc_CF460B: MemLdRfVar from_stack_1.global_56
  loc_CF460E: NewIfNullPr clscomercio
  loc_CF4611: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4616: FLdPr var_2D0
  loc_CF4619:  = Me.Fields
  loc_CF461E: FLdPr var_2D4
  loc_CF4621: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4626: FLdPr var_2D8
  loc_CF4629:  = Me.Value
  loc_CF462E: FLdRfVar var_4B4
  loc_CF4631: FLdRfVar var_2EC
  loc_CF4634: LitVarStr var_1BC, "CodiRuta"
  loc_CF4639: PopAdLdVar
  loc_CF463A: FLdRfVar var_2E8
  loc_CF463D: FLdRfVar var_2E4
  loc_CF4640: FLdPr Me
  loc_CF4643: MemLdRfVar from_stack_1.global_56
  loc_CF4646: NewIfNullPr clscomercio
  loc_CF4649: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF464E: FLdPr var_2E4
  loc_CF4651:  = Me.Fields
  loc_CF4656: FLdPr var_2E8
  loc_CF4659: from_stack_2 = Me.Item(from_stack_1)
  loc_CF465E: FLdPr var_2EC
  loc_CF4661:  = Me.Value
  loc_CF4666: FLdRfVar var_4C4
  loc_CF4669: FLdRfVar var_2F8
  loc_CF466C: LitVarStr var_1CC, "CodiCalle"
  loc_CF4671: PopAdLdVar
  loc_CF4672: FLdRfVar var_2F4
  loc_CF4675: FLdRfVar var_2F0
  loc_CF4678: FLdPr Me
  loc_CF467B: MemLdRfVar from_stack_1.global_84
  loc_CF467E: NewIfNullPr clsboleto
  loc_CF4681: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4686: FLdPr var_2F0
  loc_CF4689:  = Me.Fields
  loc_CF468E: FLdPr var_2F4
  loc_CF4691: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4696: FLdPr var_2F8
  loc_CF4699:  = Me.Value
  loc_CF469E: FLdRfVar var_304
  loc_CF46A1: LitVarStr var_1DC, "NumePost"
  loc_CF46A6: PopAdLdVar
  loc_CF46A7: FLdRfVar var_300
  loc_CF46AA: FLdRfVar var_2FC
  loc_CF46AD: FLdPr Me
  loc_CF46B0: MemLdRfVar from_stack_1.global_84
  loc_CF46B3: NewIfNullPr clsboleto
  loc_CF46B6: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF46BB: FLdPr var_2FC
  loc_CF46BE:  = Me.Fields
  loc_CF46C3: FLdPr var_300
  loc_CF46C6: from_stack_2 = Me.Item(from_stack_1)
  loc_CF46CB: FLdZeroAd var_304
  loc_CF46CE: CVarAd
  loc_CF46D2: ImpAdCallI2 IsNumeric()
  loc_CF46D7: FStI2 var_172
  loc_CF46DA: FLdRfVar var_310
  loc_CF46DD: LitVarStr var_1EC, "NumePost"
  loc_CF46E2: PopAdLdVar
  loc_CF46E3: FLdRfVar var_30C
  loc_CF46E6: FLdRfVar var_308
  loc_CF46E9: FLdPr Me
  loc_CF46EC: MemLdRfVar from_stack_1.global_84
  loc_CF46EF: NewIfNullPr clsboleto
  loc_CF46F2: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF46F7: FLdPr var_308
  loc_CF46FA:  = Me.Fields
  loc_CF46FF: FLdPr var_30C
  loc_CF4702: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4707: LitVarI2 var_244, 0
  loc_CF470C: FLdZeroAd var_310
  loc_CF470F: CVarAd
  loc_CF4713: FLdI2 var_172
  loc_CF4716: CVarBoolI2 var_1FC
  loc_CF471A: FLdRfVar var_254
  loc_CF471D: ImpAdCallFPR4  = IIf(, , )
  loc_CF4722: FLdRfVar var_4D4
  loc_CF4725: FLdRfVar var_31C
  loc_CF4728: LitVarStr var_234, "DecaPost"
  loc_CF472D: PopAdLdVar
  loc_CF472E: FLdRfVar var_318
  loc_CF4731: FLdRfVar var_314
  loc_CF4734: FLdPr Me
  loc_CF4737: MemLdRfVar from_stack_1.global_84
  loc_CF473A: NewIfNullPr clsboleto
  loc_CF473D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4742: FLdPr var_314
  loc_CF4745:  = Me.Fields
  loc_CF474A: FLdPr var_318
  loc_CF474D: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4752: FLdPr var_31C
  loc_CF4755:  = Me.Value
  loc_CF475A: FLdRfVar var_4E4
  loc_CF475D: FLdRfVar var_328
  loc_CF4760: LitVarStr var_274, "CobpPost"
  loc_CF4765: PopAdLdVar
  loc_CF4766: FLdRfVar var_324
  loc_CF4769: FLdRfVar var_320
  loc_CF476C: FLdPr Me
  loc_CF476F: MemLdRfVar from_stack_1.global_84
  loc_CF4772: NewIfNullPr clsboleto
  loc_CF4775: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF477A: FLdPr var_320
  loc_CF477D:  = Me.Fields
  loc_CF4782: FLdPr var_324
  loc_CF4785: from_stack_2 = Me.Item(from_stack_1)
  loc_CF478A: FLdPr var_328
  loc_CF478D:  = Me.Value
  loc_CF4792: FLdRfVar var_4F4
  loc_CF4795: FLdRfVar var_344
  loc_CF4798: LitVarStr var_340, "DebaPost"
  loc_CF479D: PopAdLdVar
  loc_CF479E: FLdRfVar var_330
  loc_CF47A1: FLdRfVar var_32C
  loc_CF47A4: FLdPr Me
  loc_CF47A7: MemLdRfVar from_stack_1.global_84
  loc_CF47AA: NewIfNullPr clsboleto
  loc_CF47AD: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF47B2: FLdPr var_32C
  loc_CF47B5:  = Me.Fields
  loc_CF47BA: FLdPr var_330
  loc_CF47BD: from_stack_2 = Me.Item(from_stack_1)
  loc_CF47C2: FLdPr var_344
  loc_CF47C5:  = Me.Value
  loc_CF47CA: FLdRfVar var_504
  loc_CF47CD: FLdRfVar var_360
  loc_CF47D0: LitVarStr var_35C, "ManzPost"
  loc_CF47D5: PopAdLdVar
  loc_CF47D6: FLdRfVar var_34C
  loc_CF47D9: FLdRfVar var_348
  loc_CF47DC: FLdPr Me
  loc_CF47DF: MemLdRfVar from_stack_1.global_84
  loc_CF47E2: NewIfNullPr clsboleto
  loc_CF47E5: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF47EA: FLdPr var_348
  loc_CF47ED:  = Me.Fields
  loc_CF47F2: FLdPr var_34C
  loc_CF47F5: from_stack_2 = Me.Item(from_stack_1)
  loc_CF47FA: FLdPr var_360
  loc_CF47FD:  = Me.Value
  loc_CF4802: FLdRfVar var_514
  loc_CF4805: FLdRfVar var_37C
  loc_CF4808: LitVarStr var_378, "CasaPost"
  loc_CF480D: PopAdLdVar
  loc_CF480E: FLdRfVar var_368
  loc_CF4811: FLdRfVar var_364
  loc_CF4814: FLdPr Me
  loc_CF4817: MemLdRfVar from_stack_1.global_84
  loc_CF481A: NewIfNullPr clsboleto
  loc_CF481D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4822: FLdPr var_364
  loc_CF4825:  = Me.Fields
  loc_CF482A: FLdPr var_368
  loc_CF482D: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4832: FLdPr var_37C
  loc_CF4835:  = Me.Value
  loc_CF483A: FLdRfVar var_264
  loc_CF483D: FLdRfVar var_398
  loc_CF4840: LitVarStr var_394, "UbicPost"
  loc_CF4845: PopAdLdVar
  loc_CF4846: FLdRfVar var_384
  loc_CF4849: FLdRfVar var_380
  loc_CF484C: FLdPr Me
  loc_CF484F: MemLdRfVar from_stack_1.global_84
  loc_CF4852: NewIfNullPr clsboleto
  loc_CF4855: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF485A: FLdPr var_380
  loc_CF485D:  = Me.Fields
  loc_CF4862: FLdPr var_384
  loc_CF4865: from_stack_2 = Me.Item(from_stack_1)
  loc_CF486A: FLdPr var_398
  loc_CF486D:  = Me.Value
  loc_CF4872: FLdRfVar var_3C4
  loc_CF4875: LitVarStr var_3C0, "UbicPost"
  loc_CF487A: PopAdLdVar
  loc_CF487B: FLdRfVar var_3B0
  loc_CF487E: FLdRfVar var_3AC
  loc_CF4881: FLdPr Me
  loc_CF4884: MemLdRfVar from_stack_1.global_84
  loc_CF4887: NewIfNullPr clsboleto
  loc_CF488A: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF488F: FLdPr var_3AC
  loc_CF4892:  = Me.Fields
  loc_CF4897: FLdPr var_3B0
  loc_CF489A: from_stack_2 = Me.Item(from_stack_1)
  loc_CF489F: FLdRfVar var_3F0
  loc_CF48A2: FLdRfVar var_3E0
  loc_CF48A5: LitVarStr var_3DC, "Ubicacion"
  loc_CF48AA: PopAdLdVar
  loc_CF48AB: FLdRfVar var_3CC
  loc_CF48AE: FLdRfVar var_3C8
  loc_CF48B1: FLdPr Me
  loc_CF48B4: MemLdRfVar from_stack_1.global_84
  loc_CF48B7: NewIfNullPr clsboleto
  loc_CF48BA: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF48BF: FLdPr var_3C8
  loc_CF48C2:  = Me.Fields
  loc_CF48C7: FLdPr var_3CC
  loc_CF48CA: from_stack_2 = Me.Item(from_stack_1)
  loc_CF48CF: FLdPr var_3E0
  loc_CF48D2:  = Me.Value
  loc_CF48D7: LitI4 0
  loc_CF48DC: LitI4 -1
  loc_CF48E1: LitI4 1
  loc_CF48E6: LitStr " "
  loc_CF48E9: LitStr "'"
  loc_CF48EC: FLdRfVar var_3F0
  loc_CF48EF: CStrVarTmp
  loc_CF48F0: FStStrNoPop var_28C
  loc_CF48F3: ImpAdCallI2 Replace(, , , , , )
  loc_CF48F8: CVarStr var_420
  loc_CF48FB: FLdZeroAd var_3C4
  loc_CF48FE: CVarAd
  loc_CF4902: FLdRfVar var_264
  loc_CF4905: LitVarStr var_3A8, vbNullString
  loc_CF490A: HardType
  loc_CF490B: NeVar var_284
  loc_CF490F: FStVar var_400
  loc_CF4913: FLdRfVar var_400
  loc_CF4916: FLdRfVar var_430
  loc_CF4919: ImpAdCallFPR4  = IIf(, , )
  loc_CF491E: FLdRfVar var_524
  loc_CF4921: FLdRfVar var_44C
  loc_CF4924: LitVarStr var_448, "ColpPost"
  loc_CF4929: PopAdLdVar
  loc_CF492A: FLdRfVar var_438
  loc_CF492D: FLdRfVar var_434
  loc_CF4930: FLdPr Me
  loc_CF4933: MemLdRfVar from_stack_1.global_84
  loc_CF4936: NewIfNullPr clsboleto
  loc_CF4939: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF493E: FLdPr var_434
  loc_CF4941:  = Me.Fields
  loc_CF4946: FLdPr var_438
  loc_CF4949: from_stack_2 = Me.Item(from_stack_1)
  loc_CF494E: FLdPr var_44C
  loc_CF4951:  = Me.Value
  loc_CF4956: FLdRfVar var_534
  loc_CF4959: FLdRfVar var_468
  loc_CF495C: LitVarStr var_464, "DeloPost"
  loc_CF4961: PopAdLdVar
  loc_CF4962: FLdRfVar var_454
  loc_CF4965: FLdRfVar var_450
  loc_CF4968: FLdPr Me
  loc_CF496B: MemLdRfVar from_stack_1.global_84
  loc_CF496E: NewIfNullPr clsboleto
  loc_CF4971: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4976: FLdPr var_450
  loc_CF4979:  = Me.Fields
  loc_CF497E: FLdPr var_454
  loc_CF4981: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4986: FLdPr var_468
  loc_CF4989:  = Me.Value
  loc_CF498E: FLdRfVar var_544
  loc_CF4991: FLdRfVar var_484
  loc_CF4994: LitVarStr var_480, "CopoPost"
  loc_CF4999: PopAdLdVar
  loc_CF499A: FLdRfVar var_470
  loc_CF499D: FLdRfVar var_46C
  loc_CF49A0: FLdPr Me
  loc_CF49A3: MemLdRfVar from_stack_1.global_84
  loc_CF49A6: NewIfNullPr clsboleto
  loc_CF49A9: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF49AE: FLdPr var_46C
  loc_CF49B1:  = Me.Fields
  loc_CF49B6: FLdPr var_470
  loc_CF49B9: from_stack_2 = Me.Item(from_stack_1)
  loc_CF49BE: FLdPr var_484
  loc_CF49C1:  = Me.Value
  loc_CF49C6: FLdR8 var_170
  loc_CF49C9: FLdR8 var_118
  loc_CF49CC: FLdI2 var_BE
  loc_CF49CF: LitI2_Byte 0
  loc_CF49D1: FLdR8 var_F8
  loc_CF49D4: FLdR8 var_108
  loc_CF49D7: FLdRfVar var_544
  loc_CF49DA: CStrVarTmp
  loc_CF49DB: FStStrNoPop var_548
  loc_CF49DE: FLdRfVar var_534
  loc_CF49E1: CStrVarTmp
  loc_CF49E2: FStStrNoPop var_2C8
  loc_CF49E5: FLdRfVar var_524
  loc_CF49E8: CI2Var
  loc_CF49E9: FLdRfVar var_430
  loc_CF49EC: CStrVarVal var_2C4
  loc_CF49F0: FLdRfVar var_514
  loc_CF49F3: CStrVarTmp
  loc_CF49F4: FStStrNoPop var_2C0
  loc_CF49F7: FLdRfVar var_504
  loc_CF49FA: CStrVarTmp
  loc_CF49FB: FStStrNoPop var_2BC
  loc_CF49FE: FLdRfVar var_4F4
  loc_CF4A01: CStrVarTmp
  loc_CF4A02: FStStrNoPop var_2B8
  loc_CF4A05: FLdRfVar var_4E4
  loc_CF4A08: CI2Var
  loc_CF4A09: FLdRfVar var_4D4
  loc_CF4A0C: CStrVarTmp
  loc_CF4A0D: FStStrNoPop var_294
  loc_CF4A10: FLdRfVar var_254
  loc_CF4A13: CI4Var
  loc_CF4A15: FLdRfVar var_4C4
  loc_CF4A18: CI4Var
  loc_CF4A1A: FLdRfVar var_4B4
  loc_CF4A1D: CI2Var
  loc_CF4A1E: FLdRfVar var_4A4
  loc_CF4A21: CStrVarTmp
  loc_CF4A22: FStStrNoPop var_290
  loc_CF4A25: FLdR8 var_F0
  loc_CF4A28: LitI2_Byte 0
  loc_CF4A2A: CR8I2
  loc_CF4A2B: PopFPR8
  loc_CF4A2C: LitI2_Byte 0
  loc_CF4A2E: CR8I2
  loc_CF4A2F: PopFPR8
  loc_CF4A30: LitI2_Byte 0
  loc_CF4A32: CR8I2
  loc_CF4A33: PopFPR8
  loc_CF4A34: LitI2_Byte 0
  loc_CF4A36: CR8I2
  loc_CF4A37: PopFPR8
  loc_CF4A38: FLdR8 var_F0
  loc_CF4A3B: LitI2_Byte 0
  loc_CF4A3D: CR8I2
  loc_CF4A3E: PopFPR8
  loc_CF4A3F: ILdRf var_14C
  loc_CF4A42: LitStr "Aforo"
  loc_CF4A45: LitI2_Byte 1
  loc_CF4A47: CUI1I2
  loc_CF4A49: ILdRf var_CC
  loc_CF4A4C: FLdRfVar var_494
  loc_CF4A4F: CI4Var
  loc_CF4A51: FLdI2 var_8A
  loc_CF4A54: ILdRf var_288
  loc_CF4A57: CUI1Str
  loc_CF4A59: FLdPr Me
  loc_CF4A5C: MemLdI2 global_92
  loc_CF4A5F: CUI1I2
  loc_CF4A61: ILdRf var_224
  loc_CF4A64: CI2Str
  loc_CF4A66: FLdPr Me
  loc_CF4A69: MemLdRfVar from_stack_1.global_68
  loc_CF4A6C: NewIfNullPr clsliquante
  loc_CF4A6F: Call clsliquante.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CF4A74: FFreeStr var_28C = "": var_224 = "": var_288 = "": var_290 = "": var_294 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = ""
  loc_CF4A8D: FFreeAd var_3CC = "": var_3E0 = "": var_434 = "": var_438 = "": var_450 = "": var_454 = "": var_46C = "": var_470 = "": var_2CC = "": var_2D8 = "": var_2EC = "": var_2F8 = "": var_31C = "": var_328 = "": var_344 = "": var_360 = "": var_37C = "": var_44C = "": var_468 = "": var_484 = "": var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2E4 = "": var_2E8 = "": var_2F0 = "": var_2F4 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_348 = "": var_34C = "": var_364 = "": var_368 = "": var_380 = "": var_384 = "": var_398 = "": var_3AC = "": var_3B0 = ""
  loc_CF4AF4: FFreeVar var_188 = "": var_1FC = "": var_220 = "": var_244 = "": var_264 = "": var_3F0 = "": var_400 = "": var_410 = "": var_420 = "": var_494 = "": var_4A4 = "": var_4B4 = "": var_4C4 = "": var_254 = "": var_4D4 = "": var_4E4 = "": var_4F4 = "": var_504 = "": var_514 = "": var_430 = "": var_524 = "": var_534 = ""
  loc_CF4B25: Branch loc_CF4CB1
  loc_CF4B28: FLdRfVar var_224
  loc_CF4B2B: FLdPr Me
  loc_CF4B2E: VCallAd Control_ID_PeriLiquTxt
  loc_CF4B31: FStAdFunc var_178
  loc_CF4B34: FLdPr var_178
  loc_CF4B37:  = Me.Text
  loc_CF4B3C: FLdRfVar var_288
  loc_CF4B3F: FLdPr Me
  loc_CF4B42: VCallAd Control_ID_CodiTiliTxt
  loc_CF4B45: FStAdFunc var_210
  loc_CF4B48: FLdPr var_210
  loc_CF4B4B:  = Me.Text
  loc_CF4B50: FLdRfVar var_188
  loc_CF4B53: FLdRfVar var_2CC
  loc_CF4B56: LitVarStr var_19C, "CodiCome"
  loc_CF4B5B: PopAdLdVar
  loc_CF4B5C: FLdRfVar var_2A8
  loc_CF4B5F: FLdRfVar var_2A4
  loc_CF4B62: FLdPr Me
  loc_CF4B65: MemLdRfVar from_stack_1.global_56
  loc_CF4B68: NewIfNullPr clscomercio
  loc_CF4B6B: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4B70: FLdPr var_2A4
  loc_CF4B73:  = Me.Fields
  loc_CF4B78: FLdPr var_2A8
  loc_CF4B7B: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4B80: FLdPr var_2CC
  loc_CF4B83:  = Me.Value
  loc_CF4B88: FLdRfVar var_220
  loc_CF4B8B: FLdRfVar var_2D8
  loc_CF4B8E: LitVarStr var_1AC, "CucuPers"
  loc_CF4B93: PopAdLdVar
  loc_CF4B94: FLdRfVar var_2D4
  loc_CF4B97: FLdRfVar var_2D0
  loc_CF4B9A: FLdPr Me
  loc_CF4B9D: MemLdRfVar from_stack_1.global_56
  loc_CF4BA0: NewIfNullPr clscomercio
  loc_CF4BA3: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4BA8: FLdPr var_2D0
  loc_CF4BAB:  = Me.Fields
  loc_CF4BB0: FLdPr var_2D4
  loc_CF4BB3: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4BB8: FLdPr var_2D8
  loc_CF4BBB:  = Me.Value
  loc_CF4BC0: FLdRfVar var_244
  loc_CF4BC3: FLdRfVar var_2EC
  loc_CF4BC6: LitVarStr var_1BC, "CodiRuta"
  loc_CF4BCB: PopAdLdVar
  loc_CF4BCC: FLdRfVar var_2E8
  loc_CF4BCF: FLdRfVar var_2E4
  loc_CF4BD2: FLdPr Me
  loc_CF4BD5: MemLdRfVar from_stack_1.global_56
  loc_CF4BD8: NewIfNullPr clscomercio
  loc_CF4BDB: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4BE0: FLdPr var_2E4
  loc_CF4BE3:  = Me.Fields
  loc_CF4BE8: FLdPr var_2E8
  loc_CF4BEB: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4BF0: FLdPr var_2EC
  loc_CF4BF3:  = Me.Value
  loc_CF4BF8: FLdR8 var_170
  loc_CF4BFB: FLdR8 var_118
  loc_CF4BFE: FLdI2 var_BE
  loc_CF4C01: LitI2_Byte 0
  loc_CF4C03: FLdR8 var_F8
  loc_CF4C06: FLdR8 var_108
  loc_CF4C09: LitStr vbNullString
  loc_CF4C0C: LitStr vbNullString
  loc_CF4C0F: LitI2_Byte 0
  loc_CF4C11: LitStr vbNullString
  loc_CF4C14: LitStr vbNullString
  loc_CF4C17: LitStr vbNullString
  loc_CF4C1A: LitStr vbNullString
  loc_CF4C1D: LitI2_Byte 0
  loc_CF4C1F: LitStr vbNullString
  loc_CF4C22: LitI4 0
  loc_CF4C27: LitI4 0
  loc_CF4C2C: FLdRfVar var_244
  loc_CF4C2F: CI2Var
  loc_CF4C30: FLdRfVar var_220
  loc_CF4C33: CStrVarTmp
  loc_CF4C34: FStStrNoPop var_28C
  loc_CF4C37: FLdR8 var_F0
  loc_CF4C3A: LitI2_Byte 0
  loc_CF4C3C: CR8I2
  loc_CF4C3D: PopFPR8
  loc_CF4C3E: LitI2_Byte 0
  loc_CF4C40: CR8I2
  loc_CF4C41: PopFPR8
  loc_CF4C42: LitI2_Byte 0
  loc_CF4C44: CR8I2
  loc_CF4C45: PopFPR8
  loc_CF4C46: LitI2_Byte 0
  loc_CF4C48: CR8I2
  loc_CF4C49: PopFPR8
  loc_CF4C4A: FLdR8 var_F0
  loc_CF4C4D: LitI2_Byte 0
  loc_CF4C4F: CR8I2
  loc_CF4C50: PopFPR8
  loc_CF4C51: ILdRf var_14C
  loc_CF4C54: LitStr "Aforo"
  loc_CF4C57: LitI2_Byte 1
  loc_CF4C59: CUI1I2
  loc_CF4C5B: ILdRf var_CC
  loc_CF4C5E: FLdRfVar var_188
  loc_CF4C61: CI4Var
  loc_CF4C63: FLdI2 var_8A
  loc_CF4C66: ILdRf var_288
  loc_CF4C69: CUI1Str
  loc_CF4C6B: FLdPr Me
  loc_CF4C6E: MemLdI2 global_92
  loc_CF4C71: CUI1I2
  loc_CF4C73: ILdRf var_224
  loc_CF4C76: CI2Str
  loc_CF4C78: FLdPr Me
  loc_CF4C7B: MemLdRfVar from_stack_1.global_68
  loc_CF4C7E: NewIfNullPr clsliquante
  loc_CF4C81: Call clsliquante.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CF4C86: FFreeStr var_224 = "": var_288 = ""
  loc_CF4C8F: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2E4 = "": var_2E8 = "": var_2CC = "": var_2D8 = ""
  loc_CF4CA8: FFreeVar var_188 = "": var_220 = ""
  loc_CF4CB1: FLdRfVar var_224
  loc_CF4CB4: FLdPr Me
  loc_CF4CB7: VCallAd Control_ID_PeriLiquTxt
  loc_CF4CBA: FStAdFunc var_178
  loc_CF4CBD: FLdPr var_178
  loc_CF4CC0:  = Me.Text
  loc_CF4CC5: FLdRfVar var_288
  loc_CF4CC8: FLdPr Me
  loc_CF4CCB: VCallAd Control_ID_CodiTiliTxt
  loc_CF4CCE: FStAdFunc var_210
  loc_CF4CD1: FLdPr var_210
  loc_CF4CD4:  = Me.Text
  loc_CF4CD9: FLdRfVar var_188
  loc_CF4CDC: FLdRfVar var_2CC
  loc_CF4CDF: LitVarStr var_19C, "CodiCome"
  loc_CF4CE4: PopAdLdVar
  loc_CF4CE5: FLdRfVar var_2A8
  loc_CF4CE8: FLdRfVar var_2A4
  loc_CF4CEB: FLdPr Me
  loc_CF4CEE: MemLdRfVar from_stack_1.global_56
  loc_CF4CF1: NewIfNullPr clscomercio
  loc_CF4CF4: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4CF9: FLdPr var_2A4
  loc_CF4CFC:  = Me.Fields
  loc_CF4D01: FLdPr var_2A8
  loc_CF4D04: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4D09: FLdPr var_2CC
  loc_CF4D0C:  = Me.Value
  loc_CF4D11: FLdRfVar var_188
  loc_CF4D14: CStrVarTmp
  loc_CF4D15: FStStrNoPop var_28C
  loc_CF4D18: LitI2_Byte 7
  loc_CF4D1A: CUI1I2
  loc_CF4D1C: FLdI2 var_8A
  loc_CF4D1F: ILdRf var_288
  loc_CF4D22: CUI1Str
  loc_CF4D24: FLdPr Me
  loc_CF4D27: MemLdI2 global_92
  loc_CF4D2A: CUI1I2
  loc_CF4D2C: ILdRf var_224
  loc_CF4D2F: CI2Str
  loc_CF4D31: FLdPr Me
  loc_CF4D34: MemLdRfVar from_stack_1.global_80
  loc_CF4D37: NewIfNullPr clsrecabole
  loc_CF4D3A: Call clsrecabole.ModificaRecabole(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CF4D3F: FFreeStr var_224 = "": var_288 = ""
  loc_CF4D48: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = ""
  loc_CF4D55: FFree1Var var_188 = ""
  loc_CF4D58: LitI2_Byte 0
  loc_CF4D5A: CR8I2
  loc_CF4D5B: FStFPR8 var_F0
  loc_CF4D5E: FLdPr Me
  loc_CF4D61: MemLdRfVar from_stack_1.global_92
  loc_CF4D64: NextI2 var_2DC, loc_CF36BE
  loc_CF4D69: FLdRfVar var_172
  loc_CF4D6C: FLdPr Me
  loc_CF4D6F: VCallAd Control_ID_CompletaOpt
  loc_CF4D72: FStAdFunc var_178
  loc_CF4D75: FLdPr var_178
  loc_CF4D78:  = Me.Value
  loc_CF4D7D: FLdI2 var_172
  loc_CF4D80: LitI2_Byte &HFF
  loc_CF4D82: EqI2
  loc_CF4D83: FLdRfVar var_224
  loc_CF4D86: FLdPr Me
  loc_CF4D89: VCallAd Control_ID_BimeLiquTxt
  loc_CF4D8C: FStAdFunc var_210
  loc_CF4D8F: FLdPr var_210
  loc_CF4D92:  = Me.Text
  loc_CF4D97: ILdRf var_224
  loc_CF4D9A: CR8Str
  loc_CF4D9C: LitI2_Byte 1
  loc_CF4D9E: CR8I2
  loc_CF4D9F: EqR4
  loc_CF4DA0: AndI4
  loc_CF4DA1: FFree1Str var_224
  loc_CF4DA4: FFreeAd var_178 = ""
  loc_CF4DAB: BranchF loc_CF551E
  loc_CF4DAE: FLdRfVar var_298
  loc_CF4DB1: FLdPr Me
  loc_CF4DB4: MemLdRfVar from_stack_1.global_84
  loc_CF4DB7: NewIfNullPr clsboleto
  loc_CF4DBA: from_stack_1 = clsboleto.RecordCount
  loc_CF4DBF: ILdRf var_298
  loc_CF4DC2: LitI4 0
  loc_CF4DC7: GtI4
  loc_CF4DC8: BranchF loc_CF5379
  loc_CF4DCB: FLdRfVar var_224
  loc_CF4DCE: FLdPr Me
  loc_CF4DD1: VCallAd Control_ID_PeriLiquTxt
  loc_CF4DD4: FStAdFunc var_178
  loc_CF4DD7: FLdPr var_178
  loc_CF4DDA:  = Me.Text
  loc_CF4DDF: FLdRfVar var_288
  loc_CF4DE2: FLdPr Me
  loc_CF4DE5: VCallAd Control_ID_CodiTiliTxt
  loc_CF4DE8: FStAdFunc var_210
  loc_CF4DEB: FLdPr var_210
  loc_CF4DEE:  = Me.Text
  loc_CF4DF3: FLdRfVar var_4A4
  loc_CF4DF6: FLdRfVar var_2CC
  loc_CF4DF9: LitVarStr var_19C, "CodiCome"
  loc_CF4DFE: PopAdLdVar
  loc_CF4DFF: FLdRfVar var_2A8
  loc_CF4E02: FLdRfVar var_2A4
  loc_CF4E05: FLdPr Me
  loc_CF4E08: MemLdRfVar from_stack_1.global_56
  loc_CF4E0B: NewIfNullPr clscomercio
  loc_CF4E0E: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4E13: FLdPr var_2A4
  loc_CF4E16:  = Me.Fields
  loc_CF4E1B: FLdPr var_2A8
  loc_CF4E1E: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4E23: FLdPr var_2CC
  loc_CF4E26:  = Me.Value
  loc_CF4E2B: FLdPr Me
  loc_CF4E2E: VCallAd Control_ID_FeanVencMsk
  loc_CF4E31: FStAdFunc var_2D0
  loc_CF4E34: FLdPr var_2D0
  loc_CF4E37: LateIdLdVar var_188 DispID_15 0
  loc_CF4E3E: PopAd
  loc_CF4E40: FLdRfVar var_4B4
  loc_CF4E43: FLdRfVar var_2E4
  loc_CF4E46: LitVarStr var_1AC, "CucuPers"
  loc_CF4E4B: PopAdLdVar
  loc_CF4E4C: FLdRfVar var_2D8
  loc_CF4E4F: FLdRfVar var_2D4
  loc_CF4E52: FLdPr Me
  loc_CF4E55: MemLdRfVar from_stack_1.global_56
  loc_CF4E58: NewIfNullPr clscomercio
  loc_CF4E5B: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4E60: FLdPr var_2D4
  loc_CF4E63:  = Me.Fields
  loc_CF4E68: FLdPr var_2D8
  loc_CF4E6B: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4E70: FLdPr var_2E4
  loc_CF4E73:  = Me.Value
  loc_CF4E78: FLdRfVar var_4C4
  loc_CF4E7B: FLdRfVar var_2F0
  loc_CF4E7E: LitVarStr var_1BC, "CodiRuta"
  loc_CF4E83: PopAdLdVar
  loc_CF4E84: FLdRfVar var_2EC
  loc_CF4E87: FLdRfVar var_2E8
  loc_CF4E8A: FLdPr Me
  loc_CF4E8D: MemLdRfVar from_stack_1.global_56
  loc_CF4E90: NewIfNullPr clscomercio
  loc_CF4E93: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF4E98: FLdPr var_2E8
  loc_CF4E9B:  = Me.Fields
  loc_CF4EA0: FLdPr var_2EC
  loc_CF4EA3: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4EA8: FLdPr var_2F0
  loc_CF4EAB:  = Me.Value
  loc_CF4EB0: FLdRfVar var_4D4
  loc_CF4EB3: FLdRfVar var_2FC
  loc_CF4EB6: LitVarStr var_1CC, "CodiCalle"
  loc_CF4EBB: PopAdLdVar
  loc_CF4EBC: FLdRfVar var_2F8
  loc_CF4EBF: FLdRfVar var_2F4
  loc_CF4EC2: FLdPr Me
  loc_CF4EC5: MemLdRfVar from_stack_1.global_84
  loc_CF4EC8: NewIfNullPr clsboleto
  loc_CF4ECB: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4ED0: FLdPr var_2F4
  loc_CF4ED3:  = Me.Fields
  loc_CF4ED8: FLdPr var_2F8
  loc_CF4EDB: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4EE0: FLdPr var_2FC
  loc_CF4EE3:  = Me.Value
  loc_CF4EE8: FLdRfVar var_308
  loc_CF4EEB: LitVarStr var_1DC, "NumePost"
  loc_CF4EF0: PopAdLdVar
  loc_CF4EF1: FLdRfVar var_304
  loc_CF4EF4: FLdRfVar var_300
  loc_CF4EF7: FLdPr Me
  loc_CF4EFA: MemLdRfVar from_stack_1.global_84
  loc_CF4EFD: NewIfNullPr clsboleto
  loc_CF4F00: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4F05: FLdPr var_300
  loc_CF4F08:  = Me.Fields
  loc_CF4F0D: FLdPr var_304
  loc_CF4F10: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4F15: FLdZeroAd var_308
  loc_CF4F18: CVarAd
  loc_CF4F1C: ImpAdCallI2 IsNumeric()
  loc_CF4F21: FStI2 var_172
  loc_CF4F24: FLdRfVar var_314
  loc_CF4F27: LitVarStr var_1EC, "NumePost"
  loc_CF4F2C: PopAdLdVar
  loc_CF4F2D: FLdRfVar var_310
  loc_CF4F30: FLdRfVar var_30C
  loc_CF4F33: FLdPr Me
  loc_CF4F36: MemLdRfVar from_stack_1.global_84
  loc_CF4F39: NewIfNullPr clsboleto
  loc_CF4F3C: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4F41: FLdPr var_30C
  loc_CF4F44:  = Me.Fields
  loc_CF4F49: FLdPr var_310
  loc_CF4F4C: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4F51: LitVarI2 var_254, 0
  loc_CF4F56: FLdZeroAd var_314
  loc_CF4F59: CVarAd
  loc_CF4F5D: FLdI2 var_172
  loc_CF4F60: CVarBoolI2 var_1FC
  loc_CF4F64: FLdRfVar var_264
  loc_CF4F67: ImpAdCallFPR4  = IIf(, , )
  loc_CF4F6C: FLdRfVar var_4E4
  loc_CF4F6F: FLdRfVar var_320
  loc_CF4F72: LitVarStr var_234, "DecaPost"
  loc_CF4F77: PopAdLdVar
  loc_CF4F78: FLdRfVar var_31C
  loc_CF4F7B: FLdRfVar var_318
  loc_CF4F7E: FLdPr Me
  loc_CF4F81: MemLdRfVar from_stack_1.global_84
  loc_CF4F84: NewIfNullPr clsboleto
  loc_CF4F87: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4F8C: FLdPr var_318
  loc_CF4F8F:  = Me.Fields
  loc_CF4F94: FLdPr var_31C
  loc_CF4F97: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4F9C: FLdPr var_320
  loc_CF4F9F:  = Me.Value
  loc_CF4FA4: FLdRfVar var_4F4
  loc_CF4FA7: FLdRfVar var_32C
  loc_CF4FAA: LitVarStr var_274, "CobpPost"
  loc_CF4FAF: PopAdLdVar
  loc_CF4FB0: FLdRfVar var_328
  loc_CF4FB3: FLdRfVar var_324
  loc_CF4FB6: FLdPr Me
  loc_CF4FB9: MemLdRfVar from_stack_1.global_84
  loc_CF4FBC: NewIfNullPr clsboleto
  loc_CF4FBF: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4FC4: FLdPr var_324
  loc_CF4FC7:  = Me.Fields
  loc_CF4FCC: FLdPr var_328
  loc_CF4FCF: from_stack_2 = Me.Item(from_stack_1)
  loc_CF4FD4: FLdPr var_32C
  loc_CF4FD7:  = Me.Value
  loc_CF4FDC: FLdRfVar var_504
  loc_CF4FDF: FLdRfVar var_348
  loc_CF4FE2: LitVarStr var_340, "DebaPost"
  loc_CF4FE7: PopAdLdVar
  loc_CF4FE8: FLdRfVar var_344
  loc_CF4FEB: FLdRfVar var_330
  loc_CF4FEE: FLdPr Me
  loc_CF4FF1: MemLdRfVar from_stack_1.global_84
  loc_CF4FF4: NewIfNullPr clsboleto
  loc_CF4FF7: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF4FFC: FLdPr var_330
  loc_CF4FFF:  = Me.Fields
  loc_CF5004: FLdPr var_344
  loc_CF5007: from_stack_2 = Me.Item(from_stack_1)
  loc_CF500C: FLdPr var_348
  loc_CF500F:  = Me.Value
  loc_CF5014: FLdRfVar var_514
  loc_CF5017: FLdRfVar var_364
  loc_CF501A: LitVarStr var_35C, "ManzPost"
  loc_CF501F: PopAdLdVar
  loc_CF5020: FLdRfVar var_360
  loc_CF5023: FLdRfVar var_34C
  loc_CF5026: FLdPr Me
  loc_CF5029: MemLdRfVar from_stack_1.global_84
  loc_CF502C: NewIfNullPr clsboleto
  loc_CF502F: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF5034: FLdPr var_34C
  loc_CF5037:  = Me.Fields
  loc_CF503C: FLdPr var_360
  loc_CF503F: from_stack_2 = Me.Item(from_stack_1)
  loc_CF5044: FLdPr var_364
  loc_CF5047:  = Me.Value
  loc_CF504C: FLdRfVar var_524
  loc_CF504F: FLdRfVar var_380
  loc_CF5052: LitVarStr var_378, "CasaPost"
  loc_CF5057: PopAdLdVar
  loc_CF5058: FLdRfVar var_37C
  loc_CF505B: FLdRfVar var_368
  loc_CF505E: FLdPr Me
  loc_CF5061: MemLdRfVar from_stack_1.global_84
  loc_CF5064: NewIfNullPr clsboleto
  loc_CF5067: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF506C: FLdPr var_368
  loc_CF506F:  = Me.Fields
  loc_CF5074: FLdPr var_37C
  loc_CF5077: from_stack_2 = Me.Item(from_stack_1)
  loc_CF507C: FLdPr var_380
  loc_CF507F:  = Me.Value
  loc_CF5084: FLdRfVar var_284
  loc_CF5087: FLdRfVar var_3AC
  loc_CF508A: LitVarStr var_394, "UbicPost"
  loc_CF508F: PopAdLdVar
  loc_CF5090: FLdRfVar var_398
  loc_CF5093: FLdRfVar var_384
  loc_CF5096: FLdPr Me
  loc_CF5099: MemLdRfVar from_stack_1.global_84
  loc_CF509C: NewIfNullPr clsboleto
  loc_CF509F: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF50A4: FLdPr var_384
  loc_CF50A7:  = Me.Fields
  loc_CF50AC: FLdPr var_398
  loc_CF50AF: from_stack_2 = Me.Item(from_stack_1)
  loc_CF50B4: FLdPr var_3AC
  loc_CF50B7:  = Me.Value
  loc_CF50BC: FLdRfVar var_3C8
  loc_CF50BF: LitVarStr var_3C0, "UbicPost"
  loc_CF50C4: PopAdLdVar
  loc_CF50C5: FLdRfVar var_3C4
  loc_CF50C8: FLdRfVar var_3B0
  loc_CF50CB: FLdPr Me
  loc_CF50CE: MemLdRfVar from_stack_1.global_84
  loc_CF50D1: NewIfNullPr clsboleto
  loc_CF50D4: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF50D9: FLdPr var_3B0
  loc_CF50DC:  = Me.Fields
  loc_CF50E1: FLdPr var_3C4
  loc_CF50E4: from_stack_2 = Me.Item(from_stack_1)
  loc_CF50E9: FLdRfVar var_400
  loc_CF50EC: FLdRfVar var_434
  loc_CF50EF: LitVarStr var_3DC, "Ubicacion"
  loc_CF50F4: PopAdLdVar
  loc_CF50F5: FLdRfVar var_3E0
  loc_CF50F8: FLdRfVar var_3CC
  loc_CF50FB: FLdPr Me
  loc_CF50FE: MemLdRfVar from_stack_1.global_84
  loc_CF5101: NewIfNullPr clsboleto
  loc_CF5104: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF5109: FLdPr var_3CC
  loc_CF510C:  = Me.Fields
  loc_CF5111: FLdPr var_3E0
  loc_CF5114: from_stack_2 = Me.Item(from_stack_1)
  loc_CF5119: FLdPr var_434
  loc_CF511C:  = Me.Value
  loc_CF5121: LitI4 0
  loc_CF5126: LitI4 -1
  loc_CF512B: LitI4 1
  loc_CF5130: LitStr " "
  loc_CF5133: LitStr "'"
  loc_CF5136: FLdRfVar var_400
  loc_CF5139: CStrVarTmp
  loc_CF513A: FStStrNoPop var_28C
  loc_CF513D: ImpAdCallI2 Replace(, , , , , )
  loc_CF5142: CVarStr var_430
  loc_CF5145: FLdZeroAd var_3C8
  loc_CF5148: CVarAd
  loc_CF514C: FLdRfVar var_284
  loc_CF514F: LitVarStr var_3A8, vbNullString
  loc_CF5154: HardType
  loc_CF5155: NeVar var_3F0
  loc_CF5159: FStVar var_410
  loc_CF515D: FLdRfVar var_410
  loc_CF5160: FLdRfVar var_494
  loc_CF5163: ImpAdCallFPR4  = IIf(, , )
  loc_CF5168: FLdRfVar var_534
  loc_CF516B: FLdRfVar var_450
  loc_CF516E: LitVarStr var_448, "ColpPost"
  loc_CF5173: PopAdLdVar
  loc_CF5174: FLdRfVar var_44C
  loc_CF5177: FLdRfVar var_438
  loc_CF517A: FLdPr Me
  loc_CF517D: MemLdRfVar from_stack_1.global_84
  loc_CF5180: NewIfNullPr clsboleto
  loc_CF5183: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF5188: FLdPr var_438
  loc_CF518B:  = Me.Fields
  loc_CF5190: FLdPr var_44C
  loc_CF5193: from_stack_2 = Me.Item(from_stack_1)
  loc_CF5198: FLdPr var_450
  loc_CF519B:  = Me.Value
  loc_CF51A0: FLdRfVar var_544
  loc_CF51A3: FLdRfVar var_46C
  loc_CF51A6: LitVarStr var_464, "DeloPost"
  loc_CF51AB: PopAdLdVar
  loc_CF51AC: FLdRfVar var_468
  loc_CF51AF: FLdRfVar var_454
  loc_CF51B2: FLdPr Me
  loc_CF51B5: MemLdRfVar from_stack_1.global_84
  loc_CF51B8: NewIfNullPr clsboleto
  loc_CF51BB: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF51C0: FLdPr var_454
  loc_CF51C3:  = Me.Fields
  loc_CF51C8: FLdPr var_468
  loc_CF51CB: from_stack_2 = Me.Item(from_stack_1)
  loc_CF51D0: FLdPr var_46C
  loc_CF51D3:  = Me.Value
  loc_CF51D8: FLdRfVar var_55C
  loc_CF51DB: FLdRfVar var_54C
  loc_CF51DE: LitVarStr var_480, "CopoPost"
  loc_CF51E3: PopAdLdVar
  loc_CF51E4: FLdRfVar var_484
  loc_CF51E7: FLdRfVar var_470
  loc_CF51EA: FLdPr Me
  loc_CF51ED: MemLdRfVar from_stack_1.global_84
  loc_CF51F0: NewIfNullPr clsboleto
  loc_CF51F3: from_stack_1v = clsboleto.RsFrmGet()
  loc_CF51F8: FLdPr var_470
  loc_CF51FB:  = Me.Fields
  loc_CF5200: FLdPr var_484
  loc_CF5203: from_stack_2 = Me.Item(from_stack_1)
  loc_CF5208: FLdPr var_54C
  loc_CF520B:  = Me.Value
  loc_CF5210: FLdR8 var_170
  loc_CF5213: FLdR8 var_118
  loc_CF5216: FLdI2 var_BE
  loc_CF5219: LitI2_Byte &HFF
  loc_CF521B: FLdR8 var_F8
  loc_CF521E: FLdR8 var_108
  loc_CF5221: FLdRfVar var_55C
  loc_CF5224: CStrVarTmp
  loc_CF5225: FStStrNoPop var_560
  loc_CF5228: FLdRfVar var_544
  loc_CF522B: CStrVarTmp
  loc_CF522C: FStStrNoPop var_548
  loc_CF522F: FLdRfVar var_534
  loc_CF5232: CI2Var
  loc_CF5233: FLdRfVar var_494
  loc_CF5236: CStrVarVal var_2C8
  loc_CF523A: FLdRfVar var_524
  loc_CF523D: CStrVarTmp
  loc_CF523E: FStStrNoPop var_2C4
  loc_CF5241: FLdRfVar var_514
  loc_CF5244: CStrVarTmp
  loc_CF5245: FStStrNoPop var_2C0
  loc_CF5248: FLdRfVar var_504
  loc_CF524B: CStrVarTmp
  loc_CF524C: FStStrNoPop var_2BC
  loc_CF524F: FLdRfVar var_4F4
  loc_CF5252: CI2Var
  loc_CF5253: FLdRfVar var_4E4
  loc_CF5256: CStrVarTmp
  loc_CF5257: FStStrNoPop var_2B8
  loc_CF525A: FLdRfVar var_264
  loc_CF525D: CI4Var
  loc_CF525F: FLdRfVar var_4D4
  loc_CF5262: CI4Var
  loc_CF5264: FLdRfVar var_4C4
  loc_CF5267: CI2Var
  loc_CF5268: FLdRfVar var_4B4
  loc_CF526B: CStrVarTmp
  loc_CF526C: FStStrNoPop var_294
  loc_CF526F: LitI2_Byte 0
  loc_CF5271: CR8I2
  loc_CF5272: PopFPR8
  loc_CF5273: LitI2_Byte 0
  loc_CF5275: CR8I2
  loc_CF5276: PopFPR8
  loc_CF5277: LitI2_Byte 0
  loc_CF5279: CR8I2
  loc_CF527A: PopFPR8
  loc_CF527B: LitI2_Byte 0
  loc_CF527D: CR8I2
  loc_CF527E: PopFPR8
  loc_CF527F: LitI2_Byte 0
  loc_CF5281: CR8I2
  loc_CF5282: PopFPR8
  loc_CF5283: LitI2_Byte 0
  loc_CF5285: CR8I2
  loc_CF5286: PopFPR8
  loc_CF5287: FLdR8 var_A4
  loc_CF528A: FLdRfVar var_188
  loc_CF528D: CStrVarTmp
  loc_CF528E: FStStrNoPop var_290
  loc_CF5291: LitStr "Aforo"
  loc_CF5294: LitI2_Byte 2
  loc_CF5296: CUI1I2
  loc_CF5298: ILdRf var_D0
  loc_CF529B: FLdRfVar var_4A4
  loc_CF529E: CI4Var
  loc_CF52A0: FLdI2 var_8A
  loc_CF52A3: ILdRf var_288
  loc_CF52A6: CUI1Str
  loc_CF52A8: LitI2_Byte 1
  loc_CF52AA: CUI1I2
  loc_CF52AC: ILdRf var_224
  loc_CF52AF: CI2Str
  loc_CF52B1: FLdPr Me
  loc_CF52B4: MemLdRfVar from_stack_1.global_68
  loc_CF52B7: NewIfNullPr clsliquante
  loc_CF52BA: Call clsliquante.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CF52BF: FFreeStr var_28C = "": var_224 = "": var_288 = "": var_290 = "": var_294 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_548 = ""
  loc_CF52DA: FFreeAd var_3CC = "": var_3E0 = "": var_434 = "": var_438 = "": var_44C = "": var_454 = "": var_468 = "": var_470 = "": var_484 = "": var_2CC = "": var_2E4 = "": var_2F0 = "": var_2FC = "": var_320 = "": var_32C = "": var_348 = "": var_364 = "": var_380 = "": var_450 = "": var_46C = "": var_54C = "": var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2E8 = "": var_2EC = "": var_2F4 = "": var_2F8 = "": var_300 = "": var_304 = "": var_30C = "": var_310 = "": var_318 = "": var_31C = "": var_324 = "": var_328 = "": var_330 = "": var_344 = "": var_34C = "": var_360 = "": var_368 = "": var_37C = "": var_384 = "": var_398 = "": var_3AC = "": var_3B0 = ""
  loc_CF5343: FFreeVar var_188 = "": var_220 = "": var_1FC = "": var_244 = "": var_254 = "": var_284 = "": var_400 = "": var_410 = "": var_420 = "": var_430 = "": var_4A4 = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_264 = "": var_4E4 = "": var_4F4 = "": var_504 = "": var_514 = "": var_524 = "": var_494 = "": var_534 = "": var_544 = ""
  loc_CF5376: Branch loc_CF551E
  loc_CF5379: FLdRfVar var_224
  loc_CF537C: FLdPr Me
  loc_CF537F: VCallAd Control_ID_PeriLiquTxt
  loc_CF5382: FStAdFunc var_178
  loc_CF5385: FLdPr var_178
  loc_CF5388:  = Me.Text
  loc_CF538D: FLdRfVar var_288
  loc_CF5390: FLdPr Me
  loc_CF5393: VCallAd Control_ID_CodiTiliTxt
  loc_CF5396: FStAdFunc var_210
  loc_CF5399: FLdPr var_210
  loc_CF539C:  = Me.Text
  loc_CF53A1: FLdRfVar var_220
  loc_CF53A4: FLdRfVar var_2CC
  loc_CF53A7: LitVarStr var_19C, "CodiCome"
  loc_CF53AC: PopAdLdVar
  loc_CF53AD: FLdRfVar var_2A8
  loc_CF53B0: FLdRfVar var_2A4
  loc_CF53B3: FLdPr Me
  loc_CF53B6: MemLdRfVar from_stack_1.global_56
  loc_CF53B9: NewIfNullPr clscomercio
  loc_CF53BC: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF53C1: FLdPr var_2A4
  loc_CF53C4:  = Me.Fields
  loc_CF53C9: FLdPr var_2A8
  loc_CF53CC: from_stack_2 = Me.Item(from_stack_1)
  loc_CF53D1: FLdPr var_2CC
  loc_CF53D4:  = Me.Value
  loc_CF53D9: FLdPr Me
  loc_CF53DC: VCallAd Control_ID_FeanVencMsk
  loc_CF53DF: FStAdFunc var_2D0
  loc_CF53E2: FLdPr var_2D0
  loc_CF53E5: LateIdLdVar var_188 DispID_15 0
  loc_CF53EC: PopAd
  loc_CF53EE: FLdRfVar var_244
  loc_CF53F1: FLdRfVar var_2E4
  loc_CF53F4: LitVarStr var_1AC, "CucuPers"
  loc_CF53F9: PopAdLdVar
  loc_CF53FA: FLdRfVar var_2D8
  loc_CF53FD: FLdRfVar var_2D4
  loc_CF5400: FLdPr Me
  loc_CF5403: MemLdRfVar from_stack_1.global_56
  loc_CF5406: NewIfNullPr clscomercio
  loc_CF5409: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF540E: FLdPr var_2D4
  loc_CF5411:  = Me.Fields
  loc_CF5416: FLdPr var_2D8
  loc_CF5419: from_stack_2 = Me.Item(from_stack_1)
  loc_CF541E: FLdPr var_2E4
  loc_CF5421:  = Me.Value
  loc_CF5426: FLdRfVar var_254
  loc_CF5429: FLdRfVar var_2F0
  loc_CF542C: LitVarStr var_1BC, "CodiRuta"
  loc_CF5431: PopAdLdVar
  loc_CF5432: FLdRfVar var_2EC
  loc_CF5435: FLdRfVar var_2E8
  loc_CF5438: FLdPr Me
  loc_CF543B: MemLdRfVar from_stack_1.global_56
  loc_CF543E: NewIfNullPr clscomercio
  loc_CF5441: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF5446: FLdPr var_2E8
  loc_CF5449:  = Me.Fields
  loc_CF544E: FLdPr var_2EC
  loc_CF5451: from_stack_2 = Me.Item(from_stack_1)
  loc_CF5456: FLdPr var_2F0
  loc_CF5459:  = Me.Value
  loc_CF545E: FLdR8 var_170
  loc_CF5461: FLdR8 var_118
  loc_CF5464: FLdI2 var_BE
  loc_CF5467: LitI2_Byte &HFF
  loc_CF5469: FLdR8 var_F8
  loc_CF546C: FLdR8 var_108
  loc_CF546F: LitStr vbNullString
  loc_CF5472: LitStr vbNullString
  loc_CF5475: LitI2_Byte 0
  loc_CF5477: LitStr vbNullString
  loc_CF547A: LitStr vbNullString
  loc_CF547D: LitStr vbNullString
  loc_CF5480: LitStr vbNullString
  loc_CF5483: LitI2_Byte 0
  loc_CF5485: LitStr vbNullString
  loc_CF5488: LitI4 0
  loc_CF548D: LitI4 0
  loc_CF5492: FLdRfVar var_254
  loc_CF5495: CI2Var
  loc_CF5496: FLdRfVar var_244
  loc_CF5499: CStrVarTmp
  loc_CF549A: FStStrNoPop var_290
  loc_CF549D: LitI2_Byte 0
  loc_CF549F: CR8I2
  loc_CF54A0: PopFPR8
  loc_CF54A1: LitI2_Byte 0
  loc_CF54A3: CR8I2
  loc_CF54A4: PopFPR8
  loc_CF54A5: LitI2_Byte 0
  loc_CF54A7: CR8I2
  loc_CF54A8: PopFPR8
  loc_CF54A9: LitI2_Byte 0
  loc_CF54AB: CR8I2
  loc_CF54AC: PopFPR8
  loc_CF54AD: LitI2_Byte 0
  loc_CF54AF: CR8I2
  loc_CF54B0: PopFPR8
  loc_CF54B1: LitI2_Byte 0
  loc_CF54B3: CR8I2
  loc_CF54B4: PopFPR8
  loc_CF54B5: FLdR8 var_A4
  loc_CF54B8: FLdRfVar var_188
  loc_CF54BB: CStrVarTmp
  loc_CF54BC: FStStrNoPop var_28C
  loc_CF54BF: LitStr "Aforo"
  loc_CF54C2: LitI2_Byte 2
  loc_CF54C4: CUI1I2
  loc_CF54C6: ILdRf var_D0
  loc_CF54C9: FLdRfVar var_220
  loc_CF54CC: CI4Var
  loc_CF54CE: FLdI2 var_8A
  loc_CF54D1: ILdRf var_288
  loc_CF54D4: CUI1Str
  loc_CF54D6: LitI2_Byte 1
  loc_CF54D8: CUI1I2
  loc_CF54DA: ILdRf var_224
  loc_CF54DD: CI2Str
  loc_CF54DF: FLdPr Me
  loc_CF54E2: MemLdRfVar from_stack_1.global_68
  loc_CF54E5: NewIfNullPr clsliquante
  loc_CF54E8: Call clsliquante.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CF54ED: FFreeStr var_224 = "": var_288 = "": var_28C = ""
  loc_CF54F8: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2E8 = "": var_2EC = "": var_2CC = "": var_2E4 = ""
  loc_CF5513: FFreeVar var_188 = "": var_220 = "": var_244 = ""
  loc_CF551E: Branch loc_CF5621
  loc_CF5521: FLdRfVar var_224
  loc_CF5524: FLdPr Me
  loc_CF5527: VCallAd Control_ID_PeriLiquTxt
  loc_CF552A: FStAdFunc var_178
  loc_CF552D: FLdPr var_178
  loc_CF5530:  = Me.Text
  loc_CF5535: FLdRfVar var_288
  loc_CF5538: FLdPr Me
  loc_CF553B: VCallAd Control_ID_CodiTiliTxt
  loc_CF553E: FStAdFunc var_210
  loc_CF5541: FLdPr var_210
  loc_CF5544:  = Me.Text
  loc_CF5549: FLdRfVar var_254
  loc_CF554C: FLdRfVar var_2CC
  loc_CF554F: LitVarStr var_19C, "CodiCome"
  loc_CF5554: PopAdLdVar
  loc_CF5555: FLdRfVar var_2A8
  loc_CF5558: FLdRfVar var_2A4
  loc_CF555B: FLdPr Me
  loc_CF555E: MemLdRfVar from_stack_1.global_56
  loc_CF5561: NewIfNullPr clscomercio
  loc_CF5564: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF5569: FLdPr var_2A4
  loc_CF556C:  = Me.Fields
  loc_CF5571: FLdPr var_2A8
  loc_CF5574: from_stack_2 = Me.Item(from_stack_1)
  loc_CF5579: FLdPr var_2CC
  loc_CF557C:  = Me.Value
  loc_CF5581: LitVarStr var_1BC, "Cuenta: "
  loc_CF5586: FLdRfVar var_188
  loc_CF5589: FLdRfVar var_2D8
  loc_CF558C: LitVarStr var_1AC, "CodiCome"
  loc_CF5591: PopAdLdVar
  loc_CF5592: FLdRfVar var_2D4
  loc_CF5595: FLdRfVar var_2D0
  loc_CF5598: FLdPr Me
  loc_CF559B: MemLdRfVar from_stack_1.global_56
  loc_CF559E: NewIfNullPr clscomercio
  loc_CF55A1: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF55A6: FLdPr var_2D0
  loc_CF55A9:  = Me.Fields
  loc_CF55AE: FLdPr var_2D4
  loc_CF55B1: from_stack_2 = Me.Item(from_stack_1)
  loc_CF55B6: FLdPr var_2D8
  loc_CF55B9:  = Me.Value
  loc_CF55BE: FLdRfVar var_188
  loc_CF55C1: ConcatVar var_220
  loc_CF55C5: LitVarStr var_1CC, " El importe del calculo es 0"
  loc_CF55CA: ConcatVar var_244
  loc_CF55CE: CStrVarVal var_28C
  loc_CF55D2: FLdRfVar var_254
  loc_CF55D5: CI4Var
  loc_CF55D7: FLdI2 var_8A
  loc_CF55DA: ILdRf var_288
  loc_CF55DD: CUI1Str
  loc_CF55DF: FLdPr Me
  loc_CF55E2: MemLdI2 global_92
  loc_CF55E5: CUI1I2
  loc_CF55E7: ILdRf var_224
  loc_CF55EA: CI2Str
  loc_CF55EC: FLdPr Me
  loc_CF55EF: MemLdRfVar from_stack_1.global_68
  loc_CF55F2: NewIfNullPr clsliquante
  loc_CF55F5: Call clsliquante.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CF55FA: FFreeStr var_224 = "": var_288 = ""
  loc_CF5603: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2D8 = ""
  loc_CF5616: FFreeVar var_188 = "": var_220 = "": var_254 = ""
  loc_CF5621: Branch loc_CF5724
  loc_CF5624: FLdRfVar var_224
  loc_CF5627: FLdPr Me
  loc_CF562A: VCallAd Control_ID_PeriLiquTxt
  loc_CF562D: FStAdFunc var_178
  loc_CF5630: FLdPr var_178
  loc_CF5633:  = Me.Text
  loc_CF5638: FLdRfVar var_288
  loc_CF563B: FLdPr Me
  loc_CF563E: VCallAd Control_ID_CodiTiliTxt
  loc_CF5641: FStAdFunc var_210
  loc_CF5644: FLdPr var_210
  loc_CF5647:  = Me.Text
  loc_CF564C: FLdRfVar var_254
  loc_CF564F: FLdRfVar var_2CC
  loc_CF5652: LitVarStr var_19C, "CodiCome"
  loc_CF5657: PopAdLdVar
  loc_CF5658: FLdRfVar var_2A8
  loc_CF565B: FLdRfVar var_2A4
  loc_CF565E: FLdPr Me
  loc_CF5661: MemLdRfVar from_stack_1.global_56
  loc_CF5664: NewIfNullPr clscomercio
  loc_CF5667: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF566C: FLdPr var_2A4
  loc_CF566F:  = Me.Fields
  loc_CF5674: FLdPr var_2A8
  loc_CF5677: from_stack_2 = Me.Item(from_stack_1)
  loc_CF567C: FLdPr var_2CC
  loc_CF567F:  = Me.Value
  loc_CF5684: LitVarStr var_1BC, "Cuenta: "
  loc_CF5689: FLdRfVar var_188
  loc_CF568C: FLdRfVar var_2D8
  loc_CF568F: LitVarStr var_1AC, "CodiCome"
  loc_CF5694: PopAdLdVar
  loc_CF5695: FLdRfVar var_2D4
  loc_CF5698: FLdRfVar var_2D0
  loc_CF569B: FLdPr Me
  loc_CF569E: MemLdRfVar from_stack_1.global_56
  loc_CF56A1: NewIfNullPr clscomercio
  loc_CF56A4: from_stack_1v = clscomercio.RsFrmGet()
  loc_CF56A9: FLdPr var_2D0
  loc_CF56AC:  = Me.Fields
  loc_CF56B1: FLdPr var_2D4
  loc_CF56B4: from_stack_2 = Me.Item(from_stack_1)
  loc_CF56B9: FLdPr var_2D8
  loc_CF56BC:  = Me.Value
  loc_CF56C1: FLdRfVar var_188
  loc_CF56C4: ConcatVar var_220
  loc_CF56C8: LitVarStr var_1CC, " No existe la relación"
  loc_CF56CD: ConcatVar var_244
  loc_CF56D1: CStrVarVal var_28C
  loc_CF56D5: FLdRfVar var_254
  loc_CF56D8: CI4Var
  loc_CF56DA: FLdI2 var_8A
  loc_CF56DD: ILdRf var_288
  loc_CF56E0: CUI1Str
  loc_CF56E2: FLdPr Me
  loc_CF56E5: MemLdI2 global_92
  loc_CF56E8: CUI1I2
  loc_CF56EA: ILdRf var_224
  loc_CF56ED: CI2Str
  loc_CF56EF: FLdPr Me
  loc_CF56F2: MemLdRfVar from_stack_1.global_68
  loc_CF56F5: NewIfNullPr clsliquante
  loc_CF56F8: Call clsliquante.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CF56FD: FFreeStr var_224 = "": var_288 = ""
  loc_CF5706: FFreeAd var_178 = "": var_210 = "": var_2A4 = "": var_2A8 = "": var_2D0 = "": var_2D4 = "": var_2D8 = ""
  loc_CF5719: FFreeVar var_188 = "": var_220 = "": var_254 = ""
  loc_CF5724: FLdPr Me
  loc_CF5727: MemLdRfVar from_stack_1.global_56
  loc_CF572A: NewIfNullPr clscomercio
  loc_CF572D: Call clscomercio.MoveSiguiente()
  loc_CF5732: Branch loc_CF30D6
  loc_CF5735: LitI2_Byte 0
  loc_CF5737: FLdPr Me
  loc_CF573A: Me.MousePointer = from_stack_1
  loc_CF573F: LitVar_FALSE
  loc_CF5743: PopAdLdVar
  loc_CF5744: FLdPr Me
  loc_CF5747: VCallAd Control_ID_ProgressBar
  loc_CF574A: FStAdFunc var_178
  loc_CF574D: FLdPr var_178
  loc_CF5750: LateIdSt
  loc_CF5755: FFree1Ad var_178
  loc_CF5758: LitStr "Proceso Terminado. Por favor controle el cálculo de tasas realizado"
  loc_CF575B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF5760: LitI4 0
  loc_CF5765: LitI4 0
  loc_CF576A: FLdRfVar var_2B4
  loc_CF576D: Redim
  loc_CF5777: FLdPr Me
  loc_CF577A: VCallAd Control_ID_CalculoCmd
  loc_CF577D: CVarAd
  loc_CF5781: ParmAry1St
  loc_CF5787: FLdRfVar var_2B4
  loc_CF578A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CF578F: FLdRfVar var_2B4
  loc_CF5792: Erase
  loc_CF5793: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_GotFocus() '9BD6F8
  'Data Table: 4D8CE4
  loc_9BD6E4: FLdPr Me
  loc_9BD6E7: VCallAd Control_ID_BimeLiquTxt
  loc_9BD6EA: CVarAd
  loc_9BD6EE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BD6F3: FFree1Var var_94 = ""
  loc_9BD6F6: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_Validate(Cancel As Boolean) 'A97F98
  'Data Table: 4D8CE4
  loc_A97EE8: FLdRfVar var_8A
  loc_A97EEB: FLdPr Me
  loc_A97EEE: VCallAd Control_ID_BimeLiquTxt
  loc_A97EF1: FStAdFunc var_88
  loc_A97EF4: FLdPr var_88
  loc_A97EF7:  = Me.Enabled
  loc_A97EFC: FLdI2 var_8A
  loc_A97EFF: FFree1Ad var_88
  loc_A97F02: BranchF loc_A97F94
  loc_A97F05: FLdRfVar var_90
  loc_A97F08: FLdPr Me
  loc_A97F0B: VCallAd Control_ID_BimeLiquTxt
  loc_A97F0E: FStAdFunc var_88
  loc_A97F11: FLdPr var_88
  loc_A97F14:  = Me.Text
  loc_A97F19: LitI2_Byte 0
  loc_A97F1B: LitI2_Byte 0
  loc_A97F1D: ILdRf var_90
  loc_A97F20: LitStr "bimestre"
  loc_A97F23: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A97F28: FStStrNoPop var_94
  loc_A97F2B: FLdPr Me
  loc_A97F2E: MemStStrCopy
  loc_A97F32: FFreeStr var_90 = ""
  loc_A97F39: FFree1Ad var_88
  loc_A97F3C: FLdPr Me
  loc_A97F3F: MemLdStr global_100
  loc_A97F42: LitStr vbNullString
  loc_A97F45: NeStr
  loc_A97F47: BranchF loc_A97F6D
  loc_A97F4A: FLdPr Me
  loc_A97F4D: MemLdStr global_100
  loc_A97F50: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A97F55: FLdPr Me
  loc_A97F58: VCallAd Control_ID_BimeLiquTxt
  loc_A97F5B: CVarAd
  loc_A97F5F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A97F64: FFree1Var var_A4 = ""
  loc_A97F67: LitI2_Byte &HFF
  loc_A97F69: IStI2 Cancel
  loc_A97F6C: ExitProcHresult
  loc_A97F6D: FLdRfVar var_90
  loc_A97F70: FLdPr Me
  loc_A97F73: VCallAd Control_ID_BimeLiquTxt
  loc_A97F76: FStAdFunc var_88
  loc_A97F79: FLdPr var_88
  loc_A97F7C:  = Me.Text
  loc_A97F81: ILdRf var_90
  loc_A97F84: CI2Str
  loc_A97F86: PopTmpLdAd2 var_8A
  loc_A97F89: Call Proc_327_25_A42574()
  loc_A97F8E: FFree1Str var_90
  loc_A97F91: FFree1Ad var_88
  loc_A97F94: ExitProcHresult
  loc_A97F95: ConcatStr
  loc_A97F96: CVarStr arg_6CDC
End Sub

Private Sub NumeCtaTxt_GotFocus() '9BC420
  'Data Table: 4D8CE4
  loc_9BC40C: FLdPrThis
  loc_9BC40D: VCallAd Control_ID_NumeCtaTxt
  loc_9BC410: CVarAd
  loc_9BC414: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC419: FFree1Var var_94 = ""
  loc_9BC41C: ExitProcHresult
  loc_9BC41F: CCyI2
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'AB5E6C
  'Data Table: 4D8CE4
  loc_AB5D90: LitStr "1234567890 "
  loc_AB5D93: FStStrCopy var_88
  loc_AB5D96: FLdRfVar var_88
  loc_AB5D99: ILdRf KeyAscii
  loc_AB5D9C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB5DA1: IStI2 KeyAscii
  loc_AB5DA4: FFree1Str var_88
  loc_AB5DA7: ILdI2 KeyAscii
  loc_AB5DAA: LitI2_Byte &H20
  loc_AB5DAC: EqI2
  loc_AB5DAD: BranchF loc_AB5E68
  loc_AB5DB0: LitI2_Byte 0
  loc_AB5DB2: IStI2 KeyAscii
  loc_AB5DB5: LitI2_Byte 1
  loc_AB5DB7: CUI1I2
  loc_AB5DB9: ImpAdStUI1 MemVar_D93038
  loc_AB5DBD: LitVar_Missing var_A8
  loc_AB5DC0: PopAdLdVar
  loc_AB5DC1: LitVarI4
  loc_AB5DC9: PopAdLdVar
  loc_AB5DCA: ImpAdLdRf MemVar_D94034
  loc_AB5DCD: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB5DD0: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_AB5DD5: FLdRfVar var_B0
  loc_AB5DD8: FLdRfVar var_AC
  loc_AB5DDB: ImpAdLdRf MemVar_D94034
  loc_AB5DDE: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB5DE1: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB5DE6: FLdPr var_AC
  loc_AB5DE9: from_stack_1 = clsbase.RecordCount
  loc_AB5DEE: ILdRf var_B0
  loc_AB5DF1: LitI4 0
  loc_AB5DF6: GtI4
  loc_AB5DF7: FFree1Ad var_AC
  loc_AB5DFA: BranchF loc_AB5E68
  loc_AB5DFD: FLdRfVar var_CC
  loc_AB5E00: FLdRfVar var_BC
  loc_AB5E03: LitVarStr var_98, "CuenCtct"
  loc_AB5E08: PopAdLdVar
  loc_AB5E09: FLdRfVar var_B8
  loc_AB5E0C: FLdRfVar var_B4
  loc_AB5E0F: FLdRfVar var_AC
  loc_AB5E12: ImpAdLdRf MemVar_D94034
  loc_AB5E15: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB5E18: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB5E1D: FLdPr var_AC
  loc_AB5E20: from_stack_1v = clsbase.RsFrmGet()
  loc_AB5E25: FLdPr var_B4
  loc_AB5E28:  = Me.Fields
  loc_AB5E2D: FLdPr var_B8
  loc_AB5E30: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5E35: FLdPr var_BC
  loc_AB5E38:  = Me.Value
  loc_AB5E3D: FLdRfVar var_CC
  loc_AB5E40: CStrVarTmp
  loc_AB5E41: FStStrNoPop var_88
  loc_AB5E44: FLdPr Me
  loc_AB5E47: VCallAd Control_ID_NumeCtaTxt
  loc_AB5E4A: FStAdFunc var_D0
  loc_AB5E4D: FLdPr var_D0
  loc_AB5E50: Me.Text = from_stack_1
  loc_AB5E55: FFree1Str var_88
  loc_AB5E58: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB5E65: FFree1Var var_CC = ""
  loc_AB5E68: ExitProcHresult
  loc_AB5E69: BranchF loc_AC598F
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'AF253C
  'Data Table: 4D8CE4
  loc_AF238C: FLdRfVar var_8A
  loc_AF238F: FLdPr Me
  loc_AF2392: VCallAd Control_ID_NumeCtaTxt
  loc_AF2395: FStAdFunc var_88
  loc_AF2398: FLdPr var_88
  loc_AF239B:  = Me.Enabled
  loc_AF23A0: FLdI2 var_8A
  loc_AF23A3: FFree1Ad var_88
  loc_AF23A6: BranchF loc_AF253B
  loc_AF23A9: FLdRfVar var_90
  loc_AF23AC: FLdPr Me
  loc_AF23AF: VCallAd Control_ID_NumeCtaTxt
  loc_AF23B2: FStAdFunc var_88
  loc_AF23B5: FLdPr var_88
  loc_AF23B8:  = Me.Text
  loc_AF23BD: LitI2_Byte &HFF
  loc_AF23BF: LitI2_Byte 0
  loc_AF23C1: ILdRf var_90
  loc_AF23C4: LitStr "Numero de Cuenta"
  loc_AF23C7: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AF23CC: FStStrNoPop var_94
  loc_AF23CF: FLdPr Me
  loc_AF23D2: MemStStrCopy
  loc_AF23D6: FFreeStr var_90 = ""
  loc_AF23DD: FFree1Ad var_88
  loc_AF23E0: FLdPr Me
  loc_AF23E3: MemLdStr global_100
  loc_AF23E6: LitStr vbNullString
  loc_AF23E9: NeStr
  loc_AF23EB: BranchF loc_AF2410
  loc_AF23EE: FLdPr Me
  loc_AF23F1: MemLdStr global_100
  loc_AF23F4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF23F9: FLdPr Me
  loc_AF23FC: VCallAd Control_ID_NumeCtaTxt
  loc_AF23FF: CVarAd
  loc_AF2403: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF2408: FFree1Var var_A4 = ""
  loc_AF240B: LitI2_Byte &HFF
  loc_AF240D: IStI2 Cancel
  loc_AF2410: FLdRfVar var_90
  loc_AF2413: FLdPr Me
  loc_AF2416: VCallAd Control_ID_NumeCtaTxt
  loc_AF2419: FStAdFunc var_88
  loc_AF241C: FLdPr var_88
  loc_AF241F:  = Me.Text
  loc_AF2424: ILdRf var_90
  loc_AF2427: CR8Str
  loc_AF2429: LitI2_Byte 0
  loc_AF242B: CR8I2
  loc_AF242C: GtR4
  loc_AF242D: FFree1Str var_90
  loc_AF2430: FFree1Ad var_88
  loc_AF2433: BranchF loc_AF253B
  loc_AF2436: FLdRfVar var_90
  loc_AF2439: FLdPr Me
  loc_AF243C: VCallAd Control_ID_NumeCtaTxt
  loc_AF243F: FStAdFunc var_88
  loc_AF2442: FLdPr var_88
  loc_AF2445:  = Me.Text
  loc_AF244A: FLdPr Me
  loc_AF244D: MemLdRfVar from_stack_1.global_88
  loc_AF2450: NewIfNullRf
  loc_AF2454: LitStr "Titular"
  loc_AF2457: ILdRf var_90
  loc_AF245A: LitI2_Byte 2
  loc_AF245C: CStrUI1
  loc_AF245E: FStStrNoPop var_94
  loc_AF2461: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_AF2466: FFreeStr var_94 = ""
  loc_AF246D: FFree1Ad var_88
  loc_AF2470: BranchF loc_AF24CC
  loc_AF2473: FLdRfVar var_90
  loc_AF2476: FLdPr Me
  loc_AF2479: MemLdRfVar from_stack_1.global_88
  loc_AF247C: NewIfNullPr tblPersona
  loc_AF247F: from_stack_1v = tblPersona.CucuPersGet()
  loc_AF2484: ILdRf var_90
  loc_AF2487: FLdPr Me
  loc_AF248A: VCallAd Control_ID_CucuPersLbl
  loc_AF248D: FStAdFunc var_88
  loc_AF2490: FLdPr var_88
  loc_AF2493: Me.Caption = from_stack_1
  loc_AF2498: FFree1Str var_90
  loc_AF249B: FFree1Ad var_88
  loc_AF249E: FLdRfVar var_90
  loc_AF24A1: FLdPr Me
  loc_AF24A4: MemLdRfVar from_stack_1.global_88
  loc_AF24A7: NewIfNullPr tblPersona
  loc_AF24AA: from_stack_1v = tblPersona.DetaPersGet()
  loc_AF24AF: ILdRf var_90
  loc_AF24B2: FLdPr Me
  loc_AF24B5: VCallAd Control_ID_DetaPersLbl
  loc_AF24B8: FStAdFunc var_88
  loc_AF24BB: FLdPr var_88
  loc_AF24BE: Me.Caption = from_stack_1
  loc_AF24C3: FFree1Str var_90
  loc_AF24C6: FFree1Ad var_88
  loc_AF24C9: Branch loc_AF253B
  loc_AF24CC: FLdRfVar var_90
  loc_AF24CF: FLdPr Me
  loc_AF24D2: MemLdRfVar from_stack_1.global_88
  loc_AF24D5: NewIfNullPr tblPersona
  loc_AF24D8: from_stack_1v = tblPersona.MsgErrorGet()
  loc_AF24DD: ILdRf var_90
  loc_AF24E0: FLdPr Me
  loc_AF24E3: MemStStrCopy
  loc_AF24E7: FFree1Str var_90
  loc_AF24EA: FLdPr Me
  loc_AF24ED: MemLdStr global_100
  loc_AF24F0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF24F5: LitStr vbNullString
  loc_AF24F8: FLdPr Me
  loc_AF24FB: VCallAd Control_ID_CucuPersLbl
  loc_AF24FE: FStAdFunc var_88
  loc_AF2501: FLdPr var_88
  loc_AF2504: Me.Caption = from_stack_1
  loc_AF2509: FFree1Ad var_88
  loc_AF250C: LitStr vbNullString
  loc_AF250F: FLdPr Me
  loc_AF2512: VCallAd Control_ID_DetaPersLbl
  loc_AF2515: FStAdFunc var_88
  loc_AF2518: FLdPr var_88
  loc_AF251B: Me.Caption = from_stack_1
  loc_AF2520: FFree1Ad var_88
  loc_AF2523: FLdPr Me
  loc_AF2526: VCallAd Control_ID_NumeCtaTxt
  loc_AF2529: CVarAd
  loc_AF252D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF2532: FFree1Var var_A4 = ""
  loc_AF2535: LitI2_Byte &HFF
  loc_AF2537: IStI2 Cancel
  loc_AF253A: ExitProcHresult
  loc_AF253B: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_GotFocus() '9BCE88
  'Data Table: 4D8CE4
  loc_9BCE74: FLdPr Me
  loc_9BCE77: VCallAd Control_ID_CodiTiliTxt
  loc_9BCE7A: CVarAd
  loc_9BCE7E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCE83: FFree1Var var_94 = ""
  loc_9BCE86: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_KeyPress(KeyAscii As Integer) '9C867C
  'Data Table: 4D8CE4
  loc_9C8664: LitStr "1234567890"
  loc_9C8667: FStStrCopy var_88
  loc_9C866A: FLdRfVar var_88
  loc_9C866D: ILdRf KeyAscii
  loc_9C8670: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C8675: IStI2 KeyAscii
  loc_9C8678: FFree1Str var_88
  loc_9C867B: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_Validate(Cancel As Boolean) 'B302A4
  'Data Table: 4D8CE4
  loc_B2FFC4: FLdRfVar var_8A
  loc_B2FFC7: FLdPr Me
  loc_B2FFCA: VCallAd Control_ID_CodiTiliTxt
  loc_B2FFCD: FStAdFunc var_88
  loc_B2FFD0: FLdPr var_88
  loc_B2FFD3:  = Me.Enabled
  loc_B2FFD8: FLdI2 var_8A
  loc_B2FFDB: FFree1Ad var_88
  loc_B2FFDE: BranchF loc_B302A2
  loc_B2FFE1: FLdRfVar var_90
  loc_B2FFE4: FLdPr Me
  loc_B2FFE7: VCallAd Control_ID_CodiTiliTxt
  loc_B2FFEA: FStAdFunc var_88
  loc_B2FFED: FLdPr var_88
  loc_B2FFF0:  = Me.Text
  loc_B2FFF5: ILdRf var_90
  loc_B2FFF8: LitI2_Byte 7
  loc_B2FFFA: CUI1I2
  loc_B2FFFC: ImpAdCallI2  = Proc_18_25_A7CBA0()
  loc_B30001: FStStrNoPop var_94
  loc_B30004: FLdPr Me
  loc_B30007: MemStStrCopy
  loc_B3000B: FFreeStr var_90 = ""
  loc_B30012: FFree1Ad var_88
  loc_B30015: FLdPr Me
  loc_B30018: MemLdStr global_100
  loc_B3001B: LitStr vbNullString
  loc_B3001E: NeStr
  loc_B30020: BranchF loc_B30046
  loc_B30023: FLdPr Me
  loc_B30026: MemLdStr global_100
  loc_B30029: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3002E: FLdPr Me
  loc_B30031: VCallAd Control_ID_CodiTiliTxt
  loc_B30034: CVarAd
  loc_B30038: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B3003D: FFree1Var var_A4 = ""
  loc_B30040: LitI2_Byte &HFF
  loc_B30042: IStI2 Cancel
  loc_B30045: ExitProcHresult
  loc_B30046: FLdPr Me
  loc_B30049: MemLdI2 global_94
  loc_B3004C: FLdPr Me
  loc_B3004F: MemLdRfVar from_stack_1.global_92
  loc_B30052: FLdPr Me
  loc_B30055: MemLdI2 global_96
  loc_B30058: ForI2 var_A8
  loc_B3005E: FLdRfVar var_90
  loc_B30061: FLdPr Me
  loc_B30064: VCallAd Control_ID_PeriLiquTxt
  loc_B30067: FStAdFunc var_88
  loc_B3006A: FLdPr var_88
  loc_B3006D:  = Me.Text
  loc_B30072: FLdRfVar var_94
  loc_B30075: FLdPr Me
  loc_B30078: VCallAd Control_ID_CodiTiliTxt
  loc_B3007B: FStAdFunc var_AC
  loc_B3007E: FLdPr var_AC
  loc_B30081:  = Me.Text
  loc_B30086: ILdRf var_94
  loc_B30089: CUI1Str
  loc_B3008B: LitI2_Byte 7
  loc_B3008D: CUI1I2
  loc_B3008F: FLdPr Me
  loc_B30092: MemLdI2 global_92
  loc_B30095: CStrUI1
  loc_B30097: FStStrNoPop var_B0
  loc_B3009A: ILdRf var_90
  loc_B3009D: CI2Str
  loc_B3009F: ImpAdCallI2  = Proc_18_58_AAF980(, )
  loc_B300A4: FStStrNoPop var_B4
  loc_B300A7: FLdPr Me
  loc_B300AA: MemStStrCopy
  loc_B300AE: FFreeStr var_90 = "": var_B0 = "": var_94 = ""
  loc_B300B9: FFreeAd var_88 = ""
  loc_B300C0: FLdPr Me
  loc_B300C3: MemLdStr global_100
  loc_B300C6: LitStr vbNullString
  loc_B300C9: NeStr
  loc_B300CB: BranchF loc_B30133
  loc_B300CE: LitStr "No esta definido el vencimiento para el mes numero: "
  loc_B300D1: FLdPr Me
  loc_B300D4: MemLdI2 global_92
  loc_B300D7: CStrUI1
  loc_B300D9: FStStrNoPop var_90
  loc_B300DC: ConcatStr
  loc_B300DD: FStStrNoPop var_94
  loc_B300E0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B300E5: FFreeStr var_90 = ""
  loc_B300EC: LitI2_Byte 0
  loc_B300EE: FLdPr Me
  loc_B300F1: VCallAd Control_ID_Label4
  loc_B300F4: FStAdFunc var_88
  loc_B300F7: FLdPr var_88
  loc_B300FA: Me.Visible = from_stack_1b
  loc_B300FF: FFree1Ad var_88
  loc_B30102: LitVar_FALSE
  loc_B30106: PopAdLdVar
  loc_B30107: FLdPr Me
  loc_B3010A: VCallAd Control_ID_FeveVencMsk
  loc_B3010D: FStAdFunc var_88
  loc_B30110: FLdPr var_88
  loc_B30113: LateIdSt
  loc_B30118: FFree1Ad var_88
  loc_B3011B: FLdPr Me
  loc_B3011E: VCallAd Control_ID_CodiTiliTxt
  loc_B30121: CVarAd
  loc_B30125: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B3012A: FFree1Var var_A4 = ""
  loc_B3012D: LitI2_Byte &HFF
  loc_B3012F: IStI2 Cancel
  loc_B30132: ExitProcHresult
  loc_B30133: FLdPr Me
  loc_B30136: MemLdI2 global_92
  loc_B30139: LitI2_Byte 1
  loc_B3013B: EqI2
  loc_B3013C: BranchF loc_B30297
  loc_B3013F: FLdRfVar var_90
  loc_B30142: FLdPr Me
  loc_B30145: VCallAd Control_ID_PeriLiquTxt
  loc_B30148: FStAdFunc var_88
  loc_B3014B: FLdPr var_88
  loc_B3014E:  = Me.Text
  loc_B30153: FLdRfVar var_94
  loc_B30156: FLdPr Me
  loc_B30159: VCallAd Control_ID_CodiTiliTxt
  loc_B3015C: FStAdFunc var_AC
  loc_B3015F: FLdPr var_AC
  loc_B30162:  = Me.Text
  loc_B30167: ILdRf var_94
  loc_B3016A: CUI1Str
  loc_B3016C: LitI2_Byte 7
  loc_B3016E: CUI1I2
  loc_B30170: FLdPr Me
  loc_B30173: MemLdI2 global_92
  loc_B30176: CStrUI1
  loc_B30178: FStStrNoPop var_B0
  loc_B3017B: ILdRf var_90
  loc_B3017E: CI2Str
  loc_B30180: ImpAdCallI2  = Proc_18_60_AAEDA4(, )
  loc_B30185: FStStrNoPop var_B4
  loc_B30188: FLdPr Me
  loc_B3018B: MemStStrCopy
  loc_B3018F: FFreeStr var_90 = "": var_B0 = "": var_94 = ""
  loc_B3019A: FFreeAd var_88 = ""
  loc_B301A1: FLdPr Me
  loc_B301A4: MemLdStr global_100
  loc_B301A7: LitStr vbNullString
  loc_B301AA: NeStr
  loc_B301AC: BranchF loc_B301FE
  loc_B301AF: LitStr "No esta definido el vencimiento para el ANUAL"
  loc_B301B2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B301B7: LitI2_Byte 0
  loc_B301B9: FLdPr Me
  loc_B301BC: VCallAd Control_ID_Label4
  loc_B301BF: FStAdFunc var_88
  loc_B301C2: FLdPr var_88
  loc_B301C5: Me.Visible = from_stack_1b
  loc_B301CA: FFree1Ad var_88
  loc_B301CD: LitVar_FALSE
  loc_B301D1: PopAdLdVar
  loc_B301D2: FLdPr Me
  loc_B301D5: VCallAd Control_ID_FeveVencMsk
  loc_B301D8: FStAdFunc var_88
  loc_B301DB: FLdPr var_88
  loc_B301DE: LateIdSt
  loc_B301E3: FFree1Ad var_88
  loc_B301E6: FLdPr Me
  loc_B301E9: VCallAd Control_ID_CodiTiliTxt
  loc_B301EC: CVarAd
  loc_B301F0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B301F5: FFree1Var var_A4 = ""
  loc_B301F8: LitI2_Byte &HFF
  loc_B301FA: IStI2 Cancel
  loc_B301FD: ExitProcHresult
  loc_B301FE: FLdRfVar var_90
  loc_B30201: FLdPr Me
  loc_B30204: VCallAd Control_ID_PeriLiquTxt
  loc_B30207: FStAdFunc var_88
  loc_B3020A: FLdPr var_88
  loc_B3020D:  = Me.Text
  loc_B30212: FLdRfVar var_94
  loc_B30215: FLdPr Me
  loc_B30218: VCallAd Control_ID_CodiTiliTxt
  loc_B3021B: FStAdFunc var_AC
  loc_B3021E: FLdPr var_AC
  loc_B30221:  = Me.Text
  loc_B30226: ILdRf var_94
  loc_B30229: CUI1Str
  loc_B3022B: LitI2_Byte 7
  loc_B3022D: CUI1I2
  loc_B3022F: FLdPr Me
  loc_B30232: MemLdI2 global_92
  loc_B30235: CUI1I2
  loc_B30237: ILdRf var_90
  loc_B3023A: CI2Str
  loc_B3023C: ImpAdCallI2  = Proc_270_62_ABCC3C()
  loc_B30241: CVarStr var_A4
  loc_B30244: PopAdLdVar
  loc_B30245: FLdPr Me
  loc_B30248: VCallAd Control_ID_FeanVencMsk
  loc_B3024B: FStAdFunc var_D8
  loc_B3024E: FLdPr var_D8
  loc_B30251: LateIdSt
  loc_B30256: FFreeStr var_90 = ""
  loc_B3025D: FFreeAd var_88 = "": var_AC = ""
  loc_B30266: FFree1Var var_A4 = ""
  loc_B30269: LitI2_Byte &HFF
  loc_B3026B: FLdPr Me
  loc_B3026E: VCallAd Control_ID_Label5
  loc_B30271: FStAdFunc var_88
  loc_B30274: FLdPr var_88
  loc_B30277: Me.Visible = from_stack_1b
  loc_B3027C: FFree1Ad var_88
  loc_B3027F: LitVar_TRUE var_C4
  loc_B30282: PopAdLdVar
  loc_B30283: FLdPr Me
  loc_B30286: VCallAd Control_ID_FeanVencMsk
  loc_B30289: FStAdFunc var_88
  loc_B3028C: FLdPr var_88
  loc_B3028F: LateIdSt
  loc_B30294: FFree1Ad var_88
  loc_B30297: FLdPr Me
  loc_B3029A: MemLdRfVar from_stack_1.global_92
  loc_B3029D: NextI2 var_A8, loc_B3005E
  loc_B302A2: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_GotFocus() '9BBDF0
  'Data Table: 4D8CE4
  loc_9BBDDC: FLdPr Me
  loc_9BBDDF: VCallAd Control_ID_PeriLiquTxt
  loc_9BBDE2: CVarAd
  loc_9BBDE6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BBDEB: FFree1Var var_94 = ""
  loc_9BBDEE: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_KeyPress(KeyAscii As Integer) '9C81BC
  'Data Table: 4D8CE4
  loc_9C81A4: LitStr "1234567890"
  loc_9C81A7: FStStrCopy var_88
  loc_9C81AA: FLdRfVar var_88
  loc_9C81AD: ILdRf KeyAscii
  loc_9C81B0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C81B5: IStI2 KeyAscii
  loc_9C81B8: FFree1Str var_88
  loc_9C81BB: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_Validate(Cancel As Boolean) 'A6A368
  'Data Table: 4D8CE4
  loc_A6A300: FLdRfVar var_8C
  loc_A6A303: FLdPr Me
  loc_A6A306: VCallAd Control_ID_PeriLiquTxt
  loc_A6A309: FStAdFunc var_88
  loc_A6A30C: FLdPr var_88
  loc_A6A30F:  = Me.Text
  loc_A6A314: LitI2_Byte 0
  loc_A6A316: ILdRf var_8C
  loc_A6A319: LitStr "el Año"
  loc_A6A31C: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6A321: FStStrNoPop var_90
  loc_A6A324: FLdPr Me
  loc_A6A327: MemStStrCopy
  loc_A6A32B: FFreeStr var_8C = ""
  loc_A6A332: FFree1Ad var_88
  loc_A6A335: FLdPr Me
  loc_A6A338: MemLdStr global_100
  loc_A6A33B: LitStr vbNullString
  loc_A6A33E: NeStr
  loc_A6A340: BranchF loc_A6A365
  loc_A6A343: FLdPr Me
  loc_A6A346: MemLdStr global_100
  loc_A6A349: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6A34E: FLdPr Me
  loc_A6A351: VCallAd Control_ID_PeriLiquTxt
  loc_A6A354: CVarAd
  loc_A6A358: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6A35D: FFree1Var var_A0 = ""
  loc_A6A360: LitI2_Byte &HFF
  loc_A6A362: IStI2 Cancel
  loc_A6A365: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'A8B88C
  'Data Table: 4D8CE4
  loc_A8B808: FLdRfVar var_90
  loc_A8B80B: FLdPr Me
  loc_A8B80E: VCallAd Control_ID_NumeCtaTxt
  loc_A8B811: FStAdFunc var_8C
  loc_A8B814: FLdPr var_8C
  loc_A8B817:  = Me.Text
  loc_A8B81C: FLdZeroAd var_90
  loc_A8B81F: CVarStr var_B0
  loc_A8B822: LitI4 9
  loc_A8B827: FLdRfVar var_A0
  loc_A8B82A: ImpAdCallFPR4  = Chr()
  loc_A8B82F: FLdRfVar var_A0
  loc_A8B832: ConcatVar var_C0
  loc_A8B836: FLdRfVar var_C8
  loc_A8B839: FLdPr Me
  loc_A8B83C: VCallAd Control_ID_DetaPersLbl
  loc_A8B83F: FStAdFunc var_C4
  loc_A8B842: FLdPr var_C4
  loc_A8B845:  = Me.Caption
  loc_A8B84A: FLdZeroAd var_C8
  loc_A8B84D: CVarStr var_D8
  loc_A8B850: ConcatVar var_E8
  loc_A8B854: CStrVarTmp
  loc_A8B855: FStStr var_88
  loc_A8B858: FFreeAd var_8C = ""
  loc_A8B85F: FFreeVar var_B0 = "": var_A0 = "": var_C0 = "": var_D8 = ""
  loc_A8B86C: FLdRfVar var_88
  loc_A8B86F: CDargRef
  loc_A8B873: FLdPr Me
  loc_A8B876: VCallAd Control_ID_CuentasFlex
  loc_A8B879: FStAdFunc var_8C
  loc_A8B87C: FLdPr var_8C
  loc_A8B87F: LateIdCall
  loc_A8B887: FFree1Ad var_8C
  loc_A8B88A: ExitProcHresult
  loc_A8B88B: CI4Str
End Sub

Private Sub Form_Load() 'AF7CDC
  'Data Table: 4D8CE4
  loc_AF7B18: LitI2_Byte 0
  loc_AF7B1A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF7B1F: CVarDate var_A4
  loc_AF7B23: FLdRfVar var_B4
  loc_AF7B26: ImpAdCallFPR4  = Year()
  loc_AF7B2B: FLdRfVar var_B4
  loc_AF7B2E: CStrVarVal var_B8
  loc_AF7B32: FLdPr Me
  loc_AF7B35: VCallAd Control_ID_PeriLiquTxt
  loc_AF7B38: FStAdFunc var_BC
  loc_AF7B3B: FLdPr var_BC
  loc_AF7B3E: Me.Text = from_stack_1
  loc_AF7B43: FFree1Str var_B8
  loc_AF7B46: FFree1Ad var_BC
  loc_AF7B49: FFreeVar var_A4 = ""
  loc_AF7B50: LitI2_Byte 0
  loc_AF7B52: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF7B57: CVarDate var_A4
  loc_AF7B5B: FLdRfVar var_B4
  loc_AF7B5E: ImpAdCallFPR4  = Month()
  loc_AF7B63: FLdRfVar var_B4
  loc_AF7B66: LitVarI2 var_CC, 3
  loc_AF7B6B: DivVar var_DC
  loc_AF7B6F: FnCIntVar
  loc_AF7B71: CStrUI1
  loc_AF7B73: FStStrNoPop var_B8
  loc_AF7B76: FLdPr Me
  loc_AF7B79: VCallAd Control_ID_BimeLiquTxt
  loc_AF7B7C: FStAdFunc var_BC
  loc_AF7B7F: FLdPr var_BC
  loc_AF7B82: Me.Text = from_stack_1
  loc_AF7B87: FFree1Str var_B8
  loc_AF7B8A: FFree1Ad var_BC
  loc_AF7B8D: FFreeVar var_A4 = ""
  loc_AF7B94: LitStr "0"
  loc_AF7B97: FLdPr Me
  loc_AF7B9A: VCallAd Control_ID_CodiTiliTxt
  loc_AF7B9D: FStAdFunc var_BC
  loc_AF7BA0: FLdPr var_BC
  loc_AF7BA3: Me.Text = from_stack_1
  loc_AF7BA8: FFree1Ad var_BC
  loc_AF7BAB: LitStr "0"
  loc_AF7BAE: FLdPr Me
  loc_AF7BB1: VCallAd Control_ID_DesdeCodiComeTxt
  loc_AF7BB4: FStAdFunc var_BC
  loc_AF7BB7: FLdPr var_BC
  loc_AF7BBA: Me.Text = from_stack_1
  loc_AF7BBF: FFree1Ad var_BC
  loc_AF7BC2: LitStr "99999999"
  loc_AF7BC5: FLdPr Me
  loc_AF7BC8: VCallAd Control_ID_HastaCodiComeTxt
  loc_AF7BCB: FStAdFunc var_BC
  loc_AF7BCE: FLdPr var_BC
  loc_AF7BD1: Me.Text = from_stack_1
  loc_AF7BD6: FFree1Ad var_BC
  loc_AF7BD9: LitI2_Byte &HFF
  loc_AF7BDB: FLdPr Me
  loc_AF7BDE: VCallAd Control_ID_CompletaOpt
  loc_AF7BE1: FStAdFunc var_BC
  loc_AF7BE4: FLdPr var_BC
  loc_AF7BE7: Me.Value = from_stack_1b
  loc_AF7BEC: FFree1Ad var_BC
  loc_AF7BEF: LitStr "0"
  loc_AF7BF2: FLdPr Me
  loc_AF7BF5: VCallAd Control_ID_NumeCtaTxt
  loc_AF7BF8: FStAdFunc var_BC
  loc_AF7BFB: FLdPr var_BC
  loc_AF7BFE: Me.Text = from_stack_1
  loc_AF7C03: FFree1Ad var_BC
  loc_AF7C06: FLdPr Me
  loc_AF7C09: VCallAd Control_ID_CuentasFlex
  loc_AF7C0C: FStAdFunc var_E0
  loc_AF7C0F: FLdPr var_E0
  loc_AF7C12: LateIdCall
  loc_AF7C1A: LitVarI4
  loc_AF7C22: PopAdLdVar
  loc_AF7C23: FLdPr var_E0
  loc_AF7C26: LateIdSt
  loc_AF7C2B: LitVarI4
  loc_AF7C33: PopAdLdVar
  loc_AF7C34: LitVarI4
  loc_AF7C3C: PopAdLdVar
  loc_AF7C3D: FLdPr var_E0
  loc_AF7C40: LateIdCallSt
  loc_AF7C48: LitVarI4
  loc_AF7C50: PopAdLdVar
  loc_AF7C51: LitVarI4
  loc_AF7C59: PopAdLdVar
  loc_AF7C5A: FLdPr var_E0
  loc_AF7C5D: LateIdCallSt
  loc_AF7C65: LitVarI4
  loc_AF7C6D: PopAdLdVar
  loc_AF7C6E: LitVarI4
  loc_AF7C76: PopAdLdVar
  loc_AF7C77: LitVarStr var_110, "Cuenta"
  loc_AF7C7C: PopAdLdVar
  loc_AF7C7D: FLdPr var_E0
  loc_AF7C80: LateIdCallSt
  loc_AF7C88: LitVarI4
  loc_AF7C90: PopAdLdVar
  loc_AF7C91: LitVarI4
  loc_AF7C99: PopAdLdVar
  loc_AF7C9A: LitVarStr var_110, "Apellido y Nombre"
  loc_AF7C9F: PopAdLdVar
  loc_AF7CA0: FLdPr var_E0
  loc_AF7CA3: LateIdCallSt
  loc_AF7CAB: LitNothing
  loc_AF7CAD: FStAd var_E0 
  loc_AF7CB1: FLdRfVar var_B8
  loc_AF7CB4: FLdPr Me
  loc_AF7CB7: VCallAd Control_ID_BimeLiquTxt
  loc_AF7CBA: FStAdFunc var_BC
  loc_AF7CBD: FLdPr var_BC
  loc_AF7CC0:  = Me.Text
  loc_AF7CC5: ILdRf var_B8
  loc_AF7CC8: CI2Str
  loc_AF7CCA: PopTmpLdAd2 var_122
  loc_AF7CCD: Call Proc_327_25_A42574()
  loc_AF7CD2: FFree1Str var_B8
  loc_AF7CD5: FFree1Ad var_BC
  loc_AF7CD8: ExitProcHresult
  loc_AF7CD9: ConcatStr
  loc_AF7CDA: CVarStr arg_6CE0
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BADCC
  'Data Table: 4D8CE4
  loc_9BADB8: ILdI2 KeyCode
  loc_9BADBB: CI4UI1
  loc_9BADBC: LitI4 &H78
  loc_9BADC1: EqI4
  loc_9BADC2: BranchF loc_9BADCA
  loc_9BADC5: Call cmdSalir_Click()
  loc_9BADCA: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9C87AC
  'Data Table: 4D8CE4
  loc_9C8794: ILdRf Me
  loc_9C8797: FStAdNoPop
  loc_9C879B: ImpAdLdRf MemVar_D9C5D8
  loc_9C879E: NewIfNullPr Global
  loc_9C87A1: Global.Unload from_stack_1
  loc_9C87A6: FFree1Ad var_88
  loc_9C87A9: ExitProcHresult
End Sub

Private Sub CodiTiliCmd_Click() 'AA47AC
  'Data Table: 4D8CE4
  loc_AA46E8: LitI2_Byte 2
  loc_AA46EA: CUI1I2
  loc_AA46EC: ImpAdLdRf MemVar_D94160
  loc_AA46EF: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA46F2: Call dlgBuscarTipodeLiquidacion.ByOficinaPut(from_stack_1v)
  loc_AA46F7: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = 7"
  loc_AA46FA: ImpAdLdRf MemVar_D94160
  loc_AA46FD: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4700: Call dlgBuscarTipodeLiquidacion.sPasaSelectPut(from_stack_1v)
  loc_AA4705: LitVar_Missing var_A4
  loc_AA4708: PopAdLdVar
  loc_AA4709: LitVarI4
  loc_AA4711: PopAdLdVar
  loc_AA4712: ImpAdLdRf MemVar_D94160
  loc_AA4715: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4718: dlgBuscarTipodeLiquidacion.Show from_stack_1, from_stack_2
  loc_AA471D: FLdRfVar var_A8
  loc_AA4720: ImpAdLdRf MemVar_D94160
  loc_AA4723: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4726: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA472B: ILdRf var_A8
  loc_AA472E: LitStr vbNullString
  loc_AA4731: NeStr
  loc_AA4733: FFree1Str var_A8
  loc_AA4736: BranchF loc_AA4797
  loc_AA4739: FLdRfVar var_A8
  loc_AA473C: ImpAdLdRf MemVar_D94160
  loc_AA473F: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4742: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA4747: ILdRf var_A8
  loc_AA474A: FLdPr Me
  loc_AA474D: VCallAd Control_ID_
  loc_AA4750: FStAdFunc var_AC
  loc_AA4753: FLdPr var_AC
  loc_AA4756: dlgBuscarTipodeLiquidacion.TextBox.Text = from_stack_1
  loc_AA475B: FFree1Str var_A8
  loc_AA475E: FFree1Ad var_AC
  loc_AA4761: LitStr vbNullString
  loc_AA4764: ImpAdLdRf MemVar_D94160
  loc_AA4767: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA476A: Call dlgBuscarTipodeLiquidacion.sPasaCodigoPut(from_stack_1v)
  loc_AA476F: FLdRfVar var_A8
  loc_AA4772: ImpAdLdRf MemVar_D94160
  loc_AA4775: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4778: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaDetalleGet()
  loc_AA477D: ILdRf var_A8
  loc_AA4780: FLdPr Me
  loc_AA4783: VCallAd Control_ID_
  loc_AA4786: FStAdFunc var_AC
  loc_AA4789: FLdPr var_AC
  loc_AA478C: dlgBuscarTipodeLiquidacion.Label.Caption = from_stack_1
  loc_AA4791: FFree1Str var_A8
  loc_AA4794: FFree1Ad var_AC
  loc_AA4797: FLdPr Me
  loc_AA479A: VCallAd Control_ID_CodiTiliTxt
  loc_AA479D: CVarAd
  loc_AA47A1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA47A6: FFree1Var var_BC = ""
  loc_AA47A9: ExitProcHresult
  loc_AA47AA: FLdPr arg_6C00
End Sub

Private Function Proc_327_24_A6AF44() 'A6AF44
  'Data Table: 4D8CE4
  loc_A6AED0: FLdPr Me
  loc_A6AED3: VCallAd Control_ID_CuentasFlex
  loc_A6AED6: FStAdFunc var_88
  loc_A6AED9: FLdPr var_88
  loc_A6AEDC: LateIdCall
  loc_A6AEE4: LitVarI4
  loc_A6AEEC: PopAdLdVar
  loc_A6AEED: FLdPr var_88
  loc_A6AEF0: LateIdSt
  loc_A6AEF5: LitVarI4
  loc_A6AEFD: PopAdLdVar
  loc_A6AEFE: LitVarI4
  loc_A6AF06: PopAdLdVar
  loc_A6AF07: LitVarStr var_D8, "Cuenta"
  loc_A6AF0C: PopAdLdVar
  loc_A6AF0D: FLdPr var_88
  loc_A6AF10: LateIdCallSt
  loc_A6AF18: LitVarI4
  loc_A6AF20: PopAdLdVar
  loc_A6AF21: LitVarI4
  loc_A6AF29: PopAdLdVar
  loc_A6AF2A: LitVarStr var_D8, "Apellido y Nombre"
  loc_A6AF2F: PopAdLdVar
  loc_A6AF30: FLdPr var_88
  loc_A6AF33: LateIdCallSt
  loc_A6AF3B: LitNothing
  loc_A6AF3D: FStAd var_88 
  loc_A6AF41: ExitProcHresult
End Function

Private Function Proc_327_25_A42574(arg_C) 'A42574
  'Data Table: 4D8CE4
  loc_A4251C: ILdI2 arg_C
  loc_A4251F: FStI2 var_86
  loc_A42522: FLdI2 var_86
  loc_A42525: LitI2_Byte 1
  loc_A42527: EqI2
  loc_A42528: BranchF loc_A4253E
  loc_A4252B: LitI2_Byte 1
  loc_A4252D: FLdPr Me
  loc_A42530: MemStI2 global_94
  loc_A42533: LitI2_Byte 2
  loc_A42535: FLdPr Me
  loc_A42538: MemStI2 global_96
  loc_A4253B: Branch loc_A42573
  loc_A4253E: FLdI2 var_86
  loc_A42541: LitI2_Byte 2
  loc_A42543: EqI2
  loc_A42544: BranchF loc_A4255A
  loc_A42547: LitI2_Byte 3
  loc_A42549: FLdPr Me
  loc_A4254C: MemStI2 global_94
  loc_A4254F: LitI2_Byte 4
  loc_A42551: FLdPr Me
  loc_A42554: MemStI2 global_96
  loc_A42557: Branch loc_A42573
  loc_A4255A: FLdI2 var_86
  loc_A4255D: LitI2_Byte 3
  loc_A4255F: EqI2
  loc_A42560: BranchF loc_A42573
  loc_A42563: LitI2_Byte 6
  loc_A42565: FLdPr Me
  loc_A42568: MemStI2 global_94
  loc_A4256B: LitI2_Byte 6
  loc_A4256D: FLdPr Me
  loc_A42570: MemStI2 global_96
  loc_A42573: ExitProcHresult
End Function
