VERSION 5.00
Begin VB.Form dlgImporteFijo
  Caption = "Retenciones y/o Aportes"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgImporteFijo.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 11010
  ClientHeight = 4155
  Begin VB.TextBox BaseImponibleTxt
    ForeColor = &HFF0000&
    Left = 2760
    Top = 2040
    Width = 2295
    Height = 360
    TabIndex = 5
    MaxLength = 12
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
  Begin VB.TextBox ImpoFijoTxt
    ForeColor = &HFF0000&
    Left = 2760
    Top = 2640
    Width = 2295
    Height = 360
    TabIndex = 7
    MaxLength = 12
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
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 5040
    Top = 3240
    Width = 1335
    Height = 495
    TabIndex = 8
    Tag = "5"
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
  Begin VB.Label LabelBaseImponible
    Caption = "Base Imponible:"
    Left = 840
    Top = 2040
    Width = 1710
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
  Begin VB.Label LabelRet
    Left = 2880
    Top = 960
    Width = 90
    Height = 300
    TabIndex = 3
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label LabelProv
    Left = 2880
    Top = 360
    Width = 90
    Height = 300
    TabIndex = 1
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Retención y/o Aporte:"
    Left = 360
    Top = 960
    Width = 2295
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
  Begin VB.Label Label2
    Caption = "Proveedor:"
    Left = 1635
    Top = 360
    Width = 1140
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
  Begin VB.Label LabelImporteFijo
    Caption = "Importe Fijo:"
    Left = 1200
    Top = 2640
    Width = 1320
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
End

Attribute VB_Name = "dlgImporteFijo"

Public doImporteFijo As Double
Public doBaseImponible As Double


Private Sub OKButton_Click() '995A68
  'Data Table: 422AB4
  loc_995A08: FLdRfVar var_8C
  loc_995A0B: FLdPr Me
  loc_995A0E: VCallAd Control_ID_ImpoFijoTxt
  loc_995A11: FStAdFunc var_88
  loc_995A14: FLdPr var_88
  loc_995A17:  = Me.Text
  loc_995A1C: ILdRf var_8C
  loc_995A1F: CR8Str
  loc_995A21: FLdPr Me
  loc_995A24: MemStFPR8 doImporteFijo
  loc_995A27: FFree1Str var_8C
  loc_995A2A: FFree1Ad var_88
  loc_995A2D: FLdRfVar var_8C
  loc_995A30: FLdPr Me
  loc_995A33: VCallAd Control_ID_BaseImponibleTxt
  loc_995A36: FStAdFunc var_88
  loc_995A39: FLdPr var_88
  loc_995A3C:  = Me.Text
  loc_995A41: ILdRf var_8C
  loc_995A44: CR8Str
  loc_995A46: FLdPr Me
  loc_995A49: MemStFPR8 doBaseImponible
  loc_995A4C: FFree1Str var_8C
  loc_995A4F: FFree1Ad var_88
  loc_995A52: ILdRf Me
  loc_995A55: FStAdNoPop
  loc_995A59: ImpAdLdRf MemVar_C44F9C
  loc_995A5C: NewIfNullPr Me
  loc_995A5F: Me.Global.Unload from_stack_1
  loc_995A64: FFree1Ad var_88
  loc_995A67: ExitProcHresult
End Sub

Private Sub Form_Load() '972DC4
  'Data Table: 422AB4
  loc_972D9C: LitStr "Municipalidad de Guaymallén"
  loc_972D9F: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_972DA2: EqStr
  loc_972DA4: BranchF loc_972DAA
  loc_972DA7: Branch loc_972DC0
  loc_972DAA: LitI2_Byte 0
  loc_972DAC: FLdPr Me
  loc_972DAF: VCallAd Control_ID_BaseImponibleTxt
  loc_972DB2: FStAdFunc var_88
  loc_972DB5: FLdPr var_88
  loc_972DB8: Me.Enabled = from_stack_1b
  loc_972DBD: FFree1Ad var_88
  loc_972DC0: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '980EAC
  'Data Table: 422AB4
  loc_980E74: ILdI2 KeyAscii
  loc_980E77: CI4UI1
  loc_980E78: LitI4 &HD
  loc_980E7D: EqI4
  loc_980E7E: BranchF loc_980E86
  loc_980E81: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_980E86: ILdI2 KeyAscii
  loc_980E89: LitI2_Byte &H1B
  loc_980E8B: EqI2
  loc_980E8C: BranchF loc_980EA9
  loc_980E8F: ILdRf Me
  loc_980E92: FStAdNoPop
  loc_980E96: ImpAdLdRf MemVar_C44F9C
  loc_980E99: NewIfNullPr Me
  loc_980E9C: Me.Global.Unload from_stack_1
  loc_980EA1: FFree1Ad var_88
  loc_980EA4: LitI2_Byte 0
  loc_980EA6: IStI2 KeyAscii
  loc_980EA9: ExitProcHresult
End Sub

Private Sub BaseImponibleTxt_GotFocus() '94F8D8
  'Data Table: 422AB4
  loc_94F8C4: FLdPr Me
  loc_94F8C7: VCallAd Control_ID_BaseImponibleTxt
  loc_94F8CA: CVarAd
  loc_94F8CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F8D3: FFree1Var var_94 = ""
  loc_94F8D6: ExitProcHresult
End Sub

Private Sub BaseImponibleTxt_KeyPress(KeyAscii As Integer) '97F8F8
  'Data Table: 422AB4
  loc_97F8C4: LitStr "1234567890.,"
  loc_97F8C7: FStStrCopy var_88
  loc_97F8CA: FLdRfVar var_88
  loc_97F8CD: ILdRf KeyAscii
  loc_97F8D0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97F8D5: IStI2 KeyAscii
  loc_97F8D8: FFree1Str var_88
  loc_97F8DB: ILdI2 KeyAscii
  loc_97F8DE: LitStr "."
  loc_97F8E1: ImpAdCallI2 Asc()
  loc_97F8E6: EqI2
  loc_97F8E7: BranchF loc_97F8F5
  loc_97F8EA: LitStr ","
  loc_97F8ED: ImpAdCallI2 Asc()
  loc_97F8F2: IStI2 KeyAscii
  loc_97F8F5: ExitProcHresult
End Sub

Private Sub BaseImponibleTxt_Validate(Cancel As Boolean) '9E5DA8
  'Data Table: 422AB4
  loc_9E5C9C: FLdRfVar var_8A
  loc_9E5C9F: FLdPr Me
  loc_9E5CA2: VCallAd Control_ID_ImpoFijoTxt
  loc_9E5CA5: FStAdFunc var_88
  loc_9E5CA8: FLdPr var_88
  loc_9E5CAB:  = Me.Enabled
  loc_9E5CB0: FLdI2 var_8A
  loc_9E5CB3: FFree1Ad var_88
  loc_9E5CB6: BranchF loc_9E5DA4
  loc_9E5CB9: FLdRfVar var_90
  loc_9E5CBC: FLdPr Me
  loc_9E5CBF: VCallAd Control_ID_ImpoFijoTxt
  loc_9E5CC2: FStAdFunc var_88
  loc_9E5CC5: FLdPr var_88
  loc_9E5CC8:  = Me.Text
  loc_9E5CCD: LitStr "0"
  loc_9E5CD0: LitI2_Byte &HFF
  loc_9E5CD2: LitI2_Byte &HFF
  loc_9E5CD4: LitI2_Byte 0
  loc_9E5CD6: ILdRf var_90
  loc_9E5CD9: LitStr "Importe Fijo"
  loc_9E5CDC: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9E5CE1: FStStrNoPop var_94
  loc_9E5CE4: FLdPr Me
  loc_9E5CE7: MemStStrCopy
  loc_9E5CEB: FFreeStr var_90 = ""
  loc_9E5CF2: FFree1Ad var_88
  loc_9E5CF5: FLdPr Me
  loc_9E5CF8: VCallAd Control_ID_ImpoFijoTxt
  loc_9E5CFB: FStAdFunc var_A0
  loc_9E5CFE: LitNothing
  loc_9E5D00: CastAd
  loc_9E5D03: FStAdFunc var_9C
  loc_9E5D06: FLdRfVar var_9C
  loc_9E5D09: FLdZeroAd var_A0
  loc_9E5D0C: FStAdFuncNoPop
  loc_9E5D0F: CastAd
  loc_9E5D12: FStAdFunc var_98
  loc_9E5D15: FLdRfVar var_98
  loc_9E5D18: FLdPr Me
  loc_9E5D1B: MemLdRfVar from_stack_1.global_68
  loc_9E5D1E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E5D23: IStI2 Cancel
  loc_9E5D26: FFreeAd var_88 = "": var_98 = "": var_9C = ""
  loc_9E5D31: ILdI2 Cancel
  loc_9E5D34: NotI4
  loc_9E5D35: BranchF loc_9E5DA4
  loc_9E5D38: FLdRfVar var_90
  loc_9E5D3B: FLdPrThis
  loc_9E5D3C: VCallAd Control_ID_BaseImponibleTxt
  loc_9E5D3F: FStAdFunc var_88
  loc_9E5D42: FLdPr var_88
  loc_9E5D45:  = Me.Text
  loc_9E5D4A: FLdRfVar var_C0
  loc_9E5D4D: FLdZeroAd var_90
  loc_9E5D50: CVarStr var_B0
  loc_9E5D53: ImpAdCallHresult  = CDec()
  loc_9E5D58: FLdRfVar var_C0
  loc_9E5D5B: FLdPr Me
  loc_9E5D5E: MemLdFPR8 doBaseImponible
  loc_9E5D61: CVarR8
  loc_9E5D65: HardType
  loc_9E5D66: EqVarBool
  loc_9E5D68: FFree1Ad var_88
  loc_9E5D6B: FFreeVar var_B0 = ""
  loc_9E5D72: BranchF loc_9E5D8E
  loc_9E5D75: LitI2_Byte &HFF
  loc_9E5D77: FLdPr Me
  loc_9E5D7A: VCallAd Control_ID_ImpoFijoTxt
  loc_9E5D7D: FStAdFunc var_88
  loc_9E5D80: FLdPr var_88
  loc_9E5D83: Me.Enabled = from_stack_1b
  loc_9E5D88: FFree1Ad var_88
  loc_9E5D8B: Branch loc_9E5DA4
  loc_9E5D8E: LitI2_Byte 0
  loc_9E5D90: FLdPr Me
  loc_9E5D93: VCallAd Control_ID_ImpoFijoTxt
  loc_9E5D96: FStAdFunc var_88
  loc_9E5D99: FLdPr var_88
  loc_9E5D9C: Me.Enabled = from_stack_1b
  loc_9E5DA1: FFree1Ad var_88
  loc_9E5DA4: ExitProcHresult
End Sub

Private Sub ImpoFijoTxt_GotFocus() '94F9B0
  'Data Table: 422AB4
  loc_94F99C: FLdPr Me
  loc_94F99F: VCallAd Control_ID_ImpoFijoTxt
  loc_94F9A2: CVarAd
  loc_94F9A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F9AB: FFree1Var var_94 = ""
  loc_94F9AE: ExitProcHresult
End Sub

Private Sub ImpoFijoTxt_KeyPress(KeyAscii As Integer) '97F890
  'Data Table: 422AB4
  loc_97F85C: LitStr "1234567890.,"
  loc_97F85F: FStStrCopy var_88
  loc_97F862: FLdRfVar var_88
  loc_97F865: ILdRf KeyAscii
  loc_97F868: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97F86D: IStI2 KeyAscii
  loc_97F870: FFree1Str var_88
  loc_97F873: ILdI2 KeyAscii
  loc_97F876: LitStr "."
  loc_97F879: ImpAdCallI2 Asc()
  loc_97F87E: EqI2
  loc_97F87F: BranchF loc_97F88D
  loc_97F882: LitStr ","
  loc_97F885: ImpAdCallI2 Asc()
  loc_97F88A: IStI2 KeyAscii
  loc_97F88D: ExitProcHresult
End Sub

Private Sub ImpoFijoTxt_Validate(Cancel As Boolean) '9AE96C
  'Data Table: 422AB4
  loc_9AE8D4: FLdRfVar var_8A
  loc_9AE8D7: FLdPr Me
  loc_9AE8DA: VCallAd Control_ID_ImpoFijoTxt
  loc_9AE8DD: FStAdFunc var_88
  loc_9AE8E0: FLdPr var_88
  loc_9AE8E3:  = Me.Enabled
  loc_9AE8E8: FLdI2 var_8A
  loc_9AE8EB: FFree1Ad var_88
  loc_9AE8EE: BranchF loc_9AE969
  loc_9AE8F1: FLdRfVar var_90
  loc_9AE8F4: FLdPr Me
  loc_9AE8F7: VCallAd Control_ID_ImpoFijoTxt
  loc_9AE8FA: FStAdFunc var_88
  loc_9AE8FD: FLdPr var_88
  loc_9AE900:  = Me.Text
  loc_9AE905: LitStr "0"
  loc_9AE908: LitI2_Byte &HFF
  loc_9AE90A: LitI2_Byte &HFF
  loc_9AE90C: LitI2_Byte 0
  loc_9AE90E: ILdRf var_90
  loc_9AE911: LitStr "Importe Fijo"
  loc_9AE914: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9AE919: FStStrNoPop var_94
  loc_9AE91C: FLdPr Me
  loc_9AE91F: MemStStrCopy
  loc_9AE923: FFreeStr var_90 = ""
  loc_9AE92A: FFree1Ad var_88
  loc_9AE92D: FLdPr Me
  loc_9AE930: VCallAd Control_ID_ImpoFijoTxt
  loc_9AE933: FStAdFunc var_A0
  loc_9AE936: LitNothing
  loc_9AE938: CastAd
  loc_9AE93B: FStAdFunc var_9C
  loc_9AE93E: FLdRfVar var_9C
  loc_9AE941: FLdZeroAd var_A0
  loc_9AE944: FStAdFuncNoPop
  loc_9AE947: CastAd
  loc_9AE94A: FStAdFunc var_98
  loc_9AE94D: FLdRfVar var_98
  loc_9AE950: FLdPr Me
  loc_9AE953: MemLdRfVar from_stack_1.global_68
  loc_9AE956: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AE95B: IStI2 Cancel
  loc_9AE95E: FFreeAd var_88 = "": var_98 = "": var_9C = ""
  loc_9AE969: ExitProcHresult
  loc_9AE96A: SetLastSystemError
End Sub

Public Function doImporteFijoGet() '423114
  doImporteFijoGet = doImporteFijo
End Function

Public Sub doImporteFijoPut(Value) '423123
  doImporteFijo = Value
End Sub

Public Function doBaseImponibleGet() '423132
  doBaseImponibleGet = doBaseImponible
End Function

Public Sub doBaseImponiblePut(Value) '423141
  doBaseImponible = Value
End Sub
