VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmManualdeCuentas
  Caption = "Manual de Cuentas"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmManualdeCuentas.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 14340
  ClientHeight = 10110
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 2
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmManualdeCuentas.frx":08CA
    End
  End
  Begin VB.Frame fraABMS
    Caption = " Manual de Cuentas "
    Left = 120
    Top = 4560
    Width = 13935
    Height = 5055
    TabIndex = 6
    Begin VB.CheckBox ImpuCucoChk
      Left = 5520
      Top = 480
      Width = 375
      Height = 375
      TabIndex = 10
      DataField = "ImpuCuco"
    End
    Begin VB.TextBox DescCucoTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1560
      Width = 11535
      Height = 660
      TabIndex = 17
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 500
      DataField = "DescCuco"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox SaldCucoTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 4200
      Width = 11535
      Height = 660
      TabIndex = 23
      MultiLine = -1  'True
      MaxLength = 200
      DataField = "SaldCuco"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox HabeCucoTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 3360
      Width = 11535
      Height = 660
      TabIndex = 21
      MultiLine = -1  'True
      MaxLength = 200
      DataField = "HabeCuco"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox DebeCucoTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 2520
      Width = 11535
      Height = 660
      TabIndex = 19
      MultiLine = -1  'True
      MaxLength = 200
      DataField = "DebeCuco"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox DetaCucoTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 960
      Width = 11535
      Height = 420
      TabIndex = 15
      MaxLength = 60
      DataField = "DetaCuco"
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 2160
      Top = 480
      Width = 1935
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmManualdeCuentas.frx":0952
      DataField = "CodiCuco"
    End
    Begin VB.Label CodiTicuLbl
      Left = 7800
      Top = 480
      Width = 975
      Height = 360
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      DataField = "CodiTicu"
    End
    Begin VB.Label Label8
      Caption = "Descripción:"
      Left = 750
      Top = 1560
      Width = 1305
      Height = 300
      TabIndex = 16
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label7
      Caption = "Saldo:"
      Left = 1380
      Top = 4200
      Width = 675
      Height = 300
      TabIndex = 22
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Se Acredita:"
      Left = 750
      Top = 3360
      Width = 1305
      Height = 300
      TabIndex = 20
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Se Debita:"
      Left = 930
      Top = 2520
      Width = 1125
      Height = 300
      TabIndex = 18
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label DetaTiculbl
      Left = 8880
      Top = 480
      Width = 4935
      Height = 360
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
      DataField = "DetaTicu"
    End
    Begin VB.Label Label4
      Caption = "Tipo de Cuenta:"
      Left = 6015
      Top = 480
      Width = 1680
      Height = 300
      TabIndex = 11
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Cuenta Contable:"
      Left = 195
      Top = 480
      Width = 1860
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Imputable:"
      Left = 4290
      Top = 480
      Width = 1125
      Height = 300
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Detalle:"
      Left = 1245
      Top = 960
      Width = 810
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 13935
    Height = 2775
    TabIndex = 5
    OleObjectBlob = "frmManualdeCuentas.frx":09DA
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmManualdeCuentas.frx":0E82
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14340
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmManualdeCuentas.frx":8A00
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmManualdeCuentas.frx":8F5C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmManualdeCuentas"


Private Sub DescCucoTxt_GotFocus() '94CCB0
  'Data Table: 485DC8
  loc_94CC9C: FLdPr Me
  loc_94CC9F: VCallAd Control_ID_DescCucoTxt
  loc_94CCA2: CVarAd
  loc_94CCA6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CCAB: FFree1Var var_94 = ""
  loc_94CCAE: ExitProcHresult
End Sub

Private Sub DescCucoTxt_Validate(Cancel As Boolean) '9CE050
  'Data Table: 485DC8
  loc_9CDF74: FLdRfVar var_8A
  loc_9CDF77: FLdPr Me
  loc_9CDF7A: VCallAd Control_ID_cmdCancelar
  loc_9CDF7D: FStAdFunc var_88
  loc_9CDF80: FLdPr var_88
  loc_9CDF83:  = Me.Value
  loc_9CDF88: FLdI2 var_8A
  loc_9CDF8B: NotI4
  loc_9CDF8C: FLdRfVar var_92
  loc_9CDF8F: FLdPr Me
  loc_9CDF92: VCallAd Control_ID_DescCucoTxt
  loc_9CDF95: FStAdFunc var_90
  loc_9CDF98: FLdPr var_90
  loc_9CDF9B:  = Me.Enabled
  loc_9CDFA0: FLdI2 var_92
  loc_9CDFA3: AndI4
  loc_9CDFA4: FLdRfVar var_9C
  loc_9CDFA7: FLdPr Me
  loc_9CDFAA: VCallAd Control_ID_DescCucoTxt
  loc_9CDFAD: FStAdFunc var_98
  loc_9CDFB0: FLdPr var_98
  loc_9CDFB3:  = Me.Text
  loc_9CDFB8: ILdRf var_9C
  loc_9CDFBB: LitStr vbNullString
  loc_9CDFBE: NeStr
  loc_9CDFC0: AndI4
  loc_9CDFC1: FFree1Str var_9C
  loc_9CDFC4: FFreeAd var_88 = "": var_90 = ""
  loc_9CDFCD: BranchF loc_9CE04E
  loc_9CDFD0: FLdRfVar var_9C
  loc_9CDFD3: FLdPr Me
  loc_9CDFD6: VCallAd Control_ID_DescCucoTxt
  loc_9CDFD9: FStAdFunc var_88
  loc_9CDFDC: FLdPr var_88
  loc_9CDFDF:  = Me.Text
  loc_9CDFE4: LitI2_Byte 0
  loc_9CDFE6: PopTmpLdAd2 var_9E
  loc_9CDFE9: LitI2_Byte 0
  loc_9CDFEB: PopTmpLdAd2 var_92
  loc_9CDFEE: LitI2_Byte 0
  loc_9CDFF0: PopTmpLdAd2 var_8A
  loc_9CDFF3: ILdRf var_9C
  loc_9CDFF6: LitStr "la descripción"
  loc_9CDFF9: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CDFFE: FStStrNoPop var_A4
  loc_9CE001: FLdPr Me
  loc_9CE004: MemStStrCopy
  loc_9CE008: FFreeStr var_9C = ""
  loc_9CE00F: FFree1Ad var_88
  loc_9CE012: FLdPr Me
  loc_9CE015: VCallAd Control_ID_DescCucoTxt
  loc_9CE018: FStAdFunc var_A8
  loc_9CE01B: LitNothing
  loc_9CE01D: CastAd
  loc_9CE020: FStAdFunc var_98
  loc_9CE023: FLdRfVar var_98
  loc_9CE026: FLdZeroAd var_A8
  loc_9CE029: FStAdFuncNoPop
  loc_9CE02C: CastAd
  loc_9CE02F: FStAdFunc var_90
  loc_9CE032: FLdRfVar var_90
  loc_9CE035: FLdPr Me
  loc_9CE038: MemLdRfVar from_stack_1.global_68
  loc_9CE03B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CE040: IStI2 Cancel
  loc_9CE043: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CE04E: ExitProcHresult
End Sub

Private Sub DetaCucoTxt_GotFocus() '94CC20
  'Data Table: 485DC8
  loc_94CC0C: FLdPr Me
  loc_94CC0F: VCallAd Control_ID_DetaCucoTxt
  loc_94CC12: CVarAd
  loc_94CC16: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CC1B: FFree1Var var_94 = ""
  loc_94CC1E: ExitProcHresult
End Sub

Private Sub HabeCucoTxt_GotFocus() '94CAB8
  'Data Table: 485DC8
  loc_94CAA4: FLdPr Me
  loc_94CAA7: VCallAd Control_ID_HabeCucoTxt
  loc_94CAAA: CVarAd
  loc_94CAAE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CAB3: FFree1Var var_94 = ""
  loc_94CAB6: ExitProcHresult
End Sub

Private Sub HabeCucoTxt_Validate(Cancel As Boolean) '9CC3CC
  'Data Table: 485DC8
  loc_9CC2F0: FLdRfVar var_8A
  loc_9CC2F3: FLdPr Me
  loc_9CC2F6: VCallAd Control_ID_cmdCancelar
  loc_9CC2F9: FStAdFunc var_88
  loc_9CC2FC: FLdPr var_88
  loc_9CC2FF:  = Me.Value
  loc_9CC304: FLdI2 var_8A
  loc_9CC307: NotI4
  loc_9CC308: FLdRfVar var_92
  loc_9CC30B: FLdPr Me
  loc_9CC30E: VCallAd Control_ID_HabeCucoTxt
  loc_9CC311: FStAdFunc var_90
  loc_9CC314: FLdPr var_90
  loc_9CC317:  = Me.Enabled
  loc_9CC31C: FLdI2 var_92
  loc_9CC31F: AndI4
  loc_9CC320: FLdRfVar var_9C
  loc_9CC323: FLdPr Me
  loc_9CC326: VCallAd Control_ID_HabeCucoTxt
  loc_9CC329: FStAdFunc var_98
  loc_9CC32C: FLdPr var_98
  loc_9CC32F:  = Me.Text
  loc_9CC334: ILdRf var_9C
  loc_9CC337: LitStr vbNullString
  loc_9CC33A: NeStr
  loc_9CC33C: AndI4
  loc_9CC33D: FFree1Str var_9C
  loc_9CC340: FFreeAd var_88 = "": var_90 = ""
  loc_9CC349: BranchF loc_9CC3CA
  loc_9CC34C: FLdRfVar var_9C
  loc_9CC34F: FLdPr Me
  loc_9CC352: VCallAd Control_ID_HabeCucoTxt
  loc_9CC355: FStAdFunc var_88
  loc_9CC358: FLdPr var_88
  loc_9CC35B:  = Me.Text
  loc_9CC360: LitI2_Byte 0
  loc_9CC362: PopTmpLdAd2 var_9E
  loc_9CC365: LitI2_Byte 0
  loc_9CC367: PopTmpLdAd2 var_92
  loc_9CC36A: LitI2_Byte 0
  loc_9CC36C: PopTmpLdAd2 var_8A
  loc_9CC36F: ILdRf var_9C
  loc_9CC372: LitStr "el crédito"
  loc_9CC375: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CC37A: FStStrNoPop var_A4
  loc_9CC37D: FLdPr Me
  loc_9CC380: MemStStrCopy
  loc_9CC384: FFreeStr var_9C = ""
  loc_9CC38B: FFree1Ad var_88
  loc_9CC38E: FLdPr Me
  loc_9CC391: VCallAd Control_ID_HabeCucoTxt
  loc_9CC394: FStAdFunc var_A8
  loc_9CC397: LitNothing
  loc_9CC399: CastAd
  loc_9CC39C: FStAdFunc var_98
  loc_9CC39F: FLdRfVar var_98
  loc_9CC3A2: FLdZeroAd var_A8
  loc_9CC3A5: FStAdFuncNoPop
  loc_9CC3A8: CastAd
  loc_9CC3AB: FStAdFunc var_90
  loc_9CC3AE: FLdRfVar var_90
  loc_9CC3B1: FLdPr Me
  loc_9CC3B4: MemLdRfVar from_stack_1.global_68
  loc_9CC3B7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CC3BC: IStI2 Cancel
  loc_9CC3BF: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CC3CA: ExitProcHresult
End Sub

Private Sub SaldCucoTxt_GotFocus() '94CA70
  'Data Table: 485DC8
  loc_94CA5C: FLdPr Me
  loc_94CA5F: VCallAd Control_ID_SaldCucoTxt
  loc_94CA62: CVarAd
  loc_94CA66: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CA6B: FFree1Var var_94 = ""
  loc_94CA6E: ExitProcHresult
End Sub

Private Sub SaldCucoTxt_Validate(Cancel As Boolean) '9CC4F0
  'Data Table: 485DC8
  loc_9CC414: FLdRfVar var_8A
  loc_9CC417: FLdPr Me
  loc_9CC41A: VCallAd Control_ID_cmdCancelar
  loc_9CC41D: FStAdFunc var_88
  loc_9CC420: FLdPr var_88
  loc_9CC423:  = Me.Value
  loc_9CC428: FLdI2 var_8A
  loc_9CC42B: NotI4
  loc_9CC42C: FLdRfVar var_92
  loc_9CC42F: FLdPr Me
  loc_9CC432: VCallAd Control_ID_SaldCucoTxt
  loc_9CC435: FStAdFunc var_90
  loc_9CC438: FLdPr var_90
  loc_9CC43B:  = Me.Enabled
  loc_9CC440: FLdI2 var_92
  loc_9CC443: AndI4
  loc_9CC444: FLdRfVar var_9C
  loc_9CC447: FLdPr Me
  loc_9CC44A: VCallAd Control_ID_SaldCucoTxt
  loc_9CC44D: FStAdFunc var_98
  loc_9CC450: FLdPr var_98
  loc_9CC453:  = Me.Text
  loc_9CC458: ILdRf var_9C
  loc_9CC45B: LitStr vbNullString
  loc_9CC45E: NeStr
  loc_9CC460: AndI4
  loc_9CC461: FFree1Str var_9C
  loc_9CC464: FFreeAd var_88 = "": var_90 = ""
  loc_9CC46D: BranchF loc_9CC4EE
  loc_9CC470: FLdRfVar var_9C
  loc_9CC473: FLdPr Me
  loc_9CC476: VCallAd Control_ID_SaldCucoTxt
  loc_9CC479: FStAdFunc var_88
  loc_9CC47C: FLdPr var_88
  loc_9CC47F:  = Me.Text
  loc_9CC484: LitI2_Byte 0
  loc_9CC486: PopTmpLdAd2 var_9E
  loc_9CC489: LitI2_Byte 0
  loc_9CC48B: PopTmpLdAd2 var_92
  loc_9CC48E: LitI2_Byte 0
  loc_9CC490: PopTmpLdAd2 var_8A
  loc_9CC493: ILdRf var_9C
  loc_9CC496: LitStr "el saldo"
  loc_9CC499: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CC49E: FStStrNoPop var_A4
  loc_9CC4A1: FLdPr Me
  loc_9CC4A4: MemStStrCopy
  loc_9CC4A8: FFreeStr var_9C = ""
  loc_9CC4AF: FFree1Ad var_88
  loc_9CC4B2: FLdPr Me
  loc_9CC4B5: VCallAd Control_ID_SaldCucoTxt
  loc_9CC4B8: FStAdFunc var_A8
  loc_9CC4BB: LitNothing
  loc_9CC4BD: CastAd
  loc_9CC4C0: FStAdFunc var_98
  loc_9CC4C3: FLdRfVar var_98
  loc_9CC4C6: FLdZeroAd var_A8
  loc_9CC4C9: FStAdFuncNoPop
  loc_9CC4CC: CastAd
  loc_9CC4CF: FStAdFunc var_90
  loc_9CC4D2: FLdRfVar var_90
  loc_9CC4D5: FLdPr Me
  loc_9CC4D8: MemLdRfVar from_stack_1.global_68
  loc_9CC4DB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CC4E0: IStI2 Cancel
  loc_9CC4E3: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CC4EE: ExitProcHresult
  loc_9CC4EF: CStr2Ansi
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'AB1908
  'Data Table: 485DC8
  loc_AB13C8: ILdRf Button
  loc_AB13CB: FStAd var_88 
  loc_AB13CF: FLdRfVar var_8C
  loc_AB13D2: FLdPr var_88
  loc_AB13D5:  = Me.Key
  loc_AB13DA: FLdZeroAd var_8C
  loc_AB13DD: FStStr var_90
  loc_AB13E0: ILdRf var_90
  loc_AB13E3: LitStr "btnCrear"
  loc_AB13E6: EqStr
  loc_AB13E8: BranchF loc_AB13EE
  loc_AB13EB: Branch loc_AB1905
  loc_AB13EE: ILdRf var_90
  loc_AB13F1: LitStr "btnModificar"
  loc_AB13F4: EqStr
  loc_AB13F6: BranchF loc_AB16CD
  loc_AB13F9: FLdRfVar var_94
  loc_AB13FC: FLdPr Me
  loc_AB13FF: MemLdRfVar from_stack_1.global_52
  loc_AB1402: NewIfNullPr clscuentacontable
  loc_AB1405: from_stack_1 = clscuentacontable.RecordCount
  loc_AB140A: ILdRf var_94
  loc_AB140D: LitI4 0
  loc_AB1412: GtI4
  loc_AB1413: BranchF loc_AB16CA
  loc_AB1416: LitI2_Byte 2
  loc_AB1418: FLdPr Me
  loc_AB141B: MemStUI1
  loc_AB141F: ILdRf Me
  loc_AB1422: CastAd
  loc_AB1425: FStAdFunc var_98
  loc_AB1428: FLdRfVar var_98
  loc_AB142B: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_AB1430: FFree1Ad var_98
  loc_AB1433: LitI4 0
  loc_AB1438: LitI4 0
  loc_AB143D: FLdRfVar var_9C
  loc_AB1440: Redim
  loc_AB144A: FLdPr Me
  loc_AB144D: VCallAd Control_ID_dgdABMS
  loc_AB1450: CVarAd
  loc_AB1454: ParmAry1St
  loc_AB145A: FLdRfVar var_9C
  loc_AB145D: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_AB1462: FLdRfVar var_9C
  loc_AB1465: Erase
  loc_AB1466: ILdRf Me
  loc_AB1469: CastAd
  loc_AB146C: FStAdFunc var_98
  loc_AB146F: FLdRfVar var_98
  loc_AB1472: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_AB1477: FFree1Ad var_98
  loc_AB147A: LitI4 0
  loc_AB147F: LitI4 3
  loc_AB1484: FLdRfVar var_9C
  loc_AB1487: Redim
  loc_AB1491: FLdPr Me
  loc_AB1494: VCallAd Control_ID_DescCucoTxt
  loc_AB1497: CVarAd
  loc_AB149B: ParmAry1St
  loc_AB14A1: FLdPr Me
  loc_AB14A4: VCallAd Control_ID_DebeCucoTxt
  loc_AB14A7: CVarAd
  loc_AB14AB: ParmAry1St
  loc_AB14B1: FLdPr Me
  loc_AB14B4: VCallAd Control_ID_HabeCucoTxt
  loc_AB14B7: CVarAd
  loc_AB14BB: ParmAry1St
  loc_AB14C1: FLdPr Me
  loc_AB14C4: VCallAd Control_ID_SaldCucoTxt
  loc_AB14C7: CVarAd
  loc_AB14CB: ParmAry1St
  loc_AB14D1: FLdRfVar var_9C
  loc_AB14D4: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_AB14D9: FLdRfVar var_9C
  loc_AB14DC: Erase
  loc_AB14DD: FLdRfVar var_94
  loc_AB14E0: FLdPr Me
  loc_AB14E3: MemLdRfVar from_stack_1.global_52
  loc_AB14E6: NewIfNullPr clscuentacontable
  loc_AB14E9: from_stack_1 = clscuentacontable.AbsolutePosition
  loc_AB14EE: ILdRf var_94
  loc_AB14F1: LitI4 1
  loc_AB14F6: GtI4
  loc_AB14F7: BranchF loc_AB16CA
  loc_AB14FA: FLdPr Me
  loc_AB14FD: MemLdRfVar from_stack_1.global_52
  loc_AB1500: NewIfNullPr clscuentacontable
  loc_AB1503: Call clscuentacontable.MovePrevious()
  loc_AB1508: FLdRfVar var_AC
  loc_AB150B: FLdRfVar var_F4
  loc_AB150E: LitVarStr var_F0, "CodiCuco"
  loc_AB1513: PopAdLdVar
  loc_AB1514: FLdRfVar var_E0
  loc_AB1517: FLdRfVar var_98
  loc_AB151A: FLdPr Me
  loc_AB151D: MemLdRfVar from_stack_1.global_52
  loc_AB1520: NewIfNullPr clscuentacontable
  loc_AB1523: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_AB1528: FLdPr var_98
  loc_AB152B:  = Me.Fields
  loc_AB1530: FLdPr var_E0
  loc_AB1533: from_stack_2 = Me.Item(from_stack_1)
  loc_AB1538: FLdPr var_F4
  loc_AB153B:  = Me.Value
  loc_AB1540: LitStr vbNullString
  loc_AB1543: FStStrCopy var_FC
  loc_AB1546: FLdRfVar var_FC
  loc_AB1549: FLdPr Me
  loc_AB154C: MemLdRfVar from_stack_1.global_84
  loc_AB154F: NewIfNullRf
  loc_AB1553: FLdRfVar var_AC
  loc_AB1556: CStrVarTmp
  loc_AB1557: FStStrNoPop var_F8
  loc_AB155A: ImpAdLdI2 MemVar_C3D064
  loc_AB155D: CStrUI1
  loc_AB155F: FStStrNoPop var_8C
  loc_AB1562: ImpAdCallFPR4 Proc_259_8_ACF238(, , , )
  loc_AB1567: FFreeStr var_8C = "": var_F8 = ""
  loc_AB1570: FFreeAd var_98 = "": var_E0 = ""
  loc_AB1579: FFree1Var var_AC = ""
  loc_AB157C: FLdRfVar var_8C
  loc_AB157F: FLdPr Me
  loc_AB1582: VCallAd Control_ID_DebeCucoTxt
  loc_AB1585: FStAdFunc var_98
  loc_AB1588: FLdPr var_98
  loc_AB158B:  = Me.Text
  loc_AB1590: ILdRf var_8C
  loc_AB1593: LitStr vbNullString
  loc_AB1596: EqStr
  loc_AB1598: FFree1Str var_8C
  loc_AB159B: FFree1Ad var_98
  loc_AB159E: BranchF loc_AB15CC
  loc_AB15A1: FLdRfVar var_8C
  loc_AB15A4: FLdPr Me
  loc_AB15A7: MemLdRfVar from_stack_1.global_84
  loc_AB15AA: NewIfNullPr tblcuentacontable
  loc_AB15AD: from_stack_1v = tblcuentacontable.DebeCucoGet()
  loc_AB15B2: ILdRf var_8C
  loc_AB15B5: FLdPr Me
  loc_AB15B8: VCallAd Control_ID_DebeCucoTxt
  loc_AB15BB: FStAdFunc var_98
  loc_AB15BE: FLdPr var_98
  loc_AB15C1: Me.Text = from_stack_1
  loc_AB15C6: FFree1Str var_8C
  loc_AB15C9: FFree1Ad var_98
  loc_AB15CC: FLdRfVar var_8C
  loc_AB15CF: FLdPr Me
  loc_AB15D2: VCallAd Control_ID_HabeCucoTxt
  loc_AB15D5: FStAdFunc var_98
  loc_AB15D8: FLdPr var_98
  loc_AB15DB:  = Me.Text
  loc_AB15E0: ILdRf var_8C
  loc_AB15E3: LitStr vbNullString
  loc_AB15E6: EqStr
  loc_AB15E8: FFree1Str var_8C
  loc_AB15EB: FFree1Ad var_98
  loc_AB15EE: BranchF loc_AB161C
  loc_AB15F1: FLdRfVar var_8C
  loc_AB15F4: FLdPr Me
  loc_AB15F7: MemLdRfVar from_stack_1.global_84
  loc_AB15FA: NewIfNullPr tblcuentacontable
  loc_AB15FD: from_stack_1v = tblcuentacontable.HabeCucoGet()
  loc_AB1602: ILdRf var_8C
  loc_AB1605: FLdPr Me
  loc_AB1608: VCallAd Control_ID_HabeCucoTxt
  loc_AB160B: FStAdFunc var_98
  loc_AB160E: FLdPr var_98
  loc_AB1611: Me.Text = from_stack_1
  loc_AB1616: FFree1Str var_8C
  loc_AB1619: FFree1Ad var_98
  loc_AB161C: FLdRfVar var_8C
  loc_AB161F: FLdPr Me
  loc_AB1622: VCallAd Control_ID_SaldCucoTxt
  loc_AB1625: FStAdFunc var_98
  loc_AB1628: FLdPr var_98
  loc_AB162B:  = Me.Text
  loc_AB1630: ILdRf var_8C
  loc_AB1633: LitStr vbNullString
  loc_AB1636: EqStr
  loc_AB1638: FFree1Str var_8C
  loc_AB163B: FFree1Ad var_98
  loc_AB163E: BranchF loc_AB166C
  loc_AB1641: FLdRfVar var_8C
  loc_AB1644: FLdPr Me
  loc_AB1647: MemLdRfVar from_stack_1.global_84
  loc_AB164A: NewIfNullPr tblcuentacontable
  loc_AB164D: from_stack_1v = tblcuentacontable.SaldCucoGet()
  loc_AB1652: ILdRf var_8C
  loc_AB1655: FLdPr Me
  loc_AB1658: VCallAd Control_ID_SaldCucoTxt
  loc_AB165B: FStAdFunc var_98
  loc_AB165E: FLdPr var_98
  loc_AB1661: Me.Text = from_stack_1
  loc_AB1666: FFree1Str var_8C
  loc_AB1669: FFree1Ad var_98
  loc_AB166C: FLdRfVar var_8C
  loc_AB166F: FLdPr Me
  loc_AB1672: VCallAd Control_ID_DescCucoTxt
  loc_AB1675: FStAdFunc var_98
  loc_AB1678: FLdPr var_98
  loc_AB167B:  = Me.Text
  loc_AB1680: ILdRf var_8C
  loc_AB1683: LitStr vbNullString
  loc_AB1686: EqStr
  loc_AB1688: FFree1Str var_8C
  loc_AB168B: FFree1Ad var_98
  loc_AB168E: BranchF loc_AB16BC
  loc_AB1691: FLdRfVar var_8C
  loc_AB1694: FLdPr Me
  loc_AB1697: MemLdRfVar from_stack_1.global_84
  loc_AB169A: NewIfNullPr tblcuentacontable
  loc_AB169D: from_stack_1v = tblcuentacontable.DescCucoGet()
  loc_AB16A2: ILdRf var_8C
  loc_AB16A5: FLdPr Me
  loc_AB16A8: VCallAd Control_ID_DescCucoTxt
  loc_AB16AB: FStAdFunc var_98
  loc_AB16AE: FLdPr var_98
  loc_AB16B1: Me.Text = from_stack_1
  loc_AB16B6: FFree1Str var_8C
  loc_AB16B9: FFree1Ad var_98
  loc_AB16BC: FLdPr Me
  loc_AB16BF: MemLdRfVar from_stack_1.global_52
  loc_AB16C2: NewIfNullPr clscuentacontable
  loc_AB16C5: Call clscuentacontable.MoveNext()
  loc_AB16CA: Branch loc_AB1905
  loc_AB16CD: ILdRf var_90
  loc_AB16D0: LitStr "btnEliminar"
  loc_AB16D3: EqStr
  loc_AB16D5: BranchF loc_AB16DB
  loc_AB16D8: Branch loc_AB1905
  loc_AB16DB: ILdRf var_90
  loc_AB16DE: LitStr "btnGuardar"
  loc_AB16E1: EqStr
  loc_AB16E3: BranchF loc_AB17F1
  loc_AB16E6: LitStr vbNullString
  loc_AB16E9: FLdPr Me
  loc_AB16EC: MemStStrCopy
  loc_AB16F0: LitI2_Byte 0
  loc_AB16F2: PopTmpLdAd2 var_FE
  loc_AB16F5: Call DebeCucoTxt_Validate(from_stack_1v)
  loc_AB16FA: FLdPr Me
  loc_AB16FD: MemLdStr global_68
  loc_AB1700: LitStr vbNullString
  loc_AB1703: NeStr
  loc_AB1705: BranchF loc_AB1709
  loc_AB1708: ExitProcHresult
  loc_AB1709: LitI2_Byte 0
  loc_AB170B: PopTmpLdAd2 var_FE
  loc_AB170E: Call HabeCucoTxt_Validate(from_stack_1v)
  loc_AB1713: FLdPr Me
  loc_AB1716: MemLdStr global_68
  loc_AB1719: LitStr vbNullString
  loc_AB171C: NeStr
  loc_AB171E: BranchF loc_AB1722
  loc_AB1721: ExitProcHresult
  loc_AB1722: LitI2_Byte 0
  loc_AB1724: PopTmpLdAd2 var_FE
  loc_AB1727: Call SaldCucoTxt_Validate(from_stack_1v)
  loc_AB172C: FLdPr Me
  loc_AB172F: MemLdStr global_68
  loc_AB1732: LitStr vbNullString
  loc_AB1735: NeStr
  loc_AB1737: BranchF loc_AB173B
  loc_AB173A: ExitProcHresult
  loc_AB173B: LitI2_Byte 0
  loc_AB173D: PopTmpLdAd2 var_FE
  loc_AB1740: Call DescCucoTxt_Validate(from_stack_1v)
  loc_AB1745: FLdPr Me
  loc_AB1748: MemLdStr global_68
  loc_AB174B: LitStr vbNullString
  loc_AB174E: NeStr
  loc_AB1750: BranchF loc_AB1754
  loc_AB1753: ExitProcHresult
  loc_AB1754: FLdPr Me
  loc_AB1757: MemLdUI1 global_64
  loc_AB175B: FStUI1 var_100
  loc_AB175F: FLdUI1
  loc_AB1763: LitI2_Byte 2
  loc_AB1765: EqI2
  loc_AB1766: BranchF loc_AB17E9
  loc_AB1769: FLdRfVar var_8C
  loc_AB176C: FLdPr Me
  loc_AB176F: VCallAd Control_ID_DebeCucoTxt
  loc_AB1772: FStAdFunc var_98
  loc_AB1775: FLdPr var_98
  loc_AB1778:  = Me.Text
  loc_AB177D: FLdRfVar var_F8
  loc_AB1780: FLdPr Me
  loc_AB1783: VCallAd Control_ID_HabeCucoTxt
  loc_AB1786: FStAdFunc var_E0
  loc_AB1789: FLdPr var_E0
  loc_AB178C:  = Me.Text
  loc_AB1791: FLdRfVar var_FC
  loc_AB1794: FLdPr Me
  loc_AB1797: VCallAd Control_ID_SaldCucoTxt
  loc_AB179A: FStAdFunc var_F4
  loc_AB179D: FLdPr var_F4
  loc_AB17A0:  = Me.Text
  loc_AB17A5: FLdRfVar var_108
  loc_AB17A8: FLdPr Me
  loc_AB17AB: VCallAd Control_ID_DescCucoTxt
  loc_AB17AE: FStAdFunc var_104
  loc_AB17B1: FLdPr var_104
  loc_AB17B4:  = Me.Text
  loc_AB17B9: ILdRf var_108
  loc_AB17BC: ILdRf var_FC
  loc_AB17BF: ILdRf var_F8
  loc_AB17C2: ILdRf var_8C
  loc_AB17C5: FLdPr Me
  loc_AB17C8: MemLdRfVar from_stack_1.global_52
  loc_AB17CB: NewIfNullPr clscuentacontable
  loc_AB17CE: Call clscuentacontable.ModificarManual(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_AB17D3: FFreeStr var_8C = "": var_F8 = "": var_FC = ""
  loc_AB17DE: FFreeAd var_98 = "": var_E0 = "": var_F4 = ""
  loc_AB17E9: Call cmdCancelar_Click()
  loc_AB17EE: Branch loc_AB1905
  loc_AB17F1: ILdRf var_90
  loc_AB17F4: LitStr "btnCancelar"
  loc_AB17F7: EqStr
  loc_AB17F9: BranchF loc_AB1804
  loc_AB17FC: Call cmdCancelar_Click()
  loc_AB1801: Branch loc_AB1905
  loc_AB1804: ILdRf var_90
  loc_AB1807: LitStr "btnPrimero"
  loc_AB180A: EqStr
  loc_AB180C: BranchF loc_AB1820
  loc_AB180F: FLdPr Me
  loc_AB1812: MemLdRfVar from_stack_1.global_52
  loc_AB1815: NewIfNullPr clscuentacontable
  loc_AB1818: Call clscuentacontable.MoveFirst()
  loc_AB181D: Branch loc_AB1905
  loc_AB1820: ILdRf var_90
  loc_AB1823: LitStr "btnAnterior"
  loc_AB1826: EqStr
  loc_AB1828: BranchF loc_AB183C
  loc_AB182B: FLdPr Me
  loc_AB182E: MemLdRfVar from_stack_1.global_52
  loc_AB1831: NewIfNullPr clscuentacontable
  loc_AB1834: Call clscuentacontable.MovePrevious()
  loc_AB1839: Branch loc_AB1905
  loc_AB183C: ILdRf var_90
  loc_AB183F: LitStr "btnSiguiente"
  loc_AB1842: EqStr
  loc_AB1844: BranchF loc_AB1858
  loc_AB1847: FLdPr Me
  loc_AB184A: MemLdRfVar from_stack_1.global_52
  loc_AB184D: NewIfNullPr clscuentacontable
  loc_AB1850: Call clscuentacontable.MoveNext()
  loc_AB1855: Branch loc_AB1905
  loc_AB1858: ILdRf var_90
  loc_AB185B: LitStr "btnUltimo"
  loc_AB185E: EqStr
  loc_AB1860: BranchF loc_AB1874
  loc_AB1863: FLdPr Me
  loc_AB1866: MemLdRfVar from_stack_1.global_52
  loc_AB1869: NewIfNullPr clscuentacontable
  loc_AB186C: Call clscuentacontable.MoveLast()
  loc_AB1871: Branch loc_AB1905
  loc_AB1874: ILdRf var_90
  loc_AB1877: LitStr "btnFiltrar"
  loc_AB187A: EqStr
  loc_AB187C: BranchF loc_AB1882
  loc_AB187F: Branch loc_AB1905
  loc_AB1882: ILdRf var_90
  loc_AB1885: LitStr "btnBuscar"
  loc_AB1888: EqStr
  loc_AB188A: BranchF loc_AB1890
  loc_AB188D: Branch loc_AB1905
  loc_AB1890: ILdRf var_90
  loc_AB1893: LitStr "btnImprimir"
  loc_AB1896: EqStr
  loc_AB1898: BranchF loc_AB18CA
  loc_AB189B: ImpAdLdRf MemVar_C3DBB0
  loc_AB189E: NewIfNullAd
  loc_AB18A1: CastAd
  loc_AB18A4: FStAdFuncNoPop
  loc_AB18A7: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_AB18AC: FFree1Ad var_98
  loc_AB18AF: LitVar_Missing var_118
  loc_AB18B2: PopAdLdVar
  loc_AB18B3: LitVarI4
  loc_AB18BB: PopAdLdVar
  loc_AB18BC: ImpAdLdRf MemVar_C3DBB0
  loc_AB18BF: NewIfNullPr rptListadodelManualdeCuentas
  loc_AB18C2: rptListadodelManualdeCuentas.Show from_stack_1, from_stack_2
  loc_AB18C7: Branch loc_AB1905
  loc_AB18CA: ILdRf var_90
  loc_AB18CD: LitStr "btnAyuda"
  loc_AB18D0: EqStr
  loc_AB18D2: BranchF loc_AB18E5
  loc_AB18D5: LitI4 0
  loc_AB18DA: LitStr "Opción no disponible en esta versión."
  loc_AB18DD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AB18E2: Branch loc_AB1905
  loc_AB18E5: ILdRf var_90
  loc_AB18E8: LitStr "btnSalir"
  loc_AB18EB: EqStr
  loc_AB18ED: BranchF loc_AB1905
  loc_AB18F0: ILdRf Me
  loc_AB18F3: FStAdNoPop
  loc_AB18F7: ImpAdLdRf MemVar_C44F9C
  loc_AB18FA: NewIfNullPr Me
  loc_AB18FD: Me.Global.Unload from_stack_1
  loc_AB1902: FFree1Ad var_98
  loc_AB1905: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95DBA8
  'Data Table: 485DC8
  loc_95DB90: FLdPr Me
  loc_95DB93: VCallAd Control_ID_dgdABMS
  loc_95DB96: FStAdFunc var_88
  loc_95DB99: FLdRfVar var_88
  loc_95DB9C: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95DBA1: FFree1Ad var_88
  loc_95DBA4: ExitProcHresult
  loc_95DBA5: BranchT loc_95E091
End Sub

Private Sub dgdABMS_UnknownEvent_1 '956794
  'Data Table: 485DC8
  loc_95677C: FLdPr Me
  loc_95677F: VCallAd Control_ID_dgdABMS
  loc_956782: FStAdFunc var_88
  loc_956785: FLdRfVar var_88
  loc_956788: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95678D: FFree1Ad var_88
  loc_956790: ExitProcHresult
  loc_956791: CDateR8
  loc_956792: AddI2
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99C234
  'Data Table: 485DC8
  loc_99C1D8: FLdRfVar var_B4
  loc_99C1DB: FLdRfVar var_B0
  loc_99C1DE: FLdI2 ColIndex
  loc_99C1E1: CVarI2 var_A8
  loc_99C1E4: PopAdLdVar
  loc_99C1E5: FLdPr Me
  loc_99C1E8: VCallAd Control_ID_dgdABMS
  loc_99C1EB: FStAdFunc var_88
  loc_99C1EE: FLdPr var_88
  loc_99C1F1: LateIdLdVar var_98 DispID_105 0
  loc_99C1F8: CastAdVar Me
  loc_99C1FC: FStAdFunc var_AC
  loc_99C1FF: FLdPr var_AC
  loc_99C202: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99C207: FLdPr var_B0
  loc_99C20A:  = Me.DataField
  loc_99C20F: FLdZeroAd var_B4
  loc_99C212: PopTmpLdAdStr
  loc_99C216: FLdPr Me
  loc_99C219: MemLdRfVar from_stack_1.global_52
  loc_99C21C: NewIfNullPr clscuentacontable
  loc_99C21F: Call clscuentacontable.Sort(from_stack_1v)
  loc_99C224: FFree1Str var_B8
  loc_99C227: FFreeAd var_88 = "": var_AC = ""
  loc_99C230: FFree1Var var_98 = ""
  loc_99C233: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9C1958
  'Data Table: 485DC8
  loc_9C1888: LitVarStr var_94, vbNullString
  loc_9C188D: PopAdLdVar
  loc_9C188E: FLdPr Me
  loc_9C1891: VCallAd Control_ID_FiltroMsk
  loc_9C1894: FStAdFunc var_A8
  loc_9C1897: FLdPr var_A8
  loc_9C189A: LateIdSt
  loc_9C189F: FFree1Ad var_A8
  loc_9C18A2: FLdRfVar var_AA
  loc_9C18A5: FLdPr Me
  loc_9C18A8: VCallAd Control_ID_FiltroCbo
  loc_9C18AB: FStAdFunc var_A8
  loc_9C18AE: FLdPr var_A8
  loc_9C18B1:  = Me.ListIndex
  loc_9C18B6: FLdI2 var_AA
  loc_9C18B9: FStI2 var_AC
  loc_9C18BC: FFree1Ad var_A8
  loc_9C18BF: FLdI2 var_AC
  loc_9C18C2: LitI2_Byte 0
  loc_9C18C4: EqI2
  loc_9C18C5: BranchF loc_9C18FF
  loc_9C18C8: LitVarStr var_94, "#.#.##.##.##.##"
  loc_9C18CD: PopAdLdVar
  loc_9C18CE: FLdPr Me
  loc_9C18D1: VCallAd Control_ID_FiltroMsk
  loc_9C18D4: FStAdFunc var_A8
  loc_9C18D7: FLdPr var_A8
  loc_9C18DA: LateIdSt
  loc_9C18DF: FFree1Ad var_A8
  loc_9C18E2: LitStr "CodiCuco"
  loc_9C18E5: FStStrCopy var_B0
  loc_9C18E8: FLdRfVar var_B0
  loc_9C18EB: FLdPr Me
  loc_9C18EE: MemLdRfVar from_stack_1.global_52
  loc_9C18F1: NewIfNullPr clscuentacontable
  loc_9C18F4: Call clscuentacontable.Sort(from_stack_1v)
  loc_9C18F9: FFree1Str var_B0
  loc_9C18FC: Branch loc_9C1956
  loc_9C18FF: FLdI2 var_AC
  loc_9C1902: LitI2_Byte 1
  loc_9C1904: EqI2
  loc_9C1905: BranchF loc_9C1956
  loc_9C1908: LitVarStr var_94, "&"
  loc_9C190D: PopAdLdVar
  loc_9C190E: FLdPr Me
  loc_9C1911: VCallAd Control_ID_FiltroMsk
  loc_9C1914: FStAdFunc var_A8
  loc_9C1917: FLdPr var_A8
  loc_9C191A: LateIdSt
  loc_9C191F: FFree1Ad var_A8
  loc_9C1922: LitVarStr var_94, vbNullString
  loc_9C1927: PopAdLdVar
  loc_9C1928: FLdPr Me
  loc_9C192B: VCallAd Control_ID_FiltroMsk
  loc_9C192E: FStAdFunc var_A8
  loc_9C1931: FLdPr var_A8
  loc_9C1934: LateIdSt
  loc_9C1939: FFree1Ad var_A8
  loc_9C193C: LitStr "DetaCuco"
  loc_9C193F: FStStrCopy var_B0
  loc_9C1942: FLdRfVar var_B0
  loc_9C1945: FLdPr Me
  loc_9C1948: MemLdRfVar from_stack_1.global_52
  loc_9C194B: NewIfNullPr clscuentacontable
  loc_9C194E: Call clscuentacontable.Sort(from_stack_1v)
  loc_9C1953: FFree1Str var_B0
  loc_9C1956: ExitProcHresult
End Sub

Private Sub Form_Load() 'A15AA8
  'Data Table: 485DC8
  loc_A15934: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A15939: PopAdLdVar
  loc_A1593A: FLdPr Me
  loc_A1593D: VCallAd Control_ID_CodiCucoMsk
  loc_A15940: FStAdFunc var_A8
  loc_A15943: FLdPr var_A8
  loc_A15946: LateIdSt
  loc_A1594B: FFree1Ad var_A8
  loc_A1594E: ImpAdLdI2 MemVar_C3D064
  loc_A15951: LitI2 2025
  loc_A15954: LeI2
  loc_A15955: BranchF loc_A15975
  loc_A15958: LitVarI4
  loc_A15960: PopAdLdVar
  loc_A15961: FLdPr Me
  loc_A15964: VCallAd Control_ID_dgdABMS
  loc_A15967: FStAdFunc var_A8
  loc_A1596A: FLdPr var_A8
  loc_A1596D: LateIdSt
  loc_A15972: FFree1Ad var_A8
  loc_A15975: LitI2_Byte 0
  loc_A15977: CR8I2
  loc_A15978: PopFPR4
  loc_A15979: FLdPr Me
  loc_A1597C: Me.Left = from_stack_1s
  loc_A15981: LitI2_Byte 0
  loc_A15983: CR8I2
  loc_A15984: PopFPR4
  loc_A15985: FLdPr Me
  loc_A15988: Me.Top = from_stack_1s
  loc_A1598D: LitStr vbNullString
  loc_A15990: FLdPr Me
  loc_A15993: MemStStrCopy
  loc_A15997: LitStr "SELECT cuentacontable.*, DetaTicu FROM infogov.cuentacontable "
  loc_A1599A: LitStr "LEFT JOIN tipocuco ON cuentacontable.CodiTicu = tipocuco.CodiTicu "
  loc_A1599D: ConcatStr
  loc_A1599E: FStStrNoPop var_AC
  loc_A159A1: LitStr "WHERE cuentacontable.PeriInfo = "
  loc_A159A4: ConcatStr
  loc_A159A5: FStStrNoPop var_B0
  loc_A159A8: ImpAdLdI2 MemVar_C3D064
  loc_A159AB: CStrUI1
  loc_A159AD: FStStrNoPop var_B4
  loc_A159B0: ConcatStr
  loc_A159B1: FStStrNoPop var_B8
  loc_A159B4: FLdPr Me
  loc_A159B7: MemStStrCopy
  loc_A159BB: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_A159C6: LitStr " ORDER BY cuentacontable.PeriInfo, cuentacontable.CodiCuco"
  loc_A159C9: FLdPr Me
  loc_A159CC: MemStStrCopy
  loc_A159D0: FLdPr Me
  loc_A159D3: MemLdStr global_72
  loc_A159D6: FLdPr Me
  loc_A159D9: MemLdStr global_76
  loc_A159DC: ConcatStr
  loc_A159DD: FStStrNoPop var_AC
  loc_A159E0: FLdPr Me
  loc_A159E3: MemLdRfVar from_stack_1.global_52
  loc_A159E6: NewIfNullPr clscuentacontable
  loc_A159E9: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A159EE: FFree1Str var_AC
  loc_A159F1: LitVarI2 var_94, 0
  loc_A159F6: PopAdLdVar
  loc_A159F7: LitStr "Cuenta Contable (Código)"
  loc_A159FA: FLdPr Me
  loc_A159FD: VCallAd Control_ID_FiltroCbo
  loc_A15A00: FStAdFunc var_A8
  loc_A15A03: FLdPr var_A8
  loc_A15A06: Me.AddItem from_stack_1, from_stack_2
  loc_A15A0B: FFree1Ad var_A8
  loc_A15A0E: LitVarI2 var_94, 1
  loc_A15A13: PopAdLdVar
  loc_A15A14: LitStr "Cuenta Contable (Detalle)"
  loc_A15A17: FLdPr Me
  loc_A15A1A: VCallAd Control_ID_FiltroCbo
  loc_A15A1D: FStAdFunc var_A8
  loc_A15A20: FLdPr var_A8
  loc_A15A23: Me.AddItem from_stack_1, from_stack_2
  loc_A15A28: FFree1Ad var_A8
  loc_A15A2B: LitI2_Byte 0
  loc_A15A2D: FLdPr Me
  loc_A15A30: VCallAd Control_ID_FiltroCbo
  loc_A15A33: FStAdFunc var_A8
  loc_A15A36: FLdPr var_A8
  loc_A15A39: Me.ListIndex = from_stack_1
  loc_A15A3E: FFree1Ad var_A8
  loc_A15A41: Call cmdCancelar_Click()
  loc_A15A46: LitI4 0
  loc_A15A4B: LitI4 1
  loc_A15A50: FLdRfVar var_BC
  loc_A15A53: Redim
  loc_A15A5D: FLdPr Me
  loc_A15A60: MemLdRfVar from_stack_1.global_52
  loc_A15A63: NewIfNullAd
  loc_A15A66: FStAd var_A8 
  loc_A15A6A: FLdRfVar var_A8
  loc_A15A6D: CVarRef
  loc_A15A72: ParmAry1St
  loc_A15A78: FLdPr Me
  loc_A15A7B: VCallAd Control_ID_dgdABMS
  loc_A15A7E: CVarAd
  loc_A15A82: ParmAry1St
  loc_A15A88: FLdRfVar var_BC
  loc_A15A8B: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A15A90: ILdRf var_A8
  loc_A15A93: CastAd
  loc_A15A96: FLdPr Me
  loc_A15A99: MemStAdFunc
  loc_A15A9D: FLdRfVar var_BC
  loc_A15AA0: Erase
  loc_A15AA1: FFree1Ad var_A8
  loc_A15AA4: ExitProcHresult
  loc_A15AA5: CopyBytes
End Sub

Private Sub Form_Activate() '99685C
  'Data Table: 485DC8
  loc_996800: FLdRfVar var_C2
  loc_996803: FLdRfVar var_C0
  loc_996806: LitVarI2 var_B8, 1
  loc_99680B: FLdPr Me
  loc_99680E: VCallAd Control_ID_tlbABMS
  loc_996811: FStAdFunc var_88
  loc_996814: FLdPr var_88
  loc_996817: LateIdLdVar var_98 DispID_3 0
  loc_99681E: CastAdVar Me
  loc_996822: FStAdFunc var_BC
  loc_996825: FLdPr var_BC
  loc_996828:  = Me.Buttons.ControlDefault
  loc_99682D: FLdPr var_C0
  loc_996830:  = Me.Enabled
  loc_996835: FLdI2 var_C2
  loc_996838: FFreeAd var_88 = "": var_BC = ""
  loc_996841: FFreeVar var_98 = ""
  loc_996848: BranchF loc_996859
  loc_99684B: FLdPr Me
  loc_99684E: MemLdRfVar from_stack_1.global_52
  loc_996851: NewIfNullPr clscuentacontable
  loc_996854: Call clscuentacontable.Requery()
  loc_996859: ExitProcHresult
  loc_99685A: UMiI2
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9565CC
  'Data Table: 485DC8
  loc_9565B4: ILdI2 KeyCode
  loc_9565B7: ILdRf Me
  loc_9565BA: CastAd
  loc_9565BD: FStAdFunc var_88
  loc_9565C0: FLdRfVar var_88
  loc_9565C3: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_9565C8: FFree1Ad var_88
  loc_9565CB: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9C97C8
  'Data Table: 485DC8
  loc_9C96F4: LitI2_Byte 0
  loc_9C96F6: CUI1I2
  loc_9C96F8: FLdPr Me
  loc_9C96FB: MemStUI1
  loc_9C96FF: ILdRf Me
  loc_9C9702: CastAd
  loc_9C9705: FStAdFunc var_88
  loc_9C9708: FLdRfVar var_88
  loc_9C970B: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9C9710: FFree1Ad var_88
  loc_9C9713: LitI4 0
  loc_9C9718: LitI4 0
  loc_9C971D: FLdRfVar var_8C
  loc_9C9720: Redim
  loc_9C972A: FLdPr Me
  loc_9C972D: VCallAd Control_ID_dgdABMS
  loc_9C9730: CVarAd
  loc_9C9734: ParmAry1St
  loc_9C973A: FLdRfVar var_8C
  loc_9C973D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C9742: FLdRfVar var_8C
  loc_9C9745: Erase
  loc_9C9746: FLdPr Me
  loc_9C9749: MemLdRfVar from_stack_1.global_52
  loc_9C974C: NewIfNullAd
  loc_9C974F: FStAd var_A0 
  loc_9C9753: FLdRfVar var_A0
  loc_9C9756: CVarRef
  loc_9C975B: ILdRf Me
  loc_9C975E: CastAd
  loc_9C9761: FStAdFunc var_88
  loc_9C9764: FLdRfVar var_88
  loc_9C9767: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9C976C: ILdRf var_A0
  loc_9C976F: CastAd
  loc_9C9772: FLdPr Me
  loc_9C9775: MemStAdFunc
  loc_9C9779: FFreeAd var_88 = ""
  loc_9C9780: ILdRf Me
  loc_9C9783: CastAd
  loc_9C9786: FStAdFunc var_88
  loc_9C9789: FLdRfVar var_88
  loc_9C978C: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9C9791: FFree1Ad var_88
  loc_9C9794: FLdPr Me
  loc_9C9797: VCallAd Control_ID_dgdABMS
  loc_9C979A: FStAdFunc var_A0
  loc_9C979D: LitI4 0
  loc_9C97A2: FStStrCopy var_B4
  loc_9C97A5: FLdRfVar var_B4
  loc_9C97A8: FLdPr Me
  loc_9C97AB: MemLdStr global_80
  loc_9C97AE: FLdZeroAd var_A0
  loc_9C97B1: FStAdFunc var_88
  loc_9C97B4: FLdRfVar var_88
  loc_9C97B7: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9C97BC: FFree1Str var_B4
  loc_9C97BF: FFreeAd var_88 = ""
  loc_9C97C6: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94CB48
  'Data Table: 485DC8
  loc_94CB34: FLdPr Me
  loc_94CB37: VCallAd Control_ID_FiltroMsk
  loc_94CB3A: CVarAd
  loc_94CB3E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CB43: FFree1Var var_94 = ""
  loc_94CB46: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A50128
  'Data Table: 485DC8
  loc_A4FE84: ILdRf Me
  loc_A4FE87: CastAd
  loc_A4FE8A: FStAdFunc var_88
  loc_A4FE8D: FLdRfVar var_88
  loc_A4FE90: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4FE95: FFree1Ad var_88
  loc_A4FE98: FLdPr Me
  loc_A4FE9B: VCallAd Control_ID_FiltroMsk
  loc_A4FE9E: FStAdFunc var_88
  loc_A4FEA1: FLdPr var_88
  loc_A4FEA4: LateIdLdVar var_98 DispID_22 0
  loc_A4FEAB: CStrVarTmp
  loc_A4FEAC: FStStrNoPop var_9C
  loc_A4FEAF: ImpAdCallI2 Trim$()
  loc_A4FEB4: FStStrNoPop var_A0
  loc_A4FEB7: LitStr vbNullString
  loc_A4FEBA: NeStr
  loc_A4FEBC: FFreeStr var_9C = ""
  loc_A4FEC3: FFree1Ad var_88
  loc_A4FEC6: FFree1Var var_98 = ""
  loc_A4FEC9: BranchF loc_A50005
  loc_A4FECC: FLdRfVar var_A2
  loc_A4FECF: FLdPr Me
  loc_A4FED2: VCallAd Control_ID_FiltroCbo
  loc_A4FED5: FStAdFunc var_88
  loc_A4FED8: FLdPr var_88
  loc_A4FEDB:  = Me.ListIndex
  loc_A4FEE0: FLdI2 var_A2
  loc_A4FEE3: LitI2_Byte 0
  loc_A4FEE5: EqI2
  loc_A4FEE6: FFree1Ad var_88
  loc_A4FEE9: BranchF loc_A4FF64
  loc_A4FEEC: LitStr "CodiCuco LIKE '"
  loc_A4FEEF: FLdPr Me
  loc_A4FEF2: VCallAd Control_ID_FiltroMsk
  loc_A4FEF5: FStAdFunc var_88
  loc_A4FEF8: FLdPr var_88
  loc_A4FEFB: LateIdLdVar var_98 DispID_22 0
  loc_A4FF02: CStrVarTmp
  loc_A4FF03: FStStrNoPop var_9C
  loc_A4FF06: ConcatStr
  loc_A4FF07: FStStrNoPop var_A0
  loc_A4FF0A: LitStr Chr(37) & "'"
  loc_A4FF0D: ConcatStr
  loc_A4FF0E: PopTmpLdAdStr
  loc_A4FF12: FLdPr Me
  loc_A4FF15: MemLdRfVar from_stack_1.global_52
  loc_A4FF18: NewIfNullPr clscuentacontable
  loc_A4FF1B: Call clscuentacontable.Filter(from_stack_1v)
  loc_A4FF20: FFreeStr var_9C = "": var_A0 = ""
  loc_A4FF29: FFree1Ad var_88
  loc_A4FF2C: FFree1Var var_98 = ""
  loc_A4FF2F: LitStr "código que comience con "
  loc_A4FF32: FLdPr Me
  loc_A4FF35: VCallAd Control_ID_FiltroMsk
  loc_A4FF38: FStAdFunc var_88
  loc_A4FF3B: FLdPr var_88
  loc_A4FF3E: LateIdLdVar var_98 DispID_22 0
  loc_A4FF45: CStrVarTmp
  loc_A4FF46: FStStrNoPop var_9C
  loc_A4FF49: ConcatStr
  loc_A4FF4A: FStStrNoPop var_A0
  loc_A4FF4D: FLdPr Me
  loc_A4FF50: MemStStrCopy
  loc_A4FF54: FFreeStr var_9C = ""
  loc_A4FF5B: FFree1Ad var_88
  loc_A4FF5E: FFree1Var var_98 = ""
  loc_A4FF61: Branch loc_A50002
  loc_A4FF64: FLdRfVar var_A2
  loc_A4FF67: FLdPr Me
  loc_A4FF6A: VCallAd Control_ID_FiltroCbo
  loc_A4FF6D: FStAdFunc var_88
  loc_A4FF70: FLdPr var_88
  loc_A4FF73:  = Me.ListIndex
  loc_A4FF78: FLdI2 var_A2
  loc_A4FF7B: LitI2_Byte 1
  loc_A4FF7D: EqI2
  loc_A4FF7E: FFree1Ad var_88
  loc_A4FF81: BranchF loc_A50002
  loc_A4FF84: LitStr "DetaCuco LIKE '" & Chr(37)
  loc_A4FF87: FLdPr Me
  loc_A4FF8A: VCallAd Control_ID_FiltroMsk
  loc_A4FF8D: FStAdFunc var_88
  loc_A4FF90: FLdPr var_88
  loc_A4FF93: LateIdLdVar var_98 DispID_22 0
  loc_A4FF9A: CStrVarTmp
  loc_A4FF9B: FStStrNoPop var_9C
  loc_A4FF9E: ConcatStr
  loc_A4FF9F: FStStrNoPop var_A0
  loc_A4FFA2: LitStr Chr(37) & "'"
  loc_A4FFA5: ConcatStr
  loc_A4FFA6: PopTmpLdAdStr
  loc_A4FFAA: FLdPr Me
  loc_A4FFAD: MemLdRfVar from_stack_1.global_52
  loc_A4FFB0: NewIfNullPr clscuentacontable
  loc_A4FFB3: Call clscuentacontable.Filter(from_stack_1v)
  loc_A4FFB8: FFreeStr var_9C = "": var_A0 = ""
  loc_A4FFC1: FFree1Ad var_88
  loc_A4FFC4: FFree1Var var_98 = ""
  loc_A4FFC7: LitStr "detalle que contiene """
  loc_A4FFCA: FLdPr Me
  loc_A4FFCD: VCallAd Control_ID_FiltroMsk
  loc_A4FFD0: FStAdFunc var_88
  loc_A4FFD3: FLdPr var_88
  loc_A4FFD6: LateIdLdVar var_98 DispID_22 0
  loc_A4FFDD: CStrVarTmp
  loc_A4FFDE: FStStrNoPop var_9C
  loc_A4FFE1: ConcatStr
  loc_A4FFE2: FStStrNoPop var_A0
  loc_A4FFE5: LitStr """"
  loc_A4FFE8: ConcatStr
  loc_A4FFE9: FStStrNoPop var_A8
  loc_A4FFEC: FLdPr Me
  loc_A4FFEF: MemStStrCopy
  loc_A4FFF3: FFreeStr var_9C = "": var_A0 = ""
  loc_A4FFFC: FFree1Ad var_88
  loc_A4FFFF: FFree1Var var_98 = ""
  loc_A50002: Branch loc_A50029
  loc_A50005: LitStr vbNullString
  loc_A50008: FStStrCopy var_9C
  loc_A5000B: FLdRfVar var_9C
  loc_A5000E: FLdPr Me
  loc_A50011: MemLdRfVar from_stack_1.global_52
  loc_A50014: NewIfNullPr clscuentacontable
  loc_A50017: Call clscuentacontable.Filter(from_stack_1v)
  loc_A5001C: FFree1Str var_9C
  loc_A5001F: LitStr vbNullString
  loc_A50022: FLdPr Me
  loc_A50025: MemStStrCopy
  loc_A50029: FLdRfVar var_AC
  loc_A5002C: FLdPr Me
  loc_A5002F: MemLdRfVar from_stack_1.global_52
  loc_A50032: NewIfNullPr clscuentacontable
  loc_A50035: from_stack_1 = clscuentacontable.RecordCount
  loc_A5003A: ILdRf var_AC
  loc_A5003D: LitI4 0
  loc_A50042: GtI4
  loc_A50043: BranchF loc_A500E1
  loc_A50046: FLdPr Me
  loc_A50049: MemLdRfVar from_stack_1.global_52
  loc_A5004C: NewIfNullAd
  loc_A5004F: FStAd var_B0 
  loc_A50053: FLdRfVar var_B0
  loc_A50056: CVarRef
  loc_A5005B: ILdRf Me
  loc_A5005E: CastAd
  loc_A50061: FStAdFunc var_88
  loc_A50064: FLdRfVar var_88
  loc_A50067: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A5006C: ILdRf var_B0
  loc_A5006F: CastAd
  loc_A50072: FLdPr Me
  loc_A50075: MemStAdFunc
  loc_A50079: FFreeAd var_88 = ""
  loc_A50080: LitI4 0
  loc_A50085: LitI4 1
  loc_A5008A: FLdRfVar var_C4
  loc_A5008D: Redim
  loc_A50097: FLdPr Me
  loc_A5009A: MemLdRfVar from_stack_1.global_52
  loc_A5009D: NewIfNullAd
  loc_A500A0: FStAd var_88 
  loc_A500A4: FLdRfVar var_88
  loc_A500A7: CVarRef
  loc_A500AC: ParmAry1St
  loc_A500B2: FLdPr Me
  loc_A500B5: VCallAd Control_ID_dgdABMS
  loc_A500B8: CVarAd
  loc_A500BC: ParmAry1St
  loc_A500C2: FLdRfVar var_C4
  loc_A500C5: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A500CA: ILdRf var_88
  loc_A500CD: CastAd
  loc_A500D0: FLdPr Me
  loc_A500D3: MemStAdFunc
  loc_A500D7: FLdRfVar var_C4
  loc_A500DA: Erase
  loc_A500DB: FFree1Ad var_88
  loc_A500DE: Branch loc_A500F5
  loc_A500E1: ILdRf Me
  loc_A500E4: CastAd
  loc_A500E7: FStAdFunc var_88
  loc_A500EA: FLdRfVar var_88
  loc_A500ED: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A500F2: FFree1Ad var_88
  loc_A500F5: FLdPr Me
  loc_A500F8: VCallAd Control_ID_dgdABMS
  loc_A500FB: FStAdFunc var_B0
  loc_A500FE: LitI4 0
  loc_A50103: FStStrCopy var_9C
  loc_A50106: FLdRfVar var_9C
  loc_A50109: FLdPr Me
  loc_A5010C: MemLdStr global_80
  loc_A5010F: FLdZeroAd var_B0
  loc_A50112: FStAdFunc var_88
  loc_A50115: FLdRfVar var_88
  loc_A50118: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A5011D: FFree1Str var_9C
  loc_A50120: FFreeAd var_88 = ""
  loc_A50127: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9967C4
  'Data Table: 485DC8
  loc_996760: ILdI2 KeyAscii
  loc_996763: LitI2_Byte &H27
  loc_996765: EqI2
  loc_996766: BranchF loc_99676E
  loc_996769: LitI2_Byte 0
  loc_99676B: IStI2 KeyAscii
  loc_99676E: FLdRfVar var_88
  loc_996771: FLdPr Me
  loc_996774: MemLdRfVar from_stack_1.global_52
  loc_996777: NewIfNullPr clscuentacontable
  loc_99677A: from_stack_1 = clscuentacontable.RecordCount
  loc_99677F: ILdRf var_88
  loc_996782: LitI4 0
  loc_996787: EqI4
  loc_996788: ILdI2 KeyAscii
  loc_99678B: CI4UI1
  loc_99678C: LitI4 8
  loc_996791: NeI4
  loc_996792: AndI4
  loc_996793: FLdPr Me
  loc_996796: VCallAd Control_ID_FiltroMsk
  loc_996799: FStAdFunc var_8C
  loc_99679C: FLdPr var_8C
  loc_99679F: LateIdLdVar var_9C DispID_16 0
  loc_9967A6: CStrVarTmp
  loc_9967A7: FStStrNoPop var_A0
  loc_9967AA: LitStr vbNullString
  loc_9967AD: EqStr
  loc_9967AF: AndI4
  loc_9967B0: FFree1Str var_A0
  loc_9967B3: FFree1Ad var_8C
  loc_9967B6: FFree1Var var_9C = ""
  loc_9967B9: BranchF loc_9967C1
  loc_9967BC: LitI2_Byte 0
  loc_9967BE: IStI2 KeyAscii
  loc_9967C1: ExitProcHresult
  loc_9967C2: CI2R8
End Sub

Private Sub CodiCucoMsk_UnknownEvent_0 '94CD88
  'Data Table: 485DC8
  loc_94CD74: FLdPr Me
  loc_94CD77: VCallAd Control_ID_CodiCucoMsk
  loc_94CD7A: CVarAd
  loc_94CD7E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CD83: FFree1Var var_94 = ""
  loc_94CD86: ExitProcHresult
End Sub

Private Sub CodiCucoMsk_UnknownEvent_8 'A4EC58
  'Data Table: 485DC8
  loc_A4E9C0: FLdRfVar var_8A
  loc_A4E9C3: FLdPr Me
  loc_A4E9C6: VCallAd Control_ID_cmdCancelar
  loc_A4E9C9: FStAdFunc var_88
  loc_A4E9CC: FLdPr var_88
  loc_A4E9CF:  = Me.Value
  loc_A4E9D4: FLdI2 var_8A
  loc_A4E9D7: NotI4
  loc_A4E9D8: FLdPr Me
  loc_A4E9DB: VCallAd Control_ID_CodiCucoMsk
  loc_A4E9DE: FStAdFunc var_90
  loc_A4E9E1: FLdPr var_90
  loc_A4E9E4: LateIdLdVar var_A0 DispID_13 -32767
  loc_A4E9EB: CBoolVar
  loc_A4E9ED: AndI4
  loc_A4E9EE: FFreeAd var_88 = ""
  loc_A4E9F5: FFree1Var var_A0 = ""
  loc_A4E9F8: BranchF loc_A4EC56
  loc_A4E9FB: FLdPr Me
  loc_A4E9FE: VCallAd Control_ID_CodiCucoMsk
  loc_A4EA01: FStAdFunc var_88
  loc_A4EA04: FLdPr var_88
  loc_A4EA07: LateIdLdVar var_A0 DispID_22 0
  loc_A4EA0E: CStrVarTmp
  loc_A4EA0F: FStStrNoPop var_A4
  loc_A4EA12: FnLenStr
  loc_A4EA13: LitI4 &HA
  loc_A4EA18: EqI4
  loc_A4EA19: FFree1Str var_A4
  loc_A4EA1C: FFree1Ad var_88
  loc_A4EA1F: FFree1Var var_A0 = ""
  loc_A4EA22: BranchF loc_A4EBA3
  loc_A4EA25: FLdRfVar var_8A
  loc_A4EA28: FLdPr Me
  loc_A4EA2B: VCallAd Control_ID_CodiCucoMsk
  loc_A4EA2E: FStAdFunc var_88
  loc_A4EA31: FLdPr var_88
  loc_A4EA34: LateIdLdVar var_A0 DispID_22 0
  loc_A4EA3B: CStrVarTmp
  loc_A4EA3C: FStStrNoPop var_A4
  loc_A4EA3F: FLdPr Me
  loc_A4EA42: MemLdRfVar from_stack_1.global_52
  loc_A4EA45: NewIfNullPr clscuentacontable
  loc_A4EA48: from_stack_2v = clscuentacontable.NivelCuentaContable(from_stack_1v)
  loc_A4EA4D: FLdUI1
  loc_A4EA51: CI2UI1
  loc_A4EA53: LitI2_Byte 0
  loc_A4EA55: EqI2
  loc_A4EA56: FFree1Str var_A4
  loc_A4EA59: FFree1Ad var_88
  loc_A4EA5C: FFree1Var var_A0 = ""
  loc_A4EA5F: BranchF loc_A4EAE1
  loc_A4EA62: LitStr "La CUENTA CONTABLE es incorrecta, Reintente..."
  loc_A4EA65: FLdPr Me
  loc_A4EA68: MemStStrCopy
  loc_A4EA6C: LitI4 0
  loc_A4EA71: FLdPr Me
  loc_A4EA74: MemLdStr global_68
  loc_A4EA77: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A4EA7C: FLdPr Me
  loc_A4EA7F: VCallAd Control_ID_CodiCucoMsk
  loc_A4EA82: CVarAd
  loc_A4EA86: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_A4EA8B: FFree1Var var_A0 = ""
  loc_A4EA8E: FLdPr Me
  loc_A4EA91: VCallAd Control_ID_CodiCucoMsk
  loc_A4EA94: FStAdFunc var_88
  loc_A4EA97: FLdPr var_88
  loc_A4EA9A: LateIdLdVar var_A0 DispID_22 0
  loc_A4EAA1: PopAd
  loc_A4EAA3: LitI4 1
  loc_A4EAA8: FLdRfVar var_A0
  loc_A4EAAB: CStrVarTmp
  loc_A4EAAC: FStStrNoPop var_A4
  loc_A4EAAF: ImpAdCallI2 Left$(, )
  loc_A4EAB4: FStStrNoPop var_A8
  loc_A4EAB7: LitStr "9"
  loc_A4EABA: NeStr
  loc_A4EABC: FFreeStr var_A4 = ""
  loc_A4EAC3: FFree1Ad var_88
  loc_A4EAC6: FFree1Var var_A0 = ""
  loc_A4EAC9: BranchF loc_A4EAD4
  loc_A4EACC: LitI2_Byte &HFF
  loc_A4EACE: IStI2 KeyAscii
  loc_A4EAD1: Branch loc_A4EADE
  loc_A4EAD4: LitStr vbNullString
  loc_A4EAD7: FLdPr Me
  loc_A4EADA: MemStStrCopy
  loc_A4EADE: Branch loc_A4EBA0
  loc_A4EAE1: FLdPr Me
  loc_A4EAE4: VCallAd Control_ID_CodiCucoMsk
  loc_A4EAE7: FStAdFunc var_88
  loc_A4EAEA: FLdPr var_88
  loc_A4EAED: LateIdLdVar var_A0 DispID_22 0
  loc_A4EAF4: PopAd
  loc_A4EAF6: FLdPr Me
  loc_A4EAF9: VCallAd Control_ID_CodiCucoMsk
  loc_A4EAFC: FStAdFunc var_90
  loc_A4EAFF: FLdPr var_90
  loc_A4EB02: LateIdLdVar var_B8 DispID_22 0
  loc_A4EB09: PopAd
  loc_A4EB0B: FLdRfVar var_8A
  loc_A4EB0E: FLdRfVar var_B8
  loc_A4EB11: CStrVarTmp
  loc_A4EB12: FStStrNoPop var_A4
  loc_A4EB15: FLdPr Me
  loc_A4EB18: MemLdRfVar from_stack_1.global_52
  loc_A4EB1B: NewIfNullPr clscuentacontable
  loc_A4EB1E: from_stack_2v = clscuentacontable.NivelCuentaContable(from_stack_1v)
  loc_A4EB23: FLdRfVar var_BC
  loc_A4EB26: FLdUI1
  loc_A4EB2A: CI2UI1
  loc_A4EB2C: FLdRfVar var_A0
  loc_A4EB2F: CStrVarTmp
  loc_A4EB30: FStStrNoPop var_A8
  loc_A4EB33: FLdPr Me
  loc_A4EB36: MemLdRfVar from_stack_1.global_52
  loc_A4EB39: NewIfNullPr clscuentacontable
  loc_A4EB3C: from_stack_3v = clscuentacontable.CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_A4EB41: FLdPr Me
  loc_A4EB44: VCallAd Control_ID_CodiCucoMsk
  loc_A4EB47: FStAdFunc var_C0
  loc_A4EB4A: FLdPr var_C0
  loc_A4EB4D: LateIdLdVar var_D0 DispID_22 0
  loc_A4EB54: PopAd
  loc_A4EB56: FLdRfVar var_D6
  loc_A4EB59: FLdRfVar var_D0
  loc_A4EB5C: CStrVarTmp
  loc_A4EB5D: FStStrNoPop var_D4
  loc_A4EB60: FLdPr Me
  loc_A4EB63: MemLdRfVar from_stack_1.global_52
  loc_A4EB66: NewIfNullPr clscuentacontable
  loc_A4EB69: from_stack_2v = clscuentacontable.NivelCuentaContable(from_stack_1v)
  loc_A4EB6E: FLdUI1
  loc_A4EB72: CI2UI1
  loc_A4EB74: PopTmpLdAd2 var_DE
  loc_A4EB77: FLdZeroAd var_BC
  loc_A4EB7A: PopTmpLdAdStr
  loc_A4EB7E: Call Proc_123_23_9C6BD0()
  loc_A4EB83: FFreeStr var_A4 = "": var_A8 = "": var_D4 = ""
  loc_A4EB8E: FFreeAd var_88 = "": var_90 = ""
  loc_A4EB97: FFreeVar var_A0 = "": var_B8 = ""
  loc_A4EBA0: Branch loc_A4EC56
  loc_A4EBA3: FLdPr Me
  loc_A4EBA6: VCallAd Control_ID_CodiCucoMsk
  loc_A4EBA9: FStAdFunc var_88
  loc_A4EBAC: FLdPr var_88
  loc_A4EBAF: LateIdLdVar var_A0 DispID_22 0
  loc_A4EBB6: CStrVarTmp
  loc_A4EBB7: FStStrNoPop var_A4
  loc_A4EBBA: FnLenStr
  loc_A4EBBB: LitI4 0
  loc_A4EBC0: GeI4
  loc_A4EBC1: FFree1Str var_A4
  loc_A4EBC4: FFree1Ad var_88
  loc_A4EBC7: FFree1Var var_A0 = ""
  loc_A4EBCA: BranchF loc_A4EC4C
  loc_A4EBCD: LitStr "La CUENTA CONTABLE es incorrecta, Reintente..."
  loc_A4EBD0: FLdPr Me
  loc_A4EBD3: MemStStrCopy
  loc_A4EBD7: LitI4 0
  loc_A4EBDC: FLdPr Me
  loc_A4EBDF: MemLdStr global_68
  loc_A4EBE2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A4EBE7: FLdPr Me
  loc_A4EBEA: VCallAd Control_ID_CodiCucoMsk
  loc_A4EBED: CVarAd
  loc_A4EBF1: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_A4EBF6: FFree1Var var_A0 = ""
  loc_A4EBF9: FLdPr Me
  loc_A4EBFC: VCallAd Control_ID_CodiCucoMsk
  loc_A4EBFF: FStAdFunc var_88
  loc_A4EC02: FLdPr var_88
  loc_A4EC05: LateIdLdVar var_A0 DispID_22 0
  loc_A4EC0C: PopAd
  loc_A4EC0E: LitI4 1
  loc_A4EC13: FLdRfVar var_A0
  loc_A4EC16: CStrVarTmp
  loc_A4EC17: FStStrNoPop var_A4
  loc_A4EC1A: ImpAdCallI2 Left$(, )
  loc_A4EC1F: FStStrNoPop var_A8
  loc_A4EC22: LitStr "9"
  loc_A4EC25: NeStr
  loc_A4EC27: FFreeStr var_A4 = ""
  loc_A4EC2E: FFree1Ad var_88
  loc_A4EC31: FFree1Var var_A0 = ""
  loc_A4EC34: BranchF loc_A4EC3F
  loc_A4EC37: LitI2_Byte &HFF
  loc_A4EC39: IStI2 KeyAscii
  loc_A4EC3C: Branch loc_A4EC49
  loc_A4EC3F: LitStr vbNullString
  loc_A4EC42: FLdPr Me
  loc_A4EC45: MemStStrCopy
  loc_A4EC49: Branch loc_A4EC56
  loc_A4EC4C: LitStr vbNullString
  loc_A4EC4F: FLdPr Me
  loc_A4EC52: MemStStrCopy
  loc_A4EC56: ExitProcHresult
End Sub

Private Sub DebeCucoTxt_GotFocus() '94CCF8
  'Data Table: 485DC8
  loc_94CCE4: FLdPr Me
  loc_94CCE7: VCallAd Control_ID_DebeCucoTxt
  loc_94CCEA: CVarAd
  loc_94CCEE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CCF3: FFree1Var var_94 = ""
  loc_94CCF6: ExitProcHresult
End Sub

Private Sub DebeCucoTxt_Validate(Cancel As Boolean) '9CDBC0
  'Data Table: 485DC8
  loc_9CDAE4: FLdRfVar var_8A
  loc_9CDAE7: FLdPr Me
  loc_9CDAEA: VCallAd Control_ID_cmdCancelar
  loc_9CDAED: FStAdFunc var_88
  loc_9CDAF0: FLdPr var_88
  loc_9CDAF3:  = Me.Value
  loc_9CDAF8: FLdI2 var_8A
  loc_9CDAFB: NotI4
  loc_9CDAFC: FLdRfVar var_92
  loc_9CDAFF: FLdPr Me
  loc_9CDB02: VCallAd Control_ID_DebeCucoTxt
  loc_9CDB05: FStAdFunc var_90
  loc_9CDB08: FLdPr var_90
  loc_9CDB0B:  = Me.Enabled
  loc_9CDB10: FLdI2 var_92
  loc_9CDB13: AndI4
  loc_9CDB14: FLdRfVar var_9C
  loc_9CDB17: FLdPr Me
  loc_9CDB1A: VCallAd Control_ID_DebeCucoTxt
  loc_9CDB1D: FStAdFunc var_98
  loc_9CDB20: FLdPr var_98
  loc_9CDB23:  = Me.Text
  loc_9CDB28: ILdRf var_9C
  loc_9CDB2B: LitStr vbNullString
  loc_9CDB2E: NeStr
  loc_9CDB30: AndI4
  loc_9CDB31: FFree1Str var_9C
  loc_9CDB34: FFreeAd var_88 = "": var_90 = ""
  loc_9CDB3D: BranchF loc_9CDBBE
  loc_9CDB40: FLdRfVar var_9C
  loc_9CDB43: FLdPr Me
  loc_9CDB46: VCallAd Control_ID_DebeCucoTxt
  loc_9CDB49: FStAdFunc var_88
  loc_9CDB4C: FLdPr var_88
  loc_9CDB4F:  = Me.Text
  loc_9CDB54: LitI2_Byte 0
  loc_9CDB56: PopTmpLdAd2 var_9E
  loc_9CDB59: LitI2_Byte 0
  loc_9CDB5B: PopTmpLdAd2 var_92
  loc_9CDB5E: LitI2_Byte 0
  loc_9CDB60: PopTmpLdAd2 var_8A
  loc_9CDB63: ILdRf var_9C
  loc_9CDB66: LitStr "el débito"
  loc_9CDB69: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CDB6E: FStStrNoPop var_A4
  loc_9CDB71: FLdPr Me
  loc_9CDB74: MemStStrCopy
  loc_9CDB78: FFreeStr var_9C = ""
  loc_9CDB7F: FFree1Ad var_88
  loc_9CDB82: FLdPr Me
  loc_9CDB85: VCallAd Control_ID_DebeCucoTxt
  loc_9CDB88: FStAdFunc var_A8
  loc_9CDB8B: LitNothing
  loc_9CDB8D: CastAd
  loc_9CDB90: FStAdFunc var_98
  loc_9CDB93: FLdRfVar var_98
  loc_9CDB96: FLdZeroAd var_A8
  loc_9CDB99: FStAdFuncNoPop
  loc_9CDB9C: CastAd
  loc_9CDB9F: FStAdFunc var_90
  loc_9CDBA2: FLdRfVar var_90
  loc_9CDBA5: FLdPr Me
  loc_9CDBA8: MemLdRfVar from_stack_1.global_68
  loc_9CDBAB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CDBB0: IStI2 Cancel
  loc_9CDBB3: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CDBBE: ExitProcHresult
End Sub

Private Function Proc_123_23_9C6BD0(arg_C, arg_10) '9C6BD0
  'Data Table: 485DC8
  loc_9C6B04: ILdI2 arg_10
  loc_9C6B07: LitI2_Byte 1
  loc_9C6B09: GtI2
  loc_9C6B0A: BranchF loc_9C6BC4
  loc_9C6B0D: LitStr "SELECT * FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_9C6B10: ImpAdLdI2 MemVar_C3D064
  loc_9C6B13: CStrUI1
  loc_9C6B15: FStStrNoPop var_88
  loc_9C6B18: ConcatStr
  loc_9C6B19: FStStrNoPop var_8C
  loc_9C6B1C: LitStr " AND CodiCuco = "
  loc_9C6B1F: ConcatStr
  loc_9C6B20: FStStrNoPop var_90
  loc_9C6B23: ILdI4 arg_C
  loc_9C6B26: ConcatStr
  loc_9C6B27: FStStrNoPop var_94
  loc_9C6B2A: LitStr " ORDER BY PeriInfo, CodiCuco"
  loc_9C6B2D: ConcatStr
  loc_9C6B2E: FStStrNoPop var_98
  loc_9C6B31: FLdPr Me
  loc_9C6B34: MemLdRfVar from_stack_1.global_56
  loc_9C6B37: NewIfNullPr clscuentacontable
  loc_9C6B3A: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_9C6B3F: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_9C6B4C: FLdRfVar var_9C
  loc_9C6B4F: FLdPr Me
  loc_9C6B52: MemLdRfVar from_stack_1.global_56
  loc_9C6B55: NewIfNullPr clscuentacontable
  loc_9C6B58: from_stack_1 = clscuentacontable.RecordCount
  loc_9C6B5D: ILdRf var_9C
  loc_9C6B60: LitI4 0
  loc_9C6B65: EqI4
  loc_9C6B66: BranchF loc_9C6BB7
  loc_9C6B69: LitStr "El nivel superior "
  loc_9C6B6C: ILdI2 arg_10
  loc_9C6B6F: LitI2_Byte 1
  loc_9C6B71: SubI2
  loc_9C6B72: CStrUI1
  loc_9C6B74: FStStrNoPop var_88
  loc_9C6B77: ConcatStr
  loc_9C6B78: FStStrNoPop var_8C
  loc_9C6B7B: LitStr " no esta definido"
  loc_9C6B7E: ConcatStr
  loc_9C6B7F: FStStrNoPop var_90
  loc_9C6B82: FLdPr Me
  loc_9C6B85: MemStStrCopy
  loc_9C6B89: FFreeStr var_88 = "": var_8C = ""
  loc_9C6B92: LitI4 0
  loc_9C6B97: FLdPr Me
  loc_9C6B9A: MemLdStr global_68
  loc_9C6B9D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9C6BA2: FLdPr Me
  loc_9C6BA5: VCallAd Control_ID_CodiCucoMsk
  loc_9C6BA8: CVarAd
  loc_9C6BAC: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9C6BB1: FFree1Var var_AC = ""
  loc_9C6BB4: Branch loc_9C6BC1
  loc_9C6BB7: LitStr vbNullString
  loc_9C6BBA: FLdPr Me
  loc_9C6BBD: MemStStrCopy
  loc_9C6BC1: Branch loc_9C6BCE
  loc_9C6BC4: LitStr vbNullString
  loc_9C6BC7: FLdPr Me
  loc_9C6BCA: MemStStrCopy
  loc_9C6BCE: ExitProcHresult
End Function
