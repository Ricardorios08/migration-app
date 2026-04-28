VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmCreditosManualesMasivosdePagosDuplicados
  Caption = "Creditos Manuales en forma Masiva, de pagos duplicados 23-12-2023"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 10704
  ClientHeight = 8916
  Begin VB.TextBox ExpeCtctTxt
    ForeColor = &HFF0000&
    Left = 3480
    Top = 1920
    Width = 2292
    Height = 345
    TabIndex = 6
    MaxLength = 15
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
  Begin VB.CommandButton ImprimirCmd
    Caption = "Imprimir"
    Left = 3720
    Top = 3600
    Width = 1776
    Height = 588
    Enabled = 0   'False
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "frmCreditosManualesMasivosdePagosDuplicados.frx":0000
    Style = 1
  End
  Begin VB.CommandButton ProcesarCmd
    Caption = "Procesar"
    Left = 6600
    Top = 3600
    Width = 1812
    Height = 615
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
  Begin VB.CommandButton BuscarDatosCmd
    Caption = "Buscar Datos"
    Left = 840
    Top = 3600
    Width = 1812
    Height = 615
    TabIndex = 8
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
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 3480
    Top = 840
    Width = 2295
    Height = 396
    TabIndex = 2
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
  Begin VB.CommandButton cmdSalir
    Left = 8280
    Top = 360
    Width = 975
    Height = 855
    TabIndex = 1
    Picture = "frmCreditosManualesMasivosdePagosDuplicados.frx":0102
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox PeriBoleMsk
    Left = 3516
    Top = 1440
    Width = 732
    Height = 360
    TabIndex = 4
    OleObjectBlob = "frmCreditosManualesMasivosdePagosDuplicados.frx":0354
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 480
    Top = 2760
    Width = 8772
    Height = 492
    Visible = 0   'False
    TabIndex = 7
    OleObjectBlob = "frmCreditosManualesMasivosdePagosDuplicados.frx":03E4
  End
  Begin VB.Label Label1
    Caption = "Expediente:"
    Left = 2160
    Top = 1920
    Width = 1248
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
  Begin VB.Label Label2
    Caption = "Periodo:"
    Left = 2520
    Top = 1440
    Width = 876
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
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 2520
    Top = 840
    Width = 804
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

Attribute VB_Name = "frmCreditosManualesMasivosdePagosDuplicados"


Private Sub OficinaCbo_Click() 'A65B50
  'Data Table: 433484
  loc_A65AE4: FLdRfVar var_8A
  loc_A65AE7: FLdPr Me
  loc_A65AEA: VCallAd Control_ID_OficinaCbo
  loc_A65AED: FStAdFunc var_88
  loc_A65AF0: FLdPr var_88
  loc_A65AF3:  = Me.ListIndex
  loc_A65AF8: FLdI2 var_8A
  loc_A65AFB: FStI2 var_8C
  loc_A65AFE: FFree1Ad var_88
  loc_A65B01: FLdI2 var_8C
  loc_A65B04: LitI2_Byte 0
  loc_A65B06: EqI2
  loc_A65B07: BranchF loc_A65B15
  loc_A65B0A: LitI2_Byte 1
  loc_A65B0C: CUI1I2
  loc_A65B0E: ImpAdStUI1 MemVar_D93038
  loc_A65B12: Branch loc_A65B4E
  loc_A65B15: FLdI2 var_8C
  loc_A65B18: LitI2_Byte 1
  loc_A65B1A: EqI2
  loc_A65B1B: BranchF loc_A65B29
  loc_A65B1E: LitI2_Byte 2
  loc_A65B20: CUI1I2
  loc_A65B22: ImpAdStUI1 MemVar_D93038
  loc_A65B26: Branch loc_A65B4E
  loc_A65B29: FLdI2 var_8C
  loc_A65B2C: LitI2_Byte 2
  loc_A65B2E: EqI2
  loc_A65B2F: BranchF loc_A65B3D
  loc_A65B32: LitI2_Byte 3
  loc_A65B34: CUI1I2
  loc_A65B36: ImpAdStUI1 MemVar_D93038
  loc_A65B3A: Branch loc_A65B4E
  loc_A65B3D: FLdI2 var_8C
  loc_A65B40: LitI2_Byte 3
  loc_A65B42: EqI2
  loc_A65B43: BranchF loc_A65B4E
  loc_A65B46: LitI2_Byte 4
  loc_A65B48: CUI1I2
  loc_A65B4A: ImpAdStUI1 MemVar_D93038
  loc_A65B4E: ExitProcHresult
End Sub

Private Sub ImprimirCmd_Click() '9D22A8
  'Data Table: 433484
  loc_9D228C: LitVar_Missing var_A4
  loc_9D228F: PopAdLdVar
  loc_9D2290: LitVarI4
  loc_9D2298: PopAdLdVar
  loc_9D2299: ImpAdLdRf MemVar_D94C10
  loc_9D229C: NewIfNullPr rptListadodeCreditosManualesMasivosdePagosDuplicados
  loc_9D229F: rptListadodeCreditosManualesMasivosdePagosDuplicados.Show from_stack_1, from_stack_2
  loc_9D22A4: ExitProcHresult
  loc_9D22A5: AddI4
  loc_9D22A6: FFreeStr  = ""
End Sub

Private Sub cmdSalir_Click() '9D2420
  'Data Table: 433484
  loc_9D2408: ILdRf Me
  loc_9D240B: FStAdNoPop
  loc_9D240F: ImpAdLdRf MemVar_D9C5D8
  loc_9D2412: NewIfNullPr Global
  loc_9D2415: Global.Unload from_stack_1
  loc_9D241A: FFree1Ad var_88
  loc_9D241D: ExitProcHresult
  loc_9D241E: CStr2Ansi
End Sub

Private Sub PeriBoleMsk_UnknownEvent_0 '9C6A10
  'Data Table: 433484
  loc_9C69FC: FLdPr Me
  loc_9C69FF: VCallAd Control_ID_PeriBoleMsk
  loc_9C6A02: CVarAd
  loc_9C6A06: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6A0B: FFree1Var var_94 = ""
  loc_9C6A0E: ExitProcHresult
End Sub

Private Function PeriBoleMsk_UnknownEvent_8(arg_C) 'A7054C
  'Data Table: 433484
  loc_A704E8: FLdPr Me
  loc_A704EB: VCallAd Control_ID_PeriBoleMsk
  loc_A704EE: FStAdFunc var_88
  loc_A704F1: FLdPr var_88
  loc_A704F4: LateIdLdVar var_98 DispID_22 0
  loc_A704FB: PopAd
  loc_A704FD: LitI2_Byte 0
  loc_A704FF: FLdRfVar var_98
  loc_A70502: CStrVarTmp
  loc_A70503: FStStrNoPop var_9C
  loc_A70506: LitStr "Periodo"
  loc_A70509: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A7050E: CVarStr var_BC
  loc_A70511: FStVar var_AC
  loc_A70515: FFree1Str var_9C
  loc_A70518: FFree1Ad var_88
  loc_A7051B: FFree1Var var_98 = ""
  loc_A7051E: FLdPr Me
  loc_A70521: VCallAd Control_ID_PeriBoleMsk
  loc_A70524: FStAdFuncNoPop
  loc_A70527: CastAd
  loc_A7052A: FStAdFunc var_C0
  loc_A7052D: FLdRfVar var_C0
  loc_A70530: FLdRfVar var_AC
  loc_A70533: CStrVarVal var_9C
  loc_A70537: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A7053C: IStI2 arg_C
  loc_A7053F: FFree1Str var_9C
  loc_A70542: FFreeAd var_88 = ""
  loc_A70549: ExitProcHresult
  loc_A7054A: CStr2Ansi
End Function

Private Sub ProcesarCmd_Click() 'AF5044
  'Data Table: 433484
  loc_AF4EAC: LitI2_Byte &HB
  loc_AF4EAE: FLdPr Me
  loc_AF4EB1: Me.MousePointer = from_stack_1
  loc_AF4EB6: LitI4 0
  loc_AF4EBB: LitI4 6
  loc_AF4EC0: FLdRfVar var_88
  loc_AF4EC3: Redim
  loc_AF4ECD: FLdPr Me
  loc_AF4ED0: VCallAd Control_ID_BuscarDatosCmd
  loc_AF4ED3: CVarAd
  loc_AF4ED7: ParmAry1St
  loc_AF4EDD: FLdPr Me
  loc_AF4EE0: VCallAd Control_ID_ImprimirCmd
  loc_AF4EE3: CVarAd
  loc_AF4EE7: ParmAry1St
  loc_AF4EED: FLdPr Me
  loc_AF4EF0: VCallAd Control_ID_cmdSalir
  loc_AF4EF3: CVarAd
  loc_AF4EF7: ParmAry1St
  loc_AF4EFD: FLdPr Me
  loc_AF4F00: VCallAd Control_ID_OficinaCbo
  loc_AF4F03: CVarAd
  loc_AF4F07: ParmAry1St
  loc_AF4F0D: FLdPr Me
  loc_AF4F10: VCallAd Control_ID_PeriBoleMsk
  loc_AF4F13: CVarAd
  loc_AF4F17: ParmAry1St
  loc_AF4F1D: FLdPr Me
  loc_AF4F20: VCallAd Control_ID_ExpeCtctTxt
  loc_AF4F23: CVarAd
  loc_AF4F27: ParmAry1St
  loc_AF4F2D: FLdPr Me
  loc_AF4F30: VCallAd Control_ID_ProcesarCmd
  loc_AF4F33: CVarAd
  loc_AF4F37: ParmAry1St
  loc_AF4F3D: FLdRfVar var_88
  loc_AF4F40: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AF4F45: FLdRfVar var_88
  loc_AF4F48: Erase
  loc_AF4F49: FLdRfVar var_100
  loc_AF4F4C: FLdPr Me
  loc_AF4F4F: VCallAd Control_ID_ExpeCtctTxt
  loc_AF4F52: FStAdFunc var_FC
  loc_AF4F55: FLdPr var_FC
  loc_AF4F58:  = Me.Text
  loc_AF4F5D: ILdRf var_100
  loc_AF4F60: FLdPr Me
  loc_AF4F63: MemLdRfVar from_stack_1.global_52
  loc_AF4F66: NewIfNullPr clsejecutarprocesos
  loc_AF4F69: Call clsejecutarprocesos.GenerarCreditosManualesPagosDobles(from_stack_1v)
  loc_AF4F6E: FFree1Str var_100
  loc_AF4F71: FFree1Ad var_FC
  loc_AF4F74: LitI2_Byte 0
  loc_AF4F76: FLdPr Me
  loc_AF4F79: Me.MousePointer = from_stack_1
  loc_AF4F7E: LitVar_FALSE
  loc_AF4F82: PopAdLdVar
  loc_AF4F83: FLdPr Me
  loc_AF4F86: VCallAd Control_ID_ProgressBar
  loc_AF4F89: FStAdFunc var_FC
  loc_AF4F8C: FLdPr var_FC
  loc_AF4F8F: LateIdSt
  loc_AF4F94: FFree1Ad var_FC
  loc_AF4F97: LitVarStr var_110, "Proceso Terminado"
  loc_AF4F9C: FStVarCopy
  loc_AF4FA0: FLdRfVar var_130
  loc_AF4FA3: CStrVarVal var_100
  loc_AF4FA7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF4FAC: FFree1Str var_100
  loc_AF4FAF: LitI4 0
  loc_AF4FB4: LitI4 6
  loc_AF4FB9: FLdRfVar var_88
  loc_AF4FBC: Redim
  loc_AF4FC6: FLdPr Me
  loc_AF4FC9: VCallAd Control_ID_BuscarDatosCmd
  loc_AF4FCC: CVarAd
  loc_AF4FD0: ParmAry1St
  loc_AF4FD6: FLdPr Me
  loc_AF4FD9: VCallAd Control_ID_ImprimirCmd
  loc_AF4FDC: CVarAd
  loc_AF4FE0: ParmAry1St
  loc_AF4FE6: FLdPr Me
  loc_AF4FE9: VCallAd Control_ID_cmdSalir
  loc_AF4FEC: CVarAd
  loc_AF4FF0: ParmAry1St
  loc_AF4FF6: FLdPr Me
  loc_AF4FF9: VCallAd Control_ID_OficinaCbo
  loc_AF4FFC: CVarAd
  loc_AF5000: ParmAry1St
  loc_AF5006: FLdPr Me
  loc_AF5009: VCallAd Control_ID_PeriBoleMsk
  loc_AF500C: CVarAd
  loc_AF5010: ParmAry1St
  loc_AF5016: FLdPr Me
  loc_AF5019: VCallAd Control_ID_ExpeCtctTxt
  loc_AF501C: CVarAd
  loc_AF5020: ParmAry1St
  loc_AF5026: FLdPr Me
  loc_AF5029: VCallAd Control_ID_ProcesarCmd
  loc_AF502C: CVarAd
  loc_AF5030: ParmAry1St
  loc_AF5036: FLdRfVar var_88
  loc_AF5039: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AF503E: FLdRfVar var_88
  loc_AF5041: Erase
  loc_AF5042: ExitProcHresult
End Sub

Private Sub BuscarDatosCmd_Click() 'AF6248
  'Data Table: 433484
  loc_AF60A8: LitI2_Byte &HB
  loc_AF60AA: FLdPr Me
  loc_AF60AD: Me.MousePointer = from_stack_1
  loc_AF60B2: LitI4 0
  loc_AF60B7: LitI4 6
  loc_AF60BC: FLdRfVar var_88
  loc_AF60BF: Redim
  loc_AF60C9: FLdPr Me
  loc_AF60CC: VCallAd Control_ID_BuscarDatosCmd
  loc_AF60CF: CVarAd
  loc_AF60D3: ParmAry1St
  loc_AF60D9: FLdPr Me
  loc_AF60DC: VCallAd Control_ID_ImprimirCmd
  loc_AF60DF: CVarAd
  loc_AF60E3: ParmAry1St
  loc_AF60E9: FLdPr Me
  loc_AF60EC: VCallAd Control_ID_cmdSalir
  loc_AF60EF: CVarAd
  loc_AF60F3: ParmAry1St
  loc_AF60F9: FLdPr Me
  loc_AF60FC: VCallAd Control_ID_OficinaCbo
  loc_AF60FF: CVarAd
  loc_AF6103: ParmAry1St
  loc_AF6109: FLdPr Me
  loc_AF610C: VCallAd Control_ID_PeriBoleMsk
  loc_AF610F: CVarAd
  loc_AF6113: ParmAry1St
  loc_AF6119: FLdPr Me
  loc_AF611C: VCallAd Control_ID_ExpeCtctTxt
  loc_AF611F: CVarAd
  loc_AF6123: ParmAry1St
  loc_AF6129: FLdPr Me
  loc_AF612C: VCallAd Control_ID_ProcesarCmd
  loc_AF612F: CVarAd
  loc_AF6133: ParmAry1St
  loc_AF6139: FLdRfVar var_88
  loc_AF613C: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AF6141: FLdRfVar var_88
  loc_AF6144: Erase
  loc_AF6145: FLdPr Me
  loc_AF6148: VCallAd Control_ID_PeriBoleMsk
  loc_AF614B: FStAdFunc var_FC
  loc_AF614E: FLdPr var_FC
  loc_AF6151: LateIdLdVar var_98 DispID_22 0
  loc_AF6158: CStrVarTmp
  loc_AF6159: FStStrNoPop var_100
  loc_AF615C: CI2Str
  loc_AF615E: ImpAdLdUI1
  loc_AF6162: FLdPr Me
  loc_AF6165: MemLdRfVar from_stack_1.global_52
  loc_AF6168: NewIfNullPr clsejecutarprocesos
  loc_AF616B: Call clsejecutarprocesos.CreditosManualesPagosDobles(from_stack_1v, from_stack_2v)
  loc_AF6170: FFree1Str var_100
  loc_AF6173: FFree1Ad var_FC
  loc_AF6176: FFree1Var var_98 = ""
  loc_AF6179: LitI2_Byte 0
  loc_AF617B: FLdPr Me
  loc_AF617E: Me.MousePointer = from_stack_1
  loc_AF6183: LitVar_FALSE
  loc_AF6187: PopAdLdVar
  loc_AF6188: FLdPr Me
  loc_AF618B: VCallAd Control_ID_ProgressBar
  loc_AF618E: FStAdFunc var_FC
  loc_AF6191: FLdPr var_FC
  loc_AF6194: LateIdSt
  loc_AF6199: FFree1Ad var_FC
  loc_AF619C: LitVarStr var_110, "Proceso Terminado"
  loc_AF61A1: FStVarCopy
  loc_AF61A5: FLdRfVar var_130
  loc_AF61A8: CStrVarVal var_100
  loc_AF61AC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF61B1: FFree1Str var_100
  loc_AF61B4: LitI4 0
  loc_AF61B9: LitI4 6
  loc_AF61BE: FLdRfVar var_88
  loc_AF61C1: Redim
  loc_AF61CB: FLdPr Me
  loc_AF61CE: VCallAd Control_ID_BuscarDatosCmd
  loc_AF61D1: CVarAd
  loc_AF61D5: ParmAry1St
  loc_AF61DB: FLdPr Me
  loc_AF61DE: VCallAd Control_ID_ImprimirCmd
  loc_AF61E1: CVarAd
  loc_AF61E5: ParmAry1St
  loc_AF61EB: FLdPr Me
  loc_AF61EE: VCallAd Control_ID_cmdSalir
  loc_AF61F1: CVarAd
  loc_AF61F5: ParmAry1St
  loc_AF61FB: FLdPr Me
  loc_AF61FE: VCallAd Control_ID_OficinaCbo
  loc_AF6201: CVarAd
  loc_AF6205: ParmAry1St
  loc_AF620B: FLdPr Me
  loc_AF620E: VCallAd Control_ID_PeriBoleMsk
  loc_AF6211: CVarAd
  loc_AF6215: ParmAry1St
  loc_AF621B: FLdPr Me
  loc_AF621E: VCallAd Control_ID_ExpeCtctTxt
  loc_AF6221: CVarAd
  loc_AF6225: ParmAry1St
  loc_AF622B: FLdPr Me
  loc_AF622E: VCallAd Control_ID_ProcesarCmd
  loc_AF6231: CVarAd
  loc_AF6235: ParmAry1St
  loc_AF623B: FLdRfVar var_88
  loc_AF623E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AF6243: FLdRfVar var_88
  loc_AF6246: Erase
  loc_AF6247: ExitProcHresult
End Sub

Private Sub Form_Load() 'ACBB0C
  'Data Table: 433484
  loc_ACB9F8: ILdRf Me
  loc_ACB9FB: CastAd
  loc_ACB9FE: FStAdFunc var_88
  loc_ACBA01: FLdRfVar var_88
  loc_ACBA04: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_ACBA09: FFree1Ad var_88
  loc_ACBA0C: LitVar_Missing var_98
  loc_ACBA0F: PopAdLdVar
  loc_ACBA10: LitStr "Inmueble"
  loc_ACBA13: FLdPr Me
  loc_ACBA16: VCallAd Control_ID_OficinaCbo
  loc_ACBA19: FStAdFunc var_88
  loc_ACBA1C: FLdPr var_88
  loc_ACBA1F: Me.AddItem from_stack_1, from_stack_2
  loc_ACBA24: FFree1Ad var_88
  loc_ACBA27: LitVar_Missing var_98
  loc_ACBA2A: PopAdLdVar
  loc_ACBA2B: LitStr "Comercio"
  loc_ACBA2E: FLdPr Me
  loc_ACBA31: VCallAd Control_ID_OficinaCbo
  loc_ACBA34: FStAdFunc var_88
  loc_ACBA37: FLdPr var_88
  loc_ACBA3A: Me.AddItem from_stack_1, from_stack_2
  loc_ACBA3F: FFree1Ad var_88
  loc_ACBA42: LitVar_Missing var_98
  loc_ACBA45: PopAdLdVar
  loc_ACBA46: LitStr "Deudores Varios"
  loc_ACBA49: FLdPr Me
  loc_ACBA4C: VCallAd Control_ID_OficinaCbo
  loc_ACBA4F: FStAdFunc var_88
  loc_ACBA52: FLdPr var_88
  loc_ACBA55: Me.AddItem from_stack_1, from_stack_2
  loc_ACBA5A: FFree1Ad var_88
  loc_ACBA5D: LitVar_Missing var_98
  loc_ACBA60: PopAdLdVar
  loc_ACBA61: LitStr "Cementerio"
  loc_ACBA64: FLdPr Me
  loc_ACBA67: VCallAd Control_ID_OficinaCbo
  loc_ACBA6A: FStAdFunc var_88
  loc_ACBA6D: FLdPr var_88
  loc_ACBA70: Me.AddItem from_stack_1, from_stack_2
  loc_ACBA75: FFree1Ad var_88
  loc_ACBA78: LitI2_Byte 0
  loc_ACBA7A: FLdPr Me
  loc_ACBA7D: VCallAd Control_ID_OficinaCbo
  loc_ACBA80: FStAdFunc var_88
  loc_ACBA83: FLdPr var_88
  loc_ACBA86: Me.ListIndex = from_stack_1
  loc_ACBA8B: FFree1Ad var_88
  loc_ACBA8E: ImpAdLdI2 MemVar_D93034
  loc_ACBA91: CStrUI1
  loc_ACBA93: CVarStr var_A8
  loc_ACBA96: PopAdLdVar
  loc_ACBA97: FLdPr Me
  loc_ACBA9A: VCallAd Control_ID_PeriBoleMsk
  loc_ACBA9D: FStAdFunc var_88
  loc_ACBAA0: FLdPr var_88
  loc_ACBAA3: LateIdSt
  loc_ACBAA8: FFree1Ad var_88
  loc_ACBAAB: FFree1Var var_A8 = ""
  loc_ACBAAE: LitStr vbNullString
  loc_ACBAB1: FLdPr Me
  loc_ACBAB4: VCallAd Control_ID_ExpeCtctTxt
  loc_ACBAB7: FStAdFunc var_88
  loc_ACBABA: FLdPr var_88
  loc_ACBABD: Me.Text = from_stack_1
  loc_ACBAC2: FFree1Ad var_88
  loc_ACBAC5: LitI4 0
  loc_ACBACA: LitI4 1
  loc_ACBACF: FLdRfVar var_AC
  loc_ACBAD2: Redim
  loc_ACBADC: FLdPr Me
  loc_ACBADF: VCallAd Control_ID_ImprimirCmd
  loc_ACBAE2: CVarAd
  loc_ACBAE6: ParmAry1St
  loc_ACBAEC: FLdPr Me
  loc_ACBAEF: VCallAd Control_ID_ProcesarCmd
  loc_ACBAF2: CVarAd
  loc_ACBAF6: ParmAry1St
  loc_ACBAFC: FLdRfVar var_AC
  loc_ACBAFF: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_ACBB04: FLdRfVar var_AC
  loc_ACBB07: Erase
  loc_ACBB08: ExitProcHresult
  loc_ACBB09: LtCy
End Sub
