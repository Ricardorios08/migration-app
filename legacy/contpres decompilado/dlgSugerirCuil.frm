VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form dlgSugerirCuil
  Caption = "Generador de CUIT/CUIL"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "dlgSugerirCuil"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 360
  ClientWidth = 4125
  ClientHeight = 3495
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame4
    Caption = "CUIT / CUIL"
    Left = 120
    Top = 2400
    Width = 3855
    Height = 975
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
    Begin VB.CommandButton butGenerar
      Caption = "Generar"
      Left = 2280
      Top = 360
      Width = 1335
      Height = 375
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
    End
    Begin VB.Label CuitCuilLbl
      Left = 120
      Top = 360
      Width = 1935
      Height = 375
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
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
  Begin VB.Frame Frame3
    Caption = "Documento"
    Left = 120
    Top = 1560
    Width = 3855
    Height = 735
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
    Begin MSMask.MaskEdBox DniMsk
      Left = 1560
      Top = 240
      Width = 2055
      Height = 375
      TabIndex = 7
      OleObjectBlob = "dlgSugerirCuil.frx":0000
    End
  End
  Begin VB.Frame Frame2
    Caption = "Sexo"
    Left = 120
    Top = 840
    Width = 3855
    Height = 615
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton optFemenino
      Caption = "Femenino"
      Left = 2280
      Top = 240
      Width = 1455
      Height = 255
      TabIndex = 5
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
    Begin VB.OptionButton optMasculino
      Caption = "Masculino"
      Left = 840
      Top = 240
      Width = 1455
      Height = 255
      TabIndex = 4
      Value = 255
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
  Begin VB.Frame Frame1
    Caption = "Persona"
    Left = 120
    Top = 120
    Width = 3855
    Height = 615
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton optJuridica
      Caption = "Jurídica"
      Left = 2520
      Top = 240
      Width = 1215
      Height = 255
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
    End
    Begin VB.OptionButton optFisica
      Caption = "Física"
      Left = 1200
      Top = 240
      Width = 1095
      Height = 255
      TabIndex = 1
      Value = 255
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

Attribute VB_Name = "dlgSugerirCuil"


Private Sub butGenerar_Click() '9ADFD4
  'Data Table: 420C3C
  loc_9ADF34: LitI2_Byte 0
  loc_9ADF36: PopTmpLdAd2 var_86
  loc_9ADF39: Call DniMsk_UnknownEvent_8()
  loc_9ADF3E: FLdPr Me
  loc_9ADF41: MemLdStr global_52
  loc_9ADF44: LitStr vbNullString
  loc_9ADF47: NeStr
  loc_9ADF49: BranchF loc_9ADF4D
  loc_9ADF4C: ExitProcHresult
  loc_9ADF4D: FLdRfVar var_86
  loc_9ADF50: FLdPrThis
  loc_9ADF51: VCallAd Control_ID_optFisica
  loc_9ADF54: FStAdFunc var_94
  loc_9ADF57: FLdPr var_94
  loc_9ADF5A:  = Me.Value
  loc_9ADF5F: FLdI2 var_86
  loc_9ADF62: FStI2 var_88
  loc_9ADF65: FFree1Ad var_94
  loc_9ADF68: FLdRfVar var_86
  loc_9ADF6B: FLdPrThis
  loc_9ADF6C: VCallAd Control_ID_optMasculino
  loc_9ADF6F: FStAdFunc var_94
  loc_9ADF72: FLdPr var_94
  loc_9ADF75:  = Me.Value
  loc_9ADF7A: FLdI2 var_86
  loc_9ADF7D: FStI2 var_8A
  loc_9ADF80: FFree1Ad var_94
  loc_9ADF83: FLdPrThis
  loc_9ADF84: VCallAd Control_ID_DniMsk
  loc_9ADF87: FStAdFunc var_94
  loc_9ADF8A: FLdPr var_94
  loc_9ADF8D: LateIdLdVar var_A4 DispID_22 0
  loc_9ADF94: CStrVarTmp
  loc_9ADF95: FStStrNoPop var_A8
  loc_9ADF98: ImpAdCallI2 Trim$()
  loc_9ADF9D: FStStr var_90
  loc_9ADFA0: FFree1Str var_A8
  loc_9ADFA3: FFree1Ad var_94
  loc_9ADFA6: FFree1Var var_A4 = ""
  loc_9ADFA9: FLdRfVar var_A8
  loc_9ADFAC: FLdRfVar var_90
  loc_9ADFAF: FLdRfVar var_8A
  loc_9ADFB2: FLdRfVar var_88
  loc_9ADFB5: Call Proc_98_3_A6CE20()
  loc_9ADFBA: ILdRf var_A8
  loc_9ADFBD: FLdPrThis
  loc_9ADFBE: VCallAd Control_ID_CuitCuilLbl
  loc_9ADFC1: FStAdFunc var_94
  loc_9ADFC4: FLdPr var_94
  loc_9ADFC7: Me.Caption = from_stack_1
  loc_9ADFCC: FFree1Str var_A8
  loc_9ADFCF: FFree1Ad var_94
  loc_9ADFD2: ExitProcHresult
End Sub

Private Sub DniMsk_UnknownEvent_7 '952A58
  'Data Table: 420C3C
  loc_952A44: FLdPr Me
  loc_952A47: VCallAd Control_ID_DniMsk
  loc_952A4A: CVarAd
  loc_952A4E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952A53: FFree1Var var_94 = ""
  loc_952A56: ExitProcHresult
End Sub

Private Function DniMsk_UnknownEvent_8(arg_C) '9AAD64
  'Data Table: 420C3C
  loc_9AACDC: FLdPr Me
  loc_9AACDF: VCallAd Control_ID_DniMsk
  loc_9AACE2: FStAdFunc var_88
  loc_9AACE5: FLdPr var_88
  loc_9AACE8: LateIdLdVar var_98 DispID_22 0
  loc_9AACEF: PopAd
  loc_9AACF1: LitI2_Byte 0
  loc_9AACF3: PopTmpLdAd2 var_A2
  loc_9AACF6: LitI2_Byte &HFF
  loc_9AACF8: PopTmpLdAd2 var_A0
  loc_9AACFB: LitI2_Byte 8
  loc_9AACFD: PopTmpLdAd2 var_9E
  loc_9AAD00: FLdRfVar var_98
  loc_9AAD03: CStrVarTmp
  loc_9AAD04: FStStrNoPop var_9C
  loc_9AAD07: LitStr "CUIT-CUIL"
  loc_9AAD0A: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9AAD0F: FStStrNoPop var_A8
  loc_9AAD12: FLdPr Me
  loc_9AAD15: MemStStrCopy
  loc_9AAD19: FFreeStr var_9C = ""
  loc_9AAD20: FFree1Ad var_88
  loc_9AAD23: FFree1Var var_98 = ""
  loc_9AAD26: FLdPr Me
  loc_9AAD29: VCallAd Control_ID_DniMsk
  loc_9AAD2C: FStAdFunc var_B4
  loc_9AAD2F: FLdPr Me
  loc_9AAD32: VCallAd Control_ID_CuitCuilLbl
  loc_9AAD35: FStAdFunc var_B0
  loc_9AAD38: FLdRfVar var_B0
  loc_9AAD3B: FLdZeroAd var_B4
  loc_9AAD3E: FStAdFuncNoPop
  loc_9AAD41: CastAd
  loc_9AAD44: FStAdFunc var_AC
  loc_9AAD47: FLdRfVar var_AC
  loc_9AAD4A: FLdPr Me
  loc_9AAD4D: MemLdRfVar from_stack_1.global_52
  loc_9AAD50: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AAD55: IStI2 arg_C
  loc_9AAD58: FFreeAd var_88 = "": var_AC = "": var_B0 = ""
  loc_9AAD63: ExitProcHresult
End Function

Private Function Proc_98_3_A6CE20(arg_C, arg_10, arg_14) 'A6CE20
  'Data Table: 420C3C
  loc_A6CACC: ZeroRetVal
  loc_A6CACE: LitVarI2 var_F8, 3
  loc_A6CAD3: LitVarI2 var_D8, 2
  loc_A6CAD8: ILdRf arg_C
  loc_A6CADB: CVarRef
  loc_A6CAE0: FLdRfVar var_108
  loc_A6CAE3: ImpAdCallFPR4  = IIf(, , )
  loc_A6CAE8: FLdRfVar var_108
  loc_A6CAEB: CI2Var
  loc_A6CAEC: LitI4 1
  loc_A6CAF1: FLdRfVar var_A0
  loc_A6CAF4: Ary1StI2
  loc_A6CAF5: FFreeVar var_D8 = "": var_F8 = ""
  loc_A6CAFE: LitVarI2 var_F8, 7
  loc_A6CB03: LitVarI2 var_D8, 0
  loc_A6CB08: ILdRf arg_10
  loc_A6CB0B: CVarRef
  loc_A6CB10: FLdRfVar var_108
  loc_A6CB13: ImpAdCallFPR4  = IIf(, , )
  loc_A6CB18: LitVarI2 var_138, 0
  loc_A6CB1D: FLdRfVar var_108
  loc_A6CB20: ILdRf arg_C
  loc_A6CB23: CVarRef
  loc_A6CB28: FLdRfVar var_148
  loc_A6CB2B: ImpAdCallFPR4  = IIf(, , )
  loc_A6CB30: FLdRfVar var_148
  loc_A6CB33: CI2Var
  loc_A6CB34: LitI4 2
  loc_A6CB39: FLdRfVar var_A0
  loc_A6CB3C: Ary1StI2
  loc_A6CB3D: FFreeVar var_D8 = "": var_F8 = "": var_108 = "": var_138 = ""
  loc_A6CB4A: LitI2_Byte 1
  loc_A6CB4C: CUI1I2
  loc_A6CB4E: FLdRfVar var_A6
  loc_A6CB51: LitI2_Byte 8
  loc_A6CB53: CUI1I2
  loc_A6CB55: LitI2_Byte 1
  loc_A6CB57: CUI1I2
  loc_A6CB59: ForStepUI1 var_14C
  loc_A6CB5F: LitVarI2 var_D8, 1
  loc_A6CB64: FLdUI1
  loc_A6CB68: CI4UI1
  loc_A6CB69: ILdRf arg_14
  loc_A6CB6C: CVarRef
  loc_A6CB71: FLdRfVar var_F8
  loc_A6CB74: ImpAdCallFPR4  = Mid(, , )
  loc_A6CB79: FLdRfVar var_F8
  loc_A6CB7C: FnCIntVar
  loc_A6CB7E: FLdUI1
  loc_A6CB82: CI2UI1
  loc_A6CB84: LitI2_Byte 2
  loc_A6CB86: AddI2
  loc_A6CB87: CI4UI1
  loc_A6CB88: FLdRfVar var_A0
  loc_A6CB8B: Ary1StI2
  loc_A6CB8C: FFreeVar var_D8 = "": var_F8 = ""
  loc_A6CB95: FLdRfVar var_A6
  loc_A6CB98: NextStepUI1 var_14C
  loc_A6CB9E: LitI2_Byte 6
  loc_A6CBA0: LitI4 1
  loc_A6CBA5: FLdRfVar var_A0
  loc_A6CBA8: Ary1LdI2
  loc_A6CBA9: MulI2
  loc_A6CBAA: LitI2_Byte 7
  loc_A6CBAC: LitI4 2
  loc_A6CBB1: FLdRfVar var_A0
  loc_A6CBB4: Ary1LdI2
  loc_A6CBB5: MulI2
  loc_A6CBB6: AddI2
  loc_A6CBB7: LitI2_Byte 8
  loc_A6CBB9: LitI4 3
  loc_A6CBBE: FLdRfVar var_A0
  loc_A6CBC1: Ary1LdI2
  loc_A6CBC2: MulI2
  loc_A6CBC3: AddI2
  loc_A6CBC4: LitI2_Byte 9
  loc_A6CBC6: LitI4 4
  loc_A6CBCB: FLdRfVar var_A0
  loc_A6CBCE: Ary1LdI2
  loc_A6CBCF: MulI2
  loc_A6CBD0: AddI2
  loc_A6CBD1: LitI2_Byte 4
  loc_A6CBD3: LitI4 5
  loc_A6CBD8: FLdRfVar var_A0
  loc_A6CBDB: Ary1LdI2
  loc_A6CBDC: MulI2
  loc_A6CBDD: AddI2
  loc_A6CBDE: LitI2_Byte 5
  loc_A6CBE0: LitI4 6
  loc_A6CBE5: FLdRfVar var_A0
  loc_A6CBE8: Ary1LdI2
  loc_A6CBE9: MulI2
  loc_A6CBEA: AddI2
  loc_A6CBEB: LitI2_Byte 6
  loc_A6CBED: LitI4 7
  loc_A6CBF2: FLdRfVar var_A0
  loc_A6CBF5: Ary1LdI2
  loc_A6CBF6: MulI2
  loc_A6CBF7: AddI2
  loc_A6CBF8: LitI2_Byte 7
  loc_A6CBFA: LitI4 8
  loc_A6CBFF: FLdRfVar var_A0
  loc_A6CC02: Ary1LdI2
  loc_A6CC03: MulI2
  loc_A6CC04: AddI2
  loc_A6CC05: LitI2_Byte 8
  loc_A6CC07: LitI4 9
  loc_A6CC0C: FLdRfVar var_A0
  loc_A6CC0F: Ary1LdI2
  loc_A6CC10: MulI2
  loc_A6CC11: AddI2
  loc_A6CC12: LitI2_Byte 9
  loc_A6CC14: LitI4 &HA
  loc_A6CC19: FLdRfVar var_A0
  loc_A6CC1C: Ary1LdI2
  loc_A6CC1D: MulI2
  loc_A6CC1E: AddI2
  loc_A6CC1F: FStI2 var_14E
  loc_A6CC22: FLdI2 var_14E
  loc_A6CC25: CR8I2
  loc_A6CC26: LitI2_Byte &HB
  loc_A6CC28: CR8I2
  loc_A6CC29: DivR8
  loc_A6CC2A: FStFPR8 var_158
  loc_A6CC2D: FLdI2 var_14E
  loc_A6CC30: CR8I2
  loc_A6CC31: FLdFPR8 var_158
  loc_A6CC34: FnFixR8
  loc_A6CC36: LitI2_Byte &HB
  loc_A6CC38: CR8I2
  loc_A6CC39: MulR8
  loc_A6CC3A: SubR4
  loc_A6CC3B: CI2R8
  loc_A6CC3C: FStI2 var_15A
  loc_A6CC3F: FLdI2 var_15A
  loc_A6CC42: LitI2_Byte &HA
  loc_A6CC44: LtI2
  loc_A6CC45: BranchF loc_A6CC57
  loc_A6CC48: FLdI2 var_15A
  loc_A6CC4B: LitI4 &HB
  loc_A6CC50: FLdRfVar var_A0
  loc_A6CC53: Ary1StI2
  loc_A6CC54: Branch loc_A6CD39
  loc_A6CC57: LitVarI2 var_D8, 3
  loc_A6CC5C: FLdRfVar var_15A
  loc_A6CC5F: CVarRef
  loc_A6CC64: FLdI2 var_15A
  loc_A6CC67: LitI2_Byte &HA
  loc_A6CC69: LtI2
  loc_A6CC6A: CVarBoolI2 var_B8
  loc_A6CC6E: FLdRfVar var_F8
  loc_A6CC71: ImpAdCallFPR4  = IIf(, , )
  loc_A6CC76: FLdRfVar var_F8
  loc_A6CC79: CI2Var
  loc_A6CC7A: LitI4 2
  loc_A6CC7F: FLdRfVar var_A0
  loc_A6CC82: Ary1StI2
  loc_A6CC83: FFreeVar var_B8 = "": var_D8 = ""
  loc_A6CC8C: LitI2_Byte 6
  loc_A6CC8E: LitI4 1
  loc_A6CC93: FLdRfVar var_A0
  loc_A6CC96: Ary1LdI2
  loc_A6CC97: MulI2
  loc_A6CC98: LitI2_Byte 7
  loc_A6CC9A: LitI4 2
  loc_A6CC9F: FLdRfVar var_A0
  loc_A6CCA2: Ary1LdI2
  loc_A6CCA3: MulI2
  loc_A6CCA4: AddI2
  loc_A6CCA5: LitI2_Byte 8
  loc_A6CCA7: LitI4 3
  loc_A6CCAC: FLdRfVar var_A0
  loc_A6CCAF: Ary1LdI2
  loc_A6CCB0: MulI2
  loc_A6CCB1: AddI2
  loc_A6CCB2: LitI2_Byte 9
  loc_A6CCB4: LitI4 4
  loc_A6CCB9: FLdRfVar var_A0
  loc_A6CCBC: Ary1LdI2
  loc_A6CCBD: MulI2
  loc_A6CCBE: AddI2
  loc_A6CCBF: LitI2_Byte 4
  loc_A6CCC1: LitI4 5
  loc_A6CCC6: FLdRfVar var_A0
  loc_A6CCC9: Ary1LdI2
  loc_A6CCCA: MulI2
  loc_A6CCCB: AddI2
  loc_A6CCCC: LitI2_Byte 5
  loc_A6CCCE: LitI4 6
  loc_A6CCD3: FLdRfVar var_A0
  loc_A6CCD6: Ary1LdI2
  loc_A6CCD7: MulI2
  loc_A6CCD8: AddI2
  loc_A6CCD9: LitI2_Byte 6
  loc_A6CCDB: LitI4 7
  loc_A6CCE0: FLdRfVar var_A0
  loc_A6CCE3: Ary1LdI2
  loc_A6CCE4: MulI2
  loc_A6CCE5: AddI2
  loc_A6CCE6: LitI2_Byte 7
  loc_A6CCE8: LitI4 8
  loc_A6CCED: FLdRfVar var_A0
  loc_A6CCF0: Ary1LdI2
  loc_A6CCF1: MulI2
  loc_A6CCF2: AddI2
  loc_A6CCF3: LitI2_Byte 8
  loc_A6CCF5: LitI4 9
  loc_A6CCFA: FLdRfVar var_A0
  loc_A6CCFD: Ary1LdI2
  loc_A6CCFE: MulI2
  loc_A6CCFF: AddI2
  loc_A6CD00: LitI2_Byte 9
  loc_A6CD02: LitI4 &HA
  loc_A6CD07: FLdRfVar var_A0
  loc_A6CD0A: Ary1LdI2
  loc_A6CD0B: MulI2
  loc_A6CD0C: AddI2
  loc_A6CD0D: FStI2 var_14E
  loc_A6CD10: FLdI2 var_14E
  loc_A6CD13: CR8I2
  loc_A6CD14: LitI2_Byte &HB
  loc_A6CD16: CR8I2
  loc_A6CD17: DivR8
  loc_A6CD18: FStFPR8 var_158
  loc_A6CD1B: FLdI2 var_14E
  loc_A6CD1E: CR8I2
  loc_A6CD1F: FLdFPR8 var_158
  loc_A6CD22: FnFixR8
  loc_A6CD24: LitI2_Byte &HB
  loc_A6CD26: CR8I2
  loc_A6CD27: MulR8
  loc_A6CD28: SubR4
  loc_A6CD29: CI2R8
  loc_A6CD2A: FStI2 var_15A
  loc_A6CD2D: FLdI2 var_15A
  loc_A6CD30: LitI4 &HB
  loc_A6CD35: FLdRfVar var_A0
  loc_A6CD38: Ary1StI2
  loc_A6CD39: ILdRf var_88
  loc_A6CD3C: LitI4 1
  loc_A6CD41: FLdRfVar var_A0
  loc_A6CD44: Ary1LdI2
  loc_A6CD45: CStrUI1
  loc_A6CD47: FStStrNoPop var_160
  loc_A6CD4A: ConcatStr
  loc_A6CD4B: FStStrNoPop var_164
  loc_A6CD4E: LitI4 2
  loc_A6CD53: FLdRfVar var_A0
  loc_A6CD56: Ary1LdI2
  loc_A6CD57: CStrUI1
  loc_A6CD59: FStStrNoPop var_168
  loc_A6CD5C: ConcatStr
  loc_A6CD5D: FStStrNoPop var_16C
  loc_A6CD60: LitStr "-"
  loc_A6CD63: ConcatStr
  loc_A6CD64: FStStr var_88
  loc_A6CD67: FFreeStr var_160 = "": var_164 = "": var_168 = ""
  loc_A6CD72: LitI2_Byte 3
  loc_A6CD74: CUI1I2
  loc_A6CD76: FLdRfVar var_A8
  loc_A6CD79: LitI2_Byte &HA
  loc_A6CD7B: CUI1I2
  loc_A6CD7D: LitI2_Byte 1
  loc_A6CD7F: CUI1I2
  loc_A6CD81: ForStepUI1 var_170
  loc_A6CD87: ILdRf var_88
  loc_A6CD8A: FLdUI1
  loc_A6CD8E: CI4UI1
  loc_A6CD8F: FLdRfVar var_A0
  loc_A6CD92: Ary1LdI2
  loc_A6CD93: CStrUI1
  loc_A6CD95: FStStrNoPop var_160
  loc_A6CD98: ConcatStr
  loc_A6CD99: FStStr var_88
  loc_A6CD9C: FFree1Str var_160
  loc_A6CD9F: FLdRfVar var_A8
  loc_A6CDA2: NextStepUI1 var_170
  loc_A6CDA8: ILdRf var_88
  loc_A6CDAB: LitStr "-"
  loc_A6CDAE: ConcatStr
  loc_A6CDAF: FStStrNoPop var_160
  loc_A6CDB2: LitI4 &HB
  loc_A6CDB7: FLdRfVar var_A0
  loc_A6CDBA: Ary1LdI2
  loc_A6CDBB: CStrUI1
  loc_A6CDBD: FStStrNoPop var_164
  loc_A6CDC0: ConcatStr
  loc_A6CDC1: FStStr var_88
  loc_A6CDC4: FFreeStr var_160 = ""
  loc_A6CDCB: LitI4 0
  loc_A6CDD0: LitI4 -1
  loc_A6CDD5: LitI4 1
  loc_A6CDDA: LitStr vbNullString
  loc_A6CDDD: LitStr "-"
  loc_A6CDE0: ILdRf var_88
  loc_A6CDE3: ImpAdCallI2 Replace(, , , , , )
  loc_A6CDE8: FStStrNoPop var_160
  loc_A6CDEB: ImpAdLdRf MemVar_C3D930
  loc_A6CDEE: NewIfNullPr frmRegistroUnico
  loc_A6CDF1: VCallAd Control_ID_CucuPersTxt
  loc_A6CDF4: FStAdFunc var_174
  loc_A6CDF7: FLdPr var_174
  loc_A6CDFA: frmRegistroUnico.TextBox.Text = from_stack_1
  loc_A6CDFF: FFree1Str var_160
  loc_A6CE02: FFree1Ad var_174
  loc_A6CE05: ILdRf Me
  loc_A6CE08: FStAdNoPop
  loc_A6CE0C: ImpAdLdRf MemVar_C44F9C
  loc_A6CE0F: NewIfNullPr Me
  loc_A6CE12: Me.Global.Unload from_stack_1
  loc_A6CE17: FFree1Ad var_174
  loc_A6CE1A: ExitProcCbHresult
End Function
