VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmDescuentoporConceptoABM
  Caption = "Descuento por Concepto"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmDescuentoporConceptoABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12144
  ClientHeight = 7368
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 120
    Top = 840
    Width = 4575
    Height = 420
    TabIndex = 14
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
    Left = 120
    Top = 4200
    Width = 11520
    Height = 2760
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
    Begin VB.CommandButton CodiConcCmd
      Left = 3960
      Top = 840
      Width = 450
      Height = 360
      TabIndex = 3
      Picture = "frmDescuentoporConceptoABM.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox DecaDecoTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1800
      Width = 1335
      Height = 360
      TabIndex = 5
      MaxLength = 10
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
    Begin VB.TextBox DereDecoTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1320
      Width = 1335
      Height = 360
      TabIndex = 4
      MaxLength = 10
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
    Begin VB.TextBox PeriInfoTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 360
      Width = 855
      Height = 360
      TabIndex = 1
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
    Begin VB.TextBox CodiConcTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 2
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
    Begin VB.Label DetaConcLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 4560
      Top = 840
      Width = 5895
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
    Begin VB.Label Label4
      Caption = "Descuento Capital:"
      Left = 405
      Top = 1800
      Width = 2025
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
    Begin VB.Label Label1
      Caption = "Descuento Recargo:"
      Left = 225
      Top = 1320
      Width = 2205
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
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 1560
      Top = 360
      Width = 870
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
    Begin VB.Label Label2
      Caption = "Concepto:"
      Left = 1335
      Top = 840
      Width = 1095
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1440
    Width = 10920
    Height = 2715
    TabIndex = 0
    OleObjectBlob = "frmDescuentoporConceptoABM.frx":3344
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmDescuentoporConceptoABM.frx":36EA
    Left = 11400
    Top = 720
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12144
    Height = 528
    TabIndex = 12
    OleObjectBlob = "frmDescuentoporConceptoABM.frx":B268
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 13
      TabStop = 0   'False
      Picture = "frmDescuentoporConceptoABM.frx":B7C4
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4800
    Top = 840
    Width = 5775
    Height = 375
    TabIndex = 15
    OleObjectBlob = "frmDescuentoporConceptoABM.frx":C08E
  End
End

Attribute VB_Name = "frmDescuentoporConceptoABM"


Private Sub DecaDecoTxt_GotFocus() '9C5B70
  'Data Table: 471410
  loc_9C5B5C: FLdPr Me
  loc_9C5B5F: VCallAd Control_ID_DecaDecoTxt
  loc_9C5B62: CVarAd
  loc_9C5B66: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5B6B: FFree1Var var_94 = ""
  loc_9C5B6E: ExitProcHresult
  loc_9C5B6F: SetLastSystemError
End Sub

Private Sub DecaDecoTxt_KeyPress(KeyAscii As Integer) 'A06468
  'Data Table: 471410
  loc_A06434: LitStr "0123456789.,"
  loc_A06437: FStStrCopy var_88
  loc_A0643A: FLdRfVar var_88
  loc_A0643D: ILdRf KeyAscii
  loc_A06440: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06445: IStI2 KeyAscii
  loc_A06448: FFree1Str var_88
  loc_A0644B: ILdI2 KeyAscii
  loc_A0644E: LitStr "."
  loc_A06451: ImpAdCallI2 Asc()
  loc_A06456: EqI2
  loc_A06457: BranchF loc_A06465
  loc_A0645A: LitStr ","
  loc_A0645D: ImpAdCallI2 Asc()
  loc_A06462: IStI2 KeyAscii
  loc_A06465: ExitProcHresult
End Sub

Private Sub DecaDecoTxt_LostFocus() 'A74A48
  'Data Table: 471410
  loc_A749E4: FLdRfVar var_8C
  loc_A749E7: FLdPr Me
  loc_A749EA: VCallAd Control_ID_DecaDecoTxt
  loc_A749ED: FStAdFunc var_88
  loc_A749F0: FLdPr var_88
  loc_A749F3:  = Me.Text
  loc_A749F8: LitI4 1
  loc_A749FD: LitI4 1
  loc_A74A02: LitVarStr var_AC, "##0.00"
  loc_A74A07: FStVarCopyObj var_BC
  loc_A74A0A: FLdRfVar var_BC
  loc_A74A0D: FLdZeroAd var_8C
  loc_A74A10: CVarStr var_9C
  loc_A74A13: FLdRfVar var_CC
  loc_A74A16: ImpAdCallFPR4  = Format(, )
  loc_A74A1B: FLdRfVar var_CC
  loc_A74A1E: CStrVarVal var_D0
  loc_A74A22: FLdPr Me
  loc_A74A25: VCallAd Control_ID_DecaDecoTxt
  loc_A74A28: FStAdFunc var_D4
  loc_A74A2B: FLdPr var_D4
  loc_A74A2E: Me.Text = from_stack_1
  loc_A74A33: FFree1Str var_D0
  loc_A74A36: FFreeAd var_88 = ""
  loc_A74A3D: FFreeVar var_9C = "": var_BC = ""
  loc_A74A46: ExitProcHresult
End Sub

Private Sub DecaDecoTxt_Validate(Cancel As Boolean) 'AD0C70
  'Data Table: 471410
  loc_AD0B48: FLdRfVar var_8A
  loc_AD0B4B: FLdPr Me
  loc_AD0B4E: VCallAd Control_ID_cmdCancelar
  loc_AD0B51: FStAdFunc var_88
  loc_AD0B54: FLdPr var_88
  loc_AD0B57:  = Me.Value
  loc_AD0B5C: FLdI2 var_8A
  loc_AD0B5F: NotI4
  loc_AD0B60: FLdRfVar var_92
  loc_AD0B63: FLdPr Me
  loc_AD0B66: VCallAd Control_ID_DecaDecoTxt
  loc_AD0B69: FStAdFunc var_90
  loc_AD0B6C: FLdPr var_90
  loc_AD0B6F:  = Me.Enabled
  loc_AD0B74: FLdI2 var_92
  loc_AD0B77: AndI4
  loc_AD0B78: FFreeAd var_88 = ""
  loc_AD0B7F: BranchF loc_AD0C29
  loc_AD0B82: FLdRfVar var_98
  loc_AD0B85: FLdPr Me
  loc_AD0B88: VCallAd Control_ID_DecaDecoTxt
  loc_AD0B8B: FStAdFunc var_88
  loc_AD0B8E: FLdPr var_88
  loc_AD0B91:  = Me.Text
  loc_AD0B96: FLdZeroAd var_98
  loc_AD0B99: CVarStr var_A8
  loc_AD0B9C: ImpAdCallI2 IsNumeric()
  loc_AD0BA1: NotI4
  loc_AD0BA2: FFree1Ad var_88
  loc_AD0BA5: FFree1Var var_A8 = ""
  loc_AD0BA8: BranchF loc_AD0BC2
  loc_AD0BAB: LitStr "0"
  loc_AD0BAE: FLdPr Me
  loc_AD0BB1: VCallAd Control_ID_DecaDecoTxt
  loc_AD0BB4: FStAdFunc var_88
  loc_AD0BB7: FLdPr var_88
  loc_AD0BBA: Me.Text = from_stack_1
  loc_AD0BBF: FFree1Ad var_88
  loc_AD0BC2: FLdRfVar var_98
  loc_AD0BC5: FLdPr Me
  loc_AD0BC8: VCallAd Control_ID_DecaDecoTxt
  loc_AD0BCB: FStAdFunc var_88
  loc_AD0BCE: FLdPr var_88
  loc_AD0BD1:  = Me.Text
  loc_AD0BD6: LitI2_Byte &HFF
  loc_AD0BD8: LitI2_Byte 0
  loc_AD0BDA: ILdRf var_98
  loc_AD0BDD: LitStr "ingrese descuento"
  loc_AD0BE0: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AD0BE5: FStStrNoPop var_AC
  loc_AD0BE8: FLdPr Me
  loc_AD0BEB: MemStStrCopy
  loc_AD0BEF: FFreeStr var_98 = ""
  loc_AD0BF6: FFree1Ad var_88
  loc_AD0BF9: FLdPr Me
  loc_AD0BFC: MemLdStr global_60
  loc_AD0BFF: LitStr vbNullString
  loc_AD0C02: NeStr
  loc_AD0C04: BranchF loc_AD0C29
  loc_AD0C07: FLdPr Me
  loc_AD0C0A: MemLdStr global_60
  loc_AD0C0D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD0C12: FLdPr Me
  loc_AD0C15: VCallAd Control_ID_DecaDecoTxt
  loc_AD0C18: CVarAd
  loc_AD0C1C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD0C21: FFree1Var var_A8 = ""
  loc_AD0C24: LitI2_Byte &HFF
  loc_AD0C26: IStI2 Cancel
  loc_AD0C29: FLdRfVar var_98
  loc_AD0C2C: FLdPr Me
  loc_AD0C2F: VCallAd Control_ID_DecaDecoTxt
  loc_AD0C32: FStAdFunc var_88
  loc_AD0C35: FLdPr var_88
  loc_AD0C38:  = Me.Text
  loc_AD0C3D: ILdRf var_98
  loc_AD0C40: CR8Str
  loc_AD0C42: LitI2_Byte &H64
  loc_AD0C44: CR8I2
  loc_AD0C45: GtR4
  loc_AD0C46: FFree1Str var_98
  loc_AD0C49: FFree1Ad var_88
  loc_AD0C4C: BranchF loc_AD0C6F
  loc_AD0C4F: LitStr "El porcentaje no puede ser mayor a 100"
  loc_AD0C52: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD0C57: FLdPr Me
  loc_AD0C5A: VCallAd Control_ID_DecaDecoTxt
  loc_AD0C5D: CVarAd
  loc_AD0C61: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD0C66: FFree1Var var_A8 = ""
  loc_AD0C69: LitI2_Byte &HFF
  loc_AD0C6B: IStI2 Cancel
  loc_AD0C6E: ExitProcHresult
  loc_AD0C6F: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A68DC4
  'Data Table: 471410
  loc_A68D68: FLdRfVar var_B4
  loc_A68D6B: FLdRfVar var_B0
  loc_A68D6E: FLdI2 ColIndex
  loc_A68D71: CVarI2 var_A8
  loc_A68D74: PopAdLdVar
  loc_A68D75: FLdPr Me
  loc_A68D78: VCallAd Control_ID_dgdABMS
  loc_A68D7B: FStAdFunc var_88
  loc_A68D7E: FLdPr var_88
  loc_A68D81: LateIdLdVar var_98 DispID_105 0
  loc_A68D88: CastAdVar Me
  loc_A68D8C: FStAdFunc var_AC
  loc_A68D8F: FLdPr var_AC
  loc_A68D92: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A68D97: FLdPr var_B0
  loc_A68D9A:  = Me.DataField
  loc_A68D9F: FLdZeroAd var_B4
  loc_A68DA2: PopTmpLdAdStr
  loc_A68DA6: FLdPr Me
  loc_A68DA9: MemLdRfVar from_stack_1.global_52
  loc_A68DAC: NewIfNullPr clsdescconc
  loc_A68DAF: Call clsdescconc.Sort(from_stack_1v)
  loc_A68DB4: FFree1Str var_B8
  loc_A68DB7: FFreeAd var_88 = "": var_AC = ""
  loc_A68DC0: FFree1Var var_98 = ""
  loc_A68DC3: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C58E8
  'Data Table: 471410
  loc_9C58D4: FLdPr Me
  loc_9C58D7: VCallAd Control_ID_FiltroMsk
  loc_9C58DA: CVarAd
  loc_9C58DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C58E3: FFree1Var var_94 = ""
  loc_9C58E6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B2DFC8
  'Data Table: 471410
  loc_B2DCF8: ILdRf Me
  loc_B2DCFB: CastAd
  loc_B2DCFE: FStAdFunc var_88
  loc_B2DD01: FLdRfVar var_88
  loc_B2DD04: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B2DD09: FFree1Ad var_88
  loc_B2DD0C: FLdPr Me
  loc_B2DD0F: VCallAd Control_ID_FiltroMsk
  loc_B2DD12: FStAdFunc var_88
  loc_B2DD15: FLdPr var_88
  loc_B2DD18: LateIdLdVar var_98 DispID_20 0
  loc_B2DD1F: CStrVarTmp
  loc_B2DD20: CVarStr var_A8
  loc_B2DD23: FLdRfVar var_B8
  loc_B2DD26: ImpAdCallFPR4  = Trim()
  loc_B2DD2B: FLdRfVar var_B8
  loc_B2DD2E: LitVarStr var_C8, vbNullString
  loc_B2DD33: HardType
  loc_B2DD34: NeVarBool
  loc_B2DD36: FFree1Ad var_88
  loc_B2DD39: FFreeVar var_98 = "": var_A8 = ""
  loc_B2DD42: BranchF loc_B2DF43
  loc_B2DD45: FLdRfVar var_DA
  loc_B2DD48: FLdPr Me
  loc_B2DD4B: VCallAd Control_ID_FiltroCbo
  loc_B2DD4E: FStAdFunc var_88
  loc_B2DD51: FLdPr var_88
  loc_B2DD54:  = Me.ListIndex
  loc_B2DD59: FLdI2 var_DA
  loc_B2DD5C: LitI2_Byte 0
  loc_B2DD5E: EqI2
  loc_B2DD5F: FFree1Ad var_88
  loc_B2DD62: BranchF loc_B2DDE9
  loc_B2DD65: LitStr "PeriInfo >= "
  loc_B2DD68: FLdPr Me
  loc_B2DD6B: VCallAd Control_ID_FiltroMsk
  loc_B2DD6E: FStAdFunc var_88
  loc_B2DD71: FLdPr var_88
  loc_B2DD74: LateIdLdVar var_98 DispID_22 0
  loc_B2DD7B: CStrVarTmp
  loc_B2DD7C: FStStrNoPop var_E0
  loc_B2DD7F: ConcatStr
  loc_B2DD80: PopTmpLdAdStr
  loc_B2DD84: FLdPr Me
  loc_B2DD87: MemLdRfVar from_stack_1.global_52
  loc_B2DD8A: NewIfNullPr clsdescconc
  loc_B2DD8D: Call clsdescconc.Filter(from_stack_1v)
  loc_B2DD92: FFreeStr var_E0 = ""
  loc_B2DD99: FFree1Ad var_88
  loc_B2DD9C: FFree1Var var_98 = ""
  loc_B2DD9F: LitVarStr var_C8, "Numero de Cuenta que es mayor o igual a: "
  loc_B2DDA4: FLdPr Me
  loc_B2DDA7: VCallAd Control_ID_FiltroMsk
  loc_B2DDAA: FStAdFunc var_88
  loc_B2DDAD: FLdPr var_88
  loc_B2DDB0: LateIdLdVar var_98 DispID_22 0
  loc_B2DDB7: CStrVarTmp
  loc_B2DDB8: CVarStr var_A8
  loc_B2DDBB: FLdRfVar var_B8
  loc_B2DDBE: ImpAdCallFPR4  = Trim()
  loc_B2DDC3: FLdRfVar var_B8
  loc_B2DDC6: ConcatVar var_D8
  loc_B2DDCA: CStrVarTmp
  loc_B2DDCB: FStStrNoPop var_E0
  loc_B2DDCE: FLdPr Me
  loc_B2DDD1: MemStStrCopy
  loc_B2DDD5: FFree1Str var_E0
  loc_B2DDD8: FFree1Ad var_88
  loc_B2DDDB: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B2DDE6: Branch loc_B2DF40
  loc_B2DDE9: FLdRfVar var_DA
  loc_B2DDEC: FLdPr Me
  loc_B2DDEF: VCallAd Control_ID_FiltroCbo
  loc_B2DDF2: FStAdFunc var_88
  loc_B2DDF5: FLdPr var_88
  loc_B2DDF8:  = Me.ListIndex
  loc_B2DDFD: FLdI2 var_DA
  loc_B2DE00: LitI2_Byte 1
  loc_B2DE02: EqI2
  loc_B2DE03: FFree1Ad var_88
  loc_B2DE06: BranchF loc_B2DE96
  loc_B2DE09: LitStr "CodiConc LIKE '"
  loc_B2DE0C: FLdPr Me
  loc_B2DE0F: VCallAd Control_ID_FiltroMsk
  loc_B2DE12: FStAdFunc var_88
  loc_B2DE15: FLdPr var_88
  loc_B2DE18: LateIdLdVar var_98 DispID_22 0
  loc_B2DE1F: CStrVarTmp
  loc_B2DE20: FStStrNoPop var_E0
  loc_B2DE23: ConcatStr
  loc_B2DE24: FStStrNoPop var_E4
  loc_B2DE27: LitStr Chr(37) & "'"
  loc_B2DE2A: ConcatStr
  loc_B2DE2B: PopTmpLdAdStr
  loc_B2DE2F: FLdPr Me
  loc_B2DE32: MemLdRfVar from_stack_1.global_52
  loc_B2DE35: NewIfNullPr clsdescconc
  loc_B2DE38: Call clsdescconc.Filter(from_stack_1v)
  loc_B2DE3D: FFreeStr var_E0 = "": var_E4 = ""
  loc_B2DE46: FFree1Ad var_88
  loc_B2DE49: FFree1Var var_98 = ""
  loc_B2DE4C: LitVarStr var_C8, "Detalle de calle que contiene. "
  loc_B2DE51: FLdPr Me
  loc_B2DE54: VCallAd Control_ID_FiltroMsk
  loc_B2DE57: FStAdFunc var_88
  loc_B2DE5A: FLdPr var_88
  loc_B2DE5D: LateIdLdVar var_98 DispID_22 0
  loc_B2DE64: CStrVarTmp
  loc_B2DE65: CVarStr var_A8
  loc_B2DE68: FLdRfVar var_B8
  loc_B2DE6B: ImpAdCallFPR4  = Trim()
  loc_B2DE70: FLdRfVar var_B8
  loc_B2DE73: ConcatVar var_D8
  loc_B2DE77: CStrVarTmp
  loc_B2DE78: FStStrNoPop var_E0
  loc_B2DE7B: FLdPr Me
  loc_B2DE7E: MemStStrCopy
  loc_B2DE82: FFree1Str var_E0
  loc_B2DE85: FFree1Ad var_88
  loc_B2DE88: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B2DE93: Branch loc_B2DF40
  loc_B2DE96: FLdRfVar var_DA
  loc_B2DE99: FLdPr Me
  loc_B2DE9C: VCallAd Control_ID_FiltroCbo
  loc_B2DE9F: FStAdFunc var_88
  loc_B2DEA2: FLdPr var_88
  loc_B2DEA5:  = Me.ListIndex
  loc_B2DEAA: FLdI2 var_DA
  loc_B2DEAD: LitI2_Byte 2
  loc_B2DEAF: EqI2
  loc_B2DEB0: FFree1Ad var_88
  loc_B2DEB3: BranchF loc_B2DF40
  loc_B2DEB6: LitStr "DetaConc LIKE '" & Chr(37)
  loc_B2DEB9: FLdPr Me
  loc_B2DEBC: VCallAd Control_ID_FiltroMsk
  loc_B2DEBF: FStAdFunc var_88
  loc_B2DEC2: FLdPr var_88
  loc_B2DEC5: LateIdLdVar var_98 DispID_22 0
  loc_B2DECC: CStrVarTmp
  loc_B2DECD: FStStrNoPop var_E0
  loc_B2DED0: ConcatStr
  loc_B2DED1: FStStrNoPop var_E4
  loc_B2DED4: LitStr Chr(37) & "'"
  loc_B2DED7: ConcatStr
  loc_B2DED8: PopTmpLdAdStr
  loc_B2DEDC: FLdPr Me
  loc_B2DEDF: MemLdRfVar from_stack_1.global_52
  loc_B2DEE2: NewIfNullPr clsdescconc
  loc_B2DEE5: Call clsdescconc.Filter(from_stack_1v)
  loc_B2DEEA: FFreeStr var_E0 = "": var_E4 = ""
  loc_B2DEF3: FFree1Ad var_88
  loc_B2DEF6: FFree1Var var_98 = ""
  loc_B2DEF9: LitVarStr var_C8, "Detalle de calle que contiene. "
  loc_B2DEFE: FLdPr Me
  loc_B2DF01: VCallAd Control_ID_FiltroMsk
  loc_B2DF04: FStAdFunc var_88
  loc_B2DF07: FLdPr var_88
  loc_B2DF0A: LateIdLdVar var_98 DispID_22 0
  loc_B2DF11: CStrVarTmp
  loc_B2DF12: CVarStr var_A8
  loc_B2DF15: FLdRfVar var_B8
  loc_B2DF18: ImpAdCallFPR4  = Trim()
  loc_B2DF1D: FLdRfVar var_B8
  loc_B2DF20: ConcatVar var_D8
  loc_B2DF24: CStrVarTmp
  loc_B2DF25: FStStrNoPop var_E0
  loc_B2DF28: FLdPr Me
  loc_B2DF2B: MemStStrCopy
  loc_B2DF2F: FFree1Str var_E0
  loc_B2DF32: FFree1Ad var_88
  loc_B2DF35: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B2DF40: Branch loc_B2DF67
  loc_B2DF43: LitStr vbNullString
  loc_B2DF46: FStStrCopy var_E0
  loc_B2DF49: FLdRfVar var_E0
  loc_B2DF4C: FLdPr Me
  loc_B2DF4F: MemLdRfVar from_stack_1.global_52
  loc_B2DF52: NewIfNullPr clsdescconc
  loc_B2DF55: Call clsdescconc.Filter(from_stack_1v)
  loc_B2DF5A: FFree1Str var_E0
  loc_B2DF5D: LitStr vbNullString
  loc_B2DF60: FLdPr Me
  loc_B2DF63: MemStStrCopy
  loc_B2DF67: FLdRfVar var_EC
  loc_B2DF6A: FLdPr Me
  loc_B2DF6D: MemLdRfVar from_stack_1.global_52
  loc_B2DF70: NewIfNullPr clsdescconc
  loc_B2DF73: from_stack_1 = clsdescconc.RecordCount
  loc_B2DF78: ILdRf var_EC
  loc_B2DF7B: LitI4 0
  loc_B2DF80: GtI4
  loc_B2DF81: BranchF loc_B2DF8C
  loc_B2DF84: Call EnlazaTodo()
  loc_B2DF89: Branch loc_B2DFA0
  loc_B2DF8C: ILdRf Me
  loc_B2DF8F: CastAd
  loc_B2DF92: FStAdFunc var_88
  loc_B2DF95: FLdRfVar var_88
  loc_B2DF98: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B2DF9D: FFree1Ad var_88
  loc_B2DFA0: FLdPr Me
  loc_B2DFA3: VCallAd Control_ID_dgdABMS
  loc_B2DFA6: FStAdFunc var_F0
  loc_B2DFA9: FLdPr Me
  loc_B2DFAC: MemLdStr global_64
  loc_B2DFAF: FLdZeroAd var_F0
  loc_B2DFB2: FStAdFunc var_88
  loc_B2DFB5: FLdRfVar var_88
  loc_B2DFB8: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B2DFBD: FFreeAd var_88 = ""
  loc_B2DFC4: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AC54F0
  'Data Table: 471410
  loc_AC53E0: LitVarStr var_94, vbNullString
  loc_AC53E5: PopAdLdVar
  loc_AC53E6: FLdPr Me
  loc_AC53E9: VCallAd Control_ID_FiltroMsk
  loc_AC53EC: FStAdFunc var_A8
  loc_AC53EF: FLdPr var_A8
  loc_AC53F2: LateIdSt
  loc_AC53F7: FFree1Ad var_A8
  loc_AC53FA: LitVarStr var_94, vbNullString
  loc_AC53FF: PopAdLdVar
  loc_AC5400: FLdPr Me
  loc_AC5403: VCallAd Control_ID_FiltroMsk
  loc_AC5406: FStAdFunc var_A8
  loc_AC5409: FLdPr var_A8
  loc_AC540C: LateIdSt
  loc_AC5411: FFree1Ad var_A8
  loc_AC5414: FLdRfVar var_AA
  loc_AC5417: FLdPr Me
  loc_AC541A: VCallAd Control_ID_FiltroCbo
  loc_AC541D: FStAdFunc var_A8
  loc_AC5420: FLdPr var_A8
  loc_AC5423:  = Me.ListIndex
  loc_AC5428: FLdI2 var_AA
  loc_AC542B: FStI2 var_AC
  loc_AC542E: FFree1Ad var_A8
  loc_AC5431: FLdI2 var_AC
  loc_AC5434: LitI2_Byte 0
  loc_AC5436: EqI2
  loc_AC5437: BranchF loc_AC5471
  loc_AC543A: LitVarStr var_94, "####"
  loc_AC543F: PopAdLdVar
  loc_AC5440: FLdPr Me
  loc_AC5443: VCallAd Control_ID_FiltroMsk
  loc_AC5446: FStAdFunc var_A8
  loc_AC5449: FLdPr var_A8
  loc_AC544C: LateIdSt
  loc_AC5451: FFree1Ad var_A8
  loc_AC5454: LitStr "PeriInfo"
  loc_AC5457: FStStrCopy var_B0
  loc_AC545A: FLdRfVar var_B0
  loc_AC545D: FLdPr Me
  loc_AC5460: MemLdRfVar from_stack_1.global_52
  loc_AC5463: NewIfNullPr clsdescconc
  loc_AC5466: Call clsdescconc.Sort(from_stack_1v)
  loc_AC546B: FFree1Str var_B0
  loc_AC546E: Branch loc_AC54EE
  loc_AC5471: FLdI2 var_AC
  loc_AC5474: LitI2_Byte 1
  loc_AC5476: EqI2
  loc_AC5477: BranchF loc_AC54B1
  loc_AC547A: LitVarStr var_94, "########"
  loc_AC547F: PopAdLdVar
  loc_AC5480: FLdPr Me
  loc_AC5483: VCallAd Control_ID_FiltroMsk
  loc_AC5486: FStAdFunc var_A8
  loc_AC5489: FLdPr var_A8
  loc_AC548C: LateIdSt
  loc_AC5491: FFree1Ad var_A8
  loc_AC5494: LitStr "CodiConc"
  loc_AC5497: FStStrCopy var_B0
  loc_AC549A: FLdRfVar var_B0
  loc_AC549D: FLdPr Me
  loc_AC54A0: MemLdRfVar from_stack_1.global_52
  loc_AC54A3: NewIfNullPr clsdescconc
  loc_AC54A6: Call clsdescconc.Sort(from_stack_1v)
  loc_AC54AB: FFree1Str var_B0
  loc_AC54AE: Branch loc_AC54EE
  loc_AC54B1: FLdI2 var_AC
  loc_AC54B4: LitI2_Byte 2
  loc_AC54B6: EqI2
  loc_AC54B7: BranchF loc_AC54EE
  loc_AC54BA: LitVarStr var_94, vbNullString
  loc_AC54BF: PopAdLdVar
  loc_AC54C0: FLdPr Me
  loc_AC54C3: VCallAd Control_ID_FiltroMsk
  loc_AC54C6: FStAdFunc var_A8
  loc_AC54C9: FLdPr var_A8
  loc_AC54CC: LateIdSt
  loc_AC54D1: FFree1Ad var_A8
  loc_AC54D4: LitStr "DetaConc"
  loc_AC54D7: FStStrCopy var_B0
  loc_AC54DA: FLdRfVar var_B0
  loc_AC54DD: FLdPr Me
  loc_AC54E0: MemLdRfVar from_stack_1.global_52
  loc_AC54E3: NewIfNullPr clsdescconc
  loc_AC54E6: Call clsdescconc.Sort(from_stack_1v)
  loc_AC54EB: FFree1Str var_B0
  loc_AC54EE: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B97B08
  'Data Table: 471410
  loc_B97598: ILdRf Button
  loc_B9759B: FStAd var_88 
  loc_B9759F: FLdRfVar var_90
  loc_B975A2: FLdPr var_88
  loc_B975A5:  = Me.Key
  loc_B975AA: FLdZeroAd var_90
  loc_B975AD: FStStr var_94
  loc_B975B0: ILdRf var_94
  loc_B975B3: LitStr "btnCrear"
  loc_B975B6: EqStr
  loc_B975B8: BranchF loc_B9777E
  loc_B975BB: LitI2_Byte 1
  loc_B975BD: FLdPr Me
  loc_B975C0: MemStI2 global_56
  loc_B975C3: ILdRf Me
  loc_B975C6: CastAd
  loc_B975C9: FStAdFunc var_98
  loc_B975CC: FLdRfVar var_98
  loc_B975CF: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B975D4: FFree1Ad var_98
  loc_B975D7: LitI4 0
  loc_B975DC: LitI4 0
  loc_B975E1: FLdRfVar var_9C
  loc_B975E4: Redim
  loc_B975EE: FLdPr Me
  loc_B975F1: VCallAd Control_ID_dgdABMS
  loc_B975F4: CVarAd
  loc_B975F8: ParmAry1St
  loc_B975FE: FLdRfVar var_9C
  loc_B97601: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B97606: FLdRfVar var_9C
  loc_B97609: Erase
  loc_B9760A: ILdRf Me
  loc_B9760D: CastAd
  loc_B97610: FStAdFunc var_98
  loc_B97613: FLdRfVar var_98
  loc_B97616: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B9761B: FFree1Ad var_98
  loc_B9761E: ILdRf Me
  loc_B97621: CastAd
  loc_B97624: FStAdFunc var_98
  loc_B97627: FLdRfVar var_98
  loc_B9762A: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B9762F: FFree1Ad var_98
  loc_B97632: LitI4 1
  loc_B97637: LitI4 1
  loc_B9763C: LitVarStr var_CC, "0.00"
  loc_B97641: FStVarCopyObj var_DC
  loc_B97644: FLdRfVar var_DC
  loc_B97647: LitVarStr var_BC, "0"
  loc_B9764C: FStVarCopyObj var_AC
  loc_B9764F: FLdRfVar var_AC
  loc_B97652: FLdRfVar var_EC
  loc_B97655: ImpAdCallFPR4  = Format(, )
  loc_B9765A: FLdRfVar var_EC
  loc_B9765D: CStrVarVal var_90
  loc_B97661: FLdPr Me
  loc_B97664: VCallAd Control_ID_DereDecoTxt
  loc_B97667: FStAdFunc var_98
  loc_B9766A: FLdPr var_98
  loc_B9766D: Me.Text = from_stack_1
  loc_B97672: FFree1Str var_90
  loc_B97675: FFree1Ad var_98
  loc_B97678: FFreeVar var_AC = "": var_DC = ""
  loc_B97681: LitI4 1
  loc_B97686: LitI4 1
  loc_B9768B: LitVarStr var_CC, "0.00"
  loc_B97690: FStVarCopyObj var_DC
  loc_B97693: FLdRfVar var_DC
  loc_B97696: LitVarStr var_BC, "0"
  loc_B9769B: FStVarCopyObj var_AC
  loc_B9769E: FLdRfVar var_AC
  loc_B976A1: FLdRfVar var_EC
  loc_B976A4: ImpAdCallFPR4  = Format(, )
  loc_B976A9: FLdRfVar var_EC
  loc_B976AC: CStrVarVal var_90
  loc_B976B0: FLdPr Me
  loc_B976B3: VCallAd Control_ID_DecaDecoTxt
  loc_B976B6: FStAdFunc var_98
  loc_B976B9: FLdPr var_98
  loc_B976BC: Me.Text = from_stack_1
  loc_B976C1: FFree1Str var_90
  loc_B976C4: FFree1Ad var_98
  loc_B976C7: FFreeVar var_AC = "": var_DC = ""
  loc_B976D0: LitI4 0
  loc_B976D5: LitI4 4
  loc_B976DA: FLdRfVar var_9C
  loc_B976DD: Redim
  loc_B976E7: FLdPr Me
  loc_B976EA: VCallAd Control_ID_PeriInfoTxt
  loc_B976ED: CVarAd
  loc_B976F1: ParmAry1St
  loc_B976F7: FLdPr Me
  loc_B976FA: VCallAd Control_ID_CodiConcTxt
  loc_B976FD: CVarAd
  loc_B97701: ParmAry1St
  loc_B97707: FLdPr Me
  loc_B9770A: VCallAd Control_ID_DereDecoTxt
  loc_B9770D: CVarAd
  loc_B97711: ParmAry1St
  loc_B97717: FLdPr Me
  loc_B9771A: VCallAd Control_ID_DecaDecoTxt
  loc_B9771D: CVarAd
  loc_B97721: ParmAry1St
  loc_B97727: FLdPr Me
  loc_B9772A: VCallAd Control_ID_CodiConcCmd
  loc_B9772D: CVarAd
  loc_B97731: ParmAry1St
  loc_B97737: FLdRfVar var_9C
  loc_B9773A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B9773F: FLdRfVar var_9C
  loc_B97742: Erase
  loc_B97743: LitI2_Byte 0
  loc_B97745: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B9774A: CVarDate var_AC
  loc_B9774E: FLdRfVar var_DC
  loc_B97751: ImpAdCallFPR4  = Year()
  loc_B97756: FLdRfVar var_DC
  loc_B97759: CStrVarVal var_90
  loc_B9775D: FLdPr Me
  loc_B97760: VCallAd Control_ID_PeriInfoTxt
  loc_B97763: FStAdFunc var_98
  loc_B97766: FLdPr var_98
  loc_B97769: Me.Text = from_stack_1
  loc_B9776E: FFree1Str var_90
  loc_B97771: FFree1Ad var_98
  loc_B97774: FFreeVar var_AC = ""
  loc_B9777B: Branch loc_B97B06
  loc_B9777E: ILdRf var_94
  loc_B97781: LitStr "btnModificar"
  loc_B97784: EqStr
  loc_B97786: BranchF loc_B9784F
  loc_B97789: FLdRfVar var_110
  loc_B9778C: FLdPr Me
  loc_B9778F: MemLdRfVar from_stack_1.global_52
  loc_B97792: NewIfNullPr clsdescconc
  loc_B97795: from_stack_1 = clsdescconc.RecordCount
  loc_B9779A: ILdRf var_110
  loc_B9779D: LitI4 0
  loc_B977A2: GtI4
  loc_B977A3: BranchF loc_B9784C
  loc_B977A6: LitI2_Byte 2
  loc_B977A8: FLdPr Me
  loc_B977AB: MemStI2 global_56
  loc_B977AE: ILdRf Me
  loc_B977B1: CastAd
  loc_B977B4: FStAdFunc var_98
  loc_B977B7: FLdRfVar var_98
  loc_B977BA: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B977BF: FFree1Ad var_98
  loc_B977C2: LitI4 0
  loc_B977C7: LitI4 0
  loc_B977CC: FLdRfVar var_9C
  loc_B977CF: Redim
  loc_B977D9: FLdPr Me
  loc_B977DC: VCallAd Control_ID_dgdABMS
  loc_B977DF: CVarAd
  loc_B977E3: ParmAry1St
  loc_B977E9: FLdRfVar var_9C
  loc_B977EC: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B977F1: FLdRfVar var_9C
  loc_B977F4: Erase
  loc_B977F5: ILdRf Me
  loc_B977F8: CastAd
  loc_B977FB: FStAdFunc var_98
  loc_B977FE: FLdRfVar var_98
  loc_B97801: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B97806: FFree1Ad var_98
  loc_B97809: LitI4 0
  loc_B9780E: LitI4 1
  loc_B97813: FLdRfVar var_9C
  loc_B97816: Redim
  loc_B97820: FLdPr Me
  loc_B97823: VCallAd Control_ID_DereDecoTxt
  loc_B97826: CVarAd
  loc_B9782A: ParmAry1St
  loc_B97830: FLdPr Me
  loc_B97833: VCallAd Control_ID_DecaDecoTxt
  loc_B97836: CVarAd
  loc_B9783A: ParmAry1St
  loc_B97840: FLdRfVar var_9C
  loc_B97843: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B97848: FLdRfVar var_9C
  loc_B9784B: Erase
  loc_B9784C: Branch loc_B97B06
  loc_B9784F: ILdRf var_94
  loc_B97852: LitStr "btnEliminar"
  loc_B97855: EqStr
  loc_B97857: BranchF loc_B9785D
  loc_B9785A: Branch loc_B97B06
  loc_B9785D: ILdRf var_94
  loc_B97860: LitStr "btnGuardar"
  loc_B97863: EqStr
  loc_B97865: BranchF loc_B97A02
  loc_B97868: LitI2_Byte 0
  loc_B9786A: PopTmpLdAd2 var_112
  loc_B9786D: Call PeriInfoTxt_Validate(from_stack_1v)
  loc_B97872: FLdPr Me
  loc_B97875: MemLdStr global_60
  loc_B97878: LitStr vbNullString
  loc_B9787B: NeStr
  loc_B9787D: BranchF loc_B97881
  loc_B97880: ExitProcHresult
  loc_B97881: LitI2_Byte 0
  loc_B97883: PopTmpLdAd2 var_112
  loc_B97886: Call CodiConcTxt_Validate(from_stack_1v)
  loc_B9788B: FLdPr Me
  loc_B9788E: MemLdStr global_60
  loc_B97891: LitStr vbNullString
  loc_B97894: NeStr
  loc_B97896: BranchF loc_B9789A
  loc_B97899: ExitProcHresult
  loc_B9789A: LitI2_Byte 0
  loc_B9789C: PopTmpLdAd2 var_112
  loc_B9789F: Call DereDecoTxt_Validate(from_stack_1v)
  loc_B978A4: FLdPr Me
  loc_B978A7: MemLdStr global_60
  loc_B978AA: LitStr vbNullString
  loc_B978AD: NeStr
  loc_B978AF: BranchF loc_B978B3
  loc_B978B2: ExitProcHresult
  loc_B978B3: LitI2_Byte 0
  loc_B978B5: PopTmpLdAd2 var_112
  loc_B978B8: Call DecaDecoTxt_Validate(from_stack_1v)
  loc_B978BD: FLdPr Me
  loc_B978C0: MemLdStr global_60
  loc_B978C3: LitStr vbNullString
  loc_B978C6: NeStr
  loc_B978C8: BranchF loc_B978CC
  loc_B978CB: ExitProcHresult
  loc_B978CC: FLdPr Me
  loc_B978CF: MemLdI2 global_56
  loc_B978D2: FStI2 var_114
  loc_B978D5: FLdI2 var_114
  loc_B978D8: LitI2_Byte 1
  loc_B978DA: EqI2
  loc_B978DB: BranchF loc_B97969
  loc_B978DE: FLdRfVar var_90
  loc_B978E1: FLdPr Me
  loc_B978E4: VCallAd Control_ID_PeriInfoTxt
  loc_B978E7: FStAdFunc var_98
  loc_B978EA: FLdPr var_98
  loc_B978ED:  = Me.Text
  loc_B978F2: FLdRfVar var_11C
  loc_B978F5: FLdPr Me
  loc_B978F8: VCallAd Control_ID_CodiConcTxt
  loc_B978FB: FStAdFunc var_118
  loc_B978FE: FLdPr var_118
  loc_B97901:  = Me.Text
  loc_B97906: FLdRfVar var_124
  loc_B97909: FLdPr Me
  loc_B9790C: VCallAd Control_ID_DereDecoTxt
  loc_B9790F: FStAdFunc var_120
  loc_B97912: FLdPr var_120
  loc_B97915:  = Me.Text
  loc_B9791A: FLdRfVar var_12C
  loc_B9791D: FLdPr Me
  loc_B97920: VCallAd Control_ID_DecaDecoTxt
  loc_B97923: FStAdFunc var_128
  loc_B97926: FLdPr var_128
  loc_B97929:  = Me.Text
  loc_B9792E: ILdRf var_12C
  loc_B97931: CR8Str
  loc_B97933: PopFPR8
  loc_B97934: ILdRf var_124
  loc_B97937: CR8Str
  loc_B97939: PopFPR8
  loc_B9793A: ILdRf var_11C
  loc_B9793D: ILdRf var_90
  loc_B97940: CI2Str
  loc_B97942: FLdPr Me
  loc_B97945: MemLdRfVar from_stack_1.global_52
  loc_B97948: NewIfNullPr clsdescconc
  loc_B9794B: Call clsdescconc.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B97950: FFreeStr var_90 = "": var_11C = "": var_124 = ""
  loc_B9795B: FFreeAd var_98 = "": var_118 = "": var_120 = ""
  loc_B97966: Branch loc_B979FA
  loc_B97969: FLdI2 var_114
  loc_B9796C: LitI2_Byte 2
  loc_B9796E: EqI2
  loc_B9796F: BranchF loc_B979FA
  loc_B97972: FLdRfVar var_90
  loc_B97975: FLdPr Me
  loc_B97978: VCallAd Control_ID_PeriInfoTxt
  loc_B9797B: FStAdFunc var_98
  loc_B9797E: FLdPr var_98
  loc_B97981:  = Me.Text
  loc_B97986: FLdRfVar var_11C
  loc_B97989: FLdPr Me
  loc_B9798C: VCallAd Control_ID_CodiConcTxt
  loc_B9798F: FStAdFunc var_118
  loc_B97992: FLdPr var_118
  loc_B97995:  = Me.Text
  loc_B9799A: FLdRfVar var_124
  loc_B9799D: FLdPr Me
  loc_B979A0: VCallAd Control_ID_DereDecoTxt
  loc_B979A3: FStAdFunc var_120
  loc_B979A6: FLdPr var_120
  loc_B979A9:  = Me.Text
  loc_B979AE: FLdRfVar var_12C
  loc_B979B1: FLdPr Me
  loc_B979B4: VCallAd Control_ID_DecaDecoTxt
  loc_B979B7: FStAdFunc var_128
  loc_B979BA: FLdPr var_128
  loc_B979BD:  = Me.Text
  loc_B979C2: ILdRf var_12C
  loc_B979C5: CR8Str
  loc_B979C7: PopFPR8
  loc_B979C8: ILdRf var_124
  loc_B979CB: CR8Str
  loc_B979CD: PopFPR8
  loc_B979CE: ILdRf var_11C
  loc_B979D1: ILdRf var_90
  loc_B979D4: CI2Str
  loc_B979D6: FLdPr Me
  loc_B979D9: MemLdRfVar from_stack_1.global_52
  loc_B979DC: NewIfNullPr clsdescconc
  loc_B979DF: Call clsdescconc.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B979E4: FFreeStr var_90 = "": var_11C = "": var_124 = ""
  loc_B979EF: FFreeAd var_98 = "": var_118 = "": var_120 = ""
  loc_B979FA: Call cmdCancelar_Click()
  loc_B979FF: Branch loc_B97B06
  loc_B97A02: ILdRf var_94
  loc_B97A05: LitStr "btnCancelar"
  loc_B97A08: EqStr
  loc_B97A0A: BranchF loc_B97A15
  loc_B97A0D: Call cmdCancelar_Click()
  loc_B97A12: Branch loc_B97B06
  loc_B97A15: ILdRf var_94
  loc_B97A18: LitStr "btnPrimero"
  loc_B97A1B: EqStr
  loc_B97A1D: BranchF loc_B97A31
  loc_B97A20: FLdPr Me
  loc_B97A23: MemLdRfVar from_stack_1.global_52
  loc_B97A26: NewIfNullPr clsdescconc
  loc_B97A29: Call clsdescconc.MoveFirst()
  loc_B97A2E: Branch loc_B97B06
  loc_B97A31: ILdRf var_94
  loc_B97A34: LitStr "btnAnterior"
  loc_B97A37: EqStr
  loc_B97A39: BranchF loc_B97A4D
  loc_B97A3C: FLdPr Me
  loc_B97A3F: MemLdRfVar from_stack_1.global_52
  loc_B97A42: NewIfNullPr clsdescconc
  loc_B97A45: Call clsdescconc.MovePrevious()
  loc_B97A4A: Branch loc_B97B06
  loc_B97A4D: ILdRf var_94
  loc_B97A50: LitStr "btnSiguiente"
  loc_B97A53: EqStr
  loc_B97A55: BranchF loc_B97A69
  loc_B97A58: FLdPr Me
  loc_B97A5B: MemLdRfVar from_stack_1.global_52
  loc_B97A5E: NewIfNullPr clsdescconc
  loc_B97A61: Call clsdescconc.MoveNext()
  loc_B97A66: Branch loc_B97B06
  loc_B97A69: ILdRf var_94
  loc_B97A6C: LitStr "btnUltimo"
  loc_B97A6F: EqStr
  loc_B97A71: BranchF loc_B97A85
  loc_B97A74: FLdPr Me
  loc_B97A77: MemLdRfVar from_stack_1.global_52
  loc_B97A7A: NewIfNullPr clsdescconc
  loc_B97A7D: Call clsdescconc.MoveLast()
  loc_B97A82: Branch loc_B97B06
  loc_B97A85: ILdRf var_94
  loc_B97A88: LitStr "btnFiltrar"
  loc_B97A8B: EqStr
  loc_B97A8D: BranchF loc_B97A93
  loc_B97A90: Branch loc_B97B06
  loc_B97A93: ILdRf var_94
  loc_B97A96: LitStr "btnBuscar"
  loc_B97A99: EqStr
  loc_B97A9B: BranchF loc_B97AA1
  loc_B97A9E: Branch loc_B97B06
  loc_B97AA1: ILdRf var_94
  loc_B97AA4: LitStr "btnImprimir"
  loc_B97AA7: EqStr
  loc_B97AA9: BranchF loc_B97AAF
  loc_B97AAC: Branch loc_B97B06
  loc_B97AAF: ILdRf var_94
  loc_B97AB2: LitStr "btnAyuda"
  loc_B97AB5: EqStr
  loc_B97AB7: BranchF loc_B97AE6
  loc_B97ABA: LitVar_Missing var_FC
  loc_B97ABD: LitVar_Missing var_EC
  loc_B97AC0: LitVar_Missing var_DC
  loc_B97AC3: LitI4 0
  loc_B97AC8: LitVarStr var_BC, "Opcion no disponible en esta version."
  loc_B97ACD: FStVarCopyObj var_AC
  loc_B97AD0: FLdRfVar var_AC
  loc_B97AD3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B97AD8: FFreeVar var_AC = "": var_DC = "": var_EC = ""
  loc_B97AE3: Branch loc_B97B06
  loc_B97AE6: ILdRf var_94
  loc_B97AE9: LitStr "btnSalir"
  loc_B97AEC: EqStr
  loc_B97AEE: BranchF loc_B97B06
  loc_B97AF1: ILdRf Me
  loc_B97AF4: FStAdNoPop
  loc_B97AF8: ImpAdLdRf MemVar_D9C5D8
  loc_B97AFB: NewIfNullPr Global
  loc_B97AFE: Global.Unload from_stack_1
  loc_B97B03: FFree1Ad var_98
  loc_B97B06: ExitProcHresult
End Sub

Private Sub CodiConcTxt_GotFocus() '9C7A60
  'Data Table: 471410
  loc_9C7A4C: FLdPr Me
  loc_9C7A4F: VCallAd Control_ID_CodiConcTxt
  loc_9C7A52: CVarAd
  loc_9C7A56: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7A5B: FFree1Var var_94 = ""
  loc_9C7A5E: ExitProcHresult
End Sub

Private Sub CodiConcTxt_KeyPress(KeyAscii As Integer) '9D80C0
  'Data Table: 471410
  loc_9D80A8: LitStr "0123456789"
  loc_9D80AB: FStStrCopy var_88
  loc_9D80AE: FLdRfVar var_88
  loc_9D80B1: ILdRf KeyAscii
  loc_9D80B4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D80B9: IStI2 KeyAscii
  loc_9D80BC: FFree1Str var_88
  loc_9D80BF: ExitProcHresult
End Sub

Private Sub CodiConcTxt_Validate(Cancel As Boolean) 'B01B74
  'Data Table: 471410
  loc_B0198C: FLdRfVar var_8A
  loc_B0198F: FLdPr Me
  loc_B01992: VCallAd Control_ID_cmdCancelar
  loc_B01995: FStAdFunc var_88
  loc_B01998: FLdPr var_88
  loc_B0199B:  = Me.Value
  loc_B019A0: FLdI2 var_8A
  loc_B019A3: NotI4
  loc_B019A4: FLdRfVar var_92
  loc_B019A7: FLdPr Me
  loc_B019AA: VCallAd Control_ID_CodiConcTxt
  loc_B019AD: FStAdFunc var_90
  loc_B019B0: FLdPr var_90
  loc_B019B3:  = Me.Enabled
  loc_B019B8: FLdI2 var_92
  loc_B019BB: LitI2_Byte &HFF
  loc_B019BD: EqI2
  loc_B019BE: AndI4
  loc_B019BF: FFreeAd var_88 = ""
  loc_B019C6: BranchF loc_B01B73
  loc_B019C9: FLdRfVar var_98
  loc_B019CC: FLdPr Me
  loc_B019CF: VCallAd Control_ID_PeriInfoTxt
  loc_B019D2: FStAdFunc var_88
  loc_B019D5: FLdPr var_88
  loc_B019D8:  = Me.Text
  loc_B019DD: FLdRfVar var_9C
  loc_B019E0: FLdPr Me
  loc_B019E3: VCallAd Control_ID_CodiConcTxt
  loc_B019E6: FStAdFunc var_90
  loc_B019E9: FLdPr var_90
  loc_B019EC:  = Me.Text
  loc_B019F1: LitI2_Byte 0
  loc_B019F3: LitI2_Byte 0
  loc_B019F5: LitI2_Byte 0
  loc_B019F7: LitI2_Byte 0
  loc_B019F9: LitI2_Byte 0
  loc_B019FB: LitI2_Byte 0
  loc_B019FD: LitI2_Byte 0
  loc_B019FF: LitI2_Byte 0
  loc_B01A01: LitI2_Byte 0
  loc_B01A03: ILdRf var_9C
  loc_B01A06: ILdRf var_98
  loc_B01A09: CI2Str
  loc_B01A0B: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_B01A10: FStStrNoPop var_A0
  loc_B01A13: FLdPr Me
  loc_B01A16: MemStStrCopy
  loc_B01A1A: FFreeStr var_98 = "": var_9C = ""
  loc_B01A23: FFreeAd var_88 = ""
  loc_B01A2A: FLdPr Me
  loc_B01A2D: MemLdStr global_60
  loc_B01A30: LitStr vbNullString
  loc_B01A33: NeStr
  loc_B01A35: BranchF loc_B01A72
  loc_B01A38: FLdPr Me
  loc_B01A3B: MemLdStr global_60
  loc_B01A3E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B01A43: LitStr vbNullString
  loc_B01A46: FLdPr Me
  loc_B01A49: VCallAd Control_ID_DetaConcLbl
  loc_B01A4C: FStAdFunc var_88
  loc_B01A4F: FLdPr var_88
  loc_B01A52: Me.Caption = from_stack_1
  loc_B01A57: FFree1Ad var_88
  loc_B01A5A: FLdPr Me
  loc_B01A5D: VCallAd Control_ID_CodiConcTxt
  loc_B01A60: CVarAd
  loc_B01A64: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B01A69: FFree1Var var_B0 = ""
  loc_B01A6C: LitI2_Byte &HFF
  loc_B01A6E: IStI2 Cancel
  loc_B01A71: ExitProcHresult
  loc_B01A72: FLdRfVar var_98
  loc_B01A75: FLdPr Me
  loc_B01A78: VCallAd Control_ID_PeriInfoTxt
  loc_B01A7B: FStAdFunc var_88
  loc_B01A7E: FLdPr var_88
  loc_B01A81:  = Me.Text
  loc_B01A86: FLdRfVar var_9C
  loc_B01A89: FLdPr Me
  loc_B01A8C: VCallAd Control_ID_CodiConcTxt
  loc_B01A8F: FStAdFunc var_90
  loc_B01A92: FLdPr var_90
  loc_B01A95:  = Me.Text
  loc_B01A9A: FLdRfVar var_A0
  loc_B01A9D: ILdRf var_9C
  loc_B01AA0: ILdRf var_98
  loc_B01AA3: CI2Str
  loc_B01AA5: FLdPr Me
  loc_B01AA8: MemLdRfVar from_stack_1.global_52
  loc_B01AAB: NewIfNullPr clsdescconc
  loc_B01AAE: from_stack_3v = clsdescconc.ValidaClave(from_stack_1v, from_stack_2v)
  loc_B01AB3: ILdRf var_A0
  loc_B01AB6: FLdPr Me
  loc_B01AB9: MemStStrCopy
  loc_B01ABD: FFreeStr var_98 = "": var_9C = ""
  loc_B01AC6: FFreeAd var_88 = ""
  loc_B01ACD: FLdPr Me
  loc_B01AD0: MemLdStr global_60
  loc_B01AD3: LitStr vbNullString
  loc_B01AD6: NeStr
  loc_B01AD8: BranchF loc_B01B18
  loc_B01ADB: FLdPr Me
  loc_B01ADE: MemLdStr global_60
  loc_B01AE1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B01AE6: LitStr vbNullString
  loc_B01AE9: FLdPr Me
  loc_B01AEC: VCallAd Control_ID_DetaConcLbl
  loc_B01AEF: FStAdFunc var_88
  loc_B01AF2: FLdPr var_88
  loc_B01AF5: Me.Caption = from_stack_1
  loc_B01AFA: FFree1Ad var_88
  loc_B01AFD: FLdPr Me
  loc_B01B00: VCallAd Control_ID_CodiConcTxt
  loc_B01B03: CVarAd
  loc_B01B07: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B01B0C: FFree1Var var_B0 = ""
  loc_B01B0F: LitI2_Byte &HFF
  loc_B01B11: IStI2 Cancel
  loc_B01B14: ExitProcHresult
  loc_B01B15: Branch loc_B01B73
  loc_B01B18: FLdRfVar var_98
  loc_B01B1B: FLdPr Me
  loc_B01B1E: VCallAd Control_ID_PeriInfoTxt
  loc_B01B21: FStAdFunc var_88
  loc_B01B24: FLdPr var_88
  loc_B01B27:  = Me.Text
  loc_B01B2C: FLdRfVar var_9C
  loc_B01B2F: FLdPr Me
  loc_B01B32: VCallAd Control_ID_CodiConcTxt
  loc_B01B35: FStAdFunc var_90
  loc_B01B38: FLdPr var_90
  loc_B01B3B:  = Me.Text
  loc_B01B40: ILdRf var_9C
  loc_B01B43: ILdRf var_98
  loc_B01B46: CI2Str
  loc_B01B48: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_B01B4D: FStStrNoPop var_A0
  loc_B01B50: FLdPr Me
  loc_B01B53: VCallAd Control_ID_DetaConcLbl
  loc_B01B56: FStAdFunc var_B4
  loc_B01B59: FLdPr var_B4
  loc_B01B5C: Me.Caption = from_stack_1
  loc_B01B61: FFreeStr var_98 = "": var_9C = ""
  loc_B01B6A: FFreeAd var_88 = "": var_90 = ""
  loc_B01B73: ExitProcHresult
End Sub

Private Sub CodiConcCmd_Click() 'AC8D4C
  'Data Table: 471410
  loc_AC8C38: FLdRfVar var_8C
  loc_AC8C3B: FLdPr Me
  loc_AC8C3E: VCallAd Control_ID_PeriInfoTxt
  loc_AC8C41: FStAdFunc var_88
  loc_AC8C44: FLdPr var_88
  loc_AC8C47:  = Me.Text
  loc_AC8C4C: FLdZeroAd var_8C
  loc_AC8C4F: CVarStr var_9C
  loc_AC8C52: ImpAdCallI2 IsNumeric()
  loc_AC8C57: FFree1Ad var_88
  loc_AC8C5A: FFree1Var var_9C = ""
  loc_AC8C5D: BranchF loc_AC8D4A
  loc_AC8C60: FLdRfVar var_8C
  loc_AC8C63: FLdPr Me
  loc_AC8C66: VCallAd Control_ID_PeriInfoTxt
  loc_AC8C69: FStAdFunc var_88
  loc_AC8C6C: FLdPr var_88
  loc_AC8C6F:  = Me.Text
  loc_AC8C74: ILdRf var_8C
  loc_AC8C77: CI2Str
  loc_AC8C79: ImpAdLdRf MemVar_D947E0
  loc_AC8C7C: NewIfNullPr dlgBuscarConcepto
  loc_AC8C7F: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AC8C84: FFree1Str var_8C
  loc_AC8C87: FFree1Ad var_88
  loc_AC8C8A: LitVar_Missing var_BC
  loc_AC8C8D: PopAdLdVar
  loc_AC8C8E: LitVarI4
  loc_AC8C96: PopAdLdVar
  loc_AC8C97: ImpAdLdRf MemVar_D947E0
  loc_AC8C9A: NewIfNullPr dlgBuscarConcepto
  loc_AC8C9D: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AC8CA2: FLdRfVar var_C0
  loc_AC8CA5: FLdRfVar var_88
  loc_AC8CA8: ImpAdLdRf MemVar_D947E0
  loc_AC8CAB: NewIfNullPr dlgBuscarConcepto
  loc_AC8CAE: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AC8CB3: FLdPr var_88
  loc_AC8CB6: from_stack_1 = clsconcepto.RecordCount
  loc_AC8CBB: ILdRf var_C0
  loc_AC8CBE: LitI4 0
  loc_AC8CC3: NeI4
  loc_AC8CC4: FFree1Ad var_88
  loc_AC8CC7: BranchF loc_AC8D38
  loc_AC8CCA: FLdRfVar var_8C
  loc_AC8CCD: FLdRfVar var_88
  loc_AC8CD0: ImpAdLdRf MemVar_D947E0
  loc_AC8CD3: NewIfNullPr dlgBuscarConcepto
  loc_AC8CD6: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AC8CDB: FLdPr var_88
  loc_AC8CDE: from_stack_1 = clsconcepto.CodiConc
  loc_AC8CE3: ILdRf var_8C
  loc_AC8CE6: FLdPr Me
  loc_AC8CE9: VCallAd Control_ID_CodiConcTxt
  loc_AC8CEC: FStAdFunc var_C4
  loc_AC8CEF: FLdPr var_C4
  loc_AC8CF2: Me.Text = from_stack_1
  loc_AC8CF7: FFree1Str var_8C
  loc_AC8CFA: FFreeAd var_88 = ""
  loc_AC8D01: FLdRfVar var_8C
  loc_AC8D04: FLdRfVar var_88
  loc_AC8D07: ImpAdLdRf MemVar_D947E0
  loc_AC8D0A: NewIfNullPr dlgBuscarConcepto
  loc_AC8D0D: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AC8D12: FLdPr var_88
  loc_AC8D15: from_stack_1 = clsconcepto.DetaConc
  loc_AC8D1A: ILdRf var_8C
  loc_AC8D1D: FLdPr Me
  loc_AC8D20: VCallAd Control_ID_DetaConcLbl
  loc_AC8D23: FStAdFunc var_C4
  loc_AC8D26: FLdPr var_C4
  loc_AC8D29: Me.Caption = from_stack_1
  loc_AC8D2E: FFree1Str var_8C
  loc_AC8D31: FFreeAd var_88 = ""
  loc_AC8D38: FLdPr Me
  loc_AC8D3B: VCallAd Control_ID_CodiConcTxt
  loc_AC8D3E: CVarAd
  loc_AC8D42: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC8D47: FFree1Var var_9C = ""
  loc_AC8D4A: ExitProcHresult
End Sub

Private Sub PeriInfoTxt_GotFocus() '9C5A98
  'Data Table: 471410
  loc_9C5A84: FLdPr Me
  loc_9C5A87: VCallAd Control_ID_PeriInfoTxt
  loc_9C5A8A: CVarAd
  loc_9C5A8E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5A93: FFree1Var var_94 = ""
  loc_9C5A96: ExitProcHresult
End Sub

Private Sub PeriInfoTxt_Validate(Cancel As Boolean) 'AB791C
  'Data Table: 471410
  loc_AB7834: FLdRfVar var_8A
  loc_AB7837: FLdPr Me
  loc_AB783A: VCallAd Control_ID_PeriInfoTxt
  loc_AB783D: FStAdFunc var_88
  loc_AB7840: FLdPr var_88
  loc_AB7843:  = Me.Enabled
  loc_AB7848: FLdI2 var_8A
  loc_AB784B: LitI2_Byte &HFF
  loc_AB784D: EqI2
  loc_AB784E: FFree1Ad var_88
  loc_AB7851: BranchF loc_AB791A
  loc_AB7854: FLdRfVar var_90
  loc_AB7857: FLdPr Me
  loc_AB785A: VCallAd Control_ID_PeriInfoTxt
  loc_AB785D: FStAdFunc var_88
  loc_AB7860: FLdPr var_88
  loc_AB7863:  = Me.Text
  loc_AB7868: FLdZeroAd var_90
  loc_AB786B: CVarStr var_A0
  loc_AB786E: ImpAdCallI2 IsNumeric()
  loc_AB7873: NotI4
  loc_AB7874: FFree1Ad var_88
  loc_AB7877: FFree1Var var_A0 = ""
  loc_AB787A: BranchF loc_AB78B5
  loc_AB787D: LitI2_Byte 0
  loc_AB787F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB7884: CVarDate var_A0
  loc_AB7888: FLdRfVar var_C0
  loc_AB788B: ImpAdCallFPR4  = Year()
  loc_AB7890: FLdRfVar var_C0
  loc_AB7893: CStrVarVal var_90
  loc_AB7897: FLdPr Me
  loc_AB789A: VCallAd Control_ID_PeriInfoTxt
  loc_AB789D: FStAdFunc var_88
  loc_AB78A0: FLdPr var_88
  loc_AB78A3: Me.Text = from_stack_1
  loc_AB78A8: FFree1Str var_90
  loc_AB78AB: FFree1Ad var_88
  loc_AB78AE: FFreeVar var_A0 = ""
  loc_AB78B5: FLdRfVar var_90
  loc_AB78B8: FLdPr Me
  loc_AB78BB: VCallAd Control_ID_PeriInfoTxt
  loc_AB78BE: FStAdFunc var_88
  loc_AB78C1: FLdPr var_88
  loc_AB78C4:  = Me.Text
  loc_AB78C9: LitI2_Byte 0
  loc_AB78CB: ILdRf var_90
  loc_AB78CE: LitStr "El Periodo"
  loc_AB78D1: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_AB78D6: FStStrNoPop var_C4
  loc_AB78D9: FLdPr Me
  loc_AB78DC: MemStStrCopy
  loc_AB78E0: FFreeStr var_90 = ""
  loc_AB78E7: FFree1Ad var_88
  loc_AB78EA: FLdPr Me
  loc_AB78ED: MemLdStr global_60
  loc_AB78F0: LitStr vbNullString
  loc_AB78F3: NeStr
  loc_AB78F5: BranchF loc_AB791A
  loc_AB78F8: FLdPr Me
  loc_AB78FB: MemLdStr global_60
  loc_AB78FE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB7903: FLdPr Me
  loc_AB7906: VCallAd Control_ID_PeriInfoTxt
  loc_AB7909: CVarAd
  loc_AB790D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB7912: FFree1Var var_A0 = ""
  loc_AB7915: LitI2_Byte &HFF
  loc_AB7917: IStI2 Cancel
  loc_AB791A: ExitProcHresult
End Sub

Private Sub Form_Load() 'B05A8C
  'Data Table: 471410
  loc_B05894: LitI2_Byte 0
  loc_B05896: CR8I2
  loc_B05897: PopFPR4
  loc_B05898: FLdPr Me
  loc_B0589B: Me.Left = from_stack_1s
  loc_B058A0: LitI2_Byte 0
  loc_B058A2: CR8I2
  loc_B058A3: PopFPR4
  loc_B058A4: FLdPr Me
  loc_B058A7: Me.Top = from_stack_1s
  loc_B058AC: LitStr "SELECT descconc.PeriInfo, descconc.CodiConc, concepto.DetaConc, DereDeco, DecaDeco FROM descconc "
  loc_B058AF: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = descconc.PeriInfo "
  loc_B058B2: ConcatStr
  loc_B058B3: FStStrNoPop var_88
  loc_B058B6: LitStr " AND concepto.CodiConc = descconc.CodiConc "
  loc_B058B9: ConcatStr
  loc_B058BA: FStStrNoPop var_8C
  loc_B058BD: LitStr " ORDER BY PeriInfo ,CodiConc"
  loc_B058C0: ConcatStr
  loc_B058C1: FStStrNoPop var_90
  loc_B058C4: FLdPr Me
  loc_B058C7: MemLdRfVar from_stack_1.global_52
  loc_B058CA: NewIfNullPr clsdescconc
  loc_B058CD: Call clsdescconc.RedefineRS(from_stack_1v)
  loc_B058D2: FFreeStr var_88 = "": var_8C = ""
  loc_B058DB: LitStr "PeriInfo"
  loc_B058DE: FLdPr Me
  loc_B058E1: VCallAd Control_ID_PeriInfoTxt
  loc_B058E4: FStAdFunc var_94
  loc_B058E7: FLdPr var_94
  loc_B058EA: Me.DataField = from_stack_1
  loc_B058EF: FFree1Ad var_94
  loc_B058F2: LitStr "CodiConc"
  loc_B058F5: FLdPr Me
  loc_B058F8: VCallAd Control_ID_CodiConcTxt
  loc_B058FB: FStAdFunc var_94
  loc_B058FE: FLdPr var_94
  loc_B05901: Me.DataField = from_stack_1
  loc_B05906: FFree1Ad var_94
  loc_B05909: LitStr "DetaConc"
  loc_B0590C: FLdPr Me
  loc_B0590F: VCallAd Control_ID_DetaConcLbl
  loc_B05912: FStAdFunc var_94
  loc_B05915: FLdPr var_94
  loc_B05918: Me.DataField = from_stack_1
  loc_B0591D: FFree1Ad var_94
  loc_B05920: LitStr "DereDeco"
  loc_B05923: FLdPr Me
  loc_B05926: VCallAd Control_ID_DereDecoTxt
  loc_B05929: FStAdFunc var_94
  loc_B0592C: FLdPr var_94
  loc_B0592F: Me.DataField = from_stack_1
  loc_B05934: FFree1Ad var_94
  loc_B05937: LitStr "DecaDeco"
  loc_B0593A: FLdPr Me
  loc_B0593D: VCallAd Control_ID_DecaDecoTxt
  loc_B05940: FStAdFunc var_94
  loc_B05943: FLdPr var_94
  loc_B05946: Me.DataField = from_stack_1
  loc_B0594B: FFree1Ad var_94
  loc_B0594E: LitI4 0
  loc_B05953: LitI4 1
  loc_B05958: FLdRfVar var_98
  loc_B0595B: Redim
  loc_B05965: FLdPr Me
  loc_B05968: MemLdRfVar from_stack_1.global_52
  loc_B0596B: NewIfNullAd
  loc_B0596E: FStAd var_94 
  loc_B05972: FLdRfVar var_94
  loc_B05975: CVarRef
  loc_B0597A: ParmAry1St
  loc_B05980: FLdPr Me
  loc_B05983: VCallAd Control_ID_dgdABMS
  loc_B05986: CVarAd
  loc_B0598A: ParmAry1St
  loc_B05990: FLdRfVar var_98
  loc_B05993: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B05998: ILdRf var_94
  loc_B0599B: CastAd
  loc_B0599E: FLdPr Me
  loc_B059A1: MemStAdFunc
  loc_B059A5: FLdRfVar var_98
  loc_B059A8: Erase
  loc_B059A9: FFree1Ad var_94
  loc_B059AC: Call EnlazaTodo()
  loc_B059B1: ILdRf Me
  loc_B059B4: CastAd
  loc_B059B7: FStAdFunc var_94
  loc_B059BA: FLdRfVar var_94
  loc_B059BD: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B059C2: FFree1Ad var_94
  loc_B059C5: LitI2_Byte 0
  loc_B059C7: ILdRf Me
  loc_B059CA: CastAd
  loc_B059CD: FStAdFunc var_94
  loc_B059D0: FLdRfVar var_94
  loc_B059D3: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_B059D8: FFree1Ad var_94
  loc_B059DB: LitVarI2 var_A8, 0
  loc_B059E0: PopAdLdVar
  loc_B059E1: LitStr "Periodo"
  loc_B059E4: FLdPr Me
  loc_B059E7: VCallAd Control_ID_FiltroCbo
  loc_B059EA: FStAdFunc var_94
  loc_B059ED: FLdPr var_94
  loc_B059F0: Me.AddItem from_stack_1, from_stack_2
  loc_B059F5: FFree1Ad var_94
  loc_B059F8: LitVarI2 var_A8, 1
  loc_B059FD: PopAdLdVar
  loc_B059FE: LitStr "Código"
  loc_B05A01: FLdPr Me
  loc_B05A04: VCallAd Control_ID_FiltroCbo
  loc_B05A07: FStAdFunc var_94
  loc_B05A0A: FLdPr var_94
  loc_B05A0D: Me.AddItem from_stack_1, from_stack_2
  loc_B05A12: FFree1Ad var_94
  loc_B05A15: LitVarI2 var_A8, 2
  loc_B05A1A: PopAdLdVar
  loc_B05A1B: LitStr "Detalle del Concepto"
  loc_B05A1E: FLdPr Me
  loc_B05A21: VCallAd Control_ID_FiltroCbo
  loc_B05A24: FStAdFunc var_94
  loc_B05A27: FLdPr var_94
  loc_B05A2A: Me.AddItem from_stack_1, from_stack_2
  loc_B05A2F: FFree1Ad var_94
  loc_B05A32: LitI2_Byte 0
  loc_B05A34: FLdPr Me
  loc_B05A37: VCallAd Control_ID_FiltroCbo
  loc_B05A3A: FStAdFunc var_94
  loc_B05A3D: FLdPr var_94
  loc_B05A40: Me.ListIndex = from_stack_1
  loc_B05A45: FFree1Ad var_94
  loc_B05A48: LitI4 0
  loc_B05A4D: LitI4 1
  loc_B05A52: FLdRfVar var_98
  loc_B05A55: Redim
  loc_B05A5F: FLdPr Me
  loc_B05A62: VCallAd Control_ID_FiltroCbo
  loc_B05A65: CVarAd
  loc_B05A69: ParmAry1St
  loc_B05A6F: FLdPr Me
  loc_B05A72: VCallAd Control_ID_FiltroMsk
  loc_B05A75: CVarAd
  loc_B05A79: ParmAry1St
  loc_B05A7F: FLdRfVar var_98
  loc_B05A82: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B05A87: FLdRfVar var_98
  loc_B05A8A: Erase
  loc_B05A8B: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A61D60
  'Data Table: 471410
  loc_A61D04: FLdRfVar var_C2
  loc_A61D07: FLdRfVar var_C0
  loc_A61D0A: LitVarI2 var_B8, 1
  loc_A61D0F: FLdPr Me
  loc_A61D12: VCallAd Control_ID_tlbABMS
  loc_A61D15: FStAdFunc var_88
  loc_A61D18: FLdPr var_88
  loc_A61D1B: LateIdLdVar var_98 DispID_3 0
  loc_A61D22: CastAdVar Me
  loc_A61D26: FStAdFunc var_BC
  loc_A61D29: FLdPr var_BC
  loc_A61D2C:  = Me.Buttons.ControlDefault
  loc_A61D31: FLdPr var_C0
  loc_A61D34:  = Me.Enabled
  loc_A61D39: FLdI2 var_C2
  loc_A61D3C: FFreeAd var_88 = "": var_BC = ""
  loc_A61D45: FFreeVar var_98 = ""
  loc_A61D4C: BranchF loc_A61D5D
  loc_A61D4F: FLdPr Me
  loc_A61D52: MemLdRfVar from_stack_1.global_52
  loc_A61D55: NewIfNullPr clsdescconc
  loc_A61D58: Call clsdescconc.Requery()
  loc_A61D5D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D82D4
  'Data Table: 471410
  loc_9D82BC: ILdI2 KeyCode
  loc_9D82BF: ILdRf Me
  loc_9D82C2: CastAd
  loc_9D82C5: FStAdFunc var_88
  loc_9D82C8: FLdRfVar var_88
  loc_9D82CB: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D82D0: FFree1Ad var_88
  loc_9D82D3: ExitProcHresult
End Sub

Private Sub DereDecoTxt_GotFocus() '9C5AE0
  'Data Table: 471410
  loc_9C5ACC: FLdPr Me
  loc_9C5ACF: VCallAd Control_ID_DereDecoTxt
  loc_9C5AD2: CVarAd
  loc_9C5AD6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5ADB: FFree1Var var_94 = ""
  loc_9C5ADE: ExitProcHresult
End Sub

Private Sub DereDecoTxt_KeyPress(KeyAscii As Integer) 'A061F8
  'Data Table: 471410
  loc_A061C4: LitStr "0123456789.,"
  loc_A061C7: FStStrCopy var_88
  loc_A061CA: FLdRfVar var_88
  loc_A061CD: ILdRf KeyAscii
  loc_A061D0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A061D5: IStI2 KeyAscii
  loc_A061D8: FFree1Str var_88
  loc_A061DB: ILdI2 KeyAscii
  loc_A061DE: LitStr "."
  loc_A061E1: ImpAdCallI2 Asc()
  loc_A061E6: EqI2
  loc_A061E7: BranchF loc_A061F5
  loc_A061EA: LitStr ","
  loc_A061ED: ImpAdCallI2 Asc()
  loc_A061F2: IStI2 KeyAscii
  loc_A061F5: ExitProcHresult
  loc_A061F6: UMiI4
End Sub

Private Sub DereDecoTxt_LostFocus() 'A75548
  'Data Table: 471410
  loc_A754E4: FLdRfVar var_8C
  loc_A754E7: FLdPr Me
  loc_A754EA: VCallAd Control_ID_DereDecoTxt
  loc_A754ED: FStAdFunc var_88
  loc_A754F0: FLdPr var_88
  loc_A754F3:  = Me.Text
  loc_A754F8: LitI4 1
  loc_A754FD: LitI4 1
  loc_A75502: LitVarStr var_AC, "##0.00"
  loc_A75507: FStVarCopyObj var_BC
  loc_A7550A: FLdRfVar var_BC
  loc_A7550D: FLdZeroAd var_8C
  loc_A75510: CVarStr var_9C
  loc_A75513: FLdRfVar var_CC
  loc_A75516: ImpAdCallFPR4  = Format(, )
  loc_A7551B: FLdRfVar var_CC
  loc_A7551E: CStrVarVal var_D0
  loc_A75522: FLdPr Me
  loc_A75525: VCallAd Control_ID_DereDecoTxt
  loc_A75528: FStAdFunc var_D4
  loc_A7552B: FLdPr var_D4
  loc_A7552E: Me.Text = from_stack_1
  loc_A75533: FFree1Str var_D0
  loc_A75536: FFreeAd var_88 = ""
  loc_A7553D: FFreeVar var_9C = "": var_BC = ""
  loc_A75546: ExitProcHresult
End Sub

Private Sub DereDecoTxt_Validate(Cancel As Boolean) 'AD0B04
  'Data Table: 471410
  loc_AD09DC: FLdRfVar var_8A
  loc_AD09DF: FLdPr Me
  loc_AD09E2: VCallAd Control_ID_cmdCancelar
  loc_AD09E5: FStAdFunc var_88
  loc_AD09E8: FLdPr var_88
  loc_AD09EB:  = Me.Value
  loc_AD09F0: FLdI2 var_8A
  loc_AD09F3: NotI4
  loc_AD09F4: FLdRfVar var_92
  loc_AD09F7: FLdPr Me
  loc_AD09FA: VCallAd Control_ID_DereDecoTxt
  loc_AD09FD: FStAdFunc var_90
  loc_AD0A00: FLdPr var_90
  loc_AD0A03:  = Me.Enabled
  loc_AD0A08: FLdI2 var_92
  loc_AD0A0B: AndI4
  loc_AD0A0C: FFreeAd var_88 = ""
  loc_AD0A13: BranchF loc_AD0ABD
  loc_AD0A16: FLdRfVar var_98
  loc_AD0A19: FLdPr Me
  loc_AD0A1C: VCallAd Control_ID_DereDecoTxt
  loc_AD0A1F: FStAdFunc var_88
  loc_AD0A22: FLdPr var_88
  loc_AD0A25:  = Me.Text
  loc_AD0A2A: FLdZeroAd var_98
  loc_AD0A2D: CVarStr var_A8
  loc_AD0A30: ImpAdCallI2 IsNumeric()
  loc_AD0A35: NotI4
  loc_AD0A36: FFree1Ad var_88
  loc_AD0A39: FFree1Var var_A8 = ""
  loc_AD0A3C: BranchF loc_AD0A56
  loc_AD0A3F: LitStr "0"
  loc_AD0A42: FLdPr Me
  loc_AD0A45: VCallAd Control_ID_DereDecoTxt
  loc_AD0A48: FStAdFunc var_88
  loc_AD0A4B: FLdPr var_88
  loc_AD0A4E: Me.Text = from_stack_1
  loc_AD0A53: FFree1Ad var_88
  loc_AD0A56: FLdRfVar var_98
  loc_AD0A59: FLdPr Me
  loc_AD0A5C: VCallAd Control_ID_DereDecoTxt
  loc_AD0A5F: FStAdFunc var_88
  loc_AD0A62: FLdPr var_88
  loc_AD0A65:  = Me.Text
  loc_AD0A6A: LitI2_Byte &HFF
  loc_AD0A6C: LitI2_Byte 0
  loc_AD0A6E: ILdRf var_98
  loc_AD0A71: LitStr "ingrese descuento"
  loc_AD0A74: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AD0A79: FStStrNoPop var_AC
  loc_AD0A7C: FLdPr Me
  loc_AD0A7F: MemStStrCopy
  loc_AD0A83: FFreeStr var_98 = ""
  loc_AD0A8A: FFree1Ad var_88
  loc_AD0A8D: FLdPr Me
  loc_AD0A90: MemLdStr global_60
  loc_AD0A93: LitStr vbNullString
  loc_AD0A96: NeStr
  loc_AD0A98: BranchF loc_AD0ABD
  loc_AD0A9B: FLdPr Me
  loc_AD0A9E: MemLdStr global_60
  loc_AD0AA1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD0AA6: FLdPr Me
  loc_AD0AA9: VCallAd Control_ID_DereDecoTxt
  loc_AD0AAC: CVarAd
  loc_AD0AB0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD0AB5: FFree1Var var_A8 = ""
  loc_AD0AB8: LitI2_Byte &HFF
  loc_AD0ABA: IStI2 Cancel
  loc_AD0ABD: FLdRfVar var_98
  loc_AD0AC0: FLdPr Me
  loc_AD0AC3: VCallAd Control_ID_DereDecoTxt
  loc_AD0AC6: FStAdFunc var_88
  loc_AD0AC9: FLdPr var_88
  loc_AD0ACC:  = Me.Text
  loc_AD0AD1: ILdRf var_98
  loc_AD0AD4: CR8Str
  loc_AD0AD6: LitI2_Byte &H64
  loc_AD0AD8: CR8I2
  loc_AD0AD9: GtR4
  loc_AD0ADA: FFree1Str var_98
  loc_AD0ADD: FFree1Ad var_88
  loc_AD0AE0: BranchF loc_AD0B03
  loc_AD0AE3: LitStr "El porcentaje no puede ser mayor a 100"
  loc_AD0AE6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD0AEB: FLdPr Me
  loc_AD0AEE: VCallAd Control_ID_DereDecoTxt
  loc_AD0AF1: CVarAd
  loc_AD0AF5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD0AFA: FFree1Var var_A8 = ""
  loc_AD0AFD: LitI2_Byte &HFF
  loc_AD0AFF: IStI2 Cancel
  loc_AD0B02: ExitProcHresult
  loc_AD0B03: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AA31DC
  'Data Table: 471410
  loc_AA312C: LitI2_Byte 0
  loc_AA312E: FLdPr Me
  loc_AA3131: MemStI2 global_56
  loc_AA3134: LitI2_Byte 0
  loc_AA3136: ILdRf Me
  loc_AA3139: CastAd
  loc_AA313C: FStAdFunc var_88
  loc_AA313F: FLdRfVar var_88
  loc_AA3142: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AA3147: FFree1Ad var_88
  loc_AA314A: LitI4 0
  loc_AA314F: LitI4 0
  loc_AA3154: FLdRfVar var_8C
  loc_AA3157: Redim
  loc_AA3161: FLdPr Me
  loc_AA3164: VCallAd Control_ID_dgdABMS
  loc_AA3167: CVarAd
  loc_AA316B: ParmAry1St
  loc_AA3171: FLdRfVar var_8C
  loc_AA3174: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA3179: FLdRfVar var_8C
  loc_AA317C: Erase
  loc_AA317D: Call EnlazaTodo()
  loc_AA3182: ILdRf Me
  loc_AA3185: CastAd
  loc_AA3188: FStAdFunc var_88
  loc_AA318B: FLdRfVar var_88
  loc_AA318E: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AA3193: FFree1Ad var_88
  loc_AA3196: LitI4 0
  loc_AA319B: LitI4 1
  loc_AA31A0: FLdRfVar var_8C
  loc_AA31A3: Redim
  loc_AA31AD: FLdPr Me
  loc_AA31B0: VCallAd Control_ID_FiltroCbo
  loc_AA31B3: CVarAd
  loc_AA31B7: ParmAry1St
  loc_AA31BD: FLdPr Me
  loc_AA31C0: VCallAd Control_ID_FiltroMsk
  loc_AA31C3: CVarAd
  loc_AA31C7: ParmAry1St
  loc_AA31CD: FLdRfVar var_8C
  loc_AA31D0: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA31D5: FLdRfVar var_8C
  loc_AA31D8: Erase
  loc_AA31D9: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A9BD28
  'Data Table: 471410
  loc_A9BC88: LitI4 0
  loc_A9BC8D: LitI4 5
  loc_A9BC92: FLdRfVar var_88
  loc_A9BC95: Redim
  loc_A9BC9F: FLdPr Me
  loc_A9BCA2: MemLdRfVar from_stack_1.global_52
  loc_A9BCA5: NewIfNullAd
  loc_A9BCA8: FStAd var_8C 
  loc_A9BCAC: FLdRfVar var_8C
  loc_A9BCAF: CVarRef
  loc_A9BCB4: ParmAry1St
  loc_A9BCBA: FLdPr Me
  loc_A9BCBD: VCallAd Control_ID_PeriInfoTxt
  loc_A9BCC0: CVarAd
  loc_A9BCC4: ParmAry1St
  loc_A9BCCA: FLdPr Me
  loc_A9BCCD: VCallAd Control_ID_CodiConcTxt
  loc_A9BCD0: CVarAd
  loc_A9BCD4: ParmAry1St
  loc_A9BCDA: FLdPr Me
  loc_A9BCDD: VCallAd Control_ID_DetaConcLbl
  loc_A9BCE0: CVarAd
  loc_A9BCE4: ParmAry1St
  loc_A9BCEA: FLdPr Me
  loc_A9BCED: VCallAd Control_ID_DereDecoTxt
  loc_A9BCF0: CVarAd
  loc_A9BCF4: ParmAry1St
  loc_A9BCFA: FLdPr Me
  loc_A9BCFD: VCallAd Control_ID_DecaDecoTxt
  loc_A9BD00: CVarAd
  loc_A9BD04: ParmAry1St
  loc_A9BD0A: FLdRfVar var_88
  loc_A9BD0D: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A9BD12: ILdRf var_8C
  loc_A9BD15: CastAd
  loc_A9BD18: FLdPr Me
  loc_A9BD1B: MemStAdFunc
  loc_A9BD1F: FLdRfVar var_88
  loc_A9BD22: Erase
  loc_A9BD23: FFree1Ad var_8C
  loc_A9BD26: ExitProcHresult
End Sub
