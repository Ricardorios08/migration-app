VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarConceptoDsVcConCreacion
  Caption = "Buscar Concepto de Deudores Varios Con Creacion de Ceuntas por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarConceptoDsVcConCreacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9552
  ClientHeight = 5580
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 720
    Width = 6855
    Height = 360
    TabIndex = 1
    Tag = "0"
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
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 240
    Width = 1095
    Height = 360
    TabIndex = 0
    Tag = "0"
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
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 120
    Top = 4800
    Width = 1335
    Height = 495
    TabIndex = 3
    Tag = "2"
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 9135
    Height = 3495
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarConceptoDsVcConCreacion.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 1560
    Top = 720
    Width = 810
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
    Caption = "Codigo:"
    Left = 1560
    Top = 240
    Width = 810
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
End

Attribute VB_Name = "dlgBuscarConceptoDsVcConCreacion"

Public ConceptoCLS As New Class


Private Sub dgdABMS_DblClick() '9D64D8
  'Data Table: 413338
  loc_9D64C0: ILdRf Me
  loc_9D64C3: FStAdNoPop
  loc_9D64C7: ImpAdLdRf MemVar_D9C5D8
  loc_9D64CA: NewIfNullPr Global
  loc_9D64CD: Global.Unload from_stack_1
  loc_9D64D2: FFree1Ad var_88
  loc_9D64D5: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EE328
  'Data Table: 413338
  loc_9EE304: ILdI2 KeyCode
  loc_9EE307: CI4UI1
  loc_9EE308: LitI4 &HD
  loc_9EE30D: EqI4
  loc_9EE30E: BranchF loc_9EE326
  loc_9EE311: ILdRf Me
  loc_9EE314: FStAdNoPop
  loc_9EE318: ImpAdLdRf MemVar_D9C5D8
  loc_9EE31B: NewIfNullPr Global
  loc_9EE31E: Global.Unload from_stack_1
  loc_9EE323: FFree1Ad var_88
  loc_9EE326: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'AA6EFC
  'Data Table: 413338
  loc_AA6E58: LitStr vbNullString
  loc_AA6E5B: FLdPr Me
  loc_AA6E5E: VCallAd Control_ID_Campo2Txt
  loc_AA6E61: FStAdFunc var_88
  loc_AA6E64: FLdPr var_88
  loc_AA6E67: Me.Text = from_stack_1
  loc_AA6E6C: FFree1Ad var_88
  loc_AA6E6F: LitStr "SELECT CodiConc, DetaConc FROM concepto "
  loc_AA6E72: LitStr " WHERE PeriInfo = "
  loc_AA6E75: ConcatStr
  loc_AA6E76: CVarStr var_C8
  loc_AA6E79: LitI2_Byte 0
  loc_AA6E7B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA6E80: CVarDate var_A8
  loc_AA6E84: FLdRfVar var_B8
  loc_AA6E87: ImpAdCallFPR4  = Year()
  loc_AA6E8C: FLdRfVar var_B8
  loc_AA6E8F: ConcatVar var_D8
  loc_AA6E93: LitVarStr var_E8, " AND VigeConc = '1' AND DevcConc = 'Si' "
  loc_AA6E98: ConcatVar var_F8
  loc_AA6E9C: LitVarStr var_108, " AND CodiConc like '"
  loc_AA6EA1: ConcatVar var_118
  loc_AA6EA5: FLdRfVar var_11C
  loc_AA6EA8: FLdPr Me
  loc_AA6EAB: VCallAd Control_ID_Campo1Txt
  loc_AA6EAE: FStAdFunc var_88
  loc_AA6EB1: FLdPr var_88
  loc_AA6EB4:  = Me.Text
  loc_AA6EB9: FLdZeroAd var_11C
  loc_AA6EBC: CVarStr var_12C
  loc_AA6EBF: ConcatVar var_13C
  loc_AA6EC3: LitVarStr var_14C, Chr(37) & "' ORDER BY PeriInfo, CodiConc"
  loc_AA6EC8: ConcatVar var_15C
  loc_AA6ECC: CStrVarVal var_160
  loc_AA6ED0: FLdPr Me
  loc_AA6ED3: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AA6ED6: NewIfNullPr clsconcepto
  loc_AA6ED9: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_AA6EDE: FFree1Str var_160
  loc_AA6EE1: FFree1Ad var_88
  loc_AA6EE4: FFreeVar var_A8 = "": var_C8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_12C = "": var_13C = ""
  loc_AA6EF9: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D6654
  'Data Table: 413338
  loc_9D663C: LitStr "0123456789"
  loc_9D663F: FStStrCopy var_88
  loc_9D6642: FLdRfVar var_88
  loc_9D6645: ILdRf KeyAscii
  loc_9D6648: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D664D: IStI2 KeyAscii
  loc_9D6650: FFree1Str var_88
  loc_9D6653: ExitProcHresult
End Sub

Private Sub Form_Load() 'AAC0F8
  'Data Table: 413338
  loc_AAC044: LitVarStr var_C4, "SELECT CodiConc, DetaConc FROM concepto WHERE PeriInfo = "
  loc_AAC049: LitI2_Byte 0
  loc_AAC04B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AAC050: CVarDate var_A4
  loc_AAC054: FLdRfVar var_B4
  loc_AAC057: ImpAdCallFPR4  = Year()
  loc_AAC05C: FLdRfVar var_B4
  loc_AAC05F: ConcatVar var_D4
  loc_AAC063: LitVarStr var_E4, " AND VigeConc = '1' AND DevcConc = 'Si' "
  loc_AAC068: ConcatVar var_F4
  loc_AAC06C: LitVarStr var_104, " ORDER BY DetaConc"
  loc_AAC071: ConcatVar var_114
  loc_AAC075: CStrVarVal var_118
  loc_AAC079: FLdPr Me
  loc_AAC07C: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AAC07F: NewIfNullPr clsconcepto
  loc_AAC082: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_AAC087: FFree1Str var_118
  loc_AAC08A: FFreeVar var_A4 = "": var_B4 = "": var_D4 = "": var_F4 = ""
  loc_AAC097: LitI4 0
  loc_AAC09C: LitI4 1
  loc_AAC0A1: FLdRfVar var_11C
  loc_AAC0A4: Redim
  loc_AAC0AE: FLdPr Me
  loc_AAC0B1: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AAC0B4: NewIfNullAd
  loc_AAC0B7: FStAd var_120 
  loc_AAC0BB: FLdRfVar var_120
  loc_AAC0BE: CVarRef
  loc_AAC0C3: ParmAry1St
  loc_AAC0C9: FLdPr Me
  loc_AAC0CC: VCallAd Control_ID_dgdABMS
  loc_AAC0CF: CVarAd
  loc_AAC0D3: ParmAry1St
  loc_AAC0D9: FLdRfVar var_11C
  loc_AAC0DC: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AAC0E1: ILdRf var_120
  loc_AAC0E4: CastAd
  loc_AAC0E7: FLdPr Me
  loc_AAC0EA: MemStAdFunc
  loc_AAC0EE: FLdRfVar var_11C
  loc_AAC0F1: Erase
  loc_AAC0F2: FFree1Ad var_120
  loc_AAC0F5: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D5F34
  'Data Table: 413338
  loc_9D5F1C: FLdPr Me
  loc_9D5F1F: VCallAd Control_ID_Campo2Txt
  loc_9D5F22: FStAdFunc var_88
  loc_9D5F25: FLdPr var_88
  loc_9D5F28: Me.SetFocus
  loc_9D5F2D: FFree1Ad var_88
  loc_9D5F30: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A1093C
  'Data Table: 413338
  loc_A10900: ILdI2 KeyAscii
  loc_A10903: LitI2_Byte &HD
  loc_A10905: EqI2
  loc_A10906: BranchF loc_A10917
  loc_A10909: LitVar_TRUE var_A4
  loc_A1090C: LitStr "{Tab}"
  loc_A1090F: ImpAdCallFPR4 SendKeys , 
  loc_A10914: FFree1Var var_A4 = ""
  loc_A10917: ILdI2 KeyAscii
  loc_A1091A: LitI2_Byte &H1B
  loc_A1091C: EqI2
  loc_A1091D: BranchF loc_A1093A
  loc_A10920: ILdRf Me
  loc_A10923: FStAdNoPop
  loc_A10927: ImpAdLdRf MemVar_D9C5D8
  loc_A1092A: NewIfNullPr Global
  loc_A1092D: Global.Unload from_stack_1
  loc_A10932: FFree1Ad var_A8
  loc_A10935: LitI2_Byte 0
  loc_A10937: IStI2 KeyAscii
  loc_A1093A: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D5EE8
  'Data Table: 413338
  loc_9D5ED0: ILdRf Me
  loc_9D5ED3: FStAdNoPop
  loc_9D5ED7: ImpAdLdRf MemVar_D9C5D8
  loc_9D5EDA: NewIfNullPr Global
  loc_9D5EDD: Global.Unload from_stack_1
  loc_9D5EE2: FFree1Ad var_88
  loc_9D5EE5: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'AA569C
  'Data Table: 413338
  loc_AA55F8: LitStr vbNullString
  loc_AA55FB: FLdPr Me
  loc_AA55FE: VCallAd Control_ID_Campo1Txt
  loc_AA5601: FStAdFunc var_88
  loc_AA5604: FLdPr var_88
  loc_AA5607: Me.Text = from_stack_1
  loc_AA560C: FFree1Ad var_88
  loc_AA560F: LitStr "SELECT CodiConc, DetaConc FROM concepto "
  loc_AA5612: LitStr " WHERE PeriInfo = "
  loc_AA5615: ConcatStr
  loc_AA5616: CVarStr var_C8
  loc_AA5619: LitI2_Byte 0
  loc_AA561B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA5620: CVarDate var_A8
  loc_AA5624: FLdRfVar var_B8
  loc_AA5627: ImpAdCallFPR4  = Year()
  loc_AA562C: FLdRfVar var_B8
  loc_AA562F: ConcatVar var_D8
  loc_AA5633: LitVarStr var_E8, " AND VigeConc = '1' AND DevcConc = 'Si' "
  loc_AA5638: ConcatVar var_F8
  loc_AA563C: LitVarStr var_108, " AND DetaConc like '" & Chr(37)
  loc_AA5641: ConcatVar var_118
  loc_AA5645: FLdRfVar var_11C
  loc_AA5648: FLdPr Me
  loc_AA564B: VCallAd Control_ID_Campo2Txt
  loc_AA564E: FStAdFunc var_88
  loc_AA5651: FLdPr var_88
  loc_AA5654:  = Me.Text
  loc_AA5659: FLdZeroAd var_11C
  loc_AA565C: CVarStr var_12C
  loc_AA565F: ConcatVar var_13C
  loc_AA5663: LitVarStr var_14C, Chr(37) & "' ORDER BY PeriInfo, DetaConc"
  loc_AA5668: ConcatVar var_15C
  loc_AA566C: CStrVarVal var_160
  loc_AA5670: FLdPr Me
  loc_AA5673: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AA5676: NewIfNullPr clsconcepto
  loc_AA5679: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_AA567E: FFree1Str var_160
  loc_AA5681: FFree1Ad var_88
  loc_AA5684: FFreeVar var_A8 = "": var_C8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_12C = "": var_13C = ""
  loc_AA5699: ExitProcHresult
End Sub

Public Function global_4272952Get() '41385C
  global_4272952Get = global_4272952
End Function

Public Sub global_4272952Put(Value) '413876
  global_4272952 = Value
End Sub

Public Sub global_4272952Set(Value) '413890
  global_4272952 = Value
End Sub
