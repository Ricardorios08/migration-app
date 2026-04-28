VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmCalculodeLiquidacionCementerio
  Caption = "Calculo de liquidacion de CEMENTERIO"
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
    Picture = "frmCalculodeLiquidacionCementerio.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame1
    Caption = "CÁLCULO DE CEMENTERIO 03-04-2025 v1"
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
        Picture = "frmCalculodeLiquidacionCementerio.frx":0252
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
        OleObjectBlob = "frmCalculodeLiquidacionCementerio.frx":0334
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
      Picture = "frmCalculodeLiquidacionCementerio.frx":0420
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
      Picture = "frmCalculodeLiquidacionCementerio.frx":051A
      Style = 1
    End
    Begin VB.TextBox HastaCodiDifuTxt
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
    Begin VB.TextBox DesdeCodiDifuTxt
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
      OleObjectBlob = "frmCalculodeLiquidacionCementerio.frx":0848
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 480
      Top = 7080
      Width = 8775
      Height = 495
      Visible = 0   'False
      TabIndex = 19
      OleObjectBlob = "frmCalculodeLiquidacionCementerio.frx":08F8
    End
    Begin MSMask.MaskEdBox FeanVencMsk
      Left = 7680
      Top = 3000
      Width = 1335
      Height = 345
      Visible = 0   'False
      TabIndex = 18
      OleObjectBlob = "frmCalculodeLiquidacionCementerio.frx":0960
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

Attribute VB_Name = "frmCalculodeLiquidacionCementerio"


Private Sub DesdeCodiDifuTxt_GotFocus() '9BB8E0
  'Data Table: 4DA358
  loc_9BB8CC: FLdPr Me
  loc_9BB8CF: VCallAd Control_ID_DesdeCodiDifuTxt
  loc_9BB8D2: CVarAd
  loc_9BB8D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB8DB: FFree1Var var_94 = ""
  loc_9BB8DE: ExitProcHresult
End Sub

Private Sub DesdeCodiDifuTxt_KeyPress(KeyAscii As Integer) '9C9094
  'Data Table: 4DA358
  loc_9C907C: LitStr "1234567890"
  loc_9C907F: FStStrCopy var_88
  loc_9C9082: FLdRfVar var_88
  loc_9C9085: ILdRf KeyAscii
  loc_9C9088: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C908D: IStI2 KeyAscii
  loc_9C9090: FFree1Str var_88
  loc_9C9093: ExitProcHresult
End Sub

Private Sub DesdeCodiDifuTxt_Validate(Cancel As Boolean) 'A839F4
  'Data Table: 4DA358
  loc_A8396C: FLdRfVar var_8A
  loc_A8396F: FLdPr Me
  loc_A83972: VCallAd Control_ID_DesdeCodiDifuTxt
  loc_A83975: FStAdFunc var_88
  loc_A83978: FLdPr var_88
  loc_A8397B:  = Me.Enabled
  loc_A83980: FLdI2 var_8A
  loc_A83983: LitI2_Byte &HFF
  loc_A83985: EqI2
  loc_A83986: FFree1Ad var_88
  loc_A83989: BranchF loc_A839F3
  loc_A8398C: FLdRfVar var_90
  loc_A8398F: FLdPr Me
  loc_A83992: VCallAd Control_ID_DesdeCodiDifuTxt
  loc_A83995: FStAdFunc var_88
  loc_A83998: FLdPr var_88
  loc_A8399B:  = Me.Text
  loc_A839A0: LitI2_Byte &HFF
  loc_A839A2: LitI2_Byte 0
  loc_A839A4: ILdRf var_90
  loc_A839A7: LitStr "Desde Cuenta de difunto"
  loc_A839AA: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A839AF: FStStrNoPop var_94
  loc_A839B2: FLdPr Me
  loc_A839B5: MemStStrCopy
  loc_A839B9: FFreeStr var_90 = ""
  loc_A839C0: FFree1Ad var_88
  loc_A839C3: FLdPr Me
  loc_A839C6: MemLdStr global_100
  loc_A839C9: LitStr vbNullString
  loc_A839CC: NeStr
  loc_A839CE: BranchF loc_A839F3
  loc_A839D1: FLdPr Me
  loc_A839D4: MemLdStr global_100
  loc_A839D7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A839DC: FLdPr Me
  loc_A839DF: VCallAd Control_ID_DesdeCodiDifuTxt
  loc_A839E2: CVarAd
  loc_A839E6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A839EB: FFree1Var var_A4 = ""
  loc_A839EE: LitI2_Byte &HFF
  loc_A839F0: IStI2 Cancel
  loc_A839F3: ExitProcHresult
End Sub

Private Sub CuentasFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A8794C
  'Data Table: 4DA358
  loc_A878B8: ILdI2 KeyCode
  loc_A878BB: CI4UI1
  loc_A878BC: LitI4 &H2E
  loc_A878C1: EqI4
  loc_A878C2: BranchF loc_A87924
  loc_A878C5: FLdPr Me
  loc_A878C8: VCallAd Control_ID_CuentasFlex
  loc_A878CB: FStAdFunc var_88
  loc_A878CE: FLdPr var_88
  loc_A878D1: LateIdLdVar var_98 DispID_4 0
  loc_A878D8: CI4Var
  loc_A878DA: LitI4 1
  loc_A878DF: GtI4
  loc_A878E0: FFree1Ad var_88
  loc_A878E3: FFree1Var var_98 = ""
  loc_A878E6: BranchF loc_A87924
  loc_A878E9: OnErrorGoto loc_A87924
  loc_A878EC: FLdPr Me
  loc_A878EF: VCallAd Control_ID_CuentasFlex
  loc_A878F2: FStAdFunc var_88
  loc_A878F5: FLdPr var_88
  loc_A878F8: LateIdLdVar var_98 DispID_10 0
  loc_A878FF: CI4Var
  loc_A87901: CVarI4
  loc_A87905: PopAdLdVar
  loc_A87906: FLdPr Me
  loc_A87909: VCallAd Control_ID_CuentasFlex
  loc_A8790C: FStAdFunc var_BC
  loc_A8790F: FLdPr var_BC
  loc_A87912: LateIdCall
  loc_A8791A: FFreeAd var_88 = ""
  loc_A87921: FFree1Var var_98 = ""
  loc_A87924: FLdRfVar var_C0
  loc_A87927: ImpAdCallI2 Err 'rtcErrObj
  loc_A8792C: FStAdFunc var_88
  loc_A8792F: FLdPr var_88
  loc_A87932:  = Err.Number
  loc_A87937: ILdRf var_C0
  loc_A8793A: LitI4 &H753F
  loc_A8793F: EqI4
  loc_A87940: FFree1Ad var_88
  loc_A87943: BranchF loc_A8794B
  loc_A87946: Call Proc_317_24_A69A44()
  loc_A8794B: ExitProcHresult
End Sub

Private Sub HastaCodiDifuTxt_GotFocus() '9BB850
  'Data Table: 4DA358
  loc_9BB83C: FLdPr Me
  loc_9BB83F: VCallAd Control_ID_HastaCodiDifuTxt
  loc_9BB842: CVarAd
  loc_9BB846: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB84B: FFree1Var var_94 = ""
  loc_9BB84E: ExitProcHresult
End Sub

Private Sub HastaCodiDifuTxt_KeyPress(KeyAscii As Integer) '9C97B4
  'Data Table: 4DA358
  loc_9C979C: LitStr "1234567890"
  loc_9C979F: FStStrCopy var_88
  loc_9C97A2: FLdRfVar var_88
  loc_9C97A5: ILdRf KeyAscii
  loc_9C97A8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C97AD: IStI2 KeyAscii
  loc_9C97B0: FFree1Str var_88
  loc_9C97B3: ExitProcHresult
End Sub

Private Sub HastaCodiDifuTxt_Validate(Cancel As Boolean) 'A81D0C
  'Data Table: 4DA358
  loc_A81C84: FLdRfVar var_8A
  loc_A81C87: FLdPr Me
  loc_A81C8A: VCallAd Control_ID_HastaCodiDifuTxt
  loc_A81C8D: FStAdFunc var_88
  loc_A81C90: FLdPr var_88
  loc_A81C93:  = Me.Enabled
  loc_A81C98: FLdI2 var_8A
  loc_A81C9B: LitI2_Byte &HFF
  loc_A81C9D: EqI2
  loc_A81C9E: FFree1Ad var_88
  loc_A81CA1: BranchF loc_A81D0B
  loc_A81CA4: FLdRfVar var_90
  loc_A81CA7: FLdPr Me
  loc_A81CAA: VCallAd Control_ID_HastaCodiDifuTxt
  loc_A81CAD: FStAdFunc var_88
  loc_A81CB0: FLdPr var_88
  loc_A81CB3:  = Me.Text
  loc_A81CB8: LitI2_Byte 0
  loc_A81CBA: LitI2_Byte 0
  loc_A81CBC: ILdRf var_90
  loc_A81CBF: LitStr "Hasta Cuenta de cementerio"
  loc_A81CC2: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A81CC7: FStStrNoPop var_94
  loc_A81CCA: FLdPr Me
  loc_A81CCD: MemStStrCopy
  loc_A81CD1: FFreeStr var_90 = ""
  loc_A81CD8: FFree1Ad var_88
  loc_A81CDB: FLdPr Me
  loc_A81CDE: MemLdStr global_100
  loc_A81CE1: LitStr vbNullString
  loc_A81CE4: NeStr
  loc_A81CE6: BranchF loc_A81D0B
  loc_A81CE9: FLdPr Me
  loc_A81CEC: MemLdStr global_100
  loc_A81CEF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A81CF4: FLdPr Me
  loc_A81CF7: VCallAd Control_ID_HastaCodiDifuTxt
  loc_A81CFA: CVarAd
  loc_A81CFE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A81D03: FFree1Var var_A4 = ""
  loc_A81D06: LitI2_Byte &HFF
  loc_A81D08: IStI2 Cancel
  loc_A81D0B: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_GotFocus() '9BB9B8
  'Data Table: 4DA358
  loc_9BB9A4: FLdPr Me
  loc_9BB9A7: VCallAd Control_ID_BimeLiquTxt
  loc_9BB9AA: CVarAd
  loc_9BB9AE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BB9B3: FFree1Var var_94 = ""
  loc_9BB9B6: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_Validate(Cancel As Boolean) 'A97818
  'Data Table: 4DA358
  loc_A97768: FLdRfVar var_8A
  loc_A9776B: FLdPr Me
  loc_A9776E: VCallAd Control_ID_BimeLiquTxt
  loc_A97771: FStAdFunc var_88
  loc_A97774: FLdPr var_88
  loc_A97777:  = Me.Enabled
  loc_A9777C: FLdI2 var_8A
  loc_A9777F: FFree1Ad var_88
  loc_A97782: BranchF loc_A97814
  loc_A97785: FLdRfVar var_90
  loc_A97788: FLdPr Me
  loc_A9778B: VCallAd Control_ID_BimeLiquTxt
  loc_A9778E: FStAdFunc var_88
  loc_A97791: FLdPr var_88
  loc_A97794:  = Me.Text
  loc_A97799: LitI2_Byte 0
  loc_A9779B: LitI2_Byte 0
  loc_A9779D: ILdRf var_90
  loc_A977A0: LitStr "bimestre"
  loc_A977A3: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A977A8: FStStrNoPop var_94
  loc_A977AB: FLdPr Me
  loc_A977AE: MemStStrCopy
  loc_A977B2: FFreeStr var_90 = ""
  loc_A977B9: FFree1Ad var_88
  loc_A977BC: FLdPr Me
  loc_A977BF: MemLdStr global_100
  loc_A977C2: LitStr vbNullString
  loc_A977C5: NeStr
  loc_A977C7: BranchF loc_A977ED
  loc_A977CA: FLdPr Me
  loc_A977CD: MemLdStr global_100
  loc_A977D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A977D5: FLdPr Me
  loc_A977D8: VCallAd Control_ID_BimeLiquTxt
  loc_A977DB: CVarAd
  loc_A977DF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A977E4: FFree1Var var_A4 = ""
  loc_A977E7: LitI2_Byte &HFF
  loc_A977E9: IStI2 Cancel
  loc_A977EC: ExitProcHresult
  loc_A977ED: FLdRfVar var_90
  loc_A977F0: FLdPr Me
  loc_A977F3: VCallAd Control_ID_BimeLiquTxt
  loc_A977F6: FStAdFunc var_88
  loc_A977F9: FLdPr var_88
  loc_A977FC:  = Me.Text
  loc_A97801: ILdRf var_90
  loc_A97804: CI2Str
  loc_A97806: PopTmpLdAd2 var_8A
  loc_A97809: Call Proc_317_25_9E0100()
  loc_A9780E: FFree1Str var_90
  loc_A97811: FFree1Ad var_88
  loc_A97814: ExitProcHresult
End Sub

Private Sub CalculoCmd_Click() 'CDE224
  'Data Table: 4DA358
  loc_CDB9F8: LitI2_Byte 0
  loc_CDB9FA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CDB9FF: FStFPR8 var_108
  loc_CDBA02: LitI2_Byte 0
  loc_CDBA04: PopTmpLdAd2 var_182
  loc_CDBA07: Call PeriLiquTxt_Validate(from_stack_1v)
  loc_CDBA0C: FLdPr Me
  loc_CDBA0F: MemLdStr global_100
  loc_CDBA12: LitStr vbNullString
  loc_CDBA15: NeStr
  loc_CDBA17: BranchF loc_CDBA1B
  loc_CDBA1A: ExitProcHresult
  loc_CDBA1B: LitI2_Byte 0
  loc_CDBA1D: PopTmpLdAd2 var_182
  loc_CDBA20: Call BimeLiquTxt_Validate(from_stack_1v)
  loc_CDBA25: FLdPr Me
  loc_CDBA28: MemLdStr global_100
  loc_CDBA2B: LitStr vbNullString
  loc_CDBA2E: NeStr
  loc_CDBA30: BranchF loc_CDBA34
  loc_CDBA33: ExitProcHresult
  loc_CDBA34: LitI2_Byte 0
  loc_CDBA36: PopTmpLdAd2 var_182
  loc_CDBA39: Call CodiTiliTxt_Validate(from_stack_1v)
  loc_CDBA3E: FLdPr Me
  loc_CDBA41: MemLdStr global_100
  loc_CDBA44: LitStr vbNullString
  loc_CDBA47: NeStr
  loc_CDBA49: BranchF loc_CDBA4D
  loc_CDBA4C: ExitProcHresult
  loc_CDBA4D: LitStr vbNullString
  loc_CDBA50: FStStrCopy var_164
  loc_CDBA53: LitI2_Byte 1
  loc_CDBA55: FLdPr Me
  loc_CDBA58: MemLdRfVar from_stack_1.global_92
  loc_CDBA5B: FLdPr Me
  loc_CDBA5E: VCallAd Control_ID_CuentasFlex
  loc_CDBA61: FStAdFunc var_188
  loc_CDBA64: FLdPr var_188
  loc_CDBA67: LateIdLdVar var_198 DispID_4 0
  loc_CDBA6E: CI4Var
  loc_CDBA70: LitI4 1
  loc_CDBA75: SubI4
  loc_CDBA76: CI2I4
  loc_CDBA77: FFree1Ad var_188
  loc_CDBA7A: FFree1Var var_198 = ""
  loc_CDBA7D: ForI2 var_19C
  loc_CDBA83: FLdPr Me
  loc_CDBA86: MemLdI2 global_92
  loc_CDBA89: CI4UI1
  loc_CDBA8A: CVarI4
  loc_CDBA8E: PopAdLdVar
  loc_CDBA8F: LitVarI4
  loc_CDBA97: PopAdLdVar
  loc_CDBA98: FLdPr Me
  loc_CDBA9B: VCallAd Control_ID_CuentasFlex
  loc_CDBA9E: FStAdFunc var_188
  loc_CDBAA1: FLdPr var_188
  loc_CDBAA4: LateIdCallLdVar
  loc_CDBAAE: PopAd
  loc_CDBAB0: ILdRf var_164
  loc_CDBAB3: CVarStr var_284
  loc_CDBAB6: LitStr ","
  loc_CDBAB9: FLdPr Me
  loc_CDBABC: MemLdI2 global_92
  loc_CDBABF: CI4UI1
  loc_CDBAC0: CVarI4
  loc_CDBAC4: PopAdLdVar
  loc_CDBAC5: LitVarI4
  loc_CDBACD: PopAdLdVar
  loc_CDBACE: FLdPr Me
  loc_CDBAD1: VCallAd Control_ID_CuentasFlex
  loc_CDBAD4: FStAdFunc var_220
  loc_CDBAD7: FLdPr var_220
  loc_CDBADA: LateIdCallLdVar
  loc_CDBAE4: CStrVarTmp
  loc_CDBAE5: FStStrNoPop var_234
  loc_CDBAE8: ConcatStr
  loc_CDBAE9: CVarStr var_264
  loc_CDBAEC: FLdRfVar var_198
  loc_CDBAEF: CStrVarTmp
  loc_CDBAF0: CVarStr var_254
  loc_CDBAF3: ILdRf var_164
  loc_CDBAF6: LitStr vbNullString
  loc_CDBAF9: EqStr
  loc_CDBAFB: CVarBoolI2 var_244
  loc_CDBAFF: FLdRfVar var_274
  loc_CDBB02: ImpAdCallFPR4  = IIf(, , )
  loc_CDBB07: FLdRfVar var_274
  loc_CDBB0A: ConcatVar var_294
  loc_CDBB0E: CStrVarTmp
  loc_CDBB0F: FStStr var_164
  loc_CDBB12: FFree1Str var_234
  loc_CDBB15: FFreeAd var_188 = ""
  loc_CDBB1C: FFreeVar var_198 = "": var_230 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = ""
  loc_CDBB2D: FLdPr Me
  loc_CDBB30: MemLdRfVar from_stack_1.global_92
  loc_CDBB33: NextI2 var_19C, loc_CDBA83
  loc_CDBB38: LitStr "SELECT ConcTili, CoreTili, DescTili, DeanTili, GastTili, CogaTili FROM tipoliqu "
  loc_CDBB3B: LitStr " WHERE CodiOfic = 4"
  loc_CDBB3E: ConcatStr
  loc_CDBB3F: FStStrNoPop var_234
  loc_CDBB42: LitStr " AND CodiTili = "
  loc_CDBB45: ConcatStr
  loc_CDBB46: FStStrNoPop var_29C
  loc_CDBB49: FLdRfVar var_298
  loc_CDBB4C: FLdPr Me
  loc_CDBB4F: VCallAd Control_ID_CodiTiliTxt
  loc_CDBB52: FStAdFunc var_188
  loc_CDBB55: FLdPr var_188
  loc_CDBB58:  = Me.Text
  loc_CDBB5D: ILdRf var_298
  loc_CDBB60: ConcatStr
  loc_CDBB61: FStStrNoPop var_2A0
  loc_CDBB64: LitStr " ORDER BY CodiOfic, CodiTili"
  loc_CDBB67: ConcatStr
  loc_CDBB68: FStStrNoPop var_2A4
  loc_CDBB6B: FLdPr Me
  loc_CDBB6E: MemLdRfVar from_stack_1.global_60
  loc_CDBB71: NewIfNullPr clstipoliqu
  loc_CDBB74: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_CDBB79: FFreeStr var_234 = "": var_29C = "": var_298 = "": var_2A0 = ""
  loc_CDBB86: FFree1Ad var_188
  loc_CDBB89: FLdRfVar var_2A8
  loc_CDBB8C: FLdPr Me
  loc_CDBB8F: MemLdRfVar from_stack_1.global_60
  loc_CDBB92: NewIfNullPr clstipoliqu
  loc_CDBB95: from_stack_1 = clstipoliqu.RecordCount
  loc_CDBB9A: ILdRf var_2A8
  loc_CDBB9D: LitI4 1
  loc_CDBBA2: EqI4
  loc_CDBBA3: BranchF loc_CDBC94
  loc_CDBBA6: FLdRfVar var_2B0
  loc_CDBBA9: FLdPr Me
  loc_CDBBAC: MemLdRfVar from_stack_1.global_60
  loc_CDBBAF: NewIfNullPr clstipoliqu
  loc_CDBBB2: from_stack_1 = clstipoliqu.DescTili
  loc_CDBBB7: FLdFPR8 var_2B0
  loc_CDBBBA: FnCDblR8
  loc_CDBBBC: FStFPR8 var_AC
  loc_CDBBBF: FLdRfVar var_2B0
  loc_CDBBC2: FLdPr Me
  loc_CDBBC5: MemLdRfVar from_stack_1.global_60
  loc_CDBBC8: NewIfNullPr clstipoliqu
  loc_CDBBCB: from_stack_1 = clstipoliqu.DeanTili
  loc_CDBBD0: FLdFPR8 var_2B0
  loc_CDBBD3: FnCDblR8
  loc_CDBBD5: FStFPR8 var_180
  loc_CDBBD8: FLdRfVar var_2B0
  loc_CDBBDB: FLdPr Me
  loc_CDBBDE: MemLdRfVar from_stack_1.global_60
  loc_CDBBE1: NewIfNullPr clstipoliqu
  loc_CDBBE4: from_stack_1 = clstipoliqu.GastTili
  loc_CDBBE9: FLdFPR8 var_2B0
  loc_CDBBEC: FnCDblR8
  loc_CDBBEE: FStFPR8 var_BC
  loc_CDBBF1: FLdRfVar var_234
  loc_CDBBF4: FLdPr Me
  loc_CDBBF7: MemLdRfVar from_stack_1.global_60
  loc_CDBBFA: NewIfNullPr clstipoliqu
  loc_CDBBFD: from_stack_1 = clstipoliqu.CogaTili
  loc_CDBC02: ILdRf var_234
  loc_CDBC05: CI2Str
  loc_CDBC07: FStI2 var_BE
  loc_CDBC0A: FFree1Str var_234
  loc_CDBC0D: FLdRfVar var_234
  loc_CDBC10: FLdPr Me
  loc_CDBC13: MemLdRfVar from_stack_1.global_60
  loc_CDBC16: NewIfNullPr clstipoliqu
  loc_CDBC19: from_stack_1 = clstipoliqu.CoreTili
  loc_CDBC1E: ILdRf var_234
  loc_CDBC21: LitStr vbNullString
  loc_CDBC24: EqStr
  loc_CDBC26: FFree1Str var_234
  loc_CDBC29: BranchF loc_CDBC38
  loc_CDBC2C: LitStr "El concepto de recargo no esta parametrizado en el tipo de liquidacion. Verifique"
  loc_CDBC2F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CDBC34: ExitProcHresult
  loc_CDBC35: Branch loc_CDBC4F
  loc_CDBC38: FLdRfVar var_234
  loc_CDBC3B: FLdPr Me
  loc_CDBC3E: MemLdRfVar from_stack_1.global_60
  loc_CDBC41: NewIfNullPr clstipoliqu
  loc_CDBC44: from_stack_1 = clstipoliqu.CoreTili
  loc_CDBC49: FLdZeroAd var_234
  loc_CDBC4C: FStStr var_CC
  loc_CDBC4F: FLdRfVar var_234
  loc_CDBC52: FLdPr Me
  loc_CDBC55: MemLdRfVar from_stack_1.global_60
  loc_CDBC58: NewIfNullPr clstipoliqu
  loc_CDBC5B: from_stack_1 = clstipoliqu.ConcTili
  loc_CDBC60: ILdRf var_234
  loc_CDBC63: LitStr vbNullString
  loc_CDBC66: EqStr
  loc_CDBC68: FFree1Str var_234
  loc_CDBC6B: BranchF loc_CDBC7A
  loc_CDBC6E: LitStr "El concepto no esta parametrizado en el tipo de liquidacion. Verifique"
  loc_CDBC71: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CDBC76: ExitProcHresult
  loc_CDBC77: Branch loc_CDBC91
  loc_CDBC7A: FLdRfVar var_234
  loc_CDBC7D: FLdPr Me
  loc_CDBC80: MemLdRfVar from_stack_1.global_60
  loc_CDBC83: NewIfNullPr clstipoliqu
  loc_CDBC86: from_stack_1 = clstipoliqu.ConcTili
  loc_CDBC8B: FLdZeroAd var_234
  loc_CDBC8E: FStStr var_D0
  loc_CDBC91: Branch loc_CDBCAB
  loc_CDBC94: LitI2_Byte 0
  loc_CDBC96: CR8I2
  loc_CDBC97: FStFPR8 var_AC
  loc_CDBC9A: LitI2_Byte 0
  loc_CDBC9C: CR8I2
  loc_CDBC9D: FStFPR8 var_180
  loc_CDBCA0: LitI2_Byte 0
  loc_CDBCA2: CR8I2
  loc_CDBCA3: FStFPR8 var_BC
  loc_CDBCA6: LitI2_Byte 0
  loc_CDBCA8: FStI2 var_BE
  loc_CDBCAB: ImpAdCallFPR4 Proc_270_19_A5AB74()
  loc_CDBCB0: FStFPR8 var_C8
  loc_CDBCB3: LitI2_Byte 0
  loc_CDBCB5: CR8I2
  loc_CDBCB6: FStFPR8 var_94
  loc_CDBCB9: FLdRfVar var_234
  loc_CDBCBC: FLdPr Me
  loc_CDBCBF: VCallAd Control_ID_PeriLiquTxt
  loc_CDBCC2: FStAdFunc var_188
  loc_CDBCC5: FLdPr var_188
  loc_CDBCC8:  = Me.Text
  loc_CDBCCD: FLdRfVar var_298
  loc_CDBCD0: FLdPr Me
  loc_CDBCD3: VCallAd Control_ID_CodiTiliTxt
  loc_CDBCD6: FStAdFunc var_220
  loc_CDBCD9: FLdPr var_220
  loc_CDBCDC:  = Me.Text
  loc_CDBCE1: ILdRf var_298
  loc_CDBCE4: CUI1Str
  loc_CDBCE6: ILdRf var_234
  loc_CDBCE9: CI2Str
  loc_CDBCEB: FLdPr Me
  loc_CDBCEE: MemLdRfVar from_stack_1.global_68
  loc_CDBCF1: NewIfNullPr clsliquceme
  loc_CDBCF4: Call clsliquceme.BorraLiquidacion(from_stack_1v, from_stack_2v)
  loc_CDBCF9: FFreeStr var_234 = ""
  loc_CDBD00: FFreeAd var_188 = ""
  loc_CDBD07: FLdRfVar var_234
  loc_CDBD0A: FLdPr Me
  loc_CDBD0D: VCallAd Control_ID_PeriLiquTxt
  loc_CDBD10: FStAdFunc var_188
  loc_CDBD13: FLdPr var_188
  loc_CDBD16:  = Me.Text
  loc_CDBD1B: FLdRfVar var_298
  loc_CDBD1E: FLdPr Me
  loc_CDBD21: VCallAd Control_ID_CodiTiliTxt
  loc_CDBD24: FStAdFunc var_220
  loc_CDBD27: FLdPr var_220
  loc_CDBD2A:  = Me.Text
  loc_CDBD2F: FLdRfVar var_182
  loc_CDBD32: ILdRf var_298
  loc_CDBD35: CUI1Str
  loc_CDBD37: LitI2_Byte 4
  loc_CDBD39: CUI1I2
  loc_CDBD3B: ILdRf var_234
  loc_CDBD3E: CI2Str
  loc_CDBD40: FLdPr Me
  loc_CDBD43: MemLdRfVar from_stack_1.global_52
  loc_CDBD46: NewIfNullPr clsliquidacion
  loc_CDBD49: from_stack_4v = clsliquidacion.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CDBD4E: FLdI2 var_182
  loc_CDBD51: FStI2 var_8A
  loc_CDBD54: FFreeStr var_234 = ""
  loc_CDBD5B: FFreeAd var_188 = ""
  loc_CDBD62: FLdRfVar var_234
  loc_CDBD65: FLdPr Me
  loc_CDBD68: VCallAd Control_ID_PeriLiquTxt
  loc_CDBD6B: FStAdFunc var_188
  loc_CDBD6E: FLdPr var_188
  loc_CDBD71:  = Me.Text
  loc_CDBD76: FLdRfVar var_298
  loc_CDBD79: FLdPr Me
  loc_CDBD7C: VCallAd Control_ID_CodiTiliTxt
  loc_CDBD7F: FStAdFunc var_220
  loc_CDBD82: FLdPr var_220
  loc_CDBD85:  = Me.Text
  loc_CDBD8A: FLdRfVar var_29C
  loc_CDBD8D: FLdPr Me
  loc_CDBD90: VCallAd Control_ID_BimeLiquTxt
  loc_CDBD93: FStAdFunc var_2B4
  loc_CDBD96: FLdPr var_2B4
  loc_CDBD99:  = Me.Text
  loc_CDBD9E: FLdRfVar var_182
  loc_CDBDA1: FLdPr Me
  loc_CDBDA4: VCallAd Control_ID_CompletaOpt
  loc_CDBDA7: FStAdFunc var_2B8
  loc_CDBDAA: FLdPr var_2B8
  loc_CDBDAD:  = Me.Value
  loc_CDBDB2: LitVarI2 var_230, 1
  loc_CDBDB7: LitVarI2 var_198, 0
  loc_CDBDBC: FLdI2 var_182
  loc_CDBDBF: LitI2_Byte &HFF
  loc_CDBDC1: EqI2
  loc_CDBDC2: CVarBoolI2 var_1AC
  loc_CDBDC6: FLdRfVar var_254
  loc_CDBDC9: ImpAdCallFPR4  = IIf(, , )
  loc_CDBDCE: FLdRfVar var_254
  loc_CDBDD1: CUI1Var
  loc_CDBDD3: ILdRf var_29C
  loc_CDBDD6: CI2Str
  loc_CDBDD8: FLdI2 var_8A
  loc_CDBDDB: ILdRf var_298
  loc_CDBDDE: CUI1Str
  loc_CDBDE0: LitI2_Byte 4
  loc_CDBDE2: CUI1I2
  loc_CDBDE4: ILdRf var_234
  loc_CDBDE7: CI2Str
  loc_CDBDE9: FLdPr Me
  loc_CDBDEC: MemLdRfVar from_stack_1.global_52
  loc_CDBDEF: NewIfNullPr clsliquidacion
  loc_CDBDF2: Call clsliquidacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CDBDF7: FFreeStr var_234 = "": var_298 = ""
  loc_CDBE00: FFreeAd var_188 = "": var_220 = "": var_2B4 = ""
  loc_CDBE0B: FFreeVar var_1AC = "": var_198 = "": var_230 = ""
  loc_CDBE16: ILdRf var_164
  loc_CDBE19: LitStr vbNullString
  loc_CDBE1C: NeStr
  loc_CDBE1E: BranchF loc_CDBE38
  loc_CDBE21: LitStr " WHERE difunto.CodiDifu IN ("
  loc_CDBE24: ILdRf var_164
  loc_CDBE27: ConcatStr
  loc_CDBE28: FStStrNoPop var_234
  loc_CDBE2B: LitStr ")"
  loc_CDBE2E: ConcatStr
  loc_CDBE2F: FStStr var_168
  loc_CDBE32: FFree1Str var_234
  loc_CDBE35: Branch loc_CDBE8A
  loc_CDBE38: LitStr " WHERE difunto.CodiDifu >= "
  loc_CDBE3B: FLdRfVar var_234
  loc_CDBE3E: FLdPr Me
  loc_CDBE41: VCallAd Control_ID_DesdeCodiDifuTxt
  loc_CDBE44: FStAdFunc var_188
  loc_CDBE47: FLdPr var_188
  loc_CDBE4A:  = Me.Text
  loc_CDBE4F: ILdRf var_234
  loc_CDBE52: ConcatStr
  loc_CDBE53: FStStrNoPop var_298
  loc_CDBE56: LitStr " AND difunto.CodiDifu <= "
  loc_CDBE59: ConcatStr
  loc_CDBE5A: FStStrNoPop var_2A0
  loc_CDBE5D: FLdRfVar var_29C
  loc_CDBE60: FLdPr Me
  loc_CDBE63: VCallAd Control_ID_HastaCodiDifuTxt
  loc_CDBE66: FStAdFunc var_220
  loc_CDBE69: FLdPr var_220
  loc_CDBE6C:  = Me.Text
  loc_CDBE71: ILdRf var_29C
  loc_CDBE74: ConcatStr
  loc_CDBE75: FStStr var_168
  loc_CDBE78: FFreeStr var_234 = "": var_298 = "": var_2A0 = ""
  loc_CDBE83: FFreeAd var_188 = ""
  loc_CDBE8A: FLdPr Me
  loc_CDBE8D: MemLdI2 global_94
  loc_CDBE90: FLdPr Me
  loc_CDBE93: MemLdRfVar from_stack_1.global_92
  loc_CDBE96: FLdPr Me
  loc_CDBE99: MemLdI2 global_96
  loc_CDBE9C: ForI2 var_2BC
  loc_CDBEA2: FLdPr Me
  loc_CDBEA5: MemLdI2 global_92
  loc_CDBEA8: FStI2 var_2BE
  loc_CDBEAB: FLdI2 var_2BE
  loc_CDBEAE: LitI2_Byte 1
  loc_CDBEB0: EqI2
  loc_CDBEB1: BranchF loc_CDBF0B
  loc_CDBEB4: FLdRfVar var_234
  loc_CDBEB7: FLdPr Me
  loc_CDBEBA: VCallAd Control_ID_PeriLiquTxt
  loc_CDBEBD: FStAdFunc var_188
  loc_CDBEC0: FLdPr var_188
  loc_CDBEC3:  = Me.Text
  loc_CDBEC8: FLdRfVar var_298
  loc_CDBECB: FLdPr Me
  loc_CDBECE: VCallAd Control_ID_CodiTiliTxt
  loc_CDBED1: FStAdFunc var_220
  loc_CDBED4: FLdPr var_220
  loc_CDBED7:  = Me.Text
  loc_CDBEDC: ILdRf var_298
  loc_CDBEDF: CUI1Str
  loc_CDBEE1: LitI2_Byte 4
  loc_CDBEE3: CUI1I2
  loc_CDBEE5: FLdPr Me
  loc_CDBEE8: MemLdI2 global_92
  loc_CDBEEB: CUI1I2
  loc_CDBEED: ILdRf var_234
  loc_CDBEF0: CI2Str
  loc_CDBEF2: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CDBEF7: FStStr var_120
  loc_CDBEFA: FFreeStr var_234 = ""
  loc_CDBF01: FFreeAd var_188 = ""
  loc_CDBF08: Branch loc_CDC0E8
  loc_CDBF0B: FLdI2 var_2BE
  loc_CDBF0E: LitI2_Byte 2
  loc_CDBF10: EqI2
  loc_CDBF11: BranchF loc_CDBF6B
  loc_CDBF14: FLdRfVar var_234
  loc_CDBF17: FLdPr Me
  loc_CDBF1A: VCallAd Control_ID_PeriLiquTxt
  loc_CDBF1D: FStAdFunc var_188
  loc_CDBF20: FLdPr var_188
  loc_CDBF23:  = Me.Text
  loc_CDBF28: FLdRfVar var_298
  loc_CDBF2B: FLdPr Me
  loc_CDBF2E: VCallAd Control_ID_CodiTiliTxt
  loc_CDBF31: FStAdFunc var_220
  loc_CDBF34: FLdPr var_220
  loc_CDBF37:  = Me.Text
  loc_CDBF3C: ILdRf var_298
  loc_CDBF3F: CUI1Str
  loc_CDBF41: LitI2_Byte 4
  loc_CDBF43: CUI1I2
  loc_CDBF45: FLdPr Me
  loc_CDBF48: MemLdI2 global_92
  loc_CDBF4B: CUI1I2
  loc_CDBF4D: ILdRf var_234
  loc_CDBF50: CI2Str
  loc_CDBF52: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CDBF57: FStStr var_124
  loc_CDBF5A: FFreeStr var_234 = ""
  loc_CDBF61: FFreeAd var_188 = ""
  loc_CDBF68: Branch loc_CDC0E8
  loc_CDBF6B: FLdI2 var_2BE
  loc_CDBF6E: LitI2_Byte 3
  loc_CDBF70: EqI2
  loc_CDBF71: BranchF loc_CDBFCB
  loc_CDBF74: FLdRfVar var_234
  loc_CDBF77: FLdPr Me
  loc_CDBF7A: VCallAd Control_ID_PeriLiquTxt
  loc_CDBF7D: FStAdFunc var_188
  loc_CDBF80: FLdPr var_188
  loc_CDBF83:  = Me.Text
  loc_CDBF88: FLdRfVar var_298
  loc_CDBF8B: FLdPr Me
  loc_CDBF8E: VCallAd Control_ID_CodiTiliTxt
  loc_CDBF91: FStAdFunc var_220
  loc_CDBF94: FLdPr var_220
  loc_CDBF97:  = Me.Text
  loc_CDBF9C: ILdRf var_298
  loc_CDBF9F: CUI1Str
  loc_CDBFA1: LitI2_Byte 4
  loc_CDBFA3: CUI1I2
  loc_CDBFA5: FLdPr Me
  loc_CDBFA8: MemLdI2 global_92
  loc_CDBFAB: CUI1I2
  loc_CDBFAD: ILdRf var_234
  loc_CDBFB0: CI2Str
  loc_CDBFB2: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CDBFB7: FStStr var_128
  loc_CDBFBA: FFreeStr var_234 = ""
  loc_CDBFC1: FFreeAd var_188 = ""
  loc_CDBFC8: Branch loc_CDC0E8
  loc_CDBFCB: FLdI2 var_2BE
  loc_CDBFCE: LitI2_Byte 4
  loc_CDBFD0: EqI2
  loc_CDBFD1: BranchF loc_CDC02B
  loc_CDBFD4: FLdRfVar var_234
  loc_CDBFD7: FLdPr Me
  loc_CDBFDA: VCallAd Control_ID_PeriLiquTxt
  loc_CDBFDD: FStAdFunc var_188
  loc_CDBFE0: FLdPr var_188
  loc_CDBFE3:  = Me.Text
  loc_CDBFE8: FLdRfVar var_298
  loc_CDBFEB: FLdPr Me
  loc_CDBFEE: VCallAd Control_ID_CodiTiliTxt
  loc_CDBFF1: FStAdFunc var_220
  loc_CDBFF4: FLdPr var_220
  loc_CDBFF7:  = Me.Text
  loc_CDBFFC: ILdRf var_298
  loc_CDBFFF: CUI1Str
  loc_CDC001: LitI2_Byte 4
  loc_CDC003: CUI1I2
  loc_CDC005: FLdPr Me
  loc_CDC008: MemLdI2 global_92
  loc_CDC00B: CUI1I2
  loc_CDC00D: ILdRf var_234
  loc_CDC010: CI2Str
  loc_CDC012: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CDC017: FStStr var_12C
  loc_CDC01A: FFreeStr var_234 = ""
  loc_CDC021: FFreeAd var_188 = ""
  loc_CDC028: Branch loc_CDC0E8
  loc_CDC02B: FLdI2 var_2BE
  loc_CDC02E: LitI2_Byte 5
  loc_CDC030: EqI2
  loc_CDC031: BranchF loc_CDC08B
  loc_CDC034: FLdRfVar var_234
  loc_CDC037: FLdPr Me
  loc_CDC03A: VCallAd Control_ID_PeriLiquTxt
  loc_CDC03D: FStAdFunc var_188
  loc_CDC040: FLdPr var_188
  loc_CDC043:  = Me.Text
  loc_CDC048: FLdRfVar var_298
  loc_CDC04B: FLdPr Me
  loc_CDC04E: VCallAd Control_ID_CodiTiliTxt
  loc_CDC051: FStAdFunc var_220
  loc_CDC054: FLdPr var_220
  loc_CDC057:  = Me.Text
  loc_CDC05C: ILdRf var_298
  loc_CDC05F: CUI1Str
  loc_CDC061: LitI2_Byte 4
  loc_CDC063: CUI1I2
  loc_CDC065: FLdPr Me
  loc_CDC068: MemLdI2 global_92
  loc_CDC06B: CUI1I2
  loc_CDC06D: ILdRf var_234
  loc_CDC070: CI2Str
  loc_CDC072: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CDC077: FStStr var_130
  loc_CDC07A: FFreeStr var_234 = ""
  loc_CDC081: FFreeAd var_188 = ""
  loc_CDC088: Branch loc_CDC0E8
  loc_CDC08B: FLdI2 var_2BE
  loc_CDC08E: LitI2_Byte 6
  loc_CDC090: EqI2
  loc_CDC091: BranchF loc_CDC0E8
  loc_CDC094: FLdRfVar var_234
  loc_CDC097: FLdPr Me
  loc_CDC09A: VCallAd Control_ID_PeriLiquTxt
  loc_CDC09D: FStAdFunc var_188
  loc_CDC0A0: FLdPr var_188
  loc_CDC0A3:  = Me.Text
  loc_CDC0A8: FLdRfVar var_298
  loc_CDC0AB: FLdPr Me
  loc_CDC0AE: VCallAd Control_ID_CodiTiliTxt
  loc_CDC0B1: FStAdFunc var_220
  loc_CDC0B4: FLdPr var_220
  loc_CDC0B7:  = Me.Text
  loc_CDC0BC: ILdRf var_298
  loc_CDC0BF: CUI1Str
  loc_CDC0C1: LitI2_Byte 4
  loc_CDC0C3: CUI1I2
  loc_CDC0C5: FLdPr Me
  loc_CDC0C8: MemLdI2 global_92
  loc_CDC0CB: CUI1I2
  loc_CDC0CD: ILdRf var_234
  loc_CDC0D0: CI2Str
  loc_CDC0D2: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_CDC0D7: FStStr var_134
  loc_CDC0DA: FFreeStr var_234 = ""
  loc_CDC0E1: FFreeAd var_188 = ""
  loc_CDC0E8: FLdPr Me
  loc_CDC0EB: MemLdRfVar from_stack_1.global_92
  loc_CDC0EE: NextI2 var_2BC, loc_CDBEA2
  loc_CDC0F3: FLdRfVar var_182
  loc_CDC0F6: FLdPr Me
  loc_CDC0F9: VCallAd Control_ID_ParcialOpt
  loc_CDC0FC: FStAdFunc var_188
  loc_CDC0FF: FLdPr var_188
  loc_CDC102:  = Me.Value
  loc_CDC107: FLdI2 var_182
  loc_CDC10A: LitI2_Byte &HFF
  loc_CDC10C: EqI2
  loc_CDC10D: FFree1Ad var_188
  loc_CDC110: BranchF loc_CDC113
  loc_CDC113: FLdRfVar var_182
  loc_CDC116: FLdPr Me
  loc_CDC119: VCallAd Control_ID_CompletaOpt
  loc_CDC11C: FStAdFunc var_188
  loc_CDC11F: FLdPr var_188
  loc_CDC122:  = Me.Value
  loc_CDC127: FLdI2 var_182
  loc_CDC12A: LitI2_Byte &HFF
  loc_CDC12C: EqI2
  loc_CDC12D: FFree1Ad var_188
  loc_CDC130: BranchF loc_CDC1BA
  loc_CDC133: LitI2_Byte 0
  loc_CDC135: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CDC13A: FStFPR8 var_2B0
  loc_CDC13D: LitStr "SELECT CodiDifu, CucuPers, CodiCeme, CodiTise, Emite "
  loc_CDC140: LitStr " FROM difunto "
  loc_CDC143: ConcatStr
  loc_CDC144: FStStrNoPop var_234
  loc_CDC147: ILdRf var_168
  loc_CDC14A: ConcatStr
  loc_CDC14B: FStStrNoPop var_298
  loc_CDC14E: LitStr " AND (FebaDifu IS NULL "
  loc_CDC151: ConcatStr
  loc_CDC152: FStStrNoPop var_29C
  loc_CDC155: LitStr " OR   FebaDifu > '"
  loc_CDC158: ConcatStr
  loc_CDC159: FStStrNoPop var_2A0
  loc_CDC15C: LitI4 1
  loc_CDC161: LitI4 1
  loc_CDC166: LitVarStr var_1BC, "yyyy-mm-dd"
  loc_CDC16B: FStVarCopyObj var_230
  loc_CDC16E: FLdRfVar var_230
  loc_CDC171: FLdFPR8 var_2B0
  loc_CDC174: CVarDate var_198
  loc_CDC178: ImpAdCallI2 Format$(, )
  loc_CDC17D: FStStrNoPop var_2A4
  loc_CDC180: ConcatStr
  loc_CDC181: FStStrNoPop var_2C4
  loc_CDC184: LitStr "')"
  loc_CDC187: ConcatStr
  loc_CDC188: FStStrNoPop var_2C8
  loc_CDC18B: LitStr " ORDER BY CodiDifu"
  loc_CDC18E: ConcatStr
  loc_CDC18F: FStStrNoPop var_2CC
  loc_CDC192: FLdPr Me
  loc_CDC195: MemLdRfVar from_stack_1.global_56
  loc_CDC198: NewIfNullPr clsdifunto
  loc_CDC19B: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_CDC1A0: FFreeStr var_234 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2C4 = "": var_2C8 = ""
  loc_CDC1B3: FFreeVar var_198 = ""
  loc_CDC1BA: FLdRfVar var_2A8
  loc_CDC1BD: FLdPr Me
  loc_CDC1C0: MemLdRfVar from_stack_1.global_56
  loc_CDC1C3: NewIfNullPr clsdifunto
  loc_CDC1C6: from_stack_1 = clsdifunto.RecordCount
  loc_CDC1CB: ILdRf var_2A8
  loc_CDC1CE: LitI4 0
  loc_CDC1D3: GtI4
  loc_CDC1D4: BranchF loc_CDE1C3
  loc_CDC1D7: LitI2_Byte &HB
  loc_CDC1D9: FLdPr Me
  loc_CDC1DC: Me.MousePointer = from_stack_1
  loc_CDC1E1: LitI4 0
  loc_CDC1E6: LitI4 0
  loc_CDC1EB: FLdRfVar var_2D0
  loc_CDC1EE: Redim
  loc_CDC1F8: FLdPr Me
  loc_CDC1FB: VCallAd Control_ID_CalculoCmd
  loc_CDC1FE: CVarAd
  loc_CDC202: ParmAry1St
  loc_CDC208: FLdRfVar var_2D0
  loc_CDC20B: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CDC210: FLdRfVar var_2D0
  loc_CDC213: Erase
  loc_CDC214: LitVar_TRUE var_1AC
  loc_CDC217: PopAdLdVar
  loc_CDC218: FLdPr Me
  loc_CDC21B: VCallAd Control_ID_ProgressBar
  loc_CDC21E: FStAdFunc var_188
  loc_CDC221: FLdPr var_188
  loc_CDC224: LateIdSt
  loc_CDC229: FFree1Ad var_188
  loc_CDC22C: LitI2_Byte 0
  loc_CDC22E: CR8I2
  loc_CDC22F: CVarR4
  loc_CDC233: PopAdLdVar
  loc_CDC234: FLdPr Me
  loc_CDC237: VCallAd Control_ID_ProgressBar
  loc_CDC23A: FStAdFunc var_188
  loc_CDC23D: FLdPr var_188
  loc_CDC240: LateIdSt
  loc_CDC245: FFree1Ad var_188
  loc_CDC248: FLdRfVar var_2A8
  loc_CDC24B: FLdPr Me
  loc_CDC24E: MemLdRfVar from_stack_1.global_56
  loc_CDC251: NewIfNullPr clsdifunto
  loc_CDC254: from_stack_1 = clsdifunto.RecordCount
  loc_CDC259: ILdRf var_2A8
  loc_CDC25C: CR8I4
  loc_CDC25D: CVarR4
  loc_CDC261: PopAdLdVar
  loc_CDC262: FLdPr Me
  loc_CDC265: VCallAd Control_ID_ProgressBar
  loc_CDC268: FStAdFunc var_188
  loc_CDC26B: FLdPr var_188
  loc_CDC26E: LateIdSt
  loc_CDC273: FFree1Ad var_188
  loc_CDC276: LitI2_Byte 0
  loc_CDC278: CR8I2
  loc_CDC279: CVarR4
  loc_CDC27D: PopAdLdVar
  loc_CDC27E: FLdPr Me
  loc_CDC281: VCallAd Control_ID_ProgressBar
  loc_CDC284: FStAdFunc var_188
  loc_CDC287: FLdPr var_188
  loc_CDC28A: LateIdSt
  loc_CDC28F: FFree1Ad var_188
  loc_CDC292: LitI4 0
  loc_CDC297: FStR4 var_88
  loc_CDC29A: FLdPr Me
  loc_CDC29D: MemLdRfVar from_stack_1.global_56
  loc_CDC2A0: NewIfNullPr clsdifunto
  loc_CDC2A3: Call clsdifunto.MoveFirst()
  loc_CDC2A8: FLdRfVar var_182
  loc_CDC2AB: FLdPr Me
  loc_CDC2AE: MemLdRfVar from_stack_1.global_56
  loc_CDC2B1: NewIfNullPr clsdifunto
  loc_CDC2B4: from_stack_1 = clsdifunto.EOF
  loc_CDC2B9: FLdI2 var_182
  loc_CDC2BC: NotI4
  loc_CDC2BD: BranchF loc_CDE1C3
  loc_CDC2C0: ILdRf var_88
  loc_CDC2C3: CR8I4
  loc_CDC2C4: CVarR4
  loc_CDC2C8: PopAdLdVar
  loc_CDC2C9: FLdPr Me
  loc_CDC2CC: VCallAd Control_ID_ProgressBar
  loc_CDC2CF: FStAdFunc var_188
  loc_CDC2D2: FLdPr var_188
  loc_CDC2D5: LateIdSt
  loc_CDC2DA: FFree1Ad var_188
  loc_CDC2DD: ILdRf var_88
  loc_CDC2E0: LitI4 1
  loc_CDC2E5: AddI4
  loc_CDC2E6: FStR4 var_88
  loc_CDC2E9: LitStr "SELECT CocrPers, NurePers, DecrPers, CobrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers FROM infogov.persona"
  loc_CDC2EC: LitStr " WHERE infogov.persona.CucuPers = "
  loc_CDC2EF: ConcatStr
  loc_CDC2F0: CVarStr var_230
  loc_CDC2F3: FLdRfVar var_198
  loc_CDC2F6: FLdRfVar var_2B4
  loc_CDC2F9: LitVarStr var_1AC, "CucuPers"
  loc_CDC2FE: PopAdLdVar
  loc_CDC2FF: FLdRfVar var_220
  loc_CDC302: FLdRfVar var_188
  loc_CDC305: FLdPr Me
  loc_CDC308: MemLdRfVar from_stack_1.global_56
  loc_CDC30B: NewIfNullPr clsdifunto
  loc_CDC30E: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC313: FLdPr var_188
  loc_CDC316:  = Me.Fields
  loc_CDC31B: FLdPr var_220
  loc_CDC31E: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC323: FLdPr var_2B4
  loc_CDC326:  = Me.Value
  loc_CDC32B: FLdRfVar var_198
  loc_CDC32E: ConcatVar var_254
  loc_CDC332: LitVarStr var_1BC, " ORDER BY CucuPers"
  loc_CDC337: ConcatVar var_264
  loc_CDC33B: CStrVarVal var_234
  loc_CDC33F: FLdPr Me
  loc_CDC342: MemLdRfVar from_stack_1.global_72
  loc_CDC345: NewIfNullPr clspersonas
  loc_CDC348: Call clspersonas.RedefineRS(from_stack_1v)
  loc_CDC34D: FFree1Str var_234
  loc_CDC350: FFreeAd var_188 = "": var_220 = ""
  loc_CDC359: FFreeVar var_230 = "": var_198 = "": var_254 = ""
  loc_CDC364: FLdRfVar var_198
  loc_CDC367: FLdRfVar var_2B4
  loc_CDC36A: LitVarStr var_1AC, "CodiDifu"
  loc_CDC36F: PopAdLdVar
  loc_CDC370: FLdRfVar var_220
  loc_CDC373: FLdRfVar var_188
  loc_CDC376: FLdPr Me
  loc_CDC379: MemLdRfVar from_stack_1.global_56
  loc_CDC37C: NewIfNullPr clsdifunto
  loc_CDC37F: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC384: FLdPr var_188
  loc_CDC387:  = Me.Fields
  loc_CDC38C: FLdPr var_220
  loc_CDC38F: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC394: FLdPr var_2B4
  loc_CDC397:  = Me.Value
  loc_CDC39C: FLdRfVar var_182
  loc_CDC39F: FLdRfVar var_198
  loc_CDC3A2: CStrVarTmp
  loc_CDC3A3: FStStrNoPop var_234
  loc_CDC3A6: LitI2_Byte 4
  loc_CDC3A8: CUI1I2
  loc_CDC3AA: FLdPr Me
  loc_CDC3AD: MemLdRfVar from_stack_1.global_64
  loc_CDC3B0: NewIfNullPr clsrelacion
  loc_CDC3B3: from_stack_3v = clsrelacion.BuscaDatosRelacion(from_stack_1v, from_stack_2v)
  loc_CDC3B8: FLdI2 var_182
  loc_CDC3BB: LitI2_Byte &HFF
  loc_CDC3BD: EqI2
  loc_CDC3BE: FFree1Str var_234
  loc_CDC3C1: FFreeAd var_188 = "": var_220 = ""
  loc_CDC3CA: FFree1Var var_198 = ""
  loc_CDC3CD: BranchF loc_CDE0B2
  loc_CDC3D0: FLdRfVar var_198
  loc_CDC3D3: FLdRfVar var_2B4
  loc_CDC3D6: LitVarStr var_1AC, "CodiDifu"
  loc_CDC3DB: PopAdLdVar
  loc_CDC3DC: FLdRfVar var_220
  loc_CDC3DF: FLdRfVar var_188
  loc_CDC3E2: FLdPr Me
  loc_CDC3E5: MemLdRfVar from_stack_1.global_56
  loc_CDC3E8: NewIfNullPr clsdifunto
  loc_CDC3EB: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC3F0: FLdPr var_188
  loc_CDC3F3:  = Me.Fields
  loc_CDC3F8: FLdPr var_220
  loc_CDC3FB: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC400: FLdPr var_2B4
  loc_CDC403:  = Me.Value
  loc_CDC408: FLdRfVar var_2B0
  loc_CDC40B: FLdFPR8 var_108
  loc_CDC40E: CStrDate
  loc_CDC410: FStStrNoPop var_298
  loc_CDC413: FLdRfVar var_198
  loc_CDC416: CStrVarTmp
  loc_CDC417: FStStrNoPop var_234
  loc_CDC41A: LitI2_Byte 4
  loc_CDC41C: CUI1I2
  loc_CDC41E: FLdPr Me
  loc_CDC421: MemLdRfVar from_stack_1.global_68
  loc_CDC424: NewIfNullPr clsliquceme
  loc_CDC427: from_stack_4v = clsliquceme.LibredeDeuda(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CDC42C: FLdFPR8 var_2B0
  loc_CDC42F: FStFPR8 var_A4
  loc_CDC432: FFreeStr var_234 = ""
  loc_CDC439: FFreeAd var_188 = "": var_220 = ""
  loc_CDC442: FFree1Var var_198 = ""
  loc_CDC445: FLdRfVar var_198
  loc_CDC448: FLdRfVar var_2B4
  loc_CDC44B: LitVarStr var_1AC, "CodiDifu"
  loc_CDC450: PopAdLdVar
  loc_CDC451: FLdRfVar var_220
  loc_CDC454: FLdRfVar var_188
  loc_CDC457: FLdPr Me
  loc_CDC45A: MemLdRfVar from_stack_1.global_56
  loc_CDC45D: NewIfNullPr clsdifunto
  loc_CDC460: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC465: FLdPr var_188
  loc_CDC468:  = Me.Fields
  loc_CDC46D: FLdPr var_220
  loc_CDC470: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC475: FLdPr var_2B4
  loc_CDC478:  = Me.Value
  loc_CDC47D: FLdRfVar var_182
  loc_CDC480: FLdFPR8 var_108
  loc_CDC483: CStrDate
  loc_CDC485: FStStrNoPop var_298
  loc_CDC488: FLdRfVar var_198
  loc_CDC48B: CStrVarTmp
  loc_CDC48C: FStStrNoPop var_234
  loc_CDC48F: LitI2_Byte 4
  loc_CDC491: CUI1I2
  loc_CDC493: FLdPr Me
  loc_CDC496: MemLdRfVar from_stack_1.global_68
  loc_CDC499: NewIfNullPr clsliquceme
  loc_CDC49C: from_stack_4v = clsliquceme.CantidadDePeriodosConDeuda(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CDC4A1: FLdI2 var_182
  loc_CDC4A4: CR8I2
  loc_CDC4A5: FStFPR8 var_174
  loc_CDC4A8: FFreeStr var_234 = ""
  loc_CDC4AF: FFreeAd var_188 = "": var_220 = ""
  loc_CDC4B8: FFree1Var var_198 = ""
  loc_CDC4BB: FLdRfVar var_198
  loc_CDC4BE: FLdRfVar var_2B4
  loc_CDC4C1: LitVarStr var_1AC, "CodiDifu"
  loc_CDC4C6: PopAdLdVar
  loc_CDC4C7: FLdRfVar var_220
  loc_CDC4CA: FLdRfVar var_188
  loc_CDC4CD: FLdPr Me
  loc_CDC4D0: MemLdRfVar from_stack_1.global_56
  loc_CDC4D3: NewIfNullPr clsdifunto
  loc_CDC4D6: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC4DB: FLdPr var_188
  loc_CDC4DE:  = Me.Fields
  loc_CDC4E3: FLdPr var_220
  loc_CDC4E6: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC4EB: FLdPr var_2B4
  loc_CDC4EE:  = Me.Value
  loc_CDC4F3: FLdRfVar var_2B0
  loc_CDC4F6: FLdRfVar var_198
  loc_CDC4F9: CStrVarTmp
  loc_CDC4FA: FStStrNoPop var_234
  loc_CDC4FD: LitI2_Byte 4
  loc_CDC4FF: FLdPr Me
  loc_CDC502: MemLdRfVar from_stack_1.global_80
  loc_CDC505: NewIfNullPr clsrecabole
  loc_CDC508: from_stack_3v = clsrecabole.BuscaImporteRecabole(from_stack_1v, from_stack_2v)
  loc_CDC50D: FLdFPR8 var_2B0
  loc_CDC510: FStFPR8 var_F0
  loc_CDC513: FFree1Str var_234
  loc_CDC516: FFreeAd var_188 = "": var_220 = ""
  loc_CDC51F: FFree1Var var_198 = ""
  loc_CDC522: LitI2_Byte 0
  loc_CDC524: CR8I2
  loc_CDC525: FStFPR8 var_160
  loc_CDC528: LitI2_Byte 0
  loc_CDC52A: CR8I2
  loc_CDC52B: FStFPR8 var_E0
  loc_CDC52E: LitI2_Byte 0
  loc_CDC530: CR8I2
  loc_CDC531: FStFPR8 var_E8
  loc_CDC534: LitI2_Byte 0
  loc_CDC536: CR8I2
  loc_CDC537: FStFPR8 var_B4
  loc_CDC53A: LitStr "SELECT sd.CodiDifu , d.CodiTise, sd.CodiSece , sc.DetaSece, "
  loc_CDC53D: LitStr " tc.Importe Unidades, "
  loc_CDC540: ConcatStr
  loc_CDC541: FStStrNoPop var_234
  loc_CDC544: LitStr " ROUND(tc.Importe * "
  loc_CDC547: ConcatStr
  loc_CDC548: FStStrNoPop var_29C
  loc_CDC54B: LitI4 0
  loc_CDC550: LitI4 -1
  loc_CDC555: LitI4 1
  loc_CDC55A: LitStr "."
  loc_CDC55D: LitStr ","
  loc_CDC560: ImpAdLdFPR8 MemVar_D9307C
  loc_CDC563: CStrR8
  loc_CDC565: FStStrNoPop var_298
  loc_CDC568: ImpAdCallI2 Replace(, , , , , )
  loc_CDC56D: FStStrNoPop var_2A0
  loc_CDC570: ConcatStr
  loc_CDC571: FStStrNoPop var_2A4
  loc_CDC574: LitStr ",2) Monto"
  loc_CDC577: ConcatStr
  loc_CDC578: FStStrNoPop var_2C4
  loc_CDC57B: LitStr " FROM recaudacion.servdifu sd"
  loc_CDC57E: ConcatStr
  loc_CDC57F: FStStrNoPop var_2C8
  loc_CDC582: LitStr " INNER JOIN recaudacion.difunto d ON d.CodiDifu = sd.CodiDifu"
  loc_CDC585: ConcatStr
  loc_CDC586: FStStrNoPop var_2CC
  loc_CDC589: LitStr " INNER JOIN recaudacion.servceme sc ON sc.CodiSece = sd.CodiSece  AND sc.PeriOrde = "
  loc_CDC58C: ConcatStr
  loc_CDC58D: FStStrNoPop var_2D4
  loc_CDC590: ImpAdLdI2 MemVar_D93034
  loc_CDC593: CStrUI1
  loc_CDC595: FStStrNoPop var_2D8
  loc_CDC598: ConcatStr
  loc_CDC599: FStStrNoPop var_2DC
  loc_CDC59C: LitStr " INNER JOIN recaudacion.tariceme t ON t.PeriInfo = "
  loc_CDC59F: ConcatStr
  loc_CDC5A0: FStStrNoPop var_2E0
  loc_CDC5A3: ImpAdLdI2 MemVar_D93034
  loc_CDC5A6: CStrUI1
  loc_CDC5A8: FStStrNoPop var_2E4
  loc_CDC5AB: ConcatStr
  loc_CDC5AC: FStStrNoPop var_2E8
  loc_CDC5AF: LitStr " AND t.CodiSece = sc.CodiSece   AND t.CodiTise = d.CodiTise"
  loc_CDC5B2: ConcatStr
  loc_CDC5B3: FStStrNoPop var_2EC
  loc_CDC5B6: LitStr " INNER JOIN recaudacion.tarifaria tc ON  t.PeriInfo = tc.PeriInfo AND t.Capitulo = tc.Capitulo"
  loc_CDC5B9: ConcatStr
  loc_CDC5BA: FStStrNoPop var_2F0
  loc_CDC5BD: LitStr " AND t.Articulo = tc.Articulo AND t.Letra = tc.Letra"
  loc_CDC5C0: ConcatStr
  loc_CDC5C1: FStStrNoPop var_2F4
  loc_CDC5C4: LitStr " WHERE sd.CodiSece >= 500 AND sd.CodiSece <= 504 AND sd.FehaSedi is null AND d.CodiTise != 'D' AND d.CodiDifu = "
  loc_CDC5C7: ConcatStr
  loc_CDC5C8: CVarStr var_230
  loc_CDC5CB: FLdRfVar var_198
  loc_CDC5CE: FLdRfVar var_2B4
  loc_CDC5D1: LitVarStr var_1AC, "CodiDifu"
  loc_CDC5D6: PopAdLdVar
  loc_CDC5D7: FLdRfVar var_220
  loc_CDC5DA: FLdRfVar var_188
  loc_CDC5DD: FLdPr Me
  loc_CDC5E0: MemLdRfVar from_stack_1.global_56
  loc_CDC5E3: NewIfNullPr clsdifunto
  loc_CDC5E6: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC5EB: FLdPr var_188
  loc_CDC5EE:  = Me.Fields
  loc_CDC5F3: FLdPr var_220
  loc_CDC5F6: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC5FB: FLdPr var_2B4
  loc_CDC5FE:  = Me.Value
  loc_CDC603: FLdRfVar var_198
  loc_CDC606: ConcatVar var_254
  loc_CDC60A: CStrVarVal var_2F8
  loc_CDC60E: FLdPr Me
  loc_CDC611: MemLdRfVar from_stack_1.global_76
  loc_CDC614: NewIfNullPr clstipofapa
  loc_CDC617: Call clstipofapa.RedefineRS(from_stack_1v)
  loc_CDC61C: FFreeStr var_234 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F4 = ""
  loc_CDC643: FFreeAd var_188 = "": var_220 = ""
  loc_CDC64C: FFreeVar var_230 = "": var_198 = ""
  loc_CDC655: FLdRfVar var_2A8
  loc_CDC658: FLdRfVar var_188
  loc_CDC65B: FLdPr Me
  loc_CDC65E: MemLdRfVar from_stack_1.global_76
  loc_CDC661: NewIfNullPr clstipofapa
  loc_CDC664: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CDC669: FLdPr var_188
  loc_CDC66C:  = Me.RecordCount
  loc_CDC671: ILdRf var_2A8
  loc_CDC674: LitI4 0
  loc_CDC679: GtI4
  loc_CDC67A: FFree1Ad var_188
  loc_CDC67D: BranchF loc_CDC842
  loc_CDC680: FLdRfVar var_2A8
  loc_CDC683: FLdRfVar var_188
  loc_CDC686: FLdPr Me
  loc_CDC689: MemLdRfVar from_stack_1.global_76
  loc_CDC68C: NewIfNullPr clstipofapa
  loc_CDC68F: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CDC694: FLdPr var_188
  loc_CDC697:  = Me.RecordCount
  loc_CDC69C: ILdRf var_2A8
  loc_CDC69F: LitI4 1
  loc_CDC6A4: EqI4
  loc_CDC6A5: FFree1Ad var_188
  loc_CDC6A8: BranchF loc_CDC73F
  loc_CDC6AB: FLdPr Me
  loc_CDC6AE: MemLdRfVar from_stack_1.global_76
  loc_CDC6B1: NewIfNullPr clstipofapa
  loc_CDC6B4: Call clstipofapa.MoveFirst()
  loc_CDC6B9: FLdRfVar var_182
  loc_CDC6BC: FLdPr Me
  loc_CDC6BF: MemLdRfVar from_stack_1.global_76
  loc_CDC6C2: NewIfNullPr clstipofapa
  loc_CDC6C5: from_stack_1 = clstipofapa.EOF
  loc_CDC6CA: FLdI2 var_182
  loc_CDC6CD: NotI4
  loc_CDC6CE: BranchF loc_CDC73C
  loc_CDC6D1: FLdFPR8 var_E8
  loc_CDC6D4: CVarR8
  loc_CDC6D8: FLdRfVar var_198
  loc_CDC6DB: FLdRfVar var_2B4
  loc_CDC6DE: LitVarStr var_1AC, "Monto"
  loc_CDC6E3: PopAdLdVar
  loc_CDC6E4: FLdRfVar var_220
  loc_CDC6E7: FLdRfVar var_188
  loc_CDC6EA: FLdPr Me
  loc_CDC6ED: MemLdRfVar from_stack_1.global_76
  loc_CDC6F0: NewIfNullPr clstipofapa
  loc_CDC6F3: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CDC6F8: FLdPr var_188
  loc_CDC6FB:  = Me.Fields
  loc_CDC700: FLdPr var_220
  loc_CDC703: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC708: FLdPr var_2B4
  loc_CDC70B:  = Me.Value
  loc_CDC710: FLdRfVar var_198
  loc_CDC713: AddVar var_230
  loc_CDC717: CR4Var
  loc_CDC718: FStFPR8 var_E8
  loc_CDC71B: FFreeAd var_188 = "": var_220 = ""
  loc_CDC724: FFreeVar var_198 = ""
  loc_CDC72B: FLdPr Me
  loc_CDC72E: MemLdRfVar from_stack_1.global_76
  loc_CDC731: NewIfNullPr clstipofapa
  loc_CDC734: Call clstipofapa.MoveSiguiente()
  loc_CDC739: Branch loc_CDC6B9
  loc_CDC73C: Branch loc_CDC83F
  loc_CDC73F: FLdRfVar var_234
  loc_CDC742: FLdPr Me
  loc_CDC745: VCallAd Control_ID_PeriLiquTxt
  loc_CDC748: FStAdFunc var_188
  loc_CDC74B: FLdPr var_188
  loc_CDC74E:  = Me.Text
  loc_CDC753: FLdRfVar var_298
  loc_CDC756: FLdPr Me
  loc_CDC759: VCallAd Control_ID_CodiTiliTxt
  loc_CDC75C: FStAdFunc var_220
  loc_CDC75F: FLdPr var_220
  loc_CDC762:  = Me.Text
  loc_CDC767: FLdRfVar var_264
  loc_CDC76A: FLdRfVar var_2FC
  loc_CDC76D: LitVarStr var_1AC, "CodiDifu"
  loc_CDC772: PopAdLdVar
  loc_CDC773: FLdRfVar var_2B8
  loc_CDC776: FLdRfVar var_2B4
  loc_CDC779: FLdPr Me
  loc_CDC77C: MemLdRfVar from_stack_1.global_56
  loc_CDC77F: NewIfNullPr clsdifunto
  loc_CDC782: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC787: FLdPr var_2B4
  loc_CDC78A:  = Me.Fields
  loc_CDC78F: FLdPr var_2B8
  loc_CDC792: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC797: FLdPr var_2FC
  loc_CDC79A:  = Me.Value
  loc_CDC79F: LitVarStr var_1CC, "Cuenta: "
  loc_CDC7A4: FLdRfVar var_198
  loc_CDC7A7: FLdRfVar var_308
  loc_CDC7AA: LitVarStr var_1BC, "CodiDifu"
  loc_CDC7AF: PopAdLdVar
  loc_CDC7B0: FLdRfVar var_304
  loc_CDC7B3: FLdRfVar var_300
  loc_CDC7B6: FLdPr Me
  loc_CDC7B9: MemLdRfVar from_stack_1.global_56
  loc_CDC7BC: NewIfNullPr clsdifunto
  loc_CDC7BF: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC7C4: FLdPr var_300
  loc_CDC7C7:  = Me.Fields
  loc_CDC7CC: FLdPr var_304
  loc_CDC7CF: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC7D4: FLdPr var_308
  loc_CDC7D7:  = Me.Value
  loc_CDC7DC: FLdRfVar var_198
  loc_CDC7DF: ConcatVar var_230
  loc_CDC7E3: LitVarStr var_1DC, " Mas de un servicio."
  loc_CDC7E8: ConcatVar var_254
  loc_CDC7EC: CStrVarVal var_29C
  loc_CDC7F0: FLdRfVar var_264
  loc_CDC7F3: CI4Var
  loc_CDC7F5: FLdI2 var_8A
  loc_CDC7F8: ILdRf var_298
  loc_CDC7FB: CUI1Str
  loc_CDC7FD: FLdPr Me
  loc_CDC800: MemLdI2 global_92
  loc_CDC803: CUI1I2
  loc_CDC805: ILdRf var_234
  loc_CDC808: CI2Str
  loc_CDC80A: FLdPr Me
  loc_CDC80D: MemLdRfVar from_stack_1.global_68
  loc_CDC810: NewIfNullPr clsliquceme
  loc_CDC813: Call clsliquceme.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CDC818: FFreeStr var_234 = "": var_298 = ""
  loc_CDC821: FFreeAd var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = "": var_300 = "": var_304 = "": var_308 = ""
  loc_CDC834: FFreeVar var_198 = "": var_230 = "": var_264 = ""
  loc_CDC83F: Branch loc_CDC942
  loc_CDC842: FLdRfVar var_234
  loc_CDC845: FLdPr Me
  loc_CDC848: VCallAd Control_ID_PeriLiquTxt
  loc_CDC84B: FStAdFunc var_188
  loc_CDC84E: FLdPr var_188
  loc_CDC851:  = Me.Text
  loc_CDC856: FLdRfVar var_298
  loc_CDC859: FLdPr Me
  loc_CDC85C: VCallAd Control_ID_CodiTiliTxt
  loc_CDC85F: FStAdFunc var_220
  loc_CDC862: FLdPr var_220
  loc_CDC865:  = Me.Text
  loc_CDC86A: FLdRfVar var_264
  loc_CDC86D: FLdRfVar var_2FC
  loc_CDC870: LitVarStr var_1AC, "CodiDifu"
  loc_CDC875: PopAdLdVar
  loc_CDC876: FLdRfVar var_2B8
  loc_CDC879: FLdRfVar var_2B4
  loc_CDC87C: FLdPr Me
  loc_CDC87F: MemLdRfVar from_stack_1.global_56
  loc_CDC882: NewIfNullPr clsdifunto
  loc_CDC885: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC88A: FLdPr var_2B4
  loc_CDC88D:  = Me.Fields
  loc_CDC892: FLdPr var_2B8
  loc_CDC895: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC89A: FLdPr var_2FC
  loc_CDC89D:  = Me.Value
  loc_CDC8A2: LitVarStr var_1CC, "Cuenta: "
  loc_CDC8A7: FLdRfVar var_198
  loc_CDC8AA: FLdRfVar var_308
  loc_CDC8AD: LitVarStr var_1BC, "CodiDifu"
  loc_CDC8B2: PopAdLdVar
  loc_CDC8B3: FLdRfVar var_304
  loc_CDC8B6: FLdRfVar var_300
  loc_CDC8B9: FLdPr Me
  loc_CDC8BC: MemLdRfVar from_stack_1.global_56
  loc_CDC8BF: NewIfNullPr clsdifunto
  loc_CDC8C2: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC8C7: FLdPr var_300
  loc_CDC8CA:  = Me.Fields
  loc_CDC8CF: FLdPr var_304
  loc_CDC8D2: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC8D7: FLdPr var_308
  loc_CDC8DA:  = Me.Value
  loc_CDC8DF: FLdRfVar var_198
  loc_CDC8E2: ConcatVar var_230
  loc_CDC8E6: LitVarStr var_1DC, " No se encontro los servicios del difunto."
  loc_CDC8EB: ConcatVar var_254
  loc_CDC8EF: CStrVarVal var_29C
  loc_CDC8F3: FLdRfVar var_264
  loc_CDC8F6: CI4Var
  loc_CDC8F8: FLdI2 var_8A
  loc_CDC8FB: ILdRf var_298
  loc_CDC8FE: CUI1Str
  loc_CDC900: FLdPr Me
  loc_CDC903: MemLdI2 global_92
  loc_CDC906: CUI1I2
  loc_CDC908: ILdRf var_234
  loc_CDC90B: CI2Str
  loc_CDC90D: FLdPr Me
  loc_CDC910: MemLdRfVar from_stack_1.global_68
  loc_CDC913: NewIfNullPr clsliquceme
  loc_CDC916: Call clsliquceme.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CDC91B: FFreeStr var_234 = "": var_298 = ""
  loc_CDC924: FFreeAd var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = "": var_300 = "": var_304 = "": var_308 = ""
  loc_CDC937: FFreeVar var_198 = "": var_230 = "": var_264 = ""
  loc_CDC942: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') CodiCalle, IFNULL(domicilio.calle,'') as DecaPost, IFNULL(domicilio.NumeCalle,'0') as NumePost, IFNULL(domicilio.CodiBarrio,'0') CobpPost, IFNULL(domicilio.barrio,'') as DebaPost, IFNULL(domicilio.Manzana,'') as ManzPost, IFNULL(domicilio.Casa,'') as CasaPost, "
  loc_CDC945: LitStr " concat(domicilio.Monoblock,"
  loc_CDC948: ConcatStr
  loc_CDC949: FStStrNoPop var_234
  loc_CDC94C: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_CDC94F: ConcatStr
  loc_CDC950: FStStrNoPop var_298
  loc_CDC953: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_CDC956: ConcatStr
  loc_CDC957: FStStrNoPop var_29C
  loc_CDC95A: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_CDC95D: ConcatStr
  loc_CDC95E: FStStrNoPop var_2A0
  loc_CDC961: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_CDC964: ConcatStr
  loc_CDC965: FStStrNoPop var_2A4
  loc_CDC968: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta)  as UbicPost,"
  loc_CDC96B: ConcatStr
  loc_CDC96C: FStStrNoPop var_2C4
  loc_CDC96F: LitStr " IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') ColpPost, IFNULL(domicilio.Localidad,'') as DeloPost, IFNULL(domicilio.CodPostal,'0') as CopoPost "
  loc_CDC972: ConcatStr
  loc_CDC973: FStStrNoPop var_2C8
  loc_CDC976: LitStr " FROM domicilio"
  loc_CDC979: ConcatStr
  loc_CDC97A: FStStrNoPop var_2CC
  loc_CDC97D: LitStr " WHERE CodiOfic = 4"
  loc_CDC980: ConcatStr
  loc_CDC981: FStStrNoPop var_2D4
  loc_CDC984: LitStr " AND CodiCome = "
  loc_CDC987: ConcatStr
  loc_CDC988: CVarStr var_230
  loc_CDC98B: FLdRfVar var_198
  loc_CDC98E: FLdRfVar var_2B4
  loc_CDC991: LitVarStr var_1AC, "CodiDifu"
  loc_CDC996: PopAdLdVar
  loc_CDC997: FLdRfVar var_220
  loc_CDC99A: FLdRfVar var_188
  loc_CDC99D: FLdPr Me
  loc_CDC9A0: MemLdRfVar from_stack_1.global_56
  loc_CDC9A3: NewIfNullPr clsdifunto
  loc_CDC9A6: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDC9AB: FLdPr var_188
  loc_CDC9AE:  = Me.Fields
  loc_CDC9B3: FLdPr var_220
  loc_CDC9B6: from_stack_2 = Me.Item(from_stack_1)
  loc_CDC9BB: FLdPr var_2B4
  loc_CDC9BE:  = Me.Value
  loc_CDC9C3: FLdRfVar var_198
  loc_CDC9C6: ConcatVar var_254
  loc_CDC9CA: LitVarStr var_1BC, " AND Tipo = 'POSTAL'"
  loc_CDC9CF: ConcatVar var_264
  loc_CDC9D3: CStrVarVal var_2D8
  loc_CDC9D7: FLdPr Me
  loc_CDC9DA: MemLdRfVar from_stack_1.global_84
  loc_CDC9DD: NewIfNullPr clsboleto
  loc_CDC9E0: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CDC9E5: FFreeStr var_234 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D4 = ""
  loc_CDC9FC: FFreeAd var_188 = "": var_220 = ""
  loc_CDCA05: FFreeVar var_230 = "": var_198 = "": var_254 = ""
  loc_CDCA10: FLdRfVar var_2A8
  loc_CDCA13: FLdPr Me
  loc_CDCA16: MemLdRfVar from_stack_1.global_84
  loc_CDCA19: NewIfNullPr clsboleto
  loc_CDCA1C: from_stack_1 = clsboleto.RecordCount
  loc_CDCA21: ILdRf var_2A8
  loc_CDCA24: LitI4 0
  loc_CDCA29: EqI4
  loc_CDCA2A: BranchF loc_CDCAFB
  loc_CDCA2D: LitStr " SELECT IFNULL(domicilio.CodiCalle,'0') CodiCalle, IFNULL(domicilio.calle,'') as DecaPost, IFNULL(domicilio.NumeCalle,'0') as NumePost, IFNULL(domicilio.CodiBarrio,'0') CobpPost, IFNULL(domicilio.barrio,'') as DebaPost, IFNULL(domicilio.Manzana,'') as ManzPost, IFNULL(domicilio.Casa,'') as CasaPost, "
  loc_CDCA30: LitStr " concat(domicilio.Monoblock,"
  loc_CDCA33: ConcatStr
  loc_CDCA34: FStStrNoPop var_234
  loc_CDCA37: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_CDCA3A: ConcatStr
  loc_CDCA3B: FStStrNoPop var_298
  loc_CDCA3E: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_CDCA41: ConcatStr
  loc_CDCA42: FStStrNoPop var_29C
  loc_CDCA45: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_CDCA48: ConcatStr
  loc_CDCA49: FStStrNoPop var_2A0
  loc_CDCA4C: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_CDCA4F: ConcatStr
  loc_CDCA50: FStStrNoPop var_2A4
  loc_CDCA53: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta)  as UbicPost,"
  loc_CDCA56: ConcatStr
  loc_CDCA57: FStStrNoPop var_2C4
  loc_CDCA5A: LitStr " IFNULL(ubicacion,'') ubicacion, IFNULL(domicilio.CodiLoca,'') ColpPost, IFNULL(domicilio.Localidad,'') as DeloPost, IFNULL(domicilio.CodPostal,'0') as CopoPost "
  loc_CDCA5D: ConcatStr
  loc_CDCA5E: FStStrNoPop var_2C8
  loc_CDCA61: LitStr " FROM domicilio"
  loc_CDCA64: ConcatStr
  loc_CDCA65: FStStrNoPop var_2CC
  loc_CDCA68: LitStr " WHERE CodiOfic = 4"
  loc_CDCA6B: ConcatStr
  loc_CDCA6C: FStStrNoPop var_2D4
  loc_CDCA6F: LitStr " AND CodiCome = "
  loc_CDCA72: ConcatStr
  loc_CDCA73: CVarStr var_230
  loc_CDCA76: FLdRfVar var_198
  loc_CDCA79: FLdRfVar var_2B4
  loc_CDCA7C: LitVarStr var_1AC, "CodiDifu"
  loc_CDCA81: PopAdLdVar
  loc_CDCA82: FLdRfVar var_220
  loc_CDCA85: FLdRfVar var_188
  loc_CDCA88: FLdPr Me
  loc_CDCA8B: MemLdRfVar from_stack_1.global_56
  loc_CDCA8E: NewIfNullPr clsdifunto
  loc_CDCA91: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDCA96: FLdPr var_188
  loc_CDCA99:  = Me.Fields
  loc_CDCA9E: FLdPr var_220
  loc_CDCAA1: from_stack_2 = Me.Item(from_stack_1)
  loc_CDCAA6: FLdPr var_2B4
  loc_CDCAA9:  = Me.Value
  loc_CDCAAE: FLdRfVar var_198
  loc_CDCAB1: ConcatVar var_254
  loc_CDCAB5: LitVarStr var_1BC, " AND Tipo = 'REAL'"
  loc_CDCABA: ConcatVar var_264
  loc_CDCABE: CStrVarVal var_2D8
  loc_CDCAC2: FLdPr Me
  loc_CDCAC5: MemLdRfVar from_stack_1.global_84
  loc_CDCAC8: NewIfNullPr clsboleto
  loc_CDCACB: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CDCAD0: FFreeStr var_234 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D4 = ""
  loc_CDCAE7: FFreeAd var_188 = "": var_220 = ""
  loc_CDCAF0: FFreeVar var_230 = "": var_198 = "": var_254 = ""
  loc_CDCAFB: FLdFPR8 var_BC
  loc_CDCAFE: FStFPR8 var_F8
  loc_CDCB01: FLdFPR8 var_E8
  loc_CDCB04: LitI2_Byte 0
  loc_CDCB06: CR8I2
  loc_CDCB07: GtR4
  loc_CDCB08: BranchF loc_CDDFAF
  loc_CDCB0B: FLdPr Me
  loc_CDCB0E: MemLdI2 global_94
  loc_CDCB11: FLdPr Me
  loc_CDCB14: MemLdRfVar from_stack_1.global_92
  loc_CDCB17: FLdPr Me
  loc_CDCB1A: MemLdI2 global_96
  loc_CDCB1D: ForI2 var_30C
  loc_CDCB23: FLdRfVar var_234
  loc_CDCB26: FLdPr Me
  loc_CDCB29: VCallAd Control_ID_BimeLiquTxt
  loc_CDCB2C: FStAdFunc var_188
  loc_CDCB2F: FLdPr var_188
  loc_CDCB32:  = Me.Text
  loc_CDCB37: ILdRf var_234
  loc_CDCB3A: CR8Str
  loc_CDCB3C: LitI2_Byte 1
  loc_CDCB3E: CR8I2
  loc_CDCB3F: GtR4
  loc_CDCB40: FFree1Str var_234
  loc_CDCB43: FFree1Ad var_188
  loc_CDCB46: BranchF loc_CDCBD6
  loc_CDCB49: FLdRfVar var_198
  loc_CDCB4C: FLdRfVar var_2B4
  loc_CDCB4F: LitVarStr var_1AC, "CodiDifu"
  loc_CDCB54: PopAdLdVar
  loc_CDCB55: FLdRfVar var_220
  loc_CDCB58: FLdRfVar var_188
  loc_CDCB5B: FLdPr Me
  loc_CDCB5E: MemLdRfVar from_stack_1.global_56
  loc_CDCB61: NewIfNullPr clsdifunto
  loc_CDCB64: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDCB69: FLdPr var_188
  loc_CDCB6C:  = Me.Fields
  loc_CDCB71: FLdPr var_220
  loc_CDCB74: from_stack_2 = Me.Item(from_stack_1)
  loc_CDCB79: FLdPr var_2B4
  loc_CDCB7C:  = Me.Value
  loc_CDCB81: FLdRfVar var_234
  loc_CDCB84: FLdPr Me
  loc_CDCB87: VCallAd Control_ID_PeriLiquTxt
  loc_CDCB8A: FStAdFunc var_2B8
  loc_CDCB8D: FLdPr var_2B8
  loc_CDCB90:  = Me.Text
  loc_CDCB95: FLdRfVar var_182
  loc_CDCB98: FLdPr Me
  loc_CDCB9B: MemLdI2 global_94
  loc_CDCB9E: ILdRf var_234
  loc_CDCBA1: CI2Str
  loc_CDCBA3: FLdRfVar var_198
  loc_CDCBA6: CStrVarTmp
  loc_CDCBA7: FStStrNoPop var_298
  loc_CDCBAA: FLdPr Me
  loc_CDCBAD: MemLdRfVar from_stack_1.global_68
  loc_CDCBB0: NewIfNullPr clsliquceme
  loc_CDCBB3: from_stack_4v = clsliquceme.BuscaDeudaDeBimestreParaLaEmisionMasiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CDCBB8: FLdI2 var_182
  loc_CDCBBB: FStI2 var_16A
  loc_CDCBBE: FFreeStr var_298 = ""
  loc_CDCBC5: FFreeAd var_188 = "": var_220 = "": var_2B8 = ""
  loc_CDCBD0: FFree1Var var_198 = ""
  loc_CDCBD3: Branch loc_CDCBDB
  loc_CDCBD6: LitI2_Byte &HFF
  loc_CDCBD8: FStI2 var_16A
  loc_CDCBDB: FLdI2 var_16A
  loc_CDCBDE: LitI2_Byte &HFF
  loc_CDCBE0: EqI2
  loc_CDCBE1: BranchF loc_CDDFA1
  loc_CDCBE4: FLdPr Me
  loc_CDCBE7: MemLdI2 global_92
  loc_CDCBEA: FStI2 var_30E
  loc_CDCBED: FLdI2 var_30E
  loc_CDCBF0: LitI2_Byte 1
  loc_CDCBF2: EqI2
  loc_CDCBF3: BranchF loc_CDCC3F
  loc_CDCBF6: ILdRf var_120
  loc_CDCBF9: FStStrCopy var_150
  loc_CDCBFC: FLdRfVar var_234
  loc_CDCBFF: FLdPr Me
  loc_CDCC02: VCallAd Control_ID_PeriLiquTxt
  loc_CDCC05: FStAdFunc var_188
  loc_CDCC08: FLdPr var_188
  loc_CDCC0B:  = Me.Text
  loc_CDCC10: LitI2_Byte 1
  loc_CDCC12: LitI2_Byte 3
  loc_CDCC14: ILdRf var_234
  loc_CDCC17: CR8Str
  loc_CDCC19: CI2R8
  loc_CDCC1A: FLdRfVar var_198
  loc_CDCC1D: ImpAdCallFPR4  = DateSerial(, , )
  loc_CDCC22: FLdRfVar var_198
  loc_CDCC25: LitVarI2 var_1AC, 1
  loc_CDCC2A: SubVar var_230
  loc_CDCC2E: FnCDateVar
  loc_CDCC30: FStFPR8 var_110
  loc_CDCC33: FFree1Str var_234
  loc_CDCC36: FFree1Ad var_188
  loc_CDCC39: FFree1Var var_198 = ""
  loc_CDCC3C: Branch loc_CDCDDA
  loc_CDCC3F: FLdI2 var_30E
  loc_CDCC42: LitI2_Byte 2
  loc_CDCC44: EqI2
  loc_CDCC45: BranchF loc_CDCC91
  loc_CDCC48: ILdRf var_124
  loc_CDCC4B: FStStrCopy var_150
  loc_CDCC4E: FLdRfVar var_234
  loc_CDCC51: FLdPr Me
  loc_CDCC54: VCallAd Control_ID_PeriLiquTxt
  loc_CDCC57: FStAdFunc var_188
  loc_CDCC5A: FLdPr var_188
  loc_CDCC5D:  = Me.Text
  loc_CDCC62: LitI2_Byte 1
  loc_CDCC64: LitI2_Byte 5
  loc_CDCC66: ILdRf var_234
  loc_CDCC69: CR8Str
  loc_CDCC6B: CI2R8
  loc_CDCC6C: FLdRfVar var_198
  loc_CDCC6F: ImpAdCallFPR4  = DateSerial(, , )
  loc_CDCC74: FLdRfVar var_198
  loc_CDCC77: LitVarI2 var_1AC, 1
  loc_CDCC7C: SubVar var_230
  loc_CDCC80: FnCDateVar
  loc_CDCC82: FStFPR8 var_110
  loc_CDCC85: FFree1Str var_234
  loc_CDCC88: FFree1Ad var_188
  loc_CDCC8B: FFree1Var var_198 = ""
  loc_CDCC8E: Branch loc_CDCDDA
  loc_CDCC91: FLdI2 var_30E
  loc_CDCC94: LitI2_Byte 3
  loc_CDCC96: EqI2
  loc_CDCC97: BranchF loc_CDCCE3
  loc_CDCC9A: ILdRf var_128
  loc_CDCC9D: FStStrCopy var_150
  loc_CDCCA0: FLdRfVar var_234
  loc_CDCCA3: FLdPr Me
  loc_CDCCA6: VCallAd Control_ID_PeriLiquTxt
  loc_CDCCA9: FStAdFunc var_188
  loc_CDCCAC: FLdPr var_188
  loc_CDCCAF:  = Me.Text
  loc_CDCCB4: LitI2_Byte 1
  loc_CDCCB6: LitI2_Byte 7
  loc_CDCCB8: ILdRf var_234
  loc_CDCCBB: CR8Str
  loc_CDCCBD: CI2R8
  loc_CDCCBE: FLdRfVar var_198
  loc_CDCCC1: ImpAdCallFPR4  = DateSerial(, , )
  loc_CDCCC6: FLdRfVar var_198
  loc_CDCCC9: LitVarI2 var_1AC, 1
  loc_CDCCCE: SubVar var_230
  loc_CDCCD2: FnCDateVar
  loc_CDCCD4: FStFPR8 var_110
  loc_CDCCD7: FFree1Str var_234
  loc_CDCCDA: FFree1Ad var_188
  loc_CDCCDD: FFree1Var var_198 = ""
  loc_CDCCE0: Branch loc_CDCDDA
  loc_CDCCE3: FLdI2 var_30E
  loc_CDCCE6: LitI2_Byte 4
  loc_CDCCE8: EqI2
  loc_CDCCE9: BranchF loc_CDCD35
  loc_CDCCEC: ILdRf var_12C
  loc_CDCCEF: FStStrCopy var_150
  loc_CDCCF2: FLdRfVar var_234
  loc_CDCCF5: FLdPr Me
  loc_CDCCF8: VCallAd Control_ID_PeriLiquTxt
  loc_CDCCFB: FStAdFunc var_188
  loc_CDCCFE: FLdPr var_188
  loc_CDCD01:  = Me.Text
  loc_CDCD06: LitI2_Byte 1
  loc_CDCD08: LitI2_Byte 9
  loc_CDCD0A: ILdRf var_234
  loc_CDCD0D: CR8Str
  loc_CDCD0F: CI2R8
  loc_CDCD10: FLdRfVar var_198
  loc_CDCD13: ImpAdCallFPR4  = DateSerial(, , )
  loc_CDCD18: FLdRfVar var_198
  loc_CDCD1B: LitVarI2 var_1AC, 1
  loc_CDCD20: SubVar var_230
  loc_CDCD24: FnCDateVar
  loc_CDCD26: FStFPR8 var_110
  loc_CDCD29: FFree1Str var_234
  loc_CDCD2C: FFree1Ad var_188
  loc_CDCD2F: FFree1Var var_198 = ""
  loc_CDCD32: Branch loc_CDCDDA
  loc_CDCD35: FLdI2 var_30E
  loc_CDCD38: LitI2_Byte 5
  loc_CDCD3A: EqI2
  loc_CDCD3B: BranchF loc_CDCD87
  loc_CDCD3E: ILdRf var_130
  loc_CDCD41: FStStrCopy var_150
  loc_CDCD44: FLdRfVar var_234
  loc_CDCD47: FLdPr Me
  loc_CDCD4A: VCallAd Control_ID_PeriLiquTxt
  loc_CDCD4D: FStAdFunc var_188
  loc_CDCD50: FLdPr var_188
  loc_CDCD53:  = Me.Text
  loc_CDCD58: LitI2_Byte 1
  loc_CDCD5A: LitI2_Byte &HB
  loc_CDCD5C: ILdRf var_234
  loc_CDCD5F: CR8Str
  loc_CDCD61: CI2R8
  loc_CDCD62: FLdRfVar var_198
  loc_CDCD65: ImpAdCallFPR4  = DateSerial(, , )
  loc_CDCD6A: FLdRfVar var_198
  loc_CDCD6D: LitVarI2 var_1AC, 1
  loc_CDCD72: SubVar var_230
  loc_CDCD76: FnCDateVar
  loc_CDCD78: FStFPR8 var_110
  loc_CDCD7B: FFree1Str var_234
  loc_CDCD7E: FFree1Ad var_188
  loc_CDCD81: FFree1Var var_198 = ""
  loc_CDCD84: Branch loc_CDCDDA
  loc_CDCD87: FLdI2 var_30E
  loc_CDCD8A: LitI2_Byte 6
  loc_CDCD8C: EqI2
  loc_CDCD8D: BranchF loc_CDCDDA
  loc_CDCD90: ILdRf var_134
  loc_CDCD93: FStStrCopy var_150
  loc_CDCD96: FLdRfVar var_234
  loc_CDCD99: FLdPr Me
  loc_CDCD9C: VCallAd Control_ID_PeriLiquTxt
  loc_CDCD9F: FStAdFunc var_188
  loc_CDCDA2: FLdPr var_188
  loc_CDCDA5:  = Me.Text
  loc_CDCDAA: LitI2_Byte 1
  loc_CDCDAC: LitI2_Byte 1
  loc_CDCDAE: ILdRf var_234
  loc_CDCDB1: CR8Str
  loc_CDCDB3: LitI2_Byte 1
  loc_CDCDB5: CR8I2
  loc_CDCDB6: AddR8
  loc_CDCDB7: CI2R8
  loc_CDCDB8: FLdRfVar var_198
  loc_CDCDBB: ImpAdCallFPR4  = DateSerial(, , )
  loc_CDCDC0: FLdRfVar var_198
  loc_CDCDC3: LitVarI2 var_1AC, 1
  loc_CDCDC8: SubVar var_230
  loc_CDCDCC: FnCDateVar
  loc_CDCDCE: FStFPR8 var_110
  loc_CDCDD1: FFree1Str var_234
  loc_CDCDD4: FFree1Ad var_188
  loc_CDCDD7: FFree1Var var_198 = ""
  loc_CDCDDA: LitI2_Byte 0
  loc_CDCDDC: CR8I2
  loc_CDCDDD: FStFPR8 var_94
  loc_CDCDE0: LitI2_Byte 0
  loc_CDCDE2: CR8I2
  loc_CDCDE3: FStFPR8 var_118
  loc_CDCDE6: FLdFPR8 var_94
  loc_CDCDE9: FLdFPR8 var_E8
  loc_CDCDEC: EqR4
  loc_CDCDED: BranchF loc_CDCE05
  loc_CDCDF0: LitI2_Byte 0
  loc_CDCDF2: CR8I2
  loc_CDCDF3: FStFPR8 var_F8
  loc_CDCDF6: FLdFPR8 var_94
  loc_CDCDF9: FStFPR8 var_E8
  loc_CDCDFC: FLdFPR8 var_E8
  loc_CDCDFF: FStFPR8 var_E0
  loc_CDCE02: Branch loc_CDCE19
  loc_CDCE05: FLdFPR8 var_E8
  loc_CDCE08: FLdFPR8 var_F8
  loc_CDCE0B: AddR8
  loc_CDCE0C: LitDate 651.7
  loc_CDCE15: AddR8
  loc_CDCE16: FStFPR8 var_E0
  loc_CDCE19: FLdRfVar var_198
  loc_CDCE1C: FLdRfVar var_2B4
  loc_CDCE1F: LitVarStr var_1AC, "Emite"
  loc_CDCE24: PopAdLdVar
  loc_CDCE25: FLdRfVar var_220
  loc_CDCE28: FLdRfVar var_188
  loc_CDCE2B: FLdPr Me
  loc_CDCE2E: MemLdRfVar from_stack_1.global_56
  loc_CDCE31: NewIfNullPr clsdifunto
  loc_CDCE34: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDCE39: FLdPr var_188
  loc_CDCE3C:  = Me.Fields
  loc_CDCE41: FLdPr var_220
  loc_CDCE44: from_stack_2 = Me.Item(from_stack_1)
  loc_CDCE49: FLdPr var_2B4
  loc_CDCE4C:  = Me.Value
  loc_CDCE51: FLdRfVar var_198
  loc_CDCE54: FnCByteVar
  loc_CDCE56: CI2UI1
  loc_CDCE58: LitI2_Byte 1
  loc_CDCE5A: EqI2
  loc_CDCE5B: FFreeAd var_188 = "": var_220 = ""
  loc_CDCE64: FFree1Var var_198 = ""
  loc_CDCE67: BranchF loc_CDCE9E
  loc_CDCE6A: LitVarI2 var_230, 1
  loc_CDCE6F: LitVarI2 var_198, 0
  loc_CDCE74: FLdFPR8 var_174
  loc_CDCE77: LitI2_Byte 3
  loc_CDCE79: CR8I2
  loc_CDCE7A: EqR4
  loc_CDCE7B: CVarBoolI2 var_1AC
  loc_CDCE7F: FLdRfVar var_254
  loc_CDCE82: ImpAdCallFPR4  = IIf(, , )
  loc_CDCE87: FLdRfVar var_254
  loc_CDCE8A: CUI1Var
  loc_CDCE8C: FStUI1 var_176
  loc_CDCE90: FFreeVar var_1AC = "": var_198 = "": var_230 = ""
  loc_CDCE9B: Branch loc_CDCEEB
  loc_CDCE9E: FLdRfVar var_198
  loc_CDCEA1: FLdRfVar var_2B4
  loc_CDCEA4: LitVarStr var_1AC, "Emite"
  loc_CDCEA9: PopAdLdVar
  loc_CDCEAA: FLdRfVar var_220
  loc_CDCEAD: FLdRfVar var_188
  loc_CDCEB0: FLdPr Me
  loc_CDCEB3: MemLdRfVar from_stack_1.global_56
  loc_CDCEB6: NewIfNullPr clsdifunto
  loc_CDCEB9: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDCEBE: FLdPr var_188
  loc_CDCEC1:  = Me.Fields
  loc_CDCEC6: FLdPr var_220
  loc_CDCEC9: from_stack_2 = Me.Item(from_stack_1)
  loc_CDCECE: FLdPr var_2B4
  loc_CDCED1:  = Me.Value
  loc_CDCED6: FLdRfVar var_198
  loc_CDCED9: CUI1Var
  loc_CDCEDB: FStUI1 var_176
  loc_CDCEDF: FFreeAd var_188 = "": var_220 = ""
  loc_CDCEE8: FFree1Var var_198 = ""
  loc_CDCEEB: FLdRfVar var_2A8
  loc_CDCEEE: FLdPr Me
  loc_CDCEF1: MemLdRfVar from_stack_1.global_72
  loc_CDCEF4: NewIfNullPr clspersonas
  loc_CDCEF7: from_stack_1 = clspersonas.RecordCount
  loc_CDCEFC: ILdRf var_2A8
  loc_CDCEFF: LitI4 1
  loc_CDCF04: EqI4
  loc_CDCF05: BranchF loc_CDD70B
  loc_CDCF08: FLdFPR8 var_160
  loc_CDCF0B: CVarR8
  loc_CDCF0F: HardType
  loc_CDCF10: LitI4 2
  loc_CDCF15: FLdFPR8 var_E0
  loc_CDCF18: FLdFPR8 var_94
  loc_CDCF1B: SubR4
  loc_CDCF1C: FLdFPR8 var_9C
  loc_CDCF1F: SubR4
  loc_CDCF20: FLdFPR8 var_B4
  loc_CDCF23: SubR4
  loc_CDCF24: CVarR8
  loc_CDCF28: FLdRfVar var_230
  loc_CDCF2B: ImpAdCallFPR4  = Round(, )
  loc_CDCF30: FLdRfVar var_230
  loc_CDCF33: LtVarBool
  loc_CDCF35: FFreeVar var_198 = ""
  loc_CDCF3C: BranchF loc_CDCF80
  loc_CDCF3F: FLdFPR8 var_160
  loc_CDCF42: FStFPR8 var_158
  loc_CDCF45: LitI4 2
  loc_CDCF4A: FLdFPR8 var_E0
  loc_CDCF4D: FLdFPR8 var_94
  loc_CDCF50: SubR4
  loc_CDCF51: FLdFPR8 var_9C
  loc_CDCF54: SubR4
  loc_CDCF55: FLdFPR8 var_158
  loc_CDCF58: SubR4
  loc_CDCF59: FLdFPR8 var_B4
  loc_CDCF5C: SubR4
  loc_CDCF5D: CVarR8
  loc_CDCF61: FLdRfVar var_230
  loc_CDCF64: ImpAdCallFPR4  = Round(, )
  loc_CDCF69: FLdRfVar var_230
  loc_CDCF6C: CR4Var
  loc_CDCF6D: FStFPR8 var_D8
  loc_CDCF70: FFreeVar var_198 = ""
  loc_CDCF77: LitI2_Byte 0
  loc_CDCF79: CR8I2
  loc_CDCF7A: FStFPR8 var_160
  loc_CDCF7D: Branch loc_CDCFBE
  loc_CDCF80: LitI4 2
  loc_CDCF85: FLdFPR8 var_E0
  loc_CDCF88: FLdFPR8 var_94
  loc_CDCF8B: SubR4
  loc_CDCF8C: FLdFPR8 var_9C
  loc_CDCF8F: SubR4
  loc_CDCF90: FLdFPR8 var_B4
  loc_CDCF93: SubR4
  loc_CDCF94: CVarR8
  loc_CDCF98: FLdRfVar var_230
  loc_CDCF9B: ImpAdCallFPR4  = Round(, )
  loc_CDCFA0: FLdRfVar var_230
  loc_CDCFA3: CR4Var
  loc_CDCFA4: FStFPR8 var_158
  loc_CDCFA7: FFreeVar var_198 = ""
  loc_CDCFAE: FLdFPR8 var_160
  loc_CDCFB1: FLdFPR8 var_158
  loc_CDCFB4: SubR4
  loc_CDCFB5: FStFPR8 var_160
  loc_CDCFB8: LitI2_Byte 0
  loc_CDCFBA: CR8I2
  loc_CDCFBB: FStFPR8 var_D8
  loc_CDCFBE: FLdRfVar var_2A8
  loc_CDCFC1: FLdPr Me
  loc_CDCFC4: MemLdRfVar from_stack_1.global_84
  loc_CDCFC7: NewIfNullPr clsboleto
  loc_CDCFCA: from_stack_1 = clsboleto.RecordCount
  loc_CDCFCF: ILdRf var_2A8
  loc_CDCFD2: LitI4 0
  loc_CDCFD7: GtI4
  loc_CDCFD8: BranchF loc_CDD5C3
  loc_CDCFDB: FLdRfVar var_2B4
  loc_CDCFDE: LitVarStr var_1AC, "NumePost"
  loc_CDCFE3: PopAdLdVar
  loc_CDCFE4: FLdRfVar var_220
  loc_CDCFE7: FLdRfVar var_188
  loc_CDCFEA: FLdPr Me
  loc_CDCFED: MemLdRfVar from_stack_1.global_84
  loc_CDCFF0: NewIfNullPr clsboleto
  loc_CDCFF3: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDCFF8: FLdPr var_188
  loc_CDCFFB:  = Me.Fields
  loc_CDD000: FLdPr var_220
  loc_CDD003: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD008: FLdZeroAd var_2B4
  loc_CDD00B: CVarAd
  loc_CDD00F: ImpAdCallI2 IsNumeric()
  loc_CDD014: FFreeAd var_188 = ""
  loc_CDD01B: FFree1Var var_198 = ""
  loc_CDD01E: BranchF loc_CDD070
  loc_CDD021: FLdRfVar var_198
  loc_CDD024: FLdRfVar var_2B4
  loc_CDD027: LitVarStr var_1AC, "NumePost"
  loc_CDD02C: PopAdLdVar
  loc_CDD02D: FLdRfVar var_220
  loc_CDD030: FLdRfVar var_188
  loc_CDD033: FLdPr Me
  loc_CDD036: MemLdRfVar from_stack_1.global_84
  loc_CDD039: NewIfNullPr clsboleto
  loc_CDD03C: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD041: FLdPr var_188
  loc_CDD044:  = Me.Fields
  loc_CDD049: FLdPr var_220
  loc_CDD04C: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD051: FLdPr var_2B4
  loc_CDD054:  = Me.Value
  loc_CDD059: FLdRfVar var_198
  loc_CDD05C: FnCIntVar
  loc_CDD05E: FStI2 var_11A
  loc_CDD061: FFreeAd var_188 = "": var_220 = ""
  loc_CDD06A: FFree1Var var_198 = ""
  loc_CDD06D: Branch loc_CDD075
  loc_CDD070: LitI2_Byte 0
  loc_CDD072: FStI2 var_11A
  loc_CDD075: FLdRfVar var_234
  loc_CDD078: FLdPr Me
  loc_CDD07B: VCallAd Control_ID_PeriLiquTxt
  loc_CDD07E: FStAdFunc var_188
  loc_CDD081: FLdPr var_188
  loc_CDD084:  = Me.Text
  loc_CDD089: FLdRfVar var_298
  loc_CDD08C: FLdPr Me
  loc_CDD08F: VCallAd Control_ID_CodiTiliTxt
  loc_CDD092: FStAdFunc var_220
  loc_CDD095: FLdPr var_220
  loc_CDD098:  = Me.Text
  loc_CDD09D: FLdRfVar var_4A8
  loc_CDD0A0: FLdRfVar var_2FC
  loc_CDD0A3: LitVarStr var_1AC, "CodiDifu"
  loc_CDD0A8: PopAdLdVar
  loc_CDD0A9: FLdRfVar var_2B8
  loc_CDD0AC: FLdRfVar var_2B4
  loc_CDD0AF: FLdPr Me
  loc_CDD0B2: MemLdRfVar from_stack_1.global_56
  loc_CDD0B5: NewIfNullPr clsdifunto
  loc_CDD0B8: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDD0BD: FLdPr var_2B4
  loc_CDD0C0:  = Me.Fields
  loc_CDD0C5: FLdPr var_2B8
  loc_CDD0C8: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD0CD: FLdPr var_2FC
  loc_CDD0D0:  = Me.Value
  loc_CDD0D5: FLdRfVar var_4B8
  loc_CDD0D8: FLdRfVar var_308
  loc_CDD0DB: LitVarStr var_1BC, "CucuPers"
  loc_CDD0E0: PopAdLdVar
  loc_CDD0E1: FLdRfVar var_304
  loc_CDD0E4: FLdRfVar var_300
  loc_CDD0E7: FLdPr Me
  loc_CDD0EA: MemLdRfVar from_stack_1.global_56
  loc_CDD0ED: NewIfNullPr clsdifunto
  loc_CDD0F0: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDD0F5: FLdPr var_300
  loc_CDD0F8:  = Me.Fields
  loc_CDD0FD: FLdPr var_304
  loc_CDD100: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD105: FLdPr var_308
  loc_CDD108:  = Me.Value
  loc_CDD10D: FLdRfVar var_4C8
  loc_CDD110: FLdRfVar var_31C
  loc_CDD113: LitVarStr var_1CC, "CodiCalle"
  loc_CDD118: PopAdLdVar
  loc_CDD119: FLdRfVar var_318
  loc_CDD11C: FLdRfVar var_314
  loc_CDD11F: FLdPr Me
  loc_CDD122: MemLdRfVar from_stack_1.global_84
  loc_CDD125: NewIfNullPr clsboleto
  loc_CDD128: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD12D: FLdPr var_314
  loc_CDD130:  = Me.Fields
  loc_CDD135: FLdPr var_318
  loc_CDD138: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD13D: FLdPr var_31C
  loc_CDD140:  = Me.Value
  loc_CDD145: FLdRfVar var_328
  loc_CDD148: LitVarStr var_1DC, "NumePost"
  loc_CDD14D: PopAdLdVar
  loc_CDD14E: FLdRfVar var_324
  loc_CDD151: FLdRfVar var_320
  loc_CDD154: FLdPr Me
  loc_CDD157: MemLdRfVar from_stack_1.global_84
  loc_CDD15A: NewIfNullPr clsboleto
  loc_CDD15D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD162: FLdPr var_320
  loc_CDD165:  = Me.Fields
  loc_CDD16A: FLdPr var_324
  loc_CDD16D: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD172: FLdZeroAd var_328
  loc_CDD175: CVarAd
  loc_CDD179: ImpAdCallI2 IsNumeric()
  loc_CDD17E: FStI2 var_182
  loc_CDD181: FLdRfVar var_334
  loc_CDD184: LitVarStr var_1EC, "NumePost"
  loc_CDD189: PopAdLdVar
  loc_CDD18A: FLdRfVar var_330
  loc_CDD18D: FLdRfVar var_32C
  loc_CDD190: FLdPr Me
  loc_CDD193: MemLdRfVar from_stack_1.global_84
  loc_CDD196: NewIfNullPr clsboleto
  loc_CDD199: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD19E: FLdPr var_32C
  loc_CDD1A1:  = Me.Fields
  loc_CDD1A6: FLdPr var_330
  loc_CDD1A9: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD1AE: LitVarI2 var_254, 0
  loc_CDD1B3: FLdZeroAd var_334
  loc_CDD1B6: CVarAd
  loc_CDD1BA: FLdI2 var_182
  loc_CDD1BD: CVarBoolI2 var_1FC
  loc_CDD1C1: FLdRfVar var_264
  loc_CDD1C4: ImpAdCallFPR4  = IIf(, , )
  loc_CDD1C9: FLdRfVar var_4D8
  loc_CDD1CC: FLdRfVar var_340
  loc_CDD1CF: LitVarStr var_21C, "DecaPost"
  loc_CDD1D4: PopAdLdVar
  loc_CDD1D5: FLdRfVar var_33C
  loc_CDD1D8: FLdRfVar var_338
  loc_CDD1DB: FLdPr Me
  loc_CDD1DE: MemLdRfVar from_stack_1.global_84
  loc_CDD1E1: NewIfNullPr clsboleto
  loc_CDD1E4: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD1E9: FLdPr var_338
  loc_CDD1EC:  = Me.Fields
  loc_CDD1F1: FLdPr var_33C
  loc_CDD1F4: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD1F9: FLdPr var_340
  loc_CDD1FC:  = Me.Value
  loc_CDD201: FLdRfVar var_4E8
  loc_CDD204: FLdRfVar var_34C
  loc_CDD207: LitVarStr var_244, "CobpPost"
  loc_CDD20C: PopAdLdVar
  loc_CDD20D: FLdRfVar var_348
  loc_CDD210: FLdRfVar var_344
  loc_CDD213: FLdPr Me
  loc_CDD216: MemLdRfVar from_stack_1.global_84
  loc_CDD219: NewIfNullPr clsboleto
  loc_CDD21C: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD221: FLdPr var_344
  loc_CDD224:  = Me.Fields
  loc_CDD229: FLdPr var_348
  loc_CDD22C: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD231: FLdPr var_34C
  loc_CDD234:  = Me.Value
  loc_CDD239: FLdRfVar var_4F8
  loc_CDD23C: FLdRfVar var_358
  loc_CDD23F: LitVarStr var_284, "DebaPost"
  loc_CDD244: PopAdLdVar
  loc_CDD245: FLdRfVar var_354
  loc_CDD248: FLdRfVar var_350
  loc_CDD24B: FLdPr Me
  loc_CDD24E: MemLdRfVar from_stack_1.global_84
  loc_CDD251: NewIfNullPr clsboleto
  loc_CDD254: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD259: FLdPr var_350
  loc_CDD25C:  = Me.Fields
  loc_CDD261: FLdPr var_354
  loc_CDD264: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD269: FLdPr var_358
  loc_CDD26C:  = Me.Value
  loc_CDD271: FLdRfVar var_508
  loc_CDD274: FLdRfVar var_374
  loc_CDD277: LitVarStr var_370, "ManzPost"
  loc_CDD27C: PopAdLdVar
  loc_CDD27D: FLdRfVar var_360
  loc_CDD280: FLdRfVar var_35C
  loc_CDD283: FLdPr Me
  loc_CDD286: MemLdRfVar from_stack_1.global_84
  loc_CDD289: NewIfNullPr clsboleto
  loc_CDD28C: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD291: FLdPr var_35C
  loc_CDD294:  = Me.Fields
  loc_CDD299: FLdPr var_360
  loc_CDD29C: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD2A1: FLdPr var_374
  loc_CDD2A4:  = Me.Value
  loc_CDD2A9: FLdRfVar var_518
  loc_CDD2AC: FLdRfVar var_390
  loc_CDD2AF: LitVarStr var_38C, "CasaPost"
  loc_CDD2B4: PopAdLdVar
  loc_CDD2B5: FLdRfVar var_37C
  loc_CDD2B8: FLdRfVar var_378
  loc_CDD2BB: FLdPr Me
  loc_CDD2BE: MemLdRfVar from_stack_1.global_84
  loc_CDD2C1: NewIfNullPr clsboleto
  loc_CDD2C4: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD2C9: FLdPr var_378
  loc_CDD2CC:  = Me.Fields
  loc_CDD2D1: FLdPr var_37C
  loc_CDD2D4: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD2D9: FLdPr var_390
  loc_CDD2DC:  = Me.Value
  loc_CDD2E1: FLdRfVar var_274
  loc_CDD2E4: FLdRfVar var_3AC
  loc_CDD2E7: LitVarStr var_3A8, "UbicPost"
  loc_CDD2EC: PopAdLdVar
  loc_CDD2ED: FLdRfVar var_398
  loc_CDD2F0: FLdRfVar var_394
  loc_CDD2F3: FLdPr Me
  loc_CDD2F6: MemLdRfVar from_stack_1.global_84
  loc_CDD2F9: NewIfNullPr clsboleto
  loc_CDD2FC: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD301: FLdPr var_394
  loc_CDD304:  = Me.Fields
  loc_CDD309: FLdPr var_398
  loc_CDD30C: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD311: FLdPr var_3AC
  loc_CDD314:  = Me.Value
  loc_CDD319: FLdRfVar var_3D8
  loc_CDD31C: LitVarStr var_3D4, "UbicPost"
  loc_CDD321: PopAdLdVar
  loc_CDD322: FLdRfVar var_3C4
  loc_CDD325: FLdRfVar var_3C0
  loc_CDD328: FLdPr Me
  loc_CDD32B: MemLdRfVar from_stack_1.global_84
  loc_CDD32E: NewIfNullPr clsboleto
  loc_CDD331: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD336: FLdPr var_3C0
  loc_CDD339:  = Me.Fields
  loc_CDD33E: FLdPr var_3C4
  loc_CDD341: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD346: FLdRfVar var_404
  loc_CDD349: FLdRfVar var_3F4
  loc_CDD34C: LitVarStr var_3F0, "Ubicacion"
  loc_CDD351: PopAdLdVar
  loc_CDD352: FLdRfVar var_3E0
  loc_CDD355: FLdRfVar var_3DC
  loc_CDD358: FLdPr Me
  loc_CDD35B: MemLdRfVar from_stack_1.global_84
  loc_CDD35E: NewIfNullPr clsboleto
  loc_CDD361: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD366: FLdPr var_3DC
  loc_CDD369:  = Me.Fields
  loc_CDD36E: FLdPr var_3E0
  loc_CDD371: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD376: FLdPr var_3F4
  loc_CDD379:  = Me.Value
  loc_CDD37E: LitI4 0
  loc_CDD383: LitI4 -1
  loc_CDD388: LitI4 1
  loc_CDD38D: LitStr " "
  loc_CDD390: LitStr "'"
  loc_CDD393: FLdRfVar var_404
  loc_CDD396: CStrVarTmp
  loc_CDD397: FStStrNoPop var_29C
  loc_CDD39A: ImpAdCallI2 Replace(, , , , , )
  loc_CDD39F: CVarStr var_434
  loc_CDD3A2: FLdZeroAd var_3D8
  loc_CDD3A5: CVarAd
  loc_CDD3A9: FLdRfVar var_274
  loc_CDD3AC: LitVarStr var_3BC, vbNullString
  loc_CDD3B1: HardType
  loc_CDD3B2: NeVar var_294
  loc_CDD3B6: FStVar var_414
  loc_CDD3BA: FLdRfVar var_414
  loc_CDD3BD: FLdRfVar var_444
  loc_CDD3C0: ImpAdCallFPR4  = IIf(, , )
  loc_CDD3C5: FLdRfVar var_528
  loc_CDD3C8: FLdRfVar var_460
  loc_CDD3CB: LitVarStr var_45C, "ColpPost"
  loc_CDD3D0: PopAdLdVar
  loc_CDD3D1: FLdRfVar var_44C
  loc_CDD3D4: FLdRfVar var_448
  loc_CDD3D7: FLdPr Me
  loc_CDD3DA: MemLdRfVar from_stack_1.global_84
  loc_CDD3DD: NewIfNullPr clsboleto
  loc_CDD3E0: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD3E5: FLdPr var_448
  loc_CDD3E8:  = Me.Fields
  loc_CDD3ED: FLdPr var_44C
  loc_CDD3F0: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD3F5: FLdPr var_460
  loc_CDD3F8:  = Me.Value
  loc_CDD3FD: FLdRfVar var_538
  loc_CDD400: FLdRfVar var_47C
  loc_CDD403: LitVarStr var_478, "DeloPost"
  loc_CDD408: PopAdLdVar
  loc_CDD409: FLdRfVar var_468
  loc_CDD40C: FLdRfVar var_464
  loc_CDD40F: FLdPr Me
  loc_CDD412: MemLdRfVar from_stack_1.global_84
  loc_CDD415: NewIfNullPr clsboleto
  loc_CDD418: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD41D: FLdPr var_464
  loc_CDD420:  = Me.Fields
  loc_CDD425: FLdPr var_468
  loc_CDD428: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD42D: FLdPr var_47C
  loc_CDD430:  = Me.Value
  loc_CDD435: FLdRfVar var_548
  loc_CDD438: FLdRfVar var_498
  loc_CDD43B: LitVarStr var_494, "CopoPost"
  loc_CDD440: PopAdLdVar
  loc_CDD441: FLdRfVar var_484
  loc_CDD444: FLdRfVar var_480
  loc_CDD447: FLdPr Me
  loc_CDD44A: MemLdRfVar from_stack_1.global_84
  loc_CDD44D: NewIfNullPr clsboleto
  loc_CDD450: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD455: FLdPr var_480
  loc_CDD458:  = Me.Fields
  loc_CDD45D: FLdPr var_484
  loc_CDD460: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD465: FLdPr var_498
  loc_CDD468:  = Me.Value
  loc_CDD46D: FLdUI1
  loc_CDD471: FLdR8 var_180
  loc_CDD474: FLdR8 var_118
  loc_CDD477: FLdI2 var_BE
  loc_CDD47A: LitI2_Byte &HFF
  loc_CDD47C: FLdR8 var_F8
  loc_CDD47F: FLdR8 var_108
  loc_CDD482: FLdRfVar var_548
  loc_CDD485: CStrVarTmp
  loc_CDD486: FStStrNoPop var_2DC
  loc_CDD489: FLdRfVar var_538
  loc_CDD48C: CStrVarTmp
  loc_CDD48D: FStStrNoPop var_2D8
  loc_CDD490: FLdRfVar var_528
  loc_CDD493: CI2Var
  loc_CDD494: FLdRfVar var_444
  loc_CDD497: CStrVarVal var_2D4
  loc_CDD49B: FLdRfVar var_518
  loc_CDD49E: CStrVarTmp
  loc_CDD49F: FStStrNoPop var_2CC
  loc_CDD4A2: FLdRfVar var_508
  loc_CDD4A5: CStrVarTmp
  loc_CDD4A6: FStStrNoPop var_2C8
  loc_CDD4A9: FLdRfVar var_4F8
  loc_CDD4AC: CStrVarTmp
  loc_CDD4AD: FStStrNoPop var_2C4
  loc_CDD4B0: FLdRfVar var_4E8
  loc_CDD4B3: CI2Var
  loc_CDD4B4: FLdRfVar var_4D8
  loc_CDD4B7: CStrVarTmp
  loc_CDD4B8: FStStrNoPop var_2A4
  loc_CDD4BB: FLdRfVar var_264
  loc_CDD4BE: CI4Var
  loc_CDD4C0: FLdRfVar var_4C8
  loc_CDD4C3: CI4Var
  loc_CDD4C5: FLdRfVar var_4B8
  loc_CDD4C8: CStrVarTmp
  loc_CDD4C9: FStStrNoPop var_2A0
  loc_CDD4CC: FLdR8 var_D8
  loc_CDD4CF: LitI2_Byte 0
  loc_CDD4D1: CR8I2
  loc_CDD4D2: PopFPR8
  loc_CDD4D3: FLdR8 var_9C
  loc_CDD4D6: FLdR8 var_94
  loc_CDD4D9: FLdR8 var_158
  loc_CDD4DC: FLdR8 var_E0
  loc_CDD4DF: FLdR8 var_A4
  loc_CDD4E2: ILdRf var_150
  loc_CDD4E5: LitStr "Aforo"
  loc_CDD4E8: LitI2_Byte 1
  loc_CDD4EA: CUI1I2
  loc_CDD4EC: ILdRf var_D0
  loc_CDD4EF: FLdRfVar var_4A8
  loc_CDD4F2: CI4Var
  loc_CDD4F4: FLdI2 var_8A
  loc_CDD4F7: ILdRf var_298
  loc_CDD4FA: CUI1Str
  loc_CDD4FC: FLdPr Me
  loc_CDD4FF: MemLdI2 global_92
  loc_CDD502: CUI1I2
  loc_CDD504: ILdRf var_234
  loc_CDD507: CI2Str
  loc_CDD509: FLdPr Me
  loc_CDD50C: MemLdRfVar from_stack_1.global_68
  loc_CDD50F: NewIfNullPr clsliquceme
  loc_CDD512: Call clsliquceme.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CDD517: FFreeStr var_29C = "": var_234 = "": var_298 = "": var_2A0 = "": var_2A4 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D4 = "": var_2D8 = ""
  loc_CDD530: FFreeAd var_448 = "": var_44C = "": var_464 = "": var_468 = "": var_480 = "": var_484 = "": var_2FC = "": var_308 = "": var_31C = "": var_340 = "": var_34C = "": var_358 = "": var_374 = "": var_390 = "": var_460 = "": var_47C = "": var_498 = "": var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = "": var_300 = "": var_304 = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_338 = "": var_33C = "": var_344 = "": var_348 = "": var_350 = "": var_354 = "": var_35C = "": var_360 = "": var_378 = "": var_37C = "": var_394 = "": var_398 = "": var_3AC = "": var_3C0 = "": var_3C4 = "": var_3DC = "": var_3E0 = ""
  loc_CDD591: FFreeVar var_198 = "": var_1FC = "": var_230 = "": var_254 = "": var_274 = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_4A8 = "": var_4B8 = "": var_4C8 = "": var_264 = "": var_4D8 = "": var_4E8 = "": var_4F8 = "": var_508 = "": var_518 = "": var_444 = "": var_528 = "": var_538 = ""
  loc_CDD5C0: Branch loc_CDD708
  loc_CDD5C3: FLdRfVar var_234
  loc_CDD5C6: FLdPr Me
  loc_CDD5C9: VCallAd Control_ID_PeriLiquTxt
  loc_CDD5CC: FStAdFunc var_188
  loc_CDD5CF: FLdPr var_188
  loc_CDD5D2:  = Me.Text
  loc_CDD5D7: FLdRfVar var_298
  loc_CDD5DA: FLdPr Me
  loc_CDD5DD: VCallAd Control_ID_CodiTiliTxt
  loc_CDD5E0: FStAdFunc var_220
  loc_CDD5E3: FLdPr var_220
  loc_CDD5E6:  = Me.Text
  loc_CDD5EB: FLdRfVar var_198
  loc_CDD5EE: FLdRfVar var_2FC
  loc_CDD5F1: LitVarStr var_1AC, "CodiDifu"
  loc_CDD5F6: PopAdLdVar
  loc_CDD5F7: FLdRfVar var_2B8
  loc_CDD5FA: FLdRfVar var_2B4
  loc_CDD5FD: FLdPr Me
  loc_CDD600: MemLdRfVar from_stack_1.global_56
  loc_CDD603: NewIfNullPr clsdifunto
  loc_CDD606: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDD60B: FLdPr var_2B4
  loc_CDD60E:  = Me.Fields
  loc_CDD613: FLdPr var_2B8
  loc_CDD616: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD61B: FLdPr var_2FC
  loc_CDD61E:  = Me.Value
  loc_CDD623: FLdRfVar var_230
  loc_CDD626: FLdRfVar var_308
  loc_CDD629: LitVarStr var_1BC, "CucuPers"
  loc_CDD62E: PopAdLdVar
  loc_CDD62F: FLdRfVar var_304
  loc_CDD632: FLdRfVar var_300
  loc_CDD635: FLdPr Me
  loc_CDD638: MemLdRfVar from_stack_1.global_56
  loc_CDD63B: NewIfNullPr clsdifunto
  loc_CDD63E: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDD643: FLdPr var_300
  loc_CDD646:  = Me.Fields
  loc_CDD64B: FLdPr var_304
  loc_CDD64E: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD653: FLdPr var_308
  loc_CDD656:  = Me.Value
  loc_CDD65B: FLdUI1
  loc_CDD65F: FLdR8 var_180
  loc_CDD662: FLdR8 var_118
  loc_CDD665: FLdI2 var_BE
  loc_CDD668: LitI2_Byte &HFF
  loc_CDD66A: FLdR8 var_F8
  loc_CDD66D: FLdR8 var_108
  loc_CDD670: LitStr vbNullString
  loc_CDD673: LitStr vbNullString
  loc_CDD676: LitI2_Byte 0
  loc_CDD678: LitStr vbNullString
  loc_CDD67B: LitStr vbNullString
  loc_CDD67E: LitStr vbNullString
  loc_CDD681: LitStr vbNullString
  loc_CDD684: LitI2_Byte 0
  loc_CDD686: LitStr vbNullString
  loc_CDD689: LitI4 0
  loc_CDD68E: LitI4 0
  loc_CDD693: FLdRfVar var_230
  loc_CDD696: CStrVarTmp
  loc_CDD697: FStStrNoPop var_29C
  loc_CDD69A: FLdR8 var_D8
  loc_CDD69D: LitI2_Byte 0
  loc_CDD69F: CR8I2
  loc_CDD6A0: PopFPR8
  loc_CDD6A1: FLdR8 var_9C
  loc_CDD6A4: FLdR8 var_94
  loc_CDD6A7: FLdR8 var_158
  loc_CDD6AA: FLdR8 var_E0
  loc_CDD6AD: FLdR8 var_A4
  loc_CDD6B0: ILdRf var_150
  loc_CDD6B3: LitStr "Aforo"
  loc_CDD6B6: LitI2_Byte 1
  loc_CDD6B8: CUI1I2
  loc_CDD6BA: ILdRf var_D0
  loc_CDD6BD: FLdRfVar var_198
  loc_CDD6C0: CI4Var
  loc_CDD6C2: FLdI2 var_8A
  loc_CDD6C5: ILdRf var_298
  loc_CDD6C8: CUI1Str
  loc_CDD6CA: FLdPr Me
  loc_CDD6CD: MemLdI2 global_92
  loc_CDD6D0: CUI1I2
  loc_CDD6D2: ILdRf var_234
  loc_CDD6D5: CI2Str
  loc_CDD6D7: FLdPr Me
  loc_CDD6DA: MemLdRfVar from_stack_1.global_68
  loc_CDD6DD: NewIfNullPr clsliquceme
  loc_CDD6E0: Call clsliquceme.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CDD6E5: FFreeStr var_234 = "": var_298 = ""
  loc_CDD6EE: FFreeAd var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = "": var_300 = "": var_304 = "": var_2FC = ""
  loc_CDD701: FFreeVar var_198 = ""
  loc_CDD708: Branch loc_CDD80B
  loc_CDD70B: FLdRfVar var_234
  loc_CDD70E: FLdPr Me
  loc_CDD711: VCallAd Control_ID_PeriLiquTxt
  loc_CDD714: FStAdFunc var_188
  loc_CDD717: FLdPr var_188
  loc_CDD71A:  = Me.Text
  loc_CDD71F: FLdRfVar var_298
  loc_CDD722: FLdPr Me
  loc_CDD725: VCallAd Control_ID_CodiTiliTxt
  loc_CDD728: FStAdFunc var_220
  loc_CDD72B: FLdPr var_220
  loc_CDD72E:  = Me.Text
  loc_CDD733: FLdRfVar var_264
  loc_CDD736: FLdRfVar var_2FC
  loc_CDD739: LitVarStr var_1AC, "CodiDifu"
  loc_CDD73E: PopAdLdVar
  loc_CDD73F: FLdRfVar var_2B8
  loc_CDD742: FLdRfVar var_2B4
  loc_CDD745: FLdPr Me
  loc_CDD748: MemLdRfVar from_stack_1.global_68
  loc_CDD74B: NewIfNullPr clsliquceme
  loc_CDD74E: from_stack_1v = clsliquceme.RsFrmGet()
  loc_CDD753: FLdPr var_2B4
  loc_CDD756:  = Me.Fields
  loc_CDD75B: FLdPr var_2B8
  loc_CDD75E: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD763: FLdPr var_2FC
  loc_CDD766:  = Me.Value
  loc_CDD76B: LitVarStr var_1CC, "Cuenta: "
  loc_CDD770: FLdRfVar var_198
  loc_CDD773: FLdRfVar var_308
  loc_CDD776: LitVarStr var_1BC, "CodiCome"
  loc_CDD77B: PopAdLdVar
  loc_CDD77C: FLdRfVar var_304
  loc_CDD77F: FLdRfVar var_300
  loc_CDD782: FLdPr Me
  loc_CDD785: MemLdRfVar from_stack_1.global_68
  loc_CDD788: NewIfNullPr clsliquceme
  loc_CDD78B: from_stack_1v = clsliquceme.RsFrmGet()
  loc_CDD790: FLdPr var_300
  loc_CDD793:  = Me.Fields
  loc_CDD798: FLdPr var_304
  loc_CDD79B: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD7A0: FLdPr var_308
  loc_CDD7A3:  = Me.Value
  loc_CDD7A8: FLdRfVar var_198
  loc_CDD7AB: ConcatVar var_230
  loc_CDD7AF: LitVarStr var_1DC, " No se encontro el titular"
  loc_CDD7B4: ConcatVar var_254
  loc_CDD7B8: CStrVarVal var_29C
  loc_CDD7BC: FLdRfVar var_264
  loc_CDD7BF: CI4Var
  loc_CDD7C1: FLdI2 var_8A
  loc_CDD7C4: ILdRf var_298
  loc_CDD7C7: CUI1Str
  loc_CDD7C9: FLdPr Me
  loc_CDD7CC: MemLdI2 global_92
  loc_CDD7CF: CUI1I2
  loc_CDD7D1: ILdRf var_234
  loc_CDD7D4: CI2Str
  loc_CDD7D6: FLdPr Me
  loc_CDD7D9: MemLdRfVar from_stack_1.global_68
  loc_CDD7DC: NewIfNullPr clsliquceme
  loc_CDD7DF: Call clsliquceme.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CDD7E4: FFreeStr var_234 = "": var_298 = ""
  loc_CDD7ED: FFreeAd var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = "": var_300 = "": var_304 = "": var_308 = ""
  loc_CDD800: FFreeVar var_198 = "": var_230 = "": var_264 = ""
  loc_CDD80B: FLdFPR8 var_D8
  loc_CDD80E: LitI2_Byte 0
  loc_CDD810: CR8I2
  loc_CDD811: GtR4
  loc_CDD812: BranchF loc_CDDFA1
  loc_CDD815: FLdFPR8 var_F0
  loc_CDD818: LitI2_Byte 0
  loc_CDD81A: CR8I2
  loc_CDD81B: GtR4
  loc_CDD81C: BranchF loc_CDDFA1
  loc_CDD81F: FLdRfVar var_2A8
  loc_CDD822: FLdPr Me
  loc_CDD825: MemLdRfVar from_stack_1.global_72
  loc_CDD828: NewIfNullPr clspersonas
  loc_CDD82B: from_stack_1 = clspersonas.RecordCount
  loc_CDD830: ILdRf var_2A8
  loc_CDD833: LitI4 1
  loc_CDD838: EqI4
  loc_CDD839: BranchF loc_CDDFA1
  loc_CDD83C: FLdRfVar var_2A8
  loc_CDD83F: FLdPr Me
  loc_CDD842: MemLdRfVar from_stack_1.global_84
  loc_CDD845: NewIfNullPr clsboleto
  loc_CDD848: from_stack_1 = clsboleto.RecordCount
  loc_CDD84D: ILdRf var_2A8
  loc_CDD850: LitI4 0
  loc_CDD855: GtI4
  loc_CDD856: BranchF loc_CDDDAB
  loc_CDD859: FLdRfVar var_234
  loc_CDD85C: FLdPr Me
  loc_CDD85F: VCallAd Control_ID_PeriLiquTxt
  loc_CDD862: FStAdFunc var_188
  loc_CDD865: FLdPr var_188
  loc_CDD868:  = Me.Text
  loc_CDD86D: FLdRfVar var_298
  loc_CDD870: FLdPr Me
  loc_CDD873: VCallAd Control_ID_CodiTiliTxt
  loc_CDD876: FStAdFunc var_220
  loc_CDD879: FLdPr var_220
  loc_CDD87C:  = Me.Text
  loc_CDD881: FLdRfVar var_4A8
  loc_CDD884: FLdRfVar var_2FC
  loc_CDD887: LitVarStr var_1AC, "CodiDifu"
  loc_CDD88C: PopAdLdVar
  loc_CDD88D: FLdRfVar var_2B8
  loc_CDD890: FLdRfVar var_2B4
  loc_CDD893: FLdPr Me
  loc_CDD896: MemLdRfVar from_stack_1.global_56
  loc_CDD899: NewIfNullPr clsdifunto
  loc_CDD89C: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDD8A1: FLdPr var_2B4
  loc_CDD8A4:  = Me.Fields
  loc_CDD8A9: FLdPr var_2B8
  loc_CDD8AC: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD8B1: FLdPr var_2FC
  loc_CDD8B4:  = Me.Value
  loc_CDD8B9: FLdRfVar var_4B8
  loc_CDD8BC: FLdRfVar var_308
  loc_CDD8BF: LitVarStr var_1BC, "CucuPers"
  loc_CDD8C4: PopAdLdVar
  loc_CDD8C5: FLdRfVar var_304
  loc_CDD8C8: FLdRfVar var_300
  loc_CDD8CB: FLdPr Me
  loc_CDD8CE: MemLdRfVar from_stack_1.global_56
  loc_CDD8D1: NewIfNullPr clsdifunto
  loc_CDD8D4: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDD8D9: FLdPr var_300
  loc_CDD8DC:  = Me.Fields
  loc_CDD8E1: FLdPr var_304
  loc_CDD8E4: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD8E9: FLdPr var_308
  loc_CDD8EC:  = Me.Value
  loc_CDD8F1: FLdRfVar var_4C8
  loc_CDD8F4: FLdRfVar var_31C
  loc_CDD8F7: LitVarStr var_1CC, "CodiCalle"
  loc_CDD8FC: PopAdLdVar
  loc_CDD8FD: FLdRfVar var_318
  loc_CDD900: FLdRfVar var_314
  loc_CDD903: FLdPr Me
  loc_CDD906: MemLdRfVar from_stack_1.global_84
  loc_CDD909: NewIfNullPr clsboleto
  loc_CDD90C: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD911: FLdPr var_314
  loc_CDD914:  = Me.Fields
  loc_CDD919: FLdPr var_318
  loc_CDD91C: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD921: FLdPr var_31C
  loc_CDD924:  = Me.Value
  loc_CDD929: FLdRfVar var_328
  loc_CDD92C: LitVarStr var_1DC, "NumePost"
  loc_CDD931: PopAdLdVar
  loc_CDD932: FLdRfVar var_324
  loc_CDD935: FLdRfVar var_320
  loc_CDD938: FLdPr Me
  loc_CDD93B: MemLdRfVar from_stack_1.global_84
  loc_CDD93E: NewIfNullPr clsboleto
  loc_CDD941: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD946: FLdPr var_320
  loc_CDD949:  = Me.Fields
  loc_CDD94E: FLdPr var_324
  loc_CDD951: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD956: FLdZeroAd var_328
  loc_CDD959: CVarAd
  loc_CDD95D: ImpAdCallI2 IsNumeric()
  loc_CDD962: FStI2 var_182
  loc_CDD965: FLdRfVar var_334
  loc_CDD968: LitVarStr var_1EC, "NumePost"
  loc_CDD96D: PopAdLdVar
  loc_CDD96E: FLdRfVar var_330
  loc_CDD971: FLdRfVar var_32C
  loc_CDD974: FLdPr Me
  loc_CDD977: MemLdRfVar from_stack_1.global_84
  loc_CDD97A: NewIfNullPr clsboleto
  loc_CDD97D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD982: FLdPr var_32C
  loc_CDD985:  = Me.Fields
  loc_CDD98A: FLdPr var_330
  loc_CDD98D: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD992: LitVarI2 var_254, 0
  loc_CDD997: FLdZeroAd var_334
  loc_CDD99A: CVarAd
  loc_CDD99E: FLdI2 var_182
  loc_CDD9A1: CVarBoolI2 var_1FC
  loc_CDD9A5: FLdRfVar var_264
  loc_CDD9A8: ImpAdCallFPR4  = IIf(, , )
  loc_CDD9AD: FLdRfVar var_4D8
  loc_CDD9B0: FLdRfVar var_340
  loc_CDD9B3: LitVarStr var_21C, "DecaPost"
  loc_CDD9B8: PopAdLdVar
  loc_CDD9B9: FLdRfVar var_33C
  loc_CDD9BC: FLdRfVar var_338
  loc_CDD9BF: FLdPr Me
  loc_CDD9C2: MemLdRfVar from_stack_1.global_84
  loc_CDD9C5: NewIfNullPr clsboleto
  loc_CDD9C8: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDD9CD: FLdPr var_338
  loc_CDD9D0:  = Me.Fields
  loc_CDD9D5: FLdPr var_33C
  loc_CDD9D8: from_stack_2 = Me.Item(from_stack_1)
  loc_CDD9DD: FLdPr var_340
  loc_CDD9E0:  = Me.Value
  loc_CDD9E5: FLdRfVar var_4E8
  loc_CDD9E8: FLdRfVar var_34C
  loc_CDD9EB: LitVarStr var_244, "CobpPost"
  loc_CDD9F0: PopAdLdVar
  loc_CDD9F1: FLdRfVar var_348
  loc_CDD9F4: FLdRfVar var_344
  loc_CDD9F7: FLdPr Me
  loc_CDD9FA: MemLdRfVar from_stack_1.global_84
  loc_CDD9FD: NewIfNullPr clsboleto
  loc_CDDA00: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDA05: FLdPr var_344
  loc_CDDA08:  = Me.Fields
  loc_CDDA0D: FLdPr var_348
  loc_CDDA10: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDA15: FLdPr var_34C
  loc_CDDA18:  = Me.Value
  loc_CDDA1D: FLdRfVar var_4F8
  loc_CDDA20: FLdRfVar var_358
  loc_CDDA23: LitVarStr var_284, "DebaPost"
  loc_CDDA28: PopAdLdVar
  loc_CDDA29: FLdRfVar var_354
  loc_CDDA2C: FLdRfVar var_350
  loc_CDDA2F: FLdPr Me
  loc_CDDA32: MemLdRfVar from_stack_1.global_84
  loc_CDDA35: NewIfNullPr clsboleto
  loc_CDDA38: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDA3D: FLdPr var_350
  loc_CDDA40:  = Me.Fields
  loc_CDDA45: FLdPr var_354
  loc_CDDA48: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDA4D: FLdPr var_358
  loc_CDDA50:  = Me.Value
  loc_CDDA55: FLdRfVar var_508
  loc_CDDA58: FLdRfVar var_374
  loc_CDDA5B: LitVarStr var_370, "ManzPost"
  loc_CDDA60: PopAdLdVar
  loc_CDDA61: FLdRfVar var_360
  loc_CDDA64: FLdRfVar var_35C
  loc_CDDA67: FLdPr Me
  loc_CDDA6A: MemLdRfVar from_stack_1.global_84
  loc_CDDA6D: NewIfNullPr clsboleto
  loc_CDDA70: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDA75: FLdPr var_35C
  loc_CDDA78:  = Me.Fields
  loc_CDDA7D: FLdPr var_360
  loc_CDDA80: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDA85: FLdPr var_374
  loc_CDDA88:  = Me.Value
  loc_CDDA8D: FLdRfVar var_518
  loc_CDDA90: FLdRfVar var_390
  loc_CDDA93: LitVarStr var_38C, "CasaPost"
  loc_CDDA98: PopAdLdVar
  loc_CDDA99: FLdRfVar var_37C
  loc_CDDA9C: FLdRfVar var_378
  loc_CDDA9F: FLdPr Me
  loc_CDDAA2: MemLdRfVar from_stack_1.global_84
  loc_CDDAA5: NewIfNullPr clsboleto
  loc_CDDAA8: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDAAD: FLdPr var_378
  loc_CDDAB0:  = Me.Fields
  loc_CDDAB5: FLdPr var_37C
  loc_CDDAB8: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDABD: FLdPr var_390
  loc_CDDAC0:  = Me.Value
  loc_CDDAC5: FLdRfVar var_274
  loc_CDDAC8: FLdRfVar var_3AC
  loc_CDDACB: LitVarStr var_3A8, "UbicPost"
  loc_CDDAD0: PopAdLdVar
  loc_CDDAD1: FLdRfVar var_398
  loc_CDDAD4: FLdRfVar var_394
  loc_CDDAD7: FLdPr Me
  loc_CDDADA: MemLdRfVar from_stack_1.global_84
  loc_CDDADD: NewIfNullPr clsboleto
  loc_CDDAE0: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDAE5: FLdPr var_394
  loc_CDDAE8:  = Me.Fields
  loc_CDDAED: FLdPr var_398
  loc_CDDAF0: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDAF5: FLdPr var_3AC
  loc_CDDAF8:  = Me.Value
  loc_CDDAFD: FLdRfVar var_3D8
  loc_CDDB00: LitVarStr var_3D4, "UbicPost"
  loc_CDDB05: PopAdLdVar
  loc_CDDB06: FLdRfVar var_3C4
  loc_CDDB09: FLdRfVar var_3C0
  loc_CDDB0C: FLdPr Me
  loc_CDDB0F: MemLdRfVar from_stack_1.global_84
  loc_CDDB12: NewIfNullPr clsboleto
  loc_CDDB15: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDB1A: FLdPr var_3C0
  loc_CDDB1D:  = Me.Fields
  loc_CDDB22: FLdPr var_3C4
  loc_CDDB25: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDB2A: FLdRfVar var_404
  loc_CDDB2D: FLdRfVar var_3F4
  loc_CDDB30: LitVarStr var_3F0, "Ubicacion"
  loc_CDDB35: PopAdLdVar
  loc_CDDB36: FLdRfVar var_3E0
  loc_CDDB39: FLdRfVar var_3DC
  loc_CDDB3C: FLdPr Me
  loc_CDDB3F: MemLdRfVar from_stack_1.global_84
  loc_CDDB42: NewIfNullPr clsboleto
  loc_CDDB45: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDB4A: FLdPr var_3DC
  loc_CDDB4D:  = Me.Fields
  loc_CDDB52: FLdPr var_3E0
  loc_CDDB55: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDB5A: FLdPr var_3F4
  loc_CDDB5D:  = Me.Value
  loc_CDDB62: LitI4 0
  loc_CDDB67: LitI4 -1
  loc_CDDB6C: LitI4 1
  loc_CDDB71: LitStr " "
  loc_CDDB74: LitStr "'"
  loc_CDDB77: FLdRfVar var_404
  loc_CDDB7A: CStrVarTmp
  loc_CDDB7B: FStStrNoPop var_29C
  loc_CDDB7E: ImpAdCallI2 Replace(, , , , , )
  loc_CDDB83: CVarStr var_434
  loc_CDDB86: FLdZeroAd var_3D8
  loc_CDDB89: CVarAd
  loc_CDDB8D: FLdRfVar var_274
  loc_CDDB90: LitVarStr var_3BC, vbNullString
  loc_CDDB95: HardType
  loc_CDDB96: NeVar var_294
  loc_CDDB9A: FStVar var_414
  loc_CDDB9E: FLdRfVar var_414
  loc_CDDBA1: FLdRfVar var_444
  loc_CDDBA4: ImpAdCallFPR4  = IIf(, , )
  loc_CDDBA9: FLdRfVar var_528
  loc_CDDBAC: FLdRfVar var_460
  loc_CDDBAF: LitVarStr var_45C, "ColpPost"
  loc_CDDBB4: PopAdLdVar
  loc_CDDBB5: FLdRfVar var_44C
  loc_CDDBB8: FLdRfVar var_448
  loc_CDDBBB: FLdPr Me
  loc_CDDBBE: MemLdRfVar from_stack_1.global_84
  loc_CDDBC1: NewIfNullPr clsboleto
  loc_CDDBC4: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDBC9: FLdPr var_448
  loc_CDDBCC:  = Me.Fields
  loc_CDDBD1: FLdPr var_44C
  loc_CDDBD4: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDBD9: FLdPr var_460
  loc_CDDBDC:  = Me.Value
  loc_CDDBE1: FLdRfVar var_538
  loc_CDDBE4: FLdRfVar var_47C
  loc_CDDBE7: LitVarStr var_478, "DeloPost"
  loc_CDDBEC: PopAdLdVar
  loc_CDDBED: FLdRfVar var_468
  loc_CDDBF0: FLdRfVar var_464
  loc_CDDBF3: FLdPr Me
  loc_CDDBF6: MemLdRfVar from_stack_1.global_84
  loc_CDDBF9: NewIfNullPr clsboleto
  loc_CDDBFC: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDC01: FLdPr var_464
  loc_CDDC04:  = Me.Fields
  loc_CDDC09: FLdPr var_468
  loc_CDDC0C: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDC11: FLdPr var_47C
  loc_CDDC14:  = Me.Value
  loc_CDDC19: FLdRfVar var_548
  loc_CDDC1C: FLdRfVar var_498
  loc_CDDC1F: LitVarStr var_494, "CopoPost"
  loc_CDDC24: PopAdLdVar
  loc_CDDC25: FLdRfVar var_484
  loc_CDDC28: FLdRfVar var_480
  loc_CDDC2B: FLdPr Me
  loc_CDDC2E: MemLdRfVar from_stack_1.global_84
  loc_CDDC31: NewIfNullPr clsboleto
  loc_CDDC34: from_stack_1v = clsboleto.RsFrmGet()
  loc_CDDC39: FLdPr var_480
  loc_CDDC3C:  = Me.Fields
  loc_CDDC41: FLdPr var_484
  loc_CDDC44: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDC49: FLdPr var_498
  loc_CDDC4C:  = Me.Value
  loc_CDDC51: FLdUI1
  loc_CDDC55: FLdR8 var_180
  loc_CDDC58: FLdR8 var_118
  loc_CDDC5B: FLdI2 var_BE
  loc_CDDC5E: LitI2_Byte 0
  loc_CDDC60: FLdR8 var_F8
  loc_CDDC63: FLdR8 var_108
  loc_CDDC66: FLdRfVar var_548
  loc_CDDC69: CStrVarTmp
  loc_CDDC6A: FStStrNoPop var_2DC
  loc_CDDC6D: FLdRfVar var_538
  loc_CDDC70: CStrVarTmp
  loc_CDDC71: FStStrNoPop var_2D8
  loc_CDDC74: FLdRfVar var_528
  loc_CDDC77: CI2Var
  loc_CDDC78: FLdRfVar var_444
  loc_CDDC7B: CStrVarVal var_2D4
  loc_CDDC7F: FLdRfVar var_518
  loc_CDDC82: CStrVarTmp
  loc_CDDC83: FStStrNoPop var_2CC
  loc_CDDC86: FLdRfVar var_508
  loc_CDDC89: CStrVarTmp
  loc_CDDC8A: FStStrNoPop var_2C8
  loc_CDDC8D: FLdRfVar var_4F8
  loc_CDDC90: CStrVarTmp
  loc_CDDC91: FStStrNoPop var_2C4
  loc_CDDC94: FLdRfVar var_4E8
  loc_CDDC97: CI2Var
  loc_CDDC98: FLdRfVar var_4D8
  loc_CDDC9B: CStrVarTmp
  loc_CDDC9C: FStStrNoPop var_2A4
  loc_CDDC9F: FLdRfVar var_264
  loc_CDDCA2: CI4Var
  loc_CDDCA4: FLdRfVar var_4C8
  loc_CDDCA7: CI4Var
  loc_CDDCA9: FLdRfVar var_4B8
  loc_CDDCAC: CStrVarTmp
  loc_CDDCAD: FStStrNoPop var_2A0
  loc_CDDCB0: FLdR8 var_F0
  loc_CDDCB3: LitI2_Byte 0
  loc_CDDCB5: CR8I2
  loc_CDDCB6: PopFPR8
  loc_CDDCB7: LitI2_Byte 0
  loc_CDDCB9: CR8I2
  loc_CDDCBA: PopFPR8
  loc_CDDCBB: LitI2_Byte 0
  loc_CDDCBD: CR8I2
  loc_CDDCBE: PopFPR8
  loc_CDDCBF: LitI2_Byte 0
  loc_CDDCC1: CR8I2
  loc_CDDCC2: PopFPR8
  loc_CDDCC3: FLdR8 var_F0
  loc_CDDCC6: LitI2_Byte 0
  loc_CDDCC8: CR8I2
  loc_CDDCC9: PopFPR8
  loc_CDDCCA: ILdRf var_150
  loc_CDDCCD: LitStr "Aforo"
  loc_CDDCD0: LitI2_Byte 1
  loc_CDDCD2: CUI1I2
  loc_CDDCD4: ILdRf var_CC
  loc_CDDCD7: FLdRfVar var_4A8
  loc_CDDCDA: CI4Var
  loc_CDDCDC: FLdI2 var_8A
  loc_CDDCDF: ILdRf var_298
  loc_CDDCE2: CUI1Str
  loc_CDDCE4: FLdPr Me
  loc_CDDCE7: MemLdI2 global_92
  loc_CDDCEA: CUI1I2
  loc_CDDCEC: ILdRf var_234
  loc_CDDCEF: CI2Str
  loc_CDDCF1: FLdPr Me
  loc_CDDCF4: MemLdRfVar from_stack_1.global_68
  loc_CDDCF7: NewIfNullPr clsliquceme
  loc_CDDCFA: Call clsliquceme.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CDDCFF: FFreeStr var_29C = "": var_234 = "": var_298 = "": var_2A0 = "": var_2A4 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D4 = "": var_2D8 = ""
  loc_CDDD18: FFreeAd var_448 = "": var_44C = "": var_464 = "": var_468 = "": var_480 = "": var_484 = "": var_2FC = "": var_308 = "": var_31C = "": var_340 = "": var_34C = "": var_358 = "": var_374 = "": var_390 = "": var_460 = "": var_47C = "": var_498 = "": var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = "": var_300 = "": var_304 = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_338 = "": var_33C = "": var_344 = "": var_348 = "": var_350 = "": var_354 = "": var_35C = "": var_360 = "": var_378 = "": var_37C = "": var_394 = "": var_398 = "": var_3AC = "": var_3C0 = "": var_3C4 = "": var_3DC = "": var_3E0 = ""
  loc_CDDD79: FFreeVar var_198 = "": var_1FC = "": var_230 = "": var_254 = "": var_274 = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_4A8 = "": var_4B8 = "": var_4C8 = "": var_264 = "": var_4D8 = "": var_4E8 = "": var_4F8 = "": var_508 = "": var_518 = "": var_444 = "": var_528 = "": var_538 = ""
  loc_CDDDA8: Branch loc_CDDEF4
  loc_CDDDAB: FLdRfVar var_234
  loc_CDDDAE: FLdPr Me
  loc_CDDDB1: VCallAd Control_ID_PeriLiquTxt
  loc_CDDDB4: FStAdFunc var_188
  loc_CDDDB7: FLdPr var_188
  loc_CDDDBA:  = Me.Text
  loc_CDDDBF: FLdRfVar var_298
  loc_CDDDC2: FLdPr Me
  loc_CDDDC5: VCallAd Control_ID_CodiTiliTxt
  loc_CDDDC8: FStAdFunc var_220
  loc_CDDDCB: FLdPr var_220
  loc_CDDDCE:  = Me.Text
  loc_CDDDD3: FLdRfVar var_198
  loc_CDDDD6: FLdRfVar var_2FC
  loc_CDDDD9: LitVarStr var_1AC, "CodiDifu"
  loc_CDDDDE: PopAdLdVar
  loc_CDDDDF: FLdRfVar var_2B8
  loc_CDDDE2: FLdRfVar var_2B4
  loc_CDDDE5: FLdPr Me
  loc_CDDDE8: MemLdRfVar from_stack_1.global_56
  loc_CDDDEB: NewIfNullPr clsdifunto
  loc_CDDDEE: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDDDF3: FLdPr var_2B4
  loc_CDDDF6:  = Me.Fields
  loc_CDDDFB: FLdPr var_2B8
  loc_CDDDFE: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDE03: FLdPr var_2FC
  loc_CDDE06:  = Me.Value
  loc_CDDE0B: FLdRfVar var_230
  loc_CDDE0E: FLdRfVar var_308
  loc_CDDE11: LitVarStr var_1BC, "CucuPers"
  loc_CDDE16: PopAdLdVar
  loc_CDDE17: FLdRfVar var_304
  loc_CDDE1A: FLdRfVar var_300
  loc_CDDE1D: FLdPr Me
  loc_CDDE20: MemLdRfVar from_stack_1.global_56
  loc_CDDE23: NewIfNullPr clsdifunto
  loc_CDDE26: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDDE2B: FLdPr var_300
  loc_CDDE2E:  = Me.Fields
  loc_CDDE33: FLdPr var_304
  loc_CDDE36: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDE3B: FLdPr var_308
  loc_CDDE3E:  = Me.Value
  loc_CDDE43: FLdUI1
  loc_CDDE47: FLdR8 var_180
  loc_CDDE4A: FLdR8 var_118
  loc_CDDE4D: FLdI2 var_BE
  loc_CDDE50: LitI2_Byte 0
  loc_CDDE52: FLdR8 var_F8
  loc_CDDE55: FLdR8 var_108
  loc_CDDE58: LitStr vbNullString
  loc_CDDE5B: LitStr vbNullString
  loc_CDDE5E: LitI2_Byte 0
  loc_CDDE60: LitStr vbNullString
  loc_CDDE63: LitStr vbNullString
  loc_CDDE66: LitStr vbNullString
  loc_CDDE69: LitStr vbNullString
  loc_CDDE6C: LitI2_Byte 0
  loc_CDDE6E: LitStr vbNullString
  loc_CDDE71: LitI4 0
  loc_CDDE76: LitI4 0
  loc_CDDE7B: FLdRfVar var_230
  loc_CDDE7E: CStrVarTmp
  loc_CDDE7F: FStStrNoPop var_29C
  loc_CDDE82: FLdR8 var_F0
  loc_CDDE85: LitI2_Byte 0
  loc_CDDE87: CR8I2
  loc_CDDE88: PopFPR8
  loc_CDDE89: LitI2_Byte 0
  loc_CDDE8B: CR8I2
  loc_CDDE8C: PopFPR8
  loc_CDDE8D: LitI2_Byte 0
  loc_CDDE8F: CR8I2
  loc_CDDE90: PopFPR8
  loc_CDDE91: LitI2_Byte 0
  loc_CDDE93: CR8I2
  loc_CDDE94: PopFPR8
  loc_CDDE95: FLdR8 var_F0
  loc_CDDE98: LitI2_Byte 0
  loc_CDDE9A: CR8I2
  loc_CDDE9B: PopFPR8
  loc_CDDE9C: ILdRf var_150
  loc_CDDE9F: LitStr "Aforo"
  loc_CDDEA2: LitI2_Byte 1
  loc_CDDEA4: CUI1I2
  loc_CDDEA6: ILdRf var_CC
  loc_CDDEA9: FLdRfVar var_198
  loc_CDDEAC: CI4Var
  loc_CDDEAE: FLdI2 var_8A
  loc_CDDEB1: ILdRf var_298
  loc_CDDEB4: CUI1Str
  loc_CDDEB6: FLdPr Me
  loc_CDDEB9: MemLdI2 global_92
  loc_CDDEBC: CUI1I2
  loc_CDDEBE: ILdRf var_234
  loc_CDDEC1: CI2Str
  loc_CDDEC3: FLdPr Me
  loc_CDDEC6: MemLdRfVar from_stack_1.global_68
  loc_CDDEC9: NewIfNullPr clsliquceme
  loc_CDDECC: Call clsliquceme.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CDDED1: FFreeStr var_234 = "": var_298 = ""
  loc_CDDEDA: FFreeAd var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = "": var_300 = "": var_304 = "": var_2FC = ""
  loc_CDDEED: FFreeVar var_198 = ""
  loc_CDDEF4: FLdRfVar var_234
  loc_CDDEF7: FLdPr Me
  loc_CDDEFA: VCallAd Control_ID_PeriLiquTxt
  loc_CDDEFD: FStAdFunc var_188
  loc_CDDF00: FLdPr var_188
  loc_CDDF03:  = Me.Text
  loc_CDDF08: FLdRfVar var_298
  loc_CDDF0B: FLdPr Me
  loc_CDDF0E: VCallAd Control_ID_CodiTiliTxt
  loc_CDDF11: FStAdFunc var_220
  loc_CDDF14: FLdPr var_220
  loc_CDDF17:  = Me.Text
  loc_CDDF1C: FLdRfVar var_198
  loc_CDDF1F: FLdRfVar var_2FC
  loc_CDDF22: LitVarStr var_1AC, "CodiDifu"
  loc_CDDF27: PopAdLdVar
  loc_CDDF28: FLdRfVar var_2B8
  loc_CDDF2B: FLdRfVar var_2B4
  loc_CDDF2E: FLdPr Me
  loc_CDDF31: MemLdRfVar from_stack_1.global_56
  loc_CDDF34: NewIfNullPr clsdifunto
  loc_CDDF37: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDDF3C: FLdPr var_2B4
  loc_CDDF3F:  = Me.Fields
  loc_CDDF44: FLdPr var_2B8
  loc_CDDF47: from_stack_2 = Me.Item(from_stack_1)
  loc_CDDF4C: FLdPr var_2FC
  loc_CDDF4F:  = Me.Value
  loc_CDDF54: FLdRfVar var_198
  loc_CDDF57: CStrVarTmp
  loc_CDDF58: FStStrNoPop var_29C
  loc_CDDF5B: LitI2_Byte 4
  loc_CDDF5D: CUI1I2
  loc_CDDF5F: FLdI2 var_8A
  loc_CDDF62: ILdRf var_298
  loc_CDDF65: CUI1Str
  loc_CDDF67: FLdPr Me
  loc_CDDF6A: MemLdI2 global_92
  loc_CDDF6D: CUI1I2
  loc_CDDF6F: ILdRf var_234
  loc_CDDF72: CI2Str
  loc_CDDF74: FLdPr Me
  loc_CDDF77: MemLdRfVar from_stack_1.global_80
  loc_CDDF7A: NewIfNullPr clsrecabole
  loc_CDDF7D: Call clsrecabole.ModificaRecabole(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CDDF82: FFreeStr var_234 = "": var_298 = ""
  loc_CDDF8B: FFreeAd var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = ""
  loc_CDDF98: FFree1Var var_198 = ""
  loc_CDDF9B: LitI2_Byte 0
  loc_CDDF9D: CR8I2
  loc_CDDF9E: FStFPR8 var_F0
  loc_CDDFA1: FLdPr Me
  loc_CDDFA4: MemLdRfVar from_stack_1.global_92
  loc_CDDFA7: NextI2 var_30C, loc_CDCB23
  loc_CDDFAC: Branch loc_CDE0AF
  loc_CDDFAF: FLdRfVar var_234
  loc_CDDFB2: FLdPr Me
  loc_CDDFB5: VCallAd Control_ID_PeriLiquTxt
  loc_CDDFB8: FStAdFunc var_188
  loc_CDDFBB: FLdPr var_188
  loc_CDDFBE:  = Me.Text
  loc_CDDFC3: FLdRfVar var_298
  loc_CDDFC6: FLdPr Me
  loc_CDDFC9: VCallAd Control_ID_CodiTiliTxt
  loc_CDDFCC: FStAdFunc var_220
  loc_CDDFCF: FLdPr var_220
  loc_CDDFD2:  = Me.Text
  loc_CDDFD7: FLdRfVar var_264
  loc_CDDFDA: FLdRfVar var_2FC
  loc_CDDFDD: LitVarStr var_1AC, "CodiDifu"
  loc_CDDFE2: PopAdLdVar
  loc_CDDFE3: FLdRfVar var_2B8
  loc_CDDFE6: FLdRfVar var_2B4
  loc_CDDFE9: FLdPr Me
  loc_CDDFEC: MemLdRfVar from_stack_1.global_56
  loc_CDDFEF: NewIfNullPr clsdifunto
  loc_CDDFF2: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDDFF7: FLdPr var_2B4
  loc_CDDFFA:  = Me.Fields
  loc_CDDFFF: FLdPr var_2B8
  loc_CDE002: from_stack_2 = Me.Item(from_stack_1)
  loc_CDE007: FLdPr var_2FC
  loc_CDE00A:  = Me.Value
  loc_CDE00F: LitVarStr var_1CC, "Cuenta: "
  loc_CDE014: FLdRfVar var_198
  loc_CDE017: FLdRfVar var_308
  loc_CDE01A: LitVarStr var_1BC, "CodiDifu"
  loc_CDE01F: PopAdLdVar
  loc_CDE020: FLdRfVar var_304
  loc_CDE023: FLdRfVar var_300
  loc_CDE026: FLdPr Me
  loc_CDE029: MemLdRfVar from_stack_1.global_56
  loc_CDE02C: NewIfNullPr clsdifunto
  loc_CDE02F: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDE034: FLdPr var_300
  loc_CDE037:  = Me.Fields
  loc_CDE03C: FLdPr var_304
  loc_CDE03F: from_stack_2 = Me.Item(from_stack_1)
  loc_CDE044: FLdPr var_308
  loc_CDE047:  = Me.Value
  loc_CDE04C: FLdRfVar var_198
  loc_CDE04F: ConcatVar var_230
  loc_CDE053: LitVarStr var_1DC, " El importe del calculo es 0"
  loc_CDE058: ConcatVar var_254
  loc_CDE05C: CStrVarVal var_29C
  loc_CDE060: FLdRfVar var_264
  loc_CDE063: CI4Var
  loc_CDE065: FLdI2 var_8A
  loc_CDE068: ILdRf var_298
  loc_CDE06B: CUI1Str
  loc_CDE06D: FLdPr Me
  loc_CDE070: MemLdI2 global_92
  loc_CDE073: CUI1I2
  loc_CDE075: ILdRf var_234
  loc_CDE078: CI2Str
  loc_CDE07A: FLdPr Me
  loc_CDE07D: MemLdRfVar from_stack_1.global_68
  loc_CDE080: NewIfNullPr clsliquceme
  loc_CDE083: Call clsliquceme.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CDE088: FFreeStr var_234 = "": var_298 = ""
  loc_CDE091: FFreeAd var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = "": var_300 = "": var_304 = "": var_308 = ""
  loc_CDE0A4: FFreeVar var_198 = "": var_230 = "": var_264 = ""
  loc_CDE0AF: Branch loc_CDE1B2
  loc_CDE0B2: FLdRfVar var_234
  loc_CDE0B5: FLdPr Me
  loc_CDE0B8: VCallAd Control_ID_PeriLiquTxt
  loc_CDE0BB: FStAdFunc var_188
  loc_CDE0BE: FLdPr var_188
  loc_CDE0C1:  = Me.Text
  loc_CDE0C6: FLdRfVar var_298
  loc_CDE0C9: FLdPr Me
  loc_CDE0CC: VCallAd Control_ID_CodiTiliTxt
  loc_CDE0CF: FStAdFunc var_220
  loc_CDE0D2: FLdPr var_220
  loc_CDE0D5:  = Me.Text
  loc_CDE0DA: FLdRfVar var_264
  loc_CDE0DD: FLdRfVar var_2FC
  loc_CDE0E0: LitVarStr var_1AC, "CodiDifu"
  loc_CDE0E5: PopAdLdVar
  loc_CDE0E6: FLdRfVar var_2B8
  loc_CDE0E9: FLdRfVar var_2B4
  loc_CDE0EC: FLdPr Me
  loc_CDE0EF: MemLdRfVar from_stack_1.global_56
  loc_CDE0F2: NewIfNullPr clsdifunto
  loc_CDE0F5: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDE0FA: FLdPr var_2B4
  loc_CDE0FD:  = Me.Fields
  loc_CDE102: FLdPr var_2B8
  loc_CDE105: from_stack_2 = Me.Item(from_stack_1)
  loc_CDE10A: FLdPr var_2FC
  loc_CDE10D:  = Me.Value
  loc_CDE112: LitVarStr var_1CC, "Cuenta: "
  loc_CDE117: FLdRfVar var_198
  loc_CDE11A: FLdRfVar var_308
  loc_CDE11D: LitVarStr var_1BC, "CodiDifu"
  loc_CDE122: PopAdLdVar
  loc_CDE123: FLdRfVar var_304
  loc_CDE126: FLdRfVar var_300
  loc_CDE129: FLdPr Me
  loc_CDE12C: MemLdRfVar from_stack_1.global_56
  loc_CDE12F: NewIfNullPr clsdifunto
  loc_CDE132: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CDE137: FLdPr var_300
  loc_CDE13A:  = Me.Fields
  loc_CDE13F: FLdPr var_304
  loc_CDE142: from_stack_2 = Me.Item(from_stack_1)
  loc_CDE147: FLdPr var_308
  loc_CDE14A:  = Me.Value
  loc_CDE14F: FLdRfVar var_198
  loc_CDE152: ConcatVar var_230
  loc_CDE156: LitVarStr var_1DC, " No existe la relación"
  loc_CDE15B: ConcatVar var_254
  loc_CDE15F: CStrVarVal var_29C
  loc_CDE163: FLdRfVar var_264
  loc_CDE166: CI4Var
  loc_CDE168: FLdI2 var_8A
  loc_CDE16B: ILdRf var_298
  loc_CDE16E: CUI1Str
  loc_CDE170: FLdPr Me
  loc_CDE173: MemLdI2 global_92
  loc_CDE176: CUI1I2
  loc_CDE178: ILdRf var_234
  loc_CDE17B: CI2Str
  loc_CDE17D: FLdPr Me
  loc_CDE180: MemLdRfVar from_stack_1.global_68
  loc_CDE183: NewIfNullPr clsliquceme
  loc_CDE186: Call clsliquceme.CreaErrorLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CDE18B: FFreeStr var_234 = "": var_298 = ""
  loc_CDE194: FFreeAd var_188 = "": var_220 = "": var_2B4 = "": var_2B8 = "": var_300 = "": var_304 = "": var_308 = ""
  loc_CDE1A7: FFreeVar var_198 = "": var_230 = "": var_264 = ""
  loc_CDE1B2: FLdPr Me
  loc_CDE1B5: MemLdRfVar from_stack_1.global_56
  loc_CDE1B8: NewIfNullPr clsdifunto
  loc_CDE1BB: Call clsdifunto.MoveSiguiente()
  loc_CDE1C0: Branch loc_CDC2A8
  loc_CDE1C3: LitI2_Byte 0
  loc_CDE1C5: FLdPr Me
  loc_CDE1C8: Me.MousePointer = from_stack_1
  loc_CDE1CD: LitVar_FALSE
  loc_CDE1D1: PopAdLdVar
  loc_CDE1D2: FLdPr Me
  loc_CDE1D5: VCallAd Control_ID_ProgressBar
  loc_CDE1D8: FStAdFunc var_188
  loc_CDE1DB: FLdPr var_188
  loc_CDE1DE: LateIdSt
  loc_CDE1E3: FFree1Ad var_188
  loc_CDE1E6: LitStr "Proceso Terminado. Por favor controle el cálculo de tasas realizado"
  loc_CDE1E9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CDE1EE: LitI4 0
  loc_CDE1F3: LitI4 0
  loc_CDE1F8: FLdRfVar var_2D0
  loc_CDE1FB: Redim
  loc_CDE205: FLdPr Me
  loc_CDE208: VCallAd Control_ID_CalculoCmd
  loc_CDE20B: CVarAd
  loc_CDE20F: ParmAry1St
  loc_CDE215: FLdRfVar var_2D0
  loc_CDE218: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CDE21D: FLdRfVar var_2D0
  loc_CDE220: Erase
  loc_CDE221: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() '9BC0C0
  'Data Table: 4DA358
  loc_9BC0AC: FLdPrThis
  loc_9BC0AD: VCallAd Control_ID_NumeCtaTxt
  loc_9BC0B0: CVarAd
  loc_9BC0B4: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC0B9: FFree1Var var_94 = ""
  loc_9BC0BC: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'AB4F64
  'Data Table: 4DA358
  loc_AB4E88: LitStr "1234567890 "
  loc_AB4E8B: FStStrCopy var_88
  loc_AB4E8E: FLdRfVar var_88
  loc_AB4E91: ILdRf KeyAscii
  loc_AB4E94: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB4E99: IStI2 KeyAscii
  loc_AB4E9C: FFree1Str var_88
  loc_AB4E9F: ILdI2 KeyAscii
  loc_AB4EA2: LitI2_Byte &H20
  loc_AB4EA4: EqI2
  loc_AB4EA5: BranchF loc_AB4F60
  loc_AB4EA8: LitI2_Byte 0
  loc_AB4EAA: IStI2 KeyAscii
  loc_AB4EAD: LitI2_Byte 1
  loc_AB4EAF: CUI1I2
  loc_AB4EB1: ImpAdStUI1 MemVar_D93038
  loc_AB4EB5: LitVar_Missing var_A8
  loc_AB4EB8: PopAdLdVar
  loc_AB4EB9: LitVarI4
  loc_AB4EC1: PopAdLdVar
  loc_AB4EC2: ImpAdLdRf MemVar_D94034
  loc_AB4EC5: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB4EC8: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_AB4ECD: FLdRfVar var_B0
  loc_AB4ED0: FLdRfVar var_AC
  loc_AB4ED3: ImpAdLdRf MemVar_D94034
  loc_AB4ED6: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB4ED9: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB4EDE: FLdPr var_AC
  loc_AB4EE1: from_stack_1 = clsbase.RecordCount
  loc_AB4EE6: ILdRf var_B0
  loc_AB4EE9: LitI4 0
  loc_AB4EEE: GtI4
  loc_AB4EEF: FFree1Ad var_AC
  loc_AB4EF2: BranchF loc_AB4F60
  loc_AB4EF5: FLdRfVar var_CC
  loc_AB4EF8: FLdRfVar var_BC
  loc_AB4EFB: LitVarStr var_98, "CuenCtct"
  loc_AB4F00: PopAdLdVar
  loc_AB4F01: FLdRfVar var_B8
  loc_AB4F04: FLdRfVar var_B4
  loc_AB4F07: FLdRfVar var_AC
  loc_AB4F0A: ImpAdLdRf MemVar_D94034
  loc_AB4F0D: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_AB4F10: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_AB4F15: FLdPr var_AC
  loc_AB4F18: from_stack_1v = clsbase.RsFrmGet()
  loc_AB4F1D: FLdPr var_B4
  loc_AB4F20:  = Me.Fields
  loc_AB4F25: FLdPr var_B8
  loc_AB4F28: from_stack_2 = Me.Item(from_stack_1)
  loc_AB4F2D: FLdPr var_BC
  loc_AB4F30:  = Me.Value
  loc_AB4F35: FLdRfVar var_CC
  loc_AB4F38: CStrVarTmp
  loc_AB4F39: FStStrNoPop var_88
  loc_AB4F3C: FLdPr Me
  loc_AB4F3F: VCallAd Control_ID_NumeCtaTxt
  loc_AB4F42: FStAdFunc var_D0
  loc_AB4F45: FLdPr var_D0
  loc_AB4F48: Me.Text = from_stack_1
  loc_AB4F4D: FFree1Str var_88
  loc_AB4F50: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB4F5D: FFree1Var var_CC = ""
  loc_AB4F60: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'AF272C
  'Data Table: 4DA358
  loc_AF257C: FLdRfVar var_8A
  loc_AF257F: FLdPr Me
  loc_AF2582: VCallAd Control_ID_NumeCtaTxt
  loc_AF2585: FStAdFunc var_88
  loc_AF2588: FLdPr var_88
  loc_AF258B:  = Me.Enabled
  loc_AF2590: FLdI2 var_8A
  loc_AF2593: FFree1Ad var_88
  loc_AF2596: BranchF loc_AF272B
  loc_AF2599: FLdRfVar var_90
  loc_AF259C: FLdPr Me
  loc_AF259F: VCallAd Control_ID_NumeCtaTxt
  loc_AF25A2: FStAdFunc var_88
  loc_AF25A5: FLdPr var_88
  loc_AF25A8:  = Me.Text
  loc_AF25AD: LitI2_Byte &HFF
  loc_AF25AF: LitI2_Byte 0
  loc_AF25B1: ILdRf var_90
  loc_AF25B4: LitStr "Numero de Cuenta"
  loc_AF25B7: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AF25BC: FStStrNoPop var_94
  loc_AF25BF: FLdPr Me
  loc_AF25C2: MemStStrCopy
  loc_AF25C6: FFreeStr var_90 = ""
  loc_AF25CD: FFree1Ad var_88
  loc_AF25D0: FLdPr Me
  loc_AF25D3: MemLdStr global_100
  loc_AF25D6: LitStr vbNullString
  loc_AF25D9: NeStr
  loc_AF25DB: BranchF loc_AF2600
  loc_AF25DE: FLdPr Me
  loc_AF25E1: MemLdStr global_100
  loc_AF25E4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF25E9: FLdPr Me
  loc_AF25EC: VCallAd Control_ID_NumeCtaTxt
  loc_AF25EF: CVarAd
  loc_AF25F3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF25F8: FFree1Var var_A4 = ""
  loc_AF25FB: LitI2_Byte &HFF
  loc_AF25FD: IStI2 Cancel
  loc_AF2600: FLdRfVar var_90
  loc_AF2603: FLdPr Me
  loc_AF2606: VCallAd Control_ID_NumeCtaTxt
  loc_AF2609: FStAdFunc var_88
  loc_AF260C: FLdPr var_88
  loc_AF260F:  = Me.Text
  loc_AF2614: ILdRf var_90
  loc_AF2617: CR8Str
  loc_AF2619: LitI2_Byte 0
  loc_AF261B: CR8I2
  loc_AF261C: GtR4
  loc_AF261D: FFree1Str var_90
  loc_AF2620: FFree1Ad var_88
  loc_AF2623: BranchF loc_AF272B
  loc_AF2626: FLdRfVar var_90
  loc_AF2629: FLdPr Me
  loc_AF262C: VCallAd Control_ID_NumeCtaTxt
  loc_AF262F: FStAdFunc var_88
  loc_AF2632: FLdPr var_88
  loc_AF2635:  = Me.Text
  loc_AF263A: FLdPr Me
  loc_AF263D: MemLdRfVar from_stack_1.global_88
  loc_AF2640: NewIfNullRf
  loc_AF2644: LitStr "Titular"
  loc_AF2647: ILdRf var_90
  loc_AF264A: LitI2_Byte 4
  loc_AF264C: CStrUI1
  loc_AF264E: FStStrNoPop var_94
  loc_AF2651: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_AF2656: FFreeStr var_94 = ""
  loc_AF265D: FFree1Ad var_88
  loc_AF2660: BranchF loc_AF26BC
  loc_AF2663: FLdRfVar var_90
  loc_AF2666: FLdPr Me
  loc_AF2669: MemLdRfVar from_stack_1.global_88
  loc_AF266C: NewIfNullPr tblPersona
  loc_AF266F: from_stack_1v = tblPersona.CucuPersGet()
  loc_AF2674: ILdRf var_90
  loc_AF2677: FLdPr Me
  loc_AF267A: VCallAd Control_ID_CucuPersLbl
  loc_AF267D: FStAdFunc var_88
  loc_AF2680: FLdPr var_88
  loc_AF2683: Me.Caption = from_stack_1
  loc_AF2688: FFree1Str var_90
  loc_AF268B: FFree1Ad var_88
  loc_AF268E: FLdRfVar var_90
  loc_AF2691: FLdPr Me
  loc_AF2694: MemLdRfVar from_stack_1.global_88
  loc_AF2697: NewIfNullPr tblPersona
  loc_AF269A: from_stack_1v = tblPersona.DetaPersGet()
  loc_AF269F: ILdRf var_90
  loc_AF26A2: FLdPr Me
  loc_AF26A5: VCallAd Control_ID_DetaPersLbl
  loc_AF26A8: FStAdFunc var_88
  loc_AF26AB: FLdPr var_88
  loc_AF26AE: Me.Caption = from_stack_1
  loc_AF26B3: FFree1Str var_90
  loc_AF26B6: FFree1Ad var_88
  loc_AF26B9: Branch loc_AF272B
  loc_AF26BC: FLdRfVar var_90
  loc_AF26BF: FLdPr Me
  loc_AF26C2: MemLdRfVar from_stack_1.global_88
  loc_AF26C5: NewIfNullPr tblPersona
  loc_AF26C8: from_stack_1v = tblPersona.MsgErrorGet()
  loc_AF26CD: ILdRf var_90
  loc_AF26D0: FLdPr Me
  loc_AF26D3: MemStStrCopy
  loc_AF26D7: FFree1Str var_90
  loc_AF26DA: FLdPr Me
  loc_AF26DD: MemLdStr global_100
  loc_AF26E0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF26E5: LitStr vbNullString
  loc_AF26E8: FLdPr Me
  loc_AF26EB: VCallAd Control_ID_CucuPersLbl
  loc_AF26EE: FStAdFunc var_88
  loc_AF26F1: FLdPr var_88
  loc_AF26F4: Me.Caption = from_stack_1
  loc_AF26F9: FFree1Ad var_88
  loc_AF26FC: LitStr vbNullString
  loc_AF26FF: FLdPr Me
  loc_AF2702: VCallAd Control_ID_DetaPersLbl
  loc_AF2705: FStAdFunc var_88
  loc_AF2708: FLdPr var_88
  loc_AF270B: Me.Caption = from_stack_1
  loc_AF2710: FFree1Ad var_88
  loc_AF2713: FLdPr Me
  loc_AF2716: VCallAd Control_ID_NumeCtaTxt
  loc_AF2719: CVarAd
  loc_AF271D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF2722: FFree1Var var_A4 = ""
  loc_AF2725: LitI2_Byte &HFF
  loc_AF2727: IStI2 Cancel
  loc_AF272A: ExitProcHresult
  loc_AF272B: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_GotFocus() '9BBA90
  'Data Table: 4DA358
  loc_9BBA7C: FLdPr Me
  loc_9BBA7F: VCallAd Control_ID_CodiTiliTxt
  loc_9BBA82: CVarAd
  loc_9BBA86: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBA8B: FFree1Var var_94 = ""
  loc_9BBA8E: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_KeyPress(KeyAscii As Integer) '9C8E34
  'Data Table: 4DA358
  loc_9C8E1C: LitStr "1234567890"
  loc_9C8E1F: FStStrCopy var_88
  loc_9C8E22: FLdRfVar var_88
  loc_9C8E25: ILdRf KeyAscii
  loc_9C8E28: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C8E2D: IStI2 KeyAscii
  loc_9C8E30: FFree1Str var_88
  loc_9C8E33: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_Validate(Cancel As Boolean) 'AEA918
  'Data Table: 4DA358
  loc_AEA79C: FLdRfVar var_8A
  loc_AEA79F: FLdPr Me
  loc_AEA7A2: VCallAd Control_ID_CodiTiliTxt
  loc_AEA7A5: FStAdFunc var_88
  loc_AEA7A8: FLdPr var_88
  loc_AEA7AB:  = Me.Enabled
  loc_AEA7B0: FLdI2 var_8A
  loc_AEA7B3: FFree1Ad var_88
  loc_AEA7B6: BranchF loc_AEA916
  loc_AEA7B9: FLdRfVar var_90
  loc_AEA7BC: FLdPr Me
  loc_AEA7BF: VCallAd Control_ID_CodiTiliTxt
  loc_AEA7C2: FStAdFunc var_88
  loc_AEA7C5: FLdPr var_88
  loc_AEA7C8:  = Me.Text
  loc_AEA7CD: ILdRf var_90
  loc_AEA7D0: LitI2_Byte 4
  loc_AEA7D2: CUI1I2
  loc_AEA7D4: ImpAdCallI2  = Proc_18_25_A7CBA0()
  loc_AEA7D9: FStStrNoPop var_94
  loc_AEA7DC: FLdPr Me
  loc_AEA7DF: MemStStrCopy
  loc_AEA7E3: FFreeStr var_90 = ""
  loc_AEA7EA: FFree1Ad var_88
  loc_AEA7ED: FLdPr Me
  loc_AEA7F0: MemLdStr global_100
  loc_AEA7F3: LitStr vbNullString
  loc_AEA7F6: NeStr
  loc_AEA7F8: BranchF loc_AEA81E
  loc_AEA7FB: FLdPr Me
  loc_AEA7FE: MemLdStr global_100
  loc_AEA801: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA806: FLdPr Me
  loc_AEA809: VCallAd Control_ID_CodiTiliTxt
  loc_AEA80C: CVarAd
  loc_AEA810: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA815: FFree1Var var_A4 = ""
  loc_AEA818: LitI2_Byte &HFF
  loc_AEA81A: IStI2 Cancel
  loc_AEA81D: ExitProcHresult
  loc_AEA81E: FLdPr Me
  loc_AEA821: MemLdI2 global_94
  loc_AEA824: FLdPr Me
  loc_AEA827: MemLdRfVar from_stack_1.global_92
  loc_AEA82A: FLdPr Me
  loc_AEA82D: MemLdI2 global_96
  loc_AEA830: ForI2 var_A8
  loc_AEA836: FLdRfVar var_90
  loc_AEA839: FLdPr Me
  loc_AEA83C: VCallAd Control_ID_PeriLiquTxt
  loc_AEA83F: FStAdFunc var_88
  loc_AEA842: FLdPr var_88
  loc_AEA845:  = Me.Text
  loc_AEA84A: FLdRfVar var_94
  loc_AEA84D: FLdPr Me
  loc_AEA850: VCallAd Control_ID_CodiTiliTxt
  loc_AEA853: FStAdFunc var_AC
  loc_AEA856: FLdPr var_AC
  loc_AEA859:  = Me.Text
  loc_AEA85E: ILdRf var_94
  loc_AEA861: CUI1Str
  loc_AEA863: LitI2_Byte 4
  loc_AEA865: CUI1I2
  loc_AEA867: FLdPr Me
  loc_AEA86A: MemLdI2 global_92
  loc_AEA86D: CStrUI1
  loc_AEA86F: FStStrNoPop var_B0
  loc_AEA872: ILdRf var_90
  loc_AEA875: CI2Str
  loc_AEA877: ImpAdCallI2  = Proc_18_58_AAF980(, )
  loc_AEA87C: FStStrNoPop var_B4
  loc_AEA87F: FLdPr Me
  loc_AEA882: MemStStrCopy
  loc_AEA886: FFreeStr var_90 = "": var_B0 = "": var_94 = ""
  loc_AEA891: FFreeAd var_88 = ""
  loc_AEA898: FLdPr Me
  loc_AEA89B: MemLdStr global_100
  loc_AEA89E: LitStr vbNullString
  loc_AEA8A1: NeStr
  loc_AEA8A3: BranchF loc_AEA90B
  loc_AEA8A6: LitStr "No esta definido el vencimiento para el mes numero: "
  loc_AEA8A9: FLdPr Me
  loc_AEA8AC: MemLdI2 global_92
  loc_AEA8AF: CStrUI1
  loc_AEA8B1: FStStrNoPop var_90
  loc_AEA8B4: ConcatStr
  loc_AEA8B5: FStStrNoPop var_94
  loc_AEA8B8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA8BD: FFreeStr var_90 = ""
  loc_AEA8C4: LitI2_Byte 0
  loc_AEA8C6: FLdPr Me
  loc_AEA8C9: VCallAd Control_ID_Label4
  loc_AEA8CC: FStAdFunc var_88
  loc_AEA8CF: FLdPr var_88
  loc_AEA8D2: Me.Visible = from_stack_1b
  loc_AEA8D7: FFree1Ad var_88
  loc_AEA8DA: LitVar_FALSE
  loc_AEA8DE: PopAdLdVar
  loc_AEA8DF: FLdPr Me
  loc_AEA8E2: VCallAd Control_ID_FeveVencMsk
  loc_AEA8E5: FStAdFunc var_88
  loc_AEA8E8: FLdPr var_88
  loc_AEA8EB: LateIdSt
  loc_AEA8F0: FFree1Ad var_88
  loc_AEA8F3: FLdPr Me
  loc_AEA8F6: VCallAd Control_ID_CodiTiliTxt
  loc_AEA8F9: CVarAd
  loc_AEA8FD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA902: FFree1Var var_A4 = ""
  loc_AEA905: LitI2_Byte &HFF
  loc_AEA907: IStI2 Cancel
  loc_AEA90A: ExitProcHresult
  loc_AEA90B: FLdPr Me
  loc_AEA90E: MemLdRfVar from_stack_1.global_92
  loc_AEA911: NextI2 var_A8, loc_AEA836
  loc_AEA916: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'A8B440
  'Data Table: 4DA358
  loc_A8B3BC: FLdRfVar var_90
  loc_A8B3BF: FLdPr Me
  loc_A8B3C2: VCallAd Control_ID_NumeCtaTxt
  loc_A8B3C5: FStAdFunc var_8C
  loc_A8B3C8: FLdPr var_8C
  loc_A8B3CB:  = Me.Text
  loc_A8B3D0: FLdZeroAd var_90
  loc_A8B3D3: CVarStr var_B0
  loc_A8B3D6: LitI4 9
  loc_A8B3DB: FLdRfVar var_A0
  loc_A8B3DE: ImpAdCallFPR4  = Chr()
  loc_A8B3E3: FLdRfVar var_A0
  loc_A8B3E6: ConcatVar var_C0
  loc_A8B3EA: FLdRfVar var_C8
  loc_A8B3ED: FLdPr Me
  loc_A8B3F0: VCallAd Control_ID_DetaPersLbl
  loc_A8B3F3: FStAdFunc var_C4
  loc_A8B3F6: FLdPr var_C4
  loc_A8B3F9:  = Me.Caption
  loc_A8B3FE: FLdZeroAd var_C8
  loc_A8B401: CVarStr var_D8
  loc_A8B404: ConcatVar var_E8
  loc_A8B408: CStrVarTmp
  loc_A8B409: FStStr var_88
  loc_A8B40C: FFreeAd var_8C = ""
  loc_A8B413: FFreeVar var_B0 = "": var_A0 = "": var_C0 = "": var_D8 = ""
  loc_A8B420: FLdRfVar var_88
  loc_A8B423: CDargRef
  loc_A8B427: FLdPr Me
  loc_A8B42A: VCallAd Control_ID_CuentasFlex
  loc_A8B42D: FStAdFunc var_8C
  loc_A8B430: FLdPr var_8C
  loc_A8B433: LateIdCall
  loc_A8B43B: FFree1Ad var_8C
  loc_A8B43E: ExitProcHresult
End Sub

Private Sub Form_Load() 'AEFD28
  'Data Table: 4DA358
  loc_AEFB8C: LitI2_Byte 0
  loc_AEFB8E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AEFB93: CVarDate var_A4
  loc_AEFB97: FLdRfVar var_B4
  loc_AEFB9A: ImpAdCallFPR4  = Year()
  loc_AEFB9F: FLdRfVar var_B4
  loc_AEFBA2: CStrVarVal var_B8
  loc_AEFBA6: FLdPr Me
  loc_AEFBA9: VCallAd Control_ID_PeriLiquTxt
  loc_AEFBAC: FStAdFunc var_BC
  loc_AEFBAF: FLdPr var_BC
  loc_AEFBB2: Me.Text = from_stack_1
  loc_AEFBB7: FFree1Str var_B8
  loc_AEFBBA: FFree1Ad var_BC
  loc_AEFBBD: FFreeVar var_A4 = ""
  loc_AEFBC4: LitI2_Byte 1
  loc_AEFBC6: CStrUI1
  loc_AEFBC8: FStStrNoPop var_B8
  loc_AEFBCB: FLdPr Me
  loc_AEFBCE: VCallAd Control_ID_BimeLiquTxt
  loc_AEFBD1: FStAdFunc var_BC
  loc_AEFBD4: FLdPr var_BC
  loc_AEFBD7: Me.Text = from_stack_1
  loc_AEFBDC: FFree1Str var_B8
  loc_AEFBDF: FFree1Ad var_BC
  loc_AEFBE2: LitStr "0"
  loc_AEFBE5: FLdPr Me
  loc_AEFBE8: VCallAd Control_ID_CodiTiliTxt
  loc_AEFBEB: FStAdFunc var_BC
  loc_AEFBEE: FLdPr var_BC
  loc_AEFBF1: Me.Text = from_stack_1
  loc_AEFBF6: FFree1Ad var_BC
  loc_AEFBF9: LitStr "0"
  loc_AEFBFC: FLdPr Me
  loc_AEFBFF: VCallAd Control_ID_DesdeCodiDifuTxt
  loc_AEFC02: FStAdFunc var_BC
  loc_AEFC05: FLdPr var_BC
  loc_AEFC08: Me.Text = from_stack_1
  loc_AEFC0D: FFree1Ad var_BC
  loc_AEFC10: LitStr "99999999"
  loc_AEFC13: FLdPr Me
  loc_AEFC16: VCallAd Control_ID_HastaCodiDifuTxt
  loc_AEFC19: FStAdFunc var_BC
  loc_AEFC1C: FLdPr var_BC
  loc_AEFC1F: Me.Text = from_stack_1
  loc_AEFC24: FFree1Ad var_BC
  loc_AEFC27: LitI2_Byte &HFF
  loc_AEFC29: FLdPr Me
  loc_AEFC2C: VCallAd Control_ID_CompletaOpt
  loc_AEFC2F: FStAdFunc var_BC
  loc_AEFC32: FLdPr var_BC
  loc_AEFC35: Me.Value = from_stack_1b
  loc_AEFC3A: FFree1Ad var_BC
  loc_AEFC3D: LitStr "0"
  loc_AEFC40: FLdPr Me
  loc_AEFC43: VCallAd Control_ID_NumeCtaTxt
  loc_AEFC46: FStAdFunc var_BC
  loc_AEFC49: FLdPr var_BC
  loc_AEFC4C: Me.Text = from_stack_1
  loc_AEFC51: FFree1Ad var_BC
  loc_AEFC54: FLdPr Me
  loc_AEFC57: VCallAd Control_ID_CuentasFlex
  loc_AEFC5A: FStAdFunc var_C0
  loc_AEFC5D: FLdPr var_C0
  loc_AEFC60: LateIdCall
  loc_AEFC68: LitVarI4
  loc_AEFC70: PopAdLdVar
  loc_AEFC71: FLdPr var_C0
  loc_AEFC74: LateIdSt
  loc_AEFC79: LitVarI4
  loc_AEFC81: PopAdLdVar
  loc_AEFC82: LitVarI4
  loc_AEFC8A: PopAdLdVar
  loc_AEFC8B: FLdPr var_C0
  loc_AEFC8E: LateIdCallSt
  loc_AEFC96: LitVarI4
  loc_AEFC9E: PopAdLdVar
  loc_AEFC9F: LitVarI4
  loc_AEFCA7: PopAdLdVar
  loc_AEFCA8: FLdPr var_C0
  loc_AEFCAB: LateIdCallSt
  loc_AEFCB3: LitVarI4
  loc_AEFCBB: PopAdLdVar
  loc_AEFCBC: LitVarI4
  loc_AEFCC4: PopAdLdVar
  loc_AEFCC5: LitVarStr var_100, "Cuenta"
  loc_AEFCCA: PopAdLdVar
  loc_AEFCCB: FLdPr var_C0
  loc_AEFCCE: LateIdCallSt
  loc_AEFCD6: LitVarI4
  loc_AEFCDE: PopAdLdVar
  loc_AEFCDF: LitVarI4
  loc_AEFCE7: PopAdLdVar
  loc_AEFCE8: LitVarStr var_100, "Apellido y Nombre"
  loc_AEFCED: PopAdLdVar
  loc_AEFCEE: FLdPr var_C0
  loc_AEFCF1: LateIdCallSt
  loc_AEFCF9: LitNothing
  loc_AEFCFB: FStAd var_C0 
  loc_AEFCFF: FLdRfVar var_B8
  loc_AEFD02: FLdPr Me
  loc_AEFD05: VCallAd Control_ID_BimeLiquTxt
  loc_AEFD08: FStAdFunc var_BC
  loc_AEFD0B: FLdPr var_BC
  loc_AEFD0E:  = Me.Text
  loc_AEFD13: ILdRf var_B8
  loc_AEFD16: CI2Str
  loc_AEFD18: PopTmpLdAd2 var_112
  loc_AEFD1B: Call Proc_317_25_9E0100()
  loc_AEFD20: FFree1Str var_B8
  loc_AEFD23: FFree1Ad var_BC
  loc_AEFD26: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB53C
  'Data Table: 4DA358
  loc_9BB528: ILdI2 KeyCode
  loc_9BB52B: CI4UI1
  loc_9BB52C: LitI4 &H78
  loc_9BB531: EqI4
  loc_9BB532: BranchF loc_9BB53A
  loc_9BB535: Call cmdSalir_Click()
  loc_9BB53A: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_GotFocus() '9BBBB0
  'Data Table: 4DA358
  loc_9BBB9C: FLdPr Me
  loc_9BBB9F: VCallAd Control_ID_PeriLiquTxt
  loc_9BBBA2: CVarAd
  loc_9BBBA6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BBBAB: FFree1Var var_94 = ""
  loc_9BBBAE: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_KeyPress(KeyAscii As Integer) '9C8C6C
  'Data Table: 4DA358
  loc_9C8C54: LitStr "1234567890"
  loc_9C8C57: FStStrCopy var_88
  loc_9C8C5A: FLdRfVar var_88
  loc_9C8C5D: ILdRf KeyAscii
  loc_9C8C60: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C8C65: IStI2 KeyAscii
  loc_9C8C68: FFree1Str var_88
  loc_9C8C6B: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_Validate(Cancel As Boolean) 'A6A170
  'Data Table: 4DA358
  loc_A6A108: FLdRfVar var_8C
  loc_A6A10B: FLdPr Me
  loc_A6A10E: VCallAd Control_ID_PeriLiquTxt
  loc_A6A111: FStAdFunc var_88
  loc_A6A114: FLdPr var_88
  loc_A6A117:  = Me.Text
  loc_A6A11C: LitI2_Byte 0
  loc_A6A11E: ILdRf var_8C
  loc_A6A121: LitStr "el Año"
  loc_A6A124: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6A129: FStStrNoPop var_90
  loc_A6A12C: FLdPr Me
  loc_A6A12F: MemStStrCopy
  loc_A6A133: FFreeStr var_8C = ""
  loc_A6A13A: FFree1Ad var_88
  loc_A6A13D: FLdPr Me
  loc_A6A140: MemLdStr global_100
  loc_A6A143: LitStr vbNullString
  loc_A6A146: NeStr
  loc_A6A148: BranchF loc_A6A16D
  loc_A6A14B: FLdPr Me
  loc_A6A14E: MemLdStr global_100
  loc_A6A151: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6A156: FLdPr Me
  loc_A6A159: VCallAd Control_ID_PeriLiquTxt
  loc_A6A15C: CVarAd
  loc_A6A160: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6A165: FFree1Var var_A0 = ""
  loc_A6A168: LitI2_Byte &HFF
  loc_A6A16A: IStI2 Cancel
  loc_A6A16D: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9C8DE8
  'Data Table: 4DA358
  loc_9C8DD0: ILdRf Me
  loc_9C8DD3: FStAdNoPop
  loc_9C8DD7: ImpAdLdRf MemVar_D9C5D8
  loc_9C8DDA: NewIfNullPr Global
  loc_9C8DDD: Global.Unload from_stack_1
  loc_9C8DE2: FFree1Ad var_88
  loc_9C8DE5: ExitProcHresult
End Sub

Private Sub CodiTiliCmd_Click() 'AA4FAC
  'Data Table: 4DA358
  loc_AA4EE8: LitI2_Byte 4
  loc_AA4EEA: CUI1I2
  loc_AA4EEC: ImpAdLdRf MemVar_D94160
  loc_AA4EEF: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4EF2: Call dlgBuscarTipodeLiquidacion.ByOficinaPut(from_stack_1v)
  loc_AA4EF7: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = 4"
  loc_AA4EFA: ImpAdLdRf MemVar_D94160
  loc_AA4EFD: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4F00: Call dlgBuscarTipodeLiquidacion.sPasaSelectPut(from_stack_1v)
  loc_AA4F05: LitVar_Missing var_A4
  loc_AA4F08: PopAdLdVar
  loc_AA4F09: LitVarI4
  loc_AA4F11: PopAdLdVar
  loc_AA4F12: ImpAdLdRf MemVar_D94160
  loc_AA4F15: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4F18: dlgBuscarTipodeLiquidacion.Show from_stack_1, from_stack_2
  loc_AA4F1D: FLdRfVar var_A8
  loc_AA4F20: ImpAdLdRf MemVar_D94160
  loc_AA4F23: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4F26: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA4F2B: ILdRf var_A8
  loc_AA4F2E: LitStr vbNullString
  loc_AA4F31: NeStr
  loc_AA4F33: FFree1Str var_A8
  loc_AA4F36: BranchF loc_AA4F97
  loc_AA4F39: FLdRfVar var_A8
  loc_AA4F3C: ImpAdLdRf MemVar_D94160
  loc_AA4F3F: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4F42: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AA4F47: ILdRf var_A8
  loc_AA4F4A: FLdPr Me
  loc_AA4F4D: VCallAd Control_ID_
  loc_AA4F50: FStAdFunc var_AC
  loc_AA4F53: FLdPr var_AC
  loc_AA4F56: dlgBuscarTipodeLiquidacion.TextBox.Text = from_stack_1
  loc_AA4F5B: FFree1Str var_A8
  loc_AA4F5E: FFree1Ad var_AC
  loc_AA4F61: LitStr vbNullString
  loc_AA4F64: ImpAdLdRf MemVar_D94160
  loc_AA4F67: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4F6A: Call dlgBuscarTipodeLiquidacion.sPasaCodigoPut(from_stack_1v)
  loc_AA4F6F: FLdRfVar var_A8
  loc_AA4F72: ImpAdLdRf MemVar_D94160
  loc_AA4F75: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AA4F78: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaDetalleGet()
  loc_AA4F7D: ILdRf var_A8
  loc_AA4F80: FLdPr Me
  loc_AA4F83: VCallAd Control_ID_
  loc_AA4F86: FStAdFunc var_AC
  loc_AA4F89: FLdPr var_AC
  loc_AA4F8C: dlgBuscarTipodeLiquidacion.Label.Caption = from_stack_1
  loc_AA4F91: FFree1Str var_A8
  loc_AA4F94: FFree1Ad var_AC
  loc_AA4F97: FLdPr Me
  loc_AA4F9A: VCallAd Control_ID_CodiTiliTxt
  loc_AA4F9D: CVarAd
  loc_AA4FA1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA4FA6: FFree1Var var_BC = ""
  loc_AA4FA9: ExitProcHresult
  loc_AA4FAA: GeI4
End Sub

Private Function Proc_317_24_A69A44() 'A69A44
  'Data Table: 4DA358
  loc_A699D0: FLdPr Me
  loc_A699D3: VCallAd Control_ID_CuentasFlex
  loc_A699D6: FStAdFunc var_88
  loc_A699D9: FLdPr var_88
  loc_A699DC: LateIdCall
  loc_A699E4: LitVarI4
  loc_A699EC: PopAdLdVar
  loc_A699ED: FLdPr var_88
  loc_A699F0: LateIdSt
  loc_A699F5: LitVarI4
  loc_A699FD: PopAdLdVar
  loc_A699FE: LitVarI4
  loc_A69A06: PopAdLdVar
  loc_A69A07: LitVarStr var_D8, "Cuenta"
  loc_A69A0C: PopAdLdVar
  loc_A69A0D: FLdPr var_88
  loc_A69A10: LateIdCallSt
  loc_A69A18: LitVarI4
  loc_A69A20: PopAdLdVar
  loc_A69A21: LitVarI4
  loc_A69A29: PopAdLdVar
  loc_A69A2A: LitVarStr var_D8, "Apellido y Nombre"
  loc_A69A2F: PopAdLdVar
  loc_A69A30: FLdPr var_88
  loc_A69A33: LateIdCallSt
  loc_A69A3B: LitNothing
  loc_A69A3D: FStAd var_88 
  loc_A69A41: ExitProcHresult
End Function

Private Function Proc_317_25_9E0100(arg_C) '9E0100
  'Data Table: 4DA358
  loc_9E00E0: ILdI2 arg_C
  loc_9E00E3: FStI2 var_86
  loc_9E00E6: FLdI2 var_86
  loc_9E00E9: LitI2_Byte 1
  loc_9E00EB: EqI2
  loc_9E00EC: BranchF loc_9E00FF
  loc_9E00EF: LitI2_Byte 1
  loc_9E00F1: FLdPr Me
  loc_9E00F4: MemStI2 global_94
  loc_9E00F7: LitI2_Byte 1
  loc_9E00F9: FLdPr Me
  loc_9E00FC: MemStI2 global_96
  loc_9E00FF: ExitProcHresult
End Function
