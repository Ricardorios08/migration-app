VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B504021C009402}#1.2#0"; "C:\WINDOWS\SysWOW64\richtx32.ocx"
Begin VB.Form fltPersonaCatastro
  Caption = "Filtrar Personas de Catastro"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "fltPersonaCatastro.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9156
  ClientHeight = 5400
  StartUpPosition = 2 'CenterScreen
  Moveable = 0   'False
  Begin VB.ListBox lstFields
    Left = 3840
    Top = 720
    Width = 1215
    Height = 1200
    Visible = 0   'False
    TabIndex = 11
  End
  Begin VB.CommandButton cmdOr
    Caption = "OR"
    Left = 2520
    Top = 1200
    Width = 1215
    Height = 375
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
  Begin VB.CommandButton cmdAnd
    Caption = "AND"
    Left = 2520
    Top = 720
    Width = 1215
    Height = 375
    TabIndex = 7
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
  Begin VB.CommandButton cmdLimpiar
    Caption = "Limpiar"
    Left = 5160
    Top = 1920
    Width = 1335
    Height = 495
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
  End
  Begin VB.CommandButton cmdQuitar
    Caption = "<< Quitar"
    Left = 5160
    Top = 1320
    Width = 1335
    Height = 495
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
  Begin VB.CommandButton cmdAgregar
    Caption = "Agregar >>"
    Left = 5160
    Top = 720
    Width = 1335
    Height = 495
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
  End
  Begin RichTextLib.RichTextBox rtfRecordSource
    Left = 120
    Top = 2520
    Width = 4935
    Height = 1335
    TabIndex = 10
    OleObjectBlob = "fltPersonaCatastro.frx":08CA
  End
  Begin VB.TextBox txtValor
    ForeColor = &HFF0000&
    Left = 4200
    Top = 120
    Width = 2295
    Height = 420
    TabIndex = 2
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
  Begin VB.ComboBox cboOperador
    Style = 2
    Left = 2520
    Top = 120
    Width = 1575
    Height = 420
    TabIndex = 1
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
  Begin VB.ListBox lstCampos
    Left = 120
    Top = 120
    Width = 2295
    Height = 2148
    TabIndex = 0
    Sorted = -1  'True
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1680
    Top = 4080
    Width = 1335
    Height = 495
    TabIndex = 9
    Cancel = -1  'True
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
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 120
    Top = 4080
    Width = 1335
    Height = 495
    TabIndex = 4
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

Attribute VB_Name = "fltPersonaCatastro"

Public sFiltro As String
Public sOrder As String


Private Sub txtValor_GotFocus() '9C1958
  'Data Table: 444238
  loc_9C1944: FLdPr Me
  loc_9C1947: VCallAd Control_ID_txtValor
  loc_9C194A: CVarAd
  loc_9C194E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1953: FFree1Var var_94 = ""
  loc_9C1956: ExitProcHresult
  loc_9C1957: Ary1StCy
End Sub

Private Sub txtValor_Validate(Cancel As Boolean) 'A7C158
  'Data Table: 444238
  loc_A7C0E8: FLdRfVar var_90
  loc_A7C0EB: FLdPr Me
  loc_A7C0EE: VCallAd Control_ID_lstCampos
  loc_A7C0F1: FStAdFunc var_8C
  loc_A7C0F4: FLdPr var_8C
  loc_A7C0F7:  = Me.Text
  loc_A7C0FC: FLdRfVar var_98
  loc_A7C0FF: FLdPr Me
  loc_A7C102: VCallAd Control_ID_txtValor
  loc_A7C105: FStAdFunc var_94
  loc_A7C108: FLdPr var_94
  loc_A7C10B:  = Me.Text
  loc_A7C110: ILdRf var_98
  loc_A7C113: ILdRf var_90
  loc_A7C116: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7C11B: FStStr var_88
  loc_A7C11E: FFreeStr var_90 = ""
  loc_A7C125: FFreeAd var_8C = ""
  loc_A7C12C: ILdRf var_88
  loc_A7C12F: LitStr vbNullString
  loc_A7C132: NeStr
  loc_A7C134: BranchF loc_A7C156
  loc_A7C137: ILdRf var_88
  loc_A7C13A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7C13F: FLdPr Me
  loc_A7C142: VCallAd Control_ID_txtValor
  loc_A7C145: CVarAd
  loc_A7C149: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7C14E: FFree1Var var_A8 = ""
  loc_A7C151: LitI2_Byte &HFF
  loc_A7C153: IStI2 Cancel
  loc_A7C156: ExitProcHresult
End Sub

Private Sub Form_Load() 'ADC640
  'Data Table: 444238
  loc_ADC4F0: FLdPr Me
  loc_ADC4F3: VCallAd Control_ID_lstCampos
  loc_ADC4F6: FStAdFunc var_88
  loc_ADC4F9: LitVarI2 var_98, 0
  loc_ADC4FE: PopAdLdVar
  loc_ADC4FF: LitStr "Padron"
  loc_ADC502: FLdPr var_88
  loc_ADC505: Me.AddItem from_stack_1, from_stack_2
  loc_ADC50A: LitVarI2 var_98, 1
  loc_ADC50F: PopAdLdVar
  loc_ADC510: LitStr "Nomenclatura"
  loc_ADC513: FLdPr var_88
  loc_ADC516: Me.AddItem from_stack_1, from_stack_2
  loc_ADC51B: LitVarI2 var_98, 2
  loc_ADC520: PopAdLdVar
  loc_ADC521: LitStr "C.U.I.L. - C.U.I.T."
  loc_ADC524: FLdPr var_88
  loc_ADC527: Me.AddItem from_stack_1, from_stack_2
  loc_ADC52C: LitVarI2 var_98, 3
  loc_ADC531: PopAdLdVar
  loc_ADC532: LitStr "Apellido y Nombre"
  loc_ADC535: FLdPr var_88
  loc_ADC538: Me.AddItem from_stack_1, from_stack_2
  loc_ADC53D: LitNothing
  loc_ADC53F: FStAd var_88 
  loc_ADC543: FLdPr Me
  loc_ADC546: VCallAd Control_ID_lstFields
  loc_ADC549: FStAdFunc var_9C
  loc_ADC54C: LitVarI2 var_98, 0
  loc_ADC551: PopAdLdVar
  loc_ADC552: LitStr "relacion.CuenCtct"
  loc_ADC555: FLdPr var_9C
  loc_ADC558: Me.AddItem from_stack_1, from_stack_2
  loc_ADC55D: LitVarI2 var_98, 1
  loc_ADC562: PopAdLdVar
  loc_ADC563: LitStr "inmueble.NomeInmu"
  loc_ADC566: FLdPr var_9C
  loc_ADC569: Me.AddItem from_stack_1, from_stack_2
  loc_ADC56E: LitVarI2 var_98, 2
  loc_ADC573: PopAdLdVar
  loc_ADC574: LitStr "relacion.CucuPers"
  loc_ADC577: FLdPr var_9C
  loc_ADC57A: Me.AddItem from_stack_1, from_stack_2
  loc_ADC57F: LitVarI2 var_98, 3
  loc_ADC584: PopAdLdVar
  loc_ADC585: LitStr "infogov.persona.DetaPers"
  loc_ADC588: FLdPr var_9C
  loc_ADC58B: Me.AddItem from_stack_1, from_stack_2
  loc_ADC590: LitNothing
  loc_ADC592: FStAd var_9C 
  loc_ADC596: FLdPr Me
  loc_ADC599: VCallAd Control_ID_cboOperador
  loc_ADC59C: FStAdFunc var_A0
  loc_ADC59F: LitVar_Missing var_98
  loc_ADC5A2: PopAdLdVar
  loc_ADC5A3: LitStr "Mayor o Igual que"
  loc_ADC5A6: FLdPr var_A0
  loc_ADC5A9: Me.AddItem from_stack_1, from_stack_2
  loc_ADC5AE: LitVar_Missing var_98
  loc_ADC5B1: PopAdLdVar
  loc_ADC5B2: LitStr "Mayor que"
  loc_ADC5B5: FLdPr var_A0
  loc_ADC5B8: Me.AddItem from_stack_1, from_stack_2
  loc_ADC5BD: LitVar_Missing var_98
  loc_ADC5C0: PopAdLdVar
  loc_ADC5C1: LitStr "Igual a"
  loc_ADC5C4: FLdPr var_A0
  loc_ADC5C7: Me.AddItem from_stack_1, from_stack_2
  loc_ADC5CC: LitVar_Missing var_98
  loc_ADC5CF: PopAdLdVar
  loc_ADC5D0: LitStr "Distinto a"
  loc_ADC5D3: FLdPr var_A0
  loc_ADC5D6: Me.AddItem from_stack_1, from_stack_2
  loc_ADC5DB: LitVar_Missing var_98
  loc_ADC5DE: PopAdLdVar
  loc_ADC5DF: LitStr "Contiene"
  loc_ADC5E2: FLdPr var_A0
  loc_ADC5E5: Me.AddItem from_stack_1, from_stack_2
  loc_ADC5EA: LitVar_Missing var_98
  loc_ADC5ED: PopAdLdVar
  loc_ADC5EE: LitStr "Menor que"
  loc_ADC5F1: FLdPr var_A0
  loc_ADC5F4: Me.AddItem from_stack_1, from_stack_2
  loc_ADC5F9: LitVar_Missing var_98
  loc_ADC5FC: PopAdLdVar
  loc_ADC5FD: LitStr "Menor o Igual que"
  loc_ADC600: FLdPr var_A0
  loc_ADC603: Me.AddItem from_stack_1, from_stack_2
  loc_ADC608: LitNothing
  loc_ADC60A: FStAd var_A0 
  loc_ADC60E: LitI2_Byte &HFF
  loc_ADC610: LitI2_Byte 0
  loc_ADC612: FLdPr Me
  loc_ADC615: VCallAd Control_ID_lstCampos
  loc_ADC618: FStAdFunc var_A4
  loc_ADC61B: FLdPr var_A4
  loc_ADC61E: Me.Selected = from_stack_1
  loc_ADC623: FFree1Ad var_A4
  loc_ADC626: LitStr "Igual a"
  loc_ADC629: FLdPr Me
  loc_ADC62C: VCallAd Control_ID_cboOperador
  loc_ADC62F: FStAdFunc var_A4
  loc_ADC632: FLdPr var_A4
  loc_ADC635: Me.Text = from_stack_1
  loc_ADC63A: FFree1Ad var_A4
  loc_ADC63D: ExitProcHresult
  loc_ADC63E: LitVar_Missing var_4000
End Sub

Private Sub OKButton_Click() 'A70F6C
  'Data Table: 444238
  loc_A70EFC: FLdPr Me
  loc_A70EFF: VCallAd Control_ID_rtfRecordSource
  loc_A70F02: FStAdFunc var_88
  loc_A70F05: FLdPr var_88
  loc_A70F08: LateIdLdVar var_98 DispID_-517 -1
  loc_A70F0F: CStrVarTmp
  loc_A70F10: FStStrNoPop var_9C
  loc_A70F13: LitStr vbNullString
  loc_A70F16: NeStr
  loc_A70F18: FFree1Str var_9C
  loc_A70F1B: FFree1Ad var_88
  loc_A70F1E: FFree1Var var_98 = ""
  loc_A70F21: BranchF loc_A70F4E
  loc_A70F24: FLdPr Me
  loc_A70F27: VCallAd Control_ID_rtfRecordSource
  loc_A70F2A: FStAdFunc var_88
  loc_A70F2D: FLdPr var_88
  loc_A70F30: LateIdLdVar var_98 DispID_-517 -1
  loc_A70F37: CStrVarTmp
  loc_A70F38: FStStrNoPop var_9C
  loc_A70F3B: FLdPr Me
  loc_A70F3E: MemStStrCopy
  loc_A70F42: FFree1Str var_9C
  loc_A70F45: FFree1Ad var_88
  loc_A70F48: FFree1Var var_98 = ""
  loc_A70F4B: Branch loc_A70F53
  loc_A70F4E: Call CancelButton_Click()
  loc_A70F53: ILdRf Me
  loc_A70F56: FStAdNoPop
  loc_A70F5A: ImpAdLdRf MemVar_D9C5D8
  loc_A70F5D: NewIfNullPr Global
  loc_A70F60: Global.Unload from_stack_1
  loc_A70F65: FFree1Ad var_88
  loc_A70F68: ExitProcHresult
End Sub

Private Sub cmdAnd_Click() 'A40828
  'Data Table: 444238
  loc_A407E4: FLdPr Me
  loc_A407E7: VCallAd Control_ID_rtfRecordSource
  loc_A407EA: FStAdFunc var_88
  loc_A407ED: FLdPr var_88
  loc_A407F0: LateIdLdVar var_98 DispID_-517 -1
  loc_A407F7: CStrVarTmp
  loc_A407F8: FStStrNoPop var_9C
  loc_A407FB: LitStr " AND "
  loc_A407FE: ConcatStr
  loc_A407FF: CVarStr var_AC
  loc_A40802: PopAdLdVar
  loc_A40803: FLdPr Me
  loc_A40806: VCallAd Control_ID_rtfRecordSource
  loc_A40809: FStAdFunc var_C0
  loc_A4080C: FLdPr var_C0
  loc_A4080F: LateIdSt
  loc_A40814: FFree1Str var_9C
  loc_A40817: FFreeAd var_88 = ""
  loc_A4081E: FFreeVar var_98 = ""
  loc_A40825: ExitProcHresult
  loc_A40826: FnAbsR4
End Sub

Private Sub cmdAgregar_Click() 'B2CFC4
  'Data Table: 444238
  loc_B2CD54: FLdRfVar var_90
  loc_B2CD57: FLdPr Me
  loc_B2CD5A: VCallAd Control_ID_txtValor
  loc_B2CD5D: FStAdFunc var_8C
  loc_B2CD60: FLdPr var_8C
  loc_B2CD63:  = Me.Text
  loc_B2CD68: ILdRf var_90
  loc_B2CD6B: LitStr vbNullString
  loc_B2CD6E: EqStr
  loc_B2CD70: FFree1Str var_90
  loc_B2CD73: FFree1Ad var_8C
  loc_B2CD76: BranchF loc_B2CD82
  loc_B2CD79: LitStr "Debe ingresar un valor. Reintente..."
  loc_B2CD7C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B2CD81: ExitProcHresult
  loc_B2CD82: FLdPr Me
  loc_B2CD85: VCallAd Control_ID_rtfRecordSource
  loc_B2CD88: FStAdFunc var_A4
  loc_B2CD8B: FLdPr var_A4
  loc_B2CD8E: LateIdLdVar var_B4 DispID_-517 -1
  loc_B2CD95: PopAd
  loc_B2CD97: FLdPr Me
  loc_B2CD9A: VCallAd Control_ID_rtfRecordSource
  loc_B2CD9D: FStAdFunc var_F8
  loc_B2CDA0: FLdPr var_F8
  loc_B2CDA3: LateIdLdVar var_108 DispID_-517 -1
  loc_B2CDAA: PopAd
  loc_B2CDAC: FLdPr Me
  loc_B2CDAF: VCallAd Control_ID_rtfRecordSource
  loc_B2CDB2: FStAdFunc var_8C
  loc_B2CDB5: FLdPr var_8C
  loc_B2CDB8: LateIdLdVar var_A0 DispID_-517 -1
  loc_B2CDBF: CStrVarTmp
  loc_B2CDC0: FStStrNoPop var_90
  loc_B2CDC3: LitStr vbNullString
  loc_B2CDC6: NeStr
  loc_B2CDC8: CVarBoolI2 var_178
  loc_B2CDCC: LitI4 4
  loc_B2CDD1: FLdRfVar var_B4
  loc_B2CDD4: CStrVarTmp
  loc_B2CDD5: CVarStr var_C4
  loc_B2CDD8: FLdRfVar var_D4
  loc_B2CDDB: ImpAdCallFPR4  = Right(, )
  loc_B2CDE0: FLdRfVar var_D4
  loc_B2CDE3: LitVarStr var_E4, "AND "
  loc_B2CDE8: HardType
  loc_B2CDE9: EqVar var_F4
  loc_B2CDED: LitI4 3
  loc_B2CDF2: FLdRfVar var_108
  loc_B2CDF5: CStrVarTmp
  loc_B2CDF6: CVarStr var_118
  loc_B2CDF9: FLdRfVar var_128
  loc_B2CDFC: ImpAdCallFPR4  = Right(, )
  loc_B2CE01: FLdRfVar var_128
  loc_B2CE04: LitVarStr var_138, "OR "
  loc_B2CE09: HardType
  loc_B2CE0A: EqVar var_148
  loc_B2CE0E: OrVar var_158
  loc_B2CE12: NotVar var_168
  loc_B2CE16: AndVar var_188
  loc_B2CE1A: CBoolVarNull
  loc_B2CE1C: FFree1Str var_90
  loc_B2CE1F: FFreeAd var_8C = "": var_A4 = ""
  loc_B2CE28: FFreeVar var_A0 = "": var_B4 = "": var_C4 = "": var_D4 = "": var_108 = "": var_118 = "": var_128 = ""
  loc_B2CE3B: BranchF loc_B2CE43
  loc_B2CE3E: Call cmdAnd_Click()
  loc_B2CE43: FLdRfVar var_90
  loc_B2CE46: FLdPr Me
  loc_B2CE49: VCallAd Control_ID_cboOperador
  loc_B2CE4C: FStAdFunc var_8C
  loc_B2CE4F: FLdPr var_8C
  loc_B2CE52:  = Me.Text
  loc_B2CE57: ILdRf var_90
  loc_B2CE5A: LitStr "Contiene"
  loc_B2CE5D: EqStr
  loc_B2CE5F: FFree1Str var_90
  loc_B2CE62: FFree1Ad var_8C
  loc_B2CE65: BranchF loc_B2CE71
  loc_B2CE68: LitStr Chr(37)
  loc_B2CE6B: FStStrCopy var_88
  loc_B2CE6E: Branch loc_B2CE77
  loc_B2CE71: LitStr vbNullString
  loc_B2CE74: FStStrCopy var_88
  loc_B2CE77: FLdPr Me
  loc_B2CE7A: VCallAd Control_ID_rtfRecordSource
  loc_B2CE7D: FStAdFunc var_8C
  loc_B2CE80: FLdPr var_8C
  loc_B2CE83: LateIdLdVar var_A0 DispID_-517 -1
  loc_B2CE8A: CStrVarTmp
  loc_B2CE8B: FStStrNoPop var_190
  loc_B2CE8E: FLdRfVar var_90
  loc_B2CE91: FLdRfVar var_18A
  loc_B2CE94: FLdPr Me
  loc_B2CE97: VCallAd Control_ID_lstCampos
  loc_B2CE9A: FStAdFunc var_A4
  loc_B2CE9D: FLdPr var_A4
  loc_B2CEA0:  = Me.ListIndex
  loc_B2CEA5: FLdI2 var_18A
  loc_B2CEA8: FLdPr Me
  loc_B2CEAB: VCallAd Control_ID_lstFields
  loc_B2CEAE: FStAdFunc var_F8
  loc_B2CEB1: FLdPr var_F8
  loc_B2CEB4: from_stack_2 = Me.List(from_stack_1)
  loc_B2CEB9: ILdRf var_90
  loc_B2CEBC: ConcatStr
  loc_B2CEBD: FStStrNoPop var_194
  loc_B2CEC0: LitStr " "
  loc_B2CEC3: ConcatStr
  loc_B2CEC4: FStStrNoPop var_1A4
  loc_B2CEC7: FLdRfVar var_19C
  loc_B2CECA: FLdPr Me
  loc_B2CECD: VCallAd Control_ID_cboOperador
  loc_B2CED0: FStAdFunc var_198
  loc_B2CED3: FLdPr var_198
  loc_B2CED6:  = Me.Text
  loc_B2CEDB: FLdZeroAd var_19C
  loc_B2CEDE: PopTmpLdAdStr
  loc_B2CEE2: ImpAdCallI2 Proc_272_0_A83C54()
  loc_B2CEE7: FStStrNoPop var_1A8
  loc_B2CEEA: ConcatStr
  loc_B2CEEB: FStStrNoPop var_1AC
  loc_B2CEEE: LitStr " '"
  loc_B2CEF1: ILdRf var_88
  loc_B2CEF4: ConcatStr
  loc_B2CEF5: FStStrNoPop var_1B0
  loc_B2CEF8: ConcatStr
  loc_B2CEF9: FStStrNoPop var_1BC
  loc_B2CEFC: FLdRfVar var_1B8
  loc_B2CEFF: FLdPr Me
  loc_B2CF02: VCallAd Control_ID_txtValor
  loc_B2CF05: FStAdFunc var_1B4
  loc_B2CF08: FLdPr var_1B4
  loc_B2CF0B:  = Me.Text
  loc_B2CF10: ILdRf var_1B8
  loc_B2CF13: ConcatStr
  loc_B2CF14: FStStrNoPop var_1C0
  loc_B2CF17: ILdRf var_88
  loc_B2CF1A: ConcatStr
  loc_B2CF1B: FStStrNoPop var_1C4
  loc_B2CF1E: LitStr "'"
  loc_B2CF21: ConcatStr
  loc_B2CF22: CVarStr var_B4
  loc_B2CF25: PopAdLdVar
  loc_B2CF26: FLdPr Me
  loc_B2CF29: VCallAd Control_ID_rtfRecordSource
  loc_B2CF2C: FStAdFunc var_1C8
  loc_B2CF2F: FLdPr var_1C8
  loc_B2CF32: LateIdSt
  loc_B2CF37: FFreeStr var_190 = "": var_90 = "": var_194 = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1BC = "": var_1B8 = "": var_1C0 = ""
  loc_B2CF52: FFreeAd var_8C = "": var_A4 = "": var_F8 = "": var_198 = "": var_1B4 = ""
  loc_B2CF61: FFreeVar var_A0 = ""
  loc_B2CF68: FLdPr Me
  loc_B2CF6B: MemLdStr sOrder
  loc_B2CF6E: LitStr vbNullString
  loc_B2CF71: EqStr
  loc_B2CF73: BranchF loc_B2CFC0
  loc_B2CF76: LitStr "ORDER BY relacion.CodiOfic,"
  loc_B2CF79: FLdRfVar var_90
  loc_B2CF7C: FLdRfVar var_18A
  loc_B2CF7F: FLdPr Me
  loc_B2CF82: VCallAd Control_ID_lstCampos
  loc_B2CF85: FStAdFunc var_8C
  loc_B2CF88: FLdPr var_8C
  loc_B2CF8B:  = Me.ListIndex
  loc_B2CF90: FLdI2 var_18A
  loc_B2CF93: FLdPr Me
  loc_B2CF96: VCallAd Control_ID_lstFields
  loc_B2CF99: FStAdFunc var_A4
  loc_B2CF9C: FLdPr var_A4
  loc_B2CF9F: from_stack_2 = Me.List(from_stack_1)
  loc_B2CFA4: ILdRf var_90
  loc_B2CFA7: ConcatStr
  loc_B2CFA8: FStStrNoPop var_190
  loc_B2CFAB: FLdPr Me
  loc_B2CFAE: MemStStrCopy
  loc_B2CFB2: FFreeStr var_90 = ""
  loc_B2CFB9: FFreeAd var_8C = ""
  loc_B2CFC0: ExitProcHresult
End Sub

Private Sub cmdLimpiar_Click() '9F5178
  'Data Table: 444238
  loc_9F5150: LitVarStr var_94, vbNullString
  loc_9F5155: PopAdLdVar
  loc_9F5156: FLdPr Me
  loc_9F5159: VCallAd Control_ID_rtfRecordSource
  loc_9F515C: FStAdFunc var_A8
  loc_9F515F: FLdPr var_A8
  loc_9F5162: LateIdSt
  loc_9F5167: FFree1Ad var_A8
  loc_9F516A: LitStr vbNullString
  loc_9F516D: FLdPr Me
  loc_9F5170: MemStStrCopy
  loc_9F5174: ExitProcHresult
End Sub

Private Sub cmdQuitar_Click() 'AFD10C
  'Data Table: 444238
  loc_AFCF3C: FLdPr Me
  loc_AFCF3F: VCallAd Control_ID_rtfRecordSource
  loc_AFCF42: FStAdFunc var_8C
  loc_AFCF45: FLdPr var_8C
  loc_AFCF48: LateIdLdVar var_9C DispID_-517 -1
  loc_AFCF4F: PopAd
  loc_AFCF51: LitI4 0
  loc_AFCF56: LitI4 -1
  loc_AFCF5B: LitStr " AND"
  loc_AFCF5E: FLdRfVar var_9C
  loc_AFCF61: CStrVarTmp
  loc_AFCF62: FStStrNoPop var_A0
  loc_AFCF65: ImpAdCallI2 InStrRev(, , , )
  loc_AFCF6A: CI2I4
  loc_AFCF6B: FStI2 var_86
  loc_AFCF6E: FFree1Str var_A0
  loc_AFCF71: FFree1Ad var_8C
  loc_AFCF74: FFree1Var var_9C = ""
  loc_AFCF77: FLdPr Me
  loc_AFCF7A: VCallAd Control_ID_rtfRecordSource
  loc_AFCF7D: FStAdFunc var_8C
  loc_AFCF80: FLdPr var_8C
  loc_AFCF83: LateIdLdVar var_9C DispID_-517 -1
  loc_AFCF8A: PopAd
  loc_AFCF8C: LitI4 0
  loc_AFCF91: LitI4 -1
  loc_AFCF96: LitStr " OR"
  loc_AFCF99: FLdRfVar var_9C
  loc_AFCF9C: CStrVarTmp
  loc_AFCF9D: FStStrNoPop var_A0
  loc_AFCFA0: ImpAdCallI2 InStrRev(, , , )
  loc_AFCFA5: CI2I4
  loc_AFCFA6: FStI2 var_88
  loc_AFCFA9: FFree1Str var_A0
  loc_AFCFAC: FFree1Ad var_8C
  loc_AFCFAF: FFree1Var var_9C = ""
  loc_AFCFB2: FLdI2 var_86
  loc_AFCFB5: LitI2_Byte 0
  loc_AFCFB7: EqI2
  loc_AFCFB8: FLdI2 var_88
  loc_AFCFBB: LitI2_Byte 0
  loc_AFCFBD: EqI2
  loc_AFCFBE: AndI4
  loc_AFCFBF: BranchF loc_AFCFDF
  loc_AFCFC2: LitVarStr var_B0, vbNullString
  loc_AFCFC7: PopAdLdVar
  loc_AFCFC8: FLdPr Me
  loc_AFCFCB: VCallAd Control_ID_rtfRecordSource
  loc_AFCFCE: FStAdFunc var_8C
  loc_AFCFD1: FLdPr var_8C
  loc_AFCFD4: LateIdSt
  loc_AFCFD9: FFree1Ad var_8C
  loc_AFCFDC: Branch loc_AFD108
  loc_AFCFDF: FLdI2 var_86
  loc_AFCFE2: FLdI2 var_88
  loc_AFCFE5: GtI2
  loc_AFCFE6: BranchF loc_AFD07A
  loc_AFCFE9: FLdPr Me
  loc_AFCFEC: VCallAd Control_ID_rtfRecordSource
  loc_AFCFEF: FStAdFunc var_8C
  loc_AFCFF2: FLdPr var_8C
  loc_AFCFF5: LateIdLdVar var_9C DispID_-517 -1
  loc_AFCFFC: PopAd
  loc_AFCFFE: FLdPr Me
  loc_AFD001: VCallAd Control_ID_rtfRecordSource
  loc_AFD004: FStAdFunc var_C4
  loc_AFD007: FLdPr var_C4
  loc_AFD00A: LateIdLdVar var_D4 DispID_-517 -1
  loc_AFD011: PopAd
  loc_AFD013: LitI4 0
  loc_AFD018: LitI4 -1
  loc_AFD01D: LitStr " AND"
  loc_AFD020: FLdRfVar var_D4
  loc_AFD023: CStrVarTmp
  loc_AFD024: FStStrNoPop var_A0
  loc_AFD027: ImpAdCallI2 InStrRev(, , , )
  loc_AFD02C: LitI4 1
  loc_AFD031: SubI4
  loc_AFD032: CVarI4
  loc_AFD036: LitI4 1
  loc_AFD03B: FLdRfVar var_9C
  loc_AFD03E: CStrVarTmp
  loc_AFD03F: FStStrNoPop var_D8
  loc_AFD042: ImpAdCallI2 Mid$(, , )
  loc_AFD047: CVarStr var_F8
  loc_AFD04A: PopAdLdVar
  loc_AFD04B: FLdPr Me
  loc_AFD04E: VCallAd Control_ID_rtfRecordSource
  loc_AFD051: FStAdFunc var_FC
  loc_AFD054: FLdPr var_FC
  loc_AFD057: LateIdSt
  loc_AFD05C: FFreeStr var_A0 = ""
  loc_AFD063: FFreeAd var_8C = "": var_C4 = ""
  loc_AFD06C: FFreeVar var_9C = "": var_D4 = "": var_E8 = ""
  loc_AFD077: Branch loc_AFD108
  loc_AFD07A: FLdPr Me
  loc_AFD07D: VCallAd Control_ID_rtfRecordSource
  loc_AFD080: FStAdFunc var_8C
  loc_AFD083: FLdPr var_8C
  loc_AFD086: LateIdLdVar var_9C DispID_-517 -1
  loc_AFD08D: PopAd
  loc_AFD08F: FLdPr Me
  loc_AFD092: VCallAd Control_ID_rtfRecordSource
  loc_AFD095: FStAdFunc var_C4
  loc_AFD098: FLdPr var_C4
  loc_AFD09B: LateIdLdVar var_D4 DispID_-517 -1
  loc_AFD0A2: PopAd
  loc_AFD0A4: LitI4 0
  loc_AFD0A9: LitI4 -1
  loc_AFD0AE: LitStr " OR"
  loc_AFD0B1: FLdRfVar var_D4
  loc_AFD0B4: CStrVarTmp
  loc_AFD0B5: FStStrNoPop var_A0
  loc_AFD0B8: ImpAdCallI2 InStrRev(, , , )
  loc_AFD0BD: LitI4 1
  loc_AFD0C2: SubI4
  loc_AFD0C3: CVarI4
  loc_AFD0C7: LitI4 1
  loc_AFD0CC: FLdRfVar var_9C
  loc_AFD0CF: CStrVarTmp
  loc_AFD0D0: FStStrNoPop var_D8
  loc_AFD0D3: ImpAdCallI2 Mid$(, , )
  loc_AFD0D8: CVarStr var_F8
  loc_AFD0DB: PopAdLdVar
  loc_AFD0DC: FLdPr Me
  loc_AFD0DF: VCallAd Control_ID_rtfRecordSource
  loc_AFD0E2: FStAdFunc var_FC
  loc_AFD0E5: FLdPr var_FC
  loc_AFD0E8: LateIdSt
  loc_AFD0ED: FFreeStr var_A0 = ""
  loc_AFD0F4: FFreeAd var_8C = "": var_C4 = ""
  loc_AFD0FD: FFreeVar var_9C = "": var_D4 = "": var_E8 = ""
  loc_AFD108: ExitProcHresult
End Sub

Private Sub cmdOr_Click() 'A407A0
  'Data Table: 444238
  loc_A4075C: FLdPr Me
  loc_A4075F: VCallAd Control_ID_rtfRecordSource
  loc_A40762: FStAdFunc var_88
  loc_A40765: FLdPr var_88
  loc_A40768: LateIdLdVar var_98 DispID_-517 -1
  loc_A4076F: CStrVarTmp
  loc_A40770: FStStrNoPop var_9C
  loc_A40773: LitStr " OR "
  loc_A40776: ConcatStr
  loc_A40777: CVarStr var_AC
  loc_A4077A: PopAdLdVar
  loc_A4077B: FLdPr Me
  loc_A4077E: VCallAd Control_ID_rtfRecordSource
  loc_A40781: FStAdFunc var_C0
  loc_A40784: FLdPr var_C0
  loc_A40787: LateIdSt
  loc_A4078C: FFree1Str var_9C
  loc_A4078F: FFreeAd var_88 = ""
  loc_A40796: FFreeVar var_98 = ""
  loc_A4079D: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9E746C
  'Data Table: 444238
  loc_9E744C: LitStr vbNullString
  loc_9E744F: FLdPr Me
  loc_9E7452: MemStStrCopy
  loc_9E7456: ILdRf Me
  loc_9E7459: FStAdNoPop
  loc_9E745D: ImpAdLdRf MemVar_D9C5D8
  loc_9E7460: NewIfNullPr Global
  loc_9E7463: Global.Unload from_stack_1
  loc_9E7468: FFree1Ad var_88
  loc_9E746B: ExitProcHresult
End Sub

Public Function sFiltroGet() '444AA4
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '444AB3
  sFiltro = Value
End Sub

Public Function sOrderGet() '444AC2
  sOrderGet = sOrder
End Function

Public Sub sOrderPut(Value) '444AD1
  sOrder = Value
End Sub

Public Function translateField(Label) 'B04F24
  'Data Table: 444238
  loc_B04D18: ZeroRetVal
  loc_B04D1A: ILdI4 Label
  loc_B04D1D: FStStrCopy var_8C
  loc_B04D20: ILdRf var_8C
  loc_B04D23: FLdRfVar translateField
  loc_B04D26: LitI2_Byte 0
  loc_B04D28: FLdPr Me
  loc_B04D2B: VCallAd Control_ID_lstCampos
  loc_B04D2E: FStAdFunc var_90
  loc_B04D31: FLdPr var_90
  loc_B04D34: from_stack_2 = Me.List(from_stack_1)
  loc_B04D39: ILdRf translateField
  loc_B04D3C: EqStr
  loc_B04D3E: FFree1Str translateField
  loc_B04D41: FFree1Ad var_90
  loc_B04D44: BranchF loc_B04D69
  loc_B04D47: FLdRfVar translateField
  loc_B04D4A: LitI2_Byte 0
  loc_B04D4C: FLdPr Me
  loc_B04D4F: VCallAd Control_ID_lstFields
  loc_B04D52: FStAdFunc var_90
  loc_B04D55: FLdPr var_90
  loc_B04D58: from_stack_2 = Me.List(from_stack_1)
  loc_B04D5D: FLdZeroAd translateField
  loc_B04D60: FStStr var_88
  loc_B04D63: FFree1Ad var_90
  loc_B04D66: Branch loc_B04F1C
  loc_B04D69: ILdRf var_8C
  loc_B04D6C: FLdRfVar translateField
  loc_B04D6F: LitI2_Byte 1
  loc_B04D71: FLdPr Me
  loc_B04D74: VCallAd Control_ID_lstCampos
  loc_B04D77: FStAdFunc var_90
  loc_B04D7A: FLdPr var_90
  loc_B04D7D: from_stack_2 = Me.List(from_stack_1)
  loc_B04D82: ILdRf translateField
  loc_B04D85: EqStr
  loc_B04D87: FFree1Str translateField
  loc_B04D8A: FFree1Ad var_90
  loc_B04D8D: BranchF loc_B04DB2
  loc_B04D90: FLdRfVar translateField
  loc_B04D93: LitI2_Byte 1
  loc_B04D95: FLdPr Me
  loc_B04D98: VCallAd Control_ID_lstFields
  loc_B04D9B: FStAdFunc var_90
  loc_B04D9E: FLdPr var_90
  loc_B04DA1: from_stack_2 = Me.List(from_stack_1)
  loc_B04DA6: FLdZeroAd translateField
  loc_B04DA9: FStStr var_88
  loc_B04DAC: FFree1Ad var_90
  loc_B04DAF: Branch loc_B04F1C
  loc_B04DB2: ILdRf var_8C
  loc_B04DB5: FLdRfVar translateField
  loc_B04DB8: LitI2_Byte 2
  loc_B04DBA: FLdPr Me
  loc_B04DBD: VCallAd Control_ID_lstCampos
  loc_B04DC0: FStAdFunc var_90
  loc_B04DC3: FLdPr var_90
  loc_B04DC6: from_stack_2 = Me.List(from_stack_1)
  loc_B04DCB: ILdRf translateField
  loc_B04DCE: EqStr
  loc_B04DD0: FFree1Str translateField
  loc_B04DD3: FFree1Ad var_90
  loc_B04DD6: BranchF loc_B04DFB
  loc_B04DD9: FLdRfVar translateField
  loc_B04DDC: LitI2_Byte 2
  loc_B04DDE: FLdPr Me
  loc_B04DE1: VCallAd Control_ID_lstFields
  loc_B04DE4: FStAdFunc var_90
  loc_B04DE7: FLdPr var_90
  loc_B04DEA: from_stack_2 = Me.List(from_stack_1)
  loc_B04DEF: FLdZeroAd translateField
  loc_B04DF2: FStStr var_88
  loc_B04DF5: FFree1Ad var_90
  loc_B04DF8: Branch loc_B04F1C
  loc_B04DFB: ILdRf var_8C
  loc_B04DFE: FLdRfVar translateField
  loc_B04E01: LitI2_Byte 3
  loc_B04E03: FLdPr Me
  loc_B04E06: VCallAd Control_ID_lstCampos
  loc_B04E09: FStAdFunc var_90
  loc_B04E0C: FLdPr var_90
  loc_B04E0F: from_stack_2 = Me.List(from_stack_1)
  loc_B04E14: ILdRf translateField
  loc_B04E17: EqStr
  loc_B04E19: FFree1Str translateField
  loc_B04E1C: FFree1Ad var_90
  loc_B04E1F: BranchF loc_B04E44
  loc_B04E22: FLdRfVar translateField
  loc_B04E25: LitI2_Byte 3
  loc_B04E27: FLdPr Me
  loc_B04E2A: VCallAd Control_ID_lstFields
  loc_B04E2D: FStAdFunc var_90
  loc_B04E30: FLdPr var_90
  loc_B04E33: from_stack_2 = Me.List(from_stack_1)
  loc_B04E38: FLdZeroAd translateField
  loc_B04E3B: FStStr var_88
  loc_B04E3E: FFree1Ad var_90
  loc_B04E41: Branch loc_B04F1C
  loc_B04E44: ILdRf var_8C
  loc_B04E47: FLdRfVar translateField
  loc_B04E4A: LitI2_Byte 4
  loc_B04E4C: FLdPr Me
  loc_B04E4F: VCallAd Control_ID_lstCampos
  loc_B04E52: FStAdFunc var_90
  loc_B04E55: FLdPr var_90
  loc_B04E58: from_stack_2 = Me.List(from_stack_1)
  loc_B04E5D: ILdRf translateField
  loc_B04E60: EqStr
  loc_B04E62: FFree1Str translateField
  loc_B04E65: FFree1Ad var_90
  loc_B04E68: BranchF loc_B04E8D
  loc_B04E6B: FLdRfVar translateField
  loc_B04E6E: LitI2_Byte 4
  loc_B04E70: FLdPr Me
  loc_B04E73: VCallAd Control_ID_lstFields
  loc_B04E76: FStAdFunc var_90
  loc_B04E79: FLdPr var_90
  loc_B04E7C: from_stack_2 = Me.List(from_stack_1)
  loc_B04E81: FLdZeroAd translateField
  loc_B04E84: FStStr var_88
  loc_B04E87: FFree1Ad var_90
  loc_B04E8A: Branch loc_B04F1C
  loc_B04E8D: ILdRf var_8C
  loc_B04E90: FLdRfVar translateField
  loc_B04E93: LitI2_Byte 5
  loc_B04E95: FLdPr Me
  loc_B04E98: VCallAd Control_ID_lstCampos
  loc_B04E9B: FStAdFunc var_90
  loc_B04E9E: FLdPr var_90
  loc_B04EA1: from_stack_2 = Me.List(from_stack_1)
  loc_B04EA6: ILdRf translateField
  loc_B04EA9: EqStr
  loc_B04EAB: FFree1Str translateField
  loc_B04EAE: FFree1Ad var_90
  loc_B04EB1: BranchF loc_B04ED6
  loc_B04EB4: FLdRfVar translateField
  loc_B04EB7: LitI2_Byte 5
  loc_B04EB9: FLdPr Me
  loc_B04EBC: VCallAd Control_ID_lstFields
  loc_B04EBF: FStAdFunc var_90
  loc_B04EC2: FLdPr var_90
  loc_B04EC5: from_stack_2 = Me.List(from_stack_1)
  loc_B04ECA: FLdZeroAd translateField
  loc_B04ECD: FStStr var_88
  loc_B04ED0: FFree1Ad var_90
  loc_B04ED3: Branch loc_B04F1C
  loc_B04ED6: ILdRf var_8C
  loc_B04ED9: FLdRfVar translateField
  loc_B04EDC: LitI2_Byte 6
  loc_B04EDE: FLdPr Me
  loc_B04EE1: VCallAd Control_ID_lstCampos
  loc_B04EE4: FStAdFunc var_90
  loc_B04EE7: FLdPr var_90
  loc_B04EEA: from_stack_2 = Me.List(from_stack_1)
  loc_B04EEF: ILdRf translateField
  loc_B04EF2: EqStr
  loc_B04EF4: FFree1Str translateField
  loc_B04EF7: FFree1Ad var_90
  loc_B04EFA: BranchF loc_B04F1C
  loc_B04EFD: FLdRfVar translateField
  loc_B04F00: LitI2_Byte 6
  loc_B04F02: FLdPr Me
  loc_B04F05: VCallAd Control_ID_lstFields
  loc_B04F08: FStAdFunc var_90
  loc_B04F0B: FLdPr var_90
  loc_B04F0E: from_stack_2 = Me.List(from_stack_1)
  loc_B04F13: FLdZeroAd translateField
  loc_B04F16: FStStr var_88
  loc_B04F19: FFree1Ad var_90
  loc_B04F1C: ExitProcCbHresult
End Function
